.class final Landroidx/compose/material3/internal/BasicTooltip_androidKt$anchorSemantics$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BasicTooltip.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $scope:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic $state:Landroidx/compose/material3/TooltipState;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/material3/TooltipState;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/material3/internal/BasicTooltip_androidKt$anchorSemantics$1$1;->$scope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, p0, Landroidx/compose/material3/internal/BasicTooltip_androidKt$anchorSemantics$1$1;->$state:Landroidx/compose/material3/TooltipState;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Boolean;
    .locals 6

    .line 241
    iget-object v0, p0, Landroidx/compose/material3/internal/BasicTooltip_androidKt$anchorSemantics$1$1;->$scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v3, Landroidx/compose/material3/internal/BasicTooltip_androidKt$anchorSemantics$1$1$1;

    iget-object p0, p0, Landroidx/compose/material3/internal/BasicTooltip_androidKt$anchorSemantics$1$1;->$state:Landroidx/compose/material3/TooltipState;

    const/4 v1, 0x0

    invoke-direct {v3, p0, v1}, Landroidx/compose/material3/internal/BasicTooltip_androidKt$anchorSemantics$1$1$1;-><init>(Landroidx/compose/material3/TooltipState;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 242
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 238
    invoke-virtual {p0}, Landroidx/compose/material3/internal/BasicTooltip_androidKt$anchorSemantics$1$1;->invoke()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
