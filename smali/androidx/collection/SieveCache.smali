.class public final Landroidx/collection/SieveCache;
.super Ljava/lang/Object;
.source "SieveCache.kt"


# instance fields
.field private _capacity:I

.field private _count:I

.field private _maxSize:I

.field private _size:I

.field private final createValueFromKey:Lkotlin/jvm/functions/Function1;

.field private growthLimit:I

.field private hand:I

.field private head:I

.field public keys:[Ljava/lang/Object;

.field public metadata:[J

.field private nodes:[J

.field private final onEntryRemoved:Lkotlin/jvm/functions/Function4;

.field private final sizeOf:Lkotlin/jvm/functions/Function2;

.field private tail:I

.field public values:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(IILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V
    .locals 1

    const-string v0, "sizeOf"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createValueFromKey"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onEntryRemoved"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p3, p0, Landroidx/collection/SieveCache;->sizeOf:Lkotlin/jvm/functions/Function2;

    .line 108
    iput-object p4, p0, Landroidx/collection/SieveCache;->createValueFromKey:Lkotlin/jvm/functions/Function1;

    .line 109
    iput-object p5, p0, Landroidx/collection/SieveCache;->onEntryRemoved:Lkotlin/jvm/functions/Function4;

    .line 113
    sget-object p3, Landroidx/collection/ScatterMapKt;->EmptyGroup:[J

    iput-object p3, p0, Landroidx/collection/SieveCache;->metadata:[J

    .line 114
    sget-object p3, Landroidx/collection/internal/ContainerHelpersKt;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object p3, p0, Landroidx/collection/SieveCache;->keys:[Ljava/lang/Object;

    .line 115
    iput-object p3, p0, Landroidx/collection/SieveCache;->values:[Ljava/lang/Object;

    .line 116
    invoke-static {}, Landroidx/collection/SieveCacheKt;->getEmptyNodes()[J

    move-result-object p3

    iput-object p3, p0, Landroidx/collection/SieveCache;->nodes:[J

    const p3, 0x7fffffff

    .line 125
    iput p3, p0, Landroidx/collection/SieveCache;->head:I

    .line 126
    iput p3, p0, Landroidx/collection/SieveCache;->tail:I

    .line 127
    iput p3, p0, Landroidx/collection/SieveCache;->hand:I

    if-lez p1, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-nez p3, :cond_1

    .line 130
    const-string p3, "maxSize must be > 0"

    .line 61
    invoke-static {p3}, Landroidx/collection/internal/RuntimeHelpersKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 131
    :cond_1
    iput p1, p0, Landroidx/collection/SieveCache;->_maxSize:I

    .line 132
    invoke-static {p2}, Landroidx/collection/ScatterMapKt;->unloadedCapacity(I)I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/collection/SieveCache;->initializeStorage(I)V

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    const/4 p2, 0x6

    :cond_0
    move v2, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    .line 107
    sget-object p3, Landroidx/collection/SieveCache$1;->INSTANCE:Landroidx/collection/SieveCache$1;

    :cond_1
    move-object v3, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_2

    .line 108
    sget-object p4, Landroidx/collection/SieveCache$2;->INSTANCE:Landroidx/collection/SieveCache$2;

    :cond_2
    move-object v4, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_3

    .line 110
    sget-object p5, Landroidx/collection/SieveCache$3;->INSTANCE:Landroidx/collection/SieveCache$3;

    :cond_3
    move-object v5, p5

    move-object v0, p0

    move v1, p1

    .line 104
    invoke-direct/range {v0 .. v5}, Landroidx/collection/SieveCache;-><init>(IILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    return-void
.end method

.method private final findEvictionCandidate()I
    .locals 12

    .line 614
    iget-object v0, p0, Landroidx/collection/SieveCache;->nodes:[J

    .line 616
    iget v1, p0, Landroidx/collection/SieveCache;->hand:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Landroidx/collection/SieveCache;->tail:I

    :goto_0
    const-wide/32 v3, 0x7fffffff

    const/16 v5, 0x1f

    if-eq v1, v2, :cond_2

    .line 617
    aget-wide v6, v0, v1

    const/16 v8, 0x3e

    shr-long v8, v6, v8

    const-wide/16 v10, 0x1

    and-long/2addr v8, v10

    long-to-int v8, v8

    if-eqz v8, :cond_2

    shr-long v8, v6, v5

    and-long/2addr v3, v8

    long-to-int v3, v3

    const-wide v4, 0x3fffffffffffffffL    # 1.9999999999999998

    and-long/2addr v4, v6

    .line 1114
    aput-wide v4, v0, v1

    if-eq v3, v2, :cond_1

    move v1, v3

    goto :goto_0

    .line 621
    :cond_1
    iget v1, p0, Landroidx/collection/SieveCache;->tail:I

    goto :goto_0

    .line 624
    :cond_2
    aget-wide v6, v0, v1

    shr-long v5, v6, v5

    and-long/2addr v3, v5

    long-to-int v0, v3

    if-eq v0, v2, :cond_3

    move v2, v0

    .line 625
    :cond_3
    iput v2, p0, Landroidx/collection/SieveCache;->hand:I

    return v1
.end method

.method private final findFirstAvailableSlot(I)I
    .locals 9

    .line 757
    iget v0, p0, Landroidx/collection/SieveCache;->_capacity:I

    and-int/2addr p1, v0

    const/4 v1, 0x0

    .line 762
    :goto_0
    iget-object v2, p0, Landroidx/collection/SieveCache;->metadata:[J

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

.method private final findInsertIndex(Ljava/lang/Object;)I
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

    .line 720
    iget v5, v0, Landroidx/collection/SieveCache;->_capacity:I

    and-int v6, v4, v5

    const/4 v7, 0x0

    .line 725
    :goto_1
    iget-object v8, v0, Landroidx/collection/SieveCache;->metadata:[J

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

    .line 729
    iget-object v12, v0, Landroidx/collection/SieveCache;->keys:[Ljava/lang/Object;

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

    .line 743
    invoke-direct {v0, v4}, Landroidx/collection/SieveCache;->findFirstAvailableSlot(I)I

    move-result v1

    .line 744
    iget v2, v0, Landroidx/collection/SieveCache;->growthLimit:I

    const-wide/16 v5, 0xff

    if-nez v2, :cond_4

    iget-object v2, v0, Landroidx/collection/SieveCache;->metadata:[J

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

    .line 745
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroidx/collection/SieveCache;->adjustStorage$collection()V

    .line 746
    invoke-direct {v0, v4}, Landroidx/collection/SieveCache;->findFirstAvailableSlot(I)I

    move-result v1

    .line 749
    :cond_4
    :goto_3
    iget v2, v0, Landroidx/collection/SieveCache;->_count:I

    add-int/2addr v2, v13

    iput v2, v0, Landroidx/collection/SieveCache;->_count:I

    .line 750
    iget v2, v0, Landroidx/collection/SieveCache;->growthLimit:I

    iget-object v3, v0, Landroidx/collection/SieveCache;->metadata:[J

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

    .line 750
    iput v2, v0, Landroidx/collection/SieveCache;->growthLimit:I

    .line 751
    iget v0, v0, Landroidx/collection/SieveCache;->_capacity:I

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

.method private final findKeyIndex(Ljava/lang/Object;)I
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

    .line 689
    iget v3, p0, Landroidx/collection/SieveCache;->_capacity:I

    ushr-int/lit8 v1, v1, 0x7

    :goto_1
    and-int/2addr v1, v3

    .line 694
    iget-object v4, p0, Landroidx/collection/SieveCache;->metadata:[J

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

    .line 698
    iget-object v11, p0, Landroidx/collection/SieveCache;->keys:[Ljava/lang/Object;

    aget-object v11, v11, v10

    invoke-static {v11, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    return v10

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

    if-eqz v4, :cond_3

    const/4 p0, -0x1

    return p0

    :cond_3
    add-int/lit8 v0, v0, 0x8

    add-int/2addr v1, v0

    goto :goto_1
.end method

.method private final fixupNodes([I)V
    .locals 11

    .line 1006
    iget-object v0, p0, Landroidx/collection/SieveCache;->nodes:[J

    .line 1007
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    const v3, 0x7fffffff

    if-ge v2, v1, :cond_2

    .line 1008
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

    .line 1013
    :cond_2
    iget v0, p0, Landroidx/collection/SieveCache;->head:I

    if-eq v0, v3, :cond_3

    aget v0, p1, v0

    iput v0, p0, Landroidx/collection/SieveCache;->head:I

    .line 1014
    :cond_3
    iget v0, p0, Landroidx/collection/SieveCache;->tail:I

    if-eq v0, v3, :cond_4

    aget v0, p1, v0

    iput v0, p0, Landroidx/collection/SieveCache;->tail:I

    .line 1015
    :cond_4
    iget v0, p0, Landroidx/collection/SieveCache;->hand:I

    if-eq v0, v3, :cond_5

    aget p1, p1, v0

    iput p1, p0, Landroidx/collection/SieveCache;->hand:I

    :cond_5
    return-void
.end method

.method private final fixupNodes([J)V
    .locals 13

    .line 993
    iget-object v0, p0, Landroidx/collection/SieveCache;->nodes:[J

    .line 994
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    const-wide v3, 0xffffffffL

    const v5, 0x7fffffff

    if-ge v2, v1, :cond_2

    .line 995
    aget-wide v6, v0, v2

    const/16 v8, 0x1f

    shr-long v9, v6, v8

    const-wide/32 v11, 0x7fffffff

    and-long/2addr v9, v11

    long-to-int v9, v9

    and-long v10, v6, v11

    long-to-int v10, v10

    const-wide/high16 v11, -0x4000000000000000L    # -2.0

    and-long/2addr v6, v11

    if-ne v9, v5, :cond_0

    move v9, v5

    goto :goto_1

    .line 1092
    :cond_0
    aget-wide v11, p1, v9

    and-long/2addr v11, v3

    long-to-int v9, v11

    :goto_1
    int-to-long v11, v9

    or-long/2addr v6, v11

    shl-long/2addr v6, v8

    if-ne v10, v5, :cond_1

    goto :goto_2

    .line 1094
    :cond_1
    aget-wide v8, p1, v10

    and-long/2addr v3, v8

    long-to-int v5, v3

    :goto_2
    int-to-long v3, v5

    or-long/2addr v3, v6

    .line 1091
    aput-wide v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1000
    :cond_2
    iget v0, p0, Landroidx/collection/SieveCache;->head:I

    if-eq v0, v5, :cond_3

    aget-wide v0, p1, v0

    and-long/2addr v0, v3

    long-to-int v0, v0

    iput v0, p0, Landroidx/collection/SieveCache;->head:I

    .line 1001
    :cond_3
    iget v0, p0, Landroidx/collection/SieveCache;->tail:I

    if-eq v0, v5, :cond_4

    aget-wide v0, p1, v0

    and-long/2addr v0, v3

    long-to-int v0, v0

    iput v0, p0, Landroidx/collection/SieveCache;->tail:I

    .line 1002
    :cond_4
    iget v0, p0, Landroidx/collection/SieveCache;->hand:I

    if-eq v0, v5, :cond_5

    aget-wide v0, p1, v0

    and-long/2addr v0, v3

    long-to-int p1, v0

    iput p1, p0, Landroidx/collection/SieveCache;->hand:I

    :cond_5
    return-void
.end method

.method private final initializeGrowth()V
    .locals 2

    .line 216
    iget v0, p0, Landroidx/collection/SieveCache;->_capacity:I

    invoke-static {v0}, Landroidx/collection/ScatterMapKt;->loadedCapacity(I)I

    move-result v0

    invoke-virtual {p0}, Landroidx/collection/SieveCache;->getCount()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Landroidx/collection/SieveCache;->growthLimit:I

    return-void
.end method

.method private final initializeMetadata(I)V
    .locals 8

    if-nez p1, :cond_0

    .line 203
    sget-object p1, Landroidx/collection/ScatterMapKt;->EmptyGroup:[J

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p1, 0xf

    and-int/lit8 v0, v0, -0x8

    shr-int/lit8 v0, v0, 0x3

    .line 207
    new-array v0, v0, [J

    const/4 v6, 0x6

    const/4 v7, 0x0

    const-wide v2, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v0

    .line 208
    invoke-static/range {v1 .. v7}, Lkotlin/collections/ArraysKt;->fill$default([JJIIILjava/lang/Object;)V

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

    move-object p1, v0

    .line 201
    :goto_0
    iput-object p1, p0, Landroidx/collection/SieveCache;->metadata:[J

    .line 212
    invoke-direct {p0}, Landroidx/collection/SieveCache;->initializeGrowth()V

    return-void
.end method

.method private final initializeStorage(I)V
    .locals 7

    if-lez p1, :cond_0

    const/4 v0, 0x7

    .line 188
    invoke-static {p1}, Landroidx/collection/ScatterMapKt;->normalizeCapacity(I)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 192
    :goto_0
    iput p1, p0, Landroidx/collection/SieveCache;->_capacity:I

    .line 193
    invoke-direct {p0, p1}, Landroidx/collection/SieveCache;->initializeMetadata(I)V

    if-nez p1, :cond_1

    .line 194
    sget-object v0, Landroidx/collection/internal/ContainerHelpersKt;->EMPTY_OBJECTS:[Ljava/lang/Object;

    goto :goto_1

    :cond_1
    new-array v0, p1, [Ljava/lang/Object;

    :goto_1
    iput-object v0, p0, Landroidx/collection/SieveCache;->keys:[Ljava/lang/Object;

    if-nez p1, :cond_2

    .line 195
    sget-object v0, Landroidx/collection/internal/ContainerHelpersKt;->EMPTY_OBJECTS:[Ljava/lang/Object;

    goto :goto_2

    :cond_2
    new-array v0, p1, [Ljava/lang/Object;

    :goto_2
    iput-object v0, p0, Landroidx/collection/SieveCache;->values:[Ljava/lang/Object;

    if-nez p1, :cond_3

    .line 197
    invoke-static {}, Landroidx/collection/SieveCacheKt;->getEmptyNodes()[J

    move-result-object p1

    goto :goto_3

    :cond_3
    new-array p1, p1, [J

    const/4 v5, 0x6

    const/4 v6, 0x0

    const-wide v1, 0x3fffffffffffffffL    # 1.9999999999999998

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lkotlin/collections/ArraysKt;->fill$default([JJIIILjava/lang/Object;)V

    .line 196
    :goto_3
    iput-object p1, p0, Landroidx/collection/SieveCache;->nodes:[J

    return-void
.end method

.method private final removeValueAt(I)Ljava/lang/Object;
    .locals 13

    .line 644
    iget v0, p0, Landroidx/collection/SieveCache;->_count:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/collection/SieveCache;->_count:I

    .line 646
    iget-object v0, p0, Landroidx/collection/SieveCache;->metadata:[J

    iget v1, p0, Landroidx/collection/SieveCache;->_capacity:I

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

    .line 648
    iget-object v0, p0, Landroidx/collection/SieveCache;->keys:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 649
    iget-object v0, p0, Landroidx/collection/SieveCache;->values:[Ljava/lang/Object;

    aget-object v2, v0, p1

    .line 650
    aput-object v1, v0, p1

    .line 658
    iget-object v0, p0, Landroidx/collection/SieveCache;->nodes:[J

    .line 659
    aget-wide v3, v0, p1

    const/16 v1, 0x1f

    shr-long v5, v3, v1

    const-wide/32 v7, 0x7fffffff

    and-long/2addr v5, v7

    long-to-int v5, v5

    and-long/2addr v3, v7

    long-to-int v3, v3

    const v4, 0x7fffffff

    if-eq v5, v4, :cond_0

    .line 664
    aget-wide v9, v0, v5

    const-wide/32 v11, -0x80000000

    and-long/2addr v9, v11

    int-to-long v11, v3

    and-long/2addr v11, v7

    or-long/2addr v9, v11

    .line 1112
    aput-wide v9, v0, v5

    goto :goto_0

    .line 666
    :cond_0
    iput v3, p0, Landroidx/collection/SieveCache;->head:I

    :goto_0
    if-eq v3, v4, :cond_1

    .line 670
    aget-wide v9, v0, v3

    const-wide v11, -0x3fffffff80000001L    # -2.000000953674316

    and-long/2addr v9, v11

    int-to-long v11, v5

    and-long v6, v11, v7

    shl-long/2addr v6, v1

    or-long/2addr v6, v9

    .line 1109
    aput-wide v6, v0, v3

    goto :goto_1

    .line 672
    :cond_1
    iput v5, p0, Landroidx/collection/SieveCache;->tail:I

    .line 675
    :goto_1
    iget v1, p0, Landroidx/collection/SieveCache;->hand:I

    if-ne v1, p1, :cond_2

    .line 676
    iput v5, p0, Landroidx/collection/SieveCache;->hand:I

    :cond_2
    const-wide v3, 0x3fffffffffffffffL    # 1.9999999999999998

    .line 678
    aput-wide v3, v0, p1

    return-object v2
.end method


# virtual methods
.method public final adjustStorage$collection()V
    .locals 6

    .line 774
    iget v0, p0, Landroidx/collection/SieveCache;->_capacity:I

    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/collection/SieveCache;->getCount()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    const-wide/16 v2, 0x20

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    iget v2, p0, Landroidx/collection/SieveCache;->_capacity:I

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

    .line 775
    invoke-virtual {p0}, Landroidx/collection/SieveCache;->dropDeletes$collection()V

    goto :goto_0

    .line 777
    :cond_0
    iget v0, p0, Landroidx/collection/SieveCache;->_capacity:I

    invoke-static {v0}, Landroidx/collection/ScatterMapKt;->nextCapacity(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/collection/SieveCache;->resizeStorage$collection(I)V

    :goto_0
    return-void
.end method

.method public final dropDeletes$collection()V
    .locals 30

    move-object/from16 v0, p0

    .line 783
    iget-object v1, v0, Landroidx/collection/SieveCache;->metadata:[J

    if-nez v1, :cond_0

    return-void

    .line 788
    :cond_0
    iget v2, v0, Landroidx/collection/SieveCache;->_capacity:I

    .line 789
    iget-object v3, v0, Landroidx/collection/SieveCache;->keys:[Ljava/lang/Object;

    .line 790
    iget-object v4, v0, Landroidx/collection/SieveCache;->values:[Ljava/lang/Object;

    .line 791
    iget-object v5, v0, Landroidx/collection/SieveCache;->nodes:[J

    .line 835
    new-array v6, v2, [J

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    .line 836
    invoke-static {v6, v7, v8, v9, v2}, Lkotlin/collections/ArraysKt;->fill([JJII)V

    add-int/lit8 v7, v2, 0x7

    shr-int/lit8 v7, v7, 0x3

    move v8, v9

    :goto_0
    if-ge v8, v7, :cond_1

    .line 1147
    aget-wide v10, v1, v8

    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v10, v12

    not-long v12, v10

    const/4 v14, 0x7

    ushr-long/2addr v10, v14

    add-long/2addr v12, v10

    const-wide v10, -0x101010101010102L

    and-long/2addr v10, v12

    .line 1148
    aput-wide v10, v1, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1151
    :cond_1
    invoke-static {v1}, Lkotlin/collections/ArraysKt;->getLastIndex([J)I

    move-result v7

    add-int/lit8 v8, v7, -0x1

    .line 1154
    aget-wide v10, v1, v8

    const-wide v12, 0xffffffffffffffL

    and-long/2addr v10, v12

    const-wide/high16 v12, -0x100000000000000L

    or-long/2addr v10, v12

    aput-wide v10, v1, v8

    .line 1156
    aget-wide v10, v1, v9

    aput-wide v10, v1, v7

    move v7, v9

    :goto_1
    if-eq v7, v2, :cond_9

    shr-int/lit8 v8, v7, 0x3

    .line 1229
    aget-wide v10, v1, v8

    and-int/lit8 v12, v7, 0x7

    shl-int/lit8 v12, v12, 0x3

    shr-long/2addr v10, v12

    const-wide/16 v13, 0xff

    and-long/2addr v10, v13

    const-wide/16 v15, 0x80

    cmp-long v17, v10, v15

    if-nez v17, :cond_2

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    const-wide/16 v17, 0xfe

    cmp-long v10, v10, v17

    if-eqz v10, :cond_3

    goto :goto_2

    .line 859
    :cond_3
    aget-object v10, v3, v7

    if-eqz v10, :cond_4

    .line 1174
    invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I

    move-result v10

    goto :goto_3

    :cond_4
    move v10, v9

    :goto_3
    const v11, -0x3361d2af    # -8.2930312E7f

    mul-int/2addr v10, v11

    shl-int/lit8 v11, v10, 0x10

    xor-int/2addr v10, v11

    ushr-int/lit8 v11, v10, 0x7

    .line 861
    invoke-direct {v0, v11}, Landroidx/collection/SieveCache;->findFirstAvailableSlot(I)I

    move-result v15

    and-int/2addr v11, v2

    sub-int v16, v15, v11

    and-int v16, v16, v2

    .line 867
    div-int/lit8 v9, v16, 0x8

    sub-int v11, v7, v11

    and-int/2addr v11, v2

    .line 868
    div-int/lit8 v11, v11, 0x8

    const/16 v16, 0x20

    if-ne v9, v11, :cond_5

    and-int/lit8 v9, v10, 0x7f

    int-to-long v9, v9

    .line 1267
    aget-wide v17, v1, v8

    shl-long/2addr v13, v12

    not-long v13, v13

    and-long v13, v17, v13

    shl-long/2addr v9, v12

    or-long/2addr v9, v13

    aput-wide v9, v1, v8

    int-to-long v8, v7

    shl-long v10, v8, v16

    or-long/2addr v8, v10

    .line 1127
    aput-wide v8, v6, v7

    .line 877
    array-length v8, v1

    add-int/lit8 v8, v8, -0x1

    const/4 v9, 0x0

    aget-wide v10, v1, v9

    aput-wide v10, v1, v8

    add-int/lit8 v7, v7, 0x1

    const/4 v9, 0x0

    goto :goto_1

    :cond_5
    shr-int/lit8 v9, v15, 0x3

    .line 1229
    aget-wide v19, v1, v9

    and-int/lit8 v11, v15, 0x7

    shl-int/lit8 v11, v11, 0x3

    shr-long v21, v19, v11

    and-long v21, v21, v13

    const-wide/16 v17, 0x80

    cmp-long v21, v21, v17

    const-wide v22, -0x100000000L

    const-wide v24, 0xffffffffL

    if-nez v21, :cond_7

    and-int/lit8 v10, v10, 0x7f

    int-to-long v13, v10

    move-object/from16 v28, v5

    move-object/from16 v29, v6

    const-wide/16 v26, 0xff

    shl-long v5, v26, v11

    not-long v5, v5

    and-long v5, v19, v5

    shl-long v10, v13, v11

    or-long/2addr v5, v10

    .line 1267
    aput-wide v5, v1, v9

    .line 1267
    aget-wide v5, v1, v8

    shl-long v9, v26, v12

    not-long v9, v9

    and-long/2addr v5, v9

    const-wide/16 v9, 0x80

    shl-long/2addr v9, v12

    or-long/2addr v5, v9

    aput-wide v5, v1, v8

    .line 890
    aget-object v5, v3, v7

    aput-object v5, v3, v15

    const/4 v5, 0x0

    .line 891
    aput-object v5, v3, v7

    .line 893
    aget-object v6, v4, v7

    aput-object v6, v4, v15

    .line 894
    aput-object v5, v4, v7

    .line 896
    aget-wide v5, v28, v7

    aput-wide v5, v28, v15

    const-wide v5, 0x3fffffffffffffffL    # 1.9999999999999998

    .line 897
    aput-wide v5, v28, v7

    .line 899
    aget-wide v5, v29, v7

    shr-long v5, v5, v16

    and-long v5, v5, v24

    long-to-int v5, v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_6

    .line 902
    aget-wide v8, v29, v5

    and-long v8, v8, v22

    int-to-long v10, v15

    or-long/2addr v8, v10

    .line 1133
    aput-wide v8, v29, v5

    .line 903
    aget-wide v8, v29, v7

    and-long v8, v8, v24

    or-long v8, v8, v22

    .line 1136
    aput-wide v8, v29, v7

    goto :goto_4

    :cond_6
    int-to-long v8, v6

    shl-long v8, v8, v16

    int-to-long v10, v15

    or-long/2addr v8, v10

    .line 1127
    aput-wide v8, v29, v7

    :goto_4
    int-to-long v8, v7

    shl-long v8, v8, v16

    int-to-long v5, v6

    or-long/2addr v5, v8

    .line 1127
    aput-wide v5, v29, v15

    goto :goto_6

    :cond_7
    move-object/from16 v28, v5

    move-object/from16 v29, v6

    and-int/lit8 v5, v10, 0x7f

    int-to-long v5, v5

    const-wide/16 v12, 0xff

    shl-long/2addr v12, v11

    not-long v12, v12

    and-long v12, v19, v12

    shl-long/2addr v5, v11

    or-long/2addr v5, v12

    .line 1267
    aput-wide v5, v1, v9

    .line 913
    aget-object v5, v3, v15

    .line 914
    aget-object v6, v3, v7

    aput-object v6, v3, v15

    .line 915
    aput-object v5, v3, v7

    .line 917
    aget-object v5, v4, v15

    .line 918
    aget-object v6, v4, v7

    aput-object v6, v4, v15

    .line 919
    aput-object v5, v4, v7

    .line 921
    aget-wide v5, v28, v15

    .line 922
    aget-wide v8, v28, v7

    aput-wide v8, v28, v15

    .line 923
    aput-wide v5, v28, v7

    .line 925
    aget-wide v5, v29, v7

    shr-long v5, v5, v16

    and-long v5, v5, v24

    long-to-int v5, v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_8

    .line 928
    aget-wide v8, v29, v5

    and-long v8, v8, v22

    int-to-long v10, v15

    or-long/2addr v8, v10

    .line 1133
    aput-wide v8, v29, v5

    .line 929
    aget-wide v8, v29, v7

    shl-long v10, v10, v16

    and-long v8, v8, v24

    or-long/2addr v8, v10

    .line 1130
    aput-wide v8, v29, v7

    goto :goto_5

    :cond_8
    int-to-long v5, v15

    shl-long v8, v5, v16

    or-long/2addr v5, v8

    .line 1127
    aput-wide v5, v29, v7

    move v5, v7

    :goto_5
    int-to-long v5, v5

    shl-long v5, v5, v16

    int-to-long v8, v7

    or-long/2addr v5, v8

    .line 1127
    aput-wide v5, v29, v15

    add-int/lit8 v7, v7, -0x1

    .line 943
    :goto_6
    array-length v5, v1

    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x0

    aget-wide v8, v1, v6

    aput-wide v8, v1, v5

    add-int/lit8 v7, v7, 0x1

    move v9, v6

    move-object/from16 v5, v28

    move-object/from16 v6, v29

    goto/16 :goto_1

    :cond_9
    move-object/from16 v29, v6

    .line 948
    invoke-direct/range {p0 .. p0}, Landroidx/collection/SieveCache;->initializeGrowth()V

    move-object/from16 v1, v29

    .line 950
    invoke-direct {v0, v1}, Landroidx/collection/SieveCache;->fixupNodes([J)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    if-ne v1, v0, :cond_0

    return v2

    .line 1067
    :cond_0
    instance-of v3, v1, Landroidx/collection/SieveCache;

    const/4 v4, 0x0

    if-nez v3, :cond_1

    return v4

    .line 1070
    :cond_1
    check-cast v1, Landroidx/collection/SieveCache;

    invoke-virtual {v1}, Landroidx/collection/SieveCache;->getSize()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroidx/collection/SieveCache;->getSize()I

    move-result v5

    if-ne v3, v5, :cond_7

    iget v3, v1, Landroidx/collection/SieveCache;->_count:I

    iget v5, v0, Landroidx/collection/SieveCache;->_count:I

    if-eq v3, v5, :cond_2

    goto :goto_2

    .line 546
    :cond_2
    iget-object v3, v0, Landroidx/collection/SieveCache;->keys:[Ljava/lang/Object;

    .line 547
    iget-object v5, v0, Landroidx/collection/SieveCache;->values:[Ljava/lang/Object;

    .line 1020
    iget-object v0, v0, Landroidx/collection/SieveCache;->metadata:[J

    .line 1021
    array-length v6, v0

    add-int/lit8 v6, v6, -0x2

    if-ltz v6, :cond_6

    move v7, v4

    .line 1024
    :goto_0
    aget-wide v8, v0, v7

    not-long v10, v8

    const/4 v12, 0x7

    shl-long/2addr v10, v12

    and-long/2addr v10, v8

    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v10, v12

    cmp-long v10, v10, v12

    if-eqz v10, :cond_5

    sub-int v10, v7, v6

    not-int v10, v10

    ushr-int/lit8 v10, v10, 0x1f

    const/16 v11, 0x8

    rsub-int/lit8 v10, v10, 0x8

    move v12, v4

    :goto_1
    if-ge v12, v10, :cond_4

    const-wide/16 v13, 0xff

    and-long/2addr v13, v8

    const-wide/16 v15, 0x80

    cmp-long v13, v13, v15

    if-gez v13, :cond_3

    shl-int/lit8 v13, v7, 0x3

    add-int/2addr v13, v12

    .line 549
    aget-object v14, v3, v13

    const-string v15, "null cannot be cast to non-null type K of androidx.collection.SieveCache.forEach$lambda$10"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    aget-object v13, v5, v13

    const-string v15, "null cannot be cast to non-null type V of androidx.collection.SieveCache.forEach$lambda$10"

    invoke-static {v13, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1077
    invoke-virtual {v1, v14}, Landroidx/collection/SieveCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    return v4

    :cond_3
    shr-long/2addr v8, v11

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_4
    if-ne v10, v11, :cond_6

    :cond_5
    if-eq v7, v6, :cond_6

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_6
    return v2

    :cond_7
    :goto_2
    return v4
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    invoke-direct {p0, p1}, Landroidx/collection/SieveCache;->findKeyIndex(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 682
    iget-object p1, p0, Landroidx/collection/SieveCache;->nodes:[J

    aget-wide v1, p1, v0

    const-wide v3, 0x3fffffffffffffffL    # 1.9999999999999998

    and-long/2addr v1, v3

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    or-long/2addr v1, v3

    aput-wide v1, p1, v0

    .line 228
    iget-object p0, p0, Landroidx/collection/SieveCache;->values:[Ljava/lang/Object;

    aget-object p0, p0, v0

    return-object p0

    .line 231
    :cond_0
    iget-object v0, p0, Landroidx/collection/SieveCache;->createValueFromKey:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 232
    :cond_1
    invoke-virtual {p0, p1, v0}, Landroidx/collection/SieveCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final getCount()I
    .locals 0

    .line 160
    iget p0, p0, Landroidx/collection/SieveCache;->_count:I

    return p0
.end method

.method public final getSize()I
    .locals 0

    .line 142
    iget p0, p0, Landroidx/collection/SieveCache;->_size:I

    return p0
.end method

.method public hashCode()I
    .locals 15

    .line 546
    iget-object v0, p0, Landroidx/collection/SieveCache;->keys:[Ljava/lang/Object;

    .line 547
    iget-object v1, p0, Landroidx/collection/SieveCache;->values:[Ljava/lang/Object;

    .line 1020
    iget-object p0, p0, Landroidx/collection/SieveCache;->metadata:[J

    .line 1021
    array-length v2, p0

    add-int/lit8 v2, v2, -0x2

    const/4 v3, 0x0

    if-ltz v2, :cond_4

    move v4, v3

    move v5, v4

    .line 1024
    :goto_0
    aget-wide v6, p0, v4

    not-long v8, v6

    const/4 v10, 0x7

    shl-long/2addr v8, v10

    and-long/2addr v8, v6

    const-wide v10, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v8, v10

    cmp-long v8, v8, v10

    if-eqz v8, :cond_2

    sub-int v8, v4, v2

    not-int v8, v8

    ushr-int/lit8 v8, v8, 0x1f

    const/16 v9, 0x8

    rsub-int/lit8 v8, v8, 0x8

    move v10, v3

    :goto_1
    if-ge v10, v8, :cond_1

    const-wide/16 v11, 0xff

    and-long/2addr v11, v6

    const-wide/16 v13, 0x80

    cmp-long v11, v11, v13

    if-gez v11, :cond_0

    shl-int/lit8 v11, v4, 0x3

    add-int/2addr v11, v10

    .line 549
    aget-object v12, v0, v11

    const-string v13, "null cannot be cast to non-null type K of androidx.collection.SieveCache.forEach$lambda$10"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    aget-object v11, v1, v11

    const-string v13, "null cannot be cast to non-null type V of androidx.collection.SieveCache.forEach$lambda$10"

    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1050
    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    move-result v12

    invoke-virtual {v11}, Ljava/lang/Object;->hashCode()I

    move-result v11

    xor-int/2addr v11, v12

    add-int/2addr v5, v11

    :cond_0
    shr-long/2addr v6, v9

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    if-ne v8, v9, :cond_5

    :cond_2
    if-eq v4, v2, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    move v3, v5

    :cond_4
    move v5, v3

    :cond_5
    return v5
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    invoke-direct {p0, p1}, Landroidx/collection/SieveCache;->findInsertIndex(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    not-int v0, v0

    .line 268
    :cond_0
    iget-object v1, p0, Landroidx/collection/SieveCache;->values:[Ljava/lang/Object;

    aget-object v2, v1, v0

    .line 270
    aput-object p2, v1, v0

    .line 271
    iget-object v1, p0, Landroidx/collection/SieveCache;->keys:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 273
    iget v1, p0, Landroidx/collection/SieveCache;->_size:I

    iget-object v3, p0, Landroidx/collection/SieveCache;->sizeOf:Lkotlin/jvm/functions/Function2;

    invoke-interface {v3, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    add-int/2addr v1, v3

    iput v1, p0, Landroidx/collection/SieveCache;->_size:I

    if-eqz v2, :cond_1

    .line 276
    iget-object v0, p0, Landroidx/collection/SieveCache;->sizeOf:Lkotlin/jvm/functions/Function2;

    invoke-interface {v0, p1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    sub-int/2addr v1, v0

    iput v1, p0, Landroidx/collection/SieveCache;->_size:I

    .line 277
    iget-object v0, p0, Landroidx/collection/SieveCache;->onEntryRemoved:Lkotlin/jvm/functions/Function4;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, p1, v2, p2, v1}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    iget p1, p0, Landroidx/collection/SieveCache;->_maxSize:I

    invoke-virtual {p0, p1}, Landroidx/collection/SieveCache;->trimToSize(I)V

    return-object v2

    .line 284
    :cond_1
    iget p1, p0, Landroidx/collection/SieveCache;->_maxSize:I

    invoke-virtual {p0, p1}, Landroidx/collection/SieveCache;->trimToSize(I)V

    .line 631
    iget-object p1, p0, Landroidx/collection/SieveCache;->nodes:[J

    iget p2, p0, Landroidx/collection/SieveCache;->head:I

    int-to-long v3, p2

    const-wide/32 v5, 0x7fffffff

    and-long/2addr v3, v5

    const-wide v7, 0x3fffffff80000000L    # 1.9999995231628418

    or-long/2addr v3, v7

    .line 1106
    aput-wide v3, p1, v0

    const v1, 0x7fffffff

    if-eq p2, v1, :cond_2

    .line 634
    aget-wide v3, p1, p2

    const-wide v7, -0x3fffffff80000001L    # -2.000000953674316

    and-long/2addr v3, v7

    int-to-long v7, v0

    and-long/2addr v5, v7

    const/16 v7, 0x1f

    shl-long/2addr v5, v7

    or-long/2addr v3, v5

    .line 1109
    aput-wide v3, p1, p2

    .line 636
    :cond_2
    iput v0, p0, Landroidx/collection/SieveCache;->head:I

    .line 638
    iget p1, p0, Landroidx/collection/SieveCache;->tail:I

    if-ne p1, v1, :cond_3

    .line 639
    iput v0, p0, Landroidx/collection/SieveCache;->tail:I

    :cond_3
    return-object v2
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 411
    invoke-direct {p0, p1}, Landroidx/collection/SieveCache;->findKeyIndex(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    .line 414
    invoke-direct {p0, v0}, Landroidx/collection/SieveCache;->removeValueAt(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    .line 415
    :cond_0
    iget v2, p0, Landroidx/collection/SieveCache;->_size:I

    iget-object v3, p0, Landroidx/collection/SieveCache;->sizeOf:Lkotlin/jvm/functions/Function2;

    invoke-interface {v3, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Landroidx/collection/SieveCache;->_size:I

    .line 416
    iget-object p0, p0, Landroidx/collection/SieveCache;->onEntryRemoved:Lkotlin/jvm/functions/Function4;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p1, v0, v1, v2}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_1
    return-object v1
.end method

.method public final resizeStorage$collection(I)V
    .locals 25

    move-object/from16 v0, p0

    .line 955
    iget-object v1, v0, Landroidx/collection/SieveCache;->metadata:[J

    .line 956
    iget-object v2, v0, Landroidx/collection/SieveCache;->keys:[Ljava/lang/Object;

    .line 957
    iget-object v3, v0, Landroidx/collection/SieveCache;->values:[Ljava/lang/Object;

    .line 958
    iget-object v4, v0, Landroidx/collection/SieveCache;->nodes:[J

    .line 959
    iget v5, v0, Landroidx/collection/SieveCache;->_capacity:I

    .line 964
    new-array v6, v5, [I

    .line 966
    invoke-direct/range {p0 .. p1}, Landroidx/collection/SieveCache;->initializeStorage(I)V

    .line 968
    iget-object v7, v0, Landroidx/collection/SieveCache;->metadata:[J

    .line 969
    iget-object v8, v0, Landroidx/collection/SieveCache;->keys:[Ljava/lang/Object;

    .line 970
    iget-object v9, v0, Landroidx/collection/SieveCache;->values:[Ljava/lang/Object;

    .line 971
    iget-object v10, v0, Landroidx/collection/SieveCache;->nodes:[J

    .line 972
    iget v11, v0, Landroidx/collection/SieveCache;->_capacity:I

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v5, :cond_2

    shr-int/lit8 v14, v13, 0x3

    .line 1229
    aget-wide v14, v1, v14

    and-int/lit8 v16, v13, 0x7

    shl-int/lit8 v16, v16, 0x3

    shr-long v14, v14, v16

    const-wide/16 v16, 0xff

    and-long v14, v14, v16

    const-wide/16 v18, 0x80

    cmp-long v14, v14, v18

    if-gez v14, :cond_1

    .line 976
    aget-object v14, v2, v13

    if-eqz v14, :cond_0

    .line 1174
    invoke-virtual {v14}, Ljava/lang/Object;->hashCode()I

    move-result v15

    goto :goto_1

    :cond_0
    const/4 v15, 0x0

    :goto_1
    const v18, -0x3361d2af    # -8.2930312E7f

    mul-int v15, v15, v18

    shl-int/lit8 v18, v15, 0x10

    xor-int v15, v15, v18

    ushr-int/lit8 v12, v15, 0x7

    .line 978
    invoke-direct {v0, v12}, Landroidx/collection/SieveCache;->findFirstAvailableSlot(I)I

    move-result v12

    and-int/lit8 v15, v15, 0x7f

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    int-to-long v1, v15

    shr-int/lit8 v15, v12, 0x3

    and-int/lit8 v20, v12, 0x7

    shl-int/lit8 v20, v20, 0x3

    .line 1267
    aget-wide v21, v7, v15

    move/from16 v23, v5

    move-object/from16 v24, v6

    shl-long v5, v16, v20

    not-long v5, v5

    and-long v5, v21, v5

    shl-long v1, v1, v20

    or-long/2addr v1, v5

    aput-wide v1, v7, v15

    add-int/lit8 v5, v12, -0x7

    and-int/2addr v5, v11

    and-int/lit8 v6, v11, 0x7

    add-int/2addr v5, v6

    shr-int/lit8 v5, v5, 0x3

    .line 1252
    aput-wide v1, v7, v5

    .line 981
    aput-object v14, v8, v12

    .line 982
    aget-object v1, v3, v13

    aput-object v1, v9, v12

    .line 983
    aget-wide v1, v4, v13

    aput-wide v1, v10, v12

    .line 985
    aput v12, v24, v13

    goto :goto_2

    :cond_1
    move-object/from16 v18, v1

    move-object/from16 v19, v2

    move/from16 v23, v5

    move-object/from16 v24, v6

    :goto_2
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v5, v23

    move-object/from16 v6, v24

    goto :goto_0

    :cond_2
    move-object v1, v6

    .line 989
    invoke-direct {v0, v1}, Landroidx/collection/SieveCache;->fixupNodes([I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1086
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SieveCache[maxSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/collection/SieveCache;->_maxSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/collection/SieveCache;->_size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", capacity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/collection/SieveCache;->_capacity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/collection/SieveCache;->_count:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final trimToSize(I)V
    .locals 5

    .line 521
    :goto_0
    iget v0, p0, Landroidx/collection/SieveCache;->_size:I

    if-le v0, p1, :cond_3

    invoke-virtual {p0}, Landroidx/collection/SieveCache;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 525
    :cond_0
    invoke-direct {p0}, Landroidx/collection/SieveCache;->findEvictionCandidate()I

    move-result v0

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1

    return-void

    .line 528
    :cond_1
    iget-object v1, p0, Landroidx/collection/SieveCache;->keys:[Ljava/lang/Object;

    aget-object v1, v1, v0

    const-string v2, "null cannot be cast to non-null type K of androidx.collection.SieveCache"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 531
    invoke-direct {p0, v0}, Landroidx/collection/SieveCache;->removeValueAt(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 533
    :cond_2
    iget v2, p0, Landroidx/collection/SieveCache;->_size:I

    iget-object v3, p0, Landroidx/collection/SieveCache;->sizeOf:Lkotlin/jvm/functions/Function2;

    invoke-interface {v3, v1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Landroidx/collection/SieveCache;->_size:I

    .line 534
    iget-object v2, p0, Landroidx/collection/SieveCache;->onEntryRemoved:Lkotlin/jvm/functions/Function4;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v4, 0x0

    invoke-interface {v2, v1, v0, v4, v3}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method
