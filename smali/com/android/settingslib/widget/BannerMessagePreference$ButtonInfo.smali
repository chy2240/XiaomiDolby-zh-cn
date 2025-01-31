.class Lcom/android/settingslib/widget/BannerMessagePreference$ButtonInfo;
.super Ljava/lang/Object;
.source "BannerMessagePreference.java"


# instance fields
.field private mButton:Landroid/widget/Button;

.field private mColor:I

.field private mIsVisible:Z

.field private mListener:Landroid/view/View$OnClickListener;

.field private mText:Ljava/lang/CharSequence;


# direct methods
.method static bridge synthetic -$$Nest$fputmButton(Lcom/android/settingslib/widget/BannerMessagePreference$ButtonInfo;Landroid/widget/Button;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settingslib/widget/BannerMessagePreference$ButtonInfo;->mButton:Landroid/widget/Button;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmColor(Lcom/android/settingslib/widget/BannerMessagePreference$ButtonInfo;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settingslib/widget/BannerMessagePreference$ButtonInfo;->mColor:I

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 343
    iput-boolean v0, p0, Lcom/android/settingslib/widget/BannerMessagePreference$ButtonInfo;->mIsVisible:Z

    return-void
.end method

.method private shouldBeVisible()Z
    .locals 1

    .line 366
    iget-boolean v0, p0, Lcom/android/settingslib/widget/BannerMessagePreference$ButtonInfo;->mIsVisible:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/widget/BannerMessagePreference$ButtonInfo;->mText:Ljava/lang/CharSequence;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method setUpButton()V
    .locals 2

    .line 347
    iget-object v0, p0, Lcom/android/settingslib/widget/BannerMessagePreference$ButtonInfo;->mButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settingslib/widget/BannerMessagePreference$ButtonInfo;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 348
    iget-object v0, p0, Lcom/android/settingslib/widget/BannerMessagePreference$ButtonInfo;->mButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settingslib/widget/BannerMessagePreference$ButtonInfo;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 350
    invoke-static {}, Lcom/android/settingslib/widget/BannerMessagePreference;->-$$Nest$sfgetIS_AT_LEAST_S()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/android/settingslib/widget/BannerMessagePreference$ButtonInfo;->mButton:Landroid/widget/Button;

    iget v1, p0, Lcom/android/settingslib/widget/BannerMessagePreference$ButtonInfo;->mColor:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 354
    :cond_0
    invoke-direct {p0}, Lcom/android/settingslib/widget/BannerMessagePreference$ButtonInfo;->shouldBeVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 355
    iget-object p0, p0, Lcom/android/settingslib/widget/BannerMessagePreference$ButtonInfo;->mButton:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 357
    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/widget/BannerMessagePreference$ButtonInfo;->mButton:Landroid/widget/Button;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-void
.end method
