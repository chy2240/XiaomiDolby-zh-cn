.class final Landroidx/compose/animation/core/SuspendAnimationKt$animate$6$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SuspendAnimation.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $this_animate:Landroidx/compose/animation/core/AnimationState;


# direct methods
.method constructor <init>(Landroidx/compose/animation/core/AnimationState;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/animation/core/SuspendAnimationKt$animate$6$1;->$this_animate:Landroidx/compose/animation/core/AnimationState;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 239
    invoke-virtual {p0}, Landroidx/compose/animation/core/SuspendAnimationKt$animate$6$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 1

    .line 237
    iget-object p0, p0, Landroidx/compose/animation/core/SuspendAnimationKt$animate$6$1;->$this_animate:Landroidx/compose/animation/core/AnimationState;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/compose/animation/core/AnimationState;->setRunning$animation_core_release(Z)V

    return-void
.end method
