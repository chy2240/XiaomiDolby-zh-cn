.class public final Landroidx/compose/foundation/gestures/DraggableNode;
.super Landroidx/compose/foundation/gestures/DragGestureNode;
.source "Draggable.kt"


# instance fields
.field private onDragStarted:Lkotlin/jvm/functions/Function3;

.field private onDragStopped:Lkotlin/jvm/functions/Function3;

.field private orientation:Landroidx/compose/foundation/gestures/Orientation;

.field private reverseDirection:Z

.field private startDragImmediately:Z

.field private state:Landroidx/compose/foundation/gestures/DraggableState;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroidx/compose/foundation/gestures/DraggableState;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;ZLkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Z)V
    .locals 0

    .line 292
    invoke-direct {p0, p2, p4, p5, p3}, Landroidx/compose/foundation/gestures/DragGestureNode;-><init>(Lkotlin/jvm/functions/Function1;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/gestures/Orientation;)V

    .line 282
    iput-object p1, p0, Landroidx/compose/foundation/gestures/DraggableNode;->state:Landroidx/compose/foundation/gestures/DraggableState;

    .line 284
    iput-object p3, p0, Landroidx/compose/foundation/gestures/DraggableNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 287
    iput-boolean p6, p0, Landroidx/compose/foundation/gestures/DraggableNode;->startDragImmediately:Z

    .line 288
    iput-object p7, p0, Landroidx/compose/foundation/gestures/DraggableNode;->onDragStarted:Lkotlin/jvm/functions/Function3;

    .line 289
    iput-object p8, p0, Landroidx/compose/foundation/gestures/DraggableNode;->onDragStopped:Lkotlin/jvm/functions/Function3;

    .line 290
    iput-boolean p9, p0, Landroidx/compose/foundation/gestures/DraggableNode;->reverseDirection:Z

    return-void
.end method

.method public static final synthetic access$getOnDragStarted$p(Landroidx/compose/foundation/gestures/DraggableNode;)Lkotlin/jvm/functions/Function3;
    .locals 0

    .line 281
    iget-object p0, p0, Landroidx/compose/foundation/gestures/DraggableNode;->onDragStarted:Lkotlin/jvm/functions/Function3;

    return-object p0
.end method

.method public static final synthetic access$getOnDragStopped$p(Landroidx/compose/foundation/gestures/DraggableNode;)Lkotlin/jvm/functions/Function3;
    .locals 0

    .line 281
    iget-object p0, p0, Landroidx/compose/foundation/gestures/DraggableNode;->onDragStopped:Lkotlin/jvm/functions/Function3;

    return-object p0
.end method

.method public static final synthetic access$getOrientation$p(Landroidx/compose/foundation/gestures/DraggableNode;)Landroidx/compose/foundation/gestures/Orientation;
    .locals 0

    .line 281
    iget-object p0, p0, Landroidx/compose/foundation/gestures/DraggableNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    return-object p0
.end method

