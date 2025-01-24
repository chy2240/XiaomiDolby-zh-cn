.class final Landroidx/compose/material3/internal/BasicTooltip_androidKt$handleGestures$2$1$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "BasicTooltip.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic $$this$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic $state:Landroidx/compose/material3/TooltipState;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/material3/TooltipState;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/material3/internal/BasicTooltip_androidKt$handleGestures$2$1$1;->$$this$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, p0, Landroidx/compose/material3/internal/BasicTooltip_androidKt$handleGestures$2$1$1;->$state:Landroidx/compose/material3/TooltipState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 0
    new-instance v0, Landroidx/compose/material3/internal/BasicTooltip_androidKt$handleGestures$2$1$1;

    iget-object v1, p0, Landroidx/compose/material3/internal/BasicTooltip_androidKt$handleGestures$2$1$1;->$$this$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iget-object p0, p0, Landroidx/compose/material3/internal/BasicTooltip_androidKt$handleGestures$2$1$1;->$state:Landroidx/compose/material3/TooltipState;

    invoke-direct {v0, v1, p0, p2}, Landroidx/compose/material3/internal/BasicTooltip_androidKt$handleGestures$2$1$1;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/material3/TooltipState;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Landroidx/compose/material3/internal/BasicTooltip_androidKt$handleGestures$2$1$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/internal/BasicTooltip_androidKt$handleGestures$2$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Landroidx/compose/material3/internal/BasicTooltip_androidKt$handleGestures$2$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/internal/BasicTooltip_androidKt$handleGestures$2$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/internal/BasicTooltip_androidKt$handleGestures$2$1$1;->invoke(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 208
    iget v1, p0, Landroidx/compose/material3/internal/BasicTooltip_androidKt$handleGestures$2$1$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroidx/compose/material3/internal/BasicTooltip_androidKt$handleGestures$2$1$1;->L$1:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/ui/input/pointer/PointerEventPass;

    iget-object v3, p0, Landroidx/compose/material3/internal/BasicTooltip_androidKt$handleGestures$2$1$1;->L$0:Ljava/lang/Object;

    check-cast v3, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/compose/material3/internal/BasicTooltip_androidKt$handleGestures$2$1$1;->L$0:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 209
    sget-object v1, Landroidx/compose/ui/input/pointer/PointerEventPass;->Main:Landroidx/compose/ui/input/pointer/PointerEventPass;

    move-object v3, p1

    .line 212
    :cond_2
    :goto_0
    iput-object v3, p0, Landroidx/compose/material3/internal/BasicTooltip_androidKt$handleGestures$2$1$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Landroidx/compose/material3/internal/BasicTooltip_androidKt$handleGestures$2$1$1;->L$1:Ljava/lang/Object;

    iput v2, p0, Landroidx/compose/material3/internal/BasicTooltip_androidKt$handleGestures$2$1$1;->label:I

    invoke-interface {v3, v1, p0}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->awaitPointerEvent(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 208
    :cond_3
    :goto_1
    check-cast p1, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 213
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/input/pointer/PointerInputChange;

    invoke-virtual {v4}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getType-T8wyACA()I

    move-result v4

    .line 214
    sget-object v5, Landroidx/compose/ui/input/pointer/PointerType;->Companion:Landroidx/compose/ui/input/pointer/PointerType$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerType$Companion;->getMouse-T8wyACA()I

    move-result v5

    invoke-static {v4, v5}, Landroidx/compose/ui/input/pointer/PointerType;->equals-impl0(II)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 215
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getType-7fucELk()I

    move-result p1

    .line 216
    sget-object v4, Landroidx/compose/ui/input/pointer/PointerEventType;->Companion:Landroidx/compose/ui/input/pointer/PointerEventType$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/input/pointer/PointerEventType$Companion;->getEnter-7fucELk()I

    move-result v5

    invoke-static {p1, v5}, Landroidx/compose/ui/input/pointer/PointerEventType;->equals-impl0(II)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 217
    iget-object v6, p0, Landroidx/compose/material3/internal/BasicTooltip_androidKt$handleGestures$2$1$1;->$$this$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v9, Landroidx/compose/material3/internal/BasicTooltip_androidKt$handleGestures$2$1$1$1;

    iget-object p1, p0, Landroidx/compose/material3/internal/BasicTooltip_androidKt$handleGestures$2$1$1;->$state:Landroidx/compose/material3/TooltipState;

    const/4 v4, 0x0

    invoke-direct {v9, p1, v4}, Landroidx/compose/material3/internal/BasicTooltip_androidKt$handleGestures$2$1$1$1;-><init>(Landroidx/compose/material3/TooltipState;Lkotlin/coroutines/Continuation;)V

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_0

    .line 219
    :cond_4
    invoke-virtual {v4}, Landroidx/compose/ui/input/pointer/PointerEventType$Companion;->getExit-7fucELk()I

    move-result v4

    invoke-static {p1, v4}, Landroidx/compose/ui/input/pointer/PointerEventType;->equals-impl0(II)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 220
    iget-object p1, p0, Landroidx/compose/material3/internal/BasicTooltip_androidKt$handleGestures$2$1$1;->$state:Landroidx/compose/material3/TooltipState;

    invoke-interface {p1}, Landroidx/compose/material3/TooltipState;->dismiss()V

    goto :goto_0
.end method
