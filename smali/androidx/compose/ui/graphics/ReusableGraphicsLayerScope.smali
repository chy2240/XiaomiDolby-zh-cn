.class public final Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;
.super Ljava/lang/Object;
.source "GraphicsLayerScope.kt"

# interfaces
.implements Landroidx/compose/ui/graphics/GraphicsLayerScope;


# instance fields
.field private alpha:F

.field private ambientShadowColor:J

.field private cameraDistance:F

.field private clip:Z

.field private compositingStrategy:I

.field private graphicsDensity:Landroidx/compose/ui/unit/Density;

.field private layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

.field private mutatedFields:I

.field private outline:Landroidx/compose/ui/graphics/Outline;

.field private rotationX:F

.field private rotationY:F

.field private rotationZ:F

.field private scaleX:F

.field private scaleY:F

.field private shadowElevation:F

.field private shape:Landroidx/compose/ui/graphics/Shape;

.field private size:J

.field private spotShadowColor:J

.field private transformOrigin:J

.field private translationX:F

.field private translationY:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 272
    iput v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->scaleX:F

    .line 280
    iput v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->scaleY:F

    .line 288
    iput v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->alpha:F

    .line 320
    invoke-static {}, Landroidx/compose/ui/graphics/GraphicsLayerScopeKt;->getDefaultShadowColor()J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->ambientShadowColor:J

    .line 328
    invoke-static {}, Landroidx/compose/ui/graphics/GraphicsLayerScopeKt;->getDefaultShadowColor()J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->spotShadowColor:J

    const/high16 v1, 0x41000000    # 8.0f

    .line 360
    iput v1, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->cameraDistance:F

    .line 368
    sget-object v1, Landroidx/compose/ui/graphics/TransformOrigin;->Companion:Landroidx/compose/ui/graphics/TransformOrigin$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/TransformOrigin$Companion;->getCenter-SzJe1aQ()J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->transformOrigin:J

    .line 376
    invoke-static {}, Landroidx/compose/ui/graphics/RectangleShapeKt;->getRectangleShape()Landroidx/compose/ui/graphics/Shape;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->shape:Landroidx/compose/ui/graphics/Shape;

    .line 392
    sget-object v1, Landroidx/compose/ui/graphics/CompositingStrategy;->Companion:Landroidx/compose/ui/graphics/CompositingStrategy$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/CompositingStrategy$Companion;->getAuto--NrFUSI()I

    move-result v1

    iput v1, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->compositingStrategy:I

    .line 400
    sget-object v1, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Size$Companion;->getUnspecified-NH-jbRc()J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->size:J

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 402
    invoke-static {v0, v3, v1, v2}, Landroidx/compose/ui/unit/DensityKt;->Density$default(FFILjava/lang/Object;)Landroidx/compose/ui/unit/Density;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->graphicsDensity:Landroidx/compose/ui/unit/Density;

    .line 404
    sget-object v0, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    iput-object v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    return-void
.end method


# virtual methods
.method public getAlpha()F
    .locals 0

    .line 288
    iget p0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->alpha:F

    return p0
.end method

.method public getAmbientShadowColor-0d7_KjU()J
    .locals 2

    .line 320
    iget-wide v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->ambientShadowColor:J

    return-wide v0
.end method

.method public getCameraDistance()F
    .locals 0

    .line 360
    iget p0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->cameraDistance:F

    return p0
.end method

.method public getClip()Z
    .locals 0

    .line 384
    iget-boolean p0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->clip:Z

    return p0
.end method

.method public getCompositingStrategy--NrFUSI()I
    .locals 0

    .line 392
    iget p0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->compositingStrategy:I

    return p0
.end method

.method public getDensity()F
    .locals 0

    .line 407
    iget-object p0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->graphicsDensity:Landroidx/compose/ui/unit/Density;

    invoke-interface {p0}, Landroidx/compose/ui/unit/Density;->getDensity()F

    move-result p0

    return p0
.end method

