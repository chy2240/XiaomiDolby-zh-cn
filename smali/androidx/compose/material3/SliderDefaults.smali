.class public final Landroidx/compose/material3/SliderDefaults;
.super Ljava/lang/Object;
.source "Slider.kt"


# static fields
.field public static final INSTANCE:Landroidx/compose/material3/SliderDefaults;

.field private static final TickSize:F

.field private static final TrackStopIndicatorSize:F

.field private static final trackPath:Landroidx/compose/ui/graphics/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/material3/SliderDefaults;

    invoke-direct {v0}, Landroidx/compose/material3/SliderDefaults;-><init>()V

    sput-object v0, Landroidx/compose/material3/SliderDefaults;->INSTANCE:Landroidx/compose/material3/SliderDefaults;

    .line 1392
    sget-object v0, Landroidx/compose/material3/tokens/SliderTokens;->INSTANCE:Landroidx/compose/material3/tokens/SliderTokens;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/SliderTokens;->getStopIndicatorSize-D9Ej5fM()F

    move-result v1

    sput v1, Landroidx/compose/material3/SliderDefaults;->TrackStopIndicatorSize:F

    .line 1395
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/SliderTokens;->getStopIndicatorSize-D9Ej5fM()F

    move-result v0

    sput v0, Landroidx/compose/material3/SliderDefaults;->TickSize:F

    .line 1397
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/Path;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/SliderDefaults;->trackPath:Landroidx/compose/ui/graphics/Path;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 834
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$drawStopIndicator-x3O1jOs(Landroidx/compose/material3/SliderDefaults;Landroidx/compose/ui/graphics/drawscope/DrawScope;JFJ)V
    .locals 0

    .line 834
    invoke-direct/range {p0 .. p6}, Landroidx/compose/material3/SliderDefaults;->drawStopIndicator-x3O1jOs(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFJ)V

    return-void
.end method

