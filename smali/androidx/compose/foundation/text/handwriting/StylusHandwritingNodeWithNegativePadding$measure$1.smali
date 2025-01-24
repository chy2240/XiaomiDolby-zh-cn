.class final Landroidx/compose/foundation/text/handwriting/StylusHandwritingNodeWithNegativePadding$measure$1;
.super Lkotlin/jvm/internal/Lambda;
.source "StylusHandwriting.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $paddingHorizontalPx:I

.field final synthetic $paddingVerticalPx:I

.field final synthetic $placeable:Landroidx/compose/ui/layout/Placeable;


# direct methods
.method constructor <init>(Landroidx/compose/ui/layout/Placeable;II)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNodeWithNegativePadding$measure$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    iput p2, p0, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNodeWithNegativePadding$measure$1;->$paddingHorizontalPx:I

    iput p3, p0, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNodeWithNegativePadding$measure$1;->$paddingVerticalPx:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 106
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNodeWithNegativePadding$measure$1;->invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V
    .locals 7

    .line 106
    iget-object v1, p0, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNodeWithNegativePadding$measure$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    iget v0, p0, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNodeWithNegativePadding$measure$1;->$paddingHorizontalPx:I

    neg-int v2, v0

    iget p0, p0, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNodeWithNegativePadding$measure$1;->$paddingVerticalPx:I

    neg-int v3, p0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    return-void
.end method
