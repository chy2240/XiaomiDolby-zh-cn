.class public final Landroidx/collection/MutableIntIntMap;
.super Landroidx/collection/IntIntMap;
.source "IntIntMap.kt"


# instance fields
.field private growthLimit:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 597
    invoke-direct {p0, v0}, Landroidx/collection/IntIntMap;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 602
    const-string v0, "Capacity must be a positive value."

    .line 61
    invoke-static {v0}, Landroidx/collection/internal/RuntimeHelpersKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 603
    :cond_1
    invoke-static {p1}, Landroidx/collection/ScatterMapKt;->unloadedCapacity(I)I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/collection/MutableIntIntMap;->initializeStorage(I)V

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x6

    .line 597
    :cond_0
    invoke-direct {p0, p1}, Landroidx/collection/MutableIntIntMap;-><init>(I)V

    return-void
.end method

.method private final findFirstAvailableSlot(I)I
    .locals 9

    .line 833
    iget v0, p0, Landroidx/collection/IntIntMap;->_capacity:I

    and-int/2addr p1, v0

    const/4 v1, 0x0

    .line 838
    :goto_0
    iget-object v2, p0, Landroidx/collection/IntIntMap;->metadata:[J

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

.method private final findInsertIndex(I)I
    .locals 19

    move-object/from16 v0, p0

    .line 845
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    const v2, -0x3361d2af    # -8.2930312E7f

    mul-int/2addr v1, v2

    shl-int/lit8 v2, v1, 0x10

    xor-int/2addr v1, v2

    ushr-int/lit8 v2, v1, 0x7

    and-int/lit8 v1, v1, 0x7f

    .line 792
    iget v3, v0, Landroidx/collection/IntIntMap;->_capacity:I

    and-int v4, v2, v3

    const/4 v6, 0x0

    .line 797
    :goto_0
    iget-object v7, v0, Landroidx/collection/IntIntMap;->metadata:[J

    shr-int/lit8 v8, v4, 0x3

    and-int/lit8 v9, v4, 0x7

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

    int-to-long v9, v1

    const-wide v13, 0x101010101010101L

    mul-long v15, v9, v13

    move/from16 v17, v6

    xor-long v5, v7, v15

    sub-long v13, v5, v13

    not-long v5, v5

    and-long/2addr v5, v13

    const-wide v13, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v5, v13

    :goto_1
    const-wide/16 v15, 0x0

    cmp-long v18, v5, v15

    if-eqz v18, :cond_1

    .line 1306
    invoke-static {v5, v6}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v15

    shr-int/lit8 v15, v15, 0x3

    add-int/2addr v15, v4

    and-int/2addr v15, v3

    .line 801
    iget-object v11, v0, Landroidx/collection/IntIntMap;->keys:[I

    aget v11, v11, v15

    move/from16 v12, p1

    if-ne v11, v12, :cond_0

    return v15

    :cond_0
    const-wide/16 v15, 0x1

    sub-long v15, v5, v15

    and-long/2addr v5, v15

    const/4 v12, 0x1

    goto :goto_1

    :cond_1
    move/from16 v12, p1

    not-long v5, v7

    const/4 v11, 0x6

    shl-long/2addr v5, v11

    and-long/2addr v5, v7

    and-long/2addr v5, v13

    cmp-long v5, v5, v15

    if-eqz v5, :cond_5

    .line 815
    invoke-direct {v0, v2}, Landroidx/collection/MutableIntIntMap;->findFirstAvailableSlot(I)I

    move-result v1

    .line 816
    iget v3, v0, Landroidx/collection/MutableIntIntMap;->growthLimit:I

    const-wide/16 v4, 0xff

    if-nez v3, :cond_3

    iget-object v3, v0, Landroidx/collection/IntIntMap;->metadata:[J

    shr-int/lit8 v6, v1, 0x3

    .line 1229
    aget-wide v6, v3, v6

    and-int/lit8 v3, v1, 0x7

    shl-int/lit8 v3, v3, 0x3

    shr-long/2addr v6, v3

    and-long/2addr v6, v4

    const-wide/16 v11, 0xfe

    cmp-long v3, v6, v11

    if-nez v3, :cond_2

    goto :goto_2

    .line 817
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroidx/collection/MutableIntIntMap;->adjustStorage$collection()V

    .line 818
    invoke-direct {v0, v2}, Landroidx/collection/MutableIntIntMap;->findFirstAvailableSlot(I)I

    move-result v1

    .line 821
    :cond_3
    :goto_2
    iget v2, v0, Landroidx/collection/IntIntMap;->_size:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v0, Landroidx/collection/IntIntMap;->_size:I

    .line 822
    iget v2, v0, Landroidx/collection/MutableIntIntMap;->growthLimit:I

    iget-object v6, v0, Landroidx/collection/IntIntMap;->metadata:[J

    shr-int/lit8 v7, v1, 0x3

    .line 1229
    aget-wide v11, v6, v7

    and-int/lit8 v8, v1, 0x7

    shl-int/lit8 v8, v8, 0x3

    shr-long v13, v11, v8

    and-long/2addr v13, v4

    const-wide/16 v15, 0x80

    cmp-long v13, v13, v15

    if-nez v13, :cond_4

    move/from16 v18, v3

    goto :goto_3

    :cond_4
    const/16 v18, 0x0

    :goto_3
    sub-int v2, v2, v18

    .line 822
    iput v2, v0, Landroidx/collection/MutableIntIntMap;->growthLimit:I

    .line 823
    iget v0, v0, Landroidx/collection/IntIntMap;->_capacity:I

    shl-long v2, v4, v8

    not-long v2, v2

    and-long/2addr v2, v11

    shl-long v4, v9, v8

    or-long/2addr v2, v4

    .line 1267
    aput-wide v2, v6, v7

    add-int/lit8 v4, v1, -0x7

    and-int/2addr v4, v0

    and-int/lit8 v0, v0, 0x7

    add-int/2addr v4, v0

    shr-int/lit8 v0, v4, 0x3

    .line 1252
    aput-wide v2, v6, v0

    not-int v0, v1

    return v0

    :cond_5
    add-int/lit8 v6, v17, 0x8

    add-int/2addr v4, v6

    and-int/2addr v4, v3

    goto/16 :goto_0
.end method

.method private final initializeGrowth()V
    .locals 2

    .line 635
    invoke-virtual {p0}, Landroidx/collection/IntIntMap;->getCapacity()I

    move-result v0

    invoke-static {v0}, Landroidx/collection/ScatterMapKt;->loadedCapacity(I)I

    move-result v0

    iget v1, p0, Landroidx/collection/IntIntMap;->_size:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroidx/collection/MutableIntIntMap;->growthLimit:I

    return-void
.end method

.method private final initializeMetadata(I)V
    .locals 8

    if-nez p1, :cond_0

    .line 624
    sget-object v0, Landroidx/collection/ScatterMapKt;->EmptyGroup:[J

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p1, 0xf

    and-int/lit8 v0, v0, -0x8

    shr-int/lit8 v0, v0, 0x3

    .line 628
    new-array v0, v0, [J

    const/4 v6, 0x6

    const/4 v7, 0x0

    const-wide v2, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v7}, Lkotlin/collections/ArraysKt;->fill$default([JJIIILjava/lang/Object;)V

    .line 622
    :goto_0
    iput-object v0, p0, Landroidx/collection/IntIntMap;->metadata:[J

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

    .line 631
    invoke-direct {p0}, Landroidx/collection/MutableIntIntMap;->initializeGrowth()V

    return-void
.end method

.method private final initializeStorage(I)V
    .locals 1

    if-lez p1, :cond_0

    const/4 v0, 0x7

    .line 611
    invoke-static {p1}, Landroidx/collection/ScatterMapKt;->normalizeCapacity(I)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 615
    :goto_0
    iput p1, p0, Landroidx/collection/IntIntMap;->_capacity:I

    .line 616
    invoke-direct {p0, p1}, Landroidx/collection/MutableIntIntMap;->initializeMetadata(I)V

    .line 617
    new-array v0, p1, [I

    iput-object v0, p0, Landroidx/collection/IntIntMap;->keys:[I

    .line 618
    new-array p1, p1, [I

    iput-object p1, p0, Landroidx/collection/IntIntMap;->values:[I

    return-void
.end method


# virtual methods
.method public final adjustStorage$collection()V
    .locals 6

    .line 872
    iget v0, p0, Landroidx/collection/IntIntMap;->_capacity:I

    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    iget v0, p0, Landroidx/collection/IntIntMap;->_size:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    const-wide/16 v2, 0x20

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    iget v2, p0, Landroidx/collection/IntIntMap;->_capacity:I

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

    .line 873
    invoke-virtual {p0}, Landroidx/collection/MutableIntIntMap;->dropDeletes$collection()V

    goto :goto_0

    .line 875
    :cond_0
    iget v0, p0, Landroidx/collection/IntIntMap;->_capacity:I

    invoke-static {v0}, Landroidx/collection/ScatterMapKt;->nextCapacity(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/collection/MutableIntIntMap;->resizeStorage$collection(I)V

    :goto_0
    return-void
.end method

.method public final clear()V
    .locals 9

    const/4 v0, 0x0

    .line 773
    iput v0, p0, Landroidx/collection/IntIntMap;->_size:I

    .line 774
    iget-object v1, p0, Landroidx/collection/IntIntMap;->metadata:[J

    sget-object v0, Landroidx/collection/ScatterMapKt;->EmptyGroup:[J

    if-eq v1, v0, :cond_0

    const/4 v6, 0x6

    const/4 v7, 0x0

    const-wide v2, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 775
    invoke-static/range {v1 .. v7}, Lkotlin/collections/ArraysKt;->fill$default([JJIIILjava/lang/Object;)V

    .line 776
    iget-object v0, p0, Landroidx/collection/IntIntMap;->metadata:[J

    iget v1, p0, Landroidx/collection/IntIntMap;->_capacity:I

    shr-int/lit8 v2, v1, 0x3

    and-int/lit8 v1, v1, 0x7

    shl-int/lit8 v1, v1, 0x3

    .line 1267
    aget-wide v3, v0, v2

    const-wide/16 v5, 0xff

    shl-long/2addr v5, v1

    not-long v7, v5

    and-long/2addr v3, v7

    or-long/2addr v3, v5

    aput-wide v3, v0, v2

    .line 778
    :cond_0
    invoke-direct {p0}, Landroidx/collection/MutableIntIntMap;->initializeGrowth()V

    return-void
.end method

.method public final dropDeletes$collection()V
    .locals 26

    move-object/from16 v0, p0

    .line 881
    iget-object v1, v0, Landroidx/collection/IntIntMap;->metadata:[J

    .line 882
    iget v2, v0, Landroidx/collection/IntIntMap;->_capacity:I

    .line 883
    iget-object v3, v0, Landroidx/collection/IntIntMap;->keys:[I

    .line 884
    iget-object v4, v0, Landroidx/collection/IntIntMap;->values:[I

    add-int/lit8 v5, v2, 0x7

    shr-int/lit8 v5, v5, 0x3

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_0

    .line 1147
    aget-wide v8, v1, v7

    const-wide v10, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v8, v10

    not-long v10, v8

    const/4 v12, 0x7

    ushr-long/2addr v8, v12

    add-long/2addr v10, v8

    const-wide v8, -0x101010101010102L

    and-long/2addr v8, v10

    .line 1148
    aput-wide v8, v1, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1151
    :cond_0
    invoke-static {v1}, Lkotlin/collections/ArraysKt;->getLastIndex([J)I

    move-result v5

    add-int/lit8 v7, v5, -0x1

    .line 1154
    aget-wide v8, v1, v7

    const-wide v10, 0xffffffffffffffL

    and-long/2addr v8, v10

    const-wide/high16 v12, -0x100000000000000L

    or-long/2addr v8, v12

    aput-wide v8, v1, v7

    .line 1156
    aget-wide v7, v1, v6

    aput-wide v7, v1, v5

    move v5, v6

    :goto_1
    if-eq v5, v2, :cond_5

    shr-int/lit8 v7, v5, 0x3

    .line 1229
    aget-wide v8, v1, v7

    and-int/lit8 v12, v5, 0x7

    shl-int/lit8 v12, v12, 0x3

    shr-long/2addr v8, v12

    const-wide/16 v13, 0xff

    and-long/2addr v8, v13

    const-wide/16 v15, 0x80

    cmp-long v17, v8, v15

    if-nez v17, :cond_1

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    const-wide/16 v17, 0xfe

    cmp-long v8, v8, v17

    if-eqz v8, :cond_2

    goto :goto_2

    .line 907
    :cond_2
    aget v8, v3, v5

    .line 845
    invoke-static {v8}, Ljava/lang/Integer;->hashCode(I)I

    move-result v8

    const v9, -0x3361d2af    # -8.2930312E7f

    mul-int/2addr v8, v9

    shl-int/lit8 v9, v8, 0x10

    xor-int/2addr v8, v9

    ushr-int/lit8 v9, v8, 0x7

    .line 909
    invoke-direct {v0, v9}, Landroidx/collection/MutableIntIntMap;->findFirstAvailableSlot(I)I

    move-result v17

    and-int/2addr v9, v2

    sub-int v18, v17, v9

    and-int v18, v18, v2

    .line 915
    div-int/lit8 v15, v18, 0x8

    sub-int v9, v5, v9

    and-int/2addr v9, v2

    .line 916
    div-int/lit8 v9, v9, 0x8

    const-wide/high16 v21, -0x8000000000000000L

    if-ne v15, v9, :cond_3

    and-int/lit8 v8, v8, 0x7f

    int-to-long v8, v8

    .line 1267
    aget-wide v15, v1, v7

    shl-long/2addr v13, v12

    not-long v13, v13

    and-long/2addr v13, v15

    shl-long/2addr v8, v12

    or-long/2addr v8, v13

    aput-wide v8, v1, v7

    .line 923
    invoke-static {v1}, Lkotlin/collections/ArraysKt;->getLastIndex([J)I

    move-result v7

    .line 924
    aget-wide v8, v1, v6

    and-long/2addr v8, v10

    or-long v8, v8, v21

    aput-wide v8, v1, v7

    goto :goto_2

    :cond_3
    shr-int/lit8 v9, v17, 0x3

    .line 1229
    aget-wide v15, v1, v9

    and-int/lit8 v18, v17, 0x7

    shl-int/lit8 v18, v18, 0x3

    shr-long v23, v15, v18

    and-long v23, v23, v13

    const-wide/16 v19, 0x80

    cmp-long v23, v23, v19

    if-nez v23, :cond_4

    and-int/lit8 v8, v8, 0x7f

    int-to-long v10, v8

    move/from16 v25, v7

    shl-long v6, v13, v18

    not-long v6, v6

    and-long/2addr v6, v15

    shl-long v10, v10, v18

    or-long/2addr v6, v10

    .line 1267
    aput-wide v6, v1, v9

    .line 1267
    aget-wide v6, v1, v25

    shl-long v8, v13, v12

    not-long v8, v8

    and-long/2addr v6, v8

    const-wide/16 v8, 0x80

    shl-long/2addr v8, v12

    or-long/2addr v6, v8

    aput-wide v6, v1, v25

    .line 937
    aget v6, v3, v5

    aput v6, v3, v17

    const/4 v6, 0x0

    .line 938
    aput v6, v3, v5

    .line 940
    aget v7, v4, v5

    aput v7, v4, v17

    .line 941
    aput v6, v4, v5

    goto :goto_3

    :cond_4
    and-int/lit8 v6, v8, 0x7f

    int-to-long v6, v6

    shl-long v10, v13, v18

    not-long v10, v10

    and-long/2addr v10, v15

    shl-long v6, v6, v18

    or-long/2addr v6, v10

    .line 1267
    aput-wide v6, v1, v9

    .line 948
    aget v6, v3, v17

    .line 949
    aget v7, v3, v5

    aput v7, v3, v17

    .line 950
    aput v6, v3, v5

    .line 952
    aget v6, v4, v17

    .line 953
    aget v7, v4, v5

    aput v7, v4, v17

    .line 954
    aput v6, v4, v5

    add-int/lit8 v5, v5, -0x1

    .line 962
    :goto_3
    invoke-static {v1}, Lkotlin/collections/ArraysKt;->getLastIndex([J)I

    move-result v6

    const/4 v7, 0x0

    aget-wide v8, v1, v7

    const-wide v10, 0xffffffffffffffL

    and-long/2addr v8, v10

    or-long v8, v8, v21

    aput-wide v8, v1, v6

    add-int/lit8 v5, v5, 0x1

    move v6, v7

    goto/16 :goto_1

    .line 967
    :cond_5
    invoke-direct/range {p0 .. p0}, Landroidx/collection/MutableIntIntMap;->initializeGrowth()V

    return-void
.end method

.method public final resizeStorage$collection(I)V
    .locals 21

    move-object/from16 v0, p0

    .line 972
    iget-object v1, v0, Landroidx/collection/IntIntMap;->metadata:[J

    .line 973
    iget-object v2, v0, Landroidx/collection/IntIntMap;->keys:[I

    .line 974
    iget-object v3, v0, Landroidx/collection/IntIntMap;->values:[I

    .line 975
    iget v4, v0, Landroidx/collection/IntIntMap;->_capacity:I

    .line 977
    invoke-direct/range {p0 .. p1}, Landroidx/collection/MutableIntIntMap;->initializeStorage(I)V

    .line 979
    iget-object v5, v0, Landroidx/collection/IntIntMap;->metadata:[J

    .line 980
    iget-object v6, v0, Landroidx/collection/IntIntMap;->keys:[I

    .line 981
    iget-object v7, v0, Landroidx/collection/IntIntMap;->values:[I

    .line 982
    iget v8, v0, Landroidx/collection/IntIntMap;->_capacity:I

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v4, :cond_1

    shr-int/lit8 v10, v9, 0x3

    .line 1229
    aget-wide v10, v1, v10

    and-int/lit8 v12, v9, 0x7

    shl-int/lit8 v12, v12, 0x3

    shr-long/2addr v10, v12

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    const-wide/16 v14, 0x80

    cmp-long v10, v10, v14

    if-gez v10, :cond_0

    .line 986
    aget v10, v2, v9

    .line 845
    invoke-static {v10}, Ljava/lang/Integer;->hashCode(I)I

    move-result v11

    const v14, -0x3361d2af    # -8.2930312E7f

    mul-int/2addr v11, v14

    shl-int/lit8 v14, v11, 0x10

    xor-int/2addr v11, v14

    ushr-int/lit8 v14, v11, 0x7

    .line 988
    invoke-direct {v0, v14}, Landroidx/collection/MutableIntIntMap;->findFirstAvailableSlot(I)I

    move-result v14

    and-int/lit8 v11, v11, 0x7f

    int-to-long v12, v11

    shr-int/lit8 v11, v14, 0x3

    and-int/lit8 v17, v14, 0x7

    shl-int/lit8 v17, v17, 0x3

    .line 1267
    aget-wide v18, v5, v11

    move-object/from16 v20, v1

    const-wide/16 v15, 0xff

    shl-long v0, v15, v17

    not-long v0, v0

    and-long v0, v18, v0

    shl-long v12, v12, v17

    or-long/2addr v0, v12

    aput-wide v0, v5, v11

    add-int/lit8 v11, v14, -0x7

    and-int/2addr v11, v8

    and-int/lit8 v12, v8, 0x7

    add-int/2addr v11, v12

    shr-int/lit8 v11, v11, 0x3

    .line 1252
    aput-wide v0, v5, v11

    .line 991
    aput v10, v6, v14

    .line 992
    aget v0, v3, v9

    aput v0, v7, v14

    goto :goto_1

    :cond_0
    move-object/from16 v20, v1

    :goto_1
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final set(II)V
    .locals 2

    .line 661
    invoke-direct {p0, p1}, Landroidx/collection/MutableIntIntMap;->findInsertIndex(I)I

    move-result v0

    if-gez v0, :cond_0

    not-int v0, v0

    .line 663
    :cond_0
    iget-object v1, p0, Landroidx/collection/IntIntMap;->keys:[I

    aput p1, v1, v0

    .line 664
    iget-object p0, p0, Landroidx/collection/IntIntMap;->values:[I

    aput p2, p0, v0

    return-void
.end method
