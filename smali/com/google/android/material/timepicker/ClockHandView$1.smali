.class Lcom/google/android/material/timepicker/ClockHandView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ClockHandView.java"


# instance fields
.field final synthetic this$0:Lcom/google/android/material/timepicker/ClockHandView;


# direct methods
.method constructor <init>(Lcom/google/android/material/timepicker/ClockHandView;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/google/android/material/timepicker/ClockHandView$1;->this$0:Lcom/google/android/material/timepicker/ClockHandView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 175
    invoke-virtual {p1}, Landroid/animation/Animator;->end()V

    return-void
.end method
