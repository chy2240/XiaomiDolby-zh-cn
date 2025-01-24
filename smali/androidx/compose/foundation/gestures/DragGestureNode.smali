.class public abstract Landroidx/compose/foundation/gestures/DragGestureNode;
.super Landroidx/compose/ui/node/DelegatingNode;
.source "Draggable.kt"

# interfaces
.implements Landroidx/compose/ui/node/PointerInputModifierNode;
.implements Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;


# instance fields
.field private final _canDrag:Lkotlin/jvm/functions/Function1;

.field private canDrag:Lkotlin/jvm/functions/Function1;

.field private channel:Lkotlinx/coroutines/channels/Channel;

.field private dragInteraction:Landroidx/compose/foundation/interaction/DragInteraction$Start;

.field private enabled:Z

.field private interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field private isListeningForEvents:Z

.field private orientationLock:Landroidx/compose/foundation/gestures/Orientation;

.field private pointerInputNode:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/gestures/Orientation;)V
    .locals 0

    .line 364
    invoke-direct {p0}, Landroidx/compose/ui/node/DelegatingNode;-><init>()V

    .line 363
    iput-object p4, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->orientationLock:Landroidx/compose/foundation/gestures/Orientation;

    .line 366
    iput-object p1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->canDrag:Lkotlin/jvm/functions/Function1;

    .line 369
    iput-boolean p2, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->enabled:Z

    .line 372
    iput-object p3, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 378
    new-instance p1, Landroidx/compose/foundation/gestures/DragGestureNode$_canDrag$1;

    invoke-direct {p1, p0}, Landroidx/compose/foundation/gestures/DragGestureNode$_canDrag$1;-><init>(Landroidx/compose/foundation/gestures/DragGestureNode;)V

    iput-object p1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->_canDrag:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static final synthetic access$getChannel$p(Landroidx/compose/foundation/gestures/DragGestureNode;)Lkotlinx/coroutines/channels/Channel;
    .locals 0

    .line 359
    iget-object p0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->channel:Lkotlinx/coroutines/channels/Channel;

    return-object p0
.end method

.method public static final synthetic access$getOrientationLock$p(Landroidx/compose/foundation/gestures/DragGestureNode;)Landroidx/compose/foundation/gestures/Orientation;
    .locals 0

    .line 359
    iget-object p0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->orientationLock:Landroidx/compose/foundation/gestures/Orientation;

    return-object p0
.end method

.method public static final synthetic access$isListeningForEvents$p(Landroidx/compose/foundation/gestures/DragGestureNode;)Z
    .locals 0

    .line 359
    iget-boolean p0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->isListeningForEvents:Z

    return p0
.end method

