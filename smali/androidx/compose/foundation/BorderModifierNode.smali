.class public final Landroidx/compose/foundation/BorderModifierNode;
.super Landroidx/compose/ui/node/DelegatingNode;
.source "Border.kt"


# instance fields
.field private borderCache:Landroidx/compose/foundation/BorderCache;

.field private brush:Landroidx/compose/ui/graphics/Brush;

.field private final drawWithCacheModifierNode:Landroidx/compose/ui/draw/CacheDrawModifierNode;

.field private shape:Landroidx/compose/ui/graphics/Shape;

.field private width:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method private constructor <init>(FLandroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Shape;)V
    .locals 0

    .line 124
    invoke-direct {p0}, Landroidx/compose/ui/node/DelegatingNode;-><init>()V

    .line 132
    iput p1, p0, Landroidx/compose/foundation/BorderModifierNode;->width:F

    .line 140
    iput-object p2, p0, Landroidx/compose/foundation/BorderModifierNode;->brush:Landroidx/compose/ui/graphics/Brush;

    .line 148
    iput-object p3, p0, Landroidx/compose/foundation/BorderModifierNode;->shape:Landroidx/compose/ui/graphics/Shape;

    .line 158
    new-instance p1, Landroidx/compose/foundation/BorderModifierNode$drawWithCacheModifierNode$1;

    invoke-direct {p1, p0}, Landroidx/compose/foundation/BorderModifierNode$drawWithCacheModifierNode$1;-><init>(Landroidx/compose/foundation/BorderModifierNode;)V

    invoke-static {p1}, Landroidx/compose/ui/draw/DrawModifierKt;->CacheDrawModifierNode(Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/draw/CacheDrawModifierNode;

    move-result-object p1

    .line 157
    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/DelegatingNode;->delegate(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/draw/CacheDrawModifierNode;

    iput-object p1, p0, Landroidx/compose/foundation/BorderModifierNode;->drawWithCacheModifierNode:Landroidx/compose/ui/draw/CacheDrawModifierNode;

    return-void
.end method

.method public synthetic constructor <init>(FLandroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Shape;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/BorderModifierNode;-><init>(FLandroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Shape;)V

    return-void
.end method

.method public static final synthetic access$drawGenericBorder(Landroidx/compose/foundation/BorderModifierNode;Landroidx/compose/ui/draw/CacheDrawScope;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Outline$Generic;ZF)Landroidx/compose/ui/draw/DrawResult;
    .locals 0

    .line 120
    invoke-direct/range {p0 .. p5}, Landroidx/compose/foundation/BorderModifierNode;->drawGenericBorder(Landroidx/compose/ui/draw/CacheDrawScope;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Outline$Generic;ZF)Landroidx/compose/ui/draw/DrawResult;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$drawRoundRectBorder-JqoCqck(Landroidx/compose/foundation/BorderModifierNode;Landroidx/compose/ui/draw/CacheDrawScope;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Outline$Rounded;JJZF)Landroidx/compose/ui/draw/DrawResult;
    .locals 0

    .line 120
    invoke-direct/range {p0 .. p9}, Landroidx/compose/foundation/BorderModifierNode;->drawRoundRectBorder-JqoCqck(Landroidx/compose/ui/draw/CacheDrawScope;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Outline$Rounded;JJZF)Landroidx/compose/ui/draw/DrawResult;

    move-result-object p0

    return-object p0
.end method

.method private final drawGenericBorder(Landroidx/compose/ui/draw/CacheDrawScope;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Outline$Generic;ZF)Landroidx/compose/ui/draw/DrawResult;
    .locals 48

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v11, p2

    if-eqz p4, :cond_0

    .line 204
    new-instance v0, Landroidx/compose/foundation/BorderModifierNode$drawGenericBorder$1;

    move-object/from16 v2, p3

    invoke-direct {v0, v2, v11}, Landroidx/compose/foundation/BorderModifierNode$drawGenericBorder$1;-><init>(Landroidx/compose/ui/graphics/Outline$Generic;Landroidx/compose/ui/graphics/Brush;)V

    invoke-virtual {v1, v0}, Landroidx/compose/ui/draw/CacheDrawScope;->onDrawWithContent(Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/draw/DrawResult;

    move-result-object v0

    goto/16 :goto_5

    :cond_0
    move-object/from16 v2, p3

    .line 214
    instance-of v3, v11, Landroidx/compose/ui/graphics/SolidColor;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 215
    sget-object v3, Landroidx/compose/ui/graphics/ImageBitmapConfig;->Companion:Landroidx/compose/ui/graphics/ImageBitmapConfig$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/ImageBitmapConfig$Companion;->getAlpha8-_sVssgQ()I

    move-result v3

    .line 219
    sget-object v5, Landroidx/compose/ui/graphics/ColorFilter;->Companion:Landroidx/compose/ui/graphics/ColorFilter$Companion;

    move-object v6, v11

    check-cast v6, Landroidx/compose/ui/graphics/SolidColor;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/SolidColor;->getValue-0d7_KjU()J

    move-result-wide v12

    const/16 v18, 0xe

    const/16 v19, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v12 .. v19}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v6

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Landroidx/compose/ui/graphics/ColorFilter$Companion;->tint-xETnrds$default(Landroidx/compose/ui/graphics/ColorFilter$Companion;JIILjava/lang/Object;)Landroidx/compose/ui/graphics/ColorFilter;

    move-result-object v5

    move v14, v3

    move-object/from16 v19, v5

    goto :goto_0

    .line 221
    :cond_1
    sget-object v3, Landroidx/compose/ui/graphics/ImageBitmapConfig;->Companion:Landroidx/compose/ui/graphics/ImageBitmapConfig$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/ImageBitmapConfig$Companion;->getArgb8888-_sVssgQ()I

    move-result v3

    move v14, v3

    move-object/from16 v19, v4

    .line 225
    :goto_0
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/graphics/Outline$Generic;->getPath()Landroidx/compose/ui/graphics/Path;

    move-result-object v3

    invoke-interface {v3}, Landroidx/compose/ui/graphics/Path;->getBounds()Landroidx/compose/ui/geometry/Rect;

    move-result-object v10

    .line 228
    iget-object v3, v0, Landroidx/compose/foundation/BorderModifierNode;->borderCache:Landroidx/compose/foundation/BorderCache;

    if-nez v3, :cond_2

    .line 229
    new-instance v3, Landroidx/compose/foundation/BorderCache;

    const/16 v25, 0xf

    const/16 v26, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v20, v3

    invoke-direct/range {v20 .. v26}, Landroidx/compose/foundation/BorderCache;-><init>(Landroidx/compose/ui/graphics/ImageBitmap;Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;Landroidx/compose/ui/graphics/Path;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v3, v0, Landroidx/compose/foundation/BorderModifierNode;->borderCache:Landroidx/compose/foundation/BorderCache;

    .line 232
    :cond_2
    iget-object v3, v0, Landroidx/compose/foundation/BorderModifierNode;->borderCache:Landroidx/compose/foundation/BorderCache;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroidx/compose/foundation/BorderCache;->obtainPath()Landroidx/compose/ui/graphics/Path;

    move-result-object v9

    .line 233
    invoke-interface {v9}, Landroidx/compose/ui/graphics/Path;->reset()V

    const/4 v3, 0x2

    .line 234
    invoke-static {v9, v10, v4, v3, v4}, Landroidx/compose/ui/graphics/Path;->addRect$default(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/graphics/Path$Direction;ILjava/lang/Object;)V

    .line 235
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/graphics/Outline$Generic;->getPath()Landroidx/compose/ui/graphics/Path;

    move-result-object v5

    sget-object v6, Landroidx/compose/ui/graphics/PathOperation;->Companion:Landroidx/compose/ui/graphics/PathOperation$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/PathOperation$Companion;->getDifference-b3I0S0c()I

    move-result v6

    invoke-interface {v9, v9, v5, v6}, Landroidx/compose/ui/graphics/Path;->op-N5in7k0(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Path;I)Z

    .line 238
    new-instance v8, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 56
    invoke-virtual {v10}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v5

    invoke-virtual {v10}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v6

    sub-float/2addr v5, v6

    float-to-double v5, v5

    .line 240
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-float v5, v5

    float-to-int v5, v5

    .line 61
    invoke-virtual {v10}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result v6

    invoke-virtual {v10}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v7

    sub-float/2addr v6, v7

    float-to-double v6, v6

    .line 240
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-float v6, v6

    float-to-int v6, v6

    int-to-long v12, v5

    const/16 v20, 0x20

    shl-long v12, v12, v20

    int-to-long v5, v6

    const-wide v21, 0xffffffffL

    and-long v5, v5, v21

    or-long/2addr v5, v12

    .line 30
    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntSize;->constructor-impl(J)J

    move-result-wide v23

    .line 241
    iget-object v0, v0, Landroidx/compose/foundation/BorderModifierNode;->borderCache:Landroidx/compose/foundation/BorderCache;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 365
    invoke-static {v0}, Landroidx/compose/foundation/BorderCache;->access$getImageBitmap$p(Landroidx/compose/foundation/BorderCache;)Landroidx/compose/ui/graphics/ImageBitmap;

    move-result-object v5

    .line 366
    invoke-static {v0}, Landroidx/compose/foundation/BorderCache;->access$getCanvas$p(Landroidx/compose/foundation/BorderCache;)Landroidx/compose/ui/graphics/Canvas;

    move-result-object v6

    if-eqz v5, :cond_3

    .line 370
    invoke-interface {v5}, Landroidx/compose/ui/graphics/ImageBitmap;->getConfig-_sVssgQ()I

    move-result v7

    invoke-static {v7}, Landroidx/compose/ui/graphics/ImageBitmapConfig;->box-impl(I)Landroidx/compose/ui/graphics/ImageBitmapConfig;

    move-result-object v7

    goto :goto_1

    :cond_3
    move-object v7, v4

    :goto_1
    sget-object v12, Landroidx/compose/ui/graphics/ImageBitmapConfig;->Companion:Landroidx/compose/ui/graphics/ImageBitmapConfig$Companion;

    invoke-virtual {v12}, Landroidx/compose/ui/graphics/ImageBitmapConfig$Companion;->getArgb8888-_sVssgQ()I

    move-result v12

    const/4 v13, 0x0

    if-nez v7, :cond_4

    move v7, v13

    goto :goto_2

    :cond_4
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/ImageBitmapConfig;->unbox-impl()I

    move-result v7

    invoke-static {v7, v12}, Landroidx/compose/ui/graphics/ImageBitmapConfig;->equals-impl0(II)Z

    move-result v7

    :goto_2
    const/4 v15, 0x1

    if-nez v7, :cond_6

    if-eqz v5, :cond_5

    .line 371
    invoke-interface {v5}, Landroidx/compose/ui/graphics/ImageBitmap;->getConfig-_sVssgQ()I

    move-result v4

    invoke-static {v4}, Landroidx/compose/ui/graphics/ImageBitmapConfig;->box-impl(I)Landroidx/compose/ui/graphics/ImageBitmapConfig;

    move-result-object v4

    :cond_5
    invoke-static {v14, v4}, Landroidx/compose/ui/graphics/ImageBitmapConfig;->equals-impl(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_6
    move v13, v15

    :cond_7
    if-eqz v5, :cond_9

    if-eqz v6, :cond_9

    .line 375
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/draw/CacheDrawScope;->getSize-NH-jbRc()J

    move-result-wide v16

    shr-long v3, v16, v20

    long-to-int v3, v3

    .line 22
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    .line 375
    invoke-interface {v5}, Landroidx/compose/ui/graphics/ImageBitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_9

    .line 376
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/draw/CacheDrawScope;->getSize-NH-jbRc()J

    move-result-wide v3

    and-long v3, v3, v21

    long-to-int v3, v3

    .line 22
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    .line 376
    invoke-interface {v5}, Landroidx/compose/ui/graphics/ImageBitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_9

    if-nez v13, :cond_8

    goto :goto_3

    :cond_8
    move-object v12, v5

    move-object v13, v6

    move v7, v15

    goto :goto_4

    :cond_9
    :goto_3
    shr-long v3, v23, v20

    long-to-int v12, v3

    and-long v3, v23, v21

    long-to-int v13, v3

    const/16 v17, 0x18

    const/16 v18, 0x0

    const/4 v3, 0x0

    const/16 v16, 0x0

    move v7, v15

    move v15, v3

    .line 380
    invoke-static/range {v12 .. v18}, Landroidx/compose/ui/graphics/ImageBitmapKt;->ImageBitmap-x__-hDU$default(IIIZLandroidx/compose/ui/graphics/colorspace/ColorSpace;ILjava/lang/Object;)Landroidx/compose/ui/graphics/ImageBitmap;

    move-result-object v5

    .line 381
    invoke-static {v0, v5}, Landroidx/compose/foundation/BorderCache;->access$setImageBitmap$p(Landroidx/compose/foundation/BorderCache;Landroidx/compose/ui/graphics/ImageBitmap;)V

    .line 384
    invoke-static {v5}, Landroidx/compose/ui/graphics/CanvasKt;->Canvas(Landroidx/compose/ui/graphics/ImageBitmap;)Landroidx/compose/ui/graphics/Canvas;

    move-result-object v6

    invoke-static {v0, v6}, Landroidx/compose/foundation/BorderCache;->access$setCanvas$p(Landroidx/compose/foundation/BorderCache;Landroidx/compose/ui/graphics/Canvas;)V

    move-object v12, v5

    move-object v13, v6

    .line 387
    :goto_4
    invoke-static {v0}, Landroidx/compose/foundation/BorderCache;->access$getCanvasDrawScope$p(Landroidx/compose/foundation/BorderCache;)Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    move-result-object v3

    if-nez v3, :cond_a

    new-instance v3, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-direct {v3}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;-><init>()V

    invoke-static {v0, v3}, Landroidx/compose/foundation/BorderCache;->access$setCanvasDrawScope$p(Landroidx/compose/foundation/BorderCache;Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;)V

    :cond_a
    move-object v14, v3

    .line 388
    invoke-static/range {v23 .. v24}, Landroidx/compose/ui/unit/IntSizeKt;->toSize-ozmzZPI(J)J

    move-result-wide v3

    .line 389
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/draw/CacheDrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v0

    .line 536
    invoke-virtual {v14}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->getDrawParams()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->component1()Landroidx/compose/ui/unit/Density;

    move-result-object v15

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->component2()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v6

    move-object/from16 v16, v9

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->component3()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v9

    move-object/from16 v17, v8

    move-object/from16 p0, v9

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->component4-NH-jbRc()J

    move-result-wide v8

    .line 537
    invoke-virtual {v14}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->getDrawParams()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    move-result-object v5

    .line 538
    invoke-virtual {v5, v1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setDensity(Landroidx/compose/ui/unit/Density;)V

    .line 539
    invoke-virtual {v5, v0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 540
    invoke-virtual {v5, v13}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setCanvas(Landroidx/compose/ui/graphics/Canvas;)V

    .line 541
    invoke-virtual {v5, v3, v4}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setSize-uvyYCjk(J)V

    .line 543
    invoke-interface {v13}, Landroidx/compose/ui/graphics/Canvas;->save()V

    .line 392
    sget-object v0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v26

    sget-object v0, Landroidx/compose/ui/graphics/BlendMode;->Companion:Landroidx/compose/ui/graphics/BlendMode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/BlendMode$Companion;->getClear-0nO6VwU()I

    move-result v35

    const/16 v36, 0x3a

    const/16 v37, 0x0

    const-wide/16 v28, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v25, v14

    move-wide/from16 v30, v3

    invoke-static/range {v25 .. v37}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawRect-n-J9OG0$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 250
    invoke-virtual {v10}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v3

    neg-float v5, v3

    invoke-virtual {v10}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v3

    neg-float v4, v3

    .line 120
    invoke-interface {v14}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object v3

    invoke-interface {v3}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getTransform()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    move-result-object v3

    invoke-interface {v3, v5, v4}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->translate(FF)V

    .line 255
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/graphics/Outline$Generic;->getPath()Landroidx/compose/ui/graphics/Path;

    move-result-object v3

    .line 257
    new-instance v18, Landroidx/compose/ui/graphics/drawscope/Stroke;

    const/4 v2, 0x2

    int-to-float v2, v2

    mul-float v26, p5, v2

    const/16 v31, 0x1e

    const/16 v32, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v25, v18

    invoke-direct/range {v25 .. v32}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIILandroidx/compose/ui/graphics/PathEffect;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/16 v25, 0x34

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object v2, v14

    move/from16 v38, v4

    move-object/from16 v4, p2

    move/from16 v39, v5

    move/from16 v5, v27

    move-object/from16 v40, v6

    move-object/from16 v6, v18

    move-object/from16 v7, v28

    move-wide/from16 v41, v8

    move-object/from16 v9, v17

    move/from16 v8, v29

    move-object/from16 v44, p0

    move-object/from16 v43, v9

    move/from16 v9, v25

    move-object/from16 v17, v10

    move-object/from16 v10, v26

    .line 254
    :try_start_1
    invoke-static/range {v2 .. v10}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawPath-GBMwjPU$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 262
    invoke-interface {v14}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v2

    shr-long v2, v2, v20

    long-to-int v2, v2

    .line 22
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    const/4 v3, 0x1

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 262
    invoke-interface {v14}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v4

    shr-long v4, v4, v20

    long-to-int v4, v4

    .line 22
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    div-float/2addr v2, v4

    .line 262
    invoke-interface {v14}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v4

    and-long v4, v4, v21

    long-to-int v4, v4

    .line 22
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    add-float/2addr v4, v3

    .line 262
    invoke-interface {v14}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v5

    and-long v5, v5, v21

    long-to-int v3, v5

    .line 22
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    div-float/2addr v4, v3

    .line 170
    invoke-interface {v14}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getCenter-F1C5BW0()J

    move-result-wide v5

    .line 249
    invoke-interface {v14}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object v10

    .line 253
    invoke-interface {v10}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getSize-NH-jbRc()J

    move-result-wide v8

    .line 254
    invoke-interface {v10}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v3

    invoke-interface {v3}, Landroidx/compose/ui/graphics/Canvas;->save()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 256
    :try_start_2
    invoke-interface {v10}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getTransform()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    move-result-object v3

    .line 172
    invoke-interface {v3, v2, v4, v5, v6}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->scale-0AR0LA0(FFJ)V

    .line 267
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/BlendMode$Companion;->getClear-0nO6VwU()I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/16 v18, 0x1c

    const/16 v20, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v14

    move-object/from16 v3, v16

    move-object/from16 v4, p2

    move-wide/from16 v45, v8

    move v8, v0

    move/from16 v9, v18

    move-object v11, v10

    move-object/from16 v10, v20

    .line 264
    :try_start_3
    invoke-static/range {v2 .. v10}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawPath-GBMwjPU$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 259
    :try_start_4
    invoke-interface {v11}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    move-wide/from16 v2, v45

    .line 260
    invoke-interface {v11, v2, v3}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->setSize-uvyYCjk(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 124
    invoke-interface {v14}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getTransform()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    move-result-object v0

    move/from16 v4, v39

    neg-float v2, v4

    move/from16 v5, v38

    neg-float v3, v5

    invoke-interface {v0, v2, v3}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->translate(FF)V

    .line 545
    invoke-interface {v13}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    .line 546
    invoke-virtual {v14}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->getDrawParams()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    move-result-object v0

    .line 547
    invoke-virtual {v0, v15}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setDensity(Landroidx/compose/ui/unit/Density;)V

    move-object/from16 v2, v40

    .line 548
    invoke-virtual {v0, v2}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V

    move-object/from16 v2, v44

    .line 549
    invoke-virtual {v0, v2}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setCanvas(Landroidx/compose/ui/graphics/Canvas;)V

    move-wide/from16 v2, v41

    .line 550
    invoke-virtual {v0, v2, v3}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setSize-uvyYCjk(J)V

    .line 395
    invoke-interface {v12}, Landroidx/compose/ui/graphics/ImageBitmap;->prepareToDraw()V

    move-object/from16 v0, v43

    .line 246
    iput-object v12, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 274
    new-instance v2, Landroidx/compose/foundation/BorderModifierNode$drawGenericBorder$3;

    move-object v5, v2

    move-object/from16 v6, v17

    move-object v7, v0

    move-wide/from16 v8, v23

    move-object/from16 v10, v19

    invoke-direct/range {v5 .. v10}, Landroidx/compose/foundation/BorderModifierNode$drawGenericBorder$3;-><init>(Landroidx/compose/ui/geometry/Rect;Lkotlin/jvm/internal/Ref$ObjectRef;JLandroidx/compose/ui/graphics/ColorFilter;)V

    invoke-virtual {v1, v2}, Landroidx/compose/ui/draw/CacheDrawScope;->onDrawWithContent(Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/draw/DrawResult;

    move-result-object v0

    :goto_5
    return-object v0

    :catchall_0
    move-exception v0

    move/from16 v5, v38

    move/from16 v4, v39

    goto :goto_7

    :catchall_1
    move-exception v0

    move/from16 v5, v38

    move/from16 v4, v39

    move-wide/from16 v2, v45

    goto :goto_6

    :catchall_2
    move-exception v0

    move-wide v2, v8

    move-object v11, v10

    move/from16 v5, v38

    move/from16 v4, v39

    .line 259
    :goto_6
    :try_start_5
    invoke-interface {v11}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    .line 260
    invoke-interface {v11, v2, v3}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->setSize-uvyYCjk(J)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v0

    goto :goto_7

    :catchall_4
    move-exception v0

    move/from16 v47, v5

    move v5, v4

    move/from16 v4, v47

    .line 124
    :goto_7
    invoke-interface {v14}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getTransform()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    move-result-object v1

    neg-float v2, v4

    neg-float v3, v5

    invoke-interface {v1, v2, v3}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->translate(FF)V

    throw v0
.end method

.method private final drawRoundRectBorder-JqoCqck(Landroidx/compose/ui/draw/CacheDrawScope;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Outline$Rounded;JJZF)Landroidx/compose/ui/draw/DrawResult;
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v10, p9

    .line 291
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/graphics/Outline$Rounded;->getRoundRect()Landroidx/compose/ui/geometry/RoundRect;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/ui/geometry/RoundRectKt;->isSimple(Landroidx/compose/ui/geometry/RoundRect;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 292
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/graphics/Outline$Rounded;->getRoundRect()Landroidx/compose/ui/geometry/RoundRect;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/RoundRect;->getTopLeftCornerRadius-kKHJgLs()J

    move-result-wide v11

    const/4 v0, 0x2

    int-to-float v0, v0

    div-float v0, v10, v0

    .line 294
    new-instance v13, Landroidx/compose/ui/graphics/drawscope/Stroke;

    const/16 v8, 0x1e

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v13

    move/from16 v3, p9

    invoke-direct/range {v2 .. v9}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIILandroidx/compose/ui/graphics/PathEffect;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 295
    new-instance v14, Landroidx/compose/foundation/BorderModifierNode$drawRoundRectBorder$1;

    move-object v2, v14

    move/from16 v3, p8

    move-object/from16 v4, p2

    move-wide v5, v11

    move v7, v0

    move/from16 v8, p9

    move-wide/from16 v9, p4

    move-wide/from16 v11, p6

    invoke-direct/range {v2 .. v13}, Landroidx/compose/foundation/BorderModifierNode$drawRoundRectBorder$1;-><init>(ZLandroidx/compose/ui/graphics/Brush;JFFJJLandroidx/compose/ui/graphics/drawscope/Stroke;)V

    invoke-virtual {v1, v14}, Landroidx/compose/ui/draw/CacheDrawScope;->onDrawWithContent(Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/draw/DrawResult;

    move-result-object v0

    goto :goto_0

    .line 335
    :cond_0
    iget-object v2, v0, Landroidx/compose/foundation/BorderModifierNode;->borderCache:Landroidx/compose/foundation/BorderCache;

    if-nez v2, :cond_1

    .line 336
    new-instance v2, Landroidx/compose/foundation/BorderCache;

    const/16 v8, 0xf

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Landroidx/compose/foundation/BorderCache;-><init>(Landroidx/compose/ui/graphics/ImageBitmap;Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;Landroidx/compose/ui/graphics/Path;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v2, v0, Landroidx/compose/foundation/BorderModifierNode;->borderCache:Landroidx/compose/foundation/BorderCache;

    .line 338
    :cond_1
    iget-object v0, v0, Landroidx/compose/foundation/BorderModifierNode;->borderCache:Landroidx/compose/foundation/BorderCache;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/compose/foundation/BorderCache;->obtainPath()Landroidx/compose/ui/graphics/Path;

    move-result-object v0

    .line 340
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/graphics/Outline$Rounded;->getRoundRect()Landroidx/compose/ui/geometry/RoundRect;

    move-result-object v2

    move/from16 v3, p8

    invoke-static {v0, v2, v10, v3}, Landroidx/compose/foundation/BorderKt;->access$createRoundRectPath(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/geometry/RoundRect;FZ)Landroidx/compose/ui/graphics/Path;

    move-result-object v0

    .line 341
    new-instance v2, Landroidx/compose/foundation/BorderModifierNode$drawRoundRectBorder$2;

    move-object/from16 v3, p2

    invoke-direct {v2, v0, v3}, Landroidx/compose/foundation/BorderModifierNode$drawRoundRectBorder$2;-><init>(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Brush;)V

    invoke-virtual {v1, v2}, Landroidx/compose/ui/draw/CacheDrawScope;->onDrawWithContent(Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/draw/DrawResult;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public final getBrush()Landroidx/compose/ui/graphics/Brush;
    .locals 0

    .line 140
    iget-object p0, p0, Landroidx/compose/foundation/BorderModifierNode;->brush:Landroidx/compose/ui/graphics/Brush;

    return-object p0
.end method

.method public final getShape()Landroidx/compose/ui/graphics/Shape;
    .locals 0

    .line 148
    iget-object p0, p0, Landroidx/compose/foundation/BorderModifierNode;->shape:Landroidx/compose/ui/graphics/Shape;

    return-object p0
.end method

.method public final getWidth-D9Ej5fM()F
    .locals 0

    .line 132
    iget p0, p0, Landroidx/compose/foundation/BorderModifierNode;->width:F

    return p0
.end method

.method public final setBrush(Landroidx/compose/ui/graphics/Brush;)V
    .locals 1

    .line 142
    iget-object v0, p0, Landroidx/compose/foundation/BorderModifierNode;->brush:Landroidx/compose/ui/graphics/Brush;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    iput-object p1, p0, Landroidx/compose/foundation/BorderModifierNode;->brush:Landroidx/compose/ui/graphics/Brush;

    .line 144
    iget-object p0, p0, Landroidx/compose/foundation/BorderModifierNode;->drawWithCacheModifierNode:Landroidx/compose/ui/draw/CacheDrawModifierNode;

    invoke-interface {p0}, Landroidx/compose/ui/draw/CacheDrawModifierNode;->invalidateDrawCache()V

    :cond_0
    return-void
.end method

.method public final setShape(Landroidx/compose/ui/graphics/Shape;)V
    .locals 1

    .line 150
    iget-object v0, p0, Landroidx/compose/foundation/BorderModifierNode;->shape:Landroidx/compose/ui/graphics/Shape;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    iput-object p1, p0, Landroidx/compose/foundation/BorderModifierNode;->shape:Landroidx/compose/ui/graphics/Shape;

    .line 152
    iget-object p0, p0, Landroidx/compose/foundation/BorderModifierNode;->drawWithCacheModifierNode:Landroidx/compose/ui/draw/CacheDrawModifierNode;

    invoke-interface {p0}, Landroidx/compose/ui/draw/CacheDrawModifierNode;->invalidateDrawCache()V

    :cond_0
    return-void
.end method

.method public final setWidth-0680j_4(F)V
    .locals 1

    .line 134
    iget v0, p0, Landroidx/compose/foundation/BorderModifierNode;->width:F

    invoke-static {v0, p1}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    iput p1, p0, Landroidx/compose/foundation/BorderModifierNode;->width:F

    .line 136
    iget-object p0, p0, Landroidx/compose/foundation/BorderModifierNode;->drawWithCacheModifierNode:Landroidx/compose/ui/draw/CacheDrawModifierNode;

    invoke-interface {p0}, Landroidx/compose/ui/draw/CacheDrawModifierNode;->invalidateDrawCache()V

    :cond_0
    return-void
.end method
