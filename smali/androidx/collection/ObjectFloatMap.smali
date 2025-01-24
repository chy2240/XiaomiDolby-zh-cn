.class public abstract Landroidx/collection/ObjectFloatMap;
.super Ljava/lang/Object;
.source "ObjectFloatMap.kt"


# instance fields
.field public _capacity:I

.field public _size:I

.field public keys:[Ljava/lang/Object;

.field public metadata:[J

.field public values:[F


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    sget-object v0, Landroidx/collection/ScatterMapKt;->EmptyGroup:[J

    iput-object v0, p0, Landroidx/collection/ObjectFloatMap;->metadata:[J

    .line 250
    sget-object v0, Landroidx/collection/internal/ContainerHelpersKt;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v0, p0, Landroidx/collection/ObjectFloatMap;->keys:[Ljava/lang/Object;

    .line 252
    invoke-static {}, Landroidx/collection/FloatSetKt;->getEmptyFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Landroidx/collection/ObjectFloatMap;->values:[F

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/collection/ObjectFloatMap;-><init>()V

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    .line 400
    invoke-virtual {p0, p1}, Landroidx/collection/ObjectFloatMap;->findKeyIndex(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    if-ne v1, v0, :cond_0

    return v2

    .line 502
    :cond_0
    instance-of v3, v1, Landroidx/collection/ObjectFloatMap;

    const/4 v4, 0x0

    if-nez v3, :cond_1

    return v4

    .line 505
    :cond_1
    check-cast v1, Landroidx/collection/ObjectFloatMap;

    invoke-virtual {v1}, Landroidx/collection/ObjectFloatMap;->getSize()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroidx/collection/ObjectFloatMap;->getSize()I

    move-result v5

    if-eq v3, v5, :cond_2

    return v4

    .line 357
    :cond_2
    iget-object v3, v0, Landroidx/collection/ObjectFloatMap;->keys:[Ljava/lang/Object;

    .line 358
    iget-object v5, v0, Landroidx/collection/ObjectFloatMap;->values:[F

    .line 329
    iget-object v0, v0, Landroidx/collection/ObjectFloatMap;->metadata:[J

    .line 330
    array-length v6, v0

    add-int/lit8 v6, v6, -0x2

    if-ltz v6, :cond_7

    move v7, v4

    .line 333
    :goto_0
    aget-wide v8, v0, v7

    not-long v10, v8

    const/4 v12, 0x7

    shl-long/2addr v10, v12

    and-long/2addr v10, v8

    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v10, v12

    cmp-long v10, v10, v12

    if-eqz v10, :cond_6

    sub-int v10, v7, v6

    not-int v10, v10

    ushr-int/lit8 v10, v10, 0x1f

    const/16 v11, 0x8

    rsub-int/lit8 v10, v10, 0x8

    move v12, v4

    :goto_1
    if-ge v12, v10, :cond_5

    const-wide/16 v13, 0xff

    and-long/2addr v13, v8

    const-wide/16 v15, 0x80

    cmp-long v13, v13, v15

    if-gez v13, :cond_4

    shl-int/lit8 v13, v7, 0x3

    add-int/2addr v13, v12

    .line 360
    aget-object v14, v3, v13

    aget v13, v5, v13

    .line 512
    invoke-virtual {v1, v14}, Landroidx/collection/ObjectFloatMap;->get(Ljava/lang/Object;)F

    move-result v14

    cmpg-float v13, v13, v14

    if-nez v13, :cond_3

    goto :goto_2

    :cond_3
    return v4

    :cond_4
    :goto_2
    shr-long/2addr v8, v11

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_5
    if-ne v10, v11, :cond_7

    :cond_6
    if-eq v7, v6, :cond_7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_7
    return v2
.end method

.method public final findKeyIndex(Ljava/lang/Object;)I
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

    .line 554
    iget v3, p0, Landroidx/collection/ObjectFloatMap;->_capacity:I

    ushr-int/lit8 v1, v1, 0x7

    :goto_1
    and-int/2addr v1, v3

    .line 559
    iget-object v4, p0, Landroidx/collection/ObjectFloatMap;->metadata:[J

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

    .line 563
    iget-object v11, p0, Landroidx/collection/ObjectFloatMap;->keys:[Ljava/lang/Object;

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

.method public final get(Ljava/lang/Object;)F
    .locals 3

    .line 292
    invoke-virtual {p0, p1}, Landroidx/collection/ObjectFloatMap;->findKeyIndex(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    .line 294
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There is no key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " in the map"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/collection/internal/RuntimeHelpersKt;->throwNoSuchElementException(Ljava/lang/String;)V

    .line 296
    :cond_0
    iget-object p0, p0, Landroidx/collection/ObjectFloatMap;->values:[F

    aget p0, p0, v0

    return p0
.end method

.method public final getCapacity()I
    .locals 0

    .line 263
    iget p0, p0, Landroidx/collection/ObjectFloatMap;->_capacity:I

    return p0
.end method

.method public final getOrDefault(Ljava/lang/Object;F)F
    .locals 0

    .line 304
    invoke-virtual {p0, p1}, Landroidx/collection/ObjectFloatMap;->findKeyIndex(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 306
    iget-object p0, p0, Landroidx/collection/ObjectFloatMap;->values:[F

    aget p0, p0, p1

    return p0

    :cond_0
    return p2
.end method

.method public final getSize()I
    .locals 0

    .line 271
    iget p0, p0, Landroidx/collection/ObjectFloatMap;->_size:I

    return p0
.end method

.method public hashCode()I
    .locals 15

    .line 357
    iget-object v0, p0, Landroidx/collection/ObjectFloatMap;->keys:[Ljava/lang/Object;

    .line 358
    iget-object v1, p0, Landroidx/collection/ObjectFloatMap;->values:[F

    .line 329
    iget-object p0, p0, Landroidx/collection/ObjectFloatMap;->metadata:[J

    .line 330
    array-length v2, p0

    add-int/lit8 v2, v2, -0x2

    const/4 v3, 0x0

    if-ltz v2, :cond_5

    move v4, v3

    move v5, v4

    .line 333
    :goto_0
    aget-wide v6, p0, v4

    not-long v8, v6

    const/4 v10, 0x7

    shl-long/2addr v8, v10

    and-long/2addr v8, v6

    const-wide v10, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v8, v10

    cmp-long v8, v8, v10

    if-eqz v8, :cond_3

    sub-int v8, v4, v2

    not-int v8, v8

    ushr-int/lit8 v8, v8, 0x1f

    const/16 v9, 0x8

    rsub-int/lit8 v8, v8, 0x8

    move v10, v3

    :goto_1
    if-ge v10, v8, :cond_2

    const-wide/16 v11, 0xff

    and-long/2addr v11, v6

    const-wide/16 v13, 0x80

    cmp-long v11, v11, v13

    if-gez v11, :cond_1

    shl-int/lit8 v11, v4, 0x3

    add-int/2addr v11, v10

    .line 360
    aget-object v12, v0, v11

    aget v11, v1, v11

    if-eqz v12, :cond_0

    .line 485
    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    move-result v12

    goto :goto_2

    :cond_0
    move v12, v3

    :goto_2
    invoke-static {v11}, Ljava/lang/Float;->hashCode(F)I

    move-result v11

    xor-int/2addr v11, v12

    add-int/2addr v5, v11

    :cond_1
    shr-long/2addr v6, v9

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    if-ne v8, v9, :cond_6

    :cond_3
    if-eq v4, v2, :cond_4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    move v3, v5

    :cond_5
    move v5, v3

    :cond_6
    return v5
.end method

.method public final isEmpty()Z
    .locals 0

    .line 280
    iget p0, p0, Landroidx/collection/ObjectFloatMap;->_size:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p0

    .line 526
    invoke-virtual/range {p0 .. p0}, Landroidx/collection/ObjectFloatMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 527
    const-string v0, "{}"

    return-object v0

    .line 530
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 357
    iget-object v2, v0, Landroidx/collection/ObjectFloatMap;->keys:[Ljava/lang/Object;

    .line 358
    iget-object v3, v0, Landroidx/collection/ObjectFloatMap;->values:[F

    .line 329
    iget-object v4, v0, Landroidx/collection/ObjectFloatMap;->metadata:[J

    .line 330
    array-length v5, v4

    add-int/lit8 v5, v5, -0x2

    if-ltz v5, :cond_5

    const/4 v6, 0x0

    move v7, v6

    move v8, v7

    .line 333
    :goto_0
    aget-wide v9, v4, v7

    not-long v11, v9

    const/4 v13, 0x7

    shl-long/2addr v11, v13

    and-long/2addr v11, v9

    const-wide v13, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v11, v13

    cmp-long v11, v11, v13

    if-eqz v11, :cond_4

    sub-int v11, v7, v5

    not-int v11, v11

    ushr-int/lit8 v11, v11, 0x1f

    const/16 v12, 0x8

    rsub-int/lit8 v11, v11, 0x8

    move v13, v6

    :goto_1
    if-ge v13, v11, :cond_3

    const-wide/16 v14, 0xff

    and-long/2addr v14, v9

    const-wide/16 v16, 0x80

    cmp-long v14, v14, v16

    if-gez v14, :cond_2

    shl-int/lit8 v14, v7, 0x3

    add-int/2addr v14, v13

    .line 360
    aget-object v15, v2, v14

    aget v14, v3, v14

    if-ne v15, v0, :cond_1

    .line 533
    const-string v15, "(this)"

    :cond_1
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 534
    const-string v15, "="

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    .line 537
    iget v14, v0, Landroidx/collection/ObjectFloatMap;->_size:I

    if-ge v8, v14, :cond_2

    const/16 v14, 0x2c

    .line 538
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v14, 0x20

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    shr-long/2addr v9, v12

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_3
    if-ne v11, v12, :cond_5

    :cond_4
    if-eq v7, v5, :cond_5

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_5
    const/16 v0, 0x7d

    .line 542
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "s.append(\'}\').toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
