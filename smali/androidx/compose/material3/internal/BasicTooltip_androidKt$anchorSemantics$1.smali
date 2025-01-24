.class final Landroidx/compose/material3/internal/BasicTooltip_androidKt$anchorSemantics$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BasicTooltip.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $label:Ljava/lang/String;

.field final synthetic $scope:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic $state:Landroidx/compose/material3/TooltipState;


# direct methods
.method constructor <init>(Ljava/lang/String;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/material3/TooltipState;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/material3/internal/BasicTooltip_androidKt$anchorSemantics$1;->$label:Ljava/lang/String;

    iput-object p2, p0, Landroidx/compose/material3/internal/BasicTooltip_androidKt$anchorSemantics$1;->$scope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p3, p0, Landroidx/compose/material3/internal/BasicTooltip_androidKt$anchorSemantics$1;->$state:Landroidx/compose/material3/TooltipState;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 237
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/internal/BasicTooltip_androidKt$anchorSemantics$1;->invoke(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V
    .locals 3

    .line 239
    iget-object v0, p0, Landroidx/compose/material3/internal/BasicTooltip_androidKt$anchorSemantics$1;->$label:Ljava/lang/String;

    .line 238
    new-instance v1, Landroidx/compose/material3/internal/BasicTooltip_androidKt$anchorSemantics$1$1;

    iget-object v2, p0, Landroidx/compose/material3/internal/BasicTooltip_androidKt$anchorSemantics$1;->$scope:Lkotlinx/coroutines/CoroutineScope;

    iget-object p0, p0, Landroidx/compose/material3/internal/BasicTooltip_androidKt$anchorSemantics$1;->$state:Landroidx/compose/material3/TooltipState;

    invoke-direct {v1, v2, p0}, Landroidx/compose/material3/internal/BasicTooltip_androidKt$anchorSemantics$1$1;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/material3/TooltipState;)V

    invoke-static {p1, v0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->onLongClick(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
