.class final Landroidx/compose/material3/TooltipStateImpl$show$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Tooltip.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $cancellableShow:Lkotlin/jvm/functions/Function1;

.field final synthetic $mutatePriority:Landroidx/compose/foundation/MutatePriority;

.field label:I

.field final synthetic this$0:Landroidx/compose/material3/TooltipStateImpl;


# direct methods
.method constructor <init>(Landroidx/compose/material3/TooltipStateImpl;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/MutatePriority;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/material3/TooltipStateImpl$show$2;->this$0:Landroidx/compose/material3/TooltipStateImpl;

    iput-object p2, p0, Landroidx/compose/material3/TooltipStateImpl$show$2;->$cancellableShow:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Landroidx/compose/material3/TooltipStateImpl$show$2;->$mutatePriority:Landroidx/compose/foundation/MutatePriority;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    .line 0
    new-instance v0, Landroidx/compose/material3/TooltipStateImpl$show$2;

    iget-object v1, p0, Landroidx/compose/material3/TooltipStateImpl$show$2;->this$0:Landroidx/compose/material3/TooltipStateImpl;

    iget-object v2, p0, Landroidx/compose/material3/TooltipStateImpl$show$2;->$cancellableShow:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Landroidx/compose/material3/TooltipStateImpl$show$2;->$mutatePriority:Landroidx/compose/foundation/MutatePriority;

    invoke-direct {v0, v1, v2, p0, p1}, Landroidx/compose/material3/TooltipStateImpl$show$2;-><init>(Landroidx/compose/material3/TooltipStateImpl;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/MutatePriority;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/TooltipStateImpl$show$2;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroidx/compose/material3/TooltipStateImpl$show$2;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Landroidx/compose/material3/TooltipStateImpl$show$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/TooltipStateImpl$show$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 497
    iget v1, p0, Landroidx/compose/material3/TooltipStateImpl$show$2;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_0

    if-ne v1, v2, :cond_1

    :cond_0
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 499
    :try_start_1
    iget-object p1, p0, Landroidx/compose/material3/TooltipStateImpl$show$2;->this$0:Landroidx/compose/material3/TooltipStateImpl;

    invoke-virtual {p1}, Landroidx/compose/material3/TooltipStateImpl;->isPersistent()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 500
    iget-object p1, p0, Landroidx/compose/material3/TooltipStateImpl$show$2;->$cancellableShow:Lkotlin/jvm/functions/Function1;

    iput v3, p0, Landroidx/compose/material3/TooltipStateImpl$show$2;->label:I

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 502
    :cond_3
    new-instance p1, Landroidx/compose/material3/TooltipStateImpl$show$2$1;

    iget-object v1, p0, Landroidx/compose/material3/TooltipStateImpl$show$2;->$cancellableShow:Lkotlin/jvm/functions/Function1;

    const/4 v3, 0x0

    invoke-direct {p1, v1, v3}, Landroidx/compose/material3/TooltipStateImpl$show$2$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    iput v2, p0, Landroidx/compose/material3/TooltipStateImpl$show$2;->label:I

    const-wide/16 v1, 0x5dc

    invoke-static {v1, v2, p1, p0}, Lkotlinx/coroutines/TimeoutKt;->withTimeout(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v0, :cond_4

    return-object v0

    .line 505
    :cond_4
    :goto_0
    iget-object p1, p0, Landroidx/compose/material3/TooltipStateImpl$show$2;->$mutatePriority:Landroidx/compose/foundation/MutatePriority;

    sget-object v0, Landroidx/compose/foundation/MutatePriority;->PreventUserInput:Landroidx/compose/foundation/MutatePriority;

    if-eq p1, v0, :cond_5

    .line 507
    iget-object p0, p0, Landroidx/compose/material3/TooltipStateImpl$show$2;->this$0:Landroidx/compose/material3/TooltipStateImpl;

    invoke-virtual {p0}, Landroidx/compose/material3/TooltipStateImpl;->dismiss()V

    .line 510
    :cond_5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 505
    :goto_1
    iget-object v0, p0, Landroidx/compose/material3/TooltipStateImpl$show$2;->$mutatePriority:Landroidx/compose/foundation/MutatePriority;

    sget-object v1, Landroidx/compose/foundation/MutatePriority;->PreventUserInput:Landroidx/compose/foundation/MutatePriority;

    if-eq v0, v1, :cond_6

    .line 507
    iget-object p0, p0, Landroidx/compose/material3/TooltipStateImpl$show$2;->this$0:Landroidx/compose/material3/TooltipStateImpl;

    invoke-virtual {p0}, Landroidx/compose/material3/TooltipStateImpl;->dismiss()V

    :cond_6
    throw p1
.end method
