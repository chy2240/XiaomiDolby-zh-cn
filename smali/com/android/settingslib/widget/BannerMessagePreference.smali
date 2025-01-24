.class public Lcom/android/settingslib/widget/BannerMessagePreference;
.super Landroidx/preference/Preference;
.source "BannerMessagePreference.java"


# static fields
.field private static final IS_AT_LEAST_S:Z


# instance fields
.field private mAttentionLevel:Lcom/android/settingslib/widget/BannerMessagePreference$AttentionLevel;

.field private final mDismissButtonInfo:Lcom/android/settingslib/widget/BannerMessagePreference$DismissButtonInfo;

.field private final mNegativeButtonInfo:Lcom/android/settingslib/widget/BannerMessagePreference$ButtonInfo;

.field private final mPositiveButtonInfo:Lcom/android/settingslib/widget/BannerMessagePreference$ButtonInfo;

.field private mSubtitle:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$sfgetIS_AT_LEAST_S()Z
    .locals 1

    .line 0
    sget-boolean v0, Lcom/android/settingslib/widget/BannerMessagePreference;->IS_AT_LEAST_S:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    .line 86
    sput-boolean v0, Lcom/android/settingslib/widget/BannerMessagePreference;->IS_AT_LEAST_S:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 105
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    new-instance v0, Lcom/android/settingslib/widget/BannerMessagePreference$ButtonInfo;

    invoke-direct {v0}, Lcom/android/settingslib/widget/BannerMessagePreference$ButtonInfo;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/widget/BannerMessagePreference;->mPositiveButtonInfo:Lcom/android/settingslib/widget/BannerMessagePreference$ButtonInfo;

    .line 90
    new-instance v0, Lcom/android/settingslib/widget/BannerMessagePreference$ButtonInfo;

    invoke-direct {v0}, Lcom/android/settingslib/widget/BannerMessagePreference$ButtonInfo;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/widget/BannerMessagePreference;->mNegativeButtonInfo:Lcom/android/settingslib/widget/BannerMessagePreference$ButtonInfo;

    .line 92
    new-instance v0, Lcom/android/settingslib/widget/BannerMessagePreference$DismissButtonInfo;

    invoke-direct {v0}, Lcom/android/settingslib/widget/BannerMessagePreference$DismissButtonInfo;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/widget/BannerMessagePreference;->mDismissButtonInfo:Lcom/android/settingslib/widget/BannerMessagePreference$DismissButtonInfo;

    .line 96
    sget-object v0, Lcom/android/settingslib/widget/BannerMessagePreference$AttentionLevel;->HIGH:Lcom/android/settingslib/widget/BannerMessagePreference$AttentionLevel;

    iput-object v0, p0, Lcom/android/settingslib/widget/BannerMessagePreference;->mAttentionLevel:Lcom/android/settingslib/widget/BannerMessagePreference$AttentionLevel;

    .line 106
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/widget/BannerMessagePreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    .line 121
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 122
    sget v1, Lcom/android/settingslib/widget/preference/banner/R$layout;->settingslib_banner_message:I

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 124
    sget-boolean v1, Lcom/android/settingslib/widget/BannerMessagePreference;->IS_AT_LEAST_S:Z

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 127
    sget-object v1, Lcom/android/settingslib/widget/preference/banner/R$styleable;->BannerMessagePreference:[I

    .line 128
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 129
    sget p2, Lcom/android/settingslib/widget/preference/banner/R$styleable;->BannerMessagePreference_attentionLevel:I

    .line 130
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 131
    invoke-static {p2}, Lcom/android/settingslib/widget/BannerMessagePreference$AttentionLevel;->fromAttr(I)Lcom/android/settingslib/widget/BannerMessagePreference$AttentionLevel;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settingslib/widget/BannerMessagePreference;->mAttentionLevel:Lcom/android/settingslib/widget/BannerMessagePreference$AttentionLevel;

    .line 132
    sget p2, Lcom/android/settingslib/widget/preference/banner/R$styleable;->BannerMessagePreference_subtitle:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settingslib/widget/BannerMessagePreference;->mSubtitle:Ljava/lang/String;

    .line 133
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 8

    .line 140
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 141
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 143
    sget v1, Lcom/android/settingslib/widget/preference/banner/R$id;->banner_title:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 144
    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 145
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    .line 146
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 148
    sget v1, Lcom/android/settingslib/widget/preference/banner/R$id;->banner_summary:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 149
    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v1, p0, Lcom/android/settingslib/widget/BannerMessagePreference;->mPositiveButtonInfo:Lcom/android/settingslib/widget/BannerMessagePreference$ButtonInfo;

    sget v2, Lcom/android/settingslib/widget/preference/banner/R$id;->banner_positive_btn:I

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-static {v1, v2}, Lcom/android/settingslib/widget/BannerMessagePreference$ButtonInfo;->-$$Nest$fputmButton(Lcom/android/settingslib/widget/BannerMessagePreference$ButtonInfo;Landroid/widget/Button;)V

    .line 152
    iget-object v1, p0, Lcom/android/settingslib/widget/BannerMessagePreference;->mNegativeButtonInfo:Lcom/android/settingslib/widget/BannerMessagePreference$ButtonInfo;

    sget v2, Lcom/android/settingslib/widget/preference/banner/R$id;->banner_negative_btn:I

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-static {v1, v2}, Lcom/android/settingslib/widget/BannerMessagePreference$ButtonInfo;->-$$Nest$fputmButton(Lcom/android/settingslib/widget/BannerMessagePreference$ButtonInfo;Landroid/widget/Button;)V

    .line 154
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 156
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v5, p0, Lcom/android/settingslib/widget/BannerMessagePreference;->mAttentionLevel:Lcom/android/settingslib/widget/BannerMessagePreference$AttentionLevel;

    invoke-virtual {v5}, Lcom/android/settingslib/widget/BannerMessagePreference$AttentionLevel;->getAccentColorResId()I

    move-result v5

    invoke-virtual {v2, v5, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    .line 158
    sget v5, Lcom/android/settingslib/widget/preference/banner/R$id;->banner_icon:I

    invoke-virtual {p1, v5}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_2

    .line 160
    invoke-virtual {p0}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-nez v6, :cond_1

    .line 163
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/android/settingslib/widget/preference/banner/R$drawable;->ic_warning:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 161
    :cond_1
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 165
    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v2, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 169
    :cond_2
    sget-boolean v5, Lcom/android/settingslib/widget/BannerMessagePreference;->IS_AT_LEAST_S:Z

    if-eqz v5, :cond_4

    .line 171
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v5, p0, Lcom/android/settingslib/widget/BannerMessagePreference;->mAttentionLevel:Lcom/android/settingslib/widget/BannerMessagePreference$AttentionLevel;

    .line 172
    invoke-virtual {v5}, Lcom/android/settingslib/widget/BannerMessagePreference$AttentionLevel;->getBackgroundColorResId()I

    move-result v5

    .line 171
    invoke-virtual {v0, v5, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 174
    invoke-virtual {p1, v4}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    .line 175
    invoke-virtual {p1, v4}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    .line 176
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 178
    iget-object v0, p0, Lcom/android/settingslib/widget/BannerMessagePreference;->mPositiveButtonInfo:Lcom/android/settingslib/widget/BannerMessagePreference$ButtonInfo;

    invoke-static {v0, v2}, Lcom/android/settingslib/widget/BannerMessagePreference$ButtonInfo;->-$$Nest$fputmColor(Lcom/android/settingslib/widget/BannerMessagePreference$ButtonInfo;I)V

    .line 179
    iget-object v0, p0, Lcom/android/settingslib/widget/BannerMessagePreference;->mNegativeButtonInfo:Lcom/android/settingslib/widget/BannerMessagePreference$ButtonInfo;

    invoke-static {v0, v2}, Lcom/android/settingslib/widget/BannerMessagePreference$ButtonInfo;->-$$Nest$fputmColor(Lcom/android/settingslib/widget/BannerMessagePreference$ButtonInfo;I)V

    .line 181
    iget-object v0, p0, Lcom/android/settingslib/widget/BannerMessagePreference;->mDismissButtonInfo:Lcom/android/settingslib/widget/BannerMessagePreference$DismissButtonInfo;

    sget v1, Lcom/android/settingslib/widget/preference/banner/R$id;->banner_dismiss_btn:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    invoke-static {v0, v1}, Lcom/android/settingslib/widget/BannerMessagePreference$DismissButtonInfo;->-$$Nest$fputmButton(Lcom/android/settingslib/widget/BannerMessagePreference$DismissButtonInfo;Landroid/widget/ImageButton;)V

    .line 182
    iget-object v0, p0, Lcom/android/settingslib/widget/BannerMessagePreference;->mDismissButtonInfo:Lcom/android/settingslib/widget/BannerMessagePreference$DismissButtonInfo;

    invoke-virtual {v0}, Lcom/android/settingslib/widget/BannerMessagePreference$DismissButtonInfo;->setUpButton()V

    .line 184
    sget v0, Lcom/android/settingslib/widget/preference/banner/R$id;->banner_subtitle:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 185
    iget-object v0, p0, Lcom/android/settingslib/widget/BannerMessagePreference;->mSubtitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v0, p0, Lcom/android/settingslib/widget/BannerMessagePreference;->mSubtitle:Ljava/lang/String;

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    move v3, v4

    :goto_1
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_4
    const/4 v0, 0x1

    .line 189
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    .line 190
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    .line 193
    :goto_2
    iget-object p1, p0, Lcom/android/settingslib/widget/BannerMessagePreference;->mPositiveButtonInfo:Lcom/android/settingslib/widget/BannerMessagePreference$ButtonInfo;

    invoke-virtual {p1}, Lcom/android/settingslib/widget/BannerMessagePreference$ButtonInfo;->setUpButton()V

    .line 194
    iget-object p0, p0, Lcom/android/settingslib/widget/BannerMessagePreference;->mNegativeButtonInfo:Lcom/android/settingslib/widget/BannerMessagePreference$ButtonInfo;

    invoke-virtual {p0}, Lcom/android/settingslib/widget/BannerMessagePreference$ButtonInfo;->setUpButton()V

    return-void
.end method
