.class public final Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;
.super Ljava/lang/Object;
.source "GraphicsLayerV29.android.kt"

# interfaces
.implements Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;


# instance fields
.field private alpha:F

.field private ambientShadowColor:J

.field private blendMode:I

.field private cameraDistance:F

.field private final canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

.field private final canvasHolder:Landroidx/compose/ui/graphics/CanvasHolder;

.field private clip:Z

.field private clipToBounds:Z

.field private clipToOutline:Z

.field private colorFilter:Landroidx/compose/ui/graphics/ColorFilter;

.field private compositingStrategy:I

.field private isInvalidated:Z

.field private layerPaint:Landroid/graphics/Paint;

.field private matrix:Landroid/graphics/Matrix;

.field private outlineIsProvided:Z

.field private final ownerId:J

.field private pivotOffset:J

.field private final renderNode:Landroid/graphics/RenderNode;

.field private rotationX:F

.field private rotationY:F

.field private rotationZ:F

.field private scaleX:F

.field private scaleY:F

.field private shadowElevation:F

.field private size:J

.field private spotShadowColor:J

.field private translationX:F

.field private translationY:F


# direct methods
.method public constructor <init>(JLandroidx/compose/ui/graphics/CanvasHolder;Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-wide p1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->ownerId:J

    .line 48
    iput-object p3, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->canvasHolder:Landroidx/compose/ui/graphics/CanvasHolder;

    .line 49
    iput-object p4, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 51
    new-instance p1, Landroid/graphics/RenderNode;

    const-string p2, "graphicsLayer"

    invoke-direct {p1, p2}, Landroid/graphics/RenderNode;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->renderNode:Landroid/graphics/RenderNode;

    .line 53
    sget-object p2, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Size$Companion;->getZero-NH-jbRc()J

    move-result-wide p2

    iput-wide p2, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->size:J

    const/4 p2, 0x0

    .line 59
    invoke-virtual {p1, p2}, Landroid/graphics/RenderNode;->setClipToBounds(Z)Z

    .line 60
    sget-object p2, Landroidx/compose/ui/graphics/layer/CompositingStrategy;->Companion:Landroidx/compose/ui/graphics/layer/CompositingStrategy$Companion;

    invoke-virtual {p2}, Landroidx/compose/ui/graphics/layer/CompositingStrategy$Companion;->getAuto-ke2Ky5w()I

    move-result p3

    invoke-direct {p0, p1, p3}, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->applyCompositingStrategy-Z1X6vPc(Landroid/graphics/RenderNode;I)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 63
    iput p1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->alpha:F

    .line 69
    sget-object p3, Landroidx/compose/ui/graphics/BlendMode;->Companion:Landroidx/compose/ui/graphics/BlendMode$Companion;

    invoke-virtual {p3}, Landroidx/compose/ui/graphics/BlendMode$Companion;->getSrcOver-0nO6VwU()I

    move-result p3

    iput p3, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->blendMode:I

    .line 83
    sget-object p3, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p3}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide p3

    iput-wide p3, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->pivotOffset:J

    .line 94
    iput p1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->scaleX:F

    .line 100
    iput p1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->scaleY:F

    .line 124
    sget-object p1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide p3

    iput-wide p3, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->ambientShadowColor:J

    .line 130
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide p3

    iput-wide p3, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->spotShadowColor:J

    const/high16 p1, 0x41000000    # 8.0f

    .line 154
    iput p1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->cameraDistance:F

    .line 190
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/layer/CompositingStrategy$Companion;->getAuto-ke2Ky5w()I

    move-result p1

    iput p1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->compositingStrategy:I

    const/4 p1, 0x1

    .line 232
    iput-boolean p1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->isInvalidated:Z

    return-void
.end method