.method public static final synthetic access$processDragCancel(Landroidx/compose/foundation/gestures/DragGestureNode;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 359
    invoke-direct {p0, p1}, Landroidx/compose/foundation/gestures/DragGestureNode;->processDragCancel(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$processDragStart(Landroidx/compose/foundation/gestures/DragGestureNode;Landroidx/compose/foundation/gestures/DragEvent$DragStarted;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 359
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/gestures/DragGestureNode;->processDragStart(Landroidx/compose/foundation/gestures/DragEvent$DragStarted;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$processDragStop(Landroidx/compose/foundation/gestures/DragGestureNode;Landroidx/compose/foundation/gestures/DragEvent$DragStopped;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 359
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/gestures/DragGestureNode;->processDragStop(Landroidx/compose/foundation/gestures/DragEvent$DragStopped;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setChannel$p(Landroidx/compose/foundation/gestures/DragGestureNode;Lkotlinx/coroutines/channels/Channel;)V
    .locals 0

    .line 359
    iput-object p1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->channel:Lkotlinx/coroutines/channels/Channel;

    return-void
.end method

.method public static final synthetic access$startListeningForEvents(Landroidx/compose/foundation/gestures/DragGestureNode;)V
    .locals 0

    .line 359
    invoke-direct {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->startListeningForEvents()V

    return-void
.end method

.method private final initializePointerInputNode()Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;
    .locals 1

    .line 461
    new-instance v0, Landroidx/compose/foundation/gestures/DragGestureNode$initializePointerInputNode$1;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/gestures/DragGestureNode$initializePointerInputNode$1;-><init>(Landroidx/compose/foundation/gestures/DragGestureNode;)V

    invoke-static {v0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->SuspendingPointerInputModifierNode(Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;

    move-result-object p0

    return-object p0
.end method

.method private final processDragCancel(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;

    iget v1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;

    invoke-direct {v0, p0, p1}, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;-><init>(Landroidx/compose/foundation/gestures/DragGestureNode;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 548
    iget v2, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;->L$0:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/foundation/gestures/DragGestureNode;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 549
    iget-object p1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->dragInteraction:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    if-eqz p1, :cond_4

    .line 550
    iget-object v2, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    if-eqz v2, :cond_3

    new-instance v4, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;

    invoke-direct {v4, p1}, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;-><init>(Landroidx/compose/foundation/interaction/DragInteraction$Start;)V

    iput-object p0, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;->label:I

    invoke-interface {v2, v4, v0}, Landroidx/compose/foundation/interaction/MutableInteractionSource;->emit(Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    const/4 p1, 0x0

    .line 551
    iput-object p1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->dragInteraction:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 553
    :cond_4
    sget-object p1, Landroidx/compose/ui/unit/Velocity;->Companion:Landroidx/compose/ui/unit/Velocity$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/unit/Velocity$Companion;->getZero-9UxMQ8M()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/foundation/gestures/DragGestureNode;->onDragStopped-TH1AsA0(J)V

    .line 554
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final processDragStart(Landroidx/compose/foundation/gestures/DragEvent$DragStarted;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;

    iget v1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;

    invoke-direct {v0, p0, p2}, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;-><init>(Landroidx/compose/foundation/gestures/DragGestureNode;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 530
    iget v2, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->L$2:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/foundation/interaction/DragInteraction$Start;

    iget-object p1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->L$1:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/foundation/gestures/DragEvent$DragStarted;

    iget-object v0, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->L$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/foundation/gestures/DragGestureNode;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->L$1:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Landroidx/compose/foundation/gestures/DragEvent$DragStarted;

    iget-object p0, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->L$0:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/foundation/gestures/DragGestureNode;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 531
    iget-object p2, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->dragInteraction:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    if-eqz p2, :cond_4

    .line 532
    iget-object v2, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    if-eqz v2, :cond_4

    new-instance v5, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;

    invoke-direct {v5, p2}, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;-><init>(Landroidx/compose/foundation/interaction/DragInteraction$Start;)V

    iput-object p0, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->label:I

    invoke-interface {v2, v5, v0}, Landroidx/compose/foundation/interaction/MutableInteractionSource;->emit(Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    .line 534
    :cond_4
    :goto_1
    new-instance p2, Landroidx/compose/foundation/interaction/DragInteraction$Start;

    invoke-direct {p2}, Landroidx/compose/foundation/interaction/DragInteraction$Start;-><init>()V

    .line 535
    iget-object v2, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    if-eqz v2, :cond_6

    iput-object p0, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->label:I

    invoke-interface {v2, p2, v0}, Landroidx/compose/foundation/interaction/MutableInteractionSource;->emit(Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_5

    return-object v1

    :cond_5
    move-object v0, p0

    move-object p0, p2

    :goto_2
    move-object p2, p0

    move-object p0, v0

    .line 536
    :cond_6
    iput-object p2, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->dragInteraction:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 537
    invoke-virtual {p1}, Landroidx/compose/foundation/gestures/DragEvent$DragStarted;->getStartPoint-F1C5BW0()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/DragGestureNode;->onDragStarted-k-4lQ0M(J)V

    .line 538
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final processDragStop(Landroidx/compose/foundation/gestures/DragEvent$DragStopped;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;

    iget v1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;

    invoke-direct {v0, p0, p2}, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;-><init>(Landroidx/compose/foundation/gestures/DragGestureNode;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 540
    iget v2, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;->L$1:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Landroidx/compose/foundation/gestures/DragEvent$DragStopped;

    iget-object p0, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;->L$0:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/foundation/gestures/DragGestureNode;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 541
    iget-object p2, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->dragInteraction:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    if-eqz p2, :cond_4

    .line 542
    iget-object v2, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    if-eqz v2, :cond_3

    new-instance v4, Landroidx/compose/foundation/interaction/DragInteraction$Stop;

    invoke-direct {v4, p2}, Landroidx/compose/foundation/interaction/DragInteraction$Stop;-><init>(Landroidx/compose/foundation/interaction/DragInteraction$Start;)V

    iput-object p0, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;->label:I

    invoke-interface {v2, v4, v0}, Landroidx/compose/foundation/interaction/MutableInteractionSource;->emit(Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    const/4 p2, 0x0

    .line 543
    iput-object p2, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->dragInteraction:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 545
    :cond_4
    invoke-virtual {p1}, Landroidx/compose/foundation/gestures/DragEvent$DragStopped;->getVelocity-9UxMQ8M()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/DragGestureNode;->onDragStopped-TH1AsA0(J)V

    .line 546
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final startListeningForEvents()V
    .locals 7

    const/4 v0, 0x1

    .line 409
    iput-boolean v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->isListeningForEvents:Z

    .line 418
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v4, Landroidx/compose/foundation/gestures/DragGestureNode$startListeningForEvents$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Landroidx/compose/foundation/gestures/DragGestureNode$startListeningForEvents$1;-><init>(Landroidx/compose/foundation/gestures/DragGestureNode;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public final disposeInteractionSource()V
    .locals 3

    .line 557
    iget-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->dragInteraction:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    if-eqz v0, :cond_1

    .line 558
    iget-object v1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    if-eqz v1, :cond_0

    new-instance v2, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;

    invoke-direct {v2, v0}, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;-><init>(Landroidx/compose/foundation/interaction/DragInteraction$Start;)V

    invoke-interface {v1, v2}, Landroidx/compose/foundation/interaction/MutableInteractionSource;->tryEmit(Landroidx/compose/foundation/interaction/Interaction;)Z

    :cond_0
    const/4 v0, 0x0

    .line 559
    iput-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->dragInteraction:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    :cond_1
    return-void
.end method

.method public abstract drag(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method

.method protected final getCanDrag()Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 366
    iget-object p0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->canDrag:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method protected final getEnabled()Z
    .locals 0

    .line 369
    iget-boolean p0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->enabled:Z

    return p0
.end method

.method public onCancelPointerInput()V
    .locals 0

    .line 527
    iget-object p0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->pointerInputNode:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroidx/compose/ui/node/PointerInputModifierNode;->onCancelPointerInput()V

    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 1

    const/4 v0, 0x0

    .line 445
    iput-boolean v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->isListeningForEvents:Z

    .line 446
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->disposeInteractionSource()V

    return-void
.end method

.method public abstract onDragStarted-k-4lQ0M(J)V
.end method

.method public abstract onDragStopped-TH1AsA0(J)V
.end method

.method public onPointerEvent-H0pRuoY(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V
    .locals 1

    .line 454
    iget-boolean v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->enabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->pointerInputNode:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;

    if-nez v0, :cond_0

    .line 455
    invoke-direct {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->initializePointerInputNode()Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/DelegatingNode;->delegate(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;

    iput-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->pointerInputNode:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;

    .line 457
    :cond_0
    iget-object p0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->pointerInputNode:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2, p3, p4}, Landroidx/compose/ui/node/PointerInputModifierNode;->onPointerEvent-H0pRuoY(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V

    :cond_1
    return-void
.end method

.method public abstract startDragImmediately()Z
.end method

.method public final update(Lkotlin/jvm/functions/Function1;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/gestures/Orientation;Z)V
    .locals 1

    .line 572
    iput-object p1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->canDrag:Lkotlin/jvm/functions/Function1;

    .line 573
    iget-boolean p1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->enabled:Z

    const/4 v0, 0x1

    if-eq p1, p2, :cond_2

    .line 574
    iput-boolean p2, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->enabled:Z

    if-nez p2, :cond_1

    .line 576
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->disposeInteractionSource()V

    .line 577
    iget-object p1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->pointerInputNode:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/DelegatingNode;->undelegate(Landroidx/compose/ui/node/DelegatableNode;)V

    :cond_0
    const/4 p1, 0x0

    .line 578
    iput-object p1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->pointerInputNode:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;

    :cond_1
    move p5, v0

    .line 582
    :cond_2
    iget-object p1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 583
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->disposeInteractionSource()V

    .line 584
    iput-object p3, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 587
    :cond_3
    iget-object p1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->orientationLock:Landroidx/compose/foundation/gestures/Orientation;

    if-eq p1, p4, :cond_4

    .line 588
    iput-object p4, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->orientationLock:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_0

    :cond_4
    move v0, p5

    :goto_0
    if-eqz v0, :cond_5

    .line 593
    iget-object p0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->pointerInputNode:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;

    if-eqz p0, :cond_5

    invoke-interface {p0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;->resetPointerInputHandler()V

    :cond_5
    return-void
.end method
