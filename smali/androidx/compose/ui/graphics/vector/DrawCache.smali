.class public final Landroidx/compose/ui/graphics/vector/DrawCache;
.super Ljava/lang/Object;
.source "DrawCache.kt"


# instance fields
.field private final cacheScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

.field private cachedCanvas:Landroidx/compose/ui/graphics/Canvas;

.field private config:I

.field private layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

.field private mCachedImage:Landroidx/compose/ui/graphics/ImageBitmap;

.field private scopeDensity:Landroidx/compose/ui/unit/Density;

.field private size:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    sget-object v0, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/DrawCache;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 46
    sget-object v0, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntSize$Companion;->getZero-YbymL2g()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/ui/graphics/vector/DrawCache;->size:J

    .line 47
    sget-object v0, Landroidx/compose/ui/graphics/ImageBitmapConfig;->Companion:Landroidx/compose/ui/graphics/ImageBitmapConfig$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/ImageBitmapConfig$Companion;->getArgb8888-_sVssgQ()I

    move-result v0

    iput v0, p0, Landroidx/compose/ui/graphics/vector/DrawCache;->config:I

    .line 49
    new-instance v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;-><init>()V

    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/DrawCache;->cacheScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    return-void
.end method

.method private final clear(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V
    .locals 13

    .line 104
    sget-object p0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v1

    sget-object p0, Landroidx/compose/ui/graphics/BlendMode;->Companion:Landroidx/compose/ui/graphics/BlendMode$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/BlendMode$Companion;->getClear-0nO6VwU()I

    move-result v10

    const/16 v11, 0x3e

    const/4 v12, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v12}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawRect-n-J9OG0$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final drawCachedImage-FqjB98A(IJLandroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;Lkotlin/jvm/functions/Function1;)V
    .locals 15

    move-object v0, p0

    move/from16 v8, p1

    move-wide/from16 v9, p2

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    .line 63
    iput-object v11, v0, Landroidx/compose/ui/graphics/vector/DrawCache;->scopeDensity:Landroidx/compose/ui/unit/Density;

    .line 64
    iput-object v12, v0, Landroidx/compose/ui/graphics/vector/DrawCache;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 65
    iget-object v1, v0, Landroidx/compose/ui/graphics/vector/DrawCache;->mCachedImage:Landroidx/compose/ui/graphics/ImageBitmap;

    .line 66
    iget-object v2, v0, Landroidx/compose/ui/graphics/vector/DrawCache;->cachedCanvas:Landroidx/compose/ui/graphics/Canvas;

    const-wide v3, 0xffffffffL

    const/16 v5, 0x20

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    shr-long v6, v9, v5

    long-to-int v6, v6

    .line 70
    invoke-interface {v1}, Landroidx/compose/ui/graphics/ImageBitmap;->getWidth()I

    move-result v7

    if-gt v6, v7, :cond_0

    and-long v6, v9, v3

    long-to-int v6, v6

    .line 71
    invoke-interface {v1}, Landroidx/compose/ui/graphics/ImageBitmap;->getHeight()I

    move-result v7

    if-gt v6, v7, :cond_0

    .line 72
    iget v6, v0, Landroidx/compose/ui/graphics/vector/DrawCache;->config:I

    invoke-static {v6, v8}, Landroidx/compose/ui/graphics/ImageBitmapConfig;->equals-impl0(II)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    shr-long v1, v9, v5

    long-to-int v1, v1

    and-long v2, v9, v3

    long-to-int v2, v2

    const/16 v6, 0x18

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v3, p1

    .line 74
    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/graphics/ImageBitmapKt;->ImageBitmap-x__-hDU$default(IIIZLandroidx/compose/ui/graphics/colorspace/ColorSpace;ILjava/lang/Object;)Landroidx/compose/ui/graphics/ImageBitmap;

    move-result-object v1

    .line 75
    invoke-static {v1}, Landroidx/compose/ui/graphics/CanvasKt;->Canvas(Landroidx/compose/ui/graphics/ImageBitmap;)Landroidx/compose/ui/graphics/Canvas;

    move-result-object v2

    .line 77
    iput-object v1, v0, Landroidx/compose/ui/graphics/vector/DrawCache;->mCachedImage:Landroidx/compose/ui/graphics/ImageBitmap;

    .line 78
    iput-object v2, v0, Landroidx/compose/ui/graphics/vector/DrawCache;->cachedCanvas:Landroidx/compose/ui/graphics/Canvas;

    .line 79
    iput v8, v0, Landroidx/compose/ui/graphics/vector/DrawCache;->config:I

    .line 81
    :cond_1
    iput-wide v9, v0, Landroidx/compose/ui/graphics/vector/DrawCache;->size:J

    .line 82
    iget-object v3, v0, Landroidx/compose/ui/graphics/vector/DrawCache;->cacheScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/unit/IntSizeKt;->toSize-ozmzZPI(J)J

    move-result-wide v4

    .line 536
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->getDrawParams()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->component1()Landroidx/compose/ui/unit/Density;

    move-result-object v7

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->component2()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v8

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->component3()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v9

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->component4-NH-jbRc()J

    move-result-wide v13

    .line 537
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->getDrawParams()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    move-result-object v6

    .line 538
    invoke-virtual {v6, v11}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setDensity(Landroidx/compose/ui/unit/Density;)V

    .line 539
    invoke-virtual {v6, v12}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 540
    invoke-virtual {v6, v2}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setCanvas(Landroidx/compose/ui/graphics/Canvas;)V

    .line 541
    invoke-virtual {v6, v4, v5}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setSize-uvyYCjk(J)V

    .line 543
    invoke-interface {v2}, Landroidx/compose/ui/graphics/Canvas;->save()V

    .line 83
    invoke-direct {p0, v3}, Landroidx/compose/ui/graphics/vector/DrawCache;->clear(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V

    move-object/from16 v0, p6

    .line 84
    invoke-interface {v0, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    invoke-interface {v2}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    .line 546
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->getDrawParams()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    move-result-object v0

    .line 547
    invoke-virtual {v0, v7}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setDensity(Landroidx/compose/ui/unit/Density;)V

    .line 548
    invoke-virtual {v0, v8}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 549
    invoke-virtual {v0, v9}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setCanvas(Landroidx/compose/ui/graphics/Canvas;)V

    .line 550
    invoke-virtual {v0, v13, v14}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setSize-uvyYCjk(J)V

    .line 86
    invoke-interface {v1}, Landroidx/compose/ui/graphics/ImageBitmap;->prepareToDraw()V

    return-void
.end method

.method public final drawInto(Landroidx/compose/ui/graphics/drawscope/DrawScope;FLandroidx/compose/ui/graphics/ColorFilter;)V
    .locals 17

    move-object/from16 v0, p0

    .line 91
    iget-object v1, v0, Landroidx/compose/ui/graphics/vector/DrawCache;->mCachedImage:Landroidx/compose/ui/graphics/ImageBitmap;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    .line 93
    const-string v2, "drawCachedImage must be invoked first before attempting to draw the result into another destination"

    .line 44
    invoke-static {v2}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 96
    :cond_1
    iget-wide v4, v0, Landroidx/compose/ui/graphics/vector/DrawCache;->size:J

    const/16 v15, 0x35a

    const/16 v16, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p1

    move/from16 v10, p2

    move-object/from16 v12, p3

    invoke-static/range {v0 .. v16}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawImage-AZ2fEMs$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/ImageBitmap;JJJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IIILjava/lang/Object;)V

    return-void
.end method

.method public final getMCachedImage()Landroidx/compose/ui/graphics/ImageBitmap;
    .locals 0

    .line 42
    iget-object p0, p0, Landroidx/compose/ui/graphics/vector/DrawCache;->mCachedImage:Landroidx/compose/ui/graphics/ImageBitmap;

    return-object p0
.end method
