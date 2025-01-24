.class public abstract Landroidx/compose/foundation/lazy/LazyListMeasureKt;
.super Ljava/lang/Object;
.source "LazyListMeasure.kt"


# direct methods
.method private static final calculateItemsOffsets(Ljava/util/List;Ljava/util/List;Ljava/util/List;IIIIIZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ZLandroidx/compose/ui/unit/Density;)Ljava/util/List;
    .locals 14

    move-object v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, p9

    move/from16 v4, p11

    move/from16 v5, p6

    if-eqz p8, :cond_0

    move v6, v2

    goto :goto_0

    :cond_0
    move v6, v1

    .line 603
    :goto_0
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v7, 0x0

    const/4 v8, 0x1

    move/from16 v9, p5

    if-ge v9, v5, :cond_1

    move v5, v8

    goto :goto_1

    :cond_1
    move v5, v7

    :goto_1
    if-eqz v5, :cond_3

    if-nez p7, :cond_2

    move v9, v8

    goto :goto_2

    :cond_2
    move v9, v7

    :goto_2
    if-nez v9, :cond_3

    .line 605
    const-string v9, "non-zero itemsScrollOffset"

    .line 52
    invoke-static {v9}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 609
    :cond_3
    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v10

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v11

    add-int/2addr v10, v11

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v11

    add-int/2addr v10, v11

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz v5, :cond_e

    .line 612
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_3

    :cond_4
    move v8, v7

    :goto_3
    if-nez v8, :cond_5

    .line 613
    const-string v5, "no extra items"

    .line 98
    invoke-static {v5}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 616
    :cond_5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    .line 619
    new-array v8, v5, [I

    :goto_4
    if-ge v7, v5, :cond_6

    invoke-static {v7, v4, v5}, Landroidx/compose/foundation/lazy/LazyListMeasureKt;->calculateItemsOffsets$reverseAware(IZI)I

    move-result v10

    invoke-interface {p0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    invoke-virtual {v10}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getSize()I

    move-result v10

    aput v10, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 620
    :cond_6
    new-array v7, v5, [I

    if-eqz p8, :cond_8

    if-eqz v3, :cond_7

    move-object/from16 v10, p12

    .line 627
    invoke-interface {v3, v10, v6, v8, v7}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->arrange(Landroidx/compose/ui/unit/Density;I[I[I)V

    goto :goto_5

    .line 624
    :cond_7
    const-string v0, "null verticalArrangement when isVertical == true"

    .line 110
    invoke-static {v0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentExceptionForNullCheck(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    :cond_8
    move-object/from16 v10, p12

    if-eqz p10, :cond_d

    .line 636
    sget-object v3, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    move-object/from16 p5, p10

    move-object/from16 p6, p12

    move/from16 p7, v6

    move-object/from16 p8, v8

    move-object/from16 p9, v3

    move-object/from16 p10, v7

    invoke-interface/range {p5 .. p10}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->arrange(Landroidx/compose/ui/unit/Density;I[ILandroidx/compose/ui/unit/LayoutDirection;[I)V

    .line 641
    :goto_5
    invoke-static {v7}, Lkotlin/collections/ArraysKt;->getIndices([I)Lkotlin/ranges/IntRange;

    move-result-object v3

    if-nez v4, :cond_9

    goto :goto_6

    :cond_9
    invoke-static {v3}, Lkotlin/ranges/RangesKt;->reversed(Lkotlin/ranges/IntProgression;)Lkotlin/ranges/IntProgression;

    move-result-object v3

    .line 642
    :goto_6
    invoke-virtual {v3}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v8

    invoke-virtual {v3}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v10

    invoke-virtual {v3}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result v3

    if-lez v3, :cond_a

    if-le v8, v10, :cond_b

    :cond_a
    if-gez v3, :cond_11

    if-gt v10, v8, :cond_11

    .line 643
    :cond_b
    :goto_7
    aget v11, v7, v8

    .line 645
    invoke-static {v8, v4, v5}, Landroidx/compose/foundation/lazy/LazyListMeasureKt;->calculateItemsOffsets$reverseAware(IZI)I

    move-result v12

    invoke-interface {p0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    if-eqz v4, :cond_c

    sub-int v11, v6, v11

    .line 649
    invoke-virtual {v12}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getSize()I

    move-result v13

    sub-int/2addr v11, v13

    .line 653
    :cond_c
    invoke-virtual {v12, v11, v1, v2}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->position(III)V

    .line 654
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eq v8, v10, :cond_11

    add-int/2addr v8, v3

    goto :goto_7

    .line 632
    :cond_d
    const-string v0, "null horizontalArrangement when isVertical == false"

    .line 110
    invoke-static {v0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentExceptionForNullCheck(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 34
    :cond_e
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    move/from16 v5, p7

    move v4, v7

    :goto_8
    if-ge v4, v3, :cond_f

    move-object v6, p1

    .line 35
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 36
    check-cast v8, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 659
    invoke-virtual {v8}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getMainAxisSizeWithSpacings()I

    move-result v10

    sub-int/2addr v5, v10

    .line 660
    invoke-virtual {v8, v5, v1, v2}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->position(III)V

    .line 661
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 34
    :cond_f
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v3

    move/from16 v4, p7

    move v5, v7

    :goto_9
    if-ge v5, v3, :cond_10

    .line 35
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 36
    check-cast v6, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 666
    invoke-virtual {v6, v4, v1, v2}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->position(III)V

    .line 667
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 668
    invoke-virtual {v6}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getMainAxisSizeWithSpacings()I

    move-result v6

    add-int/2addr v4, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 34
    :cond_10
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->size()I

    move-result v0

    :goto_a
    if-ge v7, v0, :cond_11

    move-object/from16 v3, p2

    .line 35
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 36
    check-cast v5, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 672
    invoke-virtual {v5, v4, v1, v2}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->position(III)V

    .line 673
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 674
    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getMainAxisSizeWithSpacings()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    :cond_11
    return-object v9
.end method

.method private static final calculateItemsOffsets$reverseAware(IZI)I
    .locals 0

    .line 0
    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr p2, p0

    add-int/lit8 p0, p2, -0x1

    :goto_0
    return p0
.end method

.method private static final createItemsAfterList(Ljava/util/List;Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;IILjava/util/List;FZLandroidx/compose/foundation/lazy/LazyListLayoutInfo;)Ljava/util/List;
    .locals 18

    move/from16 v0, p2

    .line 475
    invoke-static/range {p0 .. p0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getIndex()I

    move-result v1

    add-int v1, v1, p3

    add-int/lit8 v2, v0, -0x1

    .line 477
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 479
    invoke-static/range {p0 .. p0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getIndex()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    if-gt v3, v1, :cond_1

    move-object v5, v4

    :goto_0
    if-nez v5, :cond_0

    .line 480
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    move-object v11, v5

    const/4 v9, 0x2

    const/4 v10, 0x0

    const-wide/16 v7, 0x0

    move-object/from16 v5, p1

    move v6, v3

    .line 481
    invoke-static/range {v5 .. v10}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getAndMeasure-0kLqBqw$default(Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;IJILjava/lang/Object;)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object v5

    invoke-interface {v11, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq v3, v1, :cond_2

    add-int/lit8 v3, v3, 0x1

    move-object v5, v11

    goto :goto_0

    :cond_1
    move-object v11, v4

    :cond_2
    const/4 v3, 0x0

    if-eqz p6, :cond_14

    if-eqz p7, :cond_14

    .line 488
    invoke-interface/range {p7 .. p7}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_14

    .line 493
    invoke-interface/range {p7 .. p7}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object v5

    .line 495
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    :goto_1
    const/4 v7, -0x1

    if-ge v7, v6, :cond_5

    .line 496
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/foundation/lazy/LazyListItemInfo;

    invoke-interface {v7}, Landroidx/compose/foundation/lazy/LazyListItemInfo;->getIndex()I

    move-result v7

    if-le v7, v1, :cond_4

    if-eqz v6, :cond_3

    add-int/lit8 v7, v6, -0x1

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/foundation/lazy/LazyListItemInfo;

    invoke-interface {v7}, Landroidx/compose/foundation/lazy/LazyListItemInfo;->getIndex()I

    move-result v7

    if-gt v7, v1, :cond_4

    .line 497
    :cond_3
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/lazy/LazyListItemInfo;

    goto :goto_2

    :cond_4
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_5
    move-object v5, v4

    .line 503
    :goto_2
    invoke-interface/range {p7 .. p7}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/foundation/lazy/LazyListItemInfo;

    if-eqz v5, :cond_b

    .line 505
    invoke-interface {v5}, Landroidx/compose/foundation/lazy/LazyListItemInfo;->getIndex()I

    move-result v5

    invoke-interface {v6}, Landroidx/compose/foundation/lazy/LazyListItemInfo;->getIndex()I

    move-result v7

    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-gt v5, v2, :cond_b

    :goto_3
    if-eqz v11, :cond_8

    .line 34
    invoke-interface {v11}, Ljava/util/Collection;->size()I

    move-result v7

    move v8, v3

    :goto_4
    if-ge v8, v7, :cond_7

    .line 35
    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 117
    move-object v10, v9

    check-cast v10, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 507
    invoke-virtual {v10}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getIndex()I

    move-result v10

    if-ne v10, v5, :cond_6

    goto :goto_5

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_7
    move-object v9, v4

    :goto_5
    check-cast v9, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    goto :goto_6

    :cond_8
    move-object v9, v4

    :goto_6
    if-nez v9, :cond_a

    if-nez v11, :cond_9

    .line 508
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    :cond_9
    const/16 v16, 0x2

    const/16 v17, 0x0

    const-wide/16 v14, 0x0

    move-object/from16 v12, p1

    move v13, v5

    .line 509
    invoke-static/range {v12 .. v17}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getAndMeasure-0kLqBqw$default(Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;IJILjava/lang/Object;)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object v7

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    if-eq v5, v2, :cond_b

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 517
    :cond_b
    invoke-interface/range {p7 .. p7}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getViewportEndOffset()I

    move-result v2

    .line 518
    invoke-interface {v6}, Landroidx/compose/foundation/lazy/LazyListItemInfo;->getOffset()I

    move-result v5

    sub-int/2addr v2, v5

    .line 519
    invoke-interface {v6}, Landroidx/compose/foundation/lazy/LazyListItemInfo;->getSize()I

    move-result v5

    sub-int/2addr v2, v5

    int-to-float v2, v2

    sub-float v2, v2, p5

    const/4 v5, 0x0

    cmpl-float v5, v2, v5

    if-lez v5, :cond_14

    .line 522
    invoke-interface {v6}, Landroidx/compose/foundation/lazy/LazyListItemInfo;->getIndex()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    move v6, v3

    :goto_7
    if-ge v5, v0, :cond_14

    int-to-float v7, v6

    cmpg-float v7, v7, v2

    if-gez v7, :cond_14

    if-gt v5, v1, :cond_e

    .line 34
    invoke-interface/range {p0 .. p0}, Ljava/util/Collection;->size()I

    move-result v7

    move v8, v3

    :goto_8
    if-ge v8, v7, :cond_d

    move-object/from16 v9, p0

    .line 35
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 117
    move-object v12, v10

    check-cast v12, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 527
    invoke-virtual {v12}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getIndex()I

    move-result v12

    if-ne v12, v5, :cond_c

    goto :goto_9

    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_d
    move-object/from16 v9, p0

    move-object v10, v4

    .line 118
    :goto_9
    check-cast v10, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    goto :goto_c

    :cond_e
    move-object/from16 v9, p0

    if-eqz v11, :cond_11

    .line 34
    invoke-interface {v11}, Ljava/util/Collection;->size()I

    move-result v7

    move v8, v3

    :goto_a
    if-ge v8, v7, :cond_10

    .line 35
    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 117
    move-object v12, v10

    check-cast v12, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 528
    invoke-virtual {v12}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getIndex()I

    move-result v12

    if-ne v12, v5, :cond_f

    goto :goto_b

    :cond_f
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :cond_10
    move-object v10, v4

    .line 118
    :goto_b
    check-cast v10, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    goto :goto_c

    :cond_11
    move-object v10, v4

    :goto_c
    if-eqz v10, :cond_12

    add-int/lit8 v5, v5, 0x1

    .line 531
    invoke-virtual {v10}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getMainAxisSizeWithSpacings()I

    move-result v7

    :goto_d
    add-int/2addr v6, v7

    goto :goto_7

    :cond_12
    if-nez v11, :cond_13

    .line 533
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    :cond_13
    const/16 v16, 0x2

    const/16 v17, 0x0

    const-wide/16 v14, 0x0

    move-object/from16 v12, p1

    move v13, v5

    .line 534
    invoke-static/range {v12 .. v17}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getAndMeasure-0kLqBqw$default(Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;IJILjava/lang/Object;)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object v7

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    .line 536
    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getMainAxisSizeWithSpacings()I

    move-result v7

    goto :goto_d

    :cond_14
    if-eqz v11, :cond_15

    .line 545
    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getIndex()I

    move-result v0

    if-le v0, v1, :cond_15

    .line 546
    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getIndex()I

    move-result v1

    .line 34
    :cond_15
    invoke-interface/range {p4 .. p4}, Ljava/util/Collection;->size()I

    move-result v0

    :goto_e
    if-ge v3, v0, :cond_18

    move-object/from16 v2, p4

    .line 35
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 36
    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v6

    if-le v6, v1, :cond_17

    if-nez v11, :cond_16

    .line 551
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    :cond_16
    const/4 v9, 0x2

    const/4 v10, 0x0

    const-wide/16 v7, 0x0

    move-object/from16 v5, p1

    .line 552
    invoke-static/range {v5 .. v10}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getAndMeasure-0kLqBqw$default(Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;IJILjava/lang/Object;)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_18
    if-nez v11, :cond_19

    .line 556
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v11

    :cond_19
    return-object v11
.end method

.method private static final createItemsBeforeList(ILandroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;ILjava/util/List;)Ljava/util/List;
    .locals 8

    const/4 v0, 0x0

    sub-int p2, p0, p2

    .line 569
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    add-int/lit8 p0, p0, -0x1

    const/4 v0, 0x0

    if-gt p2, p0, :cond_1

    :goto_0
    if-nez v0, :cond_0

    .line 572
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    const/4 v5, 0x2

    const/4 v6, 0x0

    const-wide/16 v3, 0x0

    move-object v1, p1

    move v2, p0

    .line 573
    invoke-static/range {v1 .. v6}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getAndMeasure-0kLqBqw$default(Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;IJILjava/lang/Object;)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq p0, p2, :cond_1

    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    .line 52
    :cond_1
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_5

    :goto_1
    add-int/lit8 v1, p0, -0x1

    .line 53
    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 54
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-ge v3, p2, :cond_3

    if-nez v0, :cond_2

    .line 578
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    const/4 v6, 0x2

    const/4 v7, 0x0

    const-wide/16 v4, 0x0

    move-object v2, p1

    .line 579
    invoke-static/range {v2 .. v7}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getAndMeasure-0kLqBqw$default(Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;IJILjava/lang/Object;)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    if-gez v1, :cond_4

    goto :goto_2

    :cond_4
    move p0, v1

    goto :goto_1

    :cond_5
    :goto_2
    if-nez v0, :cond_6

    .line 583
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_6
    return-object v0
.end method

.method public static final measureLazyList-LCrQqZ4(ILandroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;IIIIIIFJZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ZLandroidx/compose/ui/unit/Density;Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;ILjava/util/List;ZZLandroidx/compose/foundation/lazy/LazyListLayoutInfo;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/graphics/GraphicsContext;Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement;Lkotlin/jvm/functions/Function3;)Landroidx/compose/foundation/lazy/LazyListMeasureResult;
    .locals 36

    move/from16 v15, p0

    move-object/from16 v14, p1

    move/from16 v13, p2

    move/from16 v12, p3

    move-wide/from16 v10, p9

    move/from16 v9, p20

    move-object/from16 v8, p26

    const/16 v16, 0x1

    const/4 v7, 0x0

    if-ltz v12, :cond_0

    move/from16 v0, v16

    goto :goto_0

    :cond_0
    move v0, v7

    :goto_0
    if-nez v0, :cond_1

    .line 79
    const-string v0, "invalid beforeContentPadding"

    .line 98
    invoke-static {v0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :cond_1
    if-ltz p4, :cond_2

    move/from16 v0, v16

    goto :goto_1

    :cond_2
    move v0, v7

    :goto_1
    if-nez v0, :cond_3

    .line 80
    const-string v0, "invalid afterContentPadding"

    .line 98
    invoke-static {v0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :cond_3
    const-wide v17, 0xffffffffL

    const/16 v19, 0x20

    if-gtz v15, :cond_6

    .line 84
    invoke-static/range {p9 .. p10}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v15

    .line 85
    invoke-static/range {p9 .. p10}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v16

    .line 90
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 91
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getKeyIndexMap()Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    move-result-object v5

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/4 v1, 0x0

    const/16 v22, 0x1

    move-object/from16 v0, p16

    move v2, v15

    move/from16 v3, v16

    move-object/from16 v6, p1

    move/from16 v7, p11

    move/from16 v8, p20

    move/from16 v9, v22

    move/from16 v10, p19

    move/from16 v11, v20

    move/from16 v12, v21

    move-object/from16 v13, p22

    move-object/from16 v14, p24

    .line 86
    invoke-virtual/range {v0 .. v14}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->onMeasured(IIILjava/util/List;Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItemProvider;ZZIZIILkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;)V

    move/from16 v14, p20

    if-nez v14, :cond_4

    .line 103
    invoke-virtual/range {p16 .. p16}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->getMinSizeToFitDisappearingItems-YbymL2g()J

    move-result-wide v0

    .line 104
    sget-object v2, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/unit/IntSize$Companion;->getZero-YbymL2g()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_4

    shr-long v2, v0, v19

    long-to-int v2, v2

    move-wide/from16 v12, p9

    .line 105
    invoke-static {v12, v13, v2}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(JI)I

    move-result v15

    and-long v0, v0, v17

    long-to-int v0, v0

    .line 106
    invoke-static {v12, v13, v0}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(JI)I

    move-result v16

    .line 114
    :cond_4
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$3;->INSTANCE:Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$3;

    move-object/from16 v11, p26

    invoke-interface {v11, v0, v1, v2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroidx/compose/ui/layout/MeasureResult;

    .line 116
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v12

    move/from16 v10, p3

    neg-int v13, v10

    move/from16 v9, p2

    add-int v14, v9, p4

    if-eqz p11, :cond_5

    .line 121
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    :goto_2
    move-object/from16 v17, v0

    goto :goto_3

    :cond_5
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_2

    .line 127
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getChildConstraints-msEJaDk()J

    move-result-wide v10

    .line 109
    new-instance v21, Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    move-object/from16 v0, v21

    const/4 v15, 0x0

    const/16 v20, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v8, p22

    move-object/from16 v9, p15

    move/from16 v16, p14

    move/from16 v18, p4

    move/from16 v19, p5

    invoke-direct/range {v0 .. v20}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;-><init>(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;IZFLandroidx/compose/ui/layout/MeasureResult;FZLkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/unit/Density;JLjava/util/List;IIIZLandroidx/compose/foundation/gestures/Orientation;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v21

    :cond_6
    move/from16 v0, p6

    move v14, v9

    move v9, v13

    move-wide/from16 v34, v10

    move-object v11, v8

    move v10, v12

    move-wide/from16 v12, v34

    if-lt v0, v15, :cond_7

    add-int/lit8 v0, v15, -0x1

    move v1, v7

    goto :goto_4

    :cond_7
    move/from16 v1, p7

    .line 26
    :goto_4
    invoke-static/range {p8 .. p8}, Ljava/lang/Math;->round(F)I

    move-result v2

    sub-int/2addr v1, v2

    if-nez v0, :cond_8

    if-gez v1, :cond_8

    add-int/2addr v2, v1

    move v6, v2

    move v1, v7

    goto :goto_5

    :cond_8
    move v6, v2

    .line 153
    :goto_5
    new-instance v8, Lkotlin/collections/ArrayDeque;

    invoke-direct {v8}, Lkotlin/collections/ArrayDeque;-><init>()V

    neg-int v5, v10

    if-gez p5, :cond_9

    move/from16 v2, p5

    goto :goto_6

    :cond_9
    move v2, v7

    :goto_6
    add-int v4, v5, v2

    add-int/2addr v1, v4

    move v2, v1

    move v3, v7

    :goto_7
    if-gez v2, :cond_a

    if-lez v0, :cond_a

    add-int/lit8 v20, v0, -0x1

    const/16 v21, 0x2

    const/16 v22, 0x0

    const-wide/16 v23, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v26, v2

    move/from16 v25, v3

    move-wide/from16 v2, v23

    move/from16 v27, v4

    move/from16 v4, v21

    move/from16 v21, v5

    move-object/from16 v5, v22

    .line 177
    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getAndMeasure-0kLqBqw$default(Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;IJILjava/lang/Object;)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object v0

    .line 178
    invoke-virtual {v8, v7, v0}, Lkotlin/collections/ArrayDeque;->add(ILjava/lang/Object;)V

    .line 179
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getCrossAxisSize()I

    move-result v1

    move/from16 v2, v25

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 180
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getMainAxisSizeWithSpacings()I

    move-result v0

    move/from16 v1, v26

    add-int v2, v1, v0

    move/from16 v0, v20

    move/from16 v5, v21

    move/from16 v4, v27

    goto :goto_7

    :cond_a
    move v1, v2

    move v2, v3

    move/from16 v21, v5

    move v5, v4

    if-ge v1, v5, :cond_b

    sub-int v4, v5, v1

    sub-int/2addr v6, v4

    move v4, v5

    goto :goto_8

    :cond_b
    move v4, v1

    :goto_8
    sub-int/2addr v4, v5

    add-int v3, v9, p4

    .line 196
    invoke-static {v3, v7}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v1

    neg-int v7, v4

    move/from16 p6, v0

    move/from16 v22, p6

    move/from16 v25, v2

    const/4 v0, 0x0

    const/16 v23, 0x0

    .line 201
    :goto_9
    invoke-virtual {v8}, Lkotlin/collections/AbstractMutableList;->size()I

    move-result v2

    if-ge v0, v2, :cond_d

    if-lt v7, v1, :cond_c

    .line 204
    invoke-virtual {v8, v0}, Lkotlin/collections/AbstractMutableList;->remove(I)Ljava/lang/Object;

    move/from16 v23, v16

    goto :goto_9

    :cond_c
    add-int/lit8 v22, v22, 0x1

    .line 208
    invoke-virtual {v8, v0}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getMainAxisSizeWithSpacings()I

    move-result v2

    add-int/2addr v7, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_d
    move v2, v7

    move/from16 v0, v22

    move/from16 v7, p6

    move/from16 v22, v4

    move/from16 v4, v25

    :goto_a
    if-ge v0, v15, :cond_e

    if-lt v2, v1, :cond_f

    if-lez v2, :cond_f

    .line 220
    invoke-virtual {v8}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v24

    if-eqz v24, :cond_e

    goto :goto_b

    :cond_e
    move v5, v0

    move/from16 v30, v3

    move v3, v4

    move/from16 p7, v7

    goto :goto_d

    :cond_f
    :goto_b
    const/16 v24, 0x2

    const/16 v25, 0x0

    const-wide/16 v26, 0x0

    move/from16 p6, v0

    move-object/from16 v0, p1

    move/from16 v28, v1

    move/from16 v1, p6

    move/from16 v29, v2

    move/from16 v30, v3

    move-wide/from16 v2, v26

    move/from16 v31, v4

    move/from16 v4, v24

    move/from16 p7, v7

    move v7, v5

    move-object/from16 v5, v25

    .line 222
    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getAndMeasure-0kLqBqw$default(Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;IJILjava/lang/Object;)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object v0

    .line 223
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getMainAxisSizeWithSpacings()I

    move-result v1

    move/from16 v2, v29

    add-int/2addr v2, v1

    if-gt v2, v7, :cond_10

    add-int/lit8 v1, v15, -0x1

    move/from16 v5, p6

    if-eq v5, v1, :cond_11

    add-int/lit8 v1, v5, 0x1

    .line 228
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getMainAxisSizeWithSpacings()I

    move-result v0

    sub-int v22, v22, v0

    move/from16 v23, v16

    move/from16 v4, v31

    goto :goto_c

    :cond_10
    move/from16 v5, p6

    .line 231
    :cond_11
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getCrossAxisSize()I

    move-result v1

    move/from16 v3, v31

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 232
    invoke-virtual {v8, v0}, Lkotlin/collections/ArrayDeque;->add(Ljava/lang/Object;)Z

    move v4, v1

    move/from16 v1, p7

    :goto_c
    add-int/lit8 v0, v5, 0x1

    move v5, v7

    move/from16 v3, v30

    move v7, v1

    move/from16 v1, v28

    goto :goto_a

    :goto_d
    if-ge v2, v9, :cond_14

    sub-int v7, v9, v2

    sub-int v22, v22, v7

    add-int v24, v2, v7

    move/from16 v0, p7

    move v4, v3

    move/from16 v2, v22

    :goto_e
    if-ge v2, v10, :cond_12

    if-lez v0, :cond_12

    add-int/lit8 v22, v0, -0x1

    const/16 v25, 0x2

    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v29, v2

    move-wide/from16 v2, v27

    move/from16 v32, v4

    move/from16 v4, v25

    move/from16 v33, v5

    move-object/from16 v5, v26

    .line 249
    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getAndMeasure-0kLqBqw$default(Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;IJILjava/lang/Object;)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object v0

    const/4 v5, 0x0

    .line 250
    invoke-virtual {v8, v5, v0}, Lkotlin/collections/ArrayDeque;->add(ILjava/lang/Object;)V

    .line 251
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getCrossAxisSize()I

    move-result v1

    move/from16 v3, v32

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 252
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getMainAxisSizeWithSpacings()I

    move-result v0

    add-int v2, v29, v0

    move/from16 v0, v22

    move/from16 v5, v33

    goto :goto_e

    :cond_12
    move/from16 v29, v2

    move v3, v4

    move/from16 v33, v5

    const/4 v5, 0x0

    add-int/2addr v7, v6

    if-gez v29, :cond_13

    add-int v7, v7, v29

    add-int v2, v24, v29

    move v1, v0

    move v4, v3

    move v0, v7

    move v7, v2

    move v2, v5

    goto :goto_f

    :cond_13
    move v1, v0

    move v4, v3

    move v0, v7

    move/from16 v7, v24

    move/from16 v2, v29

    goto :goto_f

    :cond_14
    move/from16 v33, v5

    const/4 v5, 0x0

    move/from16 v1, p7

    move v7, v2

    move v4, v3

    move v0, v6

    move/from16 v2, v22

    .line 26
    :goto_f
    invoke-static/range {p8 .. p8}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 269
    invoke-static {v3}, Lkotlin/math/MathKt;->getSign(I)I

    move-result v3

    invoke-static {v0}, Lkotlin/math/MathKt;->getSign(I)I

    move-result v5

    if-ne v3, v5, :cond_15

    .line 26
    invoke-static/range {p8 .. p8}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 270
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-lt v3, v5, :cond_15

    int-to-float v3, v0

    move v5, v3

    goto :goto_10

    :cond_15
    move/from16 v5, p8

    :goto_10
    sub-float v3, p8, v5

    const/16 v22, 0x0

    if-eqz v14, :cond_16

    if-le v0, v6, :cond_16

    cmpg-float v24, v3, v22

    if-gtz v24, :cond_16

    sub-int/2addr v0, v6

    int-to-float v0, v0

    add-float/2addr v0, v3

    move/from16 v22, v0

    :cond_16
    if-ltz v2, :cond_17

    move/from16 v0, v16

    goto :goto_11

    :cond_17
    const/4 v0, 0x0

    :goto_11
    if-nez v0, :cond_18

    .line 288
    const-string v0, "negative currentFirstItemScrollOffset"

    .line 98
    invoke-static {v0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :cond_18
    neg-int v6, v2

    .line 291
    invoke-virtual {v8}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    if-gtz v10, :cond_1a

    if-gez p5, :cond_19

    goto :goto_12

    :cond_19
    move-object/from16 v3, p1

    move/from16 v25, v2

    move/from16 v24, v4

    move/from16 v2, p17

    move-object v4, v0

    move-object/from16 v0, p18

    goto :goto_14

    .line 296
    :cond_1a
    :goto_12
    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v3

    move-object/from16 p6, v0

    const/4 v0, 0x0

    :goto_13
    if-ge v0, v3, :cond_1b

    .line 297
    invoke-virtual {v8, v0}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move/from16 p7, v3

    invoke-virtual/range {v24 .. v24}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getMainAxisSizeWithSpacings()I

    move-result v3

    if-eqz v2, :cond_1b

    if-gt v3, v2, :cond_1b

    move/from16 v24, v4

    .line 301
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v4

    if-eq v0, v4, :cond_1c

    sub-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    .line 304
    invoke-virtual {v8, v0}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-object/from16 p6, v3

    move/from16 v4, v24

    move/from16 v3, p7

    goto :goto_13

    :cond_1b
    move/from16 v24, v4

    :cond_1c
    move-object/from16 v3, p1

    move-object/from16 v4, p6

    move-object/from16 v0, p18

    move/from16 v25, v2

    move/from16 v2, p17

    .line 313
    :goto_14
    invoke-static {v1, v3, v2, v0}, Landroidx/compose/foundation/lazy/LazyListMeasureKt;->createItemsBeforeList(ILandroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;ILjava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 34
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v0

    move/from16 v9, v24

    const/4 v2, 0x0

    :goto_15
    if-ge v2, v0, :cond_1d

    .line 35
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    .line 36
    check-cast v24, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move/from16 p6, v0

    .line 321
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getCrossAxisSize()I

    move-result v0

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    add-int/lit8 v2, v2, 0x1

    move/from16 v0, p6

    goto :goto_15

    :cond_1d
    move-object v0, v8

    move-object/from16 v24, v1

    move-object/from16 v1, p1

    move/from16 v2, p0

    move-object v15, v3

    move/from16 v3, p17

    move-object v15, v4

    move-object/from16 v4, p18

    move/from16 p6, v5

    const/16 v20, 0x0

    move/from16 v26, v6

    move/from16 v6, p20

    move/from16 p7, v7

    move-object/from16 v7, p21

    .line 325
    invoke-static/range {v0 .. v7}, Landroidx/compose/foundation/lazy/LazyListMeasureKt;->createItemsAfterList(Ljava/util/List;Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;IILjava/util/List;FZLandroidx/compose/foundation/lazy/LazyListLayoutInfo;)Ljava/util/List;

    move-result-object v2

    .line 34
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v0

    move/from16 v7, v20

    :goto_16
    if-ge v7, v0, :cond_1e

    .line 35
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 36
    check-cast v1, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 337
    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getCrossAxisSize()I

    move-result v1

    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    move-result v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_16

    .line 340
    :cond_1e
    invoke-virtual {v8}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 341
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 342
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f

    move/from16 v27, v16

    goto :goto_17

    :cond_1f
    move/from16 v27, v20

    :goto_17
    if-eqz p11, :cond_20

    move v7, v9

    goto :goto_18

    :cond_20
    move/from16 v7, p7

    .line 345
    :goto_18
    invoke-static {v12, v13, v7}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(JI)I

    move-result v7

    if-eqz p11, :cond_21

    move/from16 v9, p7

    .line 347
    :cond_21
    invoke-static {v12, v13, v9}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(JI)I

    move-result v9

    move-object v0, v8

    move-object/from16 v1, v24

    move v3, v7

    move v4, v9

    move/from16 v5, p7

    move/from16 v6, p2

    move/from16 p8, v7

    move/from16 v7, v26

    move-object/from16 v24, v8

    move/from16 v8, p11

    move/from16 p17, v9

    move-object/from16 v26, v15

    move/from16 v15, p2

    move-object/from16 v9, p12

    move-object/from16 v10, p13

    move/from16 v11, p14

    move-object/from16 v12, p15

    .line 350
    invoke-static/range {v0 .. v12}, Landroidx/compose/foundation/lazy/LazyListMeasureKt;->calculateItemsOffsets(Ljava/util/List;Ljava/util/List;Ljava/util/List;IIIIIZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ZLandroidx/compose/ui/unit/Density;)Ljava/util/List;

    move-result-object v13

    move/from16 v12, p6

    float-to-int v1, v12

    .line 371
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getKeyIndexMap()Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    move-result-object v5

    const/4 v9, 0x1

    move-object/from16 v0, p16

    move/from16 v2, p8

    move/from16 v3, p17

    move-object v4, v13

    move-object/from16 v6, p1

    move/from16 v7, p11

    move/from16 v8, p20

    move/from16 v10, p19

    move/from16 v11, v25

    move/from16 v28, v12

    move/from16 v12, p7

    move-object/from16 p6, v13

    move-object/from16 v13, p22

    move v15, v14

    move-object/from16 v14, p24

    .line 366
    invoke-virtual/range {v0 .. v14}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->onMeasured(IIILjava/util/List;Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItemProvider;ZZIZIILkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;)V

    if-nez v15, :cond_25

    .line 384
    invoke-virtual/range {p16 .. p16}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->getMinSizeToFitDisappearingItems-YbymL2g()J

    move-result-wide v0

    .line 385
    sget-object v2, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/unit/IntSize$Companion;->getZero-YbymL2g()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_25

    if-eqz p11, :cond_22

    move/from16 v7, p17

    goto :goto_19

    :cond_22
    move/from16 v7, p8

    :goto_19
    shr-long v2, v0, v19

    long-to-int v2, v2

    move/from16 v3, p8

    .line 388
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-wide/from16 v3, p9

    invoke-static {v3, v4, v2}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(JI)I

    move-result v2

    and-long v0, v0, v17

    long-to-int v0, v0

    move/from16 v1, p17

    .line 390
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v3, v4, v0}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(JI)I

    move-result v9

    if-eqz p11, :cond_23

    move v0, v9

    goto :goto_1a

    :cond_23
    move v0, v2

    :goto_1a
    if-eq v0, v7, :cond_24

    .line 34
    invoke-interface/range {p6 .. p6}, Ljava/util/Collection;->size()I

    move-result v1

    move/from16 v7, v20

    :goto_1b
    if-ge v7, v1, :cond_24

    move-object/from16 v8, p6

    .line 35
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 36
    check-cast v3, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 393
    invoke-virtual {v3, v0}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->updateMainAxisLayoutSize(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1b

    :cond_24
    move-object/from16 v8, p6

    move v10, v9

    move v9, v2

    goto :goto_1c

    :cond_25
    move-object/from16 v8, p6

    move/from16 v3, p8

    move/from16 v1, p17

    move v10, v1

    move v9, v3

    .line 402
    :goto_1c
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getHeaderIndexes()Landroidx/collection/IntList;

    move-result-object v2

    .line 400
    new-instance v7, Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$stickingItems$1;

    move-object/from16 v11, p1

    move-object/from16 v12, v26

    invoke-direct {v7, v11}, Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$stickingItems$1;-><init>(Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;)V

    move-object/from16 v0, p25

    move-object v1, v8

    move/from16 v3, p3

    move/from16 v4, p4

    move v5, v9

    move v6, v10

    invoke-static/range {v0 .. v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutStickyItemsKt;->applyStickyItems(Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement;Ljava/util/List;Landroidx/collection/IntList;IIIILkotlin/jvm/functions/Function1;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v27, :cond_27

    .line 412
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    if-eqz v2, :cond_26

    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1d

    :cond_26
    move-object v2, v1

    goto :goto_1d

    .line 413
    :cond_27
    invoke-virtual/range {v24 .. v24}, Lkotlin/collections/ArrayDeque;->firstOrNull()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    if-eqz v2, :cond_26

    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_1d
    if-eqz v27, :cond_29

    .line 415
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    if-eqz v3, :cond_28

    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_28
    :goto_1e
    move/from16 v14, p0

    move/from16 v3, v33

    goto :goto_1f

    .line 416
    :cond_29
    invoke-virtual/range {v24 .. v24}, Lkotlin/collections/ArrayDeque;->lastOrNull()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    if-eqz v3, :cond_28

    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1e

    :goto_1f
    if-lt v3, v14, :cond_2b

    move/from16 v3, p2

    move/from16 v5, p7

    move v4, v15

    if-le v5, v3, :cond_2a

    goto :goto_20

    :cond_2a
    move/from16 v3, v20

    goto :goto_21

    :cond_2b
    move v4, v15

    :goto_20
    move/from16 v3, v16

    .line 424
    :goto_21
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$8;

    move-object/from16 v9, p23

    invoke-direct {v7, v9, v8, v0, v4}, Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$8;-><init>(Landroidx/compose/runtime/MutableState;Ljava/util/List;Ljava/util/List;Z)V

    move-object/from16 v4, p26

    invoke-interface {v4, v5, v6, v7}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroidx/compose/ui/layout/MeasureResult;

    if-eqz v2, :cond_2c

    .line 443
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_22

    :cond_2c
    move/from16 v7, v20

    :goto_22
    if-eqz v1, :cond_2d

    .line 444
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_23

    :cond_2d
    move/from16 v1, v20

    .line 442
    :goto_23
    invoke-static {v7, v1, v8, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItemKt;->updatedVisibleItems(IILjava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v13

    if-eqz p11, :cond_2e

    .line 452
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    :goto_24
    move-object/from16 v17, v0

    goto :goto_25

    :cond_2e
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_24

    .line 458
    :goto_25
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getChildConstraints-msEJaDk()J

    move-result-wide v10

    .line 418
    new-instance v24, Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    move-object/from16 v0, v24

    const/16 v20, 0x0

    move-object v1, v12

    move/from16 v2, v25

    move/from16 v4, v28

    move/from16 v6, v22

    move/from16 v7, v23

    move-object/from16 v8, p22

    move-object/from16 v9, p15

    move-object v12, v13

    move/from16 v13, v21

    move/from16 v14, v30

    move/from16 v15, p0

    move/from16 v16, p14

    move/from16 v18, p4

    move/from16 v19, p5

    invoke-direct/range {v0 .. v20}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;-><init>(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;IZFLandroidx/compose/ui/layout/MeasureResult;FZLkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/unit/Density;JLjava/util/List;IIIZLandroidx/compose/foundation/gestures/Orientation;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v24
.end method
