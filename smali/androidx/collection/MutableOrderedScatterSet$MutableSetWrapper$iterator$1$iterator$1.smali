.class final Landroidx/collection/MutableOrderedScatterSet$MutableSetWrapper$iterator$1$iterator$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "OrderedScatterSet.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field I$0:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/collection/MutableOrderedScatterSet;

.field final synthetic this$1:Landroidx/collection/MutableOrderedScatterSet$MutableSetWrapper$iterator$1;


# direct methods
.method constructor <init>(Landroidx/collection/MutableOrderedScatterSet;Landroidx/collection/MutableOrderedScatterSet$MutableSetWrapper$iterator$1;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/collection/MutableOrderedScatterSet$MutableSetWrapper$iterator$1$iterator$1;->this$0:Landroidx/collection/MutableOrderedScatterSet;

    iput-object p2, p0, Landroidx/collection/MutableOrderedScatterSet$MutableSetWrapper$iterator$1$iterator$1;->this$1:Landroidx/collection/MutableOrderedScatterSet$MutableSetWrapper$iterator$1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 0
    new-instance v0, Landroidx/collection/MutableOrderedScatterSet$MutableSetWrapper$iterator$1$iterator$1;

    iget-object v1, p0, Landroidx/collection/MutableOrderedScatterSet$MutableSetWrapper$iterator$1$iterator$1;->this$0:Landroidx/collection/MutableOrderedScatterSet;

    iget-object p0, p0, Landroidx/collection/MutableOrderedScatterSet$MutableSetWrapper$iterator$1$iterator$1;->this$1:Landroidx/collection/MutableOrderedScatterSet$MutableSetWrapper$iterator$1;

    invoke-direct {v0, v1, p0, p2}, Landroidx/collection/MutableOrderedScatterSet$MutableSetWrapper$iterator$1$iterator$1;-><init>(Landroidx/collection/MutableOrderedScatterSet;Landroidx/collection/MutableOrderedScatterSet$MutableSetWrapper$iterator$1;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Landroidx/collection/MutableOrderedScatterSet$MutableSetWrapper$iterator$1$iterator$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlin/sequences/SequenceScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/collection/MutableOrderedScatterSet$MutableSetWrapper$iterator$1$iterator$1;->invoke(Lkotlin/sequences/SequenceScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlin/sequences/SequenceScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroidx/collection/MutableOrderedScatterSet$MutableSetWrapper$iterator$1$iterator$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Landroidx/collection/MutableOrderedScatterSet$MutableSetWrapper$iterator$1$iterator$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Landroidx/collection/MutableOrderedScatterSet$MutableSetWrapper$iterator$1$iterator$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1404
    iget v1, p0, Landroidx/collection/MutableOrderedScatterSet$MutableSetWrapper$iterator$1$iterator$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget v1, p0, Landroidx/collection/MutableOrderedScatterSet$MutableSetWrapper$iterator$1$iterator$1;->I$0:I

    iget-object v3, p0, Landroidx/collection/MutableOrderedScatterSet$MutableSetWrapper$iterator$1$iterator$1;->L$3:Ljava/lang/Object;

    check-cast v3, [J

    iget-object v4, p0, Landroidx/collection/MutableOrderedScatterSet$MutableSetWrapper$iterator$1$iterator$1;->L$2:Ljava/lang/Object;

    check-cast v4, Landroidx/collection/MutableOrderedScatterSet;

    iget-object v5, p0, Landroidx/collection/MutableOrderedScatterSet$MutableSetWrapper$iterator$1$iterator$1;->L$1:Ljava/lang/Object;

    check-cast v5, Landroidx/collection/MutableOrderedScatterSet$MutableSetWrapper$iterator$1;

    iget-object v6, p0, Landroidx/collection/MutableOrderedScatterSet$MutableSetWrapper$iterator$1$iterator$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlin/sequences/SequenceScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, v5

    :cond_0
    move v5, v1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/collection/MutableOrderedScatterSet$MutableSetWrapper$iterator$1$iterator$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlin/sequences/SequenceScope;

    .line 1405
    iget-object v1, p0, Landroidx/collection/MutableOrderedScatterSet$MutableSetWrapper$iterator$1$iterator$1;->this$0:Landroidx/collection/MutableOrderedScatterSet;

    iget-object v3, p0, Landroidx/collection/MutableOrderedScatterSet$MutableSetWrapper$iterator$1$iterator$1;->this$1:Landroidx/collection/MutableOrderedScatterSet$MutableSetWrapper$iterator$1;

    .line 256
    iget-object v4, v1, Landroidx/collection/OrderedScatterSet;->nodes:[J

    .line 258
    iget v5, v1, Landroidx/collection/OrderedScatterSet;->tail:I

    move-object v6, p1

    move-object p1, v3

    move-object v3, v4

    move-object v4, v1

    :goto_0
    const v1, 0x7fffffff

    if-eq v5, v1, :cond_3

    .line 260
    aget-wide v7, v3, v5

    const/16 v1, 0x1f

    shr-long/2addr v7, v1

    const-wide/32 v9, 0x7fffffff

    and-long/2addr v7, v9

    long-to-int v1, v7

    .line 1406
    invoke-virtual {p1, v5}, Landroidx/collection/MutableOrderedScatterSet$MutableSetWrapper$iterator$1;->setCurrent(I)V

    .line 1407
    iget-object v7, v4, Landroidx/collection/OrderedScatterSet;->elements:[Ljava/lang/Object;

    aget-object v5, v7, v5

    iput-object v6, p0, Landroidx/collection/MutableOrderedScatterSet$MutableSetWrapper$iterator$1$iterator$1;->L$0:Ljava/lang/Object;

    iput-object p1, p0, Landroidx/collection/MutableOrderedScatterSet$MutableSetWrapper$iterator$1$iterator$1;->L$1:Ljava/lang/Object;

    iput-object v4, p0, Landroidx/collection/MutableOrderedScatterSet$MutableSetWrapper$iterator$1$iterator$1;->L$2:Ljava/lang/Object;

    iput-object v3, p0, Landroidx/collection/MutableOrderedScatterSet$MutableSetWrapper$iterator$1$iterator$1;->L$3:Ljava/lang/Object;

    iput v1, p0, Landroidx/collection/MutableOrderedScatterSet$MutableSetWrapper$iterator$1$iterator$1;->I$0:I

    iput v2, p0, Landroidx/collection/MutableOrderedScatterSet$MutableSetWrapper$iterator$1$iterator$1;->label:I

    invoke-virtual {v6, v5, p0}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_0

    return-object v0

    .line 1409
    :cond_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
