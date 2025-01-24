.class public abstract Landroidx/compose/animation/core/SpringEstimationKt;
.super Ljava/lang/Object;
.source "SpringEstimation.kt"


# direct methods
.method public static final estimateAnimationDurationMillis(DDDDD)J
    .locals 16

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double v0, v0, p2

    .line 66
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    mul-double v2, v0, v0

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    mul-double v4, v4, p0

    sub-double/2addr v2, v4

    const-wide/16 v4, 0x0

    cmpg-double v6, v2, v4

    if-gez v6, :cond_0

    move-wide v7, v4

    goto :goto_0

    .line 71
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    :goto_0
    if-gez v6, :cond_1

    .line 72
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    :cond_1
    neg-double v0, v0

    add-double v2, v0, v7

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v9

    mul-double/2addr v4, v9

    sub-double/2addr v0, v7

    mul-double v6, v0, v9

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    move-wide/from16 v12, p6

    move-wide/from16 v14, p8

    .line 78
    invoke-static/range {v2 .. v15}, Landroidx/compose/animation/core/SpringEstimationKt;->estimateDurationInternal(DDDDDDD)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final estimateAnimationDurationMillis(FFFFF)J
    .locals 10

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-nez v0, :cond_0

    const-wide p0, 0x8637bd05af6L

    return-wide p0

    :cond_0
    float-to-double v0, p0

    float-to-double v2, p1

    float-to-double v4, p2

    float-to-double v6, p3

    float-to-double v8, p4

    .line 48
    invoke-static/range {v0 .. v9}, Landroidx/compose/animation/core/SpringEstimationKt;->estimateAnimationDurationMillis(DDDDD)J

    move-result-wide p0

    return-wide p0
.end method

.method private static final estimateCriticallyDamped(DDDD)D
    .locals 20

    move-wide/from16 v0, p6

    mul-double v2, p0, p2

    sub-double v4, p4, v2

    div-double v6, v0, p2

    .line 159
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    div-double v6, v6, p0

    div-double v8, v0, v4

    .line 163
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    const/4 v10, 0x0

    move-wide v12, v8

    move v11, v10

    :goto_0
    const/4 v14, 0x6

    if-ge v11, v14, :cond_0

    div-double v12, v12, p0

    .line 166
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->log(D)D

    move-result-wide v12

    sub-double v12, v8, v12

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    div-double v12, v12, p0

    .line 142
    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v8

    const-wide v14, 0x7fffffffffffffffL

    and-long/2addr v8, v14

    const-wide/high16 v16, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmp-long v8, v8, v16

    const/4 v9, 0x1

    if-gez v8, :cond_1

    move v8, v9

    goto :goto_1

    :cond_1
    move v8, v10

    :goto_1
    if-nez v8, :cond_2

    move-wide v6, v12

    goto :goto_3

    .line 142
    :cond_2
    invoke-static {v12, v13}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v18

    and-long v14, v18, v14

    cmp-long v8, v14, v16

    if-gez v8, :cond_3

    move v8, v9

    goto :goto_2

    :cond_3
    move v8, v10

    :goto_2
    if-nez v8, :cond_4

    goto :goto_3

    .line 174
    :cond_4
    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    :goto_3
    add-double v11, v2, v4

    neg-double v11, v11

    mul-double v13, p0, v4

    div-double/2addr v11, v13

    mul-double v13, p0, v11

    .line 179
    invoke-static {v13, v14}, Ljava/lang/Math;->exp(D)D

    move-result-wide v15

    mul-double v15, v15, p2

    mul-double v17, v4, v11

    invoke-static {v13, v14}, Ljava/lang/Math;->exp(D)D

    move-result-wide v13

    mul-double v17, v17, v13

    add-double v13, v15, v17

    .line 184
    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    if-nez v8, :cond_6

    const-wide/16 v15, 0x0

    cmpg-double v8, v11, v15

    if-gtz v8, :cond_5

    goto :goto_4

    :cond_5
    cmpl-double v8, v11, v15

    if-lez v8, :cond_7

    neg-double v11, v13

    cmpg-double v8, v11, v0

    if-gez v8, :cond_7

    cmpg-double v8, v4, v15

    if-gez v8, :cond_6

    cmpl-double v8, p2, v15

    if-lez v8, :cond_6

    move-wide v6, v15

    :cond_6
    :goto_4
    neg-double v0, v0

    goto :goto_5

    :cond_7
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double v6, v6, p0

    neg-double v6, v6

    div-double v11, p2, v4

    sub-double/2addr v6, v11

    :goto_5
    const-wide v11, 0x7fefffffffffffffL    # Double.MAX_VALUE

    :goto_6
    const-wide v13, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v8, v11, v13

    if-lez v8, :cond_8

    const/16 v8, 0x64

    if-ge v10, v8, :cond_8

    add-int/lit8 v10, v10, 0x1

    mul-double v11, v4, v6

    add-double v11, p2, v11

    mul-double v13, p0, v6

    .line 215
    invoke-static {v13, v14}, Ljava/lang/Math;->exp(D)D

    move-result-wide v15

    mul-double/2addr v11, v15

    add-double/2addr v11, v0

    move-wide/from16 p4, v0

    int-to-double v0, v9

    add-double/2addr v0, v13

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    .line 216
    invoke-static {v13, v14}, Ljava/lang/Math;->exp(D)D

    move-result-wide v13

    mul-double/2addr v0, v13

    div-double/2addr v11, v0

    sub-double v0, v6, v11

    sub-double/2addr v6, v0

    .line 218
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    move-wide v6, v0

    move-wide/from16 v0, p4

    goto :goto_6

    :cond_8
    return-wide v6
