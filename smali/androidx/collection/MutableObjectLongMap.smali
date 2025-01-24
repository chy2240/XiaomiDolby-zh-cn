.class public final Landroidx/collection/MutableObjectLongMap;
.super Landroidx/collection/ObjectLongMap;
.source "ObjectLongMap.kt"


# instance fields
.field private growthLimit:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 603
    invoke-direct {p0, v0}, Landroidx/collection/ObjectLongMap;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 608
    const-string v0, "Capacity must be a positive value."

    .line 61
    invoke-static {v0}, Landroidx/collection/internal/RuntimeHelpersKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 609
    :cond_1
    invoke-static {p1}, Landroidx/collection/ScatterMapKt;->unloadedCapacity(I)I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/collection/MutableObjectLongMap;->initializeStorage(I)V

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x6

    .line 602
    :cond_0
    invoke-direct {p0, p1}, Landroidx/collection/MutableObjectLongMap;-><init>(I)V

    return-void
.end method

.method private final findFirstAvailableSlot(I)I
    .locals 9

    .line 848
    iget v0, p0, Landroidx/collection/ObjectLongMap;->_capacity:I

    and-int/2addr p1, v0

    const/4 v1, 0x0

    .line 853
    :goto_0
    iget-object v2, p0, Landroidx/collection/ObjectLongMap;->metadata:[J

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

.method private final findIndex(Ljava/lang/Object;)I
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

    .line 807
    iget v5, v0, Landroidx/collection/ObjectLongMap;->_capacity:I

    and-int v6, v4, v5

    const/4 v7, 0x0

    .line 812
    :goto_1
    iget-object v8, v0, Landroidx/collection/ObjectLongMap;->metadata:[J

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

    .line 816
    iget-object v12, v0, Landroidx/collection/ObjectLongMap;->keys:[Ljava/lang/Object;

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

    .line 830
    invoke-direct {v0, v4}, Landroidx/collection/MutableObjectLongMap;->findFirstAvailableSlot(I)I

    move-result v1

    .line 831
    iget v2, v0, Landroidx/collection/MutableObjectLongMap;->growthLimit:I

    const-wide/16 v5, 0xff

    if-nez v2, :cond_4

    iget-object v2, v0, Landroidx/collection/ObjectLongMap;->metadata:[J

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

    .line 832
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroidx/collection/MutableObjectLongMap;->adjustStorage$collection()V

    .line 833
    invoke-direct {v0, v4}, Landroidx/collection/MutableObjectLongMap;->findFirstAvailableSlot(I)I

    move-result v1

    .line 836
    :cond_4
    :goto_3
    iget v2, v0, Landroidx/collection/ObjectLongMap;->_size:I

    add-int/2addr v2, v13

    iput v2, v0, Landroidx/collection/ObjectLongMap;->_size:I

    .line 837
    iget v2, v0, Landroidx/collection/MutableObjectLongMap;->growthLimit:I

    iget-object v3, v0, Landroidx/collection/ObjectLongMap;->metadata:[J

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

    .line 837
    iput v2, v0, Landroidx/collection/MutableObjectLongMap;->growthLimit:I

    .line 838
    iget v0, v0, Landroidx/collection/ObjectLongMap;->_capacity:I

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

    not-int v0, v1

    return v0

    :cond_6
    add-int/lit8 v7, v7, 0x8

    add-int/2addr v6, v7

    and-int/2addr v6, v5

    move/from16 v3, v18

    goto/16 :goto_1
.end method

.method private final initializeGrowth()V
    .locals 2

    .line 641
    invoke-virtual {p0}, Landroidx/collection/ObjectLongMap;->getCapacity()I

    move-result v0

    invoke-static {v0}, Landroidx/collection/ScatterMapKt;->loadedCapacity(I)I

    move-result v0

    iget v1, p0, Landroidx/collection/ObjectLongMap;->_size:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroidx/collection/MutableObjectLongMap;->growthLimit:I

    return-void
.end method

.method private final initializeMetadata(I)V
    .locals 8

    if-nez p1, :cond_0

    .line 630
    sget-object v0, Landroidx/collection/ScatterMapKt;->EmptyGroup:[J

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p1, 0xf

    and-int/lit8 v0, v0, -0x8

    shr-int/lit8 v0, v0, 0x3

    .line 634
    new-array v0, v0, [J

    const/4 v6, 0x6

    const/4 v7, 0x0

    const-wide v2, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v7}, Lkotlin/collections/ArraysKt;->fill$default([JJIIILjava/lang/Object;)V

    .line 628
    :goto_0
    iput-object v0, p0, Landroidx/collection/ObjectLongMap;->metadata:[J

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

    .line 637
    invoke-direct {p0}, Landroidx/collection/MutableObjectLongMap;->initializeGrowth()V

    return-void
.end method

.method private final initializeStorage(I)V
    .locals 1

    if-lez p1, :cond_0

    const/4 v0, 0x7

    .line 617
    invoke-static {p1}, Landroidx/collection/ScatterMapKt;->normalizeCapacity(I)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 621
    :goto_0
    iput p1, p0, Landroidx/collection/ObjectLongMap;->_capacity:I

    .line 622
    invoke-direct {p0, p1}, Landroidx/collection/MutableObjectLongMap;->initializeMetadata(I)V

    .line 623
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Landroidx/collection/ObjectLongMap;->keys:[Ljava/lang/Object;

    .line 624
    new-array p1, p1, [J

    iput-object p1, p0, Landroidx/collection/ObjectLongMap;->values:[J

    return-void
.end method


# virtual methods
.method public final adjustStorage$collection()V
    .locals 6

    .line 887
    iget v0, p0, Landroidx/collection/ObjectLongMap;->_capacity:I

    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    iget v0, p0, Landroidx/collection/ObjectLongMap;->_size:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    const-wide/16 v2, 0x20

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    iget v2, p0, Landroidx/collection/ObjectLongMap;->_capacity:I

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

    .line 888
    invoke-virtual {p0}, Landroidx/collection/MutableObjectLongMap;->dropDeletes$collection()V

    goto :goto_0

    .line 890
    :cond_0
    iget v0, p0, Landroidx/collection/ObjectLongMap;->_capacity:I

    invoke-static {v0}, Landroidx/collection/ScatterMapKt;->nextCapacity(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/collection/MutableObjectLongMap;->resizeStorage$collection(I)V

    :goto_0
    return-void
.end method

.method public final dropDeletes$collection()V
    .locals 26

    move-object/from16 v0, p0

    .line 896
    iget-object v1, v0, Landroidx/collection/ObjectLongMap;->metadata:[J

    .line 897
    iget v2, v0, Landroidx/collection/ObjectLongMap;->_capacity:I

    .line 898
    iget-object v3, v0, Landroidx/collection/ObjectLongMap;->keys:[Ljava/lang/Object;

    .line 899
    iget-object v4, v0, Landroidx/collection/ObjectLongMap;->values:[J

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
    if-eq v5, v2, :cond_6

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

    .line 922
    :cond_2
    aget-object v8, v3, v5

    if-eqz v8, :cond_3

    .line 1174
    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v8

    goto :goto_3

    :cond_3
    move v8, v6

    :goto_3
    const v9, -0x3361d2af    # -8.2930312E7f

    mul-int/2addr v8, v9

    shl-int/lit8 v9, v8, 0x10

    xor-int/2addr v8, v9

    ushr-int/lit8 v9, v8, 0x7

    .line 924
    invoke-direct {v0, v9}, Landroidx/collection/MutableObjectLongMap;->findFirstAvailableSlot(I)I

    move-result v17

    and-int/2addr v9, v2

    sub-int v18, v17, v9

    and-int v18, v18, v2

    .line 930
    div-int/lit8 v15, v18, 0x8

    sub-int v9, v5, v9

    and-int/2addr v9, v2

    .line 931
    div-int/lit8 v9, v9, 0x8

    const-wide/high16 v21, -0x8000000000000000L

    if-ne v15, v9, :cond_4

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

    .line 938
    invoke-static {v1}, Lkotlin/collections/ArraysKt;->getLastIndex([J)I

    move-result v7

    .line 939
    aget-wide v8, v1, v6

    and-long/2addr v8, v10

    or-long v8, v8, v21

    aput-wide v8, v1, v7

    goto :goto_2

    :cond_4
    shr-int/lit8 v9, v17, 0x3

    .line 1229
    aget-wide v15, v1, v9

    and-int/lit8 v18, v17, 0x7

    shl-int/lit8 v18, v18, 0x3

    shr-long v23, v15, v18

    and-long v23, v23, v13

    const-wide/16 v19, 0x80

    cmp-long v23, v23, v19

    if-nez v23, :cond_5

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

    .line 952
    aget-object v6, v3, v5

    aput-object v6, v3, v17

    const/4 v6, 0x0

    .line 953
    aput-object v6, v3, v5

    .line 955
    aget-wide v6, v4, v5

    aput-wide v6, v4, v17

    const-wide/16 v6, 0x0

    .line 956
    aput-wide v6, v4, v5

    goto :goto_4

    :cond_5
    and-int/lit8 v6, v8, 0x7f

    int-to-long v6, v6

    shl-long v10, v13, v18

    not-long v10, v10

    and-long/2addr v10, v15

    shl-long v6, v6, v18

    or-long/2addr v6, v10

    .line 1267
    aput-wide v6, v1, v9

    .line 963
    aget-object v6, v3, v17

    .line 964
    aget-object v7, v3, v5

    aput-object v7, v3, v17

    .line 965
    aput-object v6, v3, v5

    .line 967
    aget-wide v6, v4, v17

    .line 968
    aget-wide v8, v4, v5

    aput-wide v8, v4, v17

    .line 969
    aput-wide v6, v4, v5

    add-int/lit8 v5, v5, -0x1

    .line 977
    :goto_4
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

    .line 982
    :cond_6
    invoke-direct/range {p0 .. p0}, Landroidx/collection/MutableObjectLongMap;->initializeGrowth()V

    return-void
.end method

.method public final resizeStorage$collection(I)V
    .locals 20

    move-object/from16 v0, p0

    .line 987
    iget-object v1, v0, Landroidx/collection/ObjectLongMap;->metadata:[J

    .line 988
    iget-object v2, v0, Landroidx/collection/ObjectLongMap;->keys:[Ljava/lang/Object;

    .line 989
    iget-object v3, v0, Landroidx/collection/ObjectLongMap;->values:[J

    .line 990
    iget v4, v0, Landroidx/collection/ObjectLongMap;->_capacity:I

    .line 992
    invoke-direct/range {p0 .. p1}, Landroidx/collection/MutableObjectLongMap;->initializeStorage(I)V

    .line 994
    iget-object v5, v0, Landroidx/collection/ObjectLongMap;->metadata:[J

    .line 995
    iget-object v6, v0, Landroidx/collection/ObjectLongMap;->keys:[Ljava/lang/Object;

    .line 996
    iget-object v7, v0, Landroidx/collection/ObjectLongMap;->values:[J

    .line 997
    iget v8, v0, Landroidx/collection/ObjectLongMap;->_capacity:I

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v4, :cond_2

    shr-int/lit8 v11, v10, 0x3

    .line 1229
    aget-wide v11, v1, v11

    and-int/lit8 v13, v10, 0x7

    shl-int/lit8 v13, v13, 0x3

    shr-long/2addr v11, v13

    const-wide/16 v13, 0xff

    and-long/2addr v11, v13

    const-wide/16 v15, 0x80

    cmp-long v11, v11, v15

    if-gez v11, :cond_1

    .line 1001
    aget-object v11, v2, v10

    if-eqz v11, :cond_0

    .line 1174
    invoke-virtual {v11}, Ljava/lang/Object;->hashCode()I

    move-result v12

    goto :goto_1

    :cond_0
    const/4 v12, 0x0

    :goto_1
    const v15, -0x3361d2af    # -8.2930312E7f

    mul-int/2addr v12, v15

    shl-int/lit8 v15, v12, 0x10

    xor-int/2addr v12, v15

    ushr-int/lit8 v15, v12, 0x7

    .line 1003
    invoke-direct {v0, v15}, Landroidx/collection/MutableObjectLongMap;->findFirstAvailableSlot(I)I

    move-result v15

    and-int/lit8 v12, v12, 0x7f

    move/from16 v16, v10

    int-to-long v9, v12

    shr-int/lit8 v12, v15, 0x3

    and-int/lit8 v17, v15, 0x7

    shl-int/lit8 v17, v17, 0x3

    .line 1267
    aget-wide v18, v5, v12

    shl-long v13, v13, v17

    not-long v13, v13

    and-long v13, v18, v13

    shl-long v9, v9, v17

    or-long/2addr v9, v13

    aput-wide v9, v5, v12

    add-int/lit8 v12, v15, -0x7

    and-int/2addr v12, v8

    and-int/lit8 v13, v8, 0x7

    add-int/2addr v12, v13

    shr-int/lit8 v12, v12, 0x3

    .line 1252
    aput-wide v9, v5, v12

    .line 1006
    aput-object v11, v6, v15

    .line 1007
    aget-wide v9, v3, v16

    aput-wide v9, v7, v15

    goto :goto_2

    :cond_1
    move/from16 v16, v10

    :goto_2
    add-int/lit8 v10, v16, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final set(Ljava/lang/Object;J)V
    .locals 2

    .line 665
    invoke-direct {p0, p1}, Landroidx/collection/MutableObjectLongMap;->findIndex(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    not-int v0, v0

    .line 667
    :cond_0
    iget-object v1, p0, Landroidx/collection/ObjectLongMap;->keys:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 668
    iget-object p0, p0, Landroidx/collection/ObjectLongMap;->values:[J

    aput-wide p2, p0, v0

    return-void
.end method
