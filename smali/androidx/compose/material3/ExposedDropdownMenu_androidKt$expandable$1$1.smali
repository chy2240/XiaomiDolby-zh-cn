.class final Landroidx/compose/material3/ExposedDropdownMenu_androidKt$expandable$1$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "ExposedDropdownMenu.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic $anchorType:Ljava/lang/String;

.field final synthetic $onExpandedChange:Lkotlin/jvm/functions/Function0;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$expandable$1$1;->$anchorType:Ljava/lang/String;

    iput-object p2, p0, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$expandable$1$1;->$onExpandedChange:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 0
    new-instance v0, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$expandable$1$1;

    iget-object v1, p0, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$expandable$1$1;->$anchorType:Ljava/lang/String;

    iget-object p0, p0, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$expandable$1$1;->$onExpandedChange:Lkotlin/jvm/functions/Function0;

    invoke-direct {v0, v1, p0, p2}, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$expandable$1$1;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$expandable$1$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$expandable$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$expandable$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$expandable$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$expandable$1$1;->invoke(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1447
    iget v1, p0, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$expandable$1$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$expandable$1$1;->L$0:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$expandable$1$1;->L$0:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 1451
    sget-object v6, Landroidx/compose/ui/input/pointer/PointerEventPass;->Initial:Landroidx/compose/ui/input/pointer/PointerEventPass;

    iput-object v1, p0, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$expandable$1$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$expandable$1$1;->label:I

    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v4, v1

    move-object v7, p0

    invoke-static/range {v4 .. v9}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->awaitFirstDown$default(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;ZLandroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 1447
    :cond_3
    :goto_0
    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 1452
    iget-object v3, p0, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$expandable$1$1;->$anchorType:Ljava/lang/String;

    sget-object v4, Landroidx/compose/material3/ExposedDropdownMenuAnchorType;->Companion:Landroidx/compose/material3/ExposedDropdownMenuAnchorType$Companion;

    invoke-virtual {v4}, Landroidx/compose/material3/ExposedDropdownMenuAnchorType$Companion;->getSecondaryEditable-oYjWRB4()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroidx/compose/material3/ExposedDropdownMenuAnchorType;->equals-impl0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1453
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    .line 1455
    :cond_4
    sget-object p1, Landroidx/compose/ui/input/pointer/PointerEventPass;->Initial:Landroidx/compose/ui/input/pointer/PointerEventPass;

    const/4 v3, 0x0

    iput-object v3, p0, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$expandable$1$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$expandable$1$1;->label:I

    invoke-static {v1, p1, p0}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->waitForUpOrCancellation(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 1447
    :cond_5
    :goto_1
    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    if-eqz p1, :cond_6

    .line 1457
    iget-object p0, p0, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$expandable$1$1;->$onExpandedChange:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 1459
    :cond_6
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
