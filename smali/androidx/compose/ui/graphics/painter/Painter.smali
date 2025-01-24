.class public abstract Landroidx/compose/ui/graphics/painter/Painter;
.super Ljava/lang/Object;
.source "Painter.kt"


# instance fields
.field private alpha:F

.field private colorFilter:Landroidx/compose/ui/graphics/ColorFilter;

.field private final drawLambda:Lkotlin/jvm/functions/Function1;

.field private layerPaint:Landroidx/compose/ui/graphics/Paint;

.field private layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

.field private useLayer:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 93
    iput v0, p0, Landroidx/compose/ui/graphics/painter/Painter;->alpha:F

    .line 123
    sget-object v0, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    iput-object v0, p0, Landroidx/compose/ui/graphics/painter/Painter;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 137
    new-instance v0, Landroidx/compose/ui/graphics/painter/Painter$drawLambda$1;

    invoke-direct {v0, p0}, Landroidx/compose/ui/graphics/painter/Painter$drawLambda$1;-><init>(Landroidx/compose/ui/graphics/painter/Painter;)V

    iput-object v0, p0, Landroidx/compose/ui/graphics/painter/Painter;->drawLambda:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method private final configureAlpha(F)V
    .locals 1

    .line 107
    iget v0, p0, Landroidx/compose/ui/graphics/painter/Painter;->alpha:F

    cmpg-float v0, v0, p1

    if-nez v0, :cond_0

    goto :goto_2

    .line 108
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/ui/graphics/painter/Painter;->applyAlpha(F)Z

    move-result v0

    if-nez v0, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-nez v0, :cond_2

    .line 112
    iget-object v0, p0, Landroidx/compose/ui/graphics/painter/Painter;->layerPaint:Landroidx/compose/ui/graphics/Paint;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0, p1}, Landroidx/compose/ui/graphics/Paint;->setAlpha(F)V

    :goto_0
    const/4 v0, 0x0

    .line 113
    iput-boolean v0, p0, Landroidx/compose/ui/graphics/painter/Painter;->useLayer:Z

    goto :goto_1

    .line 115
    :cond_2
    invoke-direct {p0}, Landroidx/compose/ui/graphics/painter/Painter;->obtainPaint()Landroidx/compose/ui/graphics/Paint;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/compose/ui/graphics/Paint;->setAlpha(F)V

    const/4 v0, 0x1

    .line 116
    iput-boolean v0, p0, Landroidx/compose/ui/graphics/painter/Painter;->useLayer:Z

    .line 119
    :cond_3
    :goto_1
    iput p1, p0, Landroidx/compose/ui/graphics/painter/Painter;->alpha:F

    :goto_2
    return-void
.end method

.method private final configureColorFilter(Landroidx/compose/ui/graphics/ColorFilter;)V
    .locals 2

    .line 77
    iget-object v0, p0, Landroidx/compose/ui/graphics/painter/Painter;->colorFilter:Landroidx/compose/ui/graphics/ColorFilter;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 78
    invoke-virtual {p0, p1}, Landroidx/compose/ui/graphics/painter/Painter;->applyColorFilter(Landroidx/compose/ui/graphics/ColorFilter;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_1

    .line 81
    iget-object v0, p0, Landroidx/compose/ui/graphics/painter/Painter;->layerPaint:Landroidx/compose/ui/graphics/Paint;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroidx/compose/ui/graphics/Paint;->setColorFilter(Landroidx/compose/ui/graphics/ColorFilter;)V

    :goto_0
    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Landroidx/compose/ui/graphics/painter/Painter;->useLayer:Z

    goto :goto_1

    .line 84
    :cond_1
    invoke-direct {p0}, Landroidx/compose/ui/graphics/painter/Painter;->obtainPaint()Landroidx/compose/ui/graphics/Paint;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/compose/ui/graphics/Paint;->setColorFilter(Landroidx/compose/ui/graphics/ColorFilter;)V

    const/4 v0, 0x1

    .line 85
    iput-boolean v0, p0, Landroidx/compose/ui/graphics/painter/Painter;->useLayer:Z

    .line 88
    :cond_2
    :goto_1
    iput-object p1, p0, Landroidx/compose/ui/graphics/painter/Painter;->colorFilter:Landroidx/compose/ui/graphics/ColorFilter;

    :cond_3
    return-void
.end method

.method private final configureLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V
    .locals 1

    .line 131
    iget-object v0, p0, Landroidx/compose/ui/graphics/painter/Painter;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    if-eq v0, p1, :cond_0

    .line 132
    invoke-virtual {p0, p1}, Landroidx/compose/ui/graphics/painter/Painter;->applyLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)Z

    .line 133
    iput-object p1, p0, Landroidx/compose/ui/graphics/painter/Painter;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    :cond_0
    return-void
