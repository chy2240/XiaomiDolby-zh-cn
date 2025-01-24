.class public abstract Landroidx/compose/animation/core/TransitionState;
.super Ljava/lang/Object;
.source "Transition.kt"


# instance fields
.field private final isRunning$delegate:Landroidx/compose/runtime/MutableState;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/animation/core/TransitionState;->isRunning$delegate:Landroidx/compose/runtime/MutableState;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/compose/animation/core/TransitionState;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getCurrentState()Ljava/lang/Object;
.end method

.method public abstract getTargetState()Ljava/lang/Object;
.end method

.method public final isRunning$animation_core_release()Z
    .locals 0

    .line 122
    iget-object p0, p0, Landroidx/compose/animation/core/TransitionState;->isRunning$delegate:Landroidx/compose/runtime/MutableState;

    .line 81
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public abstract setCurrentState$animation_core_release(Ljava/lang/Object;)V
.end method

.method public final setRunning$animation_core_release(Z)V
    .locals 0

    .line 122
    iget-object p0, p0, Landroidx/compose/animation/core/TransitionState;->isRunning$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 109
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public abstract transitionConfigured$animation_core_release(Landroidx/compose/animation/core/Transition;)V
.end method

.method public abstract transitionRemoved$animation_core_release()V
.end method
