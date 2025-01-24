.class public final Landroidx/compose/ui/platform/RenderNodeLayer;
.super Ljava/lang/Object;
.source "RenderNodeLayer.android.kt"

# interfaces
.implements Landroidx/compose/ui/node/OwnedLayer;


# static fields
.field public static final $stable:I

.field public static final Companion:Landroidx/compose/ui/platform/RenderNodeLayer$Companion;

.field private static final getMatrix:Lkotlin/jvm/functions/Function2;


# instance fields
.field private final canvasHolder:Landroidx/compose/ui/graphics/CanvasHolder;

.field private drawBlock:Lkotlin/jvm/functions/Function2;

.field private drawnWithZ:Z

.field private invalidateParentLayer:Lkotlin/jvm/functions/Function0;

.field private isDestroyed:Z

.field private isDirty:Z

.field private final matrixCache:Landroidx/compose/ui/platform/LayerMatrixCache;

.field private mutatedFields:I

.field private final outlineResolver:Landroidx/compose/ui/platform/OutlineResolver;

.field private final ownerView:Landroidx/compose/ui/platform/AndroidComposeView;

.field private final renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

.field private softwareLayerPaint:Landroidx/compose/ui/graphics/Paint;

.field private transformOrigin:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/platform/RenderNodeLayer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/platform/RenderNodeLayer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/platform/RenderNodeLayer;->Companion:Landroidx/compose/ui/platform/RenderNodeLayer$Companion;

    const/16 v0, 0x8

    sput v0, Landroidx/compose/ui/platform/RenderNodeLayer;->$stable:I

    .line 385
    sget-object v0, Landroidx/compose/ui/platform/RenderNodeLayer$Companion$getMatrix$1;->INSTANCE:Landroidx/compose/ui/platform/RenderNodeLayer$Companion$getMatrix$1;

    sput-object v0, Landroidx/compose/ui/platform/RenderNodeLayer;->getMatrix:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/platform/AndroidComposeView;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->ownerView:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 47
    iput-object p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->drawBlock:Lkotlin/jvm/functions/Function2;

    .line 48
    iput-object p3, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->invalidateParentLayer:Lkotlin/jvm/functions/Function0;

    .line 59
    new-instance p2, Landroidx/compose/ui/platform/OutlineResolver;

    invoke-direct {p2}, Landroidx/compose/ui/platform/OutlineResolver;-><init>()V

    iput-object p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->outlineResolver:Landroidx/compose/ui/platform/OutlineResolver;

    .line 69
    new-instance p2, Landroidx/compose/ui/platform/LayerMatrixCache;

    sget-object p3, Landroidx/compose/ui/platform/RenderNodeLayer;->getMatrix:Lkotlin/jvm/functions/Function2;

    invoke-direct {p2, p3}, Landroidx/compose/ui/platform/LayerMatrixCache;-><init>(Lkotlin/jvm/functions/Function2;)V

    iput-object p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->matrixCache:Landroidx/compose/ui/platform/LayerMatrixCache;

    .line 71
    new-instance p2, Landroidx/compose/ui/graphics/CanvasHolder;

    invoke-direct {p2}, Landroidx/compose/ui/graphics/CanvasHolder;-><init>()V

    iput-object p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->canvasHolder:Landroidx/compose/ui/graphics/CanvasHolder;

    .line 78
    sget-object p2, Landroidx/compose/ui/graphics/TransformOrigin;->Companion:Landroidx/compose/ui/graphics/TransformOrigin$Companion;

    invoke-virtual {p2}, Landroidx/compose/ui/graphics/TransformOrigin$Companion;->getCenter-SzJe1aQ()J

    move-result-wide p2

    iput-wide p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->transformOrigin:J

    .line 82
    new-instance p2, Landroidx/compose/ui/platform/RenderNodeApi29;

    invoke-direct {p2, p1}, Landroidx/compose/ui/platform/RenderNodeApi29;-><init>(Landroidx/compose/ui/platform/AndroidComposeView;)V

    const/4 p1, 0x1

    .line 87
    invoke-interface {p2, p1}, Landroidx/compose/ui/platform/DeviceRenderNode;->setHasOverlappingRendering(Z)Z

    const/4 p1, 0x0

    .line 89
    invoke-interface {p2, p1}, Landroidx/compose/ui/platform/DeviceRenderNode;->setClipToBounds(Z)V

    .line 86
    iput-object p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    return-void
