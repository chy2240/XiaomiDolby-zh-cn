.class public final Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;
.super Ljava/lang/Object;
.source "LazyLayoutItemAnimator.kt"


# instance fields
.field private final disappearingItems:Ljava/util/List;

.field private displayingNode:Landroidx/compose/ui/node/DrawModifierNode;

.field private firstVisibleIndex:I

.field private keyIndexMap:Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

.field private final keyToItemInfoMap:Landroidx/collection/MutableScatterMap;

.field private final modifier:Landroidx/compose/ui/Modifier;

.field private final movingAwayKeys:Landroidx/collection/MutableScatterSet;

.field private final movingAwayToEndBound:Ljava/util/List;

.field private final movingAwayToStartBound:Ljava/util/List;

.field private final movingInFromEndBound:Ljava/util/List;

.field private final movingInFromStartBound:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {}, Landroidx/collection/ScatterMapKt;->mutableScatterMapOf()Landroidx/collection/MutableScatterMap;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->keyToItemInfoMap:Landroidx/collection/MutableScatterMap;

    .line 57
    invoke-static {}, Landroidx/collection/ScatterSetKt;->mutableScatterSetOf()Landroidx/collection/MutableScatterSet;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingAwayKeys:Landroidx/collection/MutableScatterSet;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingInFromStartBound:Ljava/util/List;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingInFromEndBound:Ljava/util/List;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingAwayToStartBound:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingAwayToEndBound:Ljava/util/List;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->disappearingItems:Ljava/util/List;

    .line 442
    new-instance v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$DisplayingDisappearingItemsElement;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$DisplayingDisappearingItemsElement;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;)V

    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->modifier:Landroidx/compose/ui/Modifier;

    return-void
.end method