.end method

.method private final obtainPaint()Landroidx/compose/ui/graphics/Paint;
    .locals 1

    .line 50
    iget-object v0, p0, Landroidx/compose/ui/graphics/painter/Painter;->layerPaint:Landroidx/compose/ui/graphics/Paint;

    if-nez v0, :cond_0

    .line 52
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPaint_androidKt;->Paint()Landroidx/compose/ui/graphics/Paint;

    move-result-object v0

    .line 53
    iput-object v0, p0, Landroidx/compose/ui/graphics/painter/Painter;->layerPaint:Landroidx/compose/ui/graphics/Paint;

    :cond_0
    return-object v0
.end method


# virtual methods
.method protected abstract applyAlpha(F)Z
.end method

.method protected abstract applyColorFilter(Landroidx/compose/ui/graphics/ColorFilter;)Z
.end method

.method protected applyLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public final draw-x_KDEd0(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFLandroidx/compose/ui/graphics/ColorFilter;)V
    .locals 10

    .line 173
    invoke-direct {p0, p4}, Landroidx/compose/ui/graphics/painter/Painter;->configureAlpha(F)V

    .line 174
    invoke-direct {p0, p5}, Landroidx/compose/ui/graphics/painter/Painter;->configureColorFilter(Landroidx/compose/ui/graphics/ColorFilter;)V

    .line 175
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object p5

    invoke-direct {p0, p5}, Landroidx/compose/ui/graphics/painter/Painter;->configureLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 181
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v0

    const/16 p5, 0x20

    shr-long/2addr v0, p5

    long-to-int v0, v0

    .line 22
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    shr-long v1, p2, p5

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    sub-float/2addr v0, v2

    .line 182
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    long-to-int v2, v2

    .line 22
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    and-long/2addr p2, v4

    long-to-int p2, p2

    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p3

    sub-float/2addr v2, p3

    .line 68
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object p3

    invoke-interface {p3}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getTransform()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    move-result-object p3

    const/4 v3, 0x0

    invoke-interface {p3, v3, v3, v0, v2}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->inset(FFFF)V

    cmpl-float p3, p4, v3

    const/high16 p4, -0x80000000

    if-lez p3, :cond_1

    .line 22
    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p3

    cmpl-float p3, p3, v3

    if-lez p3, :cond_1

    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p3

    cmpl-float p3, p3, v3

    if-lez p3, :cond_1

    .line 185
    iget-boolean p3, p0, Landroidx/compose/ui/graphics/painter/Painter;->useLayer:Z

    if-eqz p3, :cond_0

    .line 186
    sget-object p3, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p3}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v6

    .line 22
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p3

    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    .line 53
    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p3

    int-to-long v8, p3

    .line 54
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    int-to-long p2, p2

    shl-long/2addr v8, p5

    and-long/2addr p2, v4

    or-long/2addr p2, v8

    .line 33
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Size;->constructor-impl(J)J

    move-result-wide p2

    .line 186
    invoke-static {v6, v7, p2, p3}, Landroidx/compose/ui/geometry/RectKt;->Rect-tz77jQw(JJ)Landroidx/compose/ui/geometry/Rect;

    move-result-object p2

    .line 233
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object p3

    invoke-interface {p3}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object p3

    .line 189
    invoke-direct {p0}, Landroidx/compose/ui/graphics/painter/Painter;->obtainPaint()Landroidx/compose/ui/graphics/Paint;

    move-result-object p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :try_start_1
    invoke-interface {p3, p2, p5}, Landroidx/compose/ui/graphics/Canvas;->saveLayer(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/graphics/Paint;)V

    .line 189
    invoke-virtual {p0, p1}, Landroidx/compose/ui/graphics/painter/Painter;->onDraw(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 99
    :try_start_2
    invoke-interface {p3}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-interface {p3}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    throw p0

    .line 192
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/ui/graphics/painter/Painter;->onDraw(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 72
    :goto_0
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object p1

    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getTransform()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    move-result-object p1

    neg-float p2, v0

    neg-float p3, v2

    invoke-interface {p1, p4, p4, p2, p3}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->inset(FFFF)V

    throw p0

    :cond_1
    :goto_1
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getTransform()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    move-result-object p0

    neg-float p1, v0

    neg-float p2, v2

    invoke-interface {p0, p4, p4, p1, p2}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->inset(FFFF)V

    return-void
.end method

.method public abstract getIntrinsicSize-NH-jbRc()J
.end method

.method protected abstract onDraw(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V
.end method
