.class public final Landroidx/collection/MutableOrderedScatterSet;
.super Landroidx/collection/OrderedScatterSet;
.source "OrderedScatterSet.kt"


# instance fields
.field private growthLimit:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 607
    invoke-direct {p0, v0}, Landroidx/collection/OrderedScatterSet;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 612
    const-string v0, "Capacity must be a positive value."

    .line 61
    invoke-static {v0}, Landroidx/collection/internal/RuntimeHelpersKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 613
    :cond_1
    invoke-static {p1}, Landroidx/collection/ScatterMapKt;->unloadedCapacity(I)I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/collection/MutableOrderedScatterSet;->initializeStorage(I)V

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x6

    .line 606
    :cond_0
    invoke-direct {p0, p1}, Landroidx/collection/MutableOrderedScatterSet;-><init>(I)V

    return-void
.end method

.method private final findAbsoluteInsertIndex(Ljava/lang/Object;)I
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_0

    .line 1174
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const v4, -0x3361d2af    # -8.2930312E7f

    mul-int/2addr v3, v4

    shl-int/lit8 v4, v3, 0x10

    xor-int/2addr v3, v4

    ushr-int/lit8 v4, v3, 0x7

    and-int/lit8 v3, v3, 0x7f

    .line 1116
    iget v5, v0, Landroidx/collection/OrderedScatterSet;->_capacity:I

    and-int v6, v4, v5

    const/4 v7, 0x0

    .line 1121
    :goto_1
    iget-object v8, v0, Landroidx/collection/OrderedScatterSet;->metadata:[J

    shr-int/lit8 v9, v6, 0x3

    and-int/lit8 v10, v6, 0x7

    shl-int/lit8 v10, v10, 0x3

    .line 1383
    aget-wide v11, v8, v9

    ushr-long/2addr v11, v10

    const/4 v13, 0x1

    add-int/2addr v9, v13

    aget-wide v8, v8, v9

    rsub-int/lit8 v14, v10, 0x40

    shl-long/2addr v8, v14

    int-to-long v14, v10

    neg-long v14, v14

    const/16 v10, 0x3f

    shr-long/2addr v14, v10

    and-long/2addr v8, v14

    or-long/2addr v8, v11

    int-to-long v10, v3

    const-wide v14, 0x101010101010101L

    mul-long v16, v10, v14

    move/from16 v18, v3

    xor-long v2, v8, v16

    sub-long v14, v2, v14

    not-long v2, v2

    and-long/2addr v2, v14

    const-wide v14, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v2, v14

    :goto_2
    const-wide/16 v16, 0x0

    cmp-long v19, v2, v16

    if-eqz v19, :cond_2

    .line 1306
    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v16

    shr-int/lit8 v16, v16, 0x3

    add-int v16, v6, v16

    and-int v16, v16, v5

    .line 1125
    iget-object v12, v0, Landroidx/collection/OrderedScatterSet;->elements:[Ljava/lang/Object;

    aget-object v12, v12, v16

    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    return v16

    :cond_1
    const-wide/16 v16, 0x1

    sub-long v16, v2, v16

    and-long v2, v2, v16

    goto :goto_2

    :cond_2
    not-long v2, v8

    const/4 v12, 0x6

    shl-long/2addr v2, v12

    and-long/2addr v2, v8

    and-long/2addr v2, v14

    cmp-long v2, v2, v16

    if-eqz v2, :cond_6

    .line 1139
    invoke-direct {v0, v4}, Landroidx/collection/MutableOrderedScatterSet;->findFirstAvailableSlot(I)I

    move-result v1

    .line 1140
    iget v2, v0, Landroidx/collection/MutableOrderedScatterSet;->growthLimit:I

    const-wide/16 v5, 0xff

    if-nez v2, :cond_4

    iget-object v2, v0, Landroidx/collection/OrderedScatterSet;->metadata:[J

    shr-int/lit8 v3, v1, 0x3

    .line 1229
    aget-wide v2, v2, v3

    and-int/lit8 v7, v1, 0x7

    shl-int/lit8 v7, v7, 0x3

    shr-long/2addr v2, v7

    and-long/2addr v2, v5

    const-wide/16 v7, 0xfe

    cmp-long v2, v2, v7

    if-nez v2, :cond_3

    goto :goto_3

    .line 1141
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroidx/collection/MutableOrderedScatterSet;->adjustStorage$collection()V

    .line 1142
    invoke-direct {v0, v4}, Landroidx/collection/MutableOrderedScatterSet;->findFirstAvailableSlot(I)I

    move-result v1

    .line 1145
    :cond_4
    :goto_3
    iget v2, v0, Landroidx/collection/OrderedScatterSet;->_size:I

    add-int/2addr v2, v13

    iput v2, v0, Landroidx/collection/OrderedScatterSet;->_size:I

    .line 1146
    iget v2, v0, Landroidx/collection/MutableOrderedScatterSet;->growthLimit:I

    iget-object v3, v0, Landroidx/collection/OrderedScatterSet;->metadata:[J

    shr-int/lit8 v4, v1, 0x3

    .line 1229
    aget-wide v7, v3, v4

    and-int/lit8 v9, v1, 0x7

    shl-int/lit8 v9, v9, 0x3

    shr-long v14, v7, v9

    and-long/2addr v14, v5

    const-wide/16 v16, 0x80

    cmp-long v12, v14, v16

    if-nez v12, :cond_5

    move/from16 v19, v13

    goto :goto_4

    :cond_5
    const/16 v19, 0x0

    :goto_4
    sub-int v2, v2, v19

    .line 1146
    iput v2, v0, Landroidx/collection/MutableOrderedScatterSet;->growthLimit:I

    .line 1147
    iget v0, v0, Landroidx/collection/OrderedScatterSet;->_capacity:I

    shl-long/2addr v5, v9

    not-long v5, v5

    and-long/2addr v5, v7

    shl-long v7, v10, v9

    or-long/2addr v5, v7

    .line 1267
    aput-wide v5, v3, v4

    add-int/lit8 v2, v1, -0x7

    and-int/2addr v2, v0

    and-int/lit8 v0, v0, 0x7

    add-int/2addr v2, v0

    shr-int/lit8 v0, v2, 0x3

    .line 1252
    aput-wide v5, v3, v0

    return v1

    :cond_6
    add-int/lit8 v7, v7, 0x8

    add-int/2addr v6, v7

    and-int/2addr v6, v5

    move/from16 v3, v18

    goto/16 :goto_1
.end method

.method private final findFirstAvailableSlot(I)I
    .locals 9

    .line 1157
    iget v0, p0, Landroidx/collection/OrderedScatterSet;->_capacity:I

    and-int/2addr p1, v0

    const/4 v1, 0x0

    .line 1161
    :goto_0
    iget-object v2, p0, Landroidx/collection/OrderedScatterSet;->metadata:[J

    shr-int/lit8 v3, p1, 0x3

    and-int/lit8 v4, p1, 0x7

    shl-int/lit8 v4, v4, 0x3

    .line 1383
    aget-wide v5, v2, v3

    ushr-long/2addr v5, v4

    add-int/lit8 v3, v3, 0x1

    aget-wide v2, v2, v3

    rsub-int/lit8 v7, v4, 0x40

    shl-long/2addr v2, v7

    int-to-long v7, v4

    neg-long v7, v7

    const/16 v4, 0x3f

    shr-long/2addr v7, v4

    and-long/2addr v2, v7

    or-long/2addr v2, v5

    not-long v4, v2

    const/4 v6, 0x7

    shl-long/2addr v4, v6

    and-long/2addr v2, v4

    const-wide v4, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    .line 1306
    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result p0

    shr-int/lit8 p0, p0, 0x3

    add-int/2addr p1, p0

    and-int p0, p1, v0

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x8

    add-int/2addr p1, v1

    and-int/2addr p1, v0

    goto :goto_0
.end method

.method private final fixupNodes([I)V
    .locals 11

    .line 1365
    iget-object v0, p0, Landroidx/collection/OrderedScatterSet;->nodes:[J

    .line 1366
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    const v3, 0x7fffffff

    if-ge v2, v1, :cond_2

    .line 1367
    aget-wide v4, v0, v2

    const/16 v6, 0x1f

    shr-long v7, v4, v6

    const-wide/32 v9, 0x7fffffff

    and-long/2addr v7, v9

    long-to-int v7, v7

    and-long v8, v4, v9

    long-to-int v8, v8

    const-wide/high16 v9, -0x4000000000000000L    # -2.0

    and-long/2addr v4, v9

    if-ne v7, v3, :cond_0

    move v7, v3

    goto :goto_1

    .line 1099
    :cond_0
    aget v7, p1, v7

    :goto_1
    int-to-long v9, v7

    or-long/2addr v4, v9

    shl-long/2addr v4, v6

    if-ne v8, v3, :cond_1

    goto :goto_2

    .line 1101
    :cond_1
    aget v3, p1, v8

    :goto_2
    int-to-long v6, v3

    or-long v3, v4, v6

    .line 1098
    aput-wide v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1372
    :cond_2
    iget v0, p0, Landroidx/collection/OrderedScatterSet;->head:I

    if-eq v0, v3, :cond_3

    aget v0, p1, v0

    iput v0, p0, Landroidx/collection/OrderedScatterSet;->head:I

    .line 1373
    :cond_3
    iget v0, p0, Landroidx/collection/OrderedScatterSet;->tail:I

    if-eq v0, v3, :cond_4

    aget p1, p1, v0

    iput p1, p0, Landroidx/collection/OrderedScatterSet;->tail:I

    :cond_4
    return-void
.end method

.method private final initializeGrowth()V
    .locals 2

    .line 646
    invoke-virtual {p0}, Landroidx/collection/OrderedScatterSet;->getCapacity()I

    move-result v0

    invoke-static {v0}, Landroidx/collection/ScatterMapKt;->loadedCapacity(I)I

    move-result v0

    iget v1, p0, Landroidx/collection/OrderedScatterSet;->_size:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroidx/collection/MutableOrderedScatterSet;->growthLimit:I

    return-void
.end method

.method private final initializeMetadata(I)V
    .locals 8

    if-nez p1, :cond_0

    .line 635
    sget-object v0, Landroidx/collection/ScatterMapKt;->EmptyGroup:[J

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p1, 0xf

    and-int/lit8 v0, v0, -0x8

    shr-int/lit8 v0, v0, 0x3

    .line 639
    new-array v0, v0, [J

    const/4 v6, 0x6

    const/4 v7, 0x0

    const-wide v2, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v7}, Lkotlin/collections/ArraysKt;->fill$default([JJIIILjava/lang/Object;)V

    .line 633
    :goto_0
    iput-object v0, p0, Landroidx/collection/OrderedScatterSet;->metadata:[J

    shr-int/lit8 v1, p1, 0x3

    and-int/lit8 p1, p1, 0x7

    shl-int/lit8 p1, p1, 0x3

    .line 1267
    aget-wide v2, v0, v1

    const-wide/16 v4, 0xff

    shl-long/2addr v4, p1

    not-long v6, v4

    and-long/2addr v2, v6

    or-long/2addr v2, v4

    aput-wide v2, v0, v1

    .line 642
    invoke-direct {p0}, Landroidx/collection/MutableOrderedScatterSet;->initializeGrowth()V

    return-void
.end method

.method private final initializeStorage(I)V
    .locals 7

    if-lez p1, :cond_0

    const/4 v0, 0x7

    .line 621
    invoke-static {p1}, Landroidx/collection/ScatterMapKt;->normalizeCapacity(I)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 625
    :goto_0
    iput p1, p0, Landroidx/collection/OrderedScatterSet;->_capacity:I

    .line 626
    invoke-direct {p0, p1}, Landroidx/collection/MutableOrderedScatterSet;->initializeMetadata(I)V

    if-nez p1, :cond_1

    .line 627
    sget-object v0, Landroidx/collection/internal/ContainerHelpersKt;->EMPTY_OBJECTS:[Ljava/lang/Object;

    goto :goto_1

    :cond_1
    new-array v0, p1, [Ljava/lang/Object;

    :goto_1
    iput-object v0, p0, Landroidx/collection/OrderedScatterSet;->elements:[Ljava/lang/Object;

    if-nez p1, :cond_2

    .line 629
    invoke-static {}, Landroidx/collection/SieveCacheKt;->getEmptyNodes()[J

    move-result-object p1

    goto :goto_2

    :cond_2
    new-array p1, p1, [J

    const/4 v5, 0x6

    const/4 v6, 0x0

    const-wide v1, 0x3fffffffffffffffL    # 1.9999999999999998

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lkotlin/collections/ArraysKt;->fill$default([JJIIILjava/lang/Object;)V

    .line 628
    :goto_2
    iput-object p1, p0, Landroidx/collection/OrderedScatterSet;->nodes:[J

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 11

    .line 657
    invoke-virtual {p0}, Landroidx/collection/OrderedScatterSet;->getSize()I

    move-result v0

    .line 658
    invoke-direct {p0, p1}, Landroidx/collection/MutableOrderedScatterSet;->findAbsoluteInsertIndex(Ljava/lang/Object;)I

    move-result v1

    .line 659
    iget-object v2, p0, Landroidx/collection/OrderedScatterSet;->elements:[Ljava/lang/Object;

    aput-object p1, v2, v1

    .line 1058
    iget-object p1, p0, Landroidx/collection/OrderedScatterSet;->nodes:[J

    iget v2, p0, Landroidx/collection/OrderedScatterSet;->head:I

    int-to-long v3, v2

    const-wide/32 v5, 0x7fffffff

    and-long/2addr v3, v5

    const-wide v7, 0x3fffffff80000000L    # 1.9999995231628418

    or-long/2addr v3, v7

    .line 1106
    aput-wide v3, p1, v1

    const v3, 0x7fffffff

    if-eq v2, v3, :cond_0

    .line 1061
    aget-wide v7, p1, v2

    const-wide v9, -0x3fffffff80000001L    # -2.000000953674316

    and-long/2addr v7, v9

    int-to-long v9, v1

    and-long v4, v9, v5

    const/16 v6, 0x1f

    shl-long/2addr v4, v6

    or-long/2addr v4, v7

    .line 1109
    aput-wide v4, p1, v2

    .line 1063
    :cond_0
    iput v1, p0, Landroidx/collection/OrderedScatterSet;->head:I

    .line 1065
    iget p1, p0, Landroidx/collection/OrderedScatterSet;->tail:I

    if-ne p1, v3, :cond_1

    .line 1066
    iput v1, p0, Landroidx/collection/OrderedScatterSet;->tail:I

    .line 661
    :cond_1
    invoke-virtual {p0}, Landroidx/collection/OrderedScatterSet;->getSize()I

    move-result p0

    if-eq p0, v0, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final addAll(Ljava/lang/Iterable;)Z
    .locals 1

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 696
    invoke-virtual {p0}, Landroidx/collection/OrderedScatterSet;->getSize()I

    move-result v0

    .line 697
    invoke-virtual {p0, p1}, Landroidx/collection/MutableOrderedScatterSet;->plusAssign(Ljava/lang/Iterable;)V

    .line 698
    invoke-virtual {p0}, Landroidx/collection/OrderedScatterSet;->getSize()I

    move-result p0

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final adjustStorage$collection()V
    .locals 6

    .line 1211
    iget v0, p0, Landroidx/collection/OrderedScatterSet;->_capacity:I

    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    iget v0, p0, Landroidx/collection/OrderedScatterSet;->_size:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    const-wide/16 v2, 0x20

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    iget v2, p0, Landroidx/collection/OrderedScatterSet;->_capacity:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v2

    const-wide/16 v4, 0x19

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result v0

    if-gtz v0, :cond_0

    .line 1212
    invoke-virtual {p0}, Landroidx/collection/MutableOrderedScatterSet;->dropDeletes$collection()V

    goto :goto_0

    .line 1214
    :cond_0
    iget v0, p0, Landroidx/collection/OrderedScatterSet;->_capacity:I

    invoke-static {v0}, Landroidx/collection/ScatterMapKt;->nextCapacity(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/collection/MutableOrderedScatterSet;->resizeStorage$collection(I)V

    :goto_0
    return-void
.end method

.method public final asMutableSet()Ljava/util/Set;
    .locals 1

    .line 1389
    new-instance v0, Landroidx/collection/MutableOrderedScatterSet$MutableSetWrapper;

    invoke-direct {v0, p0}, Landroidx/collection/MutableOrderedScatterSet$MutableSetWrapper;-><init>(Landroidx/collection/MutableOrderedScatterSet;)V

    return-object v0
.end method

.method public final clear()V
    .locals 11

    const/4 v0, 0x0

    .line 1093
    iput v0, p0, Landroidx/collection/OrderedScatterSet;->_size:I

    .line 1094
    iget-object v1, p0, Landroidx/collection/OrderedScatterSet;->metadata:[J

    sget-object v2, Landroidx/collection/ScatterMapKt;->EmptyGroup:[J

    if-eq v1, v2, :cond_0

    const/4 v6, 0x6

    const/4 v7, 0x0

    const-wide v2, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1095
    invoke-static/range {v1 .. v7}, Lkotlin/collections/ArraysKt;->fill$default([JJIIILjava/lang/Object;)V

    .line 1096
    iget-object v1, p0, Landroidx/collection/OrderedScatterSet;->metadata:[J

    iget v2, p0, Landroidx/collection/OrderedScatterSet;->_capacity:I

    shr-int/lit8 v3, v2, 0x3

    and-int/lit8 v2, v2, 0x7

    shl-int/lit8 v2, v2, 0x3

    .line 1267
    aget-wide v4, v1, v3

    const-wide/16 v6, 0xff

    shl-long/2addr v6, v2

    not-long v8, v6

    and-long/2addr v4, v8

    or-long/2addr v4, v6

    aput-wide v4, v1, v3

    .line 1098
    :cond_0
    iget-object v1, p0, Landroidx/collection/OrderedScatterSet;->elements:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Landroidx/collection/OrderedScatterSet;->_capacity:I

    invoke-static {v1, v2, v0, v3}, Lkotlin/collections/ArraysKt;->fill([Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 1099
    iget-object v4, p0, Landroidx/collection/OrderedScatterSet;->nodes:[J

    const/4 v9, 0x6

    const/4 v10, 0x0

    const-wide v5, 0x3fffffffffffffffL    # 1.9999999999999998

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v4 .. v10}, Lkotlin/collections/ArraysKt;->fill$default([JJIIILjava/lang/Object;)V

    const v0, 0x7fffffff

    .line 1100
    iput v0, p0, Landroidx/collection/OrderedScatterSet;->head:I

    .line 1101
    iput v0, p0, Landroidx/collection/OrderedScatterSet;->tail:I

    .line 1102
    invoke-direct {p0}, Landroidx/collection/MutableOrderedScatterSet;->initializeGrowth()V

    return-void
.end method

.method public final dropDeletes$collection()V
    .locals 26

    move-object/from16 v0, p0

    .line 1220
    iget-object v1, v0, Landroidx/collection/OrderedScatterSet;->metadata:[J

    if-nez v1, :cond_0

    return-void

    .line 1225
    :cond_0
    iget v2, v0, Landroidx/collection/OrderedScatterSet;->_capacity:I

    .line 1226
    iget-object v3, v0, Landroidx/collection/OrderedScatterSet;->elements:[Ljava/lang/Object;

    .line 1227
    iget-object v4, v0, Landroidx/collection/OrderedScatterSet;->nodes:[J

    .line 1229
    new-array v5, v2, [I

    add-int/lit8 v6, v2, 0x7

    shr-int/lit8 v6, v6, 0x3

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v6, :cond_1

    .line 1147
    aget-wide v9, v1, v8

    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v9, v11

    not-long v11, v9

    const/4 v13, 0x7

    ushr-long/2addr v9, v13

    add-long/2addr v11, v9

    const-wide v9, -0x101010101010102L

    and-long/2addr v9, v11

    .line 1148
    aput-wide v9, v1, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1151
    :cond_1
    invoke-static {v1}, Lkotlin/collections/ArraysKt;->getLastIndex([J)I

    move-result v6

    add-int/lit8 v8, v6, -0x1

    .line 1154
    aget-wide v9, v1, v8

    const-wide v11, 0xffffffffffffffL

    and-long/2addr v9, v11

    const-wide/high16 v11, -0x100000000000000L

    or-long/2addr v9, v11

    aput-wide v9, v1, v8

    .line 1156
    aget-wide v8, v1, v7

    aput-wide v8, v1, v6

    move v8, v7

    const/4 v9, -0x1

    :goto_1
    if-eq v8, v2, :cond_8

    shr-int/lit8 v10, v8, 0x3

    .line 1229
    aget-wide v11, v1, v10

    and-int/lit8 v13, v8, 0x7

    shl-int/lit8 v13, v13, 0x3

    shr-long/2addr v11, v13

    const-wide/16 v14, 0xff

    and-long/2addr v11, v14

    const-wide/16 v16, 0x80

    cmp-long v18, v11, v16

    if-nez v18, :cond_2

    add-int/lit8 v9, v8, 0x1

    move/from16 v25, v9

    move v9, v8

    move/from16 v8, v25

    goto :goto_1

    :cond_2
    const-wide/16 v18, 0xfe

    cmp-long v11, v11, v18

    if-eqz v11, :cond_3

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1254
    :cond_3
    aget-object v11, v3, v8

    if-eqz v11, :cond_4

    .line 1174
    invoke-virtual {v11}, Ljava/lang/Object;->hashCode()I

    move-result v11

    goto :goto_3

    :cond_4
    move v11, v7

    :goto_3
    const v12, -0x3361d2af    # -8.2930312E7f

    mul-int/2addr v11, v12

    shl-int/lit8 v12, v11, 0x10

    xor-int/2addr v11, v12

    ushr-int/lit8 v12, v11, 0x7

    .line 1256
    invoke-direct {v0, v12}, Landroidx/collection/MutableOrderedScatterSet;->findFirstAvailableSlot(I)I

    move-result v18

    and-int/2addr v12, v2

    sub-int v19, v18, v12

    and-int v19, v19, v2

    .line 1262
    div-int/lit8 v6, v19, 0x8

    sub-int v12, v8, v12

    and-int/2addr v12, v2

    .line 1263
    div-int/lit8 v12, v12, 0x8

    if-ne v6, v12, :cond_5

    and-int/lit8 v6, v11, 0x7f

    int-to-long v11, v6

    .line 1267
    aget-wide v16, v1, v10

    shl-long/2addr v14, v13

    not-long v14, v14

    and-long v14, v16, v14

    shl-long/2addr v11, v13

    or-long/2addr v11, v14

    aput-wide v11, v1, v10

    .line 1269
    aput v8, v5, v8

    .line 1272
    array-length v6, v1

    add-int/lit8 v6, v6, -0x1

    aget-wide v10, v1, v7

    aput-wide v10, v1, v6

    goto :goto_2

    :cond_5
    shr-int/lit8 v6, v18, 0x3

    .line 1229
    aget-wide v20, v1, v6

    and-int/lit8 v12, v18, 0x7

    shl-int/lit8 v12, v12, 0x3

    shr-long v22, v20, v12

    and-long v22, v22, v14

    cmp-long v19, v22, v16

    if-nez v19, :cond_6

    and-int/lit8 v9, v11, 0x7f

    move/from16 v22, v8

    int-to-long v7, v9

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    shl-long v4, v14, v12

    not-long v4, v4

    and-long v4, v20, v4

    shl-long/2addr v7, v12

    or-long/2addr v4, v7

    .line 1267
    aput-wide v4, v1, v6

    .line 1267
    aget-wide v4, v1, v10

    shl-long v6, v14, v13

    not-long v6, v6

    and-long/2addr v4, v6

    shl-long v6, v16, v13

    or-long/2addr v4, v6

    aput-wide v4, v1, v10

    .line 1285
    aget-object v4, v3, v22

    aput-object v4, v3, v18

    const/4 v4, 0x0

    .line 1286
    aput-object v4, v3, v22

    .line 1288
    aget-wide v4, v23, v22

    aput-wide v4, v23, v18

    const-wide v4, 0x3fffffffffffffffL    # 1.9999999999999998

    .line 1289
    aput-wide v4, v23, v22

    .line 1291
    aput v18, v24, v22

    move/from16 v8, v22

    move v9, v8

    const/4 v4, -0x1

    goto :goto_4

    :cond_6
    move-object/from16 v23, v4

    move-object/from16 v24, v5

    move/from16 v22, v8

    and-int/lit8 v4, v11, 0x7f

    int-to-long v4, v4

    shl-long v7, v14, v12

    not-long v7, v7

    and-long v7, v20, v7

    shl-long/2addr v4, v12

    or-long/2addr v4, v7

    .line 1267
    aput-wide v4, v1, v6

    const/4 v4, -0x1

    if-ne v9, v4, :cond_7

    add-int/lit8 v8, v22, 0x1

    .line 1301
    invoke-static {v1, v8, v2}, Landroidx/collection/ScatterMapKt;->findEmptySlot([JII)I

    move-result v9

    .line 1304
    :cond_7
    aget-object v5, v3, v18

    aput-object v5, v3, v9

    .line 1305
    aget-object v5, v3, v22

    aput-object v5, v3, v18

    .line 1306
    aget-object v5, v3, v9

    aput-object v5, v3, v22

    .line 1308
    aget-wide v5, v23, v18

    aput-wide v5, v23, v9

    .line 1309
    aget-wide v5, v23, v22

    aput-wide v5, v23, v18

    .line 1310
    aget-wide v5, v23, v9

    aput-wide v5, v23, v22

    .line 1312
    aput v18, v24, v22

    .line 1313
    aput v22, v24, v18

    add-int/lit8 v8, v22, -0x1

    .line 1321
    :goto_4
    array-length v5, v1

    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x0

    aget-wide v10, v1, v6

    aput-wide v10, v1, v5

    add-int/lit8 v8, v8, 0x1

    move v7, v6

    move-object/from16 v4, v23

    move-object/from16 v5, v24

    goto/16 :goto_1

    :cond_8
    move-object/from16 v24, v5

    .line 1326
    invoke-direct/range {p0 .. p0}, Landroidx/collection/MutableOrderedScatterSet;->initializeGrowth()V

    move-object/from16 v1, v24

    .line 1328
    invoke-direct {v0, v1}, Landroidx/collection/MutableOrderedScatterSet;->fixupNodes([I)V

    return-void
.end method

.method public final minusAssign(Ljava/lang/Iterable;)V
    .locals 1

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1855
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 931
    invoke-virtual {p0, v0}, Landroidx/collection/MutableOrderedScatterSet;->minusAssign(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final minusAssign(Ljava/lang/Object;)V
    .locals 13

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1174
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const v2, -0x3361d2af    # -8.2930312E7f

    mul-int/2addr v1, v2

    shl-int/lit8 v2, v1, 0x10

    xor-int/2addr v1, v2

    and-int/lit8 v2, v1, 0x7f

    .line 513
    iget v3, p0, Landroidx/collection/OrderedScatterSet;->_capacity:I

    ushr-int/lit8 v1, v1, 0x7

    :goto_1
    and-int/2addr v1, v3

    .line 517
    iget-object v4, p0, Landroidx/collection/OrderedScatterSet;->metadata:[J

    shr-int/lit8 v5, v1, 0x3

    and-int/lit8 v6, v1, 0x7

    shl-int/lit8 v6, v6, 0x3

    .line 1383
    aget-wide v7, v4, v5

    ushr-long/2addr v7, v6

    add-int/lit8 v5, v5, 0x1

    aget-wide v4, v4, v5

    rsub-int/lit8 v9, v6, 0x40

    shl-long/2addr v4, v9

    int-to-long v9, v6

    neg-long v9, v9

    const/16 v6, 0x3f

    shr-long/2addr v9, v6

    and-long/2addr v4, v9

    or-long/2addr v4, v7

    int-to-long v6, v2

    const-wide v8, 0x101010101010101L

    mul-long/2addr v6, v8

    xor-long/2addr v6, v4

    sub-long v8, v6, v8

    not-long v6, v6

    and-long/2addr v6, v8

    const-wide v8, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v6, v8

    :goto_2
    const-wide/16 v10, 0x0

    cmp-long v12, v6, v10

    if-eqz v12, :cond_2

    .line 1306
    invoke-static {v6, v7}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v10

    shr-int/lit8 v10, v10, 0x3

    add-int/2addr v10, v1

    and-int/2addr v10, v3

    .line 521
    iget-object v11, p0, Landroidx/collection/OrderedScatterSet;->elements:[Ljava/lang/Object;

    aget-object v11, v11, v10

    invoke-static {v11, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    goto :goto_3

    :cond_1
    const-wide/16 v10, 0x1

    sub-long v10, v6, v10

    and-long/2addr v6, v10

    goto :goto_2

    :cond_2
    not-long v6, v4

    const/4 v12, 0x6

    shl-long/2addr v6, v12

    and-long/2addr v4, v6

    and-long/2addr v4, v8

    cmp-long v4, v4, v10

    if-eqz v4, :cond_4

    const/4 v10, -0x1

    :goto_3
    if-ltz v10, :cond_3

    .line 831
    invoke-virtual {p0, v10}, Landroidx/collection/MutableOrderedScatterSet;->removeElementAt(I)V

    :cond_3
    return-void

    :cond_4
    add-int/lit8 v0, v0, 0x8

    add-int/2addr v1, v0

    goto :goto_1
.end method

.method public final plusAssign(Ljava/lang/Iterable;)V
    .locals 1

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1855
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 768
    invoke-virtual {p0, v0}, Landroidx/collection/MutableOrderedScatterSet;->plusAssign(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final plusAssign(Ljava/lang/Object;)V
    .locals 10

    .line 670
    invoke-direct {p0, p1}, Landroidx/collection/MutableOrderedScatterSet;->findAbsoluteInsertIndex(Ljava/lang/Object;)I

    move-result v0

    .line 671
    iget-object v1, p0, Landroidx/collection/OrderedScatterSet;->elements:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 1058
    iget-object p1, p0, Landroidx/collection/OrderedScatterSet;->nodes:[J

    iget v1, p0, Landroidx/collection/OrderedScatterSet;->head:I

    int-to-long v2, v1

    const-wide/32 v4, 0x7fffffff

    and-long/2addr v2, v4

    const-wide v6, 0x3fffffff80000000L    # 1.9999995231628418

    or-long/2addr v2, v6

    .line 1106
    aput-wide v2, p1, v0

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_0

    .line 1061
    aget-wide v6, p1, v1

    const-wide v8, -0x3fffffff80000001L    # -2.000000953674316

    and-long/2addr v6, v8

    int-to-long v8, v0

    and-long v3, v8, v4

    const/16 v5, 0x1f

    shl-long/2addr v3, v5

    or-long/2addr v3, v6

    .line 1109
    aput-wide v3, p1, v1

    .line 1063
    :cond_0
    iput v0, p0, Landroidx/collection/OrderedScatterSet;->head:I

    .line 1065
    iget p1, p0, Landroidx/collection/OrderedScatterSet;->tail:I

    if-ne p1, v2, :cond_1

    .line 1066
    iput v0, p0, Landroidx/collection/OrderedScatterSet;->tail:I

    :cond_1
    return-void
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1174
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    const v4, -0x3361d2af    # -8.2930312E7f

    mul-int/2addr v3, v4

    shl-int/lit8 v4, v3, 0x10

    xor-int/2addr v3, v4

    and-int/lit8 v4, v3, 0x7f

    .line 513
    iget v5, v0, Landroidx/collection/OrderedScatterSet;->_capacity:I

    ushr-int/lit8 v3, v3, 0x7

    and-int/2addr v3, v5

    move v6, v2

    .line 517
    :goto_1
    iget-object v7, v0, Landroidx/collection/OrderedScatterSet;->metadata:[J

    shr-int/lit8 v8, v3, 0x3

    and-int/lit8 v9, v3, 0x7

    shl-int/lit8 v9, v9, 0x3

    .line 1383
    aget-wide v10, v7, v8

    ushr-long/2addr v10, v9

    const/4 v12, 0x1

    add-int/2addr v8, v12

    aget-wide v7, v7, v8

    rsub-int/lit8 v13, v9, 0x40

    shl-long/2addr v7, v13

    int-to-long v13, v9

    neg-long v13, v13

    const/16 v9, 0x3f

    shr-long/2addr v13, v9

    and-long/2addr v7, v13

    or-long/2addr v7, v10

    int-to-long v9, v4

    const-wide v13, 0x101010101010101L

    mul-long/2addr v9, v13

    xor-long/2addr v9, v7

    sub-long v13, v9, v13

    not-long v9, v9

    and-long/2addr v9, v13

    const-wide v13, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v9, v13

    :goto_2
    const-wide/16 v15, 0x0

    cmp-long v11, v9, v15

    if-eqz v11, :cond_2

    .line 1306
    invoke-static {v9, v10}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v11

    shr-int/lit8 v11, v11, 0x3

    add-int/2addr v11, v3

    and-int/2addr v11, v5

    .line 521
    iget-object v15, v0, Landroidx/collection/OrderedScatterSet;->elements:[Ljava/lang/Object;

    aget-object v15, v15, v11

    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    goto :goto_3

    :cond_1
    const-wide/16 v15, 0x1

    sub-long v15, v9, v15

    and-long/2addr v9, v15

    goto :goto_2

    :cond_2
    not-long v9, v7

    const/4 v11, 0x6

    shl-long/2addr v9, v11

    and-long/2addr v7, v9

    and-long/2addr v7, v13

    cmp-long v7, v7, v15

    if-eqz v7, :cond_5

    const/4 v11, -0x1

    :goto_3
    if-ltz v11, :cond_3

    move v2, v12

    :cond_3
    if-eqz v2, :cond_4

    .line 818
    invoke-virtual {v0, v11}, Landroidx/collection/MutableOrderedScatterSet;->removeElementAt(I)V

    :cond_4
    return v2

    :cond_5
    add-int/lit8 v6, v6, 0x8

    add-int/2addr v3, v6

    and-int/2addr v3, v5

    goto :goto_1
.end method

.method public final removeAll(Ljava/lang/Iterable;)Z
    .locals 1

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 866
    invoke-virtual {p0}, Landroidx/collection/OrderedScatterSet;->getSize()I

    move-result v0

    .line 867
    invoke-virtual {p0, p1}, Landroidx/collection/MutableOrderedScatterSet;->minusAssign(Ljava/lang/Iterable;)V

    .line 868
    invoke-virtual {p0}, Landroidx/collection/OrderedScatterSet;->getSize()I

    move-result p0

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final removeElementAt(I)V
    .locals 12

    .line 1047
    iget v0, p0, Landroidx/collection/OrderedScatterSet;->_size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/collection/OrderedScatterSet;->_size:I

    .line 1051
    iget-object v0, p0, Landroidx/collection/OrderedScatterSet;->metadata:[J

    iget v1, p0, Landroidx/collection/OrderedScatterSet;->_capacity:I

    shr-int/lit8 v2, p1, 0x3

    and-int/lit8 v3, p1, 0x7

    shl-int/lit8 v3, v3, 0x3

    .line 1267
    aget-wide v4, v0, v2

    const-wide/16 v6, 0xff

    shl-long/2addr v6, v3

    not-long v6, v6

    and-long/2addr v4, v6

    const-wide/16 v6, 0xfe

    shl-long/2addr v6, v3

    or-long v3, v4, v6

    aput-wide v3, v0, v2

    add-int/lit8 v2, p1, -0x7

    and-int/2addr v2, v1

    and-int/lit8 v1, v1, 0x7

    add-int/2addr v2, v1

    shr-int/lit8 v1, v2, 0x3

    .line 1252
    aput-wide v3, v0, v1

    .line 1052
    iget-object v0, p0, Landroidx/collection/OrderedScatterSet;->elements:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 1071
    iget-object v0, p0, Landroidx/collection/OrderedScatterSet;->nodes:[J

    .line 1072
    aget-wide v1, v0, p1

    const/16 v3, 0x1f

    shr-long v4, v1, v3

    const-wide/32 v6, 0x7fffffff

    and-long/2addr v4, v6

    long-to-int v4, v4

    and-long/2addr v1, v6

    long-to-int v1, v1

    const v2, 0x7fffffff

    if-eq v4, v2, :cond_0

    .line 1077
    aget-wide v8, v0, v4

    const-wide/32 v10, -0x80000000

    and-long/2addr v8, v10

    int-to-long v10, v1

    and-long/2addr v10, v6

    or-long/2addr v8, v10

    .line 1112
    aput-wide v8, v0, v4

    goto :goto_0

    .line 1079
    :cond_0
    iput v1, p0, Landroidx/collection/OrderedScatterSet;->head:I

    :goto_0
    if-eq v1, v2, :cond_1

    .line 1083
    aget-wide v8, v0, v1

    const-wide v10, -0x3fffffff80000001L    # -2.000000953674316

    and-long/2addr v8, v10

    int-to-long v4, v4

    and-long/2addr v4, v6

    shl-long v2, v4, v3

    or-long/2addr v2, v8

    .line 1109
    aput-wide v2, v0, v1

    goto :goto_1

    .line 1085
    :cond_1
    iput v4, p0, Landroidx/collection/OrderedScatterSet;->tail:I

    :goto_1
    const-wide v1, 0x3fffffffffffffffL    # 1.9999999999999998

    .line 1088
    aput-wide v1, v0, p1

    return-void
.end method

.method public final resizeStorage$collection(I)V
    .locals 23

    move-object/from16 v0, p0

    .line 1333
    iget-object v1, v0, Landroidx/collection/OrderedScatterSet;->metadata:[J

    .line 1334
    iget-object v2, v0, Landroidx/collection/OrderedScatterSet;->elements:[Ljava/lang/Object;

    .line 1335
    iget-object v3, v0, Landroidx/collection/OrderedScatterSet;->nodes:[J

    .line 1336
    iget v4, v0, Landroidx/collection/OrderedScatterSet;->_capacity:I

    .line 1338
    new-array v5, v4, [I

    .line 1340
    invoke-direct/range {p0 .. p1}, Landroidx/collection/MutableOrderedScatterSet;->initializeStorage(I)V

    .line 1342
    iget-object v6, v0, Landroidx/collection/OrderedScatterSet;->metadata:[J

    .line 1343
    iget-object v7, v0, Landroidx/collection/OrderedScatterSet;->elements:[Ljava/lang/Object;

    .line 1344
    iget-object v8, v0, Landroidx/collection/OrderedScatterSet;->nodes:[J

    .line 1345
    iget v9, v0, Landroidx/collection/OrderedScatterSet;->_capacity:I

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v4, :cond_2

    shr-int/lit8 v12, v11, 0x3

    .line 1229
    aget-wide v12, v1, v12

    and-int/lit8 v14, v11, 0x7

    shl-int/lit8 v14, v14, 0x3

    shr-long/2addr v12, v14

    const-wide/16 v14, 0xff

    and-long/2addr v12, v14

    const-wide/16 v16, 0x80

    cmp-long v12, v12, v16

    if-gez v12, :cond_1

    .line 1349
    aget-object v12, v2, v11

    if-eqz v12, :cond_0

    .line 1174
    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    move-result v13

    goto :goto_1

    :cond_0
    const/4 v13, 0x0

    :goto_1
    const v16, -0x3361d2af    # -8.2930312E7f

    mul-int v13, v13, v16

    shl-int/lit8 v16, v13, 0x10

    xor-int v13, v13, v16

    ushr-int/lit8 v10, v13, 0x7

    .line 1351
    invoke-direct {v0, v10}, Landroidx/collection/MutableOrderedScatterSet;->findFirstAvailableSlot(I)I

    move-result v10

    and-int/lit8 v13, v13, 0x7f

    int-to-long v14, v13

    shr-int/lit8 v13, v10, 0x3

    and-int/lit8 v18, v10, 0x7

    shl-int/lit8 v18, v18, 0x3

    .line 1267
    aget-wide v19, v6, v13

    move-object/from16 v21, v1

    move-object/from16 v22, v2

    const-wide/16 v16, 0xff

    shl-long v1, v16, v18

    not-long v1, v1

    and-long v1, v19, v1

    shl-long v14, v14, v18

    or-long/2addr v1, v14

    aput-wide v1, v6, v13

    add-int/lit8 v13, v10, -0x7

    and-int/2addr v13, v9

    and-int/lit8 v14, v9, 0x7

    add-int/2addr v13, v14

    shr-int/lit8 v13, v13, 0x3

    .line 1252
    aput-wide v1, v6, v13

    .line 1354
    aput-object v12, v7, v10

    .line 1355
    aget-wide v1, v3, v11

    aput-wide v1, v8, v10

    .line 1357
    aput v10, v5, v11

    goto :goto_2

    :cond_1
    move-object/from16 v21, v1

    move-object/from16 v22, v2

    :goto_2
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    goto :goto_0

    .line 1361
    :cond_2
    invoke-direct {v0, v5}, Landroidx/collection/MutableOrderedScatterSet;->fixupNodes([I)V

    return-void
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "elements"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 979
    iget-object v2, v0, Landroidx/collection/OrderedScatterSet;->elements:[Ljava/lang/Object;

    .line 980
    iget v3, v0, Landroidx/collection/OrderedScatterSet;->_size:I

    .line 270
    iget-object v4, v0, Landroidx/collection/OrderedScatterSet;->metadata:[J

    .line 271
    array-length v5, v4

    add-int/lit8 v5, v5, -0x2

    const/4 v6, 0x0

    if-ltz v5, :cond_3

    move v7, v6

    .line 274
    :goto_0
    aget-wide v8, v4, v7

    not-long v10, v8

    const/4 v12, 0x7

    shl-long/2addr v10, v12

    and-long/2addr v10, v8

    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v10, v12

    cmp-long v10, v10, v12

    if-eqz v10, :cond_2

    sub-int v10, v7, v5

    not-int v10, v10

    ushr-int/lit8 v10, v10, 0x1f

    const/16 v11, 0x8

    rsub-int/lit8 v10, v10, 0x8

    move v12, v6

    :goto_1
    if-ge v12, v10, :cond_1

    const-wide/16 v13, 0xff

    and-long/2addr v13, v8

    const-wide/16 v15, 0x80

    cmp-long v13, v13, v15

    if-gez v13, :cond_0

    shl-int/lit8 v13, v7, 0x3

    add-int/2addr v13, v12

    .line 982
    move-object v14, v1

    check-cast v14, Ljava/lang/Iterable;

    aget-object v15, v2, v13

    invoke-static {v14, v15}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 983
    invoke-virtual {v0, v13}, Landroidx/collection/MutableOrderedScatterSet;->removeElementAt(I)V

    :cond_0
    shr-long/2addr v8, v11

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_1
    if-ne v10, v11, :cond_3

    :cond_2
    if-eq v7, v5, :cond_3

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 986
    :cond_3
    iget v0, v0, Landroidx/collection/OrderedScatterSet;->_size:I

    if-eq v3, v0, :cond_4

    const/4 v6, 0x1

    :cond_4
    return v6
.end method
