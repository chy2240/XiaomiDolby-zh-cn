.class public abstract Landroidx/compose/ui/graphics/OutlineKt;
.super Ljava/lang/Object;
.source "Outline.kt"


# direct methods
.method public static final drawOutline-hn5TExg(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Outline;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V
    .locals 16

    move-object/from16 v0, p1

    .line 227
    instance-of v1, v0, Landroidx/compose/ui/graphics/Outline$Rectangle;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/compose/ui/graphics/Outline$Rectangle;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Outline$Rectangle;->getRect()Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    .line 186
    invoke-static {v0}, Landroidx/compose/ui/graphics/OutlineKt;->topLeft(Landroidx/compose/ui/geometry/Rect;)J

    move-result-wide v3

    invoke-static {v0}, Landroidx/compose/ui/graphics/OutlineKt;->size(Landroidx/compose/ui/geometry/Rect;)J

    move-result-wide v5

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    invoke-interface/range {v1 .. v10}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawRect-AsUm42w(Landroidx/compose/ui/graphics/Brush;JJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V

    goto :goto_1

    .line 228
    :cond_0
    instance-of v1, v0, Landroidx/compose/ui/graphics/Outline$Rounded;

    if-eqz v1, :cond_2

    .line 229
    check-cast v0, Landroidx/compose/ui/graphics/Outline$Rounded;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Outline$Rounded;->getRoundRectPath$ui_graphics_release()Landroidx/compose/ui/graphics/Path;

    move-result-object v2

    if-eqz v2, :cond_1

    :goto_0
    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    .line 201
    invoke-interface/range {v1 .. v7}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawPath-GBMwjPU(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V

    goto :goto_1

    .line 237
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Outline$Rounded;->getRoundRect()Landroidx/compose/ui/geometry/RoundRect;

    move-result-object v0

    .line 189
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/RoundRect;->getBottomLeftCornerRadius-kKHJgLs()J

    move-result-wide v1

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    .line 22
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    .line 192
    invoke-static {v0}, Landroidx/compose/ui/graphics/OutlineKt;->topLeft(Landroidx/compose/ui/geometry/RoundRect;)J

    move-result-wide v6

    .line 193
    invoke-static {v0}, Landroidx/compose/ui/graphics/OutlineKt;->size(Landroidx/compose/ui/geometry/RoundRect;)J

    move-result-wide v8

    .line 53
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v4, v0

    .line 54
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    shl-long v2, v4, v3

    const-wide v4, 0xffffffffL

    and-long/2addr v0, v4

    or-long/2addr v0, v2

    .line 33
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/CornerRadius;->constructor-impl(J)J

    move-result-wide v10

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move/from16 v15, p6

    .line 190
    invoke-interface/range {v4 .. v15}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawRoundRect-ZuiqVtQ(Landroidx/compose/ui/graphics/Brush;JJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V

    goto :goto_1

    .line 240
    :cond_2
    instance-of v1, v0, Landroidx/compose/ui/graphics/Outline$Generic;

    if-eqz v1, :cond_3

    check-cast v0, Landroidx/compose/ui/graphics/Outline$Generic;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Outline$Generic;->getPath()Landroidx/compose/ui/graphics/Path;

    move-result-object v2

    goto :goto_0

    :goto_1
    return-void

    :cond_3
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method public static synthetic drawOutline-hn5TExg$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Outline;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V
    .locals 7

    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_0

    const/high16 p3, 0x3f800000    # 1.0f

    :cond_0
    move v3, p3

    and-int/lit8 p3, p7, 0x8

    if-eqz p3, :cond_1

    .line 179
    sget-object p4, Landroidx/compose/ui/graphics/drawscope/Fill;->INSTANCE:Landroidx/compose/ui/graphics/drawscope/Fill;

    :cond_1
    move-object v4, p4

    and-int/lit8 p3, p7, 0x10

    if-eqz p3, :cond_2

    const/4 p5, 0x0

    :cond_2
    move-object v5, p5

    and-int/lit8 p3, p7, 0x20

    if-eqz p3, :cond_3

    .line 181
    sget-object p3, Landroidx/compose/ui/graphics/drawscope/DrawScope;->Companion:Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;

    invoke-virtual {p3}, Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;->getDefaultBlendMode-0nO6VwU()I

    move-result p6

    :cond_3
    move v6, p6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 175
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/graphics/OutlineKt;->drawOutline-hn5TExg(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Outline;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V

    return-void
.end method

.method public static final drawOutline-wDX37Ww(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Outline;JFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V
    .locals 17

    move-object/from16 v0, p1

    .line 227
    instance-of v1, v0, Landroidx/compose/ui/graphics/Outline$Rectangle;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/compose/ui/graphics/Outline$Rectangle;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Outline$Rectangle;->getRect()Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    .line 146
    invoke-static {v0}, Landroidx/compose/ui/graphics/OutlineKt;->topLeft(Landroidx/compose/ui/geometry/Rect;)J

    move-result-wide v4

    invoke-static {v0}, Landroidx/compose/ui/graphics/OutlineKt;->size(Landroidx/compose/ui/geometry/Rect;)J

    move-result-wide v6

    move-object/from16 v1, p0

    move-wide/from16 v2, p2

    move/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move/from16 v11, p7

    invoke-interface/range {v1 .. v11}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawRect-n-J9OG0(JJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V

    goto :goto_1

    .line 228
    :cond_0
    instance-of v1, v0, Landroidx/compose/ui/graphics/Outline$Rounded;

    if-eqz v1, :cond_2

    .line 229
    check-cast v0, Landroidx/compose/ui/graphics/Outline$Rounded;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Outline$Rounded;->getRoundRectPath$ui_graphics_release()Landroidx/compose/ui/graphics/Path;

    move-result-object v2

    if-eqz v2, :cond_1

    :goto_0
    move-object/from16 v1, p0

    move-wide/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    .line 161
    invoke-interface/range {v1 .. v8}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawPath-LG529CI(Landroidx/compose/ui/graphics/Path;JFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V

    goto :goto_1

    .line 237
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Outline$Rounded;->getRoundRect()Landroidx/compose/ui/geometry/RoundRect;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/RoundRect;->getBottomLeftCornerRadius-kKHJgLs()J

    move-result-wide v1

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    .line 22
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    .line 152
    invoke-static {v0}, Landroidx/compose/ui/graphics/OutlineKt;->topLeft(Landroidx/compose/ui/geometry/RoundRect;)J

    move-result-wide v7

    .line 153
    invoke-static {v0}, Landroidx/compose/ui/graphics/OutlineKt;->size(Landroidx/compose/ui/geometry/RoundRect;)J

    move-result-wide v9

    .line 53
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v4, v0

    .line 54
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    shl-long v2, v4, v3

    const-wide v4, 0xffffffffL

    and-long/2addr v0, v4

    or-long/2addr v0, v2

    .line 33
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/CornerRadius;->constructor-impl(J)J

    move-result-wide v11

    move-object/from16 v4, p0

    move-wide/from16 v5, p2

    move-object/from16 v13, p5

    move/from16 v14, p4

    move-object/from16 v15, p6

    move/from16 v16, p7

    .line 150
    invoke-interface/range {v4 .. v16}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawRoundRect-u-Aw5IA(JJJJLandroidx/compose/ui/graphics/drawscope/DrawStyle;FLandroidx/compose/ui/graphics/ColorFilter;I)V

    goto :goto_1

    .line 240
    :cond_2
    instance-of v1, v0, Landroidx/compose/ui/graphics/Outline$Generic;

    if-eqz v1, :cond_3

    check-cast v0, Landroidx/compose/ui/graphics/Outline$Generic;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Outline$Generic;->getPath()Landroidx/compose/ui/graphics/Path;

    move-result-object v2

    goto :goto_0

    :goto_1
    return-void

    :cond_3
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method public static synthetic drawOutline-wDX37Ww$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Outline;JFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V
    .locals 9

    and-int/lit8 v0, p8, 0x4

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    move v5, v0

    goto :goto_0

    :cond_0
    move v5, p4

    :goto_0
    and-int/lit8 v0, p8, 0x8

    if-eqz v0, :cond_1

    .line 139
    sget-object v0, Landroidx/compose/ui/graphics/drawscope/Fill;->INSTANCE:Landroidx/compose/ui/graphics/drawscope/Fill;

    move-object v6, v0

    goto :goto_1

    :cond_1
    move-object v6, p5

    :goto_1
    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    move-object v7, v0

    goto :goto_2

    :cond_2
    move-object v7, p6

    :goto_2
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_3

    .line 141
    sget-object v0, Landroidx/compose/ui/graphics/drawscope/DrawScope;->Companion:Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;->getDefaultBlendMode-0nO6VwU()I

    move-result v0

    move v8, v0

    goto :goto_3

    :cond_3
    move/from16 v8, p7

    :goto_3
    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    .line 135
    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/graphics/OutlineKt;->drawOutline-wDX37Ww(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Outline;JFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V

    return-void
.end method

.method private static final size(Landroidx/compose/ui/geometry/Rect;)J
    .locals 6

    .line 56
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v1

    sub-float/2addr v0, v1

    .line 61
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result v1

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result p0

    sub-float/2addr v1, p0

    .line 53
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v2, p0

    .line 54
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v0, p0

    const/16 p0, 0x20

    shl-long/2addr v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v0, v4

    or-long/2addr v0, v2

    .line 33
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->constructor-impl(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static final size(Landroidx/compose/ui/geometry/RoundRect;)J
    .locals 6

    .line 214
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/RoundRect;->getWidth()F

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/RoundRect;->getHeight()F

    move-result p0

    .line 53
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    .line 54
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v2, p0

    const/16 p0, 0x20

    shl-long/2addr v0, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 33
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->constructor-impl(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static final topLeft(Landroidx/compose/ui/geometry/Rect;)J
    .locals 6

    .line 205
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result p0

    .line 53
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    .line 54
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v2, p0

    const/16 p0, 0x20

    shl-long/2addr v0, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 30
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static final topLeft(Landroidx/compose/ui/geometry/RoundRect;)J
    .locals 6

    .line 211
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/RoundRect;->getLeft()F

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/RoundRect;->getTop()F

    move-result p0

    .line 53
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    .line 54
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v2, p0

    const/16 p0, 0x20

    shl-long/2addr v0, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 30
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v0

    return-wide v0
.end method