.end method

.method private final clipRenderNode(Landroidx/compose/ui/graphics/Canvas;)V
    .locals 1

    .line 309
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    invoke-interface {v0}, Landroidx/compose/ui/platform/DeviceRenderNode;->getClipToOutline()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    invoke-interface {v0}, Landroidx/compose/ui/platform/DeviceRenderNode;->getClipToBounds()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->outlineResolver:Landroidx/compose/ui/platform/OutlineResolver;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/platform/OutlineResolver;->clipToOutline(Landroidx/compose/ui/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method private final setDirty(Z)V
    .locals 1

    .line 53
    iget-boolean v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->isDirty:Z

    if-eq p1, v0, :cond_0

    .line 54
    iput-boolean p1, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->isDirty:Z

    .line 55
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->ownerView:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v0, p0, p1}, Landroidx/compose/ui/platform/AndroidComposeView;->notifyLayerIsDirty$ui_release(Landroidx/compose/ui/node/OwnedLayer;Z)V

    :cond_0
    return-void
.end method

.method private final triggerRepaint()V
    .locals 1

    .line 259
    sget-object v0, Landroidx/compose/ui/platform/WrapperRenderNodeLayerHelperMethods;->INSTANCE:Landroidx/compose/ui/platform/WrapperRenderNodeLayerHelperMethods;

    iget-object p0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->ownerView:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v0, p0}, Landroidx/compose/ui/platform/WrapperRenderNodeLayerHelperMethods;->onDescendantInvalidated(Landroidx/compose/ui/platform/AndroidComposeView;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 330
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    invoke-interface {v0}, Landroidx/compose/ui/platform/DeviceRenderNode;->getHasDisplayList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    invoke-interface {v0}, Landroidx/compose/ui/platform/DeviceRenderNode;->discardDisplayList()V

    :cond_0
    const/4 v0, 0x0

    .line 333
    iput-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->drawBlock:Lkotlin/jvm/functions/Function2;

    .line 334
    iput-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->invalidateParentLayer:Lkotlin/jvm/functions/Function0;

    const/4 v0, 0x1

    .line 335
    iput-boolean v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->isDestroyed:Z

    const/4 v0, 0x0

    .line 336
    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/RenderNodeLayer;->setDirty(Z)V

    .line 337
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->ownerView:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->requestClearInvalidObservations()V

    .line 338
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->ownerView:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v0, p0}, Landroidx/compose/ui/platform/AndroidComposeView;->recycle$ui_release(Landroidx/compose/ui/node/OwnedLayer;)Z

    return-void
.end method

