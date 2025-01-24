.class public abstract Landroidx/compose/foundation/lazy/layout/LazyLayoutStickyItemsKt;
.super Ljava/lang/Object;
.source "LazyLayoutStickyItems.kt"


# direct methods
.method public static final synthetic access$getMainAxisOffset(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;)I
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutStickyItemsKt;->getMainAxisOffset(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;)I

    move-result p0

    return p0
.end method

.method public static final applyStickyItems(Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement;Ljava/util/List;Landroidx/collection/IntList;IIIILkotlin/jvm/functions/Function1;)Ljava/util/List;
    .locals 17

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v0, p2

    if-eqz v9, :cond_6

    .line 178
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 365
    iget v1, v0, Landroidx/collection/IntList;->_size:I

    if-eqz v1, :cond_6

    .line 182
    invoke-static/range {p1 .. p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    invoke-interface {v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getIndex()I

    move-result v1

    .line 183
    invoke-static/range {p1 .. p1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    invoke-interface {v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getIndex()I

    move-result v2

    .line 181
    invoke-interface {v9, v1, v2, v0}, Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement;->getStickingIndices(IILandroidx/collection/IntList;)Landroidx/collection/IntList;

    move-result-object v1

    .line 187
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 230
    new-instance v12, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v12, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 35
    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 231
    move-object v5, v4

    check-cast v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    .line 188
    invoke-interface {v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getIndex()I

    move-result v5

    invoke-virtual {v0, v5}, Landroidx/collection/IntList;->contains(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 231
    invoke-interface {v12, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 237
    :cond_1
    iget-object v14, v1, Landroidx/collection/IntList;->content:[I

    .line 238
    iget v15, v1, Landroidx/collection/IntList;->_size:I

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v15, :cond_7

    .line 239
    aget v2, v14, v8

    .line 351
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 352
    check-cast v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    .line 192
    invoke-interface {v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getIndex()I

    move-result v3

    if-ne v3, v2, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    move v1, v4

    :goto_3
    if-ne v1, v4, :cond_4

    .line 196
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v7, p7

    invoke-interface {v7, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    :goto_4
    move-object v6, v0

    goto :goto_5

    :cond_4
    move-object/from16 v7, p7

    .line 198
    invoke-interface {v10, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    goto :goto_4

    .line 204
    :goto_5
    invoke-interface {v6}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getMainAxisSizeWithSpacings()I

    move-result v3

    if-ne v1, v4, :cond_5

    const/high16 v0, -0x80000000

    :goto_6
    move v4, v0

    goto :goto_7

    .line 205
    :cond_5
    invoke-static {v6}, Landroidx/compose/foundation/lazy/layout/LazyLayoutStickyItemsKt;->getMainAxisOffset(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;)I

    move-result v0

    goto :goto_6

    :goto_7
    move-object/from16 v0, p0

    move-object v1, v12

    move/from16 v5, p3

    move-object v13, v6

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v16, v8

    move/from16 v8, p6

    .line 201
    invoke-interface/range {v0 .. v8}, Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement;->calculateStickingItemOffset(Ljava/util/List;IIIIIII)I

    move-result v0

    const/4 v1, 0x1

    .line 211
    invoke-interface {v13, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->setNonScrollableItem(Z)V

    move/from16 v1, p5

    move/from16 v2, p6

    const/4 v3, 0x0

    .line 212
    invoke-interface {v13, v0, v3, v1, v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->position(IIII)V

    .line 213
    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v16, 0x1

    goto :goto_1

    .line 217
    :cond_6
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v11

    :cond_7
    return-object v11
.end method

.method private static final getMainAxisOffset(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;)I
    .locals 2

    const/4 v0, 0x0

    .line 161
    invoke-interface {p0, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getOffset-Bjo55l4(I)J

    move-result-wide v0

    invoke-interface {p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->isVertical()Z

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
