.class public final Landroidx/compose/animation/core/ArcSpline$Arc;
.super Ljava/lang/Object;
.source "ArcSpline.kt"


# instance fields
.field private arcDistance:F

.field private final arcVelocity:F

.field public final ellipseA:F

.field public final ellipseB:F

.field public final ellipseCenterX:F

.field public final ellipseCenterY:F

.field public final isLinear:Z

.field private final lut:[F

.field private final oneOverDeltaTime:F

.field private final time1:F

.field private final time2:F

.field private final vertical:F

.field private final x1:F

.field private final x2:F

.field private final y1:F

.field private final y2:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(IFFFFFF)V
    .locals 7

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput p2, p0, Landroidx/compose/animation/core/ArcSpline$Arc;->time1:F

    .line 196
    iput p3, p0, Landroidx/compose/animation/core/ArcSpline$Arc;->time2:F

    .line 197
    iput p4, p0, Landroidx/compose/animation/core/ArcSpline$Arc;->x1:F

    .line 198
    iput p5, p0, Landroidx/compose/animation/core/ArcSpline$Arc;->y1:F

    .line 199
    iput p6, p0, Landroidx/compose/animation/core/ArcSpline$Arc;->x2:F

    .line 200
    iput p7, p0, Landroidx/compose/animation/core/ArcSpline$Arc;->y2:F

    sub-float v0, p6, p4

    sub-float v1, p7, p5

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v3, :cond_2

    const/4 v4, 0x4

    const/4 v5, 0x0

    if-eq p1, v4, :cond_3

    const/4 v4, 0x5

    if-eq p1, v4, :cond_1

    :cond_0
    move v4, v2

    goto :goto_1

    :cond_1
    cmpg-float v4, v1, v5

    if-gez v4, :cond_0

    :cond_2
    :goto_0
    move v4, v3

    goto :goto_1

    :cond_3
    cmpl-float v4, v1, v5

    if-lez v4, :cond_0

    goto :goto_0

    :goto_1
    if-eqz v4, :cond_4

    const/high16 v5, -0x40800000    # -1.0f

    goto :goto_2

    :cond_4
    const/high16 v5, 0x3f800000    # 1.0f

    .line 237
    :goto_2
    iput v5, p0, Landroidx/compose/animation/core/ArcSpline$Arc;->vertical:F

    int-to-float v6, v3

    sub-float/2addr p3, p2

    div-float/2addr v6, p3

    .line 238
    iput v6, p0, Landroidx/compose/animation/core/ArcSpline$Arc;->oneOverDeltaTime:F

    const/16 p2, 0x65

    .line 239
    new-array p2, p2, [F

    iput-object p2, p0, Landroidx/compose/animation/core/ArcSpline$Arc;->lut:[F

    const/4 p2, 0x3

    if-ne p1, p2, :cond_5

    move v2, v3

    :cond_5
    if-nez v2, :cond_9

    .line 242
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const p2, 0x3a83126f    # 0.001f

    cmpg-float p1, p1, p2

    if-ltz p1, :cond_9

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, p2

    if-gez p1, :cond_6

    goto :goto_5

    :cond_6
    mul-float/2addr v0, v5

    .line 251
    iput v0, p0, Landroidx/compose/animation/core/ArcSpline$Arc;->ellipseA:F

    neg-float p1, v5

    mul-float/2addr v1, p1

    .line 252
    iput v1, p0, Landroidx/compose/animation/core/ArcSpline$Arc;->ellipseB:F

    if-eqz v4, :cond_7

    move p1, p6

    goto :goto_3

    :cond_7
    move p1, p4

    .line 253
    :goto_3
    iput p1, p0, Landroidx/compose/animation/core/ArcSpline$Arc;->ellipseCenterX:F

    if-eqz v4, :cond_8

    move p1, p5

    goto :goto_4

    :cond_8
    move p1, p7

    .line 254
    :goto_4
    iput p1, p0, Landroidx/compose/animation/core/ArcSpline$Arc;->ellipseCenterY:F

    .line 255
    invoke-virtual {p0, p4, p5, p6, p7}, Landroidx/compose/animation/core/ArcSpline$Arc;->buildTable$animation_core_release(FFFF)V

    .line 256
    iget p1, p0, Landroidx/compose/animation/core/ArcSpline$Arc;->arcDistance:F

    mul-float/2addr p1, v6

    iput p1, p0, Landroidx/compose/animation/core/ArcSpline$Arc;->arcVelocity:F

    move v3, v2

    goto :goto_6

    :cond_9
    :goto_5
    float-to-double p1, v1

    float-to-double p3, v0

    .line 244
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p1

    double-to-float p1, p1

    iput p1, p0, Landroidx/compose/animation/core/ArcSpline$Arc;->arcDistance:F

    mul-float/2addr p1, v6

    .line 245
    iput p1, p0, Landroidx/compose/animation/core/ArcSpline$Arc;->arcVelocity:F

    mul-float/2addr v0, v6

    .line 246
    iput v0, p0, Landroidx/compose/animation/core/ArcSpline$Arc;->ellipseCenterX:F

    mul-float/2addr v1, v6

    .line 247
    iput v1, p0, Landroidx/compose/animation/core/ArcSpline$Arc;->ellipseCenterY:F

    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 248
    iput p1, p0, Landroidx/compose/animation/core/ArcSpline$Arc;->ellipseA:F

    .line 249
    iput p1, p0, Landroidx/compose/animation/core/ArcSpline$Arc;->ellipseB:F

    .line 258
    :goto_6
    iput-boolean v3, p0, Landroidx/compose/animation/core/ArcSpline$Arc;->isLinear:Z

    return-void
.end method


# virtual methods
.method public final buildTable$animation_core_release(FFFF)V
    .locals 16

    move-object/from16 v0, p0

    sub-float v1, p3, p1

    sub-float v2, p2, p4

    .line 328
    invoke-static {}, Landroidx/compose/animation/core/ArcSplineKt;->access$getOurPercentCache$p()[F

    move-result-object v9

    .line 329
    array-length v3, v9

    const/4 v10, 0x1

    sub-int/2addr v3, v10

    int-to-float v11, v3

    .line 331
    iget-object v12, v0, Landroidx/compose/animation/core/ArcSpline$Arc;->lut:[F

    const/4 v13, 0x0

    if-gt v10, v3, :cond_0

    move v7, v2

    move v4, v10

    move v5, v13

    move v6, v5

    :goto_0
    const-wide v14, 0x4056800000000000L    # 90.0

    move/from16 p2, v11

    int-to-double v10, v4

    mul-double/2addr v10, v14

    int-to-double v14, v3

    div-double/2addr v10, v14

    .line 21
    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    double-to-float v8, v10

    float-to-double v10, v8

    .line 335
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    double-to-float v8, v14

    .line 336
    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    double-to-float v10, v10

    mul-float/2addr v8, v1

    mul-float/2addr v10, v2

    sub-float v6, v8, v6

    float-to-double v14, v6

    sub-float v6, v10, v7

    float-to-double v6, v6

    .line 339
    invoke-static {v14, v15, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    double-to-float v6, v6

    add-float/2addr v5, v6

    .line 340
    aput v5, v9, v4

    if-eq v4, v3, :cond_1

    add-int/lit8 v4, v4, 0x1

    move/from16 v11, p2

    move v6, v8

    move v7, v10

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    move/from16 p2, v11

    move v5, v13

    .line 345
    :cond_1
    iput v5, v0, Landroidx/compose/animation/core/ArcSpline$Arc;->arcDistance:F

    const/4 v0, 0x1

    if-gt v0, v3, :cond_2

    const/4 v0, 0x1

    .line 347
    :goto_1
    aget v1, v9, v0

    div-float/2addr v1, v5

    aput v1, v9, v0

    if-eq v0, v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 351
    :cond_2
    array-length v0, v12

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_5

    int-to-float v2, v1

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, v9

    move v4, v2

    .line 26
    invoke-static/range {v3 .. v8}, Lkotlin/collections/ArraysKt;->binarySearch$default([FFIIILjava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_3

    int-to-float v2, v3

    div-float v2, v2, p2

    .line 355
    aput v2, v12, v1

    :goto_3
    const/4 v5, 0x1

    goto :goto_4

    :cond_3
    const/4 v4, -0x1

    if-ne v3, v4, :cond_4

    .line 357
    aput v13, v12, v1

    goto :goto_3

    :cond_4
    neg-int v3, v3

    add-int/lit8 v4, v3, -0x2

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    int-to-float v6, v4

    .line 362
    aget v4, v9, v4

    sub-float/2addr v2, v4

    aget v3, v9, v3

    sub-float/2addr v3, v4

    div-float/2addr v2, v3

    add-float/2addr v6, v2

    div-float v6, v6, p2

    .line 364
    aput v6, v12, v1

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method
