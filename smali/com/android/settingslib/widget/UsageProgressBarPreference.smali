.class public Lcom/android/settingslib/widget/UsageProgressBarPreference;
.super Landroidx/preference/Preference;
.source "UsageProgressBarPreference.java"


# instance fields
.field private mBottomSummary:Ljava/lang/CharSequence;

.field private mBottomSummaryContentDescription:Ljava/lang/CharSequence;

.field private mCustomImageView:Landroid/widget/ImageView;

.field private final mNumberPattern:Ljava/util/regex/Pattern;

.field private mPercent:I

.field private mTotalSummary:Ljava/lang/CharSequence;

.field private mUsageSummary:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    const-string p1, "[\\d]*[\\\u066b.,]?[\\d]+"

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/widget/UsageProgressBarPreference;->mNumberPattern:Ljava/util/regex/Pattern;

    const/4 p1, -0x1

    .line 55
    iput p1, p0, Lcom/android/settingslib/widget/UsageProgressBarPreference;->mPercent:I

    .line 80
    sget p1, Lcom/android/settingslib/widget/preference/usage/R$layout;->preference_usage_progress_bar:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method private animateBatteryLevel(Landroid/widget/ProgressBar;II)V
    .locals 2

    .line 240
    filled-new-array {p2, p3}, [I

    move-result-object p2

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    const-wide/16 v0, 0x3e8

    .line 241
    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 242
    new-instance p3, Lcom/android/settingslib/widget/UsageProgressBarPreference$1;

    invoke-direct {p3, p0, p1}, Lcom/android/settingslib/widget/UsageProgressBarPreference$1;-><init>(Lcom/android/settingslib/widget/UsageProgressBarPreference;Landroid/widget/ProgressBar;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 249
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private enlargeFontOfNumber(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3

    .line 222
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    const-string p0, ""

    return-object p0

    .line 226
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/widget/UsageProgressBarPreference;->mNumberPattern:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 227
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 229
    new-instance p1, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v1, 0x40

    const/4 v2, 0x1

    invoke-direct {p1, v1, v2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 231
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    .line 232
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->end()I

    move-result p0

    const/16 v2, 0x21

    .line 229
    invoke-virtual {v0, p1, v1, p0, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0

    :cond_1
    return-object p1
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    .line 169
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const/4 v0, 0x0

    .line 171
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    .line 172
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    .line 174
    sget v1, Lcom/android/settingslib/widget/preference/usage/R$id;->usage_summary:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 175
    iget-object v2, p0, Lcom/android/settingslib/widget/UsageProgressBarPreference;->mUsageSummary:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    .line 176
    invoke-direct {p0, v2}, Lcom/android/settingslib/widget/UsageProgressBarPreference;->enlargeFontOfNumber(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    :cond_0
    sget v1, Lcom/android/settingslib/widget/preference/usage/R$id;->total_summary:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 180
    iget-object v2, p0, Lcom/android/settingslib/widget/UsageProgressBarPreference;->mTotalSummary:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    .line 181
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    :cond_1
    sget v1, Lcom/android/settingslib/widget/preference/usage/R$id;->bottom_summary:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/16 v2, 0x8

    if-eqz v1, :cond_3

    .line 186
    iget-object v3, p0, Lcom/android/settingslib/widget/UsageProgressBarPreference;->mBottomSummary:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 187
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 189
    :cond_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 190
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 191
    iget-object v3, p0, Lcom/android/settingslib/widget/UsageProgressBarPreference;->mBottomSummary:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v3, p0, Lcom/android/settingslib/widget/UsageProgressBarPreference;->mBottomSummaryContentDescription:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 193
    iget-object v3, p0, Lcom/android/settingslib/widget/UsageProgressBarPreference;->mBottomSummaryContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    const v1, 0x102000d

    .line 198
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    if-eqz v1, :cond_5

    .line 200
    iget v3, p0, Lcom/android/settingslib/widget/UsageProgressBarPreference;->mPercent:I

    if-gez v3, :cond_4

    const/4 v3, 0x1

    .line 201
    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_1

    .line 203
    :cond_4
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 204
    iget v3, p0, Lcom/android/settingslib/widget/UsageProgressBarPreference;->mPercent:I

    invoke-direct {p0, v1, v0, v3}, Lcom/android/settingslib/widget/UsageProgressBarPreference;->animateBatteryLevel(Landroid/widget/ProgressBar;II)V

    .line 208
    :cond_5
    :goto_1
    sget v1, Lcom/android/settingslib/widget/preference/usage/R$id;->custom_content:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    if-eqz p1, :cond_7

    .line 210
    iget-object v1, p0, Lcom/android/settingslib/widget/UsageProgressBarPreference;->mCustomImageView:Landroid/widget/ImageView;

    if-nez v1, :cond_6

    .line 211
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 212
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_2

    .line 214
    :cond_6
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 215
    iget-object p0, p0, Lcom/android/settingslib/widget/UsageProgressBarPreference;->mCustomImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 216
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_7
    :goto_2
    return-void
.end method
