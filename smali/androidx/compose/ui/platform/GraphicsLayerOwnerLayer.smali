.class public final Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;
.super Ljava/lang/Object;
.source "GraphicsLayerOwnerLayer.android.kt"

# interfaces
.implements Landroidx/compose/ui/node/OwnedLayer;


# instance fields
.field private final context:Landroidx/compose/ui/graphics/GraphicsContext;

.field private density:Landroidx/compose/ui/unit/Density;

.field private drawBlock:Lkotlin/jvm/functions/Function2;

.field private drawnWithEnabledZ:Z

.field private graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

.field private invalidateParentLayer:Lkotlin/jvm/functions/Function0;

.field private inverseMatrixCache:[F

.field private isDestroyed:Z

.field private isDirty:Z

.field private isIdentity:Z

.field private isInverseMatrixDirty:Z

.field private isMatrixDirty:Z

.field private layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

.field private final matrixCache:[F

.field private mutatedFields:I

.field private outline:Landroidx/compose/ui/graphics/Outline;

.field private final ownerView:Landroidx/compose/ui/platform/AndroidComposeView;

.field private final recordLambda:Lkotlin/jvm/functions/Function1;

.field private final scope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

.field private size:J

.field private softwareLayerPaint:Landroidx/compose/ui/graphics/Paint;

.field private tmpPath:Landroidx/compose/ui/graphics/Path;

.field private transformOrigin:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/graphics/layer/GraphicsLayer;Landroidx/compose/ui/graphics/GraphicsContext;Landroidx/compose/ui/platform/AndroidComposeView;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;)V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 56
    iput-object p2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->context:Landroidx/compose/ui/graphics/GraphicsContext;

    .line 57
    iput-object p3, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->ownerView:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 61
    iput-object p4, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->drawBlock:Lkotlin/jvm/functions/Function2;

    .line 62
    iput-object p5, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->invalidateParentLayer:Lkotlin/jvm/functions/Function0;

    const p1, 0x7fffffff

    int-to-long p1, p1

    const/16 p3, 0x20

    shl-long p3, p1, p3

    const-wide v0, 0xffffffffL

    and-long/2addr p1, v0

    or-long/2addr p1, p3

    .line 30
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntSize;->constructor-impl(J)J

    move-result-wide p1

    .line 64
    iput-wide p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->size:J

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 66
    invoke-static {p1, p2, p1}, Landroidx/compose/ui/graphics/Matrix;->constructor-impl$default([FILkotlin/jvm/internal/DefaultConstructorMarker;)[F

    move-result-object p3

    iput-object p3, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->matrixCache:[F

    const/4 p3, 0x0

    const/4 p4, 0x2

    const/high16 p5, 0x3f800000    # 1.0f

    .line 77
    invoke-static {p5, p3, p4, p1}, Landroidx/compose/ui/unit/DensityKt;->Density$default(FFILjava/lang/Object;)Landroidx/compose/ui/unit/Density;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->density:Landroidx/compose/ui/unit/Density;

    .line 78
    sget-object p1, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    iput-object p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 79
    new-instance p1, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-direct {p1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->scope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 81
    sget-object p1, Landroidx/compose/ui/graphics/TransformOrigin;->Companion:Landroidx/compose/ui/graphics/TransformOrigin$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/TransformOrigin$Companion;->getCenter-SzJe1aQ()J

    move-result-wide p3

    iput-wide p3, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->transformOrigin:J

    .line 91
    iput-boolean p2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->isIdentity:Z

    .line 302
    new-instance p1, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer$recordLambda$1;

    invoke-direct {p1, p0}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer$recordLambda$1;-><init>(Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;)V

    iput-object p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->recordLambda:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static final synthetic access$getDrawBlock$p(Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;)Lkotlin/jvm/functions/Function2;
    .locals 0

    .line 53
    iget-object p0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->drawBlock:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method private final clipManually(Landroidx/compose/ui/graphics/Canvas;)V
    .locals 5

    .line 463
    iget-object v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->getClip()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 464
    iget-object v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->getOutline()Landroidx/compose/ui/graphics/Outline;

    move-result-object v0

    .line 465
    instance-of v1, v0, Landroidx/compose/ui/graphics/Outline$Rectangle;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    .line 466
    check-cast v0, Landroidx/compose/ui/graphics/Outline$Rectangle;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Outline$Rectangle;->getRect()Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    invoke-static {p1, p0, v2, v3, v4}, Landroidx/compose/ui/graphics/Canvas;->clipRect-mtrdD-E$default(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/geometry/Rect;IILjava/lang/Object;)V

    goto :goto_0

    .line 468
    :cond_0
    instance-of v1, v0, Landroidx/compose/ui/graphics/Outline$Rounded;

    if-eqz v1, :cond_2

    .line 469
    iget-object v1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->tmpPath:Landroidx/compose/ui/graphics/Path;

    if-nez v1, :cond_1

    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/Path;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->tmpPath:Landroidx/compose/ui/graphics/Path;

    .line 470
    :cond_1
    invoke-interface {v1}, Landroidx/compose/ui/graphics/Path;->reset()V

    .line 471
    check-cast v0, Landroidx/compose/ui/graphics/Outline$Rounded;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Outline$Rounded;->getRoundRect()Landroidx/compose/ui/geometry/RoundRect;

    move-result-object p0

    invoke-static {v1, p0, v4, v3, v4}, Landroidx/compose/ui/graphics/Path;->addRoundRect$default(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/geometry/RoundRect;Landroidx/compose/ui/graphics/Path$Direction;ILjava/lang/Object;)V

    .line 472
    invoke-static {p1, v1, v2, v3, v4}, Landroidx/compose/ui/graphics/Canvas;->clipPath-mtrdD-E$default(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/Path;IILjava/lang/Object;)V

    goto :goto_0

    .line 474
    :cond_2
    instance-of p0, v0, Landroidx/compose/ui/graphics/Outline$Generic;

    if-eqz p0, :cond_3

    .line 475
    check-cast v0, Landroidx/compose/ui/graphics/Outline$Generic;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Outline$Generic;->getPath()Landroidx/compose/ui/graphics/Path;

    move-result-object p0

    invoke-static {p1, p0, v2, v3, v4}, Landroidx/compose/ui/graphics/Canvas;->clipPath-mtrdD-E$default(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/Path;IILjava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private final getInverseMatrix-3i98HWw()[F
    .locals 4

    .line 410
    iget-object v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->inverseMatrixCache:[F

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v1, v0, v1}, Landroidx/compose/ui/graphics/Matrix;->constructor-impl$default([FILkotlin/jvm/internal/DefaultConstructorMarker;)[F

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->inverseMatrixCache:[F

    .line 411
    :cond_0
    iget-boolean v2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->isInverseMatrixDirty:Z

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 47
    aget p0, v0, v3

    .line 412
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v1

    :cond_1
    return-object v0

    .line 417
    :cond_2
    iput-boolean v3, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->isInverseMatrixDirty:Z

    .line 418
    invoke-direct {p0}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->getMatrix-sQKQjiQ()[F

    move-result-object v2

    .line 419
    iget-boolean p0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->isIdentity:Z

    if-eqz p0, :cond_3

    move-object v1, v2

    goto :goto_0

    .line 421
    :cond_3
    invoke-static {v2, v0}, Landroidx/compose/ui/platform/InvertMatrixKt;->invertTo-JiSxe2E([F[F)Z

    move-result p0

    if-eqz p0, :cond_4

    move-object v1, v0

    goto :goto_0

    :cond_4
    const/high16 p0, 0x7fc00000    # Float.NaN

    .line 50
    aput p0, v0, v3

    :goto_0
    return-object v1
.end method

.method private final getMatrix-sQKQjiQ()[F
    .locals 0

    .line 402
    invoke-direct {p0}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->updateMatrix()V

    .line 403
    iget-object p0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->matrixCache:[F

    return-object p0
.end method

.method private final setDirty(Z)V
    .locals 1

    .line 71
    iget-boolean v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->isDirty:Z

    if-eq p1, v0, :cond_0

    .line 72
    iput-boolean p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->isDirty:Z

    .line 73
    iget-object v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->ownerView:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v0, p0, p1}, Landroidx/compose/ui/platform/AndroidComposeView;->notifyLayerIsDirty$ui_release(Landroidx/compose/ui/node/OwnedLayer;Z)V

    :cond_0
    return-void
.end method

.method private final triggerRepaint()V
    .locals 1

    .line 194
    sget-object v0, Landroidx/compose/ui/platform/WrapperRenderNodeLayerHelperMethods;->INSTANCE:Landroidx/compose/ui/platform/WrapperRenderNodeLayerHelperMethods;

    iget-object p0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->ownerView:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v0, p0}, Landroidx/compose/ui/platform/WrapperRenderNodeLayerHelperMethods;->onDescendantInvalidated(Landroidx/compose/ui/platform/AndroidComposeView;)V

    return-void
.end method

.method private final updateMatrix()V
    .locals 17

    move-object/from16 v0, p0

    .line 430
    iget-boolean v1, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->isMatrixDirty:Z

    if-eqz v1, :cond_1

    .line 431
    iget-object v1, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 433
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->getPivotOffset-F1C5BW0()J

    move-result-wide v2

    const-wide v4, 0x7fffffff7fffffffL

    and-long/2addr v2, v4

    const-wide v4, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 434
    iget-wide v2, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->size:J

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntSizeKt;->toSize-ozmzZPI(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/SizeKt;->getCenter-uvyYCjk(J)J

    move-result-wide v2

    goto :goto_0

    .line 436
    :cond_0
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->getPivotOffset-F1C5BW0()J

    move-result-wide v2

    :goto_0
    const/16 v4, 0x20

    shr-long v4, v2, v4

    long-to-int v4, v4

    .line 22
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    long-to-int v2, v2

    .line 22
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    .line 439
    iget-object v5, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->matrixCache:[F

    .line 442
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->getTranslationX()F

    move-result v8

    .line 443
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->getTranslationY()F

    move-result v9

    .line 445
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->getRotationX()F

    move-result v11

    .line 446
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->getRotationY()F

    move-result v12

    .line 447
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->getRotationZ()F

    move-result v13

    .line 448
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->getScaleX()F

    move-result v14

    .line 449
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->getScaleY()F

    move-result v15

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    .line 439
    invoke-static/range {v5 .. v16}, Landroidx/compose/ui/graphics/Matrix;->resetToPivotedTransform-impl([FFFFFFFFFFFF)V

    const/4 v1, 0x0

    .line 453
    iput-boolean v1, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->isMatrixDirty:Z

    .line 454
    iget-object v1, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->matrixCache:[F

    invoke-static {v1}, Landroidx/compose/ui/graphics/MatrixKt;->isIdentity-58bKbWc([F)Z

    move-result v1

    iput-boolean v1, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->isIdentity:Z

    :cond_1
    return-void
.end method

.method private final updateOutline()V
    .locals 1

    .line 201
    iget-object v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->outline:Landroidx/compose/ui/graphics/Outline;

    if-nez v0, :cond_0

    return-void

    .line 202
    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    invoke-static {p0, v0}, Landroidx/compose/ui/graphics/layer/GraphicsLayerKt;->setOutline(Landroidx/compose/ui/graphics/layer/GraphicsLayer;Landroidx/compose/ui/graphics/Outline;)V

    .line 203
    instance-of p0, v0, Landroidx/compose/ui/graphics/Outline$Generic;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    const/4 v0, 0x0

    .line 316
    iput-object v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->drawBlock:Lkotlin/jvm/functions/Function2;

    .line 317
    iput-object v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->invalidateParentLayer:Lkotlin/jvm/functions/Function0;

    const/4 v0, 0x1

    .line 318
    iput-boolean v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->isDestroyed:Z

    const/4 v0, 0x0

    .line 319
    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->setDirty(Z)V

    .line 320
    iget-object v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->context:Landroidx/compose/ui/graphics/GraphicsContext;

    if-eqz v0, :cond_0

    .line 321
    iget-object v1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    invoke-interface {v0, v1}, Landroidx/compose/ui/graphics/GraphicsContext;->releaseGraphicsLayer(Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    .line 322
    iget-object v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->ownerView:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v0, p0}, Landroidx/compose/ui/platform/AndroidComposeView;->recycle$ui_release(Landroidx/compose/ui/node/OwnedLayer;)Z

    :cond_0
    return-void
.end method

.method public drawLayer(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 7

    .line 239
    invoke-static {p1}, Landroidx/compose/ui/graphics/AndroidCanvas_androidKt;->getNativeCanvas(Landroidx/compose/ui/graphics/Canvas;)Landroid/graphics/Canvas;

    move-result-object v0

    .line 240
    invoke-virtual {v0}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 241
    invoke-virtual {p0}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->updateDisplayList()V

    .line 242
    iget-object v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->getShadowElevation()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->drawnWithEnabledZ:Z

    .line 243
    iget-object v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->scope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object v0

    .line 244
    invoke-interface {v0, p1}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->setCanvas(Landroidx/compose/ui/graphics/Canvas;)V

    .line 245
    invoke-interface {v0, p2}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->setGraphicsLayer(Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    .line 247
    iget-object p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->scope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    iget-object p0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    invoke-static {p1, p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayerKt;->drawLayer(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    goto/16 :goto_2

    .line 261
    :cond_1
    iget-object p2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    invoke-virtual {p2}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->getTopLeft-nOcc-ac()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result p2

    int-to-float p2, p2

    .line 262
    iget-object v1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->getTopLeft-nOcc-ac()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v1

    int-to-float v6, v1

    .line 263
    iget-wide v1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->size:J

    const/16 v3, 0x20

    shr-long v3, v1, v3

    long-to-int v3, v3

    int-to-float v3, v3

    add-float/2addr v3, p2

    const-wide v4, 0xffffffffL

    and-long/2addr v1, v4

    long-to-int v1, v1

    int-to-float v1, v1

    add-float v4, v6, v1

    .line 267
    iget-object v1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->getAlpha()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    .line 269
    iget-object v1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->softwareLayerPaint:Landroidx/compose/ui/graphics/Paint;

    if-nez v1, :cond_2

    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPaint_androidKt;->Paint()Landroidx/compose/ui/graphics/Paint;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->softwareLayerPaint:Landroidx/compose/ui/graphics/Paint;

    .line 270
    :cond_2
    iget-object v2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->getAlpha()F

    move-result v2

    invoke-interface {v1, v2}, Landroidx/compose/ui/graphics/Paint;->setAlpha(F)V

    .line 272
    invoke-interface {v1}, Landroidx/compose/ui/graphics/Paint;->asFrameworkPaint()Landroid/graphics/Paint;

    move-result-object v5

    move v1, p2

    move v2, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    goto :goto_1

    .line 274
    :cond_3
    invoke-interface {p1}, Landroidx/compose/ui/graphics/Canvas;->save()V

    .line 278
    :goto_1
    invoke-interface {p1, p2, v6}, Landroidx/compose/ui/graphics/Canvas;->translate(FF)V

    .line 279
    invoke-direct {p0}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->getMatrix-sQKQjiQ()[F

    move-result-object p2

    invoke-interface {p1, p2}, Landroidx/compose/ui/graphics/Canvas;->concat-58bKbWc([F)V

    .line 280
    iget-object p2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    invoke-virtual {p2}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->getClip()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 281
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->clipManually(Landroidx/compose/ui/graphics/Canvas;)V

    .line 283
    :cond_4
    iget-object p0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->drawBlock:Lkotlin/jvm/functions/Function2;

    if-eqz p0, :cond_5

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    :cond_5
    invoke-interface {p1}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    :goto_2
    return-void
.end method

.method public getUnderlyingMatrix-sQKQjiQ()[F
    .locals 0

    .line 407
    invoke-direct {p0}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->getMatrix-sQKQjiQ()[F

    move-result-object p0

    return-object p0
.end method

.method public invalidate()V
    .locals 1

    .line 309
    iget-boolean v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->isDirty:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->isDestroyed:Z

    if-nez v0, :cond_0

    .line 310
    iget-object v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->ownerView:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    const/4 v0, 0x1

    .line 311
    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->setDirty(Z)V

    :cond_0
    return-void
.end method

.method public inverseTransform-58bKbWc([F)V
    .locals 0

    .line 389
    invoke-direct {p0}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->getInverseMatrix-3i98HWw()[F

    move-result-object p0

    if-eqz p0, :cond_0

    .line 391
    invoke-static {p1, p0}, Landroidx/compose/ui/graphics/Matrix;->timesAssign-58bKbWc([F[F)V

    :cond_0
    return-void
.end method

.method public isInLayer-k-4lQ0M(J)Z
    .locals 8

    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v0, v0

    .line 22
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    const-wide v0, 0xffffffffL

    and-long/2addr p1, v0

    long-to-int p1, p1

    .line 22
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    .line 217
    iget-object p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->getClip()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 218
    iget-object p0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->getOutline()Landroidx/compose/ui/graphics/Outline;

    move-result-object v1

    const/16 v6, 0x18

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/platform/ShapeContainingUtilKt;->isInOutline$default(Landroidx/compose/ui/graphics/Outline;FFLandroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Path;ILjava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public mapBounds(Landroidx/compose/ui/geometry/MutableRect;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 341
    invoke-direct {p0}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->getInverseMatrix-3i98HWw()[F

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->getMatrix-sQKQjiQ()[F

    move-result-object p2

    .line 342
    :goto_0
    iget-boolean p0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->isIdentity:Z

    if-nez p0, :cond_2

    if-nez p2, :cond_1

    const/4 p0, 0x0

    .line 344
    invoke-virtual {p1, p0, p0, p0, p0}, Landroidx/compose/ui/geometry/MutableRect;->set(FFFF)V

    goto :goto_1

    .line 346
    :cond_1
    invoke-static {p2, p1}, Landroidx/compose/ui/graphics/Matrix;->map-impl([FLandroidx/compose/ui/geometry/MutableRect;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public mapOffset-8S9VItk(JZ)J
    .locals 0

    if-eqz p3, :cond_0

    .line 329
    invoke-direct {p0}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->getInverseMatrix-3i98HWw()[F

    move-result-object p3

    if-nez p3, :cond_1

    sget-object p0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Offset$Companion;->getInfinite-F1C5BW0()J

    move-result-wide p0

    return-wide p0

    .line 331
    :cond_0
    invoke-direct {p0}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->getMatrix-sQKQjiQ()[F

    move-result-object p3

    .line 333
    :cond_1
    iget-boolean p0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->isIdentity:Z

    if-eqz p0, :cond_2

    goto :goto_0

    .line 336
    :cond_2
    invoke-static {p3, p1, p2}, Landroidx/compose/ui/graphics/Matrix;->map-MK-Hz9U([FJ)J

    move-result-wide p1

    :goto_0
    return-wide p1
.end method

.method public move--gyyYBs(J)V
    .locals 1

    .line 225
    iget-object v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->setTopLeft--gyyYBs(J)V

    .line 226
    invoke-direct {p0}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->triggerRepaint()V

    return-void
.end method

.method public resize-ozmzZPI(J)V
    .locals 2

    .line 230
    iget-wide v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->size:J

    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    iput-wide p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->size:J

    .line 232
    invoke-virtual {p0}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->invalidate()V

    :cond_0
    return-void
.end method

.method public reuseLayer(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;)V
    .locals 5

    .line 356
    iget-object v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->context:Landroidx/compose/ui/graphics/GraphicsContext;

    if-eqz v0, :cond_2

    .line 359
    iget-object v1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->isReleased()Z

    move-result v1

    if-nez v1, :cond_0

    .line 360
    const-string v1, "layer should have been released before reuse"

    .line 90
    invoke-static {v1}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 364
    :cond_0
    invoke-interface {v0}, Landroidx/compose/ui/graphics/GraphicsContext;->createGraphicsLayer()Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    const/4 v0, 0x0

    .line 365
    iput-boolean v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->isDestroyed:Z

    .line 368
    iput-object p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->drawBlock:Lkotlin/jvm/functions/Function2;

    .line 369
    iput-object p2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->invalidateParentLayer:Lkotlin/jvm/functions/Function0;

    .line 372
    iput-boolean v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->isMatrixDirty:Z

    .line 373
    iput-boolean v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->isInverseMatrixDirty:Z

    const/4 p1, 0x1

    .line 374
    iput-boolean p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->isIdentity:Z

    .line 375
    iget-object p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->matrixCache:[F

    invoke-static {p1}, Landroidx/compose/ui/graphics/Matrix;->reset-impl([F)V

    .line 376
    iget-object p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->inverseMatrixCache:[F

    if-eqz p1, :cond_1

    invoke-static {p1}, Landroidx/compose/ui/graphics/Matrix;->reset-impl([F)V

    .line 377
    :cond_1
    sget-object p1, Landroidx/compose/ui/graphics/TransformOrigin;->Companion:Landroidx/compose/ui/graphics/TransformOrigin$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/TransformOrigin$Companion;->getCenter-SzJe1aQ()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->transformOrigin:J

    .line 378
    iput-boolean v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->drawnWithEnabledZ:Z

    const p1, 0x7fffffff

    int-to-long p1, p1

    const/16 v1, 0x20

    shl-long v1, p1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr p1, v3

    or-long/2addr p1, v1

    .line 30
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntSize;->constructor-impl(J)J

    move-result-wide p1

    .line 379
    iput-wide p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->size:J

    const/4 p1, 0x0

    .line 380
    iput-object p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->outline:Landroidx/compose/ui/graphics/Outline;

    .line 381
    iput v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->mutatedFields:I

    return-void

    .line 357
    :cond_2
    const-string p0, "currently reuse is only supported when we manage the layer lifecycle"

    .line 65
    invoke-static {p0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateExceptionForNullCheck(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public transform-58bKbWc([F)V
    .locals 0

    .line 385
    invoke-direct {p0}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->getMatrix-sQKQjiQ()[F

    move-result-object p0

    invoke-static {p1, p0}, Landroidx/compose/ui/graphics/Matrix;->timesAssign-58bKbWc([F[F)V

    return-void
.end method

.method public updateDisplayList()V
    .locals 9

    .line 289
    iget-boolean v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->isDirty:Z

    if-eqz v0, :cond_1

    .line 290
    iget-wide v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->transformOrigin:J

    sget-object v2, Landroidx/compose/ui/graphics/TransformOrigin;->Companion:Landroidx/compose/ui/graphics/TransformOrigin$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/TransformOrigin$Companion;->getCenter-SzJe1aQ()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/TransformOrigin;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->getSize-YbymL2g()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->size:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 291
    iget-object v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 293
    iget-wide v1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->transformOrigin:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/TransformOrigin;->getPivotFractionX-impl(J)F

    move-result v1

    iget-wide v2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->size:J

    const/16 v4, 0x20

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    .line 294
    iget-wide v2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->transformOrigin:J

    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/TransformOrigin;->getPivotFractionY-impl(J)F

    move-result v2

    iget-wide v5, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->size:J

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    long-to-int v3, v5

    int-to-float v3, v3

    mul-float/2addr v2, v3

    .line 53
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v5, v1

    .line 54
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v1, v1

    shl-long v3, v5, v4

    and-long/2addr v1, v7

    or-long/2addr v1, v3

    .line 30
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v1

    .line 291
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->setPivotOffset-k-4lQ0M(J)V

    .line 297
    :cond_0
    iget-object v3, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iget-object v4, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->density:Landroidx/compose/ui/unit/Density;

    iget-object v5, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    iget-wide v6, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->size:J

    iget-object v8, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->recordLambda:Lkotlin/jvm/functions/Function1;

    invoke-virtual/range {v3 .. v8}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->record-mL-hObY(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;JLkotlin/jvm/functions/Function1;)V

    const/4 v0, 0x0

    .line 298
    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->setDirty(Z)V

    :cond_1
    return-void
.end method

.method public updateLayerProperties(Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;)V
    .locals 10

    .line 94
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getMutatedFields$ui_release()I

    move-result v0

    iget v1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->mutatedFields:I

    or-int/2addr v0, v1

    .line 95
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getLayoutDirection$ui_release()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 96
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getGraphicsDensity$ui_release()Landroidx/compose/ui/unit/Density;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->density:Landroidx/compose/ui/unit/Density;

    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_0

    .line 98
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getTransformOrigin-SzJe1aQ()J

    move-result-wide v2

    iput-wide v2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->transformOrigin:J

    :cond_0
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_1

    .line 101
    iget-object v2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getScaleX()F

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->setScaleX(F)V

    :cond_1
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_2

    .line 104
    iget-object v2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getScaleY()F

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->setScaleY(F)V

    :cond_2
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_3

    .line 107
    iget-object v2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getAlpha()F

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->setAlpha(F)V

    :cond_3
    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_4

    .line 110
    iget-object v2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getTranslationX()F

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->setTranslationX(F)V

    :cond_4
    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_5

    .line 113
    iget-object v2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getTranslationY()F

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->setTranslationY(F)V

    :cond_5
    and-int/lit8 v2, v0, 0x20

    if-eqz v2, :cond_6

    .line 116
    iget-object v2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getShadowElevation()F

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->setShadowElevation(F)V

    .line 121
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getShadowElevation()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_6

    iget-boolean v2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->drawnWithEnabledZ:Z

    if-nez v2, :cond_6

    .line 123
    iget-object v2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->invalidateParentLayer:Lkotlin/jvm/functions/Function0;

    if-eqz v2, :cond_6

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_6
    and-int/lit8 v2, v0, 0x40

    if-eqz v2, :cond_7

    .line 127
    iget-object v2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getAmbientShadowColor-0d7_KjU()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->setAmbientShadowColor-8_81llA(J)V

    :cond_7
    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_8

    .line 130
    iget-object v2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getSpotShadowColor-0d7_KjU()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->setSpotShadowColor-8_81llA(J)V

    :cond_8
    and-int/lit16 v2, v0, 0x400

    if-eqz v2, :cond_9

    .line 133
    iget-object v2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getRotationZ()F

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->setRotationZ(F)V

    :cond_9
    and-int/lit16 v2, v0, 0x100

    if-eqz v2, :cond_a

    .line 136
    iget-object v2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getRotationX()F

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->setRotationX(F)V

    :cond_a
    and-int/lit16 v2, v0, 0x200

    if-eqz v2, :cond_b

    .line 139
    iget-object v2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getRotationY()F

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->setRotationY(F)V

    :cond_b
    and-int/lit16 v2, v0, 0x800

    if-eqz v2, :cond_c

    .line 142
    iget-object v2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getCameraDistance()F

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->setCameraDistance(F)V

    :cond_c
    if-eqz v1, :cond_e

    .line 145
    iget-wide v1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->transformOrigin:J

    sget-object v3, Landroidx/compose/ui/graphics/TransformOrigin;->Companion:Landroidx/compose/ui/graphics/TransformOrigin$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/TransformOrigin$Companion;->getCenter-SzJe1aQ()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/graphics/TransformOrigin;->equals-impl0(JJ)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 146
    iget-object v1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    sget-object v2, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->setPivotOffset-k-4lQ0M(J)V

    goto :goto_0

    .line 148
    :cond_d
    iget-object v1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 150
    iget-wide v2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->transformOrigin:J

    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/TransformOrigin;->getPivotFractionX-impl(J)F

    move-result v2

    iget-wide v3, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->size:J

    const/16 v5, 0x20

    shr-long/2addr v3, v5

    long-to-int v3, v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    .line 151
    iget-wide v3, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->transformOrigin:J

    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/TransformOrigin;->getPivotFractionY-impl(J)F

    move-result v3

    iget-wide v6, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->size:J

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    long-to-int v4, v6

    int-to-float v4, v4

    mul-float/2addr v3, v4

    .line 53
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v6, v2

    .line 54
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v2, v2

    shl-long v4, v6, v5

    and-long/2addr v2, v8

    or-long/2addr v2, v4

    .line 30
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v2

    .line 148
    invoke-virtual {v1, v2, v3}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->setPivotOffset-k-4lQ0M(J)V

    :cond_e
    :goto_0
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_f

    .line 156
    iget-object v1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getClip()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->setClip(Z)V

    :cond_f
    const/high16 v1, 0x20000

    and-int/2addr v1, v0

    if-eqz v1, :cond_10

    .line 159
    iget-object v1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getRenderEffect()Landroidx/compose/ui/graphics/RenderEffect;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->setRenderEffect(Landroidx/compose/ui/graphics/RenderEffect;)V

    :cond_10
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_14

    .line 162
    iget-object v1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 163
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getCompositingStrategy--NrFUSI()I

    move-result v2

    .line 164
    sget-object v3, Landroidx/compose/ui/graphics/CompositingStrategy;->Companion:Landroidx/compose/ui/graphics/CompositingStrategy$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/CompositingStrategy$Companion;->getAuto--NrFUSI()I

    move-result v4

    invoke-static {v2, v4}, Landroidx/compose/ui/graphics/CompositingStrategy;->equals-impl0(II)Z

    move-result v4

    if-eqz v4, :cond_11

    sget-object v2, Landroidx/compose/ui/graphics/layer/CompositingStrategy;->Companion:Landroidx/compose/ui/graphics/layer/CompositingStrategy$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/layer/CompositingStrategy$Companion;->getAuto-ke2Ky5w()I

    move-result v2

    goto :goto_1

    .line 165
    :cond_11
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/CompositingStrategy$Companion;->getOffscreen--NrFUSI()I

    move-result v4

    invoke-static {v2, v4}, Landroidx/compose/ui/graphics/CompositingStrategy;->equals-impl0(II)Z

    move-result v4

    if-eqz v4, :cond_12

    sget-object v2, Landroidx/compose/ui/graphics/layer/CompositingStrategy;->Companion:Landroidx/compose/ui/graphics/layer/CompositingStrategy$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/layer/CompositingStrategy$Companion;->getOffscreen-ke2Ky5w()I

    move-result v2

    goto :goto_1

    .line 166
    :cond_12
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/CompositingStrategy$Companion;->getModulateAlpha--NrFUSI()I

    move-result v3

    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/CompositingStrategy;->equals-impl0(II)Z

    move-result v2

    if-eqz v2, :cond_13

    sget-object v2, Landroidx/compose/ui/graphics/layer/CompositingStrategy;->Companion:Landroidx/compose/ui/graphics/layer/CompositingStrategy$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/layer/CompositingStrategy$Companion;->getModulateAlpha-ke2Ky5w()I

    move-result v2

    .line 162
    :goto_1
    invoke-virtual {v1, v2}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->setCompositingStrategy-Wpw9cng(I)V

    goto :goto_2

    .line 167
    :cond_13
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Not supported composition strategy"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_14
    :goto_2
    and-int/lit16 v1, v0, 0x1f1b

    const/4 v2, 0x1

    if-eqz v1, :cond_15

    .line 171
    iput-boolean v2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->isMatrixDirty:Z

    .line 172
    iput-boolean v2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->isInverseMatrixDirty:Z

    .line 177
    :cond_15
    iget-object v1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->outline:Landroidx/compose/ui/graphics/Outline;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getOutline$ui_release()Landroidx/compose/ui/graphics/Outline;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 179
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getOutline$ui_release()Landroidx/compose/ui/graphics/Outline;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->outline:Landroidx/compose/ui/graphics/Outline;

    .line 180
    invoke-direct {p0}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->updateOutline()V

    goto :goto_3

    :cond_16
    const/4 v2, 0x0

    .line 183
    :goto_3
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getMutatedFields$ui_release()I

    move-result p1

    iput p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->mutatedFields:I

    if-nez v0, :cond_17

    if-eqz v2, :cond_18

    .line 185
    :cond_17
    invoke-direct {p0}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->triggerRepaint()V

    :cond_18
    return-void
.end method