.method public synthetic constructor <init>(JLandroidx/compose/ui/graphics/CanvasHolder;Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    .line 48
    new-instance p3, Landroidx/compose/ui/graphics/CanvasHolder;

    invoke-direct {p3}, Landroidx/compose/ui/graphics/CanvasHolder;-><init>()V

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    .line 49
    new-instance p4, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-direct {p4}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;-><init>()V

    .line 46
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;-><init>(JLandroidx/compose/ui/graphics/CanvasHolder;Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;)V

    return-void
.end method

.method private final applyClip()V
    .locals 4

    .line 170
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->getClip()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->outlineIsProvided:Z

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 171
    :goto_0
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->getClip()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->outlineIsProvided:Z

    if-eqz v3, :cond_1

    move v1, v2

    .line 172
    :cond_1
    iget-boolean v2, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->clipToBounds:Z

    if-eq v0, v2, :cond_2

    .line 173
    iput-boolean v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->clipToBounds:Z

    .line 174
    iget-object v2, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->renderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v2, v0}, Landroid/graphics/RenderNode;->setClipToBounds(Z)Z

    .line 176
    :cond_2
    iget-boolean v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->clipToOutline:Z

    if-eq v1, v0, :cond_3

    .line 177
    iput-boolean v1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->clipToOutline:Z

    .line 178
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->renderNode:Landroid/graphics/RenderNode;

    invoke-virtual {p0, v1}, Landroid/graphics/RenderNode;->setClipToOutline(Z)Z

    :cond_3
    return-void
.end method

.method private final applyCompositingStrategy-Z1X6vPc(Landroid/graphics/RenderNode;I)V
    .locals 3

    .line 198
    sget-object v0, Landroidx/compose/ui/graphics/layer/CompositingStrategy;->Companion:Landroidx/compose/ui/graphics/layer/CompositingStrategy$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/layer/CompositingStrategy$Companion;->getOffscreen-ke2Ky5w()I

    move-result v1

    invoke-static {p2, v1}, Landroidx/compose/ui/graphics/layer/CompositingStrategy;->equals-impl0(II)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 199
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->layerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, p0}, Landroid/graphics/RenderNode;->setUseCompositingLayer(ZLandroid/graphics/Paint;)Z

    .line 200
    invoke-virtual {p1, v2}, Landroid/graphics/RenderNode;->setHasOverlappingRendering(Z)Z

    goto :goto_0

    .line 202
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/layer/CompositingStrategy$Companion;->getModulateAlpha-ke2Ky5w()I

    move-result v0

    invoke-static {p2, v0}, Landroidx/compose/ui/graphics/layer/CompositingStrategy;->equals-impl0(II)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 203
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->layerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/RenderNode;->setUseCompositingLayer(ZLandroid/graphics/Paint;)Z

    .line 204
    invoke-virtual {p1, v0}, Landroid/graphics/RenderNode;->setHasOverlappingRendering(Z)Z

    goto :goto_0

    .line 207
    :cond_1
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->layerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/RenderNode;->setUseCompositingLayer(ZLandroid/graphics/Paint;)Z

    .line 208
    invoke-virtual {p1, v2}, Landroid/graphics/RenderNode;->setHasOverlappingRendering(Z)Z

    :goto_0
    return-void
.end method

