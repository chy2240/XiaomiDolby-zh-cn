.class final Landroidx/compose/material3/internal/BasicTooltip_androidKt$handleGestures$1$1$1$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BasicTooltip.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic $state:Landroidx/compose/material3/TooltipState;

.field synthetic Z$0:Z

.field label:I


# direct methods
.method constructor <init>(Landroidx/compose/material3/TooltipState;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/material3/internal/BasicTooltip_androidKt$handleGestures$1$1$1$2$1;->$state:Landroidx/compose/material3/TooltipState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/material3/internal/BasicTooltip_androidKt$handleGestures$1$1$1$2$1;

    iget-object p0, p0, Landroidx/compose/material3/internal/BasicTooltip_androidKt$handleGestures$1$1$1$2$1;->$state:Landroidx/compose/material3/TooltipState;

    invoke-direct {v0, p0, p2}, Landroidx/compose/material3/internal/BasicTooltip_androidKt$handleGestures$1$1$1$2$1;-><init>(Landroidx/compose/material3/TooltipState;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    iput-boolean p0, v0, Landroidx/compose/material3/internal/BasicTooltip_androidKt$handleGestures$1$1$1$2$1;->Z$0:Z

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/internal/BasicTooltip_androidKt$handleGestures$1$1$1$2$1;->invoke(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/internal/BasicTooltip_androidKt$handleGestures$1$1$1$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Landroidx/compose/material3/internal/BasicTooltip_androidKt$handleGestures$1$1$1$2$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/internal/BasicTooltip_androidKt$handleGestures$1$1$1$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 187
    iget v0, p0, Landroidx/compose/material3/internal/BasicTooltip_androidKt$handleGestures$1$1$1$2$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-boolean p1, p0, Landroidx/compose/material3/internal/BasicTooltip_androidKt$handleGestures$1$1$1$2$1;->Z$0:Z

    if-nez p1, :cond_0

    .line 189
    iget-object p0, p0, Landroidx/compose/material3/internal/BasicTooltip_androidKt$handleGestures$1$1$1$2$1;->$state:Landroidx/compose/material3/TooltipState;

    invoke-interface {p0}, Landroidx/compose/material3/TooltipState;->dismiss()V

    .line 191
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 187
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