.method public getFontScale()F
    .locals 0

    .line 410
    iget-object p0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->graphicsDensity:Landroidx/compose/ui/unit/Density;

    invoke-interface {p0}, Landroidx/compose/ui/unit/FontScaling;->getFontScale()F

    move-result p0

    return p0
.end method

.method public final getGraphicsDensity$ui_release()Landroidx/compose/ui/unit/Density;
    .locals 0

    .line 402
    iget-object p0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->graphicsDensity:Landroidx/compose/ui/unit/Density;

    return-object p0
.end method

.method public final getLayoutDirection$ui_release()Landroidx/compose/ui/unit/LayoutDirection;
    .locals 0

    .line 404
    iget-object p0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    return-object p0
.end method

.method public final getMutatedFields$ui_release()I
    .locals 0

    .line 270
    iget p0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->mutatedFields:I

    return p0
.end method

.method public final getOutline$ui_release()Landroidx/compose/ui/graphics/Outline;
    .locals 0

    .line 420
    iget-object p0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->outline:Landroidx/compose/ui/graphics/Outline;

    return-object p0
.end method

.method public getRenderEffect()Landroidx/compose/ui/graphics/RenderEffect;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRotationX()F
    .locals 0

    .line 336
    iget p0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->rotationX:F

    return p0
.end method

.method public getRotationY()F
    .locals 0

    .line 344
    iget p0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->rotationY:F

    return p0
.end method

.method public getRotationZ()F
    .locals 0

    .line 352
    iget p0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->rotationZ:F

    return p0
.end method

.method public getScaleX()F
    .locals 0

    .line 272
    iget p0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->scaleX:F

    return p0
.end method

.method public getScaleY()F
    .locals 0

    .line 280
    iget p0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->scaleY:F

    return p0
.end method

.method public getShadowElevation()F
    .locals 0

    .line 312
    iget p0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->shadowElevation:F

    return p0
.end method

.method public getShape()Landroidx/compose/ui/graphics/Shape;
    .locals 0

    .line 376
    iget-object p0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->shape:Landroidx/compose/ui/graphics/Shape;

    return-object p0
.end method

.method public getSize-NH-jbRc()J
    .locals 2

    .line 400
    iget-wide v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->size:J

    return-wide v0
.end method

.method public getSpotShadowColor-0d7_KjU()J
    .locals 2

    .line 328
    iget-wide v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->spotShadowColor:J

    return-wide v0
.end method

.method public getTransformOrigin-SzJe1aQ()J
    .locals 2

    .line 368
    iget-wide v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->transformOrigin:J

    return-wide v0
.end method

.method public getTranslationX()F
    .locals 0

    .line 296
    iget p0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->translationX:F

    return p0
.end method

.method public getTranslationY()F
    .locals 0

    .line 304
    iget p0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->translationY:F

    return p0
.end method

