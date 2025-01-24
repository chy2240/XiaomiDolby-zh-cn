.class final Landroidx/compose/material3/internal/BasicTooltip_androidKt$handleGestures$1$1$1$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BasicTooltip.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic $isLongPressedFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

.field final synthetic $state:Landroidx/compose/material3/TooltipState;

.field L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlinx/coroutines/flow/MutableStateFlow;Landroidx/compose/material3/TooltipState;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/material3/internal/BasicTooltip_androidKt$handleGestures$1$1$1$2;->$isLongPressedFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-object p2, p0, Landroidx/compose/material3/internal/BasicTooltip_androidKt$handleGestures$1$1$1$2;->$state:Landroidx/compose/material3/TooltipState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 0
    new-instance p1, Landroidx/compose/material3/internal/BasicTooltip_androidKt$handleGestures$1$1$1$2;

    iget-object v0, p0, Landroidx/compose/material3/internal/BasicTooltip_androidKt$handleGestures$1$1$1$2;->$isLongPressedFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object p0, p0, Landroidx/compose/material3/internal/BasicTooltip_androidKt$handleGestures$1$1$1$2;->$state:Landroidx/compose/material3/TooltipState;

    invoke-direct {p1, v0, p0, p2}, Landroidx/compose/material3/internal/BasicTooltip_androidKt$handleGestures$1$1$1$2;-><init>(Lkotlinx/coroutines/flow/MutableStateFlow;Landroidx/compose/material3/TooltipState;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/internal/BasicTooltip_androidKt$handleGestures$1$1$1$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/internal/BasicTooltip_androidKt$handleGestures$1$1$1$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Landroidx/compose/material3/internal/BasicTooltip_androidKt$handleGestures$1$1$1$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/internal/BasicTooltip_androidKt$handleGestures$1$1$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 182
    iget v1, p0, Landroidx/compose/material3/internal/BasicTooltip_androidKt$handleGestures$1$1$1$2;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v5, :cond_2

    if-eq v1, v4, :cond_1

    if-eq v1, v3, :cond_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    iget-object p0, p0, Landroidx/compose/material3/internal/BasicTooltip_androidKt$handleGestures$1$1$1$2;->L$0:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Throwable;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 184
    :try_start_1
    iget-object p1, p0, Landroidx/compose/material3/internal/BasicTooltip_androidKt$handleGestures$1$1$1$2;->$isLongPressedFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v1}, Lkotlinx/coroutines/flow/MutableSharedFlow;->tryEmit(Ljava/lang/Object;)Z

    .line 185
    iget-object p1, p0, Landroidx/compose/material3/internal/BasicTooltip_androidKt$handleGestures$1$1$1$2;->$state:Landroidx/compose/material3/TooltipState;

    sget-object v1, Landroidx/compose/foundation/MutatePriority;->PreventUserInput:Landroidx/compose/foundation/MutatePriority;

    iput v5, p0, Landroidx/compose/material3/internal/BasicTooltip_androidKt$handleGestures$1$1$1$2;->label:I

    invoke-interface {p1, v1, p0}, Landroidx/compose/material3/TooltipState;->show(Landroidx/compose/foundation/MutatePriority;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v0, :cond_4

    return-object v0

    .line 187
    :cond_4
    :goto_0
    iget-object p1, p0, Landroidx/compose/material3/internal/BasicTooltip_androidKt$handleGestures$1$1$1$2;->$isLongPressedFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v1, Landroidx/compose/material3/internal/BasicTooltip_androidKt$handleGestures$1$1$1$2$1;

    iget-object v3, p0, Landroidx/compose/material3/internal/BasicTooltip_androidKt$handleGestures$1$1$1$2;->$state:Landroidx/compose/material3/TooltipState;

    invoke-direct {v1, v3, v2}, Landroidx/compose/material3/internal/BasicTooltip_androidKt$handleGestures$1$1$1$2$1;-><init>(Landroidx/compose/material3/TooltipState;Lkotlin/coroutines/Continuation;)V

    iput v4, p0, Landroidx/compose/material3/internal/BasicTooltip_androidKt$handleGestures$1$1$1$2;->label:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/flow/FlowKt;->collectLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_5

    return-object v0

    .line 193
    :cond_5
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 187
    :goto_2
    iget-object v1, p0, Landroidx/compose/material3/internal/BasicTooltip_androidKt$handleGestures$1$1$1$2;->$isLongPressedFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v4, Landroidx/compose/material3/internal/BasicTooltip_androidKt$handleGestures$1$1$1$2$1;

    iget-object v5, p0, Landroidx/compose/material3/internal/BasicTooltip_androidKt$handleGestures$1$1$1$2;->$state:Landroidx/compose/material3/TooltipState;

    invoke-direct {v4, v5, v2}, Landroidx/compose/material3/internal/BasicTooltip_androidKt$handleGestures$1$1$1$2$1;-><init>(Landroidx/compose/material3/TooltipState;Lkotlin/coroutines/Continuation;)V

    iput-object p1, p0, Landroidx/compose/material3/internal/BasicTooltip_androidKt$handleGestures$1$1$1$2;->L$0:Ljava/lang/Object;

    iput v3, p0, Landroidx/compose/material3/internal/BasicTooltip_androidKt$handleGestures$1$1$1$2;->label:I

    invoke-static {v1, v4, p0}, Lkotlinx/coroutines/flow/FlowKt;->collectLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_6

    return-object v0

    :cond_6
    move-object p0, p1

    .line 193
    :goto_3
    throw p0
.end method