.method private final requiresCompositingLayer()Z
    .locals 2

    .line 282
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->getCompositingStrategy-ke2Ky5w()I

    move-result v0

    sget-object v1, Landroidx/compose/ui/graphics/layer/CompositingStrategy;->Companion:Landroidx/compose/ui/graphics/layer/CompositingStrategy$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/layer/CompositingStrategy$Companion;->getOffscreen-ke2Ky5w()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/layer/CompositingStrategy;->equals-impl0(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 283
    invoke-direct {p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->requiresLayerPaint()Z

    move-result v0

    if-nez v0, :cond_0

    .line 284
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->getRenderEffect()Landroidx/compose/ui/graphics/RenderEffect;

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method private final requiresLayerPaint()Z
    .locals 2

    .line 287
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->getBlendMode-0nO6VwU()I

    move-result v0

    sget-object v1, Landroidx/compose/ui/graphics/BlendMode;->Companion:Landroidx/compose/ui/graphics/BlendMode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/BlendMode$Companion;->getSrcOver-0nO6VwU()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/BlendMode;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->getColorFilter()Landroidx/compose/ui/graphics/ColorFilter;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private final updateLayerProperties()V
    .locals 2

    .line 214
    invoke-direct {p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->requiresCompositingLayer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->renderNode:Landroid/graphics/RenderNode;

    sget-object v1, Landroidx/compose/ui/graphics/layer/CompositingStrategy;->Companion:Landroidx/compose/ui/graphics/layer/CompositingStrategy$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/layer/CompositingStrategy$Companion;->getOffscreen-ke2Ky5w()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->applyCompositingStrategy-Z1X6vPc(Landroid/graphics/RenderNode;I)V

    goto :goto_0

    .line 217
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->renderNode:Landroid/graphics/RenderNode;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->getCompositingStrategy-ke2Ky5w()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->applyCompositingStrategy-Z1X6vPc(Landroid/graphics/RenderNode;I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public calculateMatrix()Landroid/graphics/Matrix;
    .locals 1

    .line 263
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->matrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->matrix:Landroid/graphics/Matrix;

    .line 264
    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->renderNode:Landroid/graphics/RenderNode;

    invoke-virtual {p0, v0}, Landroid/graphics/RenderNode;->getMatrix(Landroid/graphics/Matrix;)V

    return-object v0
.end method

.method public discardDisplayList()V
    .locals 0

    .line 272
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->renderNode:Landroid/graphics/RenderNode;

    invoke-virtual {p0}, Landroid/graphics/RenderNode;->discardDisplayList()V

    return-void
.end method

.method public draw(Landroidx/compose/ui/graphics/Canvas;)V
    .locals 0

    .line 259
    invoke-static {p1}, Landroidx/compose/ui/graphics/AndroidCanvas_androidKt;->getNativeCanvas(Landroidx/compose/ui/graphics/Canvas;)Landroid/graphics/Canvas;

    move-result-object p1

    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->renderNode:Landroid/graphics/RenderNode;

    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    return-void
.end method

.method public getAlpha()F
    .locals 0

    .line 63
    iget p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->alpha:F

    return p0
.end method

.method public getAmbientShadowColor-0d7_KjU()J
    .locals 2

    .line 124
    iget-wide v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->ambientShadowColor:J

    return-wide v0
.end method

.method public getBlendMode-0nO6VwU()I
    .locals 0

    .line 69
    iget p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->blendMode:I

    return p0
.end method

.method public getCameraDistance()F
    .locals 0

    .line 154
    iget p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->cameraDistance:F

    return p0
.end method

.method public getClip()Z
    .locals 0

    .line 160
    iget-boolean p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->clip:Z

    return p0
.end method

.method public getColorFilter()Landroidx/compose/ui/graphics/ColorFilter;
    .locals 0

    .line 76
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->colorFilter:Landroidx/compose/ui/graphics/ColorFilter;

    return-object p0
.end method

.method public getCompositingStrategy-ke2Ky5w()I
    .locals 0

    .line 190
    iget p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->compositingStrategy:I

    return p0
.end method

.method public getHasDisplayList()Z
    .locals 0

    .line 269
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->renderNode:Landroid/graphics/RenderNode;

    invoke-virtual {p0}, Landroid/graphics/RenderNode;->hasDisplayList()Z

    move-result p0

    return p0
.end method

.method public getRenderEffect()Landroidx/compose/ui/graphics/RenderEffect;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRotationX()F
    .locals 0

    .line 136
    iget p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->rotationX:F

    return p0
.end method

.method public getRotationY()F
    .locals 0

    .line 142
    iget p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->rotationY:F

    return p0
.end method

.method public getRotationZ()F
    .locals 0

    .line 148
    iget p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->rotationZ:F

    return p0
.end method

.method public getScaleX()F
    .locals 0

    .line 94
    iget p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->scaleX:F

    return p0
.end method

.method public getScaleY()F
    .locals 0

    .line 100
    iget p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->scaleY:F

    return p0
.end method

.method public getShadowElevation()F
    .locals 0

    .line 118
    iget p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->shadowElevation:F

    return p0
.end method

.method public getSpotShadowColor-0d7_KjU()J
    .locals 2

    .line 130
    iget-wide v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->spotShadowColor:J

    return-wide v0
.end method

.method public getTranslationX()F
    .locals 0

    .line 106
    iget p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->translationX:F

    return p0
.end method

.method public getTranslationY()F
    .locals 0

    .line 112
    iget p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->translationY:F

    return p0
.end method

.method public record(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/graphics/layer/GraphicsLayer;Lkotlin/jvm/functions/Function1;)V
    .locals 4

    .line 240
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->renderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->beginRecording()Landroid/graphics/RecordingCanvas;

    move-result-object v0

    .line 242
    :try_start_0
    iget-object v1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->canvasHolder:Landroidx/compose/ui/graphics/CanvasHolder;

    .line 41
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/CanvasHolder;->getAndroidCanvas()Landroidx/compose/ui/graphics/AndroidCanvas;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/AndroidCanvas;->getInternalCanvas()Landroid/graphics/Canvas;

    move-result-object v2

    .line 42
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/CanvasHolder;->getAndroidCanvas()Landroidx/compose/ui/graphics/AndroidCanvas;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroidx/compose/ui/graphics/AndroidCanvas;->setInternalCanvas(Landroid/graphics/Canvas;)V

    .line 43
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/CanvasHolder;->getAndroidCanvas()Landroidx/compose/ui/graphics/AndroidCanvas;

    move-result-object v0

    .line 243
    iget-object v3, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object v3

    .line 244
    invoke-interface {v3, p1}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->setDensity(Landroidx/compose/ui/unit/Density;)V

    .line 245
    invoke-interface {v3, p2}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 246
    invoke-interface {v3, p3}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->setGraphicsLayer(Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    .line 247
    iget-wide p1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->size:J

    invoke-interface {v3, p1, p2}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->setSize-uvyYCjk(J)V

    .line 248
    invoke-interface {v3, v0}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->setCanvas(Landroidx/compose/ui/graphics/Canvas;)V

    .line 250
    iget-object p1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-interface {p4, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/CanvasHolder;->getAndroidCanvas()Landroidx/compose/ui/graphics/AndroidCanvas;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/compose/ui/graphics/AndroidCanvas;->setInternalCanvas(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    iget-object p1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->renderNode:Landroid/graphics/RenderNode;

    invoke-virtual {p1}, Landroid/graphics/RenderNode;->endRecording()V

    const/4 p1, 0x0

    .line 255
    invoke-virtual {p0, p1}, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->setInvalidated(Z)V

    return-void

    :catchall_0
    move-exception p1

    .line 253
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->renderNode:Landroid/graphics/RenderNode;

    invoke-virtual {p0}, Landroid/graphics/RenderNode;->endRecording()V

    throw p1
.end method

.method public setAlpha(F)V
    .locals 0

    .line 65
    iput p1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->alpha:F

    .line 66
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->renderNode:Landroid/graphics/RenderNode;

    invoke-virtual {p0, p1}, Landroid/graphics/RenderNode;->setAlpha(F)Z

    return-void
.end method

.method public setAmbientShadowColor-8_81llA(J)V
    .locals 0

    .line 126
    iput-wide p1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->ambientShadowColor:J

    .line 127
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->renderNode:Landroid/graphics/RenderNode;

    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/ColorKt;->toArgb-8_81llA(J)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/RenderNode;->setAmbientShadowColor(I)Z

    return-void
.end method

.method public setCameraDistance(F)V
    .locals 0

    .line 156
    iput p1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->cameraDistance:F

    .line 157
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->renderNode:Landroid/graphics/RenderNode;

    invoke-virtual {p0, p1}, Landroid/graphics/RenderNode;->setCameraDistance(F)Z

    return-void
.end method

.method public setClip(Z)V
    .locals 0

    .line 162
    iput-boolean p1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->clip:Z

    .line 163
    invoke-direct {p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->applyClip()V

    return-void
.end method

.method public setCompositingStrategy-Wpw9cng(I)V
    .locals 0

    .line 192
    iput p1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->compositingStrategy:I

    .line 193
    invoke-direct {p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->updateLayerProperties()V

    return-void
.end method

.method public setInvalidated(Z)V
    .locals 0

    .line 232
    iput-boolean p1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->isInvalidated:Z

    return-void
.end method

.method public setOutline(Landroid/graphics/Outline;)V
    .locals 1

    .line 227
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->renderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0, p1}, Landroid/graphics/RenderNode;->setOutline(Landroid/graphics/Outline;)Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 228
    :goto_0
    iput-boolean p1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->outlineIsProvided:Z

    .line 229
    invoke-direct {p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->applyClip()V

    return-void
.end method

.method public setPivotOffset-k-4lQ0M(J)V
    .locals 4

    .line 85
    iput-wide p1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->pivotOffset:J

    const-wide v0, 0x7fffffff7fffffffL

    and-long/2addr v0, p1

    const-wide v2, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 87
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->renderNode:Landroid/graphics/RenderNode;

    invoke-virtual {p0}, Landroid/graphics/RenderNode;->resetPivot()Z

    goto :goto_0

    .line 89
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->renderNode:Landroid/graphics/RenderNode;

    const/16 v1, 0x20

    shr-long v1, p1, v1

    long-to-int v1, v1

    .line 22
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    .line 89
    invoke-virtual {v0, v1}, Landroid/graphics/RenderNode;->setPivotX(F)Z

    .line 90
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->renderNode:Landroid/graphics/RenderNode;

    const-wide v0, 0xffffffffL

    and-long/2addr p1, v0

    long-to-int p1, p1

    .line 22
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    .line 90
    invoke-virtual {p0, p1}, Landroid/graphics/RenderNode;->setPivotY(F)Z

    :goto_0
    return-void
.end method

.method public setPosition-H0pRuoY(IIJ)V
    .locals 4

    .line 222
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->renderNode:Landroid/graphics/RenderNode;

    const/16 v1, 0x20

    shr-long v1, p3, v1

    long-to-int v1, v1

    add-int/2addr v1, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v2, p3

    long-to-int v2, v2

    add-int/2addr v2, p2

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/graphics/RenderNode;->setPosition(IIII)Z

    .line 223
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/IntSizeKt;->toSize-ozmzZPI(J)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->size:J

    return-void
.end method

.method public setRenderEffect(Landroidx/compose/ui/graphics/RenderEffect;)V
    .locals 1

    .line 186
    sget-object v0, Landroidx/compose/ui/graphics/layer/RenderNodeVerificationHelper;->INSTANCE:Landroidx/compose/ui/graphics/layer/RenderNodeVerificationHelper;

    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->renderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0, p0, p1}, Landroidx/compose/ui/graphics/layer/RenderNodeVerificationHelper;->setRenderEffect(Landroid/graphics/RenderNode;Landroidx/compose/ui/graphics/RenderEffect;)V

    return-void
.end method

.method public setRotationX(F)V
    .locals 0

    .line 138
    iput p1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->rotationX:F

    .line 139
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->renderNode:Landroid/graphics/RenderNode;

    invoke-virtual {p0, p1}, Landroid/graphics/RenderNode;->setRotationX(F)Z

    return-void
.end method

.method public setRotationY(F)V
    .locals 0

    .line 144
    iput p1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->rotationY:F

    .line 145
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->renderNode:Landroid/graphics/RenderNode;

    invoke-virtual {p0, p1}, Landroid/graphics/RenderNode;->setRotationY(F)Z

    return-void
.end method

.method public setRotationZ(F)V
    .locals 0

    .line 150
    iput p1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->rotationZ:F

    .line 151
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->renderNode:Landroid/graphics/RenderNode;

    invoke-virtual {p0, p1}, Landroid/graphics/RenderNode;->setRotationZ(F)Z

    return-void
.end method

.method public setScaleX(F)V
    .locals 0

    .line 96
    iput p1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->scaleX:F

    .line 97
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->renderNode:Landroid/graphics/RenderNode;

    invoke-virtual {p0, p1}, Landroid/graphics/RenderNode;->setScaleX(F)Z

    return-void
.end method

.method public setScaleY(F)V
    .locals 0

    .line 102
    iput p1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->scaleY:F

    .line 103
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->renderNode:Landroid/graphics/RenderNode;

    invoke-virtual {p0, p1}, Landroid/graphics/RenderNode;->setScaleY(F)Z

    return-void
.end method

.method public setShadowElevation(F)V
    .locals 0

    .line 120
    iput p1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->shadowElevation:F

    .line 121
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->renderNode:Landroid/graphics/RenderNode;

    invoke-virtual {p0, p1}, Landroid/graphics/RenderNode;->setElevation(F)Z

    return-void
.end method

.method public setSpotShadowColor-8_81llA(J)V
    .locals 0

    .line 132
    iput-wide p1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->spotShadowColor:J

    .line 133
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->renderNode:Landroid/graphics/RenderNode;

    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/ColorKt;->toArgb-8_81llA(J)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/RenderNode;->setSpotShadowColor(I)Z

    return-void
.end method

.method public setTranslationX(F)V
    .locals 0

    .line 108
    iput p1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->translationX:F

    .line 109
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->renderNode:Landroid/graphics/RenderNode;

    invoke-virtual {p0, p1}, Landroid/graphics/RenderNode;->setTranslationX(F)Z

    return-void
.end method

.method public setTranslationY(F)V
    .locals 0

    .line 114
    iput p1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->translationY:F

    .line 115
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->renderNode:Landroid/graphics/RenderNode;

    invoke-virtual {p0, p1}, Landroid/graphics/RenderNode;->setTranslationY(F)Z

    return-void
.end method
