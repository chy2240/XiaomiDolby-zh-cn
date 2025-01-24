.class final Landroidx/compose/foundation/gestures/DraggableNode$onDragStopped$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Draggable.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic $velocity:J

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/compose/foundation/gestures/DraggableNode;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/gestures/DraggableNode;JLkotlin/coroutines/Continuation;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/foundation/gestures/DraggableNode$onDragStopped$1;->this$0:Landroidx/compose/foundation/gestures/DraggableNode;

    iput-wide p2, p0, Landroidx/compose/foundation/gestures/DraggableNode$onDragStopped$1;->$velocity:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4

    .line 0
    new-instance v0, Landroidx/compose/foundation/gestures/DraggableNode$onDragStopped$1;

    iget-object v1, p0, Landroidx/compose/foundation/gestures/DraggableNode$onDragStopped$1;->this$0:Landroidx/compose/foundation/gestures/DraggableNode;

    iget-wide v2, p0, Landroidx/compose/foundation/gestures/DraggableNode$onDragStopped$1;->$velocity:J

    invoke-direct {v0, v1, v2, v3, p2}, Landroidx/compose/foundation/gestures/DraggableNode$onDragStopped$1;-><init>(Landroidx/compose/foundation/gestures/DraggableNode;JLkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Landroidx/compose/foundation/gestures/DraggableNode$onDragStopped$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/DraggableNode$onDragStopped$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/DraggableNode$onDragStopped$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/gestures/DraggableNode$onDragStopped$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/gestures/DraggableNode$onDragStopped$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 314
    iget v1, p0, Landroidx/compose/foundation/gestures/DraggableNode$onDragStopped$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/compose/foundation/gestures/DraggableNode$onDragStopped$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 315
    iget-object v1, p0, Landroidx/compose/foundation/gestures/DraggableNode$onDragStopped$1;->this$0:Landroidx/compose/foundation/gestures/DraggableNode;

    invoke-static {v1}, Landroidx/compose/foundation/gestures/DraggableNode;->access$getOnDragStopped$p(Landroidx/compose/foundation/gestures/DraggableNode;)Lkotlin/jvm/functions/Function3;

    move-result-object v1

    iget-object v3, p0, Landroidx/compose/foundation/gestures/DraggableNode$onDragStopped$1;->this$0:Landroidx/compose/foundation/gestures/DraggableNode;

    iget-wide v4, p0, Landroidx/compose/foundation/gestures/DraggableNode$onDragStopped$1;->$velocity:J

    invoke-static {v3, v4, v5}, Landroidx/compose/foundation/gestures/DraggableNode;->access$reverseIfNeeded-AH228Gc(Landroidx/compose/foundation/gestures/DraggableNode;J)J

    move-result-wide v3

    iget-object v5, p0, Landroidx/compose/foundation/gestures/DraggableNode$onDragStopped$1;->this$0:Landroidx/compose/foundation/gestures/DraggableNode;

    invoke-static {v5}, Landroidx/compose/foundation/gestures/DraggableNode;->access$getOrientation$p(Landroidx/compose/foundation/gestures/DraggableNode;)Landroidx/compose/foundation/gestures/Orientation;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroidx/compose/foundation/gestures/DraggableKt;->access$toFloat-sF-c-tU(JLandroidx/compose/foundation/gestures/Orientation;)F

    move-result v3

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v3

    iput v2, p0, Landroidx/compose/foundation/gestures/DraggableNode$onDragStopped$1;->label:I

    invoke-interface {v1, p1, v3, p0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    .line 316
    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
