.class public final Landroidx/compose/foundation/text/handwriting/StylusHandwritingNodeWithNegativePadding;
.super Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode;
.source "StylusHandwriting.kt"

# interfaces
.implements Landroidx/compose/ui/node/LayoutModifierNode;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode;-><init>(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method public measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 10

    .line 99
    invoke-static {}, Landroidx/compose/foundation/text/handwriting/StylusHandwritingKt;->getHandwritingBoundsVerticalOffset()F

    move-result p0

    invoke-interface {p1, p0}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result p0

    .line 100
    invoke-static {}, Landroidx/compose/foundation/text/handwriting/StylusHandwritingKt;->getHandwritingBoundsHorizontalOffset()F

    move-result v0

    invoke-interface {p1, v0}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v0

    mul-int/lit8 v1, v0, 0x2

    mul-int/lit8 v2, p0, 0x2

    .line 101
    invoke-static {p3, p4, v1, v2}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U(JII)J

    move-result-wide p3

    .line 102
    invoke-interface {p2, p3, p4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object p2

    .line 104
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result p3

    sub-int v5, p3, v2

    .line 105
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result p3

    sub-int v4, p3, v1

    .line 106
    new-instance v7, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNodeWithNegativePadding$measure$1;

    invoke-direct {v7, p2, v0, p0}, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNodeWithNegativePadding$measure$1;-><init>(Landroidx/compose/ui/layout/Placeable;II)V

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    invoke-static/range {v3 .. v9}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method

.method public sharePointerInputWithSiblings()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method
