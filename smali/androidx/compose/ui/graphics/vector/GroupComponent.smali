.class public final Landroidx/compose/ui/graphics/vector/GroupComponent;
.super Landroidx/compose/ui/graphics/vector/VNode;
.source "Vector.kt"


# instance fields
.field private final children:Ljava/util/List;

.field private clipPath:Landroidx/compose/ui/graphics/Path;

.field private clipPathData:Ljava/util/List;

.field private groupMatrix:[F

.field private invalidateListener:Lkotlin/jvm/functions/Function1;

.field private isClipPathDirty:Z

.field private isMatrixDirty:Z

.field private isTintable:Z

.field private name:Ljava/lang/String;

.field private pivotX:F

.field private pivotY:F

.field private rotation:F

.field private scaleX:F

.field private scaleY:F

.field private tintColor:J

.field private translationX:F

.field private translationY:F

.field private final wrappedListener:Lkotlin/jvm/functions/Function1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    .line 360
    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/vector/VNode;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 363
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->children:Ljava/util/List;

    const/4 v0, 0x1

    .line 369
    iput-boolean v0, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->isTintable:Z

    .line 376
    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->tintColor:J

    .line 440
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getEmptyPath()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->clipPathData:Ljava/util/List;

    .line 450
    iput-boolean v0, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->isClipPathDirty:Z

    .line 456
    new-instance v1, Landroidx/compose/ui/graphics/vector/GroupComponent$wrappedListener$1;

    invoke-direct {v1, p0}, Landroidx/compose/ui/graphics/vector/GroupComponent$wrappedListener$1;-><init>(Landroidx/compose/ui/graphics/vector/GroupComponent;)V

    iput-object v1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->wrappedListener:Lkotlin/jvm/functions/Function1;

    .line 476
    const-string v1, ""

    iput-object v1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->name:Ljava/lang/String;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 503
    iput v1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->scaleX:F

    .line 510
    iput v1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->scaleY:F

    .line 534
    iput-boolean v0, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->isMatrixDirty:Z

    return-void
.end method

.method public static final synthetic access$markTintForVNode(Landroidx/compose/ui/graphics/vector/GroupComponent;Landroidx/compose/ui/graphics/vector/VNode;)V
    .locals 0

    .line 360
    invoke-direct {p0, p1}, Landroidx/compose/ui/graphics/vector/GroupComponent;->markTintForVNode(Landroidx/compose/ui/graphics/vector/VNode;)V

    return-void
.end method

.method private final getWillClipPath()Z
    .locals 0

    .line 448
    iget-object p0, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->clipPathData:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private final markNotTintable()V
    .locals 2

    const/4 v0, 0x0

    .line 436
    iput-boolean v0, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->isTintable:Z

    .line 437
    sget-object v0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->tintColor:J

    return-void
.end method

.method private final markTintForBrush(Landroidx/compose/ui/graphics/Brush;)V
    .locals 2

    .line 385
    iget-boolean v0, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->isTintable:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 389
    instance-of v0, p1, Landroidx/compose/ui/graphics/SolidColor;

    if-eqz v0, :cond_1

    .line 390
    check-cast p1, Landroidx/compose/ui/graphics/SolidColor;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/SolidColor;->getValue-0d7_KjU()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroidx/compose/ui/graphics/vector/GroupComponent;->markTintForColor-8_81llA(J)V

    goto :goto_0

    .line 394
    :cond_1
    invoke-direct {p0}, Landroidx/compose/ui/graphics/vector/GroupComponent;->markNotTintable()V

    :cond_2
    :goto_0
    return-void
.end method

.method private final markTintForColor-8_81llA(J)V
    .locals 4

    .line 405
    iget-boolean v0, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->isTintable:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x10

    cmp-long v2, p1, v0

    if-eqz v2, :cond_2

    .line 410
    iget-wide v2, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->tintColor:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    .line 413
    iput-wide p1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->tintColor:J

    goto :goto_0

    .line 414
    :cond_1
    invoke-static {v2, v3, p1, p2}, Landroidx/compose/ui/graphics/vector/VectorKt;->rgbEqual--OWjLjI(JJ)Z

    move-result p1

    if-nez p1, :cond_2

    .line 417
    invoke-direct {p0}, Landroidx/compose/ui/graphics/vector/GroupComponent;->markNotTintable()V

    :cond_2
    :goto_0
    return-void
.end method

.method private final markTintForVNode(Landroidx/compose/ui/graphics/vector/VNode;)V
    .locals 2

    .line 423
    instance-of v0, p1, Landroidx/compose/ui/graphics/vector/PathComponent;

    if-eqz v0, :cond_0

    .line 424
    check-cast p1, Landroidx/compose/ui/graphics/vector/PathComponent;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathComponent;->getFill()Landroidx/compose/ui/graphics/Brush;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/vector/GroupComponent;->markTintForBrush(Landroidx/compose/ui/graphics/Brush;)V

    .line 425
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathComponent;->getStroke()Landroidx/compose/ui/graphics/Brush;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/compose/ui/graphics/vector/GroupComponent;->markTintForBrush(Landroidx/compose/ui/graphics/Brush;)V

    goto :goto_0

    .line 426
    :cond_0
    instance-of v0, p1, Landroidx/compose/ui/graphics/vector/GroupComponent;

    if-eqz v0, :cond_2

    .line 427
    check-cast p1, Landroidx/compose/ui/graphics/vector/GroupComponent;

    iget-boolean v0, p1, Landroidx/compose/ui/graphics/vector/GroupComponent;->isTintable:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->isTintable:Z

    if-eqz v0, :cond_1

    .line 428
    iget-wide v0, p1, Landroidx/compose/ui/graphics/vector/GroupComponent;->tintColor:J

    invoke-direct {p0, v0, v1}, Landroidx/compose/ui/graphics/vector/GroupComponent;->markTintForColor-8_81llA(J)V

    goto :goto_0

    .line 430
    :cond_1
    invoke-direct {p0}, Landroidx/compose/ui/graphics/vector/GroupComponent;->markNotTintable()V

    :cond_2
    :goto_0
    return-void
.end method

.method private final updateClipPath()V
    .locals 1

    .line 462
    invoke-direct {p0}, Landroidx/compose/ui/graphics/vector/GroupComponent;->getWillClipPath()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 463
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->clipPath:Landroidx/compose/ui/graphics/Path;

    if-nez v0, :cond_0

    .line 465
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/Path;

    move-result-object v0

    .line 466
    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->clipPath:Landroidx/compose/ui/graphics/Path;

    .line 470
    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->clipPathData:Ljava/util/List;

    invoke-static {p0, v0}, Landroidx/compose/ui/graphics/vector/PathParserKt;->toPath(Ljava/util/List;Landroidx/compose/ui/graphics/Path;)Landroidx/compose/ui/graphics/Path;

    :cond_1
    return-void
.end method

.method private final updateMatrix()V
    .locals 7

    .line 538
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->groupMatrix:[F

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 540
    invoke-static {v1, v0, v1}, Landroidx/compose/ui/graphics/Matrix;->constructor-impl$default([FILkotlin/jvm/internal/DefaultConstructorMarker;)[F

    move-result-object v0

    .line 541
    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->groupMatrix:[F

    goto :goto_0

    .line 544
    :cond_0
    invoke-static {v0}, Landroidx/compose/ui/graphics/Matrix;->reset-impl([F)V

    .line 549
    :goto_0
    iget v1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->translationX:F

    iget v2, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->pivotX:F

    add-float/2addr v2, v1

    iget v1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->translationY:F

    iget v3, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->pivotY:F

    add-float/2addr v3, v1

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Landroidx/compose/ui/graphics/Matrix;->translate-impl$default([FFFFILjava/lang/Object;)V

    .line 550
    iget v1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->rotation:F

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Matrix;->rotateZ-impl([FF)V

    .line 551
    iget v1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->scaleX:F

    iget v2, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->scaleY:F

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/Matrix;->scale-impl([FFFF)V

    .line 552
    iget v1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->pivotX:F

    neg-float v2, v1

    iget p0, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->pivotY:F

    neg-float v3, p0

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Landroidx/compose/ui/graphics/Matrix;->translate-impl$default([FFFFILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public draw(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V
    .locals 8

    .line 598
    iget-boolean v0, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->isMatrixDirty:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 599
    invoke-direct {p0}, Landroidx/compose/ui/graphics/vector/GroupComponent;->updateMatrix()V

    .line 600
    iput-boolean v1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->isMatrixDirty:Z

    .line 603
    :cond_0
    iget-boolean v0, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->isClipPathDirty:Z

    if-eqz v0, :cond_1

    .line 604
    invoke-direct {p0}, Landroidx/compose/ui/graphics/vector/GroupComponent;->updateClipPath()V

    .line 605
    iput-boolean v1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->isClipPathDirty:Z

    .line 249
    :cond_1
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object v0

    .line 253
    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getSize-NH-jbRc()J

    move-result-wide v2

    .line 254
    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v4

    invoke-interface {v4}, Landroidx/compose/ui/graphics/Canvas;->save()V

    .line 256
    :try_start_0
    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getTransform()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    move-result-object v4

    .line 609
    iget-object v5, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->groupMatrix:[F

    if-eqz v5, :cond_2

    invoke-static {v5}, Landroidx/compose/ui/graphics/Matrix;->box-impl([F)Landroidx/compose/ui/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/Matrix;->unbox-impl()[F

    move-result-object v5

    invoke-interface {v4, v5}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->transform-58bKbWc([F)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 610
    :cond_2
    :goto_0
    iget-object v5, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->clipPath:Landroidx/compose/ui/graphics/Path;

    .line 611
    invoke-direct {p0}, Landroidx/compose/ui/graphics/vector/GroupComponent;->getWillClipPath()Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz v5, :cond_3

    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 612
    invoke-static {v4, v5, v1, v6, v7}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->clipPath-mtrdD-E$default(Landroidx/compose/ui/graphics/drawscope/DrawTransform;Landroidx/compose/ui/graphics/Path;IILjava/lang/Object;)V

    .line 615
    :cond_3
    iget-object p0, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->children:Ljava/util/List;

    .line 34
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v4

    :goto_1
    if-ge v1, v4, :cond_4

    .line 35
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 36
    check-cast v5, Landroidx/compose/ui/graphics/vector/VNode;

    .line 615
    invoke-virtual {v5, p1}, Landroidx/compose/ui/graphics/vector/VNode;->draw(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 259
    :cond_4
    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    .line 260
    invoke-interface {v0, v2, v3}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->setSize-uvyYCjk(J)V

    return-void

    .line 259
    :goto_2
    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object p1

    invoke-interface {p1}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    .line 260
    invoke-interface {v0, v2, v3}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->setSize-uvyYCjk(J)V

    throw p0
.end method

.method public getInvalidateListener$ui_release()Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 454
    iget-object p0, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->invalidateListener:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final getNumChildren()I
    .locals 0

    .line 532
    iget-object p0, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->children:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final getTintColor-0d7_KjU()J
    .locals 2

    .line 376
    iget-wide v0, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->tintColor:J

    return-wide v0
.end method

.method public final insertAt(ILandroidx/compose/ui/graphics/vector/VNode;)V
    .locals 1

    .line 556
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/GroupComponent;->getNumChildren()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 557
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->children:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 559
    :cond_0
    iget-object p1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->children:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 562
    :goto_0
    invoke-direct {p0, p2}, Landroidx/compose/ui/graphics/vector/GroupComponent;->markTintForVNode(Landroidx/compose/ui/graphics/vector/VNode;)V

    .line 564
    iget-object p1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->wrappedListener:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p2, p1}, Landroidx/compose/ui/graphics/vector/VNode;->setInvalidateListener$ui_release(Lkotlin/jvm/functions/Function1;)V

    .line 565
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    return-void
.end method

.method public final isTintable()Z
    .locals 0

    .line 369
    iget-boolean p0, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->isTintable:Z

    return p0
.end method

.method public final setClipPathData(Ljava/util/List;)V
    .locals 0

    .line 442
    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->clipPathData:Ljava/util/List;

    const/4 p1, 0x1

    .line 443
    iput-boolean p1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->isClipPathDirty:Z

    .line 444
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    return-void
.end method

.method public setInvalidateListener$ui_release(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 454
    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->invalidateListener:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    .line 478
    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->name:Ljava/lang/String;

    .line 479
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    return-void
.end method

.method public final setPivotX(F)V
    .locals 0

    .line 491
    iput p1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->pivotX:F

    const/4 p1, 0x1

    .line 492
    iput-boolean p1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->isMatrixDirty:Z

    .line 493
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    return-void
.end method

.method public final setPivotY(F)V
    .locals 0

    .line 498
    iput p1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->pivotY:F

    const/4 p1, 0x1

    .line 499
    iput-boolean p1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->isMatrixDirty:Z

    .line 500
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    return-void
.end method

.method public final setRotation(F)V
    .locals 0

    .line 484
    iput p1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->rotation:F

    const/4 p1, 0x1

    .line 485
    iput-boolean p1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->isMatrixDirty:Z

    .line 486
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    return-void
.end method

.method public final setScaleX(F)V
    .locals 0

    .line 505
    iput p1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->scaleX:F

    const/4 p1, 0x1

    .line 506
    iput-boolean p1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->isMatrixDirty:Z

    .line 507
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    return-void
.end method

.method public final setScaleY(F)V
    .locals 0

    .line 512
    iput p1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->scaleY:F

    const/4 p1, 0x1

    .line 513
    iput-boolean p1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->isMatrixDirty:Z

    .line 514
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    return-void
.end method

.method public final setTranslationX(F)V
    .locals 0

    .line 519
    iput p1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->translationX:F

    const/4 p1, 0x1

    .line 520
    iput-boolean p1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->isMatrixDirty:Z

    .line 521
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    return-void
.end method

.method public final setTranslationY(F)V
    .locals 0

    .line 526
    iput p1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->translationY:F

    const/4 p1, 0x1

    .line 527
    iput-boolean p1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->isMatrixDirty:Z

    .line 528
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 620
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VGroup: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    iget-object p0, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->children:Ljava/util/List;

    .line 34
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 35
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 36
    check-cast v3, Landroidx/compose/ui/graphics/vector/VNode;

    .line 621
    const-string v4, "\t"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 622
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
