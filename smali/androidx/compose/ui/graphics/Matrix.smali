.class public final Landroidx/compose/ui/graphics/Matrix;
.super Ljava/lang/Object;
.source "Matrix.kt"


# static fields
.field public static final Companion:Landroidx/compose/ui/graphics/Matrix$Companion;


# instance fields
.field private final values:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Landroidx/compose/ui/graphics/Matrix$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/Matrix$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/graphics/Matrix;->Companion:Landroidx/compose/ui/graphics/Matrix$Companion;

    return-void
.end method

.method private synthetic constructor <init>([F)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/graphics/Matrix;->values:[F

    return-void
.end method

.method public static final synthetic box-impl([F)Landroidx/compose/ui/graphics/Matrix;
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/ui/graphics/Matrix;

    invoke-direct {v0, p0}, Landroidx/compose/ui/graphics/Matrix;-><init>([F)V

    return-object v0
.end method

.method public static constructor-impl([F)[F
    .locals 0

    .line 0
    return-object p0
.end method

.method public static synthetic constructor-impl$default([FILkotlin/jvm/internal/DefaultConstructorMarker;)[F
    .locals 1

    const/4 p2, 0x1

    and-int/2addr p1, p2

    if-eqz p1, :cond_0

    const/16 p0, 0x10

    .line 45
    new-array p0, p0, [F

    const/4 p1, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    aput v0, p0, p1

    const/4 p1, 0x0

    aput p1, p0, p2

    const/4 p2, 0x2

    aput p1, p0, p2

    const/4 p2, 0x3

    aput p1, p0, p2

    const/4 p2, 0x4

    aput p1, p0, p2

    const/4 p2, 0x5

    aput v0, p0, p2

    const/4 p2, 0x6

    aput p1, p0, p2

    const/4 p2, 0x7

    aput p1, p0, p2

    const/16 p2, 0x8

    aput p1, p0, p2

    const/16 p2, 0x9

    aput p1, p0, p2

    const/16 p2, 0xa

    aput v0, p0, p2

    const/16 p2, 0xb

    aput p1, p0, p2

    const/16 p2, 0xc

    aput p1, p0, p2

    const/16 p2, 0xd

    aput p1, p0, p2

    const/16 p2, 0xe

    aput p1, p0, p2

    const/16 p1, 0xf

    aput v0, p0, p1

    .line 43
    :cond_0
    invoke-static {p0}, Landroidx/compose/ui/graphics/Matrix;->constructor-impl([F)[F

    move-result-object p0

    return-object p0
.end method

.method public static equals-impl([FLjava/lang/Object;)Z
    .locals 2

    .line 0
    instance-of v0, p1, Landroidx/compose/ui/graphics/Matrix;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroidx/compose/ui/graphics/Matrix;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/Matrix;->unbox-impl()[F

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static hashCode-impl([F)I
    .locals 0

    .line 0
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([F)I

    move-result p0

    return p0
.end method

.method public static final map-MK-Hz9U([FJ)J
    .locals 13

    .line 56
    array-length v0, p0

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    return-wide p1

    :cond_0
    const/4 v0, 0x0

    .line 47
    aget v0, p0, v0

    const/4 v1, 0x1

    .line 47
    aget v2, p0, v1

    const/4 v3, 0x3

    .line 47
    aget v3, p0, v3

    const/4 v4, 0x4

    .line 47
    aget v4, p0, v4

    const/4 v5, 0x5

    .line 47
    aget v5, p0, v5

    const/4 v6, 0x7

    .line 47
    aget v6, p0, v6

    const/16 v7, 0xc

    .line 47
    aget v7, p0, v7

    const/16 v8, 0xd

    .line 47
    aget v8, p0, v8

    const/16 v9, 0xf

    .line 47
    aget p0, p0, v9

    const/16 v9, 0x20

    shr-long v10, p1, v9

    long-to-int v10, v10

    .line 22
    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v10

    const-wide v11, 0xffffffffL

    and-long/2addr p1, v11

    long-to-int p1, p1

    .line 22
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    mul-float/2addr v3, v10

    mul-float/2addr v6, p1

    add-float/2addr v3, v6

    add-float/2addr v3, p0

    int-to-float p0, v1

    div-float/2addr p0, v3

    .line 135
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    const v1, 0x7fffffff

    and-int/2addr p2, v1

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    if-ge p2, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    mul-float/2addr v0, v10

    mul-float/2addr v4, p1

    add-float/2addr v0, v4

    add-float/2addr v0, v7

    mul-float/2addr v0, p0

    mul-float/2addr v2, v10

    mul-float/2addr v5, p1

    add-float/2addr v2, v5

    add-float/2addr v2, v8

    mul-float/2addr p0, v2

    .line 53
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long p1, p1

    .line 54
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v0, p0

    shl-long p0, p1, v9

    and-long/2addr v0, v11

    or-long/2addr p0, v0

    .line 30
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final map-impl([FLandroidx/compose/ui/geometry/MutableRect;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 136
    array-length v2, v0

    const/16 v3, 0x10

    if-ge v2, v3, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    .line 47
    aget v2, v0, v2

    const/4 v3, 0x1

    .line 47
    aget v3, v0, v3

    const/4 v4, 0x3

    .line 47
    aget v4, v0, v4

    const/4 v5, 0x4

    .line 47
    aget v5, v0, v5

    const/4 v6, 0x5

    .line 47
    aget v6, v0, v6

    const/4 v7, 0x7

    .line 47
    aget v7, v0, v7

    const/16 v8, 0xc

    .line 47
    aget v8, v0, v8

    const/16 v9, 0xd

    .line 47
    aget v9, v0, v9

    const/16 v10, 0xf

    .line 47
    aget v0, v0, v10

    .line 148
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/geometry/MutableRect;->getLeft()F

    move-result v10

    .line 149
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/geometry/MutableRect;->getTop()F

    move-result v11

    .line 150
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/geometry/MutableRect;->getRight()F

    move-result v12

    .line 151
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/geometry/MutableRect;->getBottom()F

    move-result v13

    mul-float v14, v4, v10

    mul-float v15, v7, v11

    add-float v16, v14, v15

    add-float v16, v16, v0

    const/high16 v17, 0x3f800000    # 1.0f

    div-float v16, v17, v16

    .line 135
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v18

    const v19, 0x7fffffff

    and-int v1, v18, v19

    const/16 v18, 0x0

    move/from16 p0, v15

    const/high16 v15, 0x7f800000    # Float.POSITIVE_INFINITY

    if-ge v1, v15, :cond_1

    goto :goto_0

    :cond_1
    move/from16 v16, v18

    :goto_0
    mul-float v1, v2, v10

    mul-float v20, v5, v11

    add-float v21, v1, v20

    add-float v21, v21, v8

    mul-float v15, v16, v21

    mul-float/2addr v10, v3

    mul-float/2addr v11, v6

    add-float v21, v10, v11

    add-float v21, v21, v9

    move/from16 v22, v15

    mul-float v15, v16, v21

    mul-float/2addr v7, v13

    add-float/2addr v14, v7

    add-float/2addr v14, v0

    div-float v14, v17, v14

    .line 135
    invoke-static {v14}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v16

    move/from16 v21, v14

    and-int v14, v16, v19

    move/from16 v16, v15

    const/high16 v15, 0x7f800000    # Float.POSITIVE_INFINITY

    if-ge v14, v15, :cond_2

    move/from16 v14, v21

    goto :goto_1

    :cond_2
    move/from16 v14, v18

    :goto_1
    mul-float/2addr v5, v13

    add-float/2addr v1, v5

    add-float/2addr v1, v8

    mul-float/2addr v1, v14

    mul-float/2addr v6, v13

    add-float/2addr v10, v6

    add-float/2addr v10, v9

    mul-float/2addr v14, v10

    mul-float/2addr v4, v12

    add-float v15, v4, p0

    add-float/2addr v15, v0

    div-float v10, v17, v15

    .line 135
    invoke-static {v10}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v13

    and-int v13, v13, v19

    const/high16 v15, 0x7f800000    # Float.POSITIVE_INFINITY

    if-ge v13, v15, :cond_3

    goto :goto_2

    :cond_3
    move/from16 v10, v18

    :goto_2
    mul-float/2addr v2, v12

    add-float v20, v2, v20

    add-float v20, v20, v8

    mul-float v13, v10, v20

    mul-float/2addr v3, v12

    add-float/2addr v11, v3

    add-float/2addr v11, v9

    mul-float/2addr v10, v11

    add-float/2addr v4, v7

    add-float/2addr v4, v0

    div-float v17, v17, v4

    .line 135
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    and-int v0, v0, v19

    const/high16 v4, 0x7f800000    # Float.POSITIVE_INFINITY

    if-ge v0, v4, :cond_4

    move/from16 v18, v17

    :cond_4
    add-float/2addr v2, v5

    add-float/2addr v2, v8

    mul-float v2, v2, v18

    add-float/2addr v3, v6

    add-float/2addr v3, v9

    mul-float v0, v18, v3

    .line 46
    invoke-static {v13, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    move/from16 v4, v22

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    move-object/from16 v5, p1

    .line 181
    invoke-virtual {v5, v3}, Landroidx/compose/ui/geometry/MutableRect;->setLeft(F)V

    .line 46
    invoke-static {v10, v0}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v14, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    move/from16 v6, v16

    invoke-static {v6, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 182
    invoke-virtual {v5, v3}, Landroidx/compose/ui/geometry/MutableRect;->setTop(F)V

    .line 56
    invoke-static {v13, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 183
    invoke-virtual {v5, v1}, Landroidx/compose/ui/geometry/MutableRect;->setRight(F)V

    .line 56
    invoke-static {v10, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v14, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v6, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 184
    invoke-virtual {v5, v0}, Landroidx/compose/ui/geometry/MutableRect;->setBottom(F)V

    return-void
.end method

.method public static final reset-impl([F)V
    .locals 3

    .line 302
    array-length v0, p0

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 303
    aput v1, p0, v0

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 304
    aput v2, p0, v0

    const/4 v0, 0x2

    .line 305
    aput v2, p0, v0

    const/4 v0, 0x3

    .line 306
    aput v2, p0, v0

    const/4 v0, 0x4

    .line 307
    aput v2, p0, v0

    const/4 v0, 0x5

    .line 308
    aput v1, p0, v0

    const/4 v0, 0x6

    .line 309
    aput v2, p0, v0

    const/4 v0, 0x7

    .line 310
    aput v2, p0, v0

    const/16 v0, 0x8

    .line 311
    aput v2, p0, v0

    const/16 v0, 0x9

    .line 312
    aput v2, p0, v0

    const/16 v0, 0xa

    .line 313
    aput v1, p0, v0

    const/16 v0, 0xb

    .line 314
    aput v2, p0, v0

    const/16 v0, 0xc

    .line 315
    aput v2, p0, v0

    const/16 v0, 0xd

    .line 316
    aput v2, p0, v0

    const/16 v0, 0xe

    .line 317
    aput v2, p0, v0

    const/16 v0, 0xf

    .line 318
    aput v1, p0, v0

    return-void
.end method

.method public static final resetToPivotedTransform-impl([FFFFFFFFFFFF)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    const v3, 0x3b360b61

    mul-float v4, p6, v3

    const/high16 v5, 0x3f000000    # 0.5f

    add-float v6, v4, v5

    float-to-double v6, v6

    .line 297
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-float v6, v6

    sub-float v6, v4, v6

    .line 298
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v7, v8

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v10, v9, v7

    const/high16 v11, 0x41000000    # 8.0f

    mul-float/2addr v6, v11

    mul-float/2addr v6, v10

    mul-float/2addr v7, v10

    const/high16 v10, 0x3fa00000    # 1.25f

    sub-float v7, v10, v7

    div-float/2addr v6, v7

    const/high16 v7, 0x3e800000    # 0.25f

    add-float/2addr v4, v7

    add-float v12, v4, v5

    float-to-double v12, v12

    .line 297
    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-float v12, v12

    sub-float/2addr v4, v12

    .line 298
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v12

    mul-float/2addr v12, v8

    sub-float v13, v9, v12

    mul-float/2addr v4, v11

    mul-float/2addr v4, v13

    mul-float/2addr v12, v13

    sub-float v12, v10, v12

    div-float/2addr v4, v12

    neg-float v12, v6

    mul-float v13, p4, v4

    mul-float v14, p5, v6

    sub-float/2addr v13, v14

    mul-float v14, p4, v6

    mul-float v15, p5, v4

    add-float/2addr v14, v15

    mul-float v15, p7, v3

    add-float v3, v15, v5

    move/from16 v16, v6

    float-to-double v5, v3

    .line 297
    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-float v3, v5

    sub-float v3, v15, v3

    .line 298
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v5, v8

    sub-float v6, v9, v5

    mul-float/2addr v3, v11

    mul-float/2addr v3, v6

    mul-float/2addr v5, v6

    sub-float v5, v10, v5

    div-float/2addr v3, v5

    add-float/2addr v15, v7

    const/high16 v5, 0x3f000000    # 0.5f

    add-float v6, v15, v5

    float-to-double v5, v6

    .line 297
    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-float v5, v5

    sub-float/2addr v15, v5

    .line 298
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v5, v8

    sub-float v6, v9, v5

    mul-float/2addr v15, v11

    mul-float/2addr v15, v6

    mul-float/2addr v5, v6

    sub-float v5, v10, v5

    div-float/2addr v15, v5

    neg-float v5, v3

    mul-float v6, v16, v3

    mul-float v16, v16, v15

    mul-float v17, v4, v3

    mul-float v18, v4, v15

    mul-float v19, v2, v15

    mul-float v20, v14, v3

    add-float v19, v19, v20

    neg-float v2, v2

    mul-float/2addr v2, v3

    mul-float/2addr v14, v15

    add-float/2addr v2, v14

    const v3, 0x3b360b61

    mul-float v3, v3, p8

    const/high16 v14, 0x3f000000    # 0.5f

    add-float v7, v3, v14

    float-to-double v10, v7

    .line 297
    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-float v7, v10

    sub-float v7, v3, v7

    .line 298
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v10

    mul-float/2addr v10, v8

    sub-float v11, v9, v10

    const/high16 v14, 0x41000000    # 8.0f

    mul-float/2addr v7, v14

    mul-float/2addr v7, v11

    mul-float/2addr v10, v11

    const/high16 v11, 0x3fa00000    # 1.25f

    sub-float v10, v11, v10

    div-float/2addr v7, v10

    const/high16 v10, 0x3e800000    # 0.25f

    add-float/2addr v3, v10

    const/high16 v10, 0x3f000000    # 0.5f

    add-float/2addr v10, v3

    float-to-double v10, v10

    .line 297
    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-float v10, v10

    sub-float/2addr v3, v10

    .line 298
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v10

    mul-float/2addr v10, v8

    sub-float v8, v9, v10

    const/high16 v11, 0x41000000    # 8.0f

    mul-float/2addr v3, v11

    mul-float/2addr v3, v8

    mul-float/2addr v10, v8

    const/high16 v8, 0x3fa00000    # 1.25f

    sub-float v10, v8, v10

    div-float/2addr v3, v10

    neg-float v8, v7

    mul-float v10, v8, v15

    mul-float v11, v3, v6

    add-float/2addr v10, v11

    mul-float/2addr v15, v3

    mul-float/2addr v6, v7

    add-float/2addr v15, v6

    mul-float v6, v7, v4

    mul-float/2addr v4, v3

    mul-float/2addr v8, v5

    mul-float v11, v3, v16

    add-float/2addr v8, v11

    mul-float/2addr v3, v5

    mul-float v7, v7, v16

    add-float/2addr v3, v7

    mul-float v15, v15, p9

    mul-float v6, v6, p9

    mul-float v3, v3, p9

    mul-float v10, v10, p10

    mul-float v4, v4, p10

    mul-float v8, v8, p10

    mul-float v17, v17, p11

    mul-float v12, v12, p11

    mul-float v18, v18, p11

    .line 594
    array-length v5, v0

    const/16 v7, 0x10

    if-ge v5, v7, :cond_0

    return-void

    :cond_0
    const/4 v5, 0x0

    .line 50
    aput v15, v0, v5

    const/4 v5, 0x1

    .line 50
    aput v6, v0, v5

    const/4 v5, 0x2

    .line 50
    aput v3, v0, v5

    const/4 v5, 0x3

    const/4 v7, 0x0

    .line 50
    aput v7, v0, v5

    const/4 v5, 0x4

    .line 50
    aput v10, v0, v5

    const/4 v5, 0x5

    .line 50
    aput v4, v0, v5

    const/4 v5, 0x6

    .line 50
    aput v8, v0, v5

    const/4 v5, 0x7

    .line 50
    aput v7, v0, v5

    const/16 v5, 0x8

    .line 50
    aput v17, v0, v5

    const/16 v5, 0x9

    .line 50
    aput v12, v0, v5

    const/16 v5, 0xa

    .line 50
    aput v18, v0, v5

    const/16 v5, 0xb

    .line 50
    aput v7, v0, v5

    neg-float v5, v1

    mul-float/2addr v15, v5

    mul-float v7, p2, v10

    sub-float/2addr v15, v7

    add-float v15, v15, v19

    add-float/2addr v15, v1

    const/16 v1, 0xc

    .line 50
    aput v15, v0, v1

    mul-float/2addr v6, v5

    mul-float v1, p2, v4

    sub-float/2addr v6, v1

    add-float/2addr v6, v13

    add-float v6, v6, p2

    const/16 v1, 0xd

    .line 50
    aput v6, v0, v1

    mul-float/2addr v5, v3

    mul-float v1, p2, v8

    sub-float/2addr v5, v1

    add-float/2addr v5, v2

    const/16 v1, 0xe

    .line 50
    aput v5, v0, v1

    const/16 v1, 0xf

    .line 50
    aput v9, v0, v1

    return-void
.end method

.method public static final rotateZ-impl([FF)V
    .locals 21

    move-object/from16 v0, p0

    .line 429
    array-length v1, v0

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    return-void

    :cond_0
    const v1, 0x3b360b61

    mul-float v1, v1, p1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float v3, v1, v2

    float-to-double v3, v3

    .line 297
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-float v3, v3

    sub-float v3, v1, v3

    .line 298
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v7, v6, v4

    const/high16 v8, 0x41000000    # 8.0f

    mul-float/2addr v3, v8

    mul-float/2addr v3, v7

    mul-float/2addr v4, v7

    const/high16 v7, 0x3fa00000    # 1.25f

    sub-float v4, v7, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x3e800000    # 0.25f

    add-float/2addr v1, v4

    add-float/2addr v2, v1

    float-to-double v9, v2

    .line 297
    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    double-to-float v2, v9

    sub-float/2addr v1, v2

    .line 298
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float/2addr v2, v5

    sub-float/2addr v6, v2

    mul-float/2addr v1, v8

    mul-float/2addr v1, v6

    mul-float/2addr v2, v6

    sub-float/2addr v7, v2

    div-float/2addr v1, v7

    const/4 v2, 0x0

    .line 47
    aget v4, v0, v2

    const/4 v5, 0x4

    .line 47
    aget v6, v0, v5

    mul-float v7, v1, v4

    mul-float v8, v3, v6

    add-float/2addr v7, v8

    neg-float v8, v3

    mul-float/2addr v4, v8

    mul-float/2addr v6, v1

    add-float/2addr v4, v6

    const/4 v6, 0x1

    .line 47
    aget v9, v0, v6

    const/4 v10, 0x5

    .line 47
    aget v11, v0, v10

    mul-float v12, v1, v9

    mul-float v13, v3, v11

    add-float/2addr v12, v13

    mul-float/2addr v9, v8

    mul-float/2addr v11, v1

    add-float/2addr v9, v11

    const/4 v11, 0x2

    .line 47
    aget v13, v0, v11

    const/4 v14, 0x6

    .line 47
    aget v15, v0, v14

    mul-float v16, v1, v13

    mul-float v17, v3, v15

    add-float v16, v16, v17

    mul-float/2addr v13, v8

    mul-float/2addr v15, v1

    add-float/2addr v13, v15

    const/4 v15, 0x3

    .line 47
    aget v17, v0, v15

    const/16 v18, 0x7

    .line 47
    aget v19, v0, v18

    mul-float v20, v1, v17

    mul-float v3, v3, v19

    add-float v20, v20, v3

    mul-float v8, v8, v17

    mul-float v1, v1, v19

    add-float/2addr v8, v1

    .line 50
    aput v7, v0, v2

    .line 50
    aput v12, v0, v6

    .line 50
    aput v16, v0, v11

    .line 50
    aput v20, v0, v15

    .line 50
    aput v4, v0, v5

    .line 50
    aput v9, v0, v10

    .line 50
    aput v13, v0, v14

    .line 50
    aput v8, v0, v18

    return-void
.end method

.method public static final scale-impl([FFFF)V
    .locals 2

    .line 468
    array-length v0, p0

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 47
    aget v1, p0, v0

    mul-float/2addr v1, p1

    .line 50
    aput v1, p0, v0

    const/4 v0, 0x1

    .line 47
    aget v1, p0, v0

    mul-float/2addr v1, p1

    .line 50
    aput v1, p0, v0

    const/4 v0, 0x2

    .line 47
    aget v1, p0, v0

    mul-float/2addr v1, p1

    .line 50
    aput v1, p0, v0

    const/4 v0, 0x3

    .line 47
    aget v1, p0, v0

    mul-float/2addr v1, p1

    .line 50
    aput v1, p0, v0

    const/4 p1, 0x4

    .line 47
    aget v0, p0, p1

    mul-float/2addr v0, p2

    .line 50
    aput v0, p0, p1

    const/4 p1, 0x5

    .line 47
    aget v0, p0, p1

    mul-float/2addr v0, p2

    .line 50
    aput v0, p0, p1

    const/4 p1, 0x6

    .line 47
    aget v0, p0, p1

    mul-float/2addr v0, p2

    .line 50
    aput v0, p0, p1

    const/4 p1, 0x7

    .line 47
    aget v0, p0, p1

    mul-float/2addr v0, p2

    .line 50
    aput v0, p0, p1

    const/16 p1, 0x8

    .line 47
    aget p2, p0, p1

    mul-float/2addr p2, p3

    .line 50
    aput p2, p0, p1

    const/16 p1, 0x9

    .line 47
    aget p2, p0, p1

    mul-float/2addr p2, p3

    .line 50
    aput p2, p0, p1

    const/16 p1, 0xa

    .line 47
    aget p2, p0, p1

    mul-float/2addr p2, p3

    .line 50
    aput p2, p0, p1

    const/16 p1, 0xb

    .line 47
    aget p2, p0, p1

    mul-float/2addr p2, p3

    .line 50
    aput p2, p0, p1

    return-void
.end method

.method public static final timesAssign-58bKbWc([F[F)V
    .locals 49

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 191
    array-length v2, v0

    const/16 v3, 0x10

    if-ge v2, v3, :cond_0

    return-void

    .line 192
    :cond_0
    array-length v2, v1

    if-ge v2, v3, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x0

    .line 47
    aget v3, v0, v2

    aget v4, v1, v2

    mul-float v5, v3, v4

    const/4 v6, 0x1

    aget v7, v0, v6

    const/4 v8, 0x4

    aget v9, v1, v8

    mul-float v10, v7, v9

    add-float/2addr v5, v10

    const/4 v10, 0x2

    aget v11, v0, v10

    const/16 v12, 0x8

    aget v13, v1, v12

    mul-float v14, v11, v13

    add-float/2addr v5, v14

    const/4 v14, 0x3

    aget v15, v0, v14

    const/16 v16, 0xc

    aget v17, v1, v16

    mul-float v18, v15, v17

    add-float v5, v5, v18

    .line 47
    aget v18, v1, v6

    mul-float v19, v3, v18

    const/16 v20, 0x5

    aget v21, v1, v20

    mul-float v22, v7, v21

    add-float v19, v19, v22

    const/16 v22, 0x9

    aget v23, v1, v22

    mul-float v24, v11, v23

    add-float v19, v19, v24

    const/16 v24, 0xd

    aget v25, v1, v24

    mul-float v26, v15, v25

    add-float v19, v19, v26

    .line 47
    aget v26, v1, v10

    mul-float v27, v3, v26

    const/16 v28, 0x6

    aget v29, v1, v28

    mul-float v30, v7, v29

    add-float v27, v27, v30

    const/16 v30, 0xa

    aget v31, v1, v30

    mul-float v32, v11, v31

    add-float v27, v27, v32

    const/16 v32, 0xe

    aget v33, v1, v32

    mul-float v34, v15, v33

    add-float v27, v27, v34

    .line 47
    aget v34, v1, v14

    mul-float v3, v3, v34

    const/16 v35, 0x7

    aget v36, v1, v35

    mul-float v7, v7, v36

    add-float/2addr v3, v7

    const/16 v7, 0xb

    aget v37, v1, v7

    mul-float v11, v11, v37

    add-float/2addr v3, v11

    const/16 v11, 0xf

    aget v1, v1, v11

    mul-float/2addr v15, v1

    add-float/2addr v3, v15

    .line 47
    aget v15, v0, v8

    mul-float v38, v15, v4

    aget v39, v0, v20

    mul-float v40, v39, v9

    add-float v38, v38, v40

    aget v40, v0, v28

    mul-float v41, v40, v13

    add-float v38, v38, v41

    aget v41, v0, v35

    mul-float v42, v41, v17

    add-float v38, v38, v42

    mul-float v42, v15, v18

    mul-float v43, v39, v21

    add-float v42, v42, v43

    mul-float v43, v40, v23

    add-float v42, v42, v43

    mul-float v43, v41, v25

    add-float v42, v42, v43

    mul-float v43, v15, v26

    mul-float v44, v39, v29

    add-float v43, v43, v44

    mul-float v44, v40, v31

    add-float v43, v43, v44

    mul-float v44, v41, v33

    add-float v43, v43, v44

    mul-float v15, v15, v34

    mul-float v39, v39, v36

    add-float v15, v15, v39

    mul-float v40, v40, v37

    add-float v15, v15, v40

    mul-float v41, v41, v1

    add-float v15, v15, v41

    .line 47
    aget v39, v0, v12

    mul-float v40, v39, v4

    aget v41, v0, v22

    mul-float v44, v41, v9

    add-float v40, v40, v44

    aget v44, v0, v30

    mul-float v45, v44, v13

    add-float v40, v40, v45

    aget v45, v0, v7

    mul-float v46, v45, v17

    add-float v40, v40, v46

    mul-float v46, v39, v18

    mul-float v47, v41, v21

    add-float v46, v46, v47

    mul-float v47, v44, v23

    add-float v46, v46, v47

    mul-float v47, v45, v25

    add-float v46, v46, v47

    mul-float v47, v39, v26

    mul-float v48, v41, v29

    add-float v47, v47, v48

    mul-float v48, v44, v31

    add-float v47, v47, v48

    mul-float v48, v45, v33

    add-float v47, v47, v48

    mul-float v39, v39, v34

    mul-float v41, v41, v36

    add-float v39, v39, v41

    mul-float v44, v44, v37

    add-float v39, v39, v44

    mul-float v45, v45, v1

    add-float v39, v39, v45

    .line 47
    aget v41, v0, v16

    mul-float v4, v4, v41

    aget v44, v0, v24

    mul-float v9, v9, v44

    add-float/2addr v4, v9

    aget v9, v0, v32

    mul-float/2addr v13, v9

    add-float/2addr v4, v13

    aget v13, v0, v11

    mul-float v17, v17, v13

    add-float v4, v4, v17

    mul-float v18, v18, v41

    mul-float v21, v21, v44

    add-float v18, v18, v21

    mul-float v23, v23, v9

    add-float v18, v18, v23

    mul-float v25, v25, v13

    add-float v18, v18, v25

    mul-float v26, v26, v41

    mul-float v29, v29, v44

    add-float v26, v26, v29

    mul-float v31, v31, v9

    add-float v26, v26, v31

    mul-float v33, v33, v13

    add-float v26, v26, v33

    mul-float v41, v41, v34

    mul-float v44, v44, v36

    add-float v41, v41, v44

    mul-float v9, v9, v37

    add-float v41, v41, v9

    mul-float/2addr v13, v1

    add-float v41, v41, v13

    .line 211
    aput v5, v0, v2

    .line 212
    aput v19, v0, v6

    .line 213
    aput v27, v0, v10

    .line 214
    aput v3, v0, v14

    .line 215
    aput v38, v0, v8

    .line 216
    aput v42, v0, v20

    .line 217
    aput v43, v0, v28

    .line 218
    aput v15, v0, v35

    .line 219
    aput v40, v0, v12

    .line 220
    aput v46, v0, v22

    .line 221
    aput v47, v0, v30

    .line 222
    aput v39, v0, v7

    .line 223
    aput v4, v0, v16

    .line 224
    aput v18, v0, v24

    .line 225
    aput v26, v0, v32

    .line 226
    aput v41, v0, v11

    return-void
.end method

.method public static toString-impl([F)Ljava/lang/String;
    .locals 4

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n            |"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 47
    aget v1, p0, v1

    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    .line 47
    aget v2, p0, v2

    .line 230
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    .line 47
    aget v2, p0, v2

    .line 230
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    .line 47
    aget v2, p0, v2

    .line 230
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "|\n            |"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x4

    .line 47
    aget v3, p0, v3

    .line 230
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x5

    .line 47
    aget v3, p0, v3

    .line 230
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x6

    .line 47
    aget v3, p0, v3

    .line 230
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x7

    .line 47
    aget v3, p0, v3

    .line 230
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x8

    .line 47
    aget v3, p0, v3

    .line 230
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x9

    .line 47
    aget v3, p0, v3

    .line 230
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    .line 47
    aget v3, p0, v3

    .line 230
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0xb

    .line 47
    aget v3, p0, v3

    .line 230
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xc

    .line 47
    aget v2, p0, v2

    .line 230
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v2, 0xd

    .line 47
    aget v2, p0, v2

    .line 230
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v2, 0xe

    .line 47
    aget v2, p0, v2

    .line 230
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0xf

    .line 47
    aget p0, p0, v1

    .line 230
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 234
    const-string p0, "|\n        "

    .line 230
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 236
    invoke-static {p0}, Lkotlin/text/StringsKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final translate-impl([FFFF)V
    .locals 7

    .line 486
    array-length v0, p0

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 47
    aget v0, p0, v0

    mul-float/2addr v0, p1

    const/4 v1, 0x4

    aget v1, p0, v1

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    const/16 v1, 0x8

    aget v1, p0, v1

    mul-float/2addr v1, p3

    add-float/2addr v0, v1

    const/16 v1, 0xc

    aget v2, p0, v1

    add-float/2addr v0, v2

    const/4 v2, 0x1

    .line 47
    aget v2, p0, v2

    mul-float/2addr v2, p1

    const/4 v3, 0x5

    aget v3, p0, v3

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    const/16 v3, 0x9

    aget v3, p0, v3

    mul-float/2addr v3, p3

    add-float/2addr v2, v3

    const/16 v3, 0xd

    aget v4, p0, v3

    add-float/2addr v2, v4

    const/4 v4, 0x2

    .line 47
    aget v4, p0, v4

    mul-float/2addr v4, p1

    const/4 v5, 0x6

    aget v5, p0, v5

    mul-float/2addr v5, p2

    add-float/2addr v4, v5

    const/16 v5, 0xa

    aget v5, p0, v5

    mul-float/2addr v5, p3

    add-float/2addr v4, v5

    const/16 v5, 0xe

    aget v6, p0, v5

    add-float/2addr v4, v6

    const/4 v6, 0x3

    .line 47
    aget v6, p0, v6

    mul-float/2addr v6, p1

    const/4 p1, 0x7

    aget p1, p0, p1

    mul-float/2addr p1, p2

    add-float/2addr v6, p1

    const/16 p1, 0xb

    aget p1, p0, p1

    mul-float/2addr p1, p3

    add-float/2addr v6, p1

    const/16 p1, 0xf

    aget p2, p0, p1

    add-float/2addr v6, p2

    .line 50
    aput v0, p0, v1

    .line 50
    aput v2, p0, v3

    .line 50
    aput v4, p0, v5

    .line 50
    aput v6, p0, p1

    return-void
.end method

.method public static synthetic translate-impl$default([FFFFILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move p3, v0

    .line 484
    :cond_2
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/graphics/Matrix;->translate-impl([FFFF)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 0
    iget-object p0, p0, Landroidx/compose/ui/graphics/Matrix;->values:[F

    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Matrix;->equals-impl([FLjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    .line 0
    iget-object p0, p0, Landroidx/compose/ui/graphics/Matrix;->values:[F

    invoke-static {p0}, Landroidx/compose/ui/graphics/Matrix;->hashCode-impl([F)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 229
    iget-object p0, p0, Landroidx/compose/ui/graphics/Matrix;->values:[F

    invoke-static {p0}, Landroidx/compose/ui/graphics/Matrix;->toString-impl([F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic unbox-impl()[F
    .locals 0

    .line 0
    iget-object p0, p0, Landroidx/compose/ui/graphics/Matrix;->values:[F

    return-object p0
.end method