.end method

.method private static final estimateDurationInternal(DDDDDDD)J
    .locals 12

    move-wide/from16 v0, p8

    const-wide/16 v2, 0x0

    cmpg-double v4, p10, v2

    if-nez v4, :cond_0

    cmpg-double v2, v0, v2

    if-nez v2, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    if-gez v4, :cond_1

    neg-double v0, v0

    .line 321
    :cond_1
    invoke-static/range {p10 .. p11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, p6, v2

    if-lez v4, :cond_2

    move-wide v2, p0

    move-wide/from16 v4, p4

    move-wide v8, v0

    move-wide/from16 v10, p12

    .line 325
    invoke-static/range {v2 .. v11}, Landroidx/compose/animation/core/SpringEstimationKt;->estimateOverDamped(DDDDD)D

    move-result-wide v0

    goto :goto_0

    :cond_2
    cmpg-double v2, p6, v2

    if-gez v2, :cond_3

    move-wide v2, p0

    move-wide v4, p2

    move-wide v8, v0

    move-wide/from16 v10, p12

    .line 327
    invoke-static/range {v2 .. v11}, Landroidx/compose/animation/core/SpringEstimationKt;->estimateUnderDamped(DDDDD)D

    move-result-wide v0

    goto :goto_0

    :cond_3
    move-wide p2, v6

    move-wide/from16 p4, v0

    move-wide/from16 p6, p12

    .line 334
    invoke-static/range {p0 .. p7}, Landroidx/compose/animation/core/SpringEstimationKt;->estimateCriticallyDamped(DDDD)D

    move-result-wide v0

    :goto_0
    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method

.method private static final estimateOverDamped(DDDDD)D
    .locals 25

    move-wide/from16 v10, p8

    mul-double v0, p0, p4

    sub-double v0, v0, p6

    sub-double v12, p0, p2

    div-double v14, v0, v12

    sub-double v16, p4, v14

    div-double v0, v10, v16

    .line 242
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    div-double v0, v0, p0

    div-double v2, v10, v14

    .line 243
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double v2, v2, p2

    .line 142
    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v4

    const-wide v6, 0x7fffffffffffffffL

    and-long/2addr v4, v6

    const-wide/high16 v8, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmp-long v4, v4, v8

    const/16 v18, 0x0

    const/4 v5, 0x1

    if-gez v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move/from16 v4, v18

    :goto_0
    if-nez v4, :cond_1

    move-wide/from16 v19, v2

    goto :goto_3

    .line 142
    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v19

    and-long v6, v19, v6

    cmp-long v4, v6, v8

    if-gez v4, :cond_2

    goto :goto_1

    :cond_2
    move/from16 v5, v18

    :goto_1
    if-nez v5, :cond_3

    :goto_2
    move-wide/from16 v19, v0

    goto :goto_3

    .line 249
    :cond_3
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    goto :goto_2

    :goto_3
    mul-double v21, v16, p0

    neg-double v0, v14

    mul-double v0, v0, p2

    div-double v0, v21, v0

    .line 253
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sub-double v2, p2, p0

    div-double v4, v0, v2

    .line 259
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_5

    const-wide/16 v23, 0x0

    cmpg-double v0, v4, v23

    if-gtz v0, :cond_4

    goto :goto_4

    :cond_4
    cmpl-double v0, v4, v23

    if-lez v0, :cond_6

    move-wide/from16 v0, v16

    move-wide/from16 v2, p0

    move-wide v6, v14

    move-wide/from16 v8, p2

    .line 261
    invoke-static/range {v0 .. v9}, Landroidx/compose/animation/core/SpringEstimationKt;->estimateOverDamped$xInflection(DDDDD)D

    move-result-wide v0

    neg-double v0, v0

    cmpg-double v0, v0, v10

    if-gez v0, :cond_6

    cmpl-double v0, v14, v23

    if-lez v0, :cond_5

    cmpg-double v0, v16, v23

    if-gez v0, :cond_5

    move-wide/from16 v19, v23

    :cond_5
    :goto_4
    neg-double v0, v10

    goto :goto_5

    :cond_6
    mul-double v0, v14, p2

    mul-double v0, v0, p2

    neg-double v0, v0

    mul-double v2, v21, p0

    div-double/2addr v0, v2

    .line 277
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    div-double v19, v0, v12

    move-wide v0, v10

    :goto_5
    mul-double v2, p0, v19

    .line 283
    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    mul-double v2, v2, v21

    mul-double v4, v14, p2

    mul-double v6, p2, v19

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    mul-double/2addr v6, v4

    add-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v6, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v2, v2, v6

    if-gez v2, :cond_7

    return-wide v19

    :cond_7
    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move/from16 v6, v18

    :goto_6
    const-wide v7, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v2, v2, v7

    if-lez v2, :cond_8

    const/16 v2, 0x64

    if-ge v6, v2, :cond_8

    add-int/lit8 v6, v6, 0x1

    mul-double v2, p0, v19

    .line 296
    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v7

    mul-double v7, v7, v16

    mul-double v9, p2, v19

    invoke-static {v9, v10}, Ljava/lang/Math;->exp(D)D

    move-result-wide v11

    mul-double/2addr v11, v14

    add-double/2addr v7, v11

    add-double/2addr v7, v0

    .line 297
    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    mul-double v2, v2, v21

    invoke-static {v9, v10}, Ljava/lang/Math;->exp(D)D

    move-result-wide v9

    mul-double/2addr v9, v4

    add-double/2addr v2, v9

    div-double/2addr v7, v2

    sub-double v2, v19, v7

    sub-double v19, v19, v2

    .line 299
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    move-wide/from16 v19, v2

    move-wide v2, v7

    goto :goto_6

    :cond_8
    return-wide v19
.end method

.method private static final estimateOverDamped$xInflection(DDDDD)D
    .locals 0

    mul-double/2addr p2, p4

    .line 254
    invoke-static {p2, p3}, Ljava/lang/Math;->exp(D)D

    move-result-wide p2

    mul-double/2addr p0, p2

    mul-double/2addr p8, p4

    invoke-static {p8, p9}, Ljava/lang/Math;->exp(D)D

    move-result-wide p2

    mul-double/2addr p6, p2

    add-double/2addr p0, p6

    return-wide p0
.end method

.method private static final estimateUnderDamped(DDDDD)D
    .locals 2

    mul-double v0, p0, p4

    sub-double/2addr p6, v0

    div-double/2addr p6, p2

    mul-double/2addr p4, p4

    mul-double/2addr p6, p6

    add-double/2addr p4, p6

    .line 138
    invoke-static {p4, p5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p2

    div-double/2addr p8, p2

    .line 140
    invoke-static {p8, p9}, Ljava/lang/Math;->log(D)D

    move-result-wide p2

    div-double/2addr p2, p0

    return-wide p2
.end method
