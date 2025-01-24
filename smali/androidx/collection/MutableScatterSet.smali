.class public final Landroidx/collection/MutableScatterSet;
.super Landroidx/collection/ScatterSet;
.source "ScatterSet.kt"


# instance fields
.field private growthLimit:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 482
    invoke-direct {p0, v0}, Landroidx/collection/ScatterSet;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 487
    const-string v0, "Capacity must be a positive value."

    .line 61
    invoke-static {v0}, Landroidx/collection/internal/RuntimeHelpersKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 488
    :cond_1
    invoke-static {p1}, Landroidx/collection/ScatterMapKt;->unloadedCapacity(I)I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/collection/MutableScatterSet;->initializeStorage(I)V

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x6

    .line 482
    :cond_0
    invoke-direct {p0, p1}, Landroidx/collection/MutableScatterSet;-><init>(I)V

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

    .line 948
    iget v5, v0, Landroidx/collection/ScatterSet;->_capacity:I

    and-int v6, v4, v5

    const/4 v7, 0x0

    .line 953
    :goto_1
    iget-object v8, v0, Landroidx/collection/ScatterSet;->metadata:[J

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

    .line 957
    iget-object v12, v0, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

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

    .line 971
    invoke-direct {v0, v4}, Landroidx/collection/MutableScatterSet;->findFirstAvailableSlot(I)I

    move-result v1

    .line 972
    iget v2, v0, Landroidx/collection/MutableScatterSet;->growthLimit:I

    const-wide/16 v5, 0xff

    if-nez v2, :cond_4

    iget-object v2, v0, Landroidx/collection/ScatterSet;->metadata:[J

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

    .line 973
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroidx/collection/MutableScatterSet;->adjustStorage$collection()V

    .line 974
    invoke-direct {v0, v4}, Landroidx/collection/MutableScatterSet;->findFirstAvailableSlot(I)I

    move-result v1

    .line 977
    :cond_4
    :goto_3
    iget v2, v0, Landroidx/collection/ScatterSet;->_size:I

    add-int/2addr v2, v13

    iput v2, v0, Landroidx/collection/ScatterSet;->_size:I

    .line 978
    iget v2, v0, Landroidx/collection/MutableScatterSet;->growthLimit:I

    iget-object v3, v0, Landroidx/collection/ScatterSet;->metadata:[J

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

    .line 978
    iput v2, v0, Landroidx/collection/MutableScatterSet;->growthLimit:I

    .line 979
    iget v0, v0, Landroidx/collection/ScatterSet;->_capacity:I

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

    .line 989
    iget v0, p0, Landroidx/collection/ScatterSet;->_capacity:I

    and-int/2addr p1, v0

    const/4 v1, 0x0

    .line 993
    :goto_0
    iget-object v2, p0, Landroidx/collection/ScatterSet;->metadata:[J

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

.method private final initializeGrowth()V
    .locals 2

    .line 519
    invoke-virtual {p0}, Landroidx/collection/ScatterSet;->getCapacity()I

    move-result v0

    invoke-static {v0}, Landroidx/collection/ScatterMapKt;->loadedCapacity(I)I

    move-result v0

    iget v1, p0, Landroidx/collection/ScatterSet;->_size:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroidx/collection/MutableScatterSet;->growthLimit:I

    return-void
.end method

.method private final initializeMetadata(I)V
    .locals 8

    if-nez p1, :cond_0

    .line 508
    sget-object v0, Landroidx/collection/ScatterMapKt;->EmptyGroup:[J

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p1, 0xf

    and-int/lit8 v0, v0, -0x8

    shr-int/lit8 v0, v0, 0x3

    .line 512
    new-array v0, v0, [J

    const/4 v6, 0x6

    const/4 v7, 0x0

    const-wide v2, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v7}, Lkotlin/collections/ArraysKt;->fill$default([JJIIILjava/lang/Object;)V

    .line 506
    :goto_0
    iput-object v0, p0, Landroidx/collection/ScatterSet;->metadata:[J

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

    .line 515
    invoke-direct {p0}, Landroidx/collection/MutableScatterSet;->initializeGrowth()V

    return-void
.end method

.method private final initializeStorage(I)V
    .locals 1

    if-lez p1, :cond_0

    const/4 v0, 0x7

    .line 496
    invoke-static {p1}, Landroidx/collection/ScatterMapKt;->normalizeCapacity(I)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 500
    :goto_0
    iput p1, p0, Landroidx/collection/ScatterSet;->_capacity:I

    .line 501
    invoke-direct {p0, p1}, Landroidx/collection/MutableScatterSet;->initializeMetadata(I)V

    if-nez p1, :cond_1

    .line 502
    sget-object p1, Landroidx/collection/internal/ContainerHelpersKt;->EMPTY_OBJECTS:[Ljava/lang/Object;

    goto :goto_1

    :cond_1
    new-array p1, p1, [Ljava/lang/Object;

    :goto_1
    iput-object p1, p0, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 3

    .line 530
    invoke-virtual {p0}, Landroidx/collection/ScatterSet;->getSize()I

    move-result v0

    .line 531
    invoke-direct {p0, p1}, Landroidx/collection/MutableScatterSet;->findAbsoluteInsertIndex(Ljava/lang/Object;)I

    move-result v1

    .line 532
    iget-object v2, p0, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    aput-object p1, v2, v1

    .line 533
    invoke-virtual {p0}, Landroidx/collection/ScatterSet;->getSize()I

    move-result p0

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final addAll(Landroidx/collection/ScatterSet;)Z
    .locals 1

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 593
    invoke-virtual {p0}, Landroidx/collection/ScatterSet;->getSize()I

    move-result v0

    .line 594
    invoke-virtual {p0, p1}, Landroidx/collection/MutableScatterSet;->plusAssign(Landroidx/collection/ScatterSet;)V

    .line 595
    invoke-virtual {p0}, Landroidx/collection/ScatterSet;->getSize()I

    move-result p0

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final addAll(Ljava/lang/Iterable;)Z
    .locals 1

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 567
    invoke-virtual {p0}, Landroidx/collection/ScatterSet;->getSize()I

    move-result v0

    .line 568
    invoke-virtual {p0, p1}, Landroidx/collection/MutableScatterSet;->plusAssign(Ljava/lang/Iterable;)V

    .line 569
    invoke-virtual {p0}, Landroidx/collection/ScatterSet;->getSize()I

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

    .line 1028
    iget v0, p0, Landroidx/collection/ScatterSet;->_capacity:I

    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    iget v0, p0, Landroidx/collection/ScatterSet;->_size:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    const-wide/16 v2, 0x20

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    iget v2, p0, Landroidx/collection/ScatterSet;->_capacity:I

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

    .line 1029
    invoke-virtual {p0}, Landroidx/collection/MutableScatterSet;->dropDeletes$collection()V

    goto :goto_0

    .line 1031
    :cond_0
    iget v0, p0, Landroidx/collection/ScatterSet;->_capacity:I

    invoke-static {v0}, Landroidx/collection/ScatterMapKt;->nextCapacity(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/collection/MutableScatterSet;->resizeStorage$collection(I)V

    :goto_0
    return-void
.end method

.method public final asMutableSet()Ljava/util/Set;
    .locals 1

    .line 1154
    new-instance v0, Landroidx/collection/MutableScatterSet$MutableSetWrapper;

    invoke-direct {v0, p0}, Landroidx/collection/MutableScatterSet$MutableSetWrapper;-><init>(Landroidx/collection/MutableScatterSet;)V

    return-object v0
.end method

.method public final clear()V
    .locals 10

    const/4 v0, 0x0

    .line 928
    iput v0, p0, Landroidx/collection/ScatterSet;->_size:I

    .line 929
    iget-object v1, p0, Landroidx/collection/ScatterSet;->metadata:[J

    sget-object v2, Landroidx/collection/ScatterMapKt;->EmptyGroup:[J

    if-eq v1, v2, :cond_0

    const/4 v6, 0x6

    const/4 v7, 0x0

    const-wide v2, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 930
    invoke-static/range {v1 .. v7}, Lkotlin/collections/ArraysKt;->fill$default([JJIIILjava/lang/Object;)V

    .line 931
    iget-object v1, p0, Landroidx/collection/ScatterSet;->metadata:[J

    iget v2, p0, Landroidx/collection/ScatterSet;->_capacity:I

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

    .line 933
    :cond_0
    iget-object v1, p0, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Landroidx/collection/ScatterSet;->_capacity:I

    invoke-static {v1, v2, v0, v3}, Lkotlin/collections/ArraysKt;->fill([Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 934
    invoke-direct {p0}, Landroidx/collection/MutableScatterSet;->initializeGrowth()V

    return-void
.end method

.method public final dropDeletes$collection()V
    .locals 25

    move-object/from16 v0, p0

    .line 1037
    iget-object v1, v0, Landroidx/collection/ScatterSet;->metadata:[J

    .line 1038
    iget v2, v0, Landroidx/collection/ScatterSet;->_capacity:I

    .line 1039
    iget-object v3, v0, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    add-int/lit8 v4, v2, 0x7

    shr-int/lit8 v4, v4, 0x3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_0

    .line 1147
    aget-wide v7, v1, v6

    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v7, v9

    not-long v9, v7

    const/4 v11, 0x7

    ushr-long/2addr v7, v11

    add-long/2addr v9, v7

    const-wide v7, -0x101010101010102L

    and-long/2addr v7, v9

    .line 1148
    aput-wide v7, v1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1151
    :cond_0
    invoke-static {v1}, Lkotlin/collections/ArraysKt;->getLastIndex([J)I

    move-result v4

    add-int/lit8 v6, v4, -0x1

    .line 1154
    aget-wide v7, v1, v6

    const-wide v9, 0xffffffffffffffL

    and-long/2addr v7, v9

    const-wide/high16 v11, -0x100000000000000L

    or-long/2addr v7, v11

    aput-wide v7, v1, v6

    .line 1156
    aget-wide v6, v1, v5

    aput-wide v6, v1, v4

    move v4, v5

    :goto_1
    if-eq v4, v2, :cond_6

    shr-int/lit8 v6, v4, 0x3

    .line 1229
    aget-wide v7, v1, v6

    and-int/lit8 v11, v4, 0x7

    shl-int/lit8 v11, v11, 0x3

    shr-long/2addr v7, v11

    const-wide/16 v12, 0xff

    and-long/2addr v7, v12

    const-wide/16 v14, 0x80

    cmp-long v16, v7, v14

    if-nez v16, :cond_1

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const-wide/16 v16, 0xfe

    cmp-long v7, v7, v16

    if-eqz v7, :cond_2

    goto :goto_2

    .line 1062
    :cond_2
    aget-object v7, v3, v4

    if-eqz v7, :cond_3

    .line 1174
    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v7

    goto :goto_3

    :cond_3
    move v7, v5

    :goto_3
    const v8, -0x3361d2af    # -8.2930312E7f

    mul-int/2addr v7, v8

    shl-int/lit8 v8, v7, 0x10

    xor-int/2addr v7, v8

    ushr-int/lit8 v8, v7, 0x7

    .line 1064
    invoke-direct {v0, v8}, Landroidx/collection/MutableScatterSet;->findFirstAvailableSlot(I)I

    move-result v16

    and-int/2addr v8, v2

    sub-int v17, v16, v8

    and-int v17, v17, v2

    .line 1070
    div-int/lit8 v14, v17, 0x8

    sub-int v8, v4, v8

    and-int/2addr v8, v2

    .line 1071
    div-int/lit8 v8, v8, 0x8

    const-wide/high16 v20, -0x8000000000000000L

    if-ne v14, v8, :cond_4

    and-int/lit8 v7, v7, 0x7f

    int-to-long v7, v7

    .line 1267
    aget-wide v14, v1, v6

    shl-long/2addr v12, v11

    not-long v12, v12

    and-long/2addr v12, v14

    shl-long/2addr v7, v11

    or-long/2addr v7, v12

    aput-wide v7, v1, v6

    .line 1078
    invoke-static {v1}, Lkotlin/collections/ArraysKt;->getLastIndex([J)I

    move-result v6

    .line 1079
    aget-wide v7, v1, v5

    and-long/2addr v7, v9

    or-long v7, v7, v20

    aput-wide v7, v1, v6

    goto :goto_2

    :cond_4
    shr-int/lit8 v8, v16, 0x3

    .line 1229
    aget-wide v14, v1, v8

    and-int/lit8 v17, v16, 0x7

    shl-int/lit8 v17, v17, 0x3

    shr-long v22, v14, v17

    and-long v22, v22, v12

    const-wide/16 v18, 0x80

    cmp-long v22, v22, v18

    if-nez v22, :cond_5

    and-int/lit8 v7, v7, 0x7f

    int-to-long v9, v7

    move/from16 v24, v6

    shl-long v5, v12, v17

    not-long v5, v5

    and-long/2addr v5, v14

    shl-long v9, v9, v17

    or-long/2addr v5, v9

    .line 1267
    aput-wide v5, v1, v8

    .line 1267
    aget-wide v5, v1, v24

    shl-long v7, v12, v11

    not-long v7, v7

    and-long/2addr v5, v7

    const-wide/16 v7, 0x80

    shl-long/2addr v7, v11

    or-long/2addr v5, v7

    aput-wide v5, v1, v24

    .line 1092
    aget-object v5, v3, v4

    aput-object v5, v3, v16

    const/4 v5, 0x0

    .line 1093
    aput-object v5, v3, v4

    goto :goto_4

    :cond_5
    and-int/lit8 v5, v7, 0x7f

    int-to-long v5, v5

    shl-long v9, v12, v17

    not-long v9, v9

    and-long/2addr v9, v14

    shl-long v5, v5, v17

    or-long/2addr v5, v9

    .line 1267
    aput-wide v5, v1, v8

    .line 1100
    aget-object v5, v3, v16

    .line 1101
    aget-object v6, v3, v4

    aput-object v6, v3, v16

    .line 1102
    aput-object v5, v3, v4

    add-int/lit8 v4, v4, -0x1

    .line 1110
    :goto_4
    invoke-static {v1}, Lkotlin/collections/ArraysKt;->getLastIndex([J)I

    move-result v5

    const/4 v6, 0x0

    aget-wide v7, v1, v6

    const-wide v9, 0xffffffffffffffL

    and-long/2addr v7, v9

    or-long v7, v7, v20

    aput-wide v7, v1, v5

    add-int/lit8 v4, v4, 0x1

    move v5, v6

    goto/16 :goto_1

    .line 1115
    :cond_6
    invoke-direct/range {p0 .. p0}, Landroidx/collection/MutableScatterSet;->initializeGrowth()V

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

    .line 802
    invoke-virtual {p0, v0}, Landroidx/collection/MutableScatterSet;->minusAssign(Ljava/lang/Object;)V

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

    .line 393
    iget v3, p0, Landroidx/collection/ScatterSet;->_capacity:I

    ushr-int/lit8 v1, v1, 0x7

    :goto_1
    and-int/2addr v1, v3

    .line 397
    iget-object v4, p0, Landroidx/collection/ScatterSet;->metadata:[J

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

    .line 401
    iget-object v11, p0, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

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

    .line 702
    invoke-virtual {p0, v10}, Landroidx/collection/MutableScatterSet;->removeElementAt(I)V

    :cond_3
    return-void

    :cond_4
    add-int/lit8 v0, v0, 0x8

    add-int/2addr v1, v0

    goto :goto_1
.end method

.method public final plusAssign(Landroidx/collection/ScatterSet;)V
    .locals 13

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    iget-object v0, p1, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 201
    iget-object p1, p1, Landroidx/collection/ScatterSet;->metadata:[J

    .line 202
    array-length v1, p1

    add-int/lit8 v1, v1, -0x2

    if-ltz v1, :cond_3

    const/4 v2, 0x0

    move v3, v2

    .line 205
    :goto_0
    aget-wide v4, p1, v3

    not-long v6, v4

    const/4 v8, 0x7

    shl-long/2addr v6, v8

    and-long/2addr v6, v4

    const-wide v8, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v6, v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2

    sub-int v6, v3, v1

    not-int v6, v6

    ushr-int/lit8 v6, v6, 0x1f

    const/16 v7, 0x8

    rsub-int/lit8 v6, v6, 0x8

    move v8, v2

    :goto_1
    if-ge v8, v6, :cond_1

    const-wide/16 v9, 0xff

    and-long/2addr v9, v4

    const-wide/16 v11, 0x80

    cmp-long v9, v9, v11

    if-gez v9, :cond_0

    shl-int/lit8 v9, v3, 0x3

    add-int/2addr v9, v8

    .line 233
    aget-object v9, v0, v9

    .line 657
    invoke-virtual {p0, v9}, Landroidx/collection/MutableScatterSet;->plusAssign(Ljava/lang/Object;)V

    :cond_0
    shr-long/2addr v4, v7

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    if-ne v6, v7, :cond_3

    :cond_2
    if-eq v3, v1, :cond_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
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

    .line 639
    invoke-virtual {p0, v0}, Landroidx/collection/MutableScatterSet;->plusAssign(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final plusAssign(Ljava/lang/Object;)V
    .locals 1

    .line 542
    invoke-direct {p0, p1}, Landroidx/collection/MutableScatterSet;->findAbsoluteInsertIndex(Ljava/lang/Object;)I

    move-result v0

    .line 543
    iget-object p0, p0, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    aput-object p1, p0, v0

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

    .line 393
    iget v5, v0, Landroidx/collection/ScatterSet;->_capacity:I

    ushr-int/lit8 v3, v3, 0x7

    and-int/2addr v3, v5

    move v6, v2

    .line 397
    :goto_1
    iget-object v7, v0, Landroidx/collection/ScatterSet;->metadata:[J

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

    .line 401
    iget-object v15, v0, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

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

    .line 689
    invoke-virtual {v0, v11}, Landroidx/collection/MutableScatterSet;->removeElementAt(I)V

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

    .line 737
    invoke-virtual {p0}, Landroidx/collection/ScatterSet;->getSize()I

    move-result v0

    .line 738
    invoke-virtual {p0, p1}, Landroidx/collection/MutableScatterSet;->minusAssign(Ljava/lang/Iterable;)V

    .line 739
    invoke-virtual {p0}, Landroidx/collection/ScatterSet;->getSize()I

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
    .locals 8

    .line 918
    iget v0, p0, Landroidx/collection/ScatterSet;->_size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/collection/ScatterSet;->_size:I

    .line 922
    iget-object v0, p0, Landroidx/collection/ScatterSet;->metadata:[J

    iget v1, p0, Landroidx/collection/ScatterSet;->_capacity:I

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

    .line 923
    iget-object p0, p0, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v0, p0, p1

    return-void
.end method

.method public final resizeStorage$collection(I)V
    .locals 19

    move-object/from16 v0, p0

    .line 1120
    iget-object v1, v0, Landroidx/collection/ScatterSet;->metadata:[J

    .line 1121
    iget-object v2, v0, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 1122
    iget v3, v0, Landroidx/collection/ScatterSet;->_capacity:I

    .line 1124
    invoke-direct/range {p0 .. p1}, Landroidx/collection/MutableScatterSet;->initializeStorage(I)V

    .line 1126
    iget-object v4, v0, Landroidx/collection/ScatterSet;->metadata:[J

    .line 1127
    iget-object v5, v0, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 1128
    iget v6, v0, Landroidx/collection/ScatterSet;->_capacity:I

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v3, :cond_2

    shr-int/lit8 v9, v8, 0x3

    .line 1229
    aget-wide v9, v1, v9

    and-int/lit8 v11, v8, 0x7

    shl-int/lit8 v11, v11, 0x3

    shr-long/2addr v9, v11

    const-wide/16 v11, 0xff

    and-long/2addr v9, v11

    const-wide/16 v13, 0x80

    cmp-long v9, v9, v13

    if-gez v9, :cond_1

    .line 1132
    aget-object v9, v2, v8

    if-eqz v9, :cond_0

    .line 1174
    invoke-virtual {v9}, Ljava/lang/Object;->hashCode()I

    move-result v10

    goto :goto_1

    :cond_0
    move v10, v7

    :goto_1
    const v13, -0x3361d2af    # -8.2930312E7f

    mul-int/2addr v10, v13

    shl-int/lit8 v13, v10, 0x10

    xor-int/2addr v10, v13

    ushr-int/lit8 v13, v10, 0x7

    .line 1134
    invoke-direct {v0, v13}, Landroidx/collection/MutableScatterSet;->findFirstAvailableSlot(I)I

    move-result v13

    and-int/lit8 v10, v10, 0x7f

    int-to-long v14, v10

    shr-int/lit8 v10, v13, 0x3

    and-int/lit8 v16, v13, 0x7

    shl-int/lit8 v16, v16, 0x3

    .line 1267
    aget-wide v17, v4, v10

    shl-long v11, v11, v16

    not-long v11, v11

    and-long v11, v17, v11

    shl-long v14, v14, v16

    or-long/2addr v11, v14

    aput-wide v11, v4, v10

    add-int/lit8 v10, v13, -0x7

    and-int/2addr v10, v6

    and-int/lit8 v14, v6, 0x7

    add-int/2addr v10, v14

    shr-int/lit8 v10, v10, 0x3

    .line 1252
    aput-wide v11, v4, v10

    .line 1137
    aput-object v9, v5, v13

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "elements"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 850
    iget-object v2, v0, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 851
    iget v3, v0, Landroidx/collection/ScatterSet;->_size:I

    .line 201
    iget-object v4, v0, Landroidx/collection/ScatterSet;->metadata:[J

    .line 202
    array-length v5, v4

    add-int/lit8 v5, v5, -0x2

    const/4 v6, 0x0

    if-ltz v5, :cond_3

    move v7, v6

    .line 205
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

    .line 853
    move-object v14, v1

    check-cast v14, Ljava/lang/Iterable;

    aget-object v15, v2, v13

    invoke-static {v14, v15}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 854
    invoke-virtual {v0, v13}, Landroidx/collection/MutableScatterSet;->removeElementAt(I)V

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

    .line 857
    :cond_3
    iget v0, v0, Landroidx/collection/ScatterSet;->_size:I

    if-eq v3, v0, :cond_4

    const/4 v6, 0x1

    :cond_4
    return v6
.end method