.method public static final synthetic access$getCrossAxisOffset(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;)I
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->getCrossAxisOffset(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getDisappearingItems$p(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;)Ljava/util/List;
    .locals 0

    .line 46
    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->disappearingItems:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$setDisplayingNode$p(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;Landroidx/compose/ui/node/DrawModifierNode;)V
    .locals 0

    .line 46
    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->displayingNode:Landroidx/compose/ui/node/DrawModifierNode;

    return-void
.end method

.method private final getCrossAxisOffset(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;)I
    .locals 2

    const/4 p0, 0x0

    .line 459
    invoke-interface {p1, p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getOffset-Bjo55l4(I)J

    move-result-wide v0

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->isVertical()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result p0

    :goto_0
    return p0
.end method

.method private final getHasAnimations(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;)Z
    .locals 3

    .line 446
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getPlaceablesCount()I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_0

    .line 447
    invoke-interface {p1, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getParentData(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimatorKt;->access$getSpecs(Ljava/lang/Object;)Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimationSpecsNode;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private final getMainAxisOffset(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;)I
    .locals 2

    const/4 p0, 0x0

    .line 456
    invoke-interface {p1, p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getOffset-Bjo55l4(I)J

    move-result-wide v0

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->isVertical()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result p0

    :goto_0
    return p0
.end method

.method private final initializeAnimation(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;ILandroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;)V
    .locals 6

    const/4 p0, 0x0

    .line 376
    invoke-interface {p1, p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getOffset-Bjo55l4(I)J

    move-result-wide v0

    .line 379
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->isVertical()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    move v3, p2

    .line 380
    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/unit/IntOffset;->copy-iSbpLlY$default(JIIILjava/lang/Object;)J

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v3, 0x0

    move v2, p2

    .line 382
    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/unit/IntOffset;->copy-iSbpLlY$default(JIIILjava/lang/Object;)J

    .line 386
    :goto_0
    invoke-virtual {p3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->getAnimations()[Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    move-result-object p1

    .line 722
    array-length p2, p1

    :goto_1
    if-ge p0, p2, :cond_1

    aget-object p3, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method static synthetic initializeAnimation$default(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;ILandroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 374
    iget-object p3, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->keyToItemInfoMap:Landroidx/collection/MutableScatterMap;

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p3, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;

    .line 371
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->initializeAnimation(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;ILandroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;)V

    return-void
.end method

.method private final releaseAnimations()V
    .locals 14

    .line 363
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->keyToItemInfoMap:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v0}, Landroidx/collection/ScatterMap;->isNotEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 364
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->keyToItemInfoMap:Landroidx/collection/MutableScatterMap;

    .line 372
    iget-object v1, v0, Landroidx/collection/ScatterMap;->values:[Ljava/lang/Object;

    .line 329
    iget-object v0, v0, Landroidx/collection/ScatterMap;->metadata:[J

    .line 330
    array-length v2, v0

    add-int/lit8 v2, v2, -0x2

    if-ltz v2, :cond_3

    const/4 v3, 0x0

    move v4, v3

    .line 333
    :goto_0
    aget-wide v5, v0, v4

    not-long v7, v5

    const/4 v9, 0x7

    shl-long/2addr v7, v9

    and-long/2addr v7, v5

    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v7, v9

    cmp-long v7, v7, v9

    if-eqz v7, :cond_2

    sub-int v7, v4, v2

    not-int v7, v7

    ushr-int/lit8 v7, v7, 0x1f

    const/16 v8, 0x8

    rsub-int/lit8 v7, v7, 0x8

    move v9, v3

    :goto_1
    if-ge v9, v7, :cond_1

    const-wide/16 v10, 0xff

    and-long/2addr v10, v5

    const-wide/16 v12, 0x80

    cmp-long v10, v10, v12

    if-gez v10, :cond_0

    shl-int/lit8 v10, v4, 0x3

    add-int/2addr v10, v9

    .line 374
    aget-object v10, v1, v10

    check-cast v10, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;

    .line 365
    invoke-virtual {v10}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->getAnimations()[Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    move-result-object v10

    .line 13579
    array-length v11, v10

    move v12, v3

    :goto_2
    if-ge v12, v11, :cond_0

    aget-object v13, v10, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_0
    shr-long/2addr v5, v8

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    if-ne v7, v8, :cond_3

    :cond_2
    if-eq v4, v2, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 367
    :cond_3
    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->keyToItemInfoMap:Landroidx/collection/MutableScatterMap;

    invoke-virtual {p0}, Landroidx/collection/MutableScatterMap;->clear()V

    :cond_4
    return-void
.end method

.method private final removeInfoForKey(Ljava/lang/Object;)V
    .locals 2

    .line 349
    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->keyToItemInfoMap:Landroidx/collection/MutableScatterMap;

    invoke-virtual {p0, p1}, Landroidx/collection/MutableScatterMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->getAnimations()[Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 13579
    array-length p1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    aget-object v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final startPlacementAnimationsIfNeeded(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;Z)V
    .locals 1

    .line 396
    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->keyToItemInfoMap:Landroidx/collection/MutableScatterMap;

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;

    .line 397
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->getAnimations()[Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    move-result-object p0

    .line 725
    array-length p1, p0

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    aget-object v0, p0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic startPlacementAnimationsIfNeeded$default(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 395
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->startPlacementAnimationsIfNeeded(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;Z)V

    return-void
.end method

.method private final updateAndReturnOffsetFor([ILandroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;)I
    .locals 4

    .line 416
    invoke-interface {p2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getLane()I

    move-result p0

    .line 417
    invoke-interface {p2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getSpan()I

    move-result v0

    add-int/2addr v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge p0, v0, :cond_0

    .line 420
    aget v2, p1, p0

    invoke-interface {p2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getMainAxisSizeWithSpacings()I

    move-result v3

    add-int/2addr v2, v3

    aput v2, p1, p0

    .line 421
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method


# virtual methods
.method public final getAnimation(Ljava/lang/Object;I)Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;
    .locals 0

    .line 413
    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->keyToItemInfoMap:Landroidx/collection/MutableScatterMap;

    invoke-virtual {p0, p1}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->getAnimations()[Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    move-result-object p0

    if-eqz p0, :cond_0

    aget-object p0, p0, p2

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getMinSizeToFitDisappearingItems-YbymL2g()J
    .locals 12

    .line 428
    sget-object v0, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntSize$Companion;->getZero-YbymL2g()J

    move-result-wide v0

    .line 429
    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->disappearingItems:Ljava/util/List;

    .line 34
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 35
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 36
    check-cast v4, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    .line 430
    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->getLayer()Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    move-result-object v5

    if-eqz v5, :cond_0

    const/16 v6, 0x20

    shr-long v7, v0, v6

    long-to-int v7, v7

    .line 434
    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->getRawOffset-nOcc-ac()J

    move-result-wide v8

    invoke-static {v8, v9}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v8

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->getSize-YbymL2g()J

    move-result-wide v9

    shr-long/2addr v9, v6

    long-to-int v9, v9

    add-int/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    const-wide v8, 0xffffffffL

    and-long/2addr v0, v8

    long-to-int v0, v0

    .line 435
    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->getRawOffset-nOcc-ac()J

    move-result-wide v10

    invoke-static {v10, v11}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v1

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->getSize-YbymL2g()J

    move-result-wide v4

    and-long/2addr v4, v8

    long-to-int v4, v4

    add-int/2addr v1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v4, v7

    shl-long/2addr v4, v6

    int-to-long v0, v0

    and-long/2addr v0, v8

    or-long/2addr v0, v4

    .line 30
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSize;->constructor-impl(J)J

    move-result-wide v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public final getModifier()Landroidx/compose/ui/Modifier;
    .locals 0

    .line 442
    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->modifier:Landroidx/compose/ui/Modifier;

    return-object p0
.end method

.method public final onMeasured(IIILjava/util/List;Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItemProvider;ZZIZIILkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;)V
    .locals 39

    move-object/from16 v6, p0

    move/from16 v0, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move/from16 v11, p9

    const/4 v12, 0x1

    .line 86
    iget-object v13, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->keyIndexMap:Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    .line 87
    iput-object v10, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->keyIndexMap:Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    .line 34
    invoke-interface/range {p4 .. p4}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v14, 0x0

    move v2, v14

    :goto_0
    if-ge v2, v1, :cond_1

    .line 35
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 102
    check-cast v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    .line 89
    invoke-direct {v6, v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->getHasAnimations(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/2addr v2, v12

    goto :goto_0

    .line 90
    :cond_1
    iget-object v1, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->keyToItemInfoMap:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v1}, Landroidx/collection/ScatterMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 92
    invoke-direct/range {p0 .. p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->releaseAnimations()V

    return-void

    .line 96
    :cond_2
    :goto_1
    iget v1, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->firstVisibleIndex:I

    .line 97
    invoke-static/range {p4 .. p4}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getIndex()I

    move-result v2

    goto :goto_2

    :cond_3
    move v2, v14

    :goto_2
    iput v2, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->firstVisibleIndex:I

    const-wide v2, 0xffffffffL

    const/16 v4, 0x20

    if-eqz p7, :cond_4

    move-object/from16 v16, v13

    int-to-long v12, v14

    shl-long v4, v12, v4

    int-to-long v12, v0

    and-long/2addr v2, v12

    or-long/2addr v2, v4

    .line 32
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntOffset;->constructor-impl(J)J

    goto :goto_3

    :cond_4
    move-object/from16 v16, v13

    int-to-long v12, v0

    shl-long v4, v12, v4

    int-to-long v12, v14

    and-long/2addr v2, v12

    or-long/2addr v2, v4

    .line 32
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntOffset;->constructor-impl(J)J

    :goto_3
    if-nez p8, :cond_6

    if-nez p10, :cond_5

    goto :goto_4

    :cond_5
    move v12, v14

    goto :goto_5

    :cond_6
    :goto_4
    const/4 v12, 0x1

    .line 111
    :goto_5
    iget-object v0, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->keyToItemInfoMap:Landroidx/collection/MutableScatterMap;

    .line 365
    iget-object v2, v0, Landroidx/collection/ScatterMap;->keys:[Ljava/lang/Object;

    .line 329
    iget-object v0, v0, Landroidx/collection/ScatterMap;->metadata:[J

    .line 330
    array-length v3, v0

    const/4 v13, 0x2

    sub-int/2addr v3, v13

    const-wide/16 v17, 0x80

    const-wide/16 v19, 0xff

    const/16 v21, 0x7

    const-wide v22, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    if-ltz v3, :cond_a

    move v4, v14

    .line 333
    :goto_6
    aget-wide v13, v0, v4

    not-long v5, v13

    shl-long v5, v5, v21

    and-long/2addr v5, v13

    and-long v5, v5, v22

    cmp-long v5, v5, v22

    if-eqz v5, :cond_9

    sub-int v5, v4, v3

    not-int v5, v5

    ushr-int/lit8 v5, v5, 0x1f

    const/16 v6, 0x8

    rsub-int/lit8 v5, v5, 0x8

    const/4 v6, 0x0

    :goto_7
    if-ge v6, v5, :cond_8

    and-long v24, v13, v19

    cmp-long v24, v24, v17

    if-gez v24, :cond_7

    shl-int/lit8 v24, v4, 0x3

    add-int v24, v24, v6

    .line 367
    aget-object v15, v2, v24

    move-object/from16 v7, p0

    move-object/from16 v24, v0

    .line 111
    iget-object v0, v7, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingAwayKeys:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v0, v15}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    :goto_8
    const/16 v0, 0x8

    goto :goto_9

    :cond_7
    move-object/from16 v7, p0

    move-object/from16 v24, v0

    goto :goto_8

    :goto_9
    shr-long/2addr v13, v0

    const/4 v15, 0x1

    add-int/2addr v6, v15

    move/from16 v7, p2

    move-object/from16 v0, v24

    goto :goto_7

    :cond_8
    move-object/from16 v24, v0

    const/16 v0, 0x8

    const/4 v15, 0x1

    move-object/from16 v7, p0

    if-ne v5, v0, :cond_b

    goto :goto_a

    :cond_9
    move-object/from16 v24, v0

    const/16 v0, 0x8

    const/4 v15, 0x1

    move-object/from16 v7, p0

    :goto_a
    if-eq v4, v3, :cond_b

    add-int/2addr v4, v15

    move-object v6, v7

    move-object/from16 v0, v24

    move/from16 v7, p2

    goto :goto_6

    :cond_a
    move-object v7, v6

    const/16 v0, 0x8

    .line 34
    :cond_b
    invoke-interface/range {p4 .. p4}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_b
    const/4 v13, -0x1

    if-ge v3, v2, :cond_16

    .line 35
    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 36
    check-cast v4, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    .line 115
    iget-object v5, v7, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingAwayKeys:Landroidx/collection/MutableScatterSet;

    invoke-interface {v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v5, v14}, Landroidx/collection/MutableScatterSet;->remove(Ljava/lang/Object;)Z

    .line 116
    invoke-direct {v7, v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->getHasAnimations(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 117
    iget-object v5, v7, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->keyToItemInfoMap:Landroidx/collection/MutableScatterMap;

    invoke-interface {v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v5, v14}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;

    if-eqz v16, :cond_c

    .line 118
    invoke-interface {v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v15, v16

    invoke-interface {v15, v14}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;->getIndex(Ljava/lang/Object;)I

    move-result v14

    goto :goto_c

    :cond_c
    move-object/from16 v15, v16

    move v14, v13

    :goto_c
    if-ne v14, v13, :cond_d

    if-eqz v15, :cond_d

    const/16 v16, 0x1

    goto :goto_d

    :cond_d
    const/16 v16, 0x0

    :goto_d
    if-nez v5, :cond_12

    .line 122
    new-instance v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;

    invoke-direct {v5, v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;)V

    const/16 v31, 0x20

    const/16 v32, 0x0

    const/16 v30, 0x0

    move-object/from16 v24, v5

    move-object/from16 v25, v4

    move-object/from16 v26, p13

    move-object/from16 v27, p14

    move/from16 v28, p11

    move/from16 v29, p12

    .line 123
    invoke-static/range {v24 .. v32}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->updateAnimation$default(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;IIIILjava/lang/Object;)V

    .line 130
    iget-object v6, v7, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->keyToItemInfoMap:Landroidx/collection/MutableScatterMap;

    invoke-interface {v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v0, v5}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 131
    invoke-interface {v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getIndex()I

    move-result v0

    if-eq v0, v14, :cond_10

    if-eq v14, v13, :cond_10

    if-ge v14, v1, :cond_f

    .line 134
    iget-object v0, v7, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingInFromStartBound:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    :goto_e
    const/4 v6, 0x1

    goto/16 :goto_13

    .line 136
    :cond_f
    iget-object v0, v7, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingInFromEndBound:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_10
    const/4 v0, 0x0

    .line 141
    invoke-interface {v4, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getOffset-Bjo55l4(I)J

    move-result-wide v13

    invoke-interface {v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->isVertical()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {v13, v14}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v0

    goto :goto_f

    :cond_11
    invoke-static {v13, v14}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v0

    .line 139
    :goto_f
    invoke-direct {v7, v4, v0, v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->initializeAnimation(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;ILandroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;)V

    if-eqz v16, :cond_e

    .line 145
    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->getAnimations()[Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    move-result-object v0

    .line 13579
    array-length v4, v0

    const/4 v5, 0x0

    :goto_10
    if-ge v5, v4, :cond_e

    aget-object v6, v0, v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    goto :goto_10

    :cond_12
    if-eqz v12, :cond_e

    const/16 v31, 0x20

    const/16 v32, 0x0

    const/16 v30, 0x0

    move-object/from16 v24, v5

    move-object/from16 v25, v4

    move-object/from16 v26, p13

    move-object/from16 v27, p14

    move/from16 v28, p11

    move/from16 v29, p12

    .line 150
    invoke-static/range {v24 .. v32}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->updateAnimation$default(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;IIIILjava/lang/Object;)V

    .line 157
    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->getAnimations()[Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    move-result-object v0

    .line 13579
    array-length v14, v0

    const/4 v13, 0x0

    :goto_11
    if-ge v13, v14, :cond_13

    aget-object v24, v0, v13

    const/4 v6, 0x1

    add-int/2addr v13, v6

    goto :goto_11

    :cond_13
    const/4 v6, 0x1

    if-eqz v16, :cond_14

    .line 166
    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->getAnimations()[Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    move-result-object v0

    .line 13579
    array-length v5, v0

    const/4 v13, 0x0

    :goto_12
    if-ge v13, v5, :cond_14

    aget-object v14, v0, v13

    add-int/2addr v13, v6

    goto :goto_12

    :cond_14
    const/4 v0, 0x0

    const/4 v5, 0x2

    const/4 v13, 0x0

    .line 176
    invoke-static {v7, v4, v0, v5, v13}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->startPlacementAnimationsIfNeeded$default(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;ZILjava/lang/Object;)V

    goto :goto_13

    :cond_15
    move-object/from16 v15, v16

    const/4 v6, 0x1

    .line 181
    invoke-interface {v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v7, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->removeInfoForKey(Ljava/lang/Object;)V

    :goto_13
    add-int/2addr v3, v6

    move-object/from16 v16, v15

    const/16 v0, 0x8

    goto/16 :goto_b

    :cond_16
    move-object/from16 v15, v16

    const/4 v6, 0x1

    .line 185
    new-array v14, v11, [I

    if-eqz v12, :cond_1c

    if-eqz v15, :cond_1c

    .line 187
    iget-object v0, v7, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingInFromStartBound:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    .line 188
    iget-object v0, v7, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingInFromStartBound:Ljava/util/List;

    .line 1011
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v6, :cond_17

    new-instance v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$onMeasured$$inlined$sortByDescending$1;

    invoke-direct {v1, v15}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$onMeasured$$inlined$sortByDescending$1;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;)V

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 189
    :cond_17
    iget-object v5, v7, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingInFromStartBound:Ljava/util/List;

    .line 34
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v4

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v4, :cond_18

    .line 35
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 36
    move-object v2, v0

    check-cast v2, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    .line 190
    invoke-direct {v7, v14, v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->updateAndReturnOffsetFor([ILandroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;)I

    move-result v0

    sub-int v16, p11, v0

    const/16 v24, 0x4

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x8

    move-object/from16 v0, p0

    move-object v1, v2

    move-object v6, v2

    move/from16 v2, v16

    move/from16 v16, v3

    move-object/from16 v3, v26

    move/from16 v26, v4

    move/from16 v4, v24

    move-object/from16 v24, v5

    move/from16 v13, v27

    move-object/from16 v5, v25

    .line 192
    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->initializeAnimation$default(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;ILandroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;ILjava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 193
    invoke-static {v7, v6, v0, v1, v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->startPlacementAnimationsIfNeeded$default(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;ZILjava/lang/Object;)V

    const/4 v0, 0x1

    add-int/lit8 v3, v16, 0x1

    move-object/from16 v5, v24

    move/from16 v4, v26

    const/4 v13, -0x1

    goto :goto_14

    :cond_18
    const/16 v13, 0x8

    const/16 v28, 0x6

    const/16 v29, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v24, v14

    .line 195
    invoke-static/range {v24 .. v29}, Lkotlin/collections/ArraysKt;->fill$default([IIIIILjava/lang/Object;)V

    goto :goto_15

    :cond_19
    const/16 v13, 0x8

    .line 197
    :goto_15
    iget-object v1, v7, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingInFromEndBound:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 198
    iget-object v1, v7, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingInFromEndBound:Ljava/util/List;

    .line 1002
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x1

    if-le v2, v0, :cond_1a

    new-instance v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$onMeasured$$inlined$sortBy$1;

    invoke-direct {v0, v15}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$onMeasured$$inlined$sortBy$1;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;)V

    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 199
    :cond_1a
    iget-object v5, v7, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingInFromEndBound:Ljava/util/List;

    .line 34
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v4

    const/4 v3, 0x0

    :goto_16
    if-ge v3, v4, :cond_1b

    .line 35
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 36
    move-object v2, v0

    check-cast v2, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    .line 200
    invoke-direct {v7, v14, v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->updateAndReturnOffsetFor([ILandroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;)I

    move-result v0

    add-int v0, p12, v0

    .line 202
    invoke-interface {v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getMainAxisSizeWithSpacings()I

    move-result v1

    sub-int v16, v0, v1

    const/16 v24, 0x4

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move-object v1, v2

    move-object v6, v2

    move/from16 v2, v16

    move/from16 v16, v3

    move-object/from16 v3, v26

    move/from16 v26, v4

    move/from16 v4, v24

    move-object/from16 v24, v5

    move-object/from16 v5, v25

    .line 203
    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->initializeAnimation$default(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;ILandroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;ILjava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 204
    invoke-static {v7, v6, v0, v1, v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->startPlacementAnimationsIfNeeded$default(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;ZILjava/lang/Object;)V

    const/4 v0, 0x1

    add-int/lit8 v3, v16, 0x1

    move-object/from16 v5, v24

    move/from16 v4, v26

    goto :goto_16

    :cond_1b
    const/16 v28, 0x6

    const/16 v29, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v24, v14

    .line 206
    invoke-static/range {v24 .. v29}, Lkotlin/collections/ArraysKt;->fill$default([IIIIILjava/lang/Object;)V

    goto :goto_17

    :cond_1c
    const/16 v13, 0x8

    .line 210
    :cond_1d
    :goto_17
    iget-object v1, v7, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingAwayKeys:Landroidx/collection/MutableScatterSet;

    .line 232
    iget-object v2, v1, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 201
    iget-object v1, v1, Landroidx/collection/ScatterSet;->metadata:[J

    .line 202
    array-length v3, v1

    const/4 v4, 0x2

    sub-int/2addr v3, v4

    if-ltz v3, :cond_27

    const/4 v4, 0x0

    .line 205
    :goto_18
    aget-wide v5, v1, v4

    move-object/from16 v16, v1

    not-long v0, v5

    shl-long v0, v0, v21

    and-long/2addr v0, v5

    and-long v0, v0, v22

    cmp-long v0, v0, v22

    if-eqz v0, :cond_26

    sub-int v0, v4, v3

    not-int v0, v0

    ushr-int/lit8 v0, v0, 0x1f

    rsub-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    :goto_19
    if-ge v1, v0, :cond_25

    and-long v26, v5, v19

    cmp-long v24, v26, v17

    if-gez v24, :cond_24

    shl-int/lit8 v24, v4, 0x3

    add-int v24, v24, v1

    .line 233
    aget-object v13, v2, v24

    move-object/from16 v32, v2

    .line 216
    iget-object v2, v7, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->keyToItemInfoMap:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v2, v13}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;

    if-nez v2, :cond_1e

    move/from16 p1, v12

    :goto_1a
    move-object/from16 v33, v14

    goto/16 :goto_1d

    .line 217
    :cond_1e
    invoke-interface {v10, v13}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;->getIndex(Ljava/lang/Object;)I

    move-result v9

    move/from16 p1, v12

    .line 221
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->getSpan()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-virtual {v2, v12}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->setSpan(I)V

    .line 222
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->getSpan()I

    move-result v12

    sub-int v12, v11, v12

    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->getLane()I

    move-result v11

    invoke-static {v12, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-virtual {v2, v11}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->setLane(I)V

    const/4 v11, -0x1

    if-ne v9, v11, :cond_20

    .line 226
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->getAnimations()[Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    move-result-object v2

    .line 667
    array-length v9, v2

    const/4 v12, 0x0

    :goto_1b
    if-ge v12, v9, :cond_1f

    aget-object v24, v2, v12

    const/16 v24, 0x1

    add-int/lit8 v12, v12, 0x1

    goto :goto_1b

    .line 251
    :cond_1f
    invoke-direct {v7, v13}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->removeInfoForKey(Ljava/lang/Object;)V

    goto :goto_1a

    .line 257
    :cond_20
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->getConstraints-DWUhwKw()Landroidx/compose/ui/unit/Constraints;

    move-result-object v12

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v12}, Landroidx/compose/ui/unit/Constraints;->unbox-impl()J

    move-result-wide v37

    .line 258
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->getLane()I

    move-result v35

    .line 259
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->getSpan()I

    move-result v36

    move-object/from16 v33, p6

    move/from16 v34, v9

    .line 255
    invoke-interface/range {v33 .. v38}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItemProvider;->getAndMeasure--hBUhpc(IIIJ)Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    move-result-object v12

    const/4 v11, 0x1

    .line 262
    invoke-interface {v12, v11}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->setNonScrollableItem(Z)V

    .line 264
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->getAnimations()[Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    move-result-object v11

    .line 669
    array-length v8, v11

    move-object/from16 v33, v14

    const/4 v14, 0x0

    :goto_1c
    if-ge v14, v8, :cond_21

    aget-object v25, v11, v14

    const/16 v24, 0x1

    add-int/lit8 v14, v14, 0x1

    goto :goto_1c

    :cond_21
    if-eqz v15, :cond_22

    .line 265
    invoke-interface {v15, v13}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;->getIndex(Ljava/lang/Object;)I

    move-result v8

    if-ne v9, v8, :cond_22

    .line 266
    invoke-direct {v7, v13}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->removeInfoForKey(Ljava/lang/Object;)V

    goto :goto_1d

    .line 276
    :cond_22
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->getCrossAxisOffset()I

    move-result v30

    move-object/from16 v24, v2

    move-object/from16 v25, v12

    move-object/from16 v26, p13

    move-object/from16 v27, p14

    move/from16 v28, p11

    move/from16 v29, p12

    .line 270
    invoke-virtual/range {v24 .. v30}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->updateAnimation(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;III)V

    .line 278
    iget v2, v7, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->firstVisibleIndex:I

    if-ge v9, v2, :cond_23

    .line 279
    iget-object v2, v7, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingAwayToStartBound:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 281
    :cond_23
    iget-object v2, v7, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingAwayToEndBound:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1d
    const/16 v2, 0x8

    goto :goto_1e

    :cond_24
    move-object/from16 v32, v2

    move/from16 p1, v12

    move-object/from16 v33, v14

    move v2, v13

    :goto_1e
    shr-long/2addr v5, v2

    const/4 v8, 0x1

    add-int/2addr v1, v8

    move/from16 v12, p1

    move/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v11, p9

    move v13, v2

    move-object/from16 v2, v32

    move-object/from16 v14, v33

    goto/16 :goto_19

    :cond_25
    move-object/from16 v32, v2

    move/from16 p1, v12

    move v2, v13

    move-object/from16 v33, v14

    const/4 v8, 0x1

    if-ne v0, v2, :cond_28

    goto :goto_1f

    :cond_26
    move-object/from16 v32, v2

    move/from16 p1, v12

    move v2, v13

    move-object/from16 v33, v14

    const/4 v8, 0x1

    :goto_1f
    if-eq v4, v3, :cond_28

    add-int/2addr v4, v8

    move/from16 v12, p1

    move/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v11, p9

    move v13, v2

    move-object/from16 v1, v16

    move-object/from16 v2, v32

    move-object/from16 v14, v33

    goto/16 :goto_18

    :cond_27
    move/from16 p1, v12

    move-object/from16 v33, v14

    const/4 v8, 0x1

    .line 287
    :cond_28
    iget-object v0, v7, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingAwayToStartBound:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 288
    iget-object v0, v7, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingAwayToStartBound:Ljava/util/List;

    .line 1011
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v8, :cond_29

    new-instance v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$onMeasured$$inlined$sortByDescending$2;

    invoke-direct {v1, v10}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$onMeasured$$inlined$sortByDescending$2;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;)V

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 289
    :cond_29
    iget-object v0, v7, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingAwayToStartBound:Ljava/util/List;

    .line 34
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_20
    if-ge v2, v1, :cond_2c

    .line 35
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 36
    check-cast v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    .line 290
    iget-object v4, v7, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->keyToItemInfoMap:Landroidx/collection/MutableScatterMap;

    invoke-interface {v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v4, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;

    move-object/from16 v5, v33

    .line 291
    invoke-direct {v7, v5, v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->updateAndReturnOffsetFor([ILandroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;)I

    move-result v6

    if-eqz p8, :cond_2a

    .line 294
    invoke-static/range {p4 .. p4}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    invoke-direct {v7, v8}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->getMainAxisOffset(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;)I

    move-result v8

    goto :goto_21

    .line 296
    :cond_2a
    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->getLayoutMinOffset()I

    move-result v8

    :goto_21
    sub-int/2addr v8, v6

    .line 301
    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->getCrossAxisOffset()I

    move-result v4

    move/from16 v9, p3

    move-object v6, v7

    move/from16 v7, p2

    .line 299
    invoke-interface {v3, v8, v4, v7, v9}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->position(IIII)V

    const/4 v4, 0x1

    if-eqz p1, :cond_2b

    .line 306
    invoke-direct {v6, v3, v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->startPlacementAnimationsIfNeeded(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;Z)V

    :cond_2b
    add-int/2addr v2, v4

    move-object/from16 v33, v5

    move-object v7, v6

    goto :goto_20

    :cond_2c
    move/from16 v9, p3

    move-object v6, v7

    move-object/from16 v5, v33

    move/from16 v7, p2

    const/16 v28, 0x6

    const/16 v29, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v24, v5

    .line 309
    invoke-static/range {v24 .. v29}, Lkotlin/collections/ArraysKt;->fill$default([IIIIILjava/lang/Object;)V

    goto :goto_22

    :cond_2d
    move/from16 v9, p3

    move-object v6, v7

    move-object/from16 v5, v33

    move/from16 v7, p2

    .line 312
    :goto_22
    iget-object v0, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingAwayToEndBound:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_31

    .line 313
    iget-object v0, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingAwayToEndBound:Ljava/util/List;

    .line 1002
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2e

    new-instance v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$onMeasured$$inlined$sortBy$2;

    invoke-direct {v1, v10}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$onMeasured$$inlined$sortBy$2;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;)V

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 314
    :cond_2e
    iget-object v0, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingAwayToEndBound:Ljava/util/List;

    .line 34
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_23
    if-ge v2, v1, :cond_31

    .line 35
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 36
    check-cast v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    .line 315
    iget-object v4, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->keyToItemInfoMap:Landroidx/collection/MutableScatterMap;

    invoke-interface {v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v4, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;

    .line 316
    invoke-direct {v6, v5, v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->updateAndReturnOffsetFor([ILandroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;)I

    move-result v8

    if-eqz p8, :cond_2f

    .line 318
    invoke-static/range {p4 .. p4}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    invoke-direct {v6, v10}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->getMainAxisOffset(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;)I

    move-result v10

    goto :goto_24

    .line 320
    :cond_2f
    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->getLayoutMaxOffset()I

    move-result v10

    invoke-interface {v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getMainAxisSizeWithSpacings()I

    move-result v11

    sub-int/2addr v10, v11

    :goto_24
    add-int/2addr v10, v8

    .line 325
    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->getCrossAxisOffset()I

    move-result v4

    .line 323
    invoke-interface {v3, v10, v4, v7, v9}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->position(IIII)V

    const/4 v4, 0x1

    if-eqz p1, :cond_30

    .line 331
    invoke-direct {v6, v3, v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->startPlacementAnimationsIfNeeded(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;Z)V

    :cond_30
    add-int/2addr v2, v4

    goto :goto_23

    .line 338
    :cond_31
    iget-object v0, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingAwayToStartBound:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->reverse(Ljava/util/List;)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v1, p4

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 339
    iget-object v0, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingAwayToEndBound:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 341
    iget-object v0, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingInFromStartBound:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 342
    iget-object v0, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingInFromEndBound:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 343
    iget-object v0, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingAwayToStartBound:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 344
    iget-object v0, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingAwayToEndBound:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 345
    iget-object v0, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingAwayKeys:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v0}, Landroidx/collection/MutableScatterSet;->clear()V

    return-void
.end method

.method public final reset()V
    .locals 1

    .line 357
    invoke-direct {p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->releaseAnimations()V

    const/4 v0, 0x0

    .line 358
    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->keyIndexMap:Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    const/4 v0, -0x1

    .line 359
    iput v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->firstVisibleIndex:I

    return-void
.end method
