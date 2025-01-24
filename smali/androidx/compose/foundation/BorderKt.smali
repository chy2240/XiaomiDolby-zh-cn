.class public abstract Landroidx/compose/foundation/BorderKt;
.super Ljava/lang/Object;
.source "Border.kt"


# direct methods
.method public static final synthetic access$createRoundRectPath(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/geometry/RoundRect;FZ)Landroidx/compose/ui/graphics/Path;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/BorderKt;->createRoundRectPath(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/geometry/RoundRect;FZ)Landroidx/compose/ui/graphics/Path;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$drawContentWithoutBorder(Landroidx/compose/ui/draw/CacheDrawScope;)Landroidx/compose/ui/draw/DrawResult;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/foundation/BorderKt;->drawContentWithoutBorder(Landroidx/compose/ui/draw/CacheDrawScope;)Landroidx/compose/ui/draw/DrawResult;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$drawRectBorder-NsqcLGU(Landroidx/compose/ui/draw/CacheDrawScope;Landroidx/compose/ui/graphics/Brush;JJZF)Landroidx/compose/ui/draw/DrawResult;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p7}, Landroidx/compose/foundation/BorderKt;->drawRectBorder-NsqcLGU(Landroidx/compose/ui/draw/CacheDrawScope;Landroidx/compose/ui/graphics/Brush;JJZF)Landroidx/compose/ui/draw/DrawResult;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$shrink-Kibmq7A(JF)J
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/BorderKt;->shrink-Kibmq7A(JF)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final border(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;
    .locals 1

    .line 68
    invoke-virtual {p1}, Landroidx/compose/foundation/BorderStroke;->getWidth-D9Ej5fM()F

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/foundation/BorderStroke;->getBrush()Landroidx/compose/ui/graphics/Brush;

    move-result-object p1

    invoke-static {p0, v0, p1, p2}, Landroidx/compose/foundation/BorderKt;->border-ziNgDLE(Landroidx/compose/ui/Modifier;FLandroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final border-ziNgDLE(Landroidx/compose/ui/Modifier;FLandroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;
    .locals 2

    .line 95
    new-instance v0, Landroidx/compose/foundation/BorderModifierNodeElement;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Landroidx/compose/foundation/BorderModifierNodeElement;-><init>(FLandroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Shape;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method private static final createInsetRoundedRect(FLandroidx/compose/ui/geometry/RoundRect;)Landroidx/compose/ui/geometry/RoundRect;
    .locals 15

    move v2, p0

    .line 454
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/geometry/RoundRect;->getWidth()F

    move-result v0

    sub-float v3, v0, v2

    .line 455
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/geometry/RoundRect;->getHeight()F

    move-result v0

    sub-float v4, v0, v2

    .line 456
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/geometry/RoundRect;->getTopLeftCornerRadius-kKHJgLs()J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Landroidx/compose/foundation/BorderKt;->shrink-Kibmq7A(JF)J

    move-result-wide v5

    .line 457
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/geometry/RoundRect;->getTopRightCornerRadius-kKHJgLs()J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Landroidx/compose/foundation/BorderKt;->shrink-Kibmq7A(JF)J

    move-result-wide v7

    .line 458
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/geometry/RoundRect;->getBottomLeftCornerRadius-kKHJgLs()J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Landroidx/compose/foundation/BorderKt;->shrink-Kibmq7A(JF)J

    move-result-wide v11

    .line 459
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/geometry/RoundRect;->getBottomRightCornerRadius-kKHJgLs()J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Landroidx/compose/foundation/BorderKt;->shrink-Kibmq7A(JF)J

    move-result-wide v9

    .line 451
    new-instance v14, Landroidx/compose/ui/geometry/RoundRect;

    const/4 v13, 0x0

    move-object v0, v14

    move v1, p0

    invoke-direct/range {v0 .. v13}, Landroidx/compose/ui/geometry/RoundRect;-><init>(FFFFJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v14
.end method

.method private static final createRoundRectPath(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/geometry/RoundRect;FZ)Landroidx/compose/ui/graphics/Path;
    .locals 2

    .line 441
    invoke-interface {p0}, Landroidx/compose/ui/graphics/Path;->reset()V

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 442
    invoke-static {p0, p1, v0, v1, v0}, Landroidx/compose/ui/graphics/Path;->addRoundRect$default(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/geometry/RoundRect;Landroidx/compose/ui/graphics/Path$Direction;ILjava/lang/Object;)V

    if-nez p3, :cond_0

    .line 445
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/Path;

    move-result-object p3

    invoke-static {p2, p1}, Landroidx/compose/foundation/BorderKt;->createInsetRoundedRect(FLandroidx/compose/ui/geometry/RoundRect;)Landroidx/compose/ui/geometry/RoundRect;

    move-result-object p1

    invoke-static {p3, p1, v0, v1, v0}, Landroidx/compose/ui/graphics/Path;->addRoundRect$default(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/geometry/RoundRect;Landroidx/compose/ui/graphics/Path$Direction;ILjava/lang/Object;)V

    .line 446
    sget-object p1, Landroidx/compose/ui/graphics/PathOperation;->Companion:Landroidx/compose/ui/graphics/PathOperation$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/PathOperation$Companion;->getDifference-b3I0S0c()I

    move-result p1

    invoke-interface {p0, p0, p3, p1}, Landroidx/compose/ui/graphics/Path;->op-N5in7k0(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Path;I)Z

    :cond_0
    return-object p0
.end method

.method private static final drawContentWithoutBorder(Landroidx/compose/ui/draw/CacheDrawScope;)Landroidx/compose/ui/draw/DrawResult;
    .locals 1

    .line 406
    sget-object v0, Landroidx/compose/foundation/BorderKt$drawContentWithoutBorder$1;->INSTANCE:Landroidx/compose/foundation/BorderKt$drawContentWithoutBorder$1;

    invoke-virtual {p0, v0}, Landroidx/compose/ui/draw/CacheDrawScope;->onDrawWithContent(Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/draw/DrawResult;

    move-result-object p0

    return-object p0
.end method

.method private static final drawRectBorder-NsqcLGU(Landroidx/compose/ui/draw/CacheDrawScope;Landroidx/compose/ui/graphics/Brush;JJZF)Landroidx/compose/ui/draw/DrawResult;
    .locals 16

    if-eqz p6, :cond_0

    .line 422
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v0

    move-wide v4, v0

    goto :goto_0

    :cond_0
    move-wide/from16 v4, p2

    :goto_0
    if-eqz p6, :cond_1

    .line 423
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/draw/CacheDrawScope;->getSize-NH-jbRc()J

    move-result-wide v0

    move-wide v6, v0

    goto :goto_1

    :cond_1
    move-wide/from16 v6, p4

    :goto_1
    if-eqz p6, :cond_2

    .line 424
    sget-object v0, Landroidx/compose/ui/graphics/drawscope/Fill;->INSTANCE:Landroidx/compose/ui/graphics/drawscope/Fill;

    move-object v8, v0

    goto :goto_2

    :cond_2
    new-instance v0, Landroidx/compose/ui/graphics/drawscope/Stroke;

    const/16 v14, 0x1e

    const/4 v15, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, v0

    move/from16 v9, p7

    invoke-direct/range {v8 .. v15}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIILandroidx/compose/ui/graphics/PathEffect;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 425
    :goto_2
    new-instance v0, Landroidx/compose/foundation/BorderKt$drawRectBorder$1;

    move-object v2, v0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Landroidx/compose/foundation/BorderKt$drawRectBorder$1;-><init>(Landroidx/compose/ui/graphics/Brush;JJLandroidx/compose/ui/graphics/drawscope/DrawStyle;)V

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Landroidx/compose/ui/draw/CacheDrawScope;->onDrawWithContent(Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/draw/DrawResult;

    move-result-object v0

    return-object v0
.end method

.method private static final shrink-Kibmq7A(JF)J
    .locals 5

    const/16 v0, 0x20

    shr-long v1, p0, v0

    long-to-int v1, v1

    .line 22
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    sub-float/2addr v1, p2

    const/4 v2, 0x0

    .line 467
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const-wide v3, 0xffffffffL

    and-long/2addr p0, v3

    long-to-int p0, p0

    .line 22
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    sub-float/2addr p0, p2

    .line 467
    invoke-static {v2, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    .line 53
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long p1, p1

    .line 54
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v1, p0

    shl-long p0, p1, v0

    and-long v0, v1, v3

    or-long/2addr p0, v0

    .line 33
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/CornerRadius;->constructor-impl(J)J

    move-result-wide p0

    return-wide p0
.end method
