.class public Lcom/android/settingslib/widget/SelectorWithWidgetPreference;
.super Landroidx/preference/CheckBoxPreference;
.source "SelectorWithWidgetPreference.java"


# static fields
.field static final DEFAULT_MAX_LINES:I = 0x2


# instance fields
.field private mAppendix:Landroid/view/View;

.field private mAppendixVisibility:I

.field private mExtraWidget:Landroid/widget/ImageView;

.field private mExtraWidgetContainer:Landroid/view/View;

.field private mExtraWidgetOnClickListener:Landroid/view/View$OnClickListener;

.field private mIsCheckBox:Z

.field private mTitleMaxLines:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 101
    invoke-direct {p0, p1, p2}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    .line 67
    iput v0, p0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->mAppendixVisibility:I

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->mIsCheckBox:Z

    .line 102
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 221
    iget-boolean v0, p0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->mIsCheckBox:Z

    if-eqz v0, :cond_0

    .line 222
    sget v0, Lcom/android/settingslib/widget/preference/selector/R$layout;->preference_widget_checkbox:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    goto :goto_0

    .line 224
    :cond_0
    sget v0, Lcom/android/settingslib/widget/preference/selector/R$layout;->preference_widget_radiobutton:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    .line 226
    :goto_0
    sget v0, Lcom/android/settingslib/widget/preference/selector/R$layout;->preference_selector_with_widget:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const/4 v0, 0x0

    .line 227
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setIconSpaceReserved(Z)V

    .line 230
    sget-object v0, Lcom/android/settingslib/widget/preference/selector/R$styleable;->SelectorWithWidgetPreference:[I

    .line 231
    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 234
    sget p2, Lcom/android/settingslib/widget/preference/selector/R$styleable;->SelectorWithWidgetPreference_titleMaxLines:I

    const/4 p3, 0x2

    .line 235
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->mTitleMaxLines:I

    .line 237
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    .line 159
    invoke-super {p0, p1}, Landroidx/preference/CheckBoxPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 161
    sget v0, Lcom/android/settingslib/widget/preference/selector/R$id;->summary_container:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 164
    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 163
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 165
    sget v0, Lcom/android/settingslib/widget/preference/selector/R$id;->appendix:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->mAppendix:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 166
    iget v1, p0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->mAppendixVisibility:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 167
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 171
    :cond_1
    sget v0, Lcom/android/settingslib/widget/preference/selector/R$id;->selector_extra_widget:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->mExtraWidget:Landroid/widget/ImageView;

    .line 172
    sget v0, Lcom/android/settingslib/widget/preference/selector/R$id;->selector_extra_widget_container:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->mExtraWidgetContainer:Landroid/view/View;

    .line 174
    iget-object v0, p0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->mExtraWidgetOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->setExtraWidgetOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x1020016

    .line 177
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 178
    iget p0, p0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->mTitleMaxLines:I

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setMaxLines(I)V

    return-void
.end method

.method public onClick()V
    .locals 0

    .line 0
    return-void
.end method

.method public setExtraWidgetOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 200
    iput-object p1, p0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->mExtraWidgetOnClickListener:Landroid/view/View$OnClickListener;

    .line 202
    iget-object v0, p0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->mExtraWidget:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->mExtraWidgetContainer:Landroid/view/View;

    if-nez v1, :cond_0

    goto :goto_1

    .line 206
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    iget-object p1, p0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->mExtraWidgetContainer:Landroid/view/View;

    iget-object p0, p0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->mExtraWidgetOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method
