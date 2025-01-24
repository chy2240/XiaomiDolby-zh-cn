.class abstract Landroidx/transition/Transition$Impl26;
.super Ljava/lang/Object;
.source "Transition.java"


# direct methods
.method static getTotalDuration(Landroid/animation/Animator;)J
    .locals 2

    .line 2714
    invoke-virtual {p0}, Landroid/animation/Animator;->getTotalDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method static setCurrentPlayTime(Landroid/animation/Animator;J)V
    .locals 0

    .line 2718
    check-cast p0, Landroid/animation/AnimatorSet;

    invoke-virtual {p0, p1, p2}, Landroid/animation/AnimatorSet;->setCurrentPlayTime(J)V

    return-void
.end method
