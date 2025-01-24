.class public final Landroidx/compose/ui/graphics/layer/GraphicsLayer;
.super Ljava/lang/Object;
.source "AndroidGraphicsLayer.android.kt"


# static fields
.field public static final Companion:Landroidx/compose/ui/graphics/layer/GraphicsLayer$Companion;

.field private static final SnapshotImpl:Landroidx/compose/ui/graphics/layer/LayerSnapshotImpl;


# instance fields
.field private androidOutline:Landroid/graphics/Outline;

.field private final childDependenciesTracker:Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;

.field private density:Landroidx/compose/ui/unit/Density;

.field private drawBlock:Lkotlin/jvm/functions/Function1;

.field private final impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

.field private internalOutline:Landroidx/compose/ui/graphics/Outline;

.field private isReleased:Z

.field private layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

.field private outlineDirty:Z

.field private outlinePath:Landroidx/compose/ui/graphics/Path;

.field private parentLayerUsages:I

.field private pivotOffset:J

.field private roundRectClipPath:Landroidx/compose/ui/graphics/Path;

.field private roundRectCornerRadius:F

.field private roundRectOutlineSize:J

.field private roundRectOutlineTopLeft:J

.field private size:J

.field private softwareLayerPaint:Landroidx/compose/ui/graphics/Paint;

.field private topLeft:J

.field private usePathForClip:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/layer/GraphicsLayer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->Companion:Landroidx/compose/ui/graphics/layer/GraphicsLayer$Companion;

    .line 835
    sget-object v0, Landroidx/compose/ui/graphics/layer/LayerManager;->Companion:Landroidx/compose/ui/graphics/layer/LayerManager$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/layer/LayerManager$Companion;->isRobolectric()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 836
    sget-object v0, Landroidx/compose/ui/graphics/layer/LayerSnapshotV21;->INSTANCE:Landroidx/compose/ui/graphics/layer/LayerSnapshotV21;

    goto :goto_0

    .line 838
    :cond_0
    sget-object v0, Landroidx/compose/ui/graphics/layer/LayerSnapshotV28;->INSTANCE:Landroidx/compose/ui/graphics/layer/LayerSnapshotV28;

    .line 835
    :goto_0
    sput-object v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->SnapshotImpl:Landroidx/compose/ui/graphics/layer/LayerSnapshotImpl;

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;Landroidx/compose/ui/graphics/layer/LayerManager;)V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    .line 57
    invoke-static {}, Landroidx/compose/ui/graphics/drawscope/DrawContextKt;->getDefaultDensity()Landroidx/compose/ui/unit/Density;

    move-result-object p2

    iput-object p2, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->density:Landroidx/compose/ui/unit/Density;

    .line 58
    sget-object p2, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    iput-object p2, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 59
    sget-object p2, Landroidx/compose/ui/graphics/layer/GraphicsLayer$drawBlock$1;->INSTANCE:Landroidx/compose/ui/graphics/layer/GraphicsLayer$drawBlock$1;

    iput-object p2, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->drawBlock:Lkotlin/jvm/functions/Function1;

    const/4 p2, 0x1

    .line 62
    iput-boolean p2, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->outlineDirty:Z

    .line 63
    sget-object p2, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->roundRectOutlineTopLeft:J

    .line 64
    sget-object v0, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Size$Companion;->getUnspecified-NH-jbRc()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->roundRectOutlineSize:J

    .line 79
    new-instance v0, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;-><init>()V

    iput-object v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->childDependenciesTracker:Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;

    const/4 v0, 0x0

    .line 82
    invoke-interface {p1, v0}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->setClip(Z)V

    .line 115
    sget-object p1, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntOffset$Companion;->getZero-nOcc-ac()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->topLeft:J

    .line 131
    sget-object p1, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntSize$Companion;->getZero-YbymL2g()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->size:J

    .line 196
    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->pivotOffset:J

    return-void
.end method

