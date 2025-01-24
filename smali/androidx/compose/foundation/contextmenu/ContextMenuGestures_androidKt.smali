.class public abstract Landroidx/compose/foundation/contextmenu/ContextMenuGestures_androidKt;
.super Ljava/lang/Object;
.source "ContextMenuGestures.android.kt"


# direct methods
.method public static final synthetic access$awaitFirstRightClickDown(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/foundation/contextmenu/ContextMenuGestures_androidKt;->awaitFirstRightClickDown(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final awaitFirstRightClickDown(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p1, Landroidx/compose/foundation/contextmenu/ContextMenuGestures_androidKt$awaitFirstRightClickDown$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/contextmenu/ContextMenuGestures_androidKt$awaitFirstRightClickDown$1;

    iget v1, v0, Landroidx/compose/foundation/contextmenu/ContextMenuGestures_androidKt$awaitFirstRightClickDown$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/compose/foundation/contextmenu/ContextMenuGestures_androidKt$awaitFirstRightClickDown$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/contextmenu/ContextMenuGestures_androidKt$awaitFirstRightClickDown$1;

    invoke-direct {v0, p1}, Landroidx/compose/foundation/contextmenu/ContextMenuGestures_androidKt$awaitFirstRightClickDown$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Landroidx/compose/foundation/contextmenu/ContextMenuGestures_androidKt$awaitFirstRightClickDown$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 60
    iget v2, v0, Landroidx/compose/foundation/contextmenu/ContextMenuGestures_androidKt$awaitFirstRightClickDown$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Landroidx/compose/foundation/contextmenu/ContextMenuGestures_androidKt$awaitFirstRightClickDown$1;->L$0:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 62
    :cond_3
    :goto_1
    iput-object p0, v0, Landroidx/compose/foundation/contextmenu/ContextMenuGestures_androidKt$awaitFirstRightClickDown$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Landroidx/compose/foundation/contextmenu/ContextMenuGestures_androidKt$awaitFirstRightClickDown$1;->label:I

    const/4 p1, 0x0

    invoke-static {p0, p1, v0, v3, p1}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->awaitPointerEvent$default(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    .line 60
    :cond_4
    :goto_2
    check-cast p1, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 63
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getButtons-ry648PA()I

    move-result v2

    invoke-static {v2}, Landroidx/compose/ui/input/pointer/PointerEvent_androidKt;->isSecondaryPressed-aHzCx-E(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v2

    .line 34
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_3
    if-ge v6, v4, :cond_6

    .line 35
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 87
    check-cast v7, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 63
    invoke-static {v7}, Landroidx/compose/ui/input/pointer/PointerEventKt;->changedToDown(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    move-result v7

    if-nez v7, :cond_5

    goto :goto_1

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 64
    :cond_6
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final contextMenuGestures(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/contextmenu/ContextMenuState;)Landroidx/compose/ui/Modifier;
    .locals 2

    .line 43
    sget-object v0, Landroidx/compose/foundation/contextmenu/ContextMenuKey;->INSTANCE:Landroidx/compose/foundation/contextmenu/ContextMenuKey;

    new-instance v1, Landroidx/compose/foundation/contextmenu/ContextMenuGestures_androidKt$contextMenuGestures$1;

    invoke-direct {v1, p1}, Landroidx/compose/foundation/contextmenu/ContextMenuGestures_androidKt$contextMenuGestures$1;-><init>(Landroidx/compose/foundation/contextmenu/ContextMenuState;)V

    invoke-static {p0, v0, v1}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final onRightClickDown(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    .line 48
    new-instance v0, Landroidx/compose/foundation/contextmenu/ContextMenuGestures_androidKt$onRightClickDown$2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/compose/foundation/contextmenu/ContextMenuGestures_androidKt$onRightClickDown$2;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    invoke-static {p0, v0, p2}, Landroidx/compose/foundation/gestures/ForEachGestureKt;->awaitEachGesture(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