.method public final reset()V
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    .line 424
    invoke-virtual {p0, v0}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setScaleX(F)V

    .line 425
    invoke-virtual {p0, v0}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setScaleY(F)V

    .line 426
    invoke-virtual {p0, v0}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setAlpha(F)V

    const/4 v0, 0x0

    .line 427
    invoke-virtual {p0, v0}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setTranslationX(F)V

    .line 428
    invoke-virtual {p0, v0}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setTranslationY(F)V

    .line 429
    invoke-virtual {p0, v0}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setShadowElevation(F)V

    .line 430
    invoke-static {}, Landroidx/compose/ui/graphics/GraphicsLayerScopeKt;->getDefaultShadowColor()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setAmbientShadowColor-8_81llA(J)V

    .line 431
    invoke-static {}, Landroidx/compose/ui/graphics/GraphicsLayerScopeKt;->getDefaultShadowColor()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setSpotShadowColor-8_81llA(J)V

    .line 432
    invoke-virtual {p0, v0}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setRotationX(F)V

    .line 433
    invoke-virtual {p0, v0}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setRotationY(F)V

    .line 434
    invoke-virtual {p0, v0}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setRotationZ(F)V

    const/high16 v0, 0x41000000    # 8.0f

    .line 435
    invoke-virtual {p0, v0}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setCameraDistance(F)V

    .line 436
    sget-object v0, Landroidx/compose/ui/graphics/TransformOrigin;->Companion:Landroidx/compose/ui/graphics/TransformOrigin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/TransformOrigin$Companion;->getCenter-SzJe1aQ()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setTransformOrigin-__ExYCQ(J)V

    .line 437
    invoke-static {}, Landroidx/compose/ui/graphics/RectangleShapeKt;->getRectangleShape()Landroidx/compose/ui/graphics/Shape;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setShape(Landroidx/compose/ui/graphics/Shape;)V

    const/4 v0, 0x0

    .line 438
    invoke-virtual {p0, v0}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setClip(Z)V

    const/4 v1, 0x0

    .line 439
    invoke-virtual {p0, v1}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setRenderEffect(Landroidx/compose/ui/graphics/RenderEffect;)V

    .line 440
    sget-object v2, Landroidx/compose/ui/graphics/CompositingStrategy;->Companion:Landroidx/compose/ui/graphics/CompositingStrategy$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/CompositingStrategy$Companion;->getAuto--NrFUSI()I

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setCompositingStrategy-aDBOjCE(I)V

    .line 441
    sget-object v2, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Size$Companion;->getUnspecified-NH-jbRc()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setSize-uvyYCjk(J)V

    .line 442
    iput-object v1, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->outline:Landroidx/compose/ui/graphics/Outline;

    .line 444
    iput v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->mutatedFields:I

    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    .line 290
    iget v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->alpha:F

    cmpg-float v0, v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 291
    :cond_0
    iget v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->mutatedFields:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->mutatedFields:I

    .line 292
    iput p1, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->alpha:F

    :goto_0
    return-void
.end method

.method public setAmbientShadowColor-8_81llA(J)V
    .locals 2

    .line 322
    iget-wide v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->ambientShadowColor:J

    invoke-static {v0, v1, p1, p2}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    iget v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->mutatedFields:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->mutatedFields:I

    .line 324
    iput-wide p1, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->ambientShadowColor:J

    :cond_0
    return-void
.end method

.method public setCameraDistance(F)V
    .locals 1

    .line 362
    iget v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->cameraDistance:F

    cmpg-float v0, v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 363
    :cond_0
    iget v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->mutatedFields:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->mutatedFields:I

    .line 364
    iput p1, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->cameraDistance:F

    :goto_0
    return-void
.end method

.method public setClip(Z)V
    .locals 1

    .line 386
    iget-boolean v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->clip:Z

    if-eq v0, p1, :cond_0

    .line 387
    iget v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->mutatedFields:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->mutatedFields:I

    .line 388
    iput-boolean p1, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->clip:Z

    :cond_0
    return-void
.end method

