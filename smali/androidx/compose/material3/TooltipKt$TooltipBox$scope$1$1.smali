.class final Landroidx/compose/material3/TooltipKt$TooltipBox$scope$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Tooltip.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $anchorBounds:Landroidx/compose/runtime/MutableState;


# direct methods
.method constructor <init>(Landroidx/compose/runtime/MutableState;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/material3/TooltipKt$TooltipBox$scope$1$1;->$anchorBounds:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/compose/ui/layout/LayoutCoordinates;
    .locals 0

    .line 132
    iget-object p0, p0, Landroidx/compose/material3/TooltipKt$TooltipBox$scope$1$1;->$anchorBounds:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/layout/LayoutCoordinates;

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 132
    invoke-virtual {p0}, Landroidx/compose/material3/TooltipKt$TooltipBox$scope$1$1;->invoke()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object p0

    return-object p0
.end method
