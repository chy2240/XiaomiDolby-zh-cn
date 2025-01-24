.class final Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForLongPress$2;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "TapGestureDetector.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic $pass:Landroidx/compose/ui/input/pointer/PointerEventPass;

.field final synthetic $result:Lkotlin/jvm/internal/Ref$ObjectRef;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForLongPress$2;->$pass:Landroidx/compose/ui/input/pointer/PointerEventPass;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForLongPress$2;->$result:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 0
    new-instance v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForLongPress$2;

    iget-object v1, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForLongPress$2;->$pass:Landroidx/compose/ui/input/pointer/PointerEventPass;

    iget-object p0, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForLongPress$2;->$result:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0, v1, p0, p2}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForLongPress$2;-><init>(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForLongPress$2;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForLongPress$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForLongPress$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForLongPress$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForLongPress$2;->invoke(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 385
    iget v1, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForLongPress$2;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForLongPress$2;->L$0:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForLongPress$2;->L$0:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForLongPress$2;->L$0:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 387
    :goto_0
    iget-object v1, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForLongPress$2;->$pass:Landroidx/compose/ui/input/pointer/PointerEventPass;

    iput-object p1, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForLongPress$2;->L$0:Ljava/lang/Object;

    iput v4, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForLongPress$2;->label:I

    invoke-interface {p1, v1, p0}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->awaitPointerEvent(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_3

    return-object v0

    :cond_3
    move-object v12, v1

    move-object v1, p1

    move-object p1, v12

    .line 385
    :goto_1
    check-cast p1, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 388
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v5

    .line 34
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v6

    move v7, v3

    :goto_2
    if-ge v7, v6, :cond_c

    .line 35
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 87
    check-cast v8, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 388
    invoke-static {v8}, Landroidx/compose/ui/input/pointer/PointerEventKt;->changedToUp(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 394
    invoke-static {p1}, Landroidx/compose/foundation/gestures/TapGestureDetector_androidKt;->isDeepPress(Landroidx/compose/ui/input/pointer/PointerEvent;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 395
    iget-object p0, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForLongPress$2;->$result:Lkotlin/jvm/internal/Ref$ObjectRef;

    sget-object p1, Landroidx/compose/foundation/gestures/LongPressResult$Success;->INSTANCE:Landroidx/compose/foundation/gestures/LongPressResult$Success;

    iput-object p1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto/16 :goto_7

    .line 400
    :cond_4
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object p1

    .line 34
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v5

    move v6, v3

    :goto_3
    if-ge v6, v5, :cond_7

    .line 35
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 102
    check-cast v7, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 401
    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    move-result v8

    if-nez v8, :cond_6

    invoke-interface {v1}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->getSize-YbymL2g()J

    move-result-wide v8

    invoke-interface {v1}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->getExtendedTouchPadding-NH-jbRc()J

    move-result-wide v10

    invoke-static {v7, v8, v9, v10, v11}, Landroidx/compose/ui/input/pointer/PointerEventKt;->isOutOfBounds-jwHxaWs(Landroidx/compose/ui/input/pointer/PointerInputChange;JJ)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 404
    :cond_6
    :goto_4
    iget-object p0, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForLongPress$2;->$result:Lkotlin/jvm/internal/Ref$ObjectRef;

    sget-object p1, Landroidx/compose/foundation/gestures/LongPressResult$Canceled;->INSTANCE:Landroidx/compose/foundation/gestures/LongPressResult$Canceled;

    iput-object p1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_7

    .line 410
    :cond_7
    sget-object p1, Landroidx/compose/ui/input/pointer/PointerEventPass;->Final:Landroidx/compose/ui/input/pointer/PointerEventPass;

    iput-object v1, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForLongPress$2;->L$0:Ljava/lang/Object;

    iput v2, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForLongPress$2;->label:I

    invoke-interface {v1, p1, p0}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->awaitPointerEvent(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    return-object v0

    .line 385
    :cond_8
    :goto_5
    check-cast p1, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 411
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object p1

    .line 34
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v5

    move v6, v3

    :goto_6
    if-ge v6, v5, :cond_a

    .line 35
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 102
    check-cast v7, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 411
    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 412
    iget-object p0, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForLongPress$2;->$result:Lkotlin/jvm/internal/Ref$ObjectRef;

    sget-object p1, Landroidx/compose/foundation/gestures/LongPressResult$Canceled;->INSTANCE:Landroidx/compose/foundation/gestures/LongPressResult$Canceled;

    iput-object p1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_7

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_a
    move-object p1, v1

    goto/16 :goto_0

    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 390
    :cond_c
    iget-object p0, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForLongPress$2;->$result:Lkotlin/jvm/internal/Ref$ObjectRef;

    new-instance v0, Landroidx/compose/foundation/gestures/LongPressResult$Released;

    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    invoke-direct {v0, p1}, Landroidx/compose/foundation/gestures/LongPressResult$Released;-><init>(Landroidx/compose/ui/input/pointer/PointerInputChange;)V

    iput-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 416
    :goto_7
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