.method public static final synthetic access$reverseIfNeeded-AH228Gc(Landroidx/compose/foundation/gestures/DraggableNode;J)J
    .locals 0

    .line 281
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/gestures/DraggableNode;->reverseIfNeeded-AH228Gc(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$reverseIfNeeded-MK-Hz9U(Landroidx/compose/foundation/gestures/DraggableNode;J)J
    .locals 0

    .line 281
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/gestures/DraggableNode;->reverseIfNeeded-MK-Hz9U(J)J

    move-result-wide p0

    return-wide p0
.end method

.method private final reverseIfNeeded-AH228Gc(J)J
    .locals 0

    .line 353
    iget-boolean p0, p0, Landroidx/compose/foundation/gestures/DraggableNode;->reverseDirection:Z

    if-eqz p0, :cond_0

    const/high16 p0, -0x40800000    # -1.0f

    :goto_0
    invoke-static {p1, p2, p0}, Landroidx/compose/ui/unit/Velocity;->times-adjELrA(JF)J

    move-result-wide p0

    goto :goto_1

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0

    :goto_1
    return-wide p0
.end method

.method private final reverseIfNeeded-MK-Hz9U(J)J
    .locals 0

    .line 355
    iget-boolean p0, p0, Landroidx/compose/foundation/gestures/DraggableNode;->reverseDirection:Z

    if-eqz p0, :cond_0

    const/high16 p0, -0x40800000    # -1.0f

    :goto_0
    invoke-static {p1, p2, p0}, Landroidx/compose/ui/geometry/Offset;->times-tuRUvjQ(JF)J

    move-result-wide p0

    goto :goto_1

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0

    :goto_1
    return-wide p0
.end method


# virtual methods
.method public drag(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    .line 300
    iget-object v0, p0, Landroidx/compose/foundation/gestures/DraggableNode;->state:Landroidx/compose/foundation/gestures/DraggableState;

    sget-object v1, Landroidx/compose/foundation/MutatePriority;->UserInput:Landroidx/compose/foundation/MutatePriority;

    new-instance v2, Landroidx/compose/foundation/gestures/DraggableNode$drag$2;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p0, v3}, Landroidx/compose/foundation/gestures/DraggableNode$drag$2;-><init>(Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/gestures/DraggableNode;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v0, v1, v2, p2}, Landroidx/compose/foundation/gestures/DraggableState;->drag(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public onDragStarted-k-4lQ0M(J)V
    .locals 7

    .line 308
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/compose/foundation/gestures/DraggableNode;->onDragStarted:Lkotlin/jvm/functions/Function3;

    invoke-static {}, Landroidx/compose/foundation/gestures/DraggableKt;->access$getNoOpOnDragStarted$p()Lkotlin/jvm/functions/Function3;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 309
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v4, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, p2, v0}, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;-><init>(Landroidx/compose/foundation/gestures/DraggableNode;JLkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_1
    :goto_0
    return-void
.end method

.method public onDragStopped-TH1AsA0(J)V
    .locals 7

    .line 313
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/compose/foundation/gestures/DraggableNode;->onDragStopped:Lkotlin/jvm/functions/Function3;

    invoke-static {}, Landroidx/compose/foundation/gestures/DraggableKt;->access$getNoOpOnDragStopped$p()Lkotlin/jvm/functions/Function3;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 314
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v4, Landroidx/compose/foundation/gestures/DraggableNode$onDragStopped$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, p2, v0}, Landroidx/compose/foundation/gestures/DraggableNode$onDragStopped$1;-><init>(Landroidx/compose/foundation/gestures/DraggableNode;JLkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_1
    :goto_0
    return-void
.end method

.method public startDragImmediately()Z
    .locals 0

    .line 319
    iget-boolean p0, p0, Landroidx/compose/foundation/gestures/DraggableNode;->startDragImmediately:Z

    return p0
.end method

.method public final update(Landroidx/compose/foundation/gestures/DraggableState;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;ZLkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Z)V
    .locals 6

    .line 333
    iget-object v3, p0, Landroidx/compose/foundation/gestures/DraggableNode;->state:Landroidx/compose/foundation/gestures/DraggableState;

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x1

    if-nez v3, :cond_0

    .line 334
    iput-object p1, p0, Landroidx/compose/foundation/gestures/DraggableNode;->state:Landroidx/compose/foundation/gestures/DraggableState;

    move v1, v5

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 337
    :goto_0
    iget-object v3, p0, Landroidx/compose/foundation/gestures/DraggableNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    if-eq v3, p3, :cond_1

    .line 338
    iput-object p3, p0, Landroidx/compose/foundation/gestures/DraggableNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    move v1, v5

    .line 341
    :cond_1
    iget-boolean v3, p0, Landroidx/compose/foundation/gestures/DraggableNode;->reverseDirection:Z

    if-eq v3, p9, :cond_2

    .line 342
    iput-boolean p9, p0, Landroidx/compose/foundation/gestures/DraggableNode;->reverseDirection:Z

    goto :goto_1

    :cond_2
    move v5, v1

    .line 346
    :goto_1
    iput-object p7, p0, Landroidx/compose/foundation/gestures/DraggableNode;->onDragStarted:Lkotlin/jvm/functions/Function3;

    .line 347
    iput-object p8, p0, Landroidx/compose/foundation/gestures/DraggableNode;->onDragStopped:Lkotlin/jvm/functions/Function3;

    .line 348
    iput-boolean p6, p0, Landroidx/compose/foundation/gestures/DraggableNode;->startDragImmediately:Z

    move-object v0, p0

    move-object v1, p2

    move v2, p4

    move-object v3, p5

    move-object v4, p3

    .line 350
    invoke-virtual/range {v0 .. v5}, Landroidx/compose/foundation/gestures/DragGestureNode;->update(Lkotlin/jvm/functions/Function1;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/gestures/Orientation;Z)V

    return-void
.end method