.method public drawLayer(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 8

    .line 266
    invoke-static {p1}, Landroidx/compose/ui/graphics/AndroidCanvas_androidKt;->getNativeCanvas(Landroidx/compose/ui/graphics/Canvas;)Landroid/graphics/Canvas;

    move-result-object v0

    .line 267
    invoke-virtual {v0}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result p2

    const/4 v6, 0x0

    if-eqz p2, :cond_2

    .line 268
    invoke-virtual {p0}, Landroidx/compose/ui/platform/RenderNodeLayer;->updateDisplayList()V

    .line 269
    iget-object p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    invoke-interface {p2}, Landroidx/compose/ui/platform/DeviceRenderNode;->getElevation()F

    move-result p2

    const/4 v1, 0x0

    cmpl-float p2, p2, v1

    if-lez p2, :cond_0

    const/4 v6, 0x1

    :cond_0
    iput-boolean v6, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->drawnWithZ:Z

    if-eqz v6, :cond_1

    .line 271
    invoke-interface {p1}, Landroidx/compose/ui/graphics/Canvas;->enableZ()V

    .line 273
    :cond_1
    iget-object p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    invoke-interface {p2, v0}, Landroidx/compose/ui/platform/DeviceRenderNode;->drawInto(Landroid/graphics/Canvas;)V

    .line 274
    iget-boolean p0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->drawnWithZ:Z

    if-eqz p0, :cond_6

    .line 275
    invoke-interface {p1}, Landroidx/compose/ui/graphics/Canvas;->disableZ()V

    goto :goto_1

    .line 278
    :cond_2
    iget-object p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    invoke-interface {p2}, Landroidx/compose/ui/platform/DeviceRenderNode;->getLeft()I

    move-result p2

    int-to-float p2, p2

    .line 279
    iget-object v1, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    invoke-interface {v1}, Landroidx/compose/ui/platform/DeviceRenderNode;->getTop()I

    move-result v1

    int-to-float v7, v1

    .line 280
    iget-object v1, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    invoke-interface {v1}, Landroidx/compose/ui/platform/DeviceRenderNode;->getRight()I

    move-result v1

    int-to-float v3, v1

    .line 281
    iget-object v1, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    invoke-interface {v1}, Landroidx/compose/ui/platform/DeviceRenderNode;->getBottom()I

    move-result v1

    int-to-float v4, v1

    .line 284
    iget-object v1, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    invoke-interface {v1}, Landroidx/compose/ui/platform/DeviceRenderNode;->getAlpha()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    .line 286
    iget-object v1, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->softwareLayerPaint:Landroidx/compose/ui/graphics/Paint;

    if-nez v1, :cond_3

    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPaint_androidKt;->Paint()Landroidx/compose/ui/graphics/Paint;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->softwareLayerPaint:Landroidx/compose/ui/graphics/Paint;

    .line 287
    :cond_3
    iget-object v2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    invoke-interface {v2}, Landroidx/compose/ui/platform/DeviceRenderNode;->getAlpha()F

    move-result v2

    invoke-interface {v1, v2}, Landroidx/compose/ui/graphics/Paint;->setAlpha(F)V

    .line 289
    invoke-interface {v1}, Landroidx/compose/ui/graphics/Paint;->asFrameworkPaint()Landroid/graphics/Paint;

    move-result-object v5

    move v1, p2

    move v2, v7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    goto :goto_0

    .line 291
    :cond_4
    invoke-interface {p1}, Landroidx/compose/ui/graphics/Canvas;->save()V

    .line 295
    :goto_0
    invoke-interface {p1, p2, v7}, Landroidx/compose/ui/graphics/Canvas;->translate(FF)V

    .line 296
    iget-object p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->matrixCache:Landroidx/compose/ui/platform/LayerMatrixCache;

    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    invoke-virtual {p2, v0}, Landroidx/compose/ui/platform/LayerMatrixCache;->calculateMatrix-GrdbGEg(Ljava/lang/Object;)[F

    move-result-object p2

    invoke-interface {p1, p2}, Landroidx/compose/ui/graphics/Canvas;->concat-58bKbWc([F)V

    .line 297
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/RenderNodeLayer;->clipRenderNode(Landroidx/compose/ui/graphics/Canvas;)V

    .line 298
    iget-object p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->drawBlock:Lkotlin/jvm/functions/Function2;

    if-eqz p2, :cond_5

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    :cond_5
    invoke-interface {p1}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    .line 300
    invoke-direct {p0, v6}, Landroidx/compose/ui/platform/RenderNodeLayer;->setDirty(Z)V

    :cond_6
    :goto_1
    return-void
.end method

.method public getUnderlyingMatrix-sQKQjiQ()[F
    .locals 1

    .line 342
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->matrixCache:Landroidx/compose/ui/platform/LayerMatrixCache;

    iget-object p0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    invoke-virtual {v0, p0}, Landroidx/compose/ui/platform/LayerMatrixCache;->calculateMatrix-GrdbGEg(Ljava/lang/Object;)[F

    move-result-object p0

    return-object p0
.end method

.method public invalidate()V
    .locals 1

    .line 246
    iget-boolean v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->isDirty:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->isDestroyed:Z

    if-nez v0, :cond_0

    .line 247
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->ownerView:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    const/4 v0, 0x1

    .line 248
    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/RenderNodeLayer;->setDirty(Z)V

    :cond_0
    return-void
.end method

.method public inverseTransform-58bKbWc([F)V
    .locals 1

    .line 378
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->matrixCache:Landroidx/compose/ui/platform/LayerMatrixCache;

    iget-object p0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    invoke-virtual {v0, p0}, Landroidx/compose/ui/platform/LayerMatrixCache;->calculateInverseMatrix-bWbORWo(Ljava/lang/Object;)[F

    move-result-object p0

    if-eqz p0, :cond_0

    .line 380
    invoke-static {p1, p0}, Landroidx/compose/ui/graphics/Matrix;->timesAssign-58bKbWc([F[F)V

    :cond_0
    return-void
.end method

.method public isInLayer-k-4lQ0M(J)Z
    .locals 4

    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v0, v0

    .line 22
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    const-wide v1, 0xffffffffL

    and-long/2addr v1, p1

    long-to-int v1, v1

    .line 22
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    .line 198
    iget-object v2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    invoke-interface {v2}, Landroidx/compose/ui/platform/DeviceRenderNode;->getClipToBounds()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    const/4 p1, 0x0

    cmpg-float p2, p1, v0

    if-gtz p2, :cond_0

    .line 199
    iget-object p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    invoke-interface {p2}, Landroidx/compose/ui/platform/DeviceRenderNode;->getWidth()I

    move-result p2

    int-to-float p2, p2

    cmpg-float p2, v0, p2

    if-gez p2, :cond_0

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_0

    iget-object p0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    invoke-interface {p0}, Landroidx/compose/ui/platform/DeviceRenderNode;->getHeight()I

    move-result p0

    int-to-float p0, p0

    cmpg-float p0, v1, p0

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3

    .line 202
    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    invoke-interface {v0}, Landroidx/compose/ui/platform/DeviceRenderNode;->getClipToOutline()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 203
    iget-object p0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->outlineResolver:Landroidx/compose/ui/platform/OutlineResolver;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/platform/OutlineResolver;->isInOutline-k-4lQ0M(J)Z

    move-result p0

    return p0

    :cond_2
    return v3
.end method

.method public mapBounds(Landroidx/compose/ui/geometry/MutableRect;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 354
    iget-object p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->matrixCache:Landroidx/compose/ui/platform/LayerMatrixCache;

    iget-object p0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    invoke-virtual {p2, p0, p1}, Landroidx/compose/ui/platform/LayerMatrixCache;->mapInverse(Ljava/lang/Object;Landroidx/compose/ui/geometry/MutableRect;)V

    goto :goto_0

    .line 356
    :cond_0
    iget-object p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->matrixCache:Landroidx/compose/ui/platform/LayerMatrixCache;

    iget-object p0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    invoke-virtual {p2, p0, p1}, Landroidx/compose/ui/platform/LayerMatrixCache;->map(Ljava/lang/Object;Landroidx/compose/ui/geometry/MutableRect;)V

    :goto_0
    return-void
.end method

.method public mapOffset-8S9VItk(JZ)J
    .locals 0

    if-eqz p3, :cond_0

    .line 346
    iget-object p3, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->matrixCache:Landroidx/compose/ui/platform/LayerMatrixCache;

    iget-object p0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    invoke-virtual {p3, p0, p1, p2}, Landroidx/compose/ui/platform/LayerMatrixCache;->mapInverse-R5De75A(Ljava/lang/Object;J)J

    move-result-wide p0

    goto :goto_0

    .line 348
    :cond_0
    iget-object p3, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->matrixCache:Landroidx/compose/ui/platform/LayerMatrixCache;

    iget-object p0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    invoke-virtual {p3, p0, p1, p2}, Landroidx/compose/ui/platform/LayerMatrixCache;->map-R5De75A(Ljava/lang/Object;J)J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public move--gyyYBs(J)V
    .locals 3

    .line 229
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    invoke-interface {v0}, Landroidx/compose/ui/platform/DeviceRenderNode;->getLeft()I

    move-result v0

    .line 230
    iget-object v1, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    invoke-interface {v1}, Landroidx/compose/ui/platform/DeviceRenderNode;->getTop()I

    move-result v1

    .line 231
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v2

    .line 232
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result p1

    if-ne v0, v2, :cond_0

    if-eq v1, p1, :cond_3

    :cond_0
    if-eq v0, v2, :cond_1

    .line 235
    iget-object p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    sub-int/2addr v2, v0

    invoke-interface {p2, v2}, Landroidx/compose/ui/platform/DeviceRenderNode;->offsetLeftAndRight(I)V

    :cond_1
    if-eq v1, p1, :cond_2

    .line 238
    iget-object p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    sub-int/2addr p1, v1

    invoke-interface {p2, p1}, Landroidx/compose/ui/platform/DeviceRenderNode;->offsetTopAndBottom(I)V

    .line 240
    :cond_2
    invoke-direct {p0}, Landroidx/compose/ui/platform/RenderNodeLayer;->triggerRepaint()V

    .line 241
    iget-object p0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->matrixCache:Landroidx/compose/ui/platform/LayerMatrixCache;

    invoke-virtual {p0}, Landroidx/compose/ui/platform/LayerMatrixCache;->invalidate()V

    :cond_3
    return-void
.end method

.method public resize-ozmzZPI(J)V
    .locals 4

    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v0, v0

    const-wide v1, 0xffffffffL

    and-long/2addr p1, v1

    long-to-int p1, p1

    .line 212
    iget-object p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    iget-wide v1, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->transformOrigin:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/TransformOrigin;->getPivotFractionX-impl(J)F

    move-result v1

    int-to-float v2, v0

    mul-float/2addr v1, v2

    invoke-interface {p2, v1}, Landroidx/compose/ui/platform/DeviceRenderNode;->setPivotX(F)V

    .line 213
    iget-object p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    iget-wide v1, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->transformOrigin:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/TransformOrigin;->getPivotFractionY-impl(J)F

    move-result v1

    int-to-float v2, p1

    mul-float/2addr v1, v2

    invoke-interface {p2, v1}, Landroidx/compose/ui/platform/DeviceRenderNode;->setPivotY(F)V

    .line 215
    iget-object p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    .line 216
    invoke-interface {p2}, Landroidx/compose/ui/platform/DeviceRenderNode;->getLeft()I

    move-result v1

    .line 217
    iget-object v2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    invoke-interface {v2}, Landroidx/compose/ui/platform/DeviceRenderNode;->getTop()I

    move-result v2

    .line 218
    iget-object v3, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    invoke-interface {v3}, Landroidx/compose/ui/platform/DeviceRenderNode;->getLeft()I

    move-result v3

    add-int/2addr v3, v0

    .line 219
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    invoke-interface {v0}, Landroidx/compose/ui/platform/DeviceRenderNode;->getTop()I

    move-result v0

    add-int/2addr v0, p1

    .line 215
    invoke-interface {p2, v1, v2, v3, v0}, Landroidx/compose/ui/platform/DeviceRenderNode;->setPosition(IIII)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 222
    iget-object p1, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    iget-object p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->outlineResolver:Landroidx/compose/ui/platform/OutlineResolver;

    invoke-virtual {p2}, Landroidx/compose/ui/platform/OutlineResolver;->getAndroidOutline()Landroid/graphics/Outline;

    move-result-object p2

    invoke-interface {p1, p2}, Landroidx/compose/ui/platform/DeviceRenderNode;->setOutline(Landroid/graphics/Outline;)V

    .line 223
    invoke-virtual {p0}, Landroidx/compose/ui/platform/RenderNodeLayer;->invalidate()V

    .line 224
    iget-object p0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->matrixCache:Landroidx/compose/ui/platform/LayerMatrixCache;

    invoke-virtual {p0}, Landroidx/compose/ui/platform/LayerMatrixCache;->invalidate()V

    :cond_0
    return-void
.end method

.method public reuseLayer(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;)V
    .locals 2

    .line 364
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->matrixCache:Landroidx/compose/ui/platform/LayerMatrixCache;

    invoke-virtual {v0}, Landroidx/compose/ui/platform/LayerMatrixCache;->reset()V

    const/4 v0, 0x0

    .line 365
    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/RenderNodeLayer;->setDirty(Z)V

    .line 366
    iput-boolean v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->isDestroyed:Z

    .line 367
    iput-boolean v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->drawnWithZ:Z

    .line 368
    sget-object v0, Landroidx/compose/ui/graphics/TransformOrigin;->Companion:Landroidx/compose/ui/graphics/TransformOrigin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/TransformOrigin$Companion;->getCenter-SzJe1aQ()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->transformOrigin:J

    .line 369
    iput-object p1, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->drawBlock:Lkotlin/jvm/functions/Function2;

    .line 370
    iput-object p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->invalidateParentLayer:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public transform-58bKbWc([F)V
    .locals 1

    .line 374
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->matrixCache:Landroidx/compose/ui/platform/LayerMatrixCache;

    iget-object p0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    invoke-virtual {v0, p0}, Landroidx/compose/ui/platform/LayerMatrixCache;->calculateMatrix-GrdbGEg(Ljava/lang/Object;)[F

    move-result-object p0

    invoke-static {p1, p0}, Landroidx/compose/ui/graphics/Matrix;->timesAssign-58bKbWc([F[F)V

    return-void
.end method

.method public updateDisplayList()V
    .locals 5

    .line 315
    iget-boolean v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->isDirty:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    invoke-interface {v0}, Landroidx/compose/ui/platform/DeviceRenderNode;->getHasDisplayList()Z

    move-result v0

    if-nez v0, :cond_3

    .line 317
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    invoke-interface {v0}, Landroidx/compose/ui/platform/DeviceRenderNode;->getClipToOutline()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->outlineResolver:Landroidx/compose/ui/platform/OutlineResolver;

    invoke-virtual {v0}, Landroidx/compose/ui/platform/OutlineResolver;->getOutlineClipSupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 318
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->outlineResolver:Landroidx/compose/ui/platform/OutlineResolver;

    invoke-virtual {v0}, Landroidx/compose/ui/platform/OutlineResolver;->getClipPath()Landroidx/compose/ui/graphics/Path;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 322
    :goto_0
    iget-object v1, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->drawBlock:Lkotlin/jvm/functions/Function2;

    if-eqz v1, :cond_2

    .line 323
    iget-object v2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    iget-object v3, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->canvasHolder:Landroidx/compose/ui/graphics/CanvasHolder;

    new-instance v4, Landroidx/compose/ui/platform/RenderNodeLayer$updateDisplayList$1$1;

    invoke-direct {v4, v1}, Landroidx/compose/ui/platform/RenderNodeLayer$updateDisplayList$1$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v2, v3, v0, v4}, Landroidx/compose/ui/platform/DeviceRenderNode;->record(Landroidx/compose/ui/graphics/CanvasHolder;Landroidx/compose/ui/graphics/Path;Lkotlin/jvm/functions/Function1;)V

    :cond_2
    const/4 v0, 0x0

    .line 325
    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/RenderNodeLayer;->setDirty(Z)V

    :cond_3
    return-void
.end method

.method public updateLayerProperties(Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;)V
    .locals 13

    .line 111
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getMutatedFields$ui_release()I

    move-result v0

    iget v1, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->mutatedFields:I

    or-int/2addr v0, v1

    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_0

    .line 113
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getTransformOrigin-SzJe1aQ()J

    move-result-wide v2

    iput-wide v2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->transformOrigin:J

    .line 115
    :cond_0
    iget-object v2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    invoke-interface {v2}, Landroidx/compose/ui/platform/DeviceRenderNode;->getClipToOutline()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->outlineResolver:Landroidx/compose/ui/platform/OutlineResolver;

    invoke-virtual {v2}, Landroidx/compose/ui/platform/OutlineResolver;->getOutlineClipSupported()Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_2

    .line 117
    iget-object v5, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getScaleX()F

    move-result v6

    invoke-interface {v5, v6}, Landroidx/compose/ui/platform/DeviceRenderNode;->setScaleX(F)V

    :cond_2
    and-int/lit8 v5, v0, 0x2

    if-eqz v5, :cond_3

    .line 120
    iget-object v5, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getScaleY()F

    move-result v6

    invoke-interface {v5, v6}, Landroidx/compose/ui/platform/DeviceRenderNode;->setScaleY(F)V

    :cond_3
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_4

    .line 123
    iget-object v5, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getAlpha()F

    move-result v6

    invoke-interface {v5, v6}, Landroidx/compose/ui/platform/DeviceRenderNode;->setAlpha(F)V

    :cond_4
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_5

    .line 126
    iget-object v5, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getTranslationX()F

    move-result v6

    invoke-interface {v5, v6}, Landroidx/compose/ui/platform/DeviceRenderNode;->setTranslationX(F)V

    :cond_5
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_6

    .line 129
    iget-object v5, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getTranslationY()F

    move-result v6

    invoke-interface {v5, v6}, Landroidx/compose/ui/platform/DeviceRenderNode;->setTranslationY(F)V

    :cond_6
    and-int/lit8 v5, v0, 0x20

    if-eqz v5, :cond_7

    .line 132
    iget-object v5, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getShadowElevation()F

    move-result v6

    invoke-interface {v5, v6}, Landroidx/compose/ui/platform/DeviceRenderNode;->setElevation(F)V

    :cond_7
    and-int/lit8 v5, v0, 0x40

    if-eqz v5, :cond_8

    .line 135
    iget-object v5, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getAmbientShadowColor-0d7_KjU()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroidx/compose/ui/graphics/ColorKt;->toArgb-8_81llA(J)I

    move-result v6

    invoke-interface {v5, v6}, Landroidx/compose/ui/platform/DeviceRenderNode;->setAmbientShadowColor(I)V

    :cond_8
    and-int/lit16 v5, v0, 0x80

    if-eqz v5, :cond_9

    .line 138
    iget-object v5, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getSpotShadowColor-0d7_KjU()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroidx/compose/ui/graphics/ColorKt;->toArgb-8_81llA(J)I

    move-result v6

    invoke-interface {v5, v6}, Landroidx/compose/ui/platform/DeviceRenderNode;->setSpotShadowColor(I)V

    :cond_9
    and-int/lit16 v5, v0, 0x400

    if-eqz v5, :cond_a

    .line 141
    iget-object v5, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getRotationZ()F

    move-result v6

    invoke-interface {v5, v6}, Landroidx/compose/ui/platform/DeviceRenderNode;->setRotationZ(F)V

    :cond_a
    and-int/lit16 v5, v0, 0x100

    if-eqz v5, :cond_b

    .line 144
    iget-object v5, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getRotationX()F

    move-result v6

    invoke-interface {v5, v6}, Landroidx/compose/ui/platform/DeviceRenderNode;->setRotationX(F)V

    :cond_b
    and-int/lit16 v5, v0, 0x200

    if-eqz v5, :cond_c

    .line 147
    iget-object v5, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getRotationY()F

    move-result v6

    invoke-interface {v5, v6}, Landroidx/compose/ui/platform/DeviceRenderNode;->setRotationY(F)V

    :cond_c
    and-int/lit16 v5, v0, 0x800

    if-eqz v5, :cond_d

    .line 150
    iget-object v5, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getCameraDistance()F

    move-result v6

    invoke-interface {v5, v6}, Landroidx/compose/ui/platform/DeviceRenderNode;->setCameraDistance(F)V

    :cond_d
    if-eqz v1, :cond_e

    .line 153
    iget-object v1, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    iget-wide v5, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->transformOrigin:J

    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/TransformOrigin;->getPivotFractionX-impl(J)F

    move-result v5

    iget-object v6, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    invoke-interface {v6}, Landroidx/compose/ui/platform/DeviceRenderNode;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    invoke-interface {v1, v5}, Landroidx/compose/ui/platform/DeviceRenderNode;->setPivotX(F)V

    .line 154
    iget-object v1, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    iget-wide v5, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->transformOrigin:J

    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/TransformOrigin;->getPivotFractionY-impl(J)F

    move-result v5

    iget-object v6, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    invoke-interface {v6}, Landroidx/compose/ui/platform/DeviceRenderNode;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    invoke-interface {v1, v5}, Landroidx/compose/ui/platform/DeviceRenderNode;->setPivotY(F)V

    .line 156
    :cond_e
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getClip()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getShape()Landroidx/compose/ui/graphics/Shape;

    move-result-object v1

    invoke-static {}, Landroidx/compose/ui/graphics/RectangleShapeKt;->getRectangleShape()Landroidx/compose/ui/graphics/Shape;

    move-result-object v5

    if-eq v1, v5, :cond_f

    move v1, v4

    goto :goto_1

    :cond_f
    move v1, v3

    :goto_1
    and-int/lit16 v5, v0, 0x6000

    if-eqz v5, :cond_11

    .line 158
    iget-object v5, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    invoke-interface {v5, v1}, Landroidx/compose/ui/platform/DeviceRenderNode;->setClipToOutline(Z)V

    .line 159
    iget-object v5, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getClip()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getShape()Landroidx/compose/ui/graphics/Shape;

    move-result-object v6

    invoke-static {}, Landroidx/compose/ui/graphics/RectangleShapeKt;->getRectangleShape()Landroidx/compose/ui/graphics/Shape;

    move-result-object v7

    if-ne v6, v7, :cond_10

    move v6, v4

    goto :goto_2

    :cond_10
    move v6, v3

    :goto_2
    invoke-interface {v5, v6}, Landroidx/compose/ui/platform/DeviceRenderNode;->setClipToBounds(Z)V

    :cond_11
    const/high16 v5, 0x20000

    and-int/2addr v5, v0

    if-eqz v5, :cond_12

    .line 162
    iget-object v5, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getRenderEffect()Landroidx/compose/ui/graphics/RenderEffect;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroidx/compose/ui/platform/DeviceRenderNode;->setRenderEffect(Landroidx/compose/ui/graphics/RenderEffect;)V

    :cond_12
    const v5, 0x8000

    and-int/2addr v5, v0

    if-eqz v5, :cond_13

    .line 165
    iget-object v5, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getCompositingStrategy--NrFUSI()I

    move-result v6

    invoke-interface {v5, v6}, Landroidx/compose/ui/platform/DeviceRenderNode;->setCompositingStrategy-aDBOjCE(I)V

    .line 168
    :cond_13
    iget-object v6, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->outlineResolver:Landroidx/compose/ui/platform/OutlineResolver;

    .line 169
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getOutline$ui_release()Landroidx/compose/ui/graphics/Outline;

    move-result-object v7

    .line 170
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getAlpha()F

    move-result v8

    .line 172
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getShadowElevation()F

    move-result v10

    .line 173
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getSize-NH-jbRc()J

    move-result-wide v11

    move v9, v1

    .line 168
    invoke-virtual/range {v6 .. v12}, Landroidx/compose/ui/platform/OutlineResolver;->update-S_szKao(Landroidx/compose/ui/graphics/Outline;FZFJ)Z

    move-result v5

    .line 175
    iget-object v6, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->outlineResolver:Landroidx/compose/ui/platform/OutlineResolver;

    invoke-virtual {v6}, Landroidx/compose/ui/platform/OutlineResolver;->getCacheIsDirty$ui_release()Z

    move-result v6

    if-eqz v6, :cond_14

    .line 176
    iget-object v6, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    iget-object v7, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->outlineResolver:Landroidx/compose/ui/platform/OutlineResolver;

    invoke-virtual {v7}, Landroidx/compose/ui/platform/OutlineResolver;->getAndroidOutline()Landroid/graphics/Outline;

    move-result-object v7

    invoke-interface {v6, v7}, Landroidx/compose/ui/platform/DeviceRenderNode;->setOutline(Landroid/graphics/Outline;)V

    :cond_14
    if-eqz v1, :cond_15

    .line 178
    iget-object v1, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->outlineResolver:Landroidx/compose/ui/platform/OutlineResolver;

    invoke-virtual {v1}, Landroidx/compose/ui/platform/OutlineResolver;->getOutlineClipSupported()Z

    move-result v1

    if-nez v1, :cond_15

    move v3, v4

    :cond_15
    if-ne v2, v3, :cond_17

    if-eqz v3, :cond_16

    if-eqz v5, :cond_16

    goto :goto_3

    .line 182
    :cond_16
    invoke-direct {p0}, Landroidx/compose/ui/platform/RenderNodeLayer;->triggerRepaint()V

    goto :goto_4

    .line 180
    :cond_17
    :goto_3
    invoke-virtual {p0}, Landroidx/compose/ui/platform/RenderNodeLayer;->invalidate()V

    .line 184
    :goto_4
    iget-boolean v1, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->drawnWithZ:Z

    if-nez v1, :cond_18

    iget-object v1, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->renderNode:Landroidx/compose/ui/platform/DeviceRenderNode;

    invoke-interface {v1}, Landroidx/compose/ui/platform/DeviceRenderNode;->getElevation()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_18

    .line 185
    iget-object v1, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->invalidateParentLayer:Lkotlin/jvm/functions/Function0;

    if-eqz v1, :cond_18

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_18
    and-int/lit16 v0, v0, 0x1f1b

    if-eqz v0, :cond_19

    .line 189
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->matrixCache:Landroidx/compose/ui/platform/LayerMatrixCache;

    invoke-virtual {v0}, Landroidx/compose/ui/platform/LayerMatrixCache;->invalidate()V

    .line 192
    :cond_19
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getMutatedFields$ui_release()I

    move-result p1

    iput p1, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->mutatedFields:I

    return-void
.end method
