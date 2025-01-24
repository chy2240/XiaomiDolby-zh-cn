.class final Landroidx/compose/material3/OutlinedTextFieldKt$outlineCutout$1;
.super Lkotlin/jvm/internal/Lambda;
.source "OutlinedTextField.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $alignment:Landroidx/compose/ui/Alignment$Horizontal;

.field final synthetic $labelSize:Lkotlin/jvm/functions/Function0;

.field final synthetic $paddingValues:Landroidx/compose/foundation/layout/PaddingValues;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/Alignment$Horizontal;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/material3/OutlinedTextFieldKt$outlineCutout$1;->$labelSize:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Landroidx/compose/material3/OutlinedTextFieldKt$outlineCutout$1;->$paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    iput-object p3, p0, Landroidx/compose/material3/OutlinedTextFieldKt$outlineCutout$1;->$alignment:Landroidx/compose/ui/Alignment$Horizontal;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1399
    check-cast p1, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/OutlinedTextFieldKt$outlineCutout$1;->invoke(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V
    .locals 13

    .line 1400
    iget-object v0, p0, Landroidx/compose/material3/OutlinedTextFieldKt$outlineCutout$1;->$labelSize:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/geometry/Size;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Size;->unbox-impl()J

    move-result-wide v0

    .line 1401
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-lez v4, :cond_0

    .line 1403
    invoke-static {}, Landroidx/compose/material3/OutlinedTextFieldKt;->access$getOutlinedTextFieldInnerPadding$p()F

    move-result v4

    invoke-interface {p1, v4}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v4

    .line 1404
    iget-object v5, p0, Landroidx/compose/material3/OutlinedTextFieldKt$outlineCutout$1;->$paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v6

    invoke-interface {v5, v6}, Landroidx/compose/foundation/layout/PaddingValues;->calculateLeftPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v5

    invoke-interface {p1, v5}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v5

    .line 1405
    iget-object v6, p0, Landroidx/compose/material3/OutlinedTextFieldKt$outlineCutout$1;->$paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v7

    invoke-interface {v6, v7}, Landroidx/compose/foundation/layout/PaddingValues;->calculateRightPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v6

    invoke-interface {p1, v6}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v6

    .line 1407
    iget-object p0, p0, Landroidx/compose/material3/OutlinedTextFieldKt$outlineCutout$1;->$alignment:Landroidx/compose/ui/Alignment$Horizontal;

    .line 1408
    invoke-static {v2}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v7

    .line 1409
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v8

    invoke-static {v8, v9}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v8

    sub-float/2addr v8, v5

    sub-float/2addr v8, v6

    invoke-static {v8}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v6

    .line 1410
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v8

    .line 1407
    invoke-interface {p0, v7, v6, v8}, Landroidx/compose/ui/Alignment$Horizontal;->align(IILandroidx/compose/ui/unit/LayoutDirection;)I

    move-result p0

    int-to-float p0, p0

    add-float/2addr p0, v5

    const/4 v5, 0x2

    int-to-float v5, v5

    div-float/2addr v2, v5

    add-float/2addr p0, v2

    sub-float v6, p0, v2

    sub-float/2addr v6, v4

    .line 1412
    invoke-static {v6, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v8

    add-float/2addr p0, v2

    add-float/2addr p0, v4

    .line 1413
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v2

    invoke-static {p0, v2}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result v10

    .line 1414
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result p0

    neg-float v0, p0

    div-float v9, v0, v5

    div-float v11, p0, v5

    .line 1417
    sget-object p0, Landroidx/compose/ui/graphics/ClipOp;->Companion:Landroidx/compose/ui/graphics/ClipOp$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/ClipOp$Companion;->getDifference-rtfAjoo()I

    move-result v12

    .line 1428
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object p0

    .line 276
    invoke-interface {p0}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getSize-NH-jbRc()J

    move-result-wide v0

    .line 1433
    invoke-interface {p0}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v2

    invoke-interface {v2}, Landroidx/compose/ui/graphics/Canvas;->save()V

    .line 1435
    :try_start_0
    invoke-interface {p0}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getTransform()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    move-result-object v7

    .line 1427
    invoke-interface/range {v7 .. v12}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->clipRect-N_I0leg(FFFFI)V

    .line 1418
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->drawContent()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1438
    invoke-interface {p0}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object p1

    invoke-interface {p1}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    .line 1439
    invoke-interface {p0, v0, v1}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->setSize-uvyYCjk(J)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1438
    invoke-interface {p0}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v2

    invoke-interface {v2}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    .line 1439
    invoke-interface {p0, v0, v1}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->setSize-uvyYCjk(J)V

    throw p1

    .line 1421
    :cond_0
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->drawContent()V

    :goto_0
    return-void
.end method
