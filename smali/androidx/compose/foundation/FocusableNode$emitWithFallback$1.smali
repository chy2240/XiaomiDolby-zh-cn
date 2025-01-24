.class final Landroidx/compose/foundation/FocusableNode$emitWithFallback$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Focusable.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic $handler:Lkotlinx/coroutines/DisposableHandle;

.field final synthetic $interaction:Landroidx/compose/foundation/interaction/Interaction;

.field final synthetic $this_emitWithFallback:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field label:I


# direct methods
.method constructor <init>(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/Interaction;Lkotlinx/coroutines/DisposableHandle;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/foundation/FocusableNode$emitWithFallback$1;->$this_emitWithFallback:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-object p2, p0, Landroidx/compose/foundation/FocusableNode$emitWithFallback$1;->$interaction:Landroidx/compose/foundation/interaction/Interaction;

    iput-object p3, p0, Landroidx/compose/foundation/FocusableNode$emitWithFallback$1;->$handler:Lkotlinx/coroutines/DisposableHandle;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 0
    new-instance p1, Landroidx/compose/foundation/FocusableNode$emitWithFallback$1;

    iget-object v0, p0, Landroidx/compose/foundation/FocusableNode$emitWithFallback$1;->$this_emitWithFallback:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget-object v1, p0, Landroidx/compose/foundation/FocusableNode$emitWithFallback$1;->$interaction:Landroidx/compose/foundation/interaction/Interaction;

    iget-object p0, p0, Landroidx/compose/foundation/FocusableNode$emitWithFallback$1;->$handler:Lkotlinx/coroutines/DisposableHandle;

    invoke-direct {p1, v0, v1, p0, p2}, Landroidx/compose/foundation/FocusableNode$emitWithFallback$1;-><init>(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/Interaction;Lkotlinx/coroutines/DisposableHandle;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/FocusableNode$emitWithFallback$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/FocusableNode$emitWithFallback$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/FocusableNode$emitWithFallback$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/FocusableNode$emitWithFallback$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 323
    iget v1, p0, Landroidx/compose/foundation/FocusableNode$emitWithFallback$1;->label:I

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

    .line 324
    iget-object p1, p0, Landroidx/compose/foundation/FocusableNode$emitWithFallback$1;->$this_emitWithFallback:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget-object v1, p0, Landroidx/compose/foundation/FocusableNode$emitWithFallback$1;->$interaction:Landroidx/compose/foundation/interaction/Interaction;

    iput v2, p0, Landroidx/compose/foundation/FocusableNode$emitWithFallback$1;->label:I

    invoke-interface {p1, v1, p0}, Landroidx/compose/foundation/interaction/MutableInteractionSource;->emit(Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 325
    :cond_2
    :goto_0
    iget-object p0, p0, Landroidx/compose/foundation/FocusableNode$emitWithFallback$1;->$handler:Lkotlinx/coroutines/DisposableHandle;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    .line 326
    :cond_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
