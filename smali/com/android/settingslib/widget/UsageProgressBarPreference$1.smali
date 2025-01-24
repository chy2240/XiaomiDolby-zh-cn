.class Lcom/android/settingslib/widget/UsageProgressBarPreference$1;
.super Ljava/lang/Object;
.source "UsageProgressBarPreference.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/widget/UsageProgressBarPreference;

.field final synthetic val$progressbar:Landroid/widget/ProgressBar;


# direct methods
.method constructor <init>(Lcom/android/settingslib/widget/UsageProgressBarPreference;Landroid/widget/ProgressBar;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/android/settingslib/widget/UsageProgressBarPreference$1;->this$0:Lcom/android/settingslib/widget/UsageProgressBarPreference;

    iput-object p2, p0, Lcom/android/settingslib/widget/UsageProgressBarPreference$1;->val$progressbar:Landroid/widget/ProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 245
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 246
    iget-object p0, p0, Lcom/android/settingslib/widget/UsageProgressBarPreference$1;->val$progressbar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method
