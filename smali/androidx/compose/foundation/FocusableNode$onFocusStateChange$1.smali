.class final Landroidx/compose/foundation/FocusableNode$onFocusStateChange$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Focusable.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic $layoutCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

.field final synthetic $parent:Landroidx/compose/foundation/relocation/BringIntoViewParent;

.field label:I

.field final synthetic this$0:Landroidx/compose/foundation/FocusableNode;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/FocusableNode;Landroidx/compose/foundation/relocation/BringIntoViewParent;Landroidx/compose/ui/layout/LayoutCoordinates;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/foundation/FocusableNode$onFocusStateChange$1;->this$0:Landroidx/compose/foundation/FocusableNode;

    iput-object p2, p0, Landroidx/compose/foundation/FocusableNode$onFocusStateChange$1;->$parent:Landroidx/compose/foundation/relocation/BringIntoViewParent;

    iput-object p3, p0, Landroidx/compose/foundation/FocusableNode$onFocusStateChange$1;->$layoutCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 0
    new-instance p1, Landroidx/compose/foundation/FocusableNode$onFocusStateChange$1;

    iget-object v0, p0, Landroidx/compose/foundation/FocusableNode$onFocusStateChange$1;->this$0:Landroidx/compose/foundation/FocusableNode;

    iget-object v1, p0, Landroidx/compose/foundation/FocusableNode$onFocusStateChange$1;->$parent:Landroidx/compose/foundation/relocation/BringIntoViewParent;

    iget-object p0, p0, Landroidx/compose/foundation/FocusableNode$onFocusStateChange$1;->$layoutCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    invoke-direct {p1, v0, v1, p0, p2}, Landroidx/compose/foundation/FocusableNode$onFocusStateChange$1;-><init>(Landroidx/compose/foundation/FocusableNode;Landroidx/compose/foundation/relocation/BringIntoViewParent;Landroidx/compose/ui/layout/LayoutCoordinates;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/FocusableNode$onFocusStateChange$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/FocusableNode$onFocusStateChange$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/FocusableNode$onFocusStateChange$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/FocusableNode$onFocusStateChange$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 219
    iget v1, p0, Landroidx/compose/foundation/FocusableNode$onFocusStateChange$1;->label:I

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

    .line 220
    iget-object p1, p0, Landroidx/compose/foundation/FocusableNode$onFocusStateChange$1;->this$0:Landroidx/compose/foundation/FocusableNode;

    invoke-virtual {p1}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 221
    iget-object v3, p0, Landroidx/compose/foundation/FocusableNode$onFocusStateChange$1;->$parent:Landroidx/compose/foundation/relocation/BringIntoViewParent;

    iget-object v4, p0, Landroidx/compose/foundation/FocusableNode$onFocusStateChange$1;->$layoutCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    iput v2, p0, Landroidx/compose/foundation/FocusableNode$onFocusStateChange$1;->label:I

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v6, p0

    invoke-static/range {v3 .. v8}, Landroidx/compose/foundation/relocation/ScrollIntoView;->scrollIntoView$default(Landroidx/compose/foundation/relocation/BringIntoViewParent;Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/geometry/Rect;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    .line 223
    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
