.class public abstract Landroidx/compose/ui/graphics/BezierKt;
.super Ljava/lang/Object;
.source "Bezier.kt"


# direct methods
.method public static final synthetic access$writeValidRootInUnitRange(F[FI)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/graphics/BezierKt;->writeValidRootInUnitRange(F[FI)I

    move-result p0

    return p0
.end method

.method public static final computeCubicVerticalBounds(FFFF[FI)J
    .locals 5

    sub-float v0, p1, p0

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v0, v1

    sub-float v2, p2, p1

    mul-float/2addr v2, v1

    sub-float v3, p3, p2

    mul-float/2addr v3, v1

    .line 434
    invoke-static {v0, v2, v3, p4, p5}, Landroidx/compose/ui/graphics/BezierKt;->findQuadraticRoots(FFF[FI)I

    move-result v1

    sub-float v0, v2, v0

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v0, v4

    sub-float/2addr v3, v2

    mul-float/2addr v3, v4

    add-int/2addr p5, v1

    neg-float v2, v0

    sub-float/2addr v3, v0

    div-float/2addr v2, v3

    .line 273
    invoke-static {v2, p4, p5}, Landroidx/compose/ui/graphics/BezierKt;->access$writeValidRootInUnitRange(F[FI)I

    move-result p5

    add-int/2addr v1, p5

    .line 441
    invoke-static {p0, p3}, Ljava/lang/Math;->min(FF)F

    move-result p5

    .line 442
    invoke-static {p0, p3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 445
    aget v3, p4, v2

    .line 446
    invoke-static {p0, p1, p2, p3, v3}, Landroidx/compose/ui/graphics/BezierKt;->evaluateCubic(FFFFF)F

    move-result v3

    .line 447
    invoke-static {p5, v3}, Ljava/lang/Math;->min(FF)F

    move-result p5

    .line 448
    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 451
    :cond_0
    invoke-static {p5, v0}, Landroidx/collection/FloatFloatPair;->constructor-impl(FF)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final evaluateCubic(FFF)F
    .locals 2

    .line 0
    const v0, 0x3eaaaaab

    sub-float v1, p0, p1

    add-float/2addr v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, p0

    sub-float/2addr p1, v0

    mul-float/2addr v1, p2

    add-float/2addr v1, p1

    mul-float/2addr v1, p2

    add-float/2addr v1, p0

    const/high16 p0, 0x40400000    # 3.0f

    mul-float/2addr v1, p0

    mul-float/2addr v1, p2

    return v1
.end method

.method private static final evaluateCubic(FFFFF)F
    .locals 2

    .line 0
    sub-float v0, p1, p2

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v0, v1

    add-float/2addr p3, v0

    sub-float/2addr p3, p0

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, p1

    sub-float/2addr p2, v0

    add-float/2addr p2, p0

    mul-float/2addr p2, v1

    sub-float/2addr p1, p0

    mul-float/2addr p1, v1

    mul-float/2addr p3, p4

    add-float/2addr p3, p2

    mul-float/2addr p3, p4

    add-float/2addr p3, p1

    mul-float/2addr p3, p4

    add-float/2addr p3, p0

    return p3
.end method

.method public static final findFirstCubicRoot(FFFF)F
    .locals 21

    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    float-to-double v3, v0

    float-to-double v5, v1

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    mul-double/2addr v5, v7

    sub-double v5, v3, v5

    float-to-double v9, v2

    add-double/2addr v5, v9

    const-wide/high16 v9, 0x4008000000000000L    # 3.0

    mul-double/2addr v5, v9

    sub-float v11, v1, v0

    float-to-double v11, v11

    mul-double/2addr v11, v9

    neg-float v0, v0

    float-to-double v13, v0

    sub-float v0, v1, v2

    float-to-double v0, v0

    mul-double/2addr v0, v9

    add-double/2addr v13, v0

    move/from16 v0, p3

    float-to-double v0, v0

    add-double/2addr v13, v0

    const-wide/16 v0, 0x0

    sub-double v15, v13, v0

    .line 454
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(D)D

    move-result-wide v15

    const-wide v17, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpg-double v2, v15, v17

    const v15, 0x358637bd    # 1.0E-6f

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    const/high16 v20, 0x7fc00000    # Float.NaN

    if-gez v2, :cond_c

    sub-double v9, v5, v0

    .line 454
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    cmpg-double v2, v9, v17

    if-gez v2, :cond_4

    sub-double v0, v11, v0

    .line 454
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v0, v0, v17

    if-gez v0, :cond_0

    return v20

    :cond_0
    neg-double v0, v3

    div-double/2addr v0, v11

    double-to-float v0, v0

    cmpg-float v1, v0, v19

    if-gez v1, :cond_1

    goto :goto_0

    :cond_1
    move/from16 v19, v0

    :goto_0
    cmpl-float v1, v19, v16

    if-lez v1, :cond_2

    goto :goto_1

    :cond_2
    move/from16 v16, v19

    :goto_1
    sub-float v0, v16, v0

    .line 473
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v15

    if-lez v0, :cond_3

    goto :goto_2

    :cond_3
    move/from16 v20, v16

    :goto_2
    return v20

    :cond_4
    mul-double v0, v11, v11

    const-wide/high16 v9, 0x4010000000000000L    # 4.0

    mul-double/2addr v9, v5

    mul-double/2addr v9, v3

    sub-double/2addr v0, v9

    .line 217
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    mul-double/2addr v5, v7

    sub-double v2, v0, v11

    div-double/2addr v2, v5

    double-to-float v2, v2

    cmpg-float v3, v2, v19

    if-gez v3, :cond_5

    move/from16 v3, v19

    goto :goto_3

    :cond_5
    move v3, v2

    :goto_3
    cmpl-float v4, v3, v16

    if-lez v4, :cond_6

    move/from16 v3, v16

    :cond_6
    sub-float v2, v3, v2

    .line 473
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v15

    if-lez v2, :cond_7

    move/from16 v3, v20

    .line 221
    :cond_7
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_8

    return v3

    :cond_8
    neg-double v2, v11

    sub-double/2addr v2, v0

    div-double/2addr v2, v5

    double-to-float v0, v2

    cmpg-float v1, v0, v19

    if-gez v1, :cond_9

    goto :goto_4

    :cond_9
    move/from16 v19, v0

    :goto_4
    cmpl-float v1, v19, v16

    if-lez v1, :cond_a

    goto :goto_5

    :cond_a
    move/from16 v16, v19

    :goto_5
    sub-float v0, v16, v0

    .line 473
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v15

    if-lez v0, :cond_b

    goto :goto_6

    :cond_b
    move/from16 v20, v16

    :goto_6
    return v20

    :cond_c
    div-double/2addr v5, v13

    div-double/2addr v11, v13

    div-double/2addr v3, v13

    mul-double v13, v11, v9

    mul-double v17, v5, v5

    sub-double v13, v13, v17

    const-wide/high16 v17, 0x4022000000000000L    # 9.0

    div-double v13, v13, v17

    mul-double/2addr v7, v5

    mul-double/2addr v7, v5

    mul-double/2addr v7, v5

    mul-double v17, v17, v5

    mul-double v17, v17, v11

    sub-double v7, v7, v17

    const-wide/high16 v11, 0x403b000000000000L    # 27.0

    mul-double/2addr v3, v11

    add-double/2addr v7, v3

    const-wide/high16 v2, 0x404b000000000000L    # 54.0

    div-double/2addr v7, v2

    mul-double v2, v7, v7

    mul-double v11, v13, v13

    mul-double/2addr v11, v13

    add-double/2addr v2, v11

    div-double/2addr v5, v9

    cmpg-double v0, v2, v0

    const/high16 v1, 0x40000000    # 2.0f

    if-gez v0, :cond_1a

    neg-double v2, v11

    .line 238
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    neg-double v7, v7

    div-double/2addr v7, v2

    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    cmpg-double v0, v7, v11

    if-gez v0, :cond_d

    move-wide v7, v11

    :cond_d
    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v7, v11

    if-lez v0, :cond_e

    move-wide v7, v11

    .line 241
    :cond_e
    invoke-static {v7, v8}, Ljava/lang/Math;->acos(D)D

    move-result-wide v7

    double-to-float v0, v2

    .line 242
    invoke-static {v0}, Landroidx/compose/ui/util/MathHelpersKt;->fastCbrt(F)F

    move-result v0

    mul-float/2addr v0, v1

    float-to-double v0, v0

    div-double v2, v7, v9

    .line 244
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v2, v0

    sub-double/2addr v2, v5

    double-to-float v2, v2

    cmpg-float v3, v2, v19

    if-gez v3, :cond_f

    move/from16 v3, v19

    goto :goto_7

    :cond_f
    move v3, v2

    :goto_7
    cmpl-float v4, v3, v16

    if-lez v4, :cond_10

    move/from16 v3, v16

    :cond_10
    sub-float v2, v3, v2

    .line 473
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v15

    if-lez v2, :cond_11

    move/from16 v3, v20

    .line 245
    :cond_11
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_12

    return v3

    :cond_12
    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    add-double/2addr v2, v7

    div-double/2addr v2, v9

    .line 247
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v2, v0

    sub-double/2addr v2, v5

    double-to-float v2, v2

    cmpg-float v3, v2, v19

    if-gez v3, :cond_13

    move/from16 v3, v19

    goto :goto_8

    :cond_13
    move v3, v2

    :goto_8
    cmpl-float v4, v3, v16

    if-lez v4, :cond_14

    move/from16 v3, v16

    :cond_14
    sub-float v2, v3, v2

    .line 473
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v15

    if-lez v2, :cond_15

    move/from16 v3, v20

    .line 248
    :cond_15
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_16

    return v3

    :cond_16
    const-wide v2, 0x402921fb54442d18L    # 12.566370614359172

    add-double/2addr v7, v2

    div-double/2addr v7, v9

    .line 250
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    sub-double/2addr v0, v5

    double-to-float v0, v0

    cmpg-float v1, v0, v19

    if-gez v1, :cond_17

    goto :goto_9

    :cond_17
    move/from16 v19, v0

    :goto_9
    cmpl-float v1, v19, v16

    if-lez v1, :cond_18

    goto :goto_a

    :cond_18
    move/from16 v16, v19

    :goto_a
    sub-float v0, v16, v0

    .line 473
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v15

    if-lez v0, :cond_19

    goto :goto_b

    :cond_19
    move/from16 v20, v16

    :goto_b
    return v20

    :cond_1a
    if-nez v0, :cond_22

    double-to-float v0, v7

    .line 252
    invoke-static {v0}, Landroidx/compose/ui/util/MathHelpersKt;->fastCbrt(F)F

    move-result v0

    neg-float v0, v0

    mul-float/2addr v1, v0

    double-to-float v2, v5

    sub-float/2addr v1, v2

    cmpg-float v3, v1, v19

    if-gez v3, :cond_1b

    move/from16 v3, v19

    goto :goto_c

    :cond_1b
    move v3, v1

    :goto_c
    cmpl-float v4, v3, v16

    if-lez v4, :cond_1c

    move/from16 v3, v16

    :cond_1c
    sub-float v1, v3, v1

    .line 473
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v15

    if-lez v1, :cond_1d

    move/from16 v3, v20

    .line 255
    :cond_1d
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_1e

    return v3

    :cond_1e
    neg-float v0, v0

    sub-float/2addr v0, v2

    cmpg-float v1, v0, v19

    if-gez v1, :cond_1f

    goto :goto_d

    :cond_1f
    move/from16 v19, v0

    :goto_d
    cmpl-float v1, v19, v16

    if-lez v1, :cond_20

    goto :goto_e

    :cond_20
    move/from16 v16, v19

    :goto_e
    sub-float v0, v16, v0

    .line 473
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v15

    if-lez v0, :cond_21

    goto :goto_f

    :cond_21
    move/from16 v20, v16

    :goto_f
    return v20

    .line 260
    :cond_22
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    neg-double v2, v7

    add-double/2addr v2, v0

    double-to-float v2, v2

    .line 261
    invoke-static {v2}, Landroidx/compose/ui/util/MathHelpersKt;->fastCbrt(F)F

    move-result v2

    add-double/2addr v7, v0

    double-to-float v0, v7

    .line 262
    invoke-static {v0}, Landroidx/compose/ui/util/MathHelpersKt;->fastCbrt(F)F

    move-result v0

    sub-float/2addr v2, v0

    float-to-double v0, v2

    sub-double/2addr v0, v5

    double-to-float v0, v0

    cmpg-float v1, v0, v19

    if-gez v1, :cond_23

    goto :goto_10

    :cond_23
    move/from16 v19, v0

    :goto_10
    cmpl-float v1, v19, v16

    if-lez v1, :cond_24

    goto :goto_11

    :cond_24
    move/from16 v16, v19

    :goto_11
    sub-float v0, v16, v0

    .line 473
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v15

    if-lez v0, :cond_25

    goto :goto_12

    :cond_25
    move/from16 v20, v16

    :goto_12
    return v20
.end method

.method private static final findQuadraticRoots(FFF[FI)I
    .locals 17

    move-object/from16 v0, p3

    move/from16 v1, p0

    move/from16 v2, p4

    float-to-double v3, v1

    move/from16 v1, p1

    float-to-double v5, v1

    move/from16 v1, p2

    float-to-double v7, v1

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    mul-double v11, v5, v9

    sub-double v13, v3, v11

    add-double/2addr v13, v7

    const-wide/16 v15, 0x0

    cmpg-double v1, v13, v15

    if-nez v1, :cond_1

    cmpg-double v1, v5, v7

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    sub-double v3, v11, v7

    mul-double/2addr v7, v9

    sub-double/2addr v11, v7

    div-double/2addr v3, v11

    double-to-float v1, v3

    .line 320
    invoke-static {v1, v0, v2}, Landroidx/compose/ui/graphics/BezierKt;->writeValidRootInUnitRange(F[FI)I

    move-result v0

    goto :goto_1

    :cond_1
    mul-double v9, v5, v5

    mul-double/2addr v7, v3

    sub-double/2addr v9, v7

    .line 300
    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    neg-double v7, v7

    neg-double v3, v3

    add-double/2addr v3, v5

    add-double v5, v7, v3

    neg-double v5, v5

    div-double/2addr v5, v13

    double-to-float v1, v5

    .line 303
    invoke-static {v1, v0, v2}, Landroidx/compose/ui/graphics/BezierKt;->writeValidRootInUnitRange(F[FI)I

    move-result v1

    sub-double/2addr v7, v3

    div-double/2addr v7, v13

    double-to-float v3, v7

    add-int v4, v2, v1

    .line 304
    invoke-static {v3, v0, v4}, Landroidx/compose/ui/graphics/BezierKt;->writeValidRootInUnitRange(F[FI)I

    move-result v3

    add-int/2addr v1, v3

    const/4 v3, 0x1

    if-le v1, v3, :cond_3

    .line 308
    aget v3, v0, v2

    add-int/lit8 v4, v2, 0x1

    .line 309
    aget v5, v0, v4

    cmpl-float v6, v3, v5

    if-lez v6, :cond_2

    .line 311
    aput v5, v0, v2

    .line 312
    aput v3, v0, v4

    goto :goto_0

    :cond_2
    cmpg-float v0, v3, v5

    if-nez v0, :cond_3

    add-int/lit8 v0, v1, -0x1

    goto :goto_1

    :cond_3
    :goto_0
    move v0, v1

    :goto_1
    return v0
.end method

.method private static final writeValidRootInUnitRange(F[FI)I
    .locals 3

    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, p0

    :goto_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    move v0, v1

    :cond_1
    sub-float p0, v0, p0

    .line 473
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const v1, 0x358637bd    # 1.0E-6f

    cmpl-float p0, p0, v1

    if-lez p0, :cond_2

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 484
    :cond_2
    aput v0, p1, p2

    .line 485
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