.method private final addSubLayer(Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 0

    .line 429
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->childDependenciesTracker:Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->onDependencyAdded(Landroidx/compose/ui/graphics/layer/GraphicsLayer;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 430
    invoke-direct {p1}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->onAddedToParentLayer()V

    :cond_0
    return-void
.end method

.method private final configureOutline()V
    .locals 12

    .line 558
    iget-boolean v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->outlineDirty:Z

    if-eqz v0, :cond_5

    .line 559
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->getClip()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->getShadowElevation()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    goto :goto_0

    .line 561
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    invoke-interface {v0, v1}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->setOutline(Landroid/graphics/Outline;)V

    goto/16 :goto_2

    .line 563
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->outlinePath:Landroidx/compose/ui/graphics/Path;

    if-eqz v0, :cond_3

    .line 566
    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->updatePathOutline(Landroidx/compose/ui/graphics/Path;)Landroid/graphics/Outline;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->getAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Outline;->setAlpha(F)V

    move-object v1, v0

    .line 567
    :cond_2
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    invoke-interface {v0, v1}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->setOutline(Landroid/graphics/Outline;)V

    goto :goto_2

    .line 570
    :cond_3
    invoke-direct {p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->obtainAndroidOutline()Landroid/graphics/Outline;

    move-result-object v0

    .line 591
    iget-wide v1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->size:J

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntSizeKt;->toSize-ozmzZPI(J)J

    move-result-wide v1

    .line 592
    iget-wide v3, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->roundRectOutlineTopLeft:J

    .line 593
    iget-wide v5, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->roundRectOutlineSize:J

    const-wide v7, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long v7, v5, v7

    if-nez v7, :cond_4

    goto :goto_1

    :cond_4
    move-wide v1, v5

    :goto_1
    const/16 v5, 0x20

    shr-long v6, v3, v5

    long-to-int v6, v6

    .line 22
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    .line 26
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    const-wide v8, 0xffffffffL

    and-long/2addr v3, v8

    long-to-int v3, v3

    .line 22
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    .line 26
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 22
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    shr-long v10, v1, v5

    long-to-int v5, v10

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    add-float/2addr v6, v5

    .line 26
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 22
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    and-long/2addr v1, v8

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    add-float/2addr v3, v1

    .line 26
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 578
    iget v1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->roundRectCornerRadius:F

    move-object v2, v0

    move v3, v7

    move v7, v1

    .line 573
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 582
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->getAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Outline;->setAlpha(F)V

    .line 583
    iget-object v1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    invoke-interface {v1, v0}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->setOutline(Landroid/graphics/Outline;)V

    :cond_5
    :goto_2
    const/4 v0, 0x0

    .line 587
    iput-boolean v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->outlineDirty:Z

    return-void
.end method

.method private final discardContentIfReleasedAndHaveNoParentLayerUsages()V
    .locals 1

    .line 646
    iget-boolean v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->isReleased:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->parentLayerUsages:I

    if-nez v0, :cond_0

    .line 650
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->discardDisplayList$ui_graphics_release()V

    :cond_0
    return-void
.end method

.method private final obtainAndroidOutline()Landroid/graphics/Outline;
    .locals 1

    .line 632
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->androidOutline:Landroid/graphics/Outline;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Outline;

    invoke-direct {v0}, Landroid/graphics/Outline;-><init>()V

    iput-object v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->androidOutline:Landroid/graphics/Outline;

    :cond_0
    return-object v0
.end method

.method private final onAddedToParentLayer()V
    .locals 1

    .line 549
    iget v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->parentLayerUsages:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->parentLayerUsages:I

    return-void
.end method

.method private final onRemovedFromParentLayer()V
    .locals 1

    .line 553
    iget v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->parentLayerUsages:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->parentLayerUsages:I

    .line 554
    invoke-direct {p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->discardContentIfReleasedAndHaveNoParentLayerUsages()V

    return-void
.end method

.method private final recordInternal()V
    .locals 14

    .line 421
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->childDependenciesTracker:Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;

    .line 44
    invoke-static {v0}, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->access$getDependency$p(Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;)Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->access$setOldDependency$p(Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    .line 45
    invoke-static {v0}, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->access$getDependenciesSet$p(Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;)Landroidx/collection/MutableScatterSet;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 46
    invoke-virtual {v1}, Landroidx/collection/ScatterSet;->isNotEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 48
    invoke-static {v0}, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->access$getOldDependenciesSet$p(Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;)Landroidx/collection/MutableScatterSet;

    move-result-object v2

    if-nez v2, :cond_0

    .line 49
    invoke-static {}, Landroidx/collection/ScatterSetKt;->mutableScatterSetOf()Landroidx/collection/MutableScatterSet;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->access$setOldDependenciesSet$p(Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;Landroidx/collection/MutableScatterSet;)V

    .line 50
    :cond_0
    invoke-virtual {v2, v1}, Landroidx/collection/MutableScatterSet;->addAll(Landroidx/collection/ScatterSet;)Z

    .line 51
    invoke-virtual {v1}, Landroidx/collection/MutableScatterSet;->clear()V

    :cond_1
    const/4 v1, 0x1

    .line 54
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->access$setTrackingInProgress$p(Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;Z)V

    .line 424
    iget-object v1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    iget-object v2, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->density:Landroidx/compose/ui/unit/Density;

    iget-object v3, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    iget-object v4, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->drawBlock:Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, v2, v3, p0, v4}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->record(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/graphics/layer/GraphicsLayer;Lkotlin/jvm/functions/Function1;)V

    const/4 p0, 0x0

    .line 56
    invoke-static {v0, p0}, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->access$setTrackingInProgress$p(Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;Z)V

    .line 60
    invoke-static {v0}, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->access$getOldDependency$p(Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;)Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 422
    invoke-direct {v1}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->onRemovedFromParentLayer()V

    .line 61
    :cond_2
    invoke-static {v0}, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->access$getOldDependenciesSet$p(Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;)Landroidx/collection/MutableScatterSet;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 62
    invoke-virtual {v0}, Landroidx/collection/ScatterSet;->isNotEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 985
    iget-object v1, v0, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 989
    iget-object v2, v0, Landroidx/collection/ScatterSet;->metadata:[J

    .line 990
    array-length v3, v2

    add-int/lit8 v3, v3, -0x2

    if-ltz v3, :cond_6

    move v4, p0

    .line 993
    :goto_0
    aget-wide v5, v2, v4

    not-long v7, v5

    const/4 v9, 0x7

    shl-long/2addr v7, v9

    and-long/2addr v7, v5

    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v7, v9

    cmp-long v7, v7, v9

    if-eqz v7, :cond_5

    sub-int v7, v4, v3

    not-int v7, v7

    ushr-int/lit8 v7, v7, 0x1f

    const/16 v8, 0x8

    rsub-int/lit8 v7, v7, 0x8

    move v9, p0

    :goto_1
    if-ge v9, v7, :cond_4

    const-wide/16 v10, 0xff

    and-long/2addr v10, v5

    const-wide/16 v12, 0x80

    cmp-long v10, v10, v12

    if-gez v10, :cond_3

    shl-int/lit8 v10, v4, 0x3

    add-int/2addr v10, v9

    .line 272
    aget-object v10, v1, v10

    check-cast v10, Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 422
    invoke-direct {v10}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->onRemovedFromParentLayer()V

    :cond_3
    shr-long/2addr v5, v8

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_4
    if-ne v7, v8, :cond_6

    :cond_5
    if-eq v4, v3, :cond_6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 64
    :cond_6
    invoke-virtual {v0}, Landroidx/collection/MutableScatterSet;->clear()V

    :cond_7
    return-void
.end method

.method private final recreateDisplayListIfNeeded()V
    .locals 1

    .line 485
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    invoke-interface {v0}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->getHasDisplayList()Z

    move-result v0

    if-nez v0, :cond_0

    .line 487
    :try_start_0
    invoke-direct {p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->recordInternal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method private final resetOutlineParams()V
    .locals 2

    const/4 v0, 0x0

    .line 716
    iput-object v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->internalOutline:Landroidx/compose/ui/graphics/Outline;

    .line 717
    iput-object v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->outlinePath:Landroidx/compose/ui/graphics/Path;

    .line 718
    sget-object v0, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Size$Companion;->getUnspecified-NH-jbRc()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->roundRectOutlineSize:J

    .line 719
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->roundRectOutlineTopLeft:J

    const/4 v0, 0x0

    .line 720
    iput v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->roundRectCornerRadius:F

    const/4 v0, 0x1

    .line 721
    iput-boolean v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->outlineDirty:Z

    const/4 v0, 0x0

    .line 722
    iput-boolean v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->usePathForClip:Z

    return-void
.end method

.method private final setPosition-VbeCjmY(JJ)V
    .locals 1

    .line 390
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v0

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result p1

    invoke-interface {p0, v0, p1, p3, p4}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->setPosition-H0pRuoY(IIJ)V

    return-void
.end method

.method private final setSize-ozmzZPI(J)V
    .locals 2

    .line 133
    iget-wide v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->size:J

    invoke-static {v0, v1, p1, p2}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    iput-wide p1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->size:J

    .line 135
    iget-wide v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->topLeft:J

    invoke-direct {p0, v0, v1, p1, p2}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->setPosition-VbeCjmY(JJ)V

    .line 136
    iget-wide p1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->roundRectOutlineSize:J

    const-wide v0, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 137
    iput-boolean p1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->outlineDirty:Z

    .line 138
    invoke-direct {p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->configureOutline()V

    :cond_0
    return-void
.end method

.method private final transformCanvas(Landroid/graphics/Canvas;)V
    .locals 9

    .line 435
    iget-wide v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->topLeft:J

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v0

    int-to-float v0, v0

    .line 436
    iget-wide v1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->topLeft:J

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v1

    int-to-float v7, v1

    .line 437
    iget-wide v1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->topLeft:J

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v1

    int-to-float v1, v1

    iget-wide v2, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->size:J

    const/16 v4, 0x20

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-float v2, v2

    add-float v4, v1, v2

    .line 438
    iget-wide v1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->topLeft:J

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v1

    int-to-float v1, v1

    iget-wide v2, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->size:J

    const-wide v5, 0xffffffffL

    and-long/2addr v2, v5

    long-to-int v2, v2

    int-to-float v2, v2

    add-float v5, v1, v2

    .line 441
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->getAlpha()F

    move-result v1

    .line 442
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->getColorFilter()Landroidx/compose/ui/graphics/ColorFilter;

    move-result-object v2

    .line 443
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->getBlendMode-0nO6VwU()I

    move-result v3

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v6, v1, v6

    if-ltz v6, :cond_1

    .line 446
    sget-object v6, Landroidx/compose/ui/graphics/BlendMode;->Companion:Landroidx/compose/ui/graphics/BlendMode$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/BlendMode$Companion;->getSrcOver-0nO6VwU()I

    move-result v6

    invoke-static {v3, v6}, Landroidx/compose/ui/graphics/BlendMode;->equals-impl0(II)Z

    move-result v6

    if-eqz v6, :cond_1

    if-nez v2, :cond_1

    .line 448
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->getCompositingStrategy-ke2Ky5w()I

    move-result v6

    sget-object v8, Landroidx/compose/ui/graphics/layer/CompositingStrategy;->Companion:Landroidx/compose/ui/graphics/layer/CompositingStrategy$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/layer/CompositingStrategy$Companion;->getOffscreen-ke2Ky5w()I

    move-result v8

    invoke-static {v6, v8}, Landroidx/compose/ui/graphics/layer/CompositingStrategy;->equals-impl0(II)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    .line 458
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    goto :goto_1

    .line 451
    :cond_1
    :goto_0
    iget-object v6, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->softwareLayerPaint:Landroidx/compose/ui/graphics/Paint;

    if-nez v6, :cond_2

    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPaint_androidKt;->Paint()Landroidx/compose/ui/graphics/Paint;

    move-result-object v6

    iput-object v6, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->softwareLayerPaint:Landroidx/compose/ui/graphics/Paint;

    .line 452
    :cond_2
    invoke-interface {v6, v1}, Landroidx/compose/ui/graphics/Paint;->setAlpha(F)V

    .line 453
    invoke-interface {v6, v3}, Landroidx/compose/ui/graphics/Paint;->setBlendMode-s9anfk8(I)V

    .line 454
    invoke-interface {v6, v2}, Landroidx/compose/ui/graphics/Paint;->setColorFilter(Landroidx/compose/ui/graphics/ColorFilter;)V

    .line 456
    invoke-interface {v6}, Landroidx/compose/ui/graphics/Paint;->asFrameworkPaint()Landroid/graphics/Paint;

    move-result-object v6

    move-object v1, p1

    move v2, v0

    move v3, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    .line 462
    :goto_1
    invoke-virtual {p1, v0, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 463
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    invoke-interface {p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->calculateMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private final updatePathOutline(Landroidx/compose/ui/graphics/Path;)Landroid/graphics/Outline;
    .locals 2

    .line 610
    invoke-direct {p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->obtainAndroidOutline()Landroid/graphics/Outline;

    move-result-object v0

    .line 612
    sget-object v1, Landroidx/compose/ui/graphics/layer/OutlineVerificationHelper;->INSTANCE:Landroidx/compose/ui/graphics/layer/OutlineVerificationHelper;

    invoke-virtual {v1, v0, p1}, Landroidx/compose/ui/graphics/layer/OutlineVerificationHelper;->setPath(Landroid/graphics/Outline;Landroidx/compose/ui/graphics/Path;)V

    .line 616
    invoke-virtual {v0}, Landroid/graphics/Outline;->canClip()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->usePathForClip:Z

    .line 623
    iput-object p1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->outlinePath:Landroidx/compose/ui/graphics/Path;

    return-object v0
.end method


# virtual methods
.method public final discardDisplayList$ui_graphics_release()V
    .locals 15

    .line 661
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->childDependenciesTracker:Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;

    .line 104
    invoke-static {v0}, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->access$getDependency$p(Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;)Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 661
    invoke-direct {v1}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->onRemovedFromParentLayer()V

    const/4 v1, 0x0

    .line 106
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->access$setDependency$p(Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    .line 108
    :cond_0
    invoke-static {v0}, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->access$getDependenciesSet$p(Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;)Landroidx/collection/MutableScatterSet;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1074
    iget-object v1, v0, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 1078
    iget-object v2, v0, Landroidx/collection/ScatterSet;->metadata:[J

    .line 1079
    array-length v3, v2

    add-int/lit8 v3, v3, -0x2

    if-ltz v3, :cond_4

    const/4 v4, 0x0

    move v5, v4

    .line 1082
    :goto_0
    aget-wide v6, v2, v5

    not-long v8, v6

    const/4 v10, 0x7

    shl-long/2addr v8, v10

    and-long/2addr v8, v6

    const-wide v10, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v8, v10

    cmp-long v8, v8, v10

    if-eqz v8, :cond_3

    sub-int v8, v5, v3

    not-int v8, v8

    ushr-int/lit8 v8, v8, 0x1f

    const/16 v9, 0x8

    rsub-int/lit8 v8, v8, 0x8

    move v10, v4

    :goto_1
    if-ge v10, v8, :cond_2

    const-wide/16 v11, 0xff

    and-long/2addr v11, v6

    const-wide/16 v13, 0x80

    cmp-long v11, v11, v13

    if-gez v11, :cond_1

    shl-int/lit8 v11, v5, 0x3

    add-int/2addr v11, v10

    .line 272
    aget-object v11, v1, v11

    check-cast v11, Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 661
    invoke-direct {v11}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->onRemovedFromParentLayer()V

    :cond_1
    shr-long/2addr v6, v9

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    if-ne v8, v9, :cond_4

    :cond_3
    if-eq v5, v3, :cond_4

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 110
    :cond_4
    invoke-virtual {v0}, Landroidx/collection/MutableScatterSet;->clear()V

    .line 662
    :cond_5
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    invoke-interface {p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->discardDisplayList()V

    return-void
.end method

.method public final draw$ui_graphics_release(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 9

    .line 496
    iget-boolean v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->isReleased:Z

    if-eqz v0, :cond_0

    return-void

    .line 500
    :cond_0
    invoke-direct {p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->recreateDisplayListIfNeeded()V

    .line 502
    invoke-direct {p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->configureOutline()V

    .line 503
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->getShadowElevation()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    .line 505
    invoke-interface {p1}, Landroidx/compose/ui/graphics/Canvas;->enableZ()V

    .line 507
    :cond_2
    invoke-static {p1}, Landroidx/compose/ui/graphics/AndroidCanvas_androidKt;->getNativeCanvas(Landroidx/compose/ui/graphics/Canvas;)Landroid/graphics/Canvas;

    move-result-object v3

    .line 508
    invoke-virtual {v3}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v4

    if-nez v4, :cond_3

    .line 510
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 511
    invoke-direct {p0, v3}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->transformCanvas(Landroid/graphics/Canvas;)V

    .line 514
    :cond_3
    iget-boolean v5, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->usePathForClip:Z

    if-nez v5, :cond_5

    if-nez v4, :cond_4

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->getClip()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :cond_5
    :goto_1
    if-eqz v1, :cond_9

    .line 516
    invoke-interface {p1}, Landroidx/compose/ui/graphics/Canvas;->save()V

    .line 517
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->getOutline()Landroidx/compose/ui/graphics/Outline;

    move-result-object v5

    .line 518
    instance-of v6, v5, Landroidx/compose/ui/graphics/Outline$Rectangle;

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-eqz v6, :cond_6

    .line 519
    invoke-virtual {v5}, Landroidx/compose/ui/graphics/Outline;->getBounds()Landroidx/compose/ui/geometry/Rect;

    move-result-object v5

    invoke-static {p1, v5, v2, v7, v8}, Landroidx/compose/ui/graphics/Canvas;->clipRect-mtrdD-E$default(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/geometry/Rect;IILjava/lang/Object;)V

    goto :goto_3

    .line 521
    :cond_6
    instance-of v6, v5, Landroidx/compose/ui/graphics/Outline$Rounded;

    if-eqz v6, :cond_8

    .line 523
    iget-object v6, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->roundRectClipPath:Landroidx/compose/ui/graphics/Path;

    if-eqz v6, :cond_7

    invoke-interface {v6}, Landroidx/compose/ui/graphics/Path;->rewind()V

    goto :goto_2

    .line 524
    :cond_7
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/Path;

    move-result-object v6

    iput-object v6, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->roundRectClipPath:Landroidx/compose/ui/graphics/Path;

    .line 525
    :goto_2
    check-cast v5, Landroidx/compose/ui/graphics/Outline$Rounded;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/Outline$Rounded;->getRoundRect()Landroidx/compose/ui/geometry/RoundRect;

    move-result-object v5

    invoke-static {v6, v5, v8, v7, v8}, Landroidx/compose/ui/graphics/Path;->addRoundRect$default(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/geometry/RoundRect;Landroidx/compose/ui/graphics/Path$Direction;ILjava/lang/Object;)V

    .line 526
    invoke-static {p1, v6, v2, v7, v8}, Landroidx/compose/ui/graphics/Canvas;->clipPath-mtrdD-E$default(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/Path;IILjava/lang/Object;)V

    goto :goto_3

    .line 528
    :cond_8
    instance-of v6, v5, Landroidx/compose/ui/graphics/Outline$Generic;

    if-eqz v6, :cond_9

    .line 529
    check-cast v5, Landroidx/compose/ui/graphics/Outline$Generic;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/Outline$Generic;->getPath()Landroidx/compose/ui/graphics/Path;

    move-result-object v5

    invoke-static {p1, v5, v2, v7, v8}, Landroidx/compose/ui/graphics/Canvas;->clipPath-mtrdD-E$default(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/Path;IILjava/lang/Object;)V

    :cond_9
    :goto_3
    if-eqz p2, :cond_a

    .line 534
    invoke-direct {p2, p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->addSubLayer(Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    .line 536
    :cond_a
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    invoke-interface {p0, p1}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->draw(Landroidx/compose/ui/graphics/Canvas;)V

    if-eqz v1, :cond_b

    .line 538
    invoke-interface {p1}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    :cond_b
    if-eqz v0, :cond_c

    .line 541
    invoke-interface {p1}, Landroidx/compose/ui/graphics/Canvas;->disableZ()V

    :cond_c
    if-nez v4, :cond_d

    .line 544
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    :cond_d
    return-void
.end method

.method public final getAlpha()F
    .locals 0

    .line 151
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    invoke-interface {p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->getAlpha()F

    move-result p0

    return p0
.end method

.method public final getBlendMode-0nO6VwU()I
    .locals 0

    .line 167
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    invoke-interface {p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->getBlendMode-0nO6VwU()I

    move-result p0

    return p0
.end method

.method public final getClip()Z
    .locals 0

    .line 353
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    invoke-interface {p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->getClip()Z

    move-result p0

    return p0
.end method

.method public final getColorFilter()Landroidx/compose/ui/graphics/ColorFilter;
    .locals 0

    .line 182
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    invoke-interface {p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->getColorFilter()Landroidx/compose/ui/graphics/ColorFilter;

    move-result-object p0

    return-object p0
.end method

.method public final getCompositingStrategy-ke2Ky5w()I
    .locals 0

    .line 102
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    invoke-interface {p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->getCompositingStrategy-ke2Ky5w()I

    move-result p0

    return p0
.end method

.method public final getOutline()Landroidx/compose/ui/graphics/Outline;
    .locals 14

    .line 690
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->internalOutline:Landroidx/compose/ui/graphics/Outline;

    .line 691
    iget-object v1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->outlinePath:Landroidx/compose/ui/graphics/Path;

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    if-eqz v1, :cond_1

    .line 695
    new-instance v0, Landroidx/compose/ui/graphics/Outline$Generic;

    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/Outline$Generic;-><init>(Landroidx/compose/ui/graphics/Path;)V

    iput-object v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->internalOutline:Landroidx/compose/ui/graphics/Outline;

    goto :goto_2

    .line 591
    :cond_1
    iget-wide v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->size:J

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSizeKt;->toSize-ozmzZPI(J)J

    move-result-wide v0

    .line 592
    iget-wide v2, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->roundRectOutlineTopLeft:J

    .line 593
    iget-wide v4, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->roundRectOutlineSize:J

    const-wide v6, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long v6, v4, v6

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    move-wide v0, v4

    :goto_0
    const/16 v4, 0x20

    shr-long v5, v2, v4

    long-to-int v5, v5

    .line 22
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    const-wide v7, 0xffffffffL

    and-long/2addr v2, v7

    long-to-int v2, v2

    .line 22
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    shr-long v9, v0, v4

    long-to-int v3, v9

    .line 22
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    add-float/2addr v3, v6

    and-long/2addr v0, v7

    long-to-int v0, v0

    .line 22
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    add-float v9, v2, v0

    .line 702
    iget v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->roundRectCornerRadius:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_3

    .line 704
    new-instance v1, Landroidx/compose/ui/graphics/Outline$Rounded;

    .line 53
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    int-to-long v10, v5

    .line 54
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v12, v0

    shl-long v4, v10, v4

    and-long/2addr v7, v12

    or-long/2addr v4, v7

    .line 33
    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/CornerRadius;->constructor-impl(J)J

    move-result-wide v10

    move v7, v2

    move v8, v3

    .line 705
    invoke-static/range {v6 .. v11}, Landroidx/compose/ui/geometry/RoundRectKt;->RoundRect-gG7oq9Y(FFFFJ)Landroidx/compose/ui/geometry/RoundRect;

    move-result-object v0

    .line 704
    invoke-direct {v1, v0}, Landroidx/compose/ui/graphics/Outline$Rounded;-><init>(Landroidx/compose/ui/geometry/RoundRect;)V

    move-object v0, v1

    goto :goto_1

    .line 708
    :cond_3
    new-instance v0, Landroidx/compose/ui/graphics/Outline$Rectangle;

    new-instance v1, Landroidx/compose/ui/geometry/Rect;

    invoke-direct {v1, v6, v2, v3, v9}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/Outline$Rectangle;-><init>(Landroidx/compose/ui/geometry/Rect;)V

    .line 711
    :goto_1
    iput-object v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->internalOutline:Landroidx/compose/ui/graphics/Outline;

    :goto_2
    return-object v0
.end method

.method public final getPivotOffset-F1C5BW0()J
    .locals 2

    .line 196
    iget-wide v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->pivotOffset:J

    return-wide v0
.end method

.method public final getRotationX()F
    .locals 0

    .line 284
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    invoke-interface {p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->getRotationX()F

    move-result p0

    return p0
.end method

.method public final getRotationY()F
    .locals 0

    .line 298
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    invoke-interface {p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->getRotationY()F

    move-result p0

    return p0
.end method

.method public final getRotationZ()F
    .locals 0

    .line 309
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    invoke-interface {p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->getRotationZ()F

    move-result p0

    return p0
.end method

.method public final getScaleX()F
    .locals 0

    .line 210
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    invoke-interface {p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->getScaleX()F

    move-result p0

    return p0
.end method

.method public final getScaleY()F
    .locals 0

    .line 223
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    invoke-interface {p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->getScaleY()F

    move-result p0

    return p0
.end method

.method public final getShadowElevation()F
    .locals 0

    .line 267
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    invoke-interface {p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->getShadowElevation()F

    move-result p0

    return p0
.end method

.method public final getSize-YbymL2g()J
    .locals 2

    .line 131
    iget-wide v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->size:J

    return-wide v0
.end method

.method public final getTopLeft-nOcc-ac()J
    .locals 2

    .line 115
    iget-wide v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->topLeft:J

    return-wide v0
.end method

.method public final getTranslationX()F
    .locals 0

    .line 236
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    invoke-interface {p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->getTranslationX()F

    move-result p0

    return p0
.end method

.method public final getTranslationY()F
    .locals 0

    .line 249
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    invoke-interface {p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->getTranslationY()F

    move-result p0

    return p0
.end method

.method public final isReleased()Z
    .locals 0

    .line 89
    iget-boolean p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->isReleased:Z

    return p0
.end method

.method public final record-mL-hObY(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;JLkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 412
    invoke-direct {p0, p3, p4}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->setSize-ozmzZPI(J)V

    .line 413
    iput-object p1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->density:Landroidx/compose/ui/unit/Density;

    .line 414
    iput-object p2, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 415
    iput-object p5, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->drawBlock:Lkotlin/jvm/functions/Function1;

    .line 416
    iget-object p1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->setInvalidated(Z)V

    .line 417
    invoke-direct {p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->recordInternal()V

    return-void
.end method

.method public final release$ui_graphics_release()V
    .locals 1

    .line 639
    iget-boolean v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->isReleased:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 640
    iput-boolean v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->isReleased:Z

    .line 641
    invoke-direct {p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->discardContentIfReleasedAndHaveNoParentLayerUsages()V

    :cond_0
    return-void
.end method

.method public final setAlpha(F)V
    .locals 1

    .line 153
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    invoke-interface {v0}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->getAlpha()F

    move-result v0

    cmpg-float v0, v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 154
    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    invoke-interface {p0, p1}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method public final setAmbientShadowColor-8_81llA(J)V
    .locals 2

    .line 796
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    invoke-interface {v0}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->getAmbientShadowColor-0d7_KjU()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 797
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    invoke-interface {p0, p1, p2}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->setAmbientShadowColor-8_81llA(J)V

    :cond_0
    return-void
.end method

.method public final setCameraDistance(F)V
    .locals 1

    .line 340
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    invoke-interface {v0}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->getCameraDistance()F

    move-result v0

    cmpg-float v0, v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 341
    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    invoke-interface {p0, p1}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->setCameraDistance(F)V

    :goto_0
    return-void
.end method

.method public final setClip(Z)V
    .locals 1

    .line 355
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    invoke-interface {v0}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->getClip()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 356
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    invoke-interface {v0, p1}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->setClip(Z)V

    const/4 p1, 0x1

    .line 357
    iput-boolean p1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->outlineDirty:Z

    .line 358
    invoke-direct {p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->configureOutline()V

    :cond_0
    return-void
.end method

.method public final setCompositingStrategy-Wpw9cng(I)V
    .locals 1

    .line 104
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    invoke-interface {v0}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->getCompositingStrategy-ke2Ky5w()I

    move-result v0

    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/layer/CompositingStrategy;->equals-impl0(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    invoke-interface {p0, p1}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->setCompositingStrategy-Wpw9cng(I)V

    :cond_0
    return-void
.end method

.method public final setPathOutline(Landroidx/compose/ui/graphics/Path;)V
    .locals 0

    .line 733
    invoke-direct {p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->resetOutlineParams()V

    .line 734
    iput-object p1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->outlinePath:Landroidx/compose/ui/graphics/Path;

    .line 735
    invoke-direct {p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->configureOutline()V

    return-void
.end method

.method public final setPivotOffset-k-4lQ0M(J)V
    .locals 2

    .line 198
    iget-wide v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->pivotOffset:J

    invoke-static {v0, v1, p1, p2}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    iput-wide p1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->pivotOffset:J

    .line 200
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    invoke-interface {p0, p1, p2}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->setPivotOffset-k-4lQ0M(J)V

    :cond_0
    return-void
.end method

.method public final setRectOutline-tz77jQw(JJ)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 777
    invoke-virtual/range {v0 .. v5}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->setRoundRectOutline-TNW_H78(JJF)V

    return-void
.end method

.method public final setRenderEffect(Landroidx/compose/ui/graphics/RenderEffect;)V
    .locals 1

    .line 376
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    invoke-interface {v0}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->getRenderEffect()Landroidx/compose/ui/graphics/RenderEffect;

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 377
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    invoke-interface {p0, p1}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->setRenderEffect(Landroidx/compose/ui/graphics/RenderEffect;)V

    :cond_0
    return-void
.end method

.method public final setRotationX(F)V
    .locals 1

    .line 286
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    invoke-interface {v0}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->getRotationX()F

    move-result v0

    cmpg-float v0, v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 287
    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    invoke-interface {p0, p1}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->setRotationX(F)V

    :goto_0
    return-void
.end method

.method public final setRotationY(F)V
    .locals 1

    .line 300
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    invoke-interface {v0}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->getRotationY()F

    move-result v0

    cmpg-float v0, v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 301
    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    invoke-interface {p0, p1}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->setRotationY(F)V

    :goto_0
    return-void
.end method

.method public final setRotationZ(F)V
    .locals 1

    .line 311
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    invoke-interface {v0}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->getRotationZ()F

    move-result v0

    cmpg-float v0, v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 312
    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    invoke-interface {p0, p1}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->setRotationZ(F)V

    :goto_0
    return-void
.end method

.method public final setRoundRectOutline-TNW_H78(JJF)V
    .locals 2

    .line 752
    iget-wide v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->roundRectOutlineTopLeft:J

    invoke-static {v0, v1, p1, p2}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 753
    iget-wide v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->roundRectOutlineSize:J

    invoke-static {v0, v1, p3, p4}, Landroidx/compose/ui/geometry/Size;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 754
    iget v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->roundRectCornerRadius:F

    cmpg-float v0, v0, p5

    if-nez v0, :cond_0

    .line 755
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->outlinePath:Landroidx/compose/ui/graphics/Path;

    if-eqz v0, :cond_1

    .line 757
    :cond_0
    invoke-direct {p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->resetOutlineParams()V

    .line 758
    iput-wide p1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->roundRectOutlineTopLeft:J

    .line 759
    iput-wide p3, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->roundRectOutlineSize:J

    .line 760
    iput p5, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->roundRectCornerRadius:F

    .line 761
    invoke-direct {p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->configureOutline()V

    :cond_1
    return-void
.end method

.method public final setScaleX(F)V
    .locals 1

    .line 212
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    invoke-interface {v0}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->getScaleX()F

    move-result v0

    cmpg-float v0, v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 213
    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    invoke-interface {p0, p1}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->setScaleX(F)V

    :goto_0
    return-void
.end method

.method public final setScaleY(F)V
    .locals 1

    .line 225
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    invoke-interface {v0}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->getScaleY()F

    move-result v0

    cmpg-float v0, v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 226
    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    invoke-interface {p0, p1}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->setScaleY(F)V

    :goto_0
    return-void
.end method

.method public final setShadowElevation(F)V
    .locals 3

    .line 269
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    invoke-interface {v0}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->getShadowElevation()F

    move-result v0

    cmpg-float v0, v0, p1

    if-nez v0, :cond_0

    goto :goto_2

    .line 270
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    invoke-interface {v0, p1}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->setShadowElevation(F)V

    .line 271
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->getClip()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move p1, v2

    :goto_1
    invoke-interface {v0, p1}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->setClip(Z)V

    .line 272
    iput-boolean v2, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->outlineDirty:Z

    .line 273
    invoke-direct {p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->configureOutline()V

    :goto_2
    return-void
.end method

.method public final setSpotShadowColor-8_81llA(J)V
    .locals 2

    .line 817
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    invoke-interface {v0}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->getSpotShadowColor-0d7_KjU()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 818
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    invoke-interface {p0, p1, p2}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->setSpotShadowColor-8_81llA(J)V

    :cond_0
    return-void
.end method

.method public final setTopLeft--gyyYBs(J)V
    .locals 2

    .line 117
    iget-wide v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->topLeft:J

    invoke-static {v0, v1, p1, p2}, Landroidx/compose/ui/unit/IntOffset;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    iput-wide p1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->topLeft:J

    .line 119
    iget-wide v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->size:J

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->setPosition-VbeCjmY(JJ)V

    :cond_0
    return-void
.end method

.method public final setTranslationX(F)V
    .locals 1

    .line 238
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    invoke-interface {v0}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->getTranslationX()F

    move-result v0

    cmpg-float v0, v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 239
    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    invoke-interface {p0, p1}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->setTranslationX(F)V

    :goto_0
    return-void
.end method

.method public final setTranslationY(F)V
    .locals 1

    .line 251
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    invoke-interface {v0}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->getTranslationY()F

    move-result v0

    cmpg-float v0, v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 252
    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    invoke-interface {p0, p1}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->setTranslationY(F)V

    :goto_0
    return-void
.end method
