.class Landroidx/transition/Transition$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Transition.java"


# instance fields
.field final synthetic this$0:Landroidx/transition/Transition;

.field final synthetic val$runningAnimators:Landroidx/collection/ArrayMap;


# direct methods
.method constructor <init>(Landroidx/transition/Transition;Landroidx/collection/ArrayMap;)V
    .locals 0

    .line 954
    iput-object p1, p0, Landroidx/transition/Transition$2;->this$0:Landroidx/transition/Transition;

    iput-object p2, p0, Landroidx/transition/Transition$2;->val$runningAnimators:Landroidx/collection/ArrayMap;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 962
    iget-object v0, p0, Landroidx/transition/Transition$2;->val$runningAnimators:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 963
    iget-object p0, p0, Landroidx/transition/Transition$2;->this$0:Landroidx/transition/Transition;

    iget-object p0, p0, Landroidx/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 957
    iget-object p0, p0, Landroidx/transition/Transition$2;->this$0:Landroidx/transition/Transition;

    iget-object p0, p0, Landroidx/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