.method public static final synthetic access$drawTrack-ngJ0SCU(Landroidx/compose/material3/SliderDefaults;Landroidx/compose/ui/graphics/drawscope/DrawScope;[FFFJJJJFFFFFLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Z)V
    .locals 0

    .line 834
    invoke-direct/range {p0 .. p20}, Landroidx/compose/material3/SliderDefaults;->drawTrack-ngJ0SCU(Landroidx/compose/ui/graphics/drawscope/DrawScope;[FFFJJJJFFFFFLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Z)V

    return-void
.end method

.method private final drawStopIndicator-x3O1jOs(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFJ)V
    .locals 12

    move-object v0, p1

    move/from16 v1, p4

    .line 1388
    invoke-interface {p1, v1}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v1, v2

    const/16 v10, 0x78

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-wide/from16 v1, p5

    move-wide v4, p2

    invoke-static/range {v0 .. v11}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawCircle-VaOC9Bg$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    return-void
.end method

.method private final drawTrack-ngJ0SCU(Landroidx/compose/ui/graphics/drawscope/DrawScope;[FFFJJJJFFFFFLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Z)V
    .locals 30

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move/from16 v0, p16

    move-object/from16 v12, p18

    .line 1280
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getCenter-F1C5BW0()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v1

    const/4 v13, 0x0

    invoke-static {v13, v1}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v14

    .line 1281
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v1

    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getCenter-F1C5BW0()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v2

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v16

    move/from16 v1, p13

    .line 1282
    invoke-interface {v10, v1}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v9

    .line 1285
    invoke-static {v14, v15}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v1

    invoke-static/range {v16 .. v17}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v2

    invoke-static {v14, v15}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v3

    sub-float/2addr v2, v3

    mul-float v2, v2, p4

    add-float/2addr v1, v2

    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getCenter-F1C5BW0()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v2

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v18

    .line 1288
    invoke-static {v14, v15}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v1

    invoke-static/range {v16 .. v17}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v2

    invoke-static {v14, v15}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v3

    sub-float/2addr v2, v3

    mul-float v2, v2, p3

    add-float/2addr v1, v2

    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getCenter-F1C5BW0()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v2

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v20

    const/4 v1, 0x2

    int-to-float v1, v1

    div-float v22, v9, v1

    move/from16 v2, p17

    .line 1291
    invoke-interface {v10, v2}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v23

    const/4 v8, 0x0

    int-to-float v2, v8

    .line 2305
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    .line 1294
    invoke-static {v0, v2}, Landroidx/compose/ui/unit/Dp;->compareTo-0680j_4(FF)I

    move-result v2

    if-lez v2, :cond_0

    move/from16 v2, p14

    .line 1295
    invoke-interface {v10, v2}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v2

    div-float/2addr v2, v1

    invoke-interface {v10, v0}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v3

    add-float/2addr v2, v3

    move/from16 v3, p15

    .line 1296
    invoke-interface {v10, v3}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v3

    div-float/2addr v3, v1

    invoke-interface {v10, v0}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v0

    add-float/2addr v3, v0

    move/from16 v24, v2

    move/from16 v25, v3

    goto :goto_0

    :cond_0
    move/from16 v24, v13

    move/from16 v25, v24

    :goto_0
    if-eqz p20, :cond_1

    .line 1300
    invoke-static/range {v20 .. v21}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v0

    invoke-static {v14, v15}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v1

    add-float v1, v1, v24

    add-float v1, v1, v22

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 1301
    invoke-static {v14, v15}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v26

    .line 1302
    invoke-static/range {v20 .. v21}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v0

    sub-float v0, v0, v24

    .line 1304
    sget-object v1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v2

    sub-float v0, v0, v26

    .line 1305
    invoke-static {v0, v9}, Landroidx/compose/ui/geometry/SizeKt;->Size(FF)J

    move-result-wide v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v6, p5

    move/from16 v27, v8

    move/from16 v8, v22

    move/from16 v28, v9

    move/from16 v9, v23

    .line 1303
    invoke-direct/range {v0 .. v9}, Landroidx/compose/material3/SliderDefaults;->drawTrackPath-Cx2C_VA(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJFF)V

    if-eqz v12, :cond_2

    add-float v0, v26, v22

    .line 1310
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getCenter-F1C5BW0()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v0

    invoke-interface {v12, v10, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    move/from16 v27, v8

    move/from16 v28, v9

    .line 1313
    :cond_2
    :goto_1
    invoke-static/range {v18 .. v19}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v0

    invoke-static/range {v16 .. v17}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v1

    sub-float v1, v1, v25

    sub-float v1, v1, v22

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 1314
    invoke-static/range {v18 .. v19}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v0

    add-float v0, v0, v25

    .line 1315
    invoke-static/range {v16 .. v17}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v26

    .line 1317
    invoke-static {v0, v13}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v2

    sub-float v0, v26, v0

    move/from16 v9, v28

    .line 1318
    invoke-static {v0, v9}, Landroidx/compose/ui/geometry/SizeKt;->Size(FF)J

    move-result-wide v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v6, p5

    move/from16 v8, v23

    move/from16 v29, v9

    move/from16 v9, v22

    .line 1316
    invoke-direct/range {v0 .. v9}, Landroidx/compose/material3/SliderDefaults;->drawTrackPath-Cx2C_VA(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJFF)V

    if-eqz v12, :cond_4

    sub-float v0, v26, v22

    .line 1323
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getCenter-F1C5BW0()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v0

    invoke-interface {v12, v10, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    move/from16 v29, v28

    :cond_4
    :goto_2
    if-eqz p20, :cond_5

    .line 1326
    invoke-static/range {v20 .. v21}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v0

    add-float v0, v0, v24

    goto :goto_3

    :cond_5
    move v0, v13

    .line 1327
    :goto_3
    invoke-static/range {v18 .. v19}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v1

    sub-float v1, v1, v25

    if-eqz p20, :cond_6

    move/from16 v8, v23

    goto :goto_4

    :cond_6
    move/from16 v8, v22

    :goto_4
    sub-float/2addr v1, v0

    cmpl-float v2, v1, v8

    if-lez v2, :cond_7

    .line 1331
    invoke-static {v0, v13}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v2

    move/from16 v0, v29

    .line 1332
    invoke-static {v1, v0}, Landroidx/compose/ui/geometry/SizeKt;->Size(FF)J

    move-result-wide v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v6, p7

    move/from16 v9, v23

    .line 1330
    invoke-direct/range {v0 .. v9}, Landroidx/compose/material3/SliderDefaults;->drawTrackPath-Cx2C_VA(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJFF)V

    .line 1339
    :cond_7
    invoke-static {v14, v15}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v0

    add-float v0, v0, v22

    invoke-static {v14, v15}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v0

    .line 1340
    invoke-static/range {v16 .. v17}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v2

    sub-float v2, v2, v22

    invoke-static/range {v16 .. v17}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v3

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v2

    .line 1341
    invoke-static/range {v20 .. v21}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v4

    sub-float v4, v4, v24

    invoke-static/range {v20 .. v21}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v5

    add-float v5, v5, v24

    invoke-static {v4, v5}, Lkotlin/ranges/RangesKt;->rangeTo(FF)Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v4

    .line 1342
    invoke-static/range {v18 .. v19}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v5

    sub-float v5, v5, v25

    invoke-static/range {v18 .. v19}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v6

    add-float v6, v6, v25

    invoke-static {v5, v6}, Lkotlin/ranges/RangesKt;->rangeTo(FF)Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v5

    .line 2307
    array-length v6, v11

    move/from16 v7, v27

    move v8, v7

    :goto_5
    if-ge v8, v6, :cond_10

    aget v9, v11, v8

    add-int/lit8 v13, v7, 0x1

    const/4 v14, 0x1

    if-eqz v12, :cond_a

    if-eqz p20, :cond_8

    if-eqz v7, :cond_9

    .line 1346
    :cond_8
    array-length v15, v11

    sub-int/2addr v15, v14

    if-ne v7, v15, :cond_a

    :cond_9
    :goto_6
    move-object/from16 v14, p19

    goto :goto_9

    :cond_a
    cmpl-float v7, v9, p4

    if-gtz v7, :cond_c

    cmpg-float v7, v9, p3

    if-gez v7, :cond_b

    goto :goto_7

    :cond_b
    move/from16 v14, v27

    .line 1352
    :cond_c
    :goto_7
    invoke-static {v0, v1, v2, v3, v9}, Landroidx/compose/ui/geometry/OffsetKt;->lerp-Wko1d7g(JJF)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v7

    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getCenter-F1C5BW0()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v9

    invoke-static {v7, v9}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v15

    if-eqz p20, :cond_d

    .line 1354
    invoke-static/range {v15 .. v16}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-interface {v4, v7}, Lkotlin/ranges/ClosedFloatingPointRange;->contains(Ljava/lang/Comparable;)Z

    move-result v7

    if-nez v7, :cond_9

    :cond_d
    invoke-static/range {v15 .. v16}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-interface {v5, v7}, Lkotlin/ranges/ClosedFloatingPointRange;->contains(Ljava/lang/Comparable;)Z

    move-result v7

    if-eqz v7, :cond_e

    goto :goto_6

    .line 1359
    :cond_e
    invoke-static/range {v15 .. v16}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v7

    if-eqz v14, :cond_f

    move-wide/from16 v14, p9

    goto :goto_8

    :cond_f
    move-wide/from16 v14, p11

    .line 1360
    :goto_8
    invoke-static {v14, v15}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v9

    move-object/from16 v14, p19

    .line 1357
    invoke-interface {v14, v10, v7, v9}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_9
    add-int/lit8 v8, v8, 0x1

    move v7, v13

    goto :goto_5

    :cond_10
    return-void
.end method

.method private final drawTrackPath-Cx2C_VA(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJFF)V
    .locals 12

    move/from16 v0, p8

    .line 1372
    invoke-static {v0, v0}, Landroidx/compose/ui/geometry/CornerRadiusKt;->CornerRadius(FF)J

    move-result-wide v7

    move/from16 v0, p9

    .line 1373
    invoke-static {v0, v0}, Landroidx/compose/ui/geometry/CornerRadiusKt;->CornerRadius(FF)J

    move-result-wide v5

    .line 1376
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v0

    invoke-static/range {p4 .. p5}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v2

    invoke-static/range {p4 .. p5}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v3

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/SizeKt;->Size(FF)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/geometry/RectKt;->Rect-tz77jQw(JJ)Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    move-wide v1, v7

    move-wide v3, v5

    .line 1375
    invoke-static/range {v0 .. v8}, Landroidx/compose/ui/geometry/RoundRectKt;->RoundRect-ZAM2FJo(Landroidx/compose/ui/geometry/Rect;JJJJ)Landroidx/compose/ui/geometry/RoundRect;

    move-result-object v0

    .line 1382
    sget-object v11, Landroidx/compose/material3/SliderDefaults;->trackPath:Landroidx/compose/ui/graphics/Path;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v11, v0, v1, v2, v1}, Landroidx/compose/ui/graphics/Path;->addRoundRect$default(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/geometry/RoundRect;Landroidx/compose/ui/graphics/Path$Direction;ILjava/lang/Object;)V

    const/16 v9, 0x3c

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    move-object v2, v11

    move-wide/from16 v3, p6

    .line 1383
    invoke-static/range {v1 .. v10}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawPath-LG529CI$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Path;JFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 1384
    invoke-interface {v11}, Landroidx/compose/ui/graphics/Path;->rewind()V

    return-void
.end method


# virtual methods
.method public final Thumb-9LiSoMs(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SliderColors;ZJLandroidx/compose/runtime/Composer;II)V
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v8, p8

    const v0, -0x114d4821

    move-object/from16 v3, p7

    .line 946
    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v3

    and-int/lit8 v4, p9, 0x1

    if-eqz v4, :cond_0

    or-int/lit8 v4, v8, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v4, v8, 0x6

    if-nez v4, :cond_2

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v4, v8

    goto :goto_1

    :cond_2
    move v4, v8

    :goto_1
    and-int/lit8 v7, p9, 0x2

    if-eqz v7, :cond_4

    or-int/lit8 v4, v4, 0x30

    :cond_3
    move-object/from16 v9, p2

    goto :goto_3

    :cond_4
    and-int/lit8 v9, v8, 0x30

    if-nez v9, :cond_3

    move-object/from16 v9, p2

    invoke-interface {v3, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/16 v10, 0x20

    goto :goto_2

    :cond_5
    const/16 v10, 0x10

    :goto_2
    or-int/2addr v4, v10

    :goto_3
    and-int/lit16 v10, v8, 0x180

    if-nez v10, :cond_8

    and-int/lit8 v10, p9, 0x4

    if-nez v10, :cond_6

    move-object/from16 v10, p3

    invoke-interface {v3, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    const/16 v11, 0x100

    goto :goto_4

    :cond_6
    move-object/from16 v10, p3

    :cond_7
    const/16 v11, 0x80

    :goto_4
    or-int/2addr v4, v11

    goto :goto_5

    :cond_8
    move-object/from16 v10, p3

    :goto_5
    and-int/lit8 v11, p9, 0x8

    if-eqz v11, :cond_a

    or-int/lit16 v4, v4, 0xc00

    :cond_9
    move/from16 v12, p4

    goto :goto_7

    :cond_a
    and-int/lit16 v12, v8, 0xc00

    if-nez v12, :cond_9

    move/from16 v12, p4

    invoke-interface {v3, v12}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v13

    if-eqz v13, :cond_b

    const/16 v13, 0x800

    goto :goto_6

    :cond_b
    const/16 v13, 0x400

    :goto_6
    or-int/2addr v4, v13

    :goto_7
    and-int/lit8 v13, p9, 0x10

    if-eqz v13, :cond_d

    or-int/lit16 v4, v4, 0x6000

    :cond_c
    move-wide/from16 v14, p5

    goto :goto_9

    :cond_d
    and-int/lit16 v14, v8, 0x6000

    if-nez v14, :cond_c

    move-wide/from16 v14, p5

    invoke-interface {v3, v14, v15}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v16

    if-eqz v16, :cond_e

    const/16 v16, 0x4000

    goto :goto_8

    :cond_e
    const/16 v16, 0x2000

    :goto_8
    or-int v4, v4, v16

    :goto_9
    and-int/lit8 v16, p9, 0x20

    const/high16 v17, 0x30000

    if-eqz v16, :cond_f

    or-int v4, v4, v17

    goto :goto_b

    :cond_f
    and-int v16, v8, v17

    if-nez v16, :cond_11

    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_10

    const/high16 v16, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v16, 0x10000

    :goto_a
    or-int v4, v4, v16

    :cond_11
    :goto_b
    const v16, 0x12493

    and-int v5, v4, v16

    const v6, 0x12492

    if-ne v5, v6, :cond_14

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v5

    if-nez v5, :cond_12

    goto :goto_d

    .line 973
    :cond_12
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    :cond_13
    :goto_c
    move-object v4, v10

    move v5, v12

    move-wide v6, v14

    goto/16 :goto_12

    .line 946
    :cond_14
    :goto_d
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v5, v8, 0x1

    const/4 v6, 0x1

    if-eqz v5, :cond_16

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v5

    if-eqz v5, :cond_15

    goto :goto_e

    .line 945
    :cond_15
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v5, p9, 0x4

    if-eqz v5, :cond_1a

    and-int/lit16 v4, v4, -0x381

    goto :goto_f

    :cond_16
    :goto_e
    if-eqz v7, :cond_17

    .line 942
    sget-object v5, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v9, v5

    :cond_17
    and-int/lit8 v5, p9, 0x4

    if-eqz v5, :cond_18

    shr-int/lit8 v5, v4, 0xf

    and-int/lit8 v5, v5, 0xe

    .line 943
    invoke-virtual {v1, v3, v5}, Landroidx/compose/material3/SliderDefaults;->colors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/SliderColors;

    move-result-object v5

    and-int/lit16 v4, v4, -0x381

    move-object v10, v5

    :cond_18
    if-eqz v11, :cond_19

    move v12, v6

    :cond_19
    if-eqz v13, :cond_1a

    .line 945
    invoke-static {}, Landroidx/compose/material3/SliderKt;->access$getThumbSize$p()J

    move-result-wide v13

    move-wide v14, v13

    :cond_1a
    :goto_f
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_1b

    const/4 v5, -0x1

    const-string v7, "androidx.compose.material3.SliderDefaults.Thumb (Slider.kt:945)"

    .line 946
    invoke-static {v0, v4, v5, v7}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 1166
    :cond_1b
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .line 1167
    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v0, v7, :cond_1c

    .line 947
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateListOf()Landroidx/compose/runtime/snapshots/SnapshotStateList;

    move-result-object v0

    .line 1169
    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 947
    :cond_1c
    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    and-int/lit8 v4, v4, 0xe

    const/4 v7, 0x0

    const/4 v11, 0x4

    if-ne v4, v11, :cond_1d

    goto :goto_10

    :cond_1d
    move v6, v7

    .line 1166
    :goto_10
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    const/4 v13, 0x0

    if-nez v6, :cond_1e

    .line 1167
    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v11, v5, :cond_1f

    .line 948
    :cond_1e
    new-instance v11, Landroidx/compose/material3/SliderDefaults$Thumb$1$1;

    invoke-direct {v11, v2, v0, v13}, Landroidx/compose/material3/SliderDefaults$Thumb$1$1;-><init>(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/snapshots/SnapshotStateList;Lkotlin/coroutines/Continuation;)V

    .line 1169
    invoke-interface {v3, v11}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 948
    :cond_1f
    check-cast v11, Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v11, v3, v4}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 962
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    .line 963
    invoke-static {v14, v15}, Landroidx/compose/ui/unit/DpSize;->getWidth-D9Ej5fM(J)F

    move-result v0

    const/4 v4, 0x2

    int-to-float v5, v4

    div-float/2addr v0, v5

    .line 2272
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v19

    const/16 v21, 0x2

    const/16 v22, 0x0

    const/16 v20, 0x0

    move-wide/from16 v17, v14

    .line 963
    invoke-static/range {v17 .. v22}, Landroidx/compose/ui/unit/DpSize;->copy-DwJknco$default(JFFILjava/lang/Object;)J

    move-result-wide v4

    goto :goto_11

    :cond_20
    move-wide v4, v14

    .line 969
    :goto_11
    invoke-static {v9, v4, v5}, Landroidx/compose/foundation/layout/SizeKt;->size-6HolHcs(Landroidx/compose/ui/Modifier;J)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/4 v4, 0x2

    .line 970
    invoke-static {v0, v2, v7, v4, v13}, Landroidx/compose/foundation/HoverableKt;->hoverable$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 971
    invoke-virtual {v10, v12}, Landroidx/compose/material3/SliderColors;->thumbColor-vNxB06k$material3_release(Z)J

    move-result-wide v4

    sget-object v6, Landroidx/compose/material3/tokens/SliderTokens;->INSTANCE:Landroidx/compose/material3/tokens/SliderTokens;

    invoke-virtual {v6}, Landroidx/compose/material3/tokens/SliderTokens;->getHandleShape()Landroidx/compose/material3/tokens/ShapeKeyTokens;

    move-result-object v6

    const/4 v11, 0x6

    invoke-static {v6, v3, v11}, Landroidx/compose/material3/ShapesKt;->getValue(Landroidx/compose/material3/tokens/ShapeKeyTokens;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v6

    invoke-static {v0, v4, v5, v6}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 967
    invoke-static {v0, v3, v7}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto/16 :goto_c

    .line 973
    :goto_12
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v10

    if-eqz v10, :cond_21

    new-instance v11, Landroidx/compose/material3/SliderDefaults$Thumb$2;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v9

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Landroidx/compose/material3/SliderDefaults$Thumb$2;-><init>(Landroidx/compose/material3/SliderDefaults;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SliderColors;ZJII)V

    invoke-interface {v10, v11}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_21
    return-void
.end method

.method public final Track-4EFweAY(Landroidx/compose/material3/SliderState;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SliderColors;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;FFLandroidx/compose/runtime/Composer;II)V
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v15, p10

    move/from16 v14, p11

    const v2, 0x2fab503

    move-object/from16 v3, p9

    .line 1124
    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v13

    and-int/lit8 v3, v14, 0x1

    if-eqz v3, :cond_0

    or-int/lit8 v3, v15, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v15, 0x6

    if-nez v3, :cond_2

    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v15

    goto :goto_1

    :cond_2
    move v3, v15

    :goto_1
    and-int/lit8 v4, v14, 0x2

    if-eqz v4, :cond_4

    or-int/lit8 v3, v3, 0x30

    :cond_3
    move-object/from16 v5, p2

    goto :goto_3

    :cond_4
    and-int/lit8 v5, v15, 0x30

    if-nez v5, :cond_3

    move-object/from16 v5, p2

    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x20

    goto :goto_2

    :cond_5
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v3, v6

    :goto_3
    and-int/lit8 v6, v14, 0x4

    if-eqz v6, :cond_7

    or-int/lit16 v3, v3, 0x180

    :cond_6
    move/from16 v8, p3

    goto :goto_5

    :cond_7
    and-int/lit16 v8, v15, 0x180

    if-nez v8, :cond_6

    move/from16 v8, p3

    invoke-interface {v13, v8}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v9

    if-eqz v9, :cond_8

    const/16 v9, 0x100

    goto :goto_4

    :cond_8
    const/16 v9, 0x80

    :goto_4
    or-int/2addr v3, v9

    :goto_5
    and-int/lit16 v9, v15, 0xc00

    if-nez v9, :cond_b

    and-int/lit8 v9, v14, 0x8

    if-nez v9, :cond_9

    move-object/from16 v9, p4

    invoke-interface {v13, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    const/16 v11, 0x800

    goto :goto_6

    :cond_9
    move-object/from16 v9, p4

    :cond_a
    const/16 v11, 0x400

    :goto_6
    or-int/2addr v3, v11

    goto :goto_7

    :cond_b
    move-object/from16 v9, p4

    :goto_7
    and-int/lit16 v11, v15, 0x6000

    if-nez v11, :cond_e

    and-int/lit8 v11, v14, 0x10

    if-nez v11, :cond_c

    move-object/from16 v11, p5

    invoke-interface {v13, v11}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_d

    const/16 v16, 0x4000

    goto :goto_8

    :cond_c
    move-object/from16 v11, p5

    :cond_d
    const/16 v16, 0x2000

    :goto_8
    or-int v3, v3, v16

    goto :goto_9

    :cond_e
    move-object/from16 v11, p5

    :goto_9
    and-int/lit8 v16, v14, 0x20

    const/high16 v17, 0x30000

    if-eqz v16, :cond_f

    or-int v3, v3, v17

    move-object/from16 v12, p6

    goto :goto_b

    :cond_f
    and-int v17, v15, v17

    move-object/from16 v12, p6

    if-nez v17, :cond_11

    invoke-interface {v13, v12}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_10

    const/high16 v18, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v18, 0x10000

    :goto_a
    or-int v3, v3, v18

    :cond_11
    :goto_b
    and-int/lit8 v18, v14, 0x40

    const/high16 v20, 0x180000

    if-eqz v18, :cond_12

    or-int v3, v3, v20

    move/from16 v2, p7

    goto :goto_d

    :cond_12
    and-int v20, v15, v20

    move/from16 v2, p7

    if-nez v20, :cond_14

    invoke-interface {v13, v2}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v21

    if-eqz v21, :cond_13

    const/high16 v21, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v21, 0x80000

    :goto_c
    or-int v3, v3, v21

    :cond_14
    :goto_d
    and-int/lit16 v7, v14, 0x80

    const/high16 v22, 0xc00000

    if-eqz v7, :cond_15

    or-int v3, v3, v22

    move/from16 v10, p8

    goto :goto_f

    :cond_15
    and-int v22, v15, v22

    move/from16 v10, p8

    if-nez v22, :cond_17

    invoke-interface {v13, v10}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v23

    if-eqz v23, :cond_16

    const/high16 v23, 0x800000

    goto :goto_e

    :cond_16
    const/high16 v23, 0x400000

    :goto_e
    or-int v3, v3, v23

    :cond_17
    :goto_f
    and-int/lit16 v2, v14, 0x100

    if-eqz v2, :cond_18

    const/high16 v2, 0x6000000

    :goto_10
    or-int/2addr v3, v2

    goto :goto_11

    :cond_18
    const/high16 v2, 0x6000000

    and-int/2addr v2, v15

    if-nez v2, :cond_1a

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    const/high16 v2, 0x4000000

    goto :goto_10

    :cond_19
    const/high16 v2, 0x2000000

    goto :goto_10

    :cond_1a
    :goto_11
    const v2, 0x2492493

    and-int/2addr v2, v3

    const v5, 0x2492492

    if-ne v2, v5, :cond_1c

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_1b

    goto :goto_12

    .line 1153
    :cond_1b
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v3, p2

    move v4, v8

    move-object v5, v9

    move v9, v10

    move-object v6, v11

    move-object v7, v12

    move-object v0, v13

    move/from16 v8, p7

    goto/16 :goto_26

    .line 1124
    :cond_1c
    :goto_12
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v2, v15, 0x1

    const/4 v5, 0x1

    if-eqz v2, :cond_20

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v2

    if-eqz v2, :cond_1d

    goto :goto_13

    .line 1123
    :cond_1d
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v2, v14, 0x8

    if-eqz v2, :cond_1e

    and-int/lit16 v3, v3, -0x1c01

    :cond_1e
    and-int/lit8 v2, v14, 0x10

    if-eqz v2, :cond_1f

    const v2, -0xe001

    and-int/2addr v3, v2

    :cond_1f
    move/from16 v18, p7

    move/from16 v21, v10

    move-object/from16 v16, v12

    move-object/from16 v12, p2

    move v10, v8

    move-object v8, v11

    move-object v11, v9

    goto/16 :goto_1c

    :cond_20
    :goto_13
    if-eqz v4, :cond_21

    .line 1108
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_14

    :cond_21
    move-object/from16 v2, p2

    :goto_14
    if-eqz v6, :cond_22

    move v8, v5

    :cond_22
    and-int/lit8 v4, v14, 0x8

    if-eqz v4, :cond_23

    shr-int/lit8 v4, v3, 0x18

    and-int/lit8 v4, v4, 0xe

    .line 1110
    invoke-virtual {v1, v13, v4}, Landroidx/compose/material3/SliderDefaults;->colors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/SliderColors;

    move-result-object v4

    and-int/lit16 v3, v3, -0x1c01

    goto :goto_15

    :cond_23
    move-object v4, v9

    :goto_15
    and-int/lit8 v6, v14, 0x10

    if-eqz v6, :cond_2a

    and-int/lit16 v6, v3, 0x1c00

    xor-int/lit16 v6, v6, 0xc00

    const/16 v9, 0x800

    if-le v6, v9, :cond_24

    .line 1111
    invoke-interface {v13, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_25

    :cond_24
    and-int/lit16 v6, v3, 0xc00

    if-ne v6, v9, :cond_26

    :cond_25
    move v6, v5

    goto :goto_16

    :cond_26
    const/4 v6, 0x0

    :goto_16
    and-int/lit16 v9, v3, 0x380

    const/16 v11, 0x100

    if-ne v9, v11, :cond_27

    move v9, v5

    goto :goto_17

    :cond_27
    const/4 v9, 0x0

    :goto_17
    or-int/2addr v6, v9

    .line 1166
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    if-nez v6, :cond_28

    .line 1167
    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v9, v6, :cond_29

    .line 1111
    :cond_28
    new-instance v9, Landroidx/compose/material3/SliderDefaults$Track$4$1;

    invoke-direct {v9, v4, v8}, Landroidx/compose/material3/SliderDefaults$Track$4$1;-><init>(Landroidx/compose/material3/SliderColors;Z)V

    .line 1169
    invoke-interface {v13, v9}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1111
    :cond_29
    move-object v6, v9

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const v9, -0xe001

    and-int/2addr v3, v9

    goto :goto_18

    :cond_2a
    move-object v6, v11

    :goto_18
    if-eqz v16, :cond_2b

    .line 1119
    sget-object v9, Landroidx/compose/material3/SliderDefaults$Track$5;->INSTANCE:Landroidx/compose/material3/SliderDefaults$Track$5;

    goto :goto_19

    :cond_2b
    move-object v9, v12

    :goto_19
    if-eqz v18, :cond_2c

    .line 1122
    invoke-static {}, Landroidx/compose/material3/SliderKt;->access$getThumbTrackGapSize$p()F

    move-result v11

    goto :goto_1a

    :cond_2c
    move/from16 v11, p7

    :goto_1a
    if-eqz v7, :cond_2d

    .line 1123
    invoke-static {}, Landroidx/compose/material3/SliderKt;->access$getTrackInsideCornerSize$p()F

    move-result v7

    move-object v12, v2

    move/from16 v21, v7

    move v10, v8

    move-object/from16 v16, v9

    move/from16 v18, v11

    move-object v11, v4

    :goto_1b
    move-object v8, v6

    goto :goto_1c

    :cond_2d
    move-object v12, v2

    move-object/from16 v16, v9

    move/from16 v21, v10

    move/from16 v18, v11

    move-object v11, v4

    move v10, v8

    goto :goto_1b

    :goto_1c
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_2e

    const/4 v2, -0x1

    const-string v4, "androidx.compose.material3.SliderDefaults.Track (Slider.kt:1123)"

    const v6, 0x2fab503

    .line 1124
    invoke-static {v6, v3, v2, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2e
    const/4 v4, 0x0

    .line 1125
    invoke-virtual {v11, v10, v4}, Landroidx/compose/material3/SliderColors;->trackColor-WaAFU9c$material3_release(ZZ)J

    move-result-wide v6

    .line 1126
    invoke-virtual {v11, v10, v5}, Landroidx/compose/material3/SliderColors;->trackColor-WaAFU9c$material3_release(ZZ)J

    move-result-wide v14

    .line 1127
    invoke-virtual {v11, v10, v4}, Landroidx/compose/material3/SliderColors;->tickColor-WaAFU9c$material3_release(ZZ)J

    move-result-wide v1

    move-object/from16 v19, v8

    .line 1128
    invoke-virtual {v11, v10, v5}, Landroidx/compose/material3/SliderColors;->tickColor-WaAFU9c$material3_release(ZZ)J

    move-result-wide v8

    const/4 v4, 0x0

    move/from16 v22, v10

    const/4 v10, 0x0

    .line 1131
    invoke-static {v12, v4, v5, v10}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    .line 1132
    invoke-static {}, Landroidx/compose/material3/SliderKt;->getTrackHeight()F

    move-result v10

    invoke-static {v4, v10}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    .line 1133
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v10

    .line 75
    invoke-interface {v13, v10}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v10

    .line 1133
    sget-object v5, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne v10, v5, :cond_2f

    const/high16 v5, 0x43340000    # 180.0f

    goto :goto_1d

    :cond_2f
    const/4 v5, 0x0

    :goto_1d
    invoke-static {v4, v5}, Landroidx/compose/ui/draw/RotateKt;->rotate(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v10

    .line 1134
    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v13, v6, v7}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v5

    or-int/2addr v4, v5

    invoke-interface {v13, v14, v15}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v5

    or-int/2addr v4, v5

    invoke-interface {v13, v1, v2}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v5

    or-int/2addr v4, v5

    invoke-interface {v13, v8, v9}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v5

    or-int/2addr v4, v5

    const/high16 v5, 0x380000

    and-int/2addr v5, v3

    const/high16 v0, 0x100000

    if-ne v5, v0, :cond_30

    const/4 v0, 0x1

    goto :goto_1e

    :cond_30
    const/4 v0, 0x0

    :goto_1e
    or-int/2addr v0, v4

    const/high16 v4, 0x1c00000

    and-int/2addr v4, v3

    const/high16 v5, 0x800000

    if-ne v4, v5, :cond_31

    const/4 v4, 0x1

    goto :goto_1f

    :cond_31
    const/4 v4, 0x0

    :goto_1f
    or-int/2addr v0, v4

    const v4, 0xe000

    and-int/2addr v4, v3

    xor-int/lit16 v4, v4, 0x6000

    const/16 v5, 0x4000

    if-le v4, v5, :cond_33

    move-object/from16 v4, v19

    invoke-interface {v13, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_32

    goto :goto_20

    :cond_32
    move-wide/from16 p2, v1

    goto :goto_21

    :cond_33
    move-object/from16 v4, v19

    :goto_20
    move-wide/from16 p2, v1

    and-int/lit16 v1, v3, 0x6000

    if-ne v1, v5, :cond_34

    :goto_21
    const/4 v1, 0x1

    goto :goto_22

    :cond_34
    const/4 v1, 0x0

    :goto_22
    or-int/2addr v0, v1

    const/high16 v1, 0x70000

    and-int/2addr v1, v3

    const/high16 v2, 0x20000

    if-ne v1, v2, :cond_35

    const/4 v5, 0x1

    goto :goto_23

    :cond_35
    const/4 v5, 0x0

    :goto_23
    or-int/2addr v0, v5

    .line 1166
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_37

    .line 1167
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v1, v0, :cond_36

    goto :goto_24

    :cond_36
    move-object/from16 v17, v4

    move-object/from16 v24, v10

    move-object/from16 v20, v11

    move-object v0, v13

    move/from16 v19, v22

    move-object/from16 v22, v12

    goto :goto_25

    .line 1134
    :cond_37
    :goto_24
    new-instance v1, Landroidx/compose/material3/SliderDefaults$Track$6$1;

    move-wide/from16 v19, p2

    move-object v2, v1

    move-object/from16 v3, p1

    move-object/from16 v17, v4

    const/4 v0, 0x0

    move-wide v4, v6

    move-wide v6, v14

    move-wide v14, v8

    move-wide/from16 v8, v19

    move-object/from16 v24, v10

    move-object/from16 v20, v11

    move/from16 v19, v22

    move-wide v10, v14

    move-object/from16 v22, v12

    move/from16 v12, v18

    move-object v15, v13

    move/from16 v13, v21

    move-object/from16 v14, v17

    move-object v0, v15

    move-object/from16 v15, v16

    invoke-direct/range {v2 .. v15}, Landroidx/compose/material3/SliderDefaults$Track$6$1;-><init>(Landroidx/compose/material3/SliderState;JJJJFFLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;)V

    .line 1169
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1134
    :goto_25
    check-cast v1, Lkotlin/jvm/functions/Function1;

    move-object/from16 v3, v24

    const/4 v2, 0x0

    .line 1129
    invoke-static {v3, v1, v0, v2}, Landroidx/compose/foundation/CanvasKt;->Canvas(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_38
    move-object/from16 v7, v16

    move-object/from16 v6, v17

    move/from16 v8, v18

    move/from16 v4, v19

    move-object/from16 v5, v20

    move/from16 v9, v21

    move-object/from16 v3, v22

    .line 1153
    :goto_26
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v12

    if-eqz v12, :cond_39

    new-instance v13, Landroidx/compose/material3/SliderDefaults$Track$7;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Landroidx/compose/material3/SliderDefaults$Track$7;-><init>(Landroidx/compose/material3/SliderDefaults;Landroidx/compose/material3/SliderState;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SliderColors;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;FFII)V

    invoke-interface {v12, v13}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_39
    return-void
.end method

.method public final colors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/SliderColors;
    .locals 3

    .line 841
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "androidx.compose.material3.SliderDefaults.colors (Slider.kt:840)"

    const v2, 0x52089c20

    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    sget-object p2, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    const/4 v0, 0x6

    invoke-virtual {p2, p1, v0}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/material3/SliderDefaults;->getDefaultSliderColors$material3_release(Landroidx/compose/material3/ColorScheme;)Landroidx/compose/material3/SliderColors;

    move-result-object p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1
    return-object p0
.end method

.method public final getDefaultSliderColors$material3_release(Landroidx/compose/material3/ColorScheme;)Landroidx/compose/material3/SliderColors;
    .locals 33

    move-object/from16 v0, p1

    .line 898
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/material3/ColorScheme;->getDefaultSliderColorsCached$material3_release()Landroidx/compose/material3/SliderColors;

    move-result-object v1

    if-nez v1, :cond_0

    .line 899
    new-instance v1, Landroidx/compose/material3/SliderColors;

    move-object v2, v1

    .line 900
    sget-object v21, Landroidx/compose/material3/tokens/SliderTokens;->INSTANCE:Landroidx/compose/material3/tokens/SliderTokens;

    invoke-virtual/range {v21 .. v21}, Landroidx/compose/material3/tokens/SliderTokens;->getHandleColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v3

    invoke-static {v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v3

    .line 901
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/material3/tokens/SliderTokens;->getActiveTrackColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v5

    invoke-static {v0, v5}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v5

    .line 902
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/material3/tokens/SliderTokens;->getInactiveTrackColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v7

    invoke-static {v0, v7}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v7

    .line 903
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/material3/tokens/SliderTokens;->getInactiveTrackColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v9

    invoke-static {v0, v9}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v9

    .line 904
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/material3/tokens/SliderTokens;->getActiveTrackColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v11

    invoke-static {v0, v11}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v11

    .line 906
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/material3/tokens/SliderTokens;->getDisabledHandleColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v13

    invoke-static {v0, v13}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v22

    .line 907
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/material3/tokens/SliderTokens;->getDisabledHandleOpacity()F

    move-result v24

    const/16 v28, 0xe

    const/16 v29, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-static/range {v22 .. v29}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v13

    move-object/from16 p0, v1

    move-object/from16 v24, v2

    .line 908
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/material3/ColorScheme;->getSurface-0d7_KjU()J

    move-result-wide v1

    invoke-static {v13, v14, v1, v2}, Landroidx/compose/ui/graphics/ColorKt;->compositeOver--OWjLjI(JJ)J

    move-result-wide v13

    .line 910
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/material3/tokens/SliderTokens;->getDisabledActiveTrackColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v25

    .line 911
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/material3/tokens/SliderTokens;->getDisabledActiveTrackOpacity()F

    move-result v27

    const/16 v31, 0xe

    const/16 v32, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    invoke-static/range {v25 .. v32}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v15

    .line 913
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/material3/tokens/SliderTokens;->getDisabledInactiveTrackColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v25

    .line 914
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/material3/tokens/SliderTokens;->getDisabledInactiveTrackOpacity()F

    move-result v27

    invoke-static/range {v25 .. v32}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v17

    .line 916
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/material3/tokens/SliderTokens;->getDisabledInactiveTrackColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v25

    .line 917
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/material3/tokens/SliderTokens;->getDisabledInactiveTrackOpacity()F

    move-result v27

    invoke-static/range {v25 .. v32}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v19

    .line 919
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/material3/tokens/SliderTokens;->getDisabledActiveTrackColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v25

    .line 920
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/material3/tokens/SliderTokens;->getDisabledActiveTrackOpacity()F

    move-result v27

    invoke-static/range {v25 .. v32}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v21

    const/16 v23, 0x0

    move-object/from16 v2, v24

    .line 899
    invoke-direct/range {v2 .. v23}, Landroidx/compose/material3/SliderColors;-><init>(JJJJJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v1, p0

    .line 922
    invoke-virtual {v0, v1}, Landroidx/compose/material3/ColorScheme;->setDefaultSliderColorsCached$material3_release(Landroidx/compose/material3/SliderColors;)V

    :cond_0
    return-object v1
.end method

.method public final getTickSize-D9Ej5fM()F
    .locals 0

    .line 1395
    sget p0, Landroidx/compose/material3/SliderDefaults;->TickSize:F

    return p0
.end method

.method public final getTrackStopIndicatorSize-D9Ej5fM()F
    .locals 0

    .line 1392
    sget p0, Landroidx/compose/material3/SliderDefaults;->TrackStopIndicatorSize:F

    return p0
.end method