.method public setCompositingStrategy-aDBOjCE(I)V
    .locals 2

    .line 394
    iget v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->compositingStrategy:I

    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/CompositingStrategy;->equals-impl0(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 395
    iget v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->mutatedFields:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->mutatedFields:I

    .line 396
    iput p1, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->compositingStrategy:I

    :cond_0
    return-void
.end method

.method public final setGraphicsDensity$ui_release(Landroidx/compose/ui/unit/Density;)V
    .locals 0

    .line 402
    iput-object p1, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->graphicsDensity:Landroidx/compose/ui/unit/Density;

    return-void
.end method

.method public final setLayoutDirection$ui_release(Landroidx/compose/ui/unit/LayoutDirection;)V
    .locals 0

    .line 404
    iput-object p1, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    return-void
.end method

.method public setRenderEffect(Landroidx/compose/ui/graphics/RenderEffect;)V
    .locals 1

    const/4 v0, 0x0

    .line 414
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 415
    iget p1, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->mutatedFields:I

    const/high16 v0, 0x20000

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->mutatedFields:I

    :cond_0
    return-void
.end method

.method public setRotationX(F)V
    .locals 1

    .line 338
    iget v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->rotationX:F

    cmpg-float v0, v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 339
    :cond_0
    iget v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->mutatedFields:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->mutatedFields:I

    .line 340
    iput p1, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->rotationX:F

    :goto_0
    return-void
.end method

.method public setRotationY(F)V
    .locals 1

    .line 346
    iget v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->rotationY:F

    cmpg-float v0, v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 347
    :cond_0
    iget v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->mutatedFields:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->mutatedFields:I

    .line 348
    iput p1, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->rotationY:F

    :goto_0
    return-void
.end method

.method public setRotationZ(F)V
    .locals 1

    .line 354
    iget v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->rotationZ:F

    cmpg-float v0, v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 355
    :cond_0
    iget v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->mutatedFields:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->mutatedFields:I

    .line 356
    iput p1, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->rotationZ:F

    :goto_0
    return-void
.end method

.method public setScaleX(F)V
    .locals 1

    .line 274
    iget v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->scaleX:F

    cmpg-float v0, v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 275
    :cond_0
    iget v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->mutatedFields:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->mutatedFields:I

    .line 276
    iput p1, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->scaleX:F

    :goto_0
    return-void
.end method

.method public setScaleY(F)V
    .locals 1

    .line 282
    iget v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->scaleY:F

    cmpg-float v0, v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 283
    :cond_0
    iget v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->mutatedFields:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->mutatedFields:I

    .line 284
    iput p1, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->scaleY:F

    :goto_0
    return-void
.end method

.method public setShadowElevation(F)V
    .locals 1

    .line 314
    iget v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->shadowElevation:F

    cmpg-float v0, v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 315
    :cond_0
    iget v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->mutatedFields:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->mutatedFields:I

    .line 316
    iput p1, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->shadowElevation:F

    :goto_0
    return-void
.end method

.method public setShape(Landroidx/compose/ui/graphics/Shape;)V
    .locals 1

    .line 378
    iget-object v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->shape:Landroidx/compose/ui/graphics/Shape;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 379
    iget v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->mutatedFields:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->mutatedFields:I

    .line 380
    iput-object p1, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->shape:Landroidx/compose/ui/graphics/Shape;

    :cond_0
    return-void
.end method

.method public setSize-uvyYCjk(J)V
    .locals 0

    .line 400
    iput-wide p1, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->size:J

    return-void
.end method

.method public setSpotShadowColor-8_81llA(J)V
    .locals 2

    .line 330
    iget-wide v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->spotShadowColor:J

    invoke-static {v0, v1, p1, p2}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 331
    iget v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->mutatedFields:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->mutatedFields:I

    .line 332
    iput-wide p1, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->spotShadowColor:J

    :cond_0
    return-void
.end method

.method public setTransformOrigin-__ExYCQ(J)V
    .locals 2

    .line 370
    iget-wide v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->transformOrigin:J

    invoke-static {v0, v1, p1, p2}, Landroidx/compose/ui/graphics/TransformOrigin;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 371
    iget v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->mutatedFields:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->mutatedFields:I

    .line 372
    iput-wide p1, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->transformOrigin:J

    :cond_0
    return-void
.end method

.method public setTranslationX(F)V
    .locals 1

    .line 298
    iget v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->translationX:F

    cmpg-float v0, v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 299
    :cond_0
    iget v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->mutatedFields:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->mutatedFields:I

    .line 300
    iput p1, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->translationX:F

    :goto_0
    return-void
.end method

.method public setTranslationY(F)V
    .locals 1

    .line 306
    iget v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->translationY:F

    cmpg-float v0, v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 307
    :cond_0
    iget v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->mutatedFields:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->mutatedFields:I

    .line 308
    iput p1, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->translationY:F

    :goto_0
    return-void
.end method

.method public final updateOutline$ui_release()V
    .locals 5

    .line 448
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getShape()Landroidx/compose/ui/graphics/Shape;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getSize-NH-jbRc()J

    move-result-wide v1

    iget-object v3, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    iget-object v4, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->graphicsDensity:Landroidx/compose/ui/unit/Density;

    invoke-interface {v0, v1, v2, v3, v4}, Landroidx/compose/ui/graphics/Shape;->createOutline-Pq9zytI(JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)Landroidx/compose/ui/graphics/Outline;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->outline:Landroidx/compose/ui/graphics/Outline;

    return-void
.end method
