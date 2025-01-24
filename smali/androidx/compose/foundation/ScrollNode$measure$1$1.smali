.class final Landroidx/compose/foundation/ScrollNode$measure$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Scroll.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $placeable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $xOffset:I

.field final synthetic $yOffset:I


# direct methods
.method constructor <init>(Landroidx/compose/ui/layout/Placeable;II)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/foundation/ScrollNode$measure$1$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    iput p2, p0, Landroidx/compose/foundation/ScrollNode$measure$1$1;->$xOffset:I

    iput p3, p0, Landroidx/compose/foundation/ScrollNode$measure$1$1;->$yOffset:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 376
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/ScrollNode$measure$1$1;->invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V
    .locals 8

    .line 377
    iget-object v1, p0, Landroidx/compose/foundation/ScrollNode$measure$1$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    iget v2, p0, Landroidx/compose/foundation/ScrollNode$measure$1$1;->$xOffset:I

    iget v3, p0, Landroidx/compose/foundation/ScrollNode$measure$1$1;->$yOffset:I

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v7}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelativeWithLayer$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method
