.class public Lcom/android/settingslib/widget/TwoTargetPreference;
.super Landroidx/preference/Preference;
.source "TwoTargetPreference.java"


# instance fields
.field private mIconSize:I

.field private mMediumIconSize:I

.field private mSmallIconSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    invoke-direct {p0, p1}, Lcom/android/settingslib/widget/TwoTargetPreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 56
    invoke-direct {p0, p1}, Lcom/android/settingslib/widget/TwoTargetPreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 75
    invoke-static {p1}, Lcom/android/settingslib/widget/SettingsThemeHelper;->isExpressiveTheme(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    sget v0, Lcom/android/settingslib/widget/preference/twotarget/R$layout;->settingslib_expressive_preference_two_target:I

    goto :goto_0

    .line 77
    :cond_0
    sget v0, Lcom/android/settingslib/widget/preference/twotarget/R$layout;->preference_two_target:I

    .line 78
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settingslib/widget/preference/twotarget/R$dimen;->two_target_pref_small_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/widget/TwoTargetPreference;->mSmallIconSize:I

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settingslib/widget/preference/twotarget/R$dimen;->two_target_pref_medium_icon_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/settingslib/widget/TwoTargetPreference;->mMediumIconSize:I

    .line 83
    invoke-virtual {p0}, Lcom/android/settingslib/widget/TwoTargetPreference;->getSecondTargetResId()I

    move-result p1

    if-eqz p1, :cond_1

    .line 85
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected getSecondTargetResId()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    .line 95
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 96
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x1020006

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 97
    iget v1, p0, Lcom/android/settingslib/widget/TwoTargetPreference;->mIconSize:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/android/settingslib/widget/TwoTargetPreference;->mSmallIconSize:I

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 102
    :cond_1
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/android/settingslib/widget/TwoTargetPreference;->mMediumIconSize:I

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    :goto_0
    sget v0, Lcom/android/settingslib/widget/preference/twotarget/R$id;->two_target_divider:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x1020018

    .line 107
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 108
    invoke-virtual {p0}, Lcom/android/settingslib/widget/TwoTargetPreference;->shouldHideSecondTarget()Z

    move-result p0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_3

    if-eqz p0, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    .line 110
    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    if-eqz p1, :cond_5

    if-eqz p0, :cond_4

    move v1, v2

    .line 113
    :cond_4
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    return-void
.end method

.method protected shouldHideSecondTarget()Z
    .locals 0

    .line 118
    invoke-virtual {p0}, Lcom/android/settingslib/widget/TwoTargetPreference;->getSecondTargetResId()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
