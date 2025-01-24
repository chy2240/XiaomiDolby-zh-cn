.class public abstract Landroidx/compose/ui/spatial/RectManagerKt;
.super Ljava/lang/Object;
.source "RectManager.kt"


# direct methods
.method public static final synthetic access$analyzeComponents-58bKbWc([F)I
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/spatial/RectManagerKt;->analyzeComponents-58bKbWc([F)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$isSet--gyyYBs(J)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/spatial/RectManagerKt;->isSet--gyyYBs(J)Z

    move-result p0

    return p0
.end method

.method private static final analyzeComponents-58bKbWc([F)I
    .locals 6

    .line 329
    array-length v0, p0

    const/16 v1, 0x10

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    .line 331
    :cond_0
    aget v0, p0, v2

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_1

    .line 332
    aget v0, p0, v3

    cmpg-float v0, v0, v4

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 333
    aget v0, p0, v0

    cmpg-float v0, v0, v4

    if-nez v0, :cond_1

    const/4 v0, 0x4

    .line 334
    aget v0, p0, v0

    cmpg-float v0, v0, v4

    if-nez v0, :cond_1

    const/4 v0, 0x5

    .line 335
    aget v0, p0, v0

    cmpg-float v0, v0, v1

    if-nez v0, :cond_1

    const/4 v0, 0x6

    .line 336
    aget v0, p0, v0

    cmpg-float v0, v0, v4

    if-nez v0, :cond_1

    const/16 v0, 0x8

    .line 337
    aget v0, p0, v0

    cmpg-float v0, v0, v4

    if-nez v0, :cond_1

    const/16 v0, 0x9

    .line 338
    aget v0, p0, v0

    cmpg-float v0, v0, v4

    if-nez v0, :cond_1

    const/16 v0, 0xa

    .line 339
    aget v0, p0, v0

    cmpg-float v0, v0, v1

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    const/16 v5, 0xc

    .line 342
    aget v5, p0, v5

    cmpg-float v5, v5, v4

    if-nez v5, :cond_2

    const/16 v5, 0xd

    aget v5, p0, v5

    cmpg-float v5, v5, v4

    if-nez v5, :cond_2

    const/16 v5, 0xe

    aget v5, p0, v5

    cmpg-float v4, v5, v4

    if-nez v4, :cond_2

    const/16 v4, 0xf

    aget p0, p0, v4

    cmpg-float p0, p0, v1

    if-nez p0, :cond_2

    move v2, v3

    :cond_2
    shl-int/lit8 p0, v0, 0x1

    or-int/2addr p0, v2

    return p0
.end method

.method private static final isSet--gyyYBs(J)Z
    .locals 2

    .line 312
    sget-object v0, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntOffset$Companion;->getMax-nOcc-ac()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/unit/IntOffset;->equals-impl0(JJ)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
