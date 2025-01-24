.class public final Landroidx/compose/ui/spatial/RectManager;
.super Ljava/lang/Object;
.source "RectManager.kt"


# instance fields
.field private final cachedRect:Landroidx/compose/ui/geometry/MutableRect;

.field private final callbacks:Landroidx/collection/MutableObjectList;

.field private isDirty:Z

.field private isFragmented:Z

.field private final rects:Landroidx/compose/ui/spatial/RectList;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Landroidx/compose/ui/spatial/RectList;

    invoke-direct {v0}, Landroidx/compose/ui/spatial/RectList;-><init>()V

    iput-object v0, p0, Landroidx/compose/ui/spatial/RectManager;->rects:Landroidx/compose/ui/spatial/RectList;

    .line 1501
    new-instance v0, Landroidx/collection/MutableObjectList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableObjectList;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 38
    iput-object v0, p0, Landroidx/compose/ui/spatial/RectManager;->callbacks:Landroidx/collection/MutableObjectList;

    .line 174
    new-instance v0, Landroidx/compose/ui/geometry/MutableRect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroidx/compose/ui/geometry/MutableRect;-><init>(FFFF)V

    iput-object v0, p0, Landroidx/compose/ui/spatial/RectManager;->cachedRect:Landroidx/compose/ui/geometry/MutableRect;

    return-void
.end method

.method private final boundingRectInRoot(Landroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/geometry/MutableRect;)V
    .locals 7

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 266
    invoke-virtual {p1}, Landroidx/compose/ui/node/NodeCoordinator;->getLayer()Landroidx/compose/ui/node/OwnedLayer;

    move-result-object p0

    .line 267
    invoke-virtual {p1}, Landroidx/compose/ui/node/NodeCoordinator;->getPosition-nOcc-ac()J

    move-result-wide v0

    .line 159
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v0

    int-to-float v0, v0

    .line 53
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v1, v1

    .line 54
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v3, v0

    const/16 v0, 0x20

    shl-long v0, v1, v0

    const-wide v5, 0xffffffffL

    and-long v2, v3, v5

    or-long/2addr v0, v2

    .line 30
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v0

    .line 267
    invoke-virtual {p2, v0, v1}, Landroidx/compose/ui/geometry/MutableRect;->translate-k-4lQ0M(J)V

    .line 268
    invoke-virtual {p1}, Landroidx/compose/ui/node/NodeCoordinator;->getWrappedBy$ui_release()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object p1

    if-eqz p0, :cond_0

    .line 270
    invoke-interface {p0}, Landroidx/compose/ui/node/OwnedLayer;->getUnderlyingMatrix-sQKQjiQ()[F

    move-result-object p0

    .line 271
    invoke-static {p0}, Landroidx/compose/ui/graphics/MatrixKt;->isIdentity-58bKbWc([F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 272
    invoke-static {p0, p2}, Landroidx/compose/ui/graphics/Matrix;->map-impl([FLandroidx/compose/ui/geometry/MutableRect;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final insertOrUpdate(Landroidx/compose/ui/node/LayoutNode;ZIIII)V
    .locals 13

    move-object v0, p0

    .line 225
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getSemanticsId()I

    move-result v7

    if-nez p2, :cond_0

    .line 226
    iget-object v1, v0, Landroidx/compose/ui/spatial/RectManager;->rects:Landroidx/compose/ui/spatial/RectList;

    move v2, v7

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v1 .. v6}, Landroidx/compose/ui/spatial/RectList;->move(IIIII)Z

    move-result v1

    if-nez v1, :cond_2

    .line 227
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getSemanticsId()I

    move-result v1

    :goto_0
    move v8, v1

    goto :goto_1

    :cond_1
    const/4 v1, -0x1

    goto :goto_0

    .line 228
    :goto_1
    iget-object v1, v0, Landroidx/compose/ui/spatial/RectManager;->rects:Landroidx/compose/ui/spatial/RectList;

    const/16 v10, 0xc0

    const/4 v11, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    move v2, v7

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move v7, v8

    move v8, v9

    move v9, v12

    invoke-static/range {v1 .. v11}, Landroidx/compose/ui/spatial/RectList;->insert$default(Landroidx/compose/ui/spatial/RectList;IIIIIIZZILjava/lang/Object;)V

    .line 237
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/ui/spatial/RectManager;->invalidate()V

    return-void
.end method

.method private final insertOrUpdateTransformedNode-70tqf50(Landroidx/compose/ui/node/LayoutNode;JZ)V
    .locals 17

    move-object/from16 v0, p0

    .line 181
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/node/LayoutNode;->getOuterCoordinator$ui_release()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v1

    .line 182
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/node/LayoutNode;->getMeasurePassDelegate$ui_release()Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;

    move-result-object v2

    .line 183
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;->getMeasuredWidth()I

    move-result v3

    .line 184
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;->getMeasuredHeight()I

    move-result v2

    .line 185
    iget-object v4, v0, Landroidx/compose/ui/spatial/RectManager;->cachedRect:Landroidx/compose/ui/geometry/MutableRect;

    .line 188
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v5

    int-to-float v5, v5

    .line 189
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v6

    int-to-float v6, v6

    .line 190
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v7

    add-int/2addr v7, v3

    int-to-float v3, v7

    .line 191
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v7

    add-int/2addr v7, v2

    int-to-float v2, v7

    .line 187
    invoke-virtual {v4, v5, v6, v3, v2}, Landroidx/compose/ui/geometry/MutableRect;->set(FFFF)V

    .line 194
    invoke-direct {v0, v1, v4}, Landroidx/compose/ui/spatial/RectManager;->boundingRectInRoot(Landroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/geometry/MutableRect;)V

    .line 196
    invoke-virtual {v4}, Landroidx/compose/ui/geometry/MutableRect;->getLeft()F

    move-result v1

    float-to-int v1, v1

    .line 197
    invoke-virtual {v4}, Landroidx/compose/ui/geometry/MutableRect;->getTop()F

    move-result v2

    float-to-int v2, v2

    .line 198
    invoke-virtual {v4}, Landroidx/compose/ui/geometry/MutableRect;->getRight()F

    move-result v3

    float-to-int v3, v3

    .line 199
    invoke-virtual {v4}, Landroidx/compose/ui/geometry/MutableRect;->getBottom()F

    move-result v4

    float-to-int v4, v4

    .line 200
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/node/LayoutNode;->getSemanticsId()I

    move-result v11

    if-nez p4, :cond_0

    .line 203
    iget-object v5, v0, Landroidx/compose/ui/spatial/RectManager;->rects:Landroidx/compose/ui/spatial/RectList;

    move v6, v11

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-virtual/range {v5 .. v10}, Landroidx/compose/ui/spatial/RectList;->update(IIIII)Z

    move-result v5

    if-nez v5, :cond_2

    .line 204
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroidx/compose/ui/node/LayoutNode;->getSemanticsId()I

    move-result v5

    :goto_0
    move v12, v5

    goto :goto_1

    :cond_1
    const/4 v5, -0x1

    goto :goto_0

    .line 205
    :goto_1
    iget-object v5, v0, Landroidx/compose/ui/spatial/RectManager;->rects:Landroidx/compose/ui/spatial/RectList;

    const/16 v14, 0xc0

    const/4 v15, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    move v6, v11

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v12

    move v12, v13

    move/from16 v13, v16

    invoke-static/range {v5 .. v15}, Landroidx/compose/ui/spatial/RectList;->insert$default(Landroidx/compose/ui/spatial/RectList;IIIIIIZZILjava/lang/Object;)V

    .line 214
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/spatial/RectManager;->invalidate()V

    return-void
.end method

.method private final insertOrUpdateTransformedNodeSubhierarchy(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 6

    .line 198
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->get_children$ui_release()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object p1

    .line 434
    invoke-virtual {p1}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v0

    if-lez v0, :cond_1

    .line 437
    invoke-virtual {p1}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x0

    move v2, v1

    .line 439
    :cond_0
    aget-object v3, p1, v2

    check-cast v3, Landroidx/compose/ui/node/LayoutNode;

    .line 169
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->getOuterCoordinator$ui_release()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/ui/node/NodeCoordinator;->getPosition-nOcc-ac()J

    move-result-wide v4

    invoke-direct {p0, v3, v4, v5, v1}, Landroidx/compose/ui/spatial/RectManager;->insertOrUpdateTransformedNode-70tqf50(Landroidx/compose/ui/node/LayoutNode;JZ)V

    .line 170
    invoke-direct {p0, v3}, Landroidx/compose/ui/spatial/RectManager;->insertOrUpdateTransformedNodeSubhierarchy(Landroidx/compose/ui/node/LayoutNode;)V

    add-int/lit8 v2, v2, 0x1

    if-lt v2, v0, :cond_0

    :cond_1
    return-void
.end method

.method private final outerToInnerOffset-Bjo55l4(Landroidx/compose/ui/node/LayoutNode;)J
    .locals 5

    .line 279
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getOuterCoordinator$ui_release()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object p0

    .line 280
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v0

    .line 281
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getInnerCoordinator$ui_release()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object p1

    :cond_0
    :goto_0
    if-eqz p1, :cond_3

    if-eq p1, p0, :cond_3

    .line 284
    invoke-virtual {p1}, Landroidx/compose/ui/node/NodeCoordinator;->getLayer()Landroidx/compose/ui/node/OwnedLayer;

    move-result-object v2

    .line 285
    invoke-virtual {p1}, Landroidx/compose/ui/node/NodeCoordinator;->getPosition-nOcc-ac()J

    move-result-wide v3

    invoke-static {v0, v1, v3, v4}, Landroidx/compose/ui/unit/IntOffsetKt;->plus-Nv-tHpc(JJ)J

    move-result-wide v0

    .line 286
    invoke-virtual {p1}, Landroidx/compose/ui/node/NodeCoordinator;->getWrappedBy$ui_release()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object p1

    if-eqz v2, :cond_0

    .line 288
    invoke-interface {v2}, Landroidx/compose/ui/node/OwnedLayer;->getUnderlyingMatrix-sQKQjiQ()[F

    move-result-object v2

    .line 289
    invoke-static {v2}, Landroidx/compose/ui/spatial/RectManagerKt;->access$analyzeComponents-58bKbWc([F)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_2

    .line 292
    sget-object p0, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/unit/IntOffset$Companion;->getMax-nOcc-ac()J

    move-result-wide p0

    return-wide p0

    .line 294
    :cond_2
    invoke-static {v2, v0, v1}, Landroidx/compose/ui/graphics/Matrix;->map-MK-Hz9U([FJ)J

    move-result-wide v0

    goto :goto_0

    .line 297
    :cond_3
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffsetKt;->round-k-4lQ0M(J)J

    move-result-wide p0

    return-wide p0
.end method

.method private final positionInRoot-Bjo55l4(Landroidx/compose/ui/node/NodeCoordinator;)J
    .locals 4

    .line 242
    sget-object p0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v0

    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    .line 245
    invoke-virtual {p1}, Landroidx/compose/ui/node/NodeCoordinator;->getLayer()Landroidx/compose/ui/node/OwnedLayer;

    move-result-object p0

    .line 246
    invoke-virtual {p1}, Landroidx/compose/ui/node/NodeCoordinator;->getPosition-nOcc-ac()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/IntOffsetKt;->plus-Nv-tHpc(JJ)J

    move-result-wide v0

    .line 247
    invoke-virtual {p1}, Landroidx/compose/ui/node/NodeCoordinator;->getWrappedBy$ui_release()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object p1

    if-eqz p0, :cond_0

    .line 249
    invoke-interface {p0}, Landroidx/compose/ui/node/OwnedLayer;->getUnderlyingMatrix-sQKQjiQ()[F

    move-result-object p0

    .line 250
    invoke-static {p0}, Landroidx/compose/ui/spatial/RectManagerKt;->access$analyzeComponents-58bKbWc([F)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    .line 254
    sget-object p0, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/unit/IntOffset$Companion;->getMax-nOcc-ac()J

    move-result-wide p0

    return-wide p0

    .line 256
    :cond_1
    invoke-static {p0, v0, v1}, Landroidx/compose/ui/graphics/Matrix;->map-MK-Hz9U([FJ)J

    move-result-wide v0

    goto :goto_0

    .line 259
    :cond_2
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffsetKt;->round-k-4lQ0M(J)J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public final dispatchCallbacks()V
    .locals 3

    .line 48
    iget-boolean v0, p0, Landroidx/compose/ui/spatial/RectManager;->isDirty:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Landroidx/compose/ui/spatial/RectManager;->isDirty:Z

    .line 54
    iget-boolean v1, p0, Landroidx/compose/ui/spatial/RectManager;->isFragmented:Z

    if-eqz v1, :cond_0

    .line 55
    iput-boolean v0, p0, Landroidx/compose/ui/spatial/RectManager;->isFragmented:Z

    .line 56
    iget-object v1, p0, Landroidx/compose/ui/spatial/RectManager;->rects:Landroidx/compose/ui/spatial/RectList;

    invoke-virtual {v1}, Landroidx/compose/ui/spatial/RectList;->defragment()V

    .line 58
    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/spatial/RectManager;->callbacks:Landroidx/collection/MutableObjectList;

    .line 287
    iget-object v1, p0, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    .line 288
    iget p0, p0, Landroidx/collection/ObjectList;->_size:I

    :goto_0
    if-ge v0, p0, :cond_1

    .line 289
    aget-object v2, v1, v0

    check-cast v2, Lkotlin/jvm/functions/Function0;

    .line 58
    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final invalidate()V
    .locals 1

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Landroidx/compose/ui/spatial/RectManager;->isDirty:Z

    return-void
.end method

.method public final onLayoutLayerPositionalPropertiesChanged(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 6

    .line 74
    sget-boolean v0, Landroidx/compose/ui/ComposeUiFlags;->isRectTrackingEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 75
    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/ui/spatial/RectManager;->outerToInnerOffset-Bjo55l4(Landroidx/compose/ui/node/LayoutNode;)J

    move-result-wide v0

    .line 76
    invoke-static {v0, v1}, Landroidx/compose/ui/spatial/RectManagerKt;->access$isSet--gyyYBs(J)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 78
    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/node/LayoutNode;->setOuterToInnerOffset--gyyYBs$ui_release(J)V

    const/4 v0, 0x0

    .line 79
    invoke-virtual {p1, v0}, Landroidx/compose/ui/node/LayoutNode;->setOuterToInnerOffsetDirty$ui_release(Z)V

    .line 198
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->get_children$ui_release()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object p1

    .line 434
    invoke-virtual {p1}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v1

    if-lez v1, :cond_3

    .line 437
    invoke-virtual {p1}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object p1

    move v2, v0

    .line 439
    :cond_1
    aget-object v3, p1, v2

    check-cast v3, Landroidx/compose/ui/node/LayoutNode;

    .line 82
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->getOuterCoordinator$ui_release()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/ui/node/NodeCoordinator;->getPosition-nOcc-ac()J

    move-result-wide v4

    invoke-virtual {p0, v3, v4, v5, v0}, Landroidx/compose/ui/spatial/RectManager;->onLayoutPositionChanged-70tqf50(Landroidx/compose/ui/node/LayoutNode;JZ)V

    add-int/lit8 v2, v2, 0x1

    if-lt v2, v1, :cond_1

    goto :goto_0

    .line 86
    :cond_2
    invoke-direct {p0, p1}, Landroidx/compose/ui/spatial/RectManager;->insertOrUpdateTransformedNodeSubhierarchy(Landroidx/compose/ui/node/LayoutNode;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final onLayoutPositionChanged-70tqf50(Landroidx/compose/ui/node/LayoutNode;JZ)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 95
    sget-boolean v2, Landroidx/compose/ui/ComposeUiFlags;->isRectTrackingEnabled:Z

    if-nez v2, :cond_0

    return-void

    .line 105
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/node/LayoutNode;->getMeasurePassDelegate$ui_release()Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;

    move-result-object v2

    .line 106
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;->getMeasuredWidth()I

    move-result v3

    .line 107
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;->getMeasuredHeight()I

    move-result v2

    .line 109
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v4

    .line 112
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/node/LayoutNode;->getOffsetFromRoot-nOcc-ac$ui_release()J

    move-result-wide v5

    .line 113
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/node/LayoutNode;->getLastSize-YbymL2g$ui_release()J

    move-result-wide v7

    const/16 v9, 0x20

    shr-long v10, v7, v9

    long-to-int v10, v10

    const-wide v11, 0xffffffffL

    and-long/2addr v7, v11

    long-to-int v7, v7

    const/4 v8, 0x0

    if-eqz v4, :cond_3

    .line 120
    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutNode;->getOuterToInnerOffsetDirty$ui_release()Z

    move-result v13

    .line 121
    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutNode;->getOffsetFromRoot-nOcc-ac$ui_release()J

    move-result-wide v14

    .line 122
    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutNode;->getOuterToInnerOffset-nOcc-ac$ui_release()J

    move-result-wide v16

    .line 125
    invoke-static {v14, v15}, Landroidx/compose/ui/spatial/RectManagerKt;->access$isSet--gyyYBs(J)Z

    move-result v18

    if-eqz v18, :cond_2

    if-eqz v13, :cond_1

    .line 128
    invoke-direct {v0, v4}, Landroidx/compose/ui/spatial/RectManager;->outerToInnerOffset-Bjo55l4(Landroidx/compose/ui/node/LayoutNode;)J

    move-result-wide v11

    .line 130
    invoke-virtual {v4, v11, v12}, Landroidx/compose/ui/node/LayoutNode;->setOuterToInnerOffset--gyyYBs$ui_release(J)V

    .line 131
    invoke-virtual {v4, v8}, Landroidx/compose/ui/node/LayoutNode;->setOuterToInnerOffsetDirty$ui_release(Z)V

    goto :goto_0

    :cond_1
    move-wide/from16 v11, v16

    .line 136
    :goto_0
    invoke-static {v11, v12}, Landroidx/compose/ui/spatial/RectManagerKt;->access$isSet--gyyYBs(J)Z

    move-result v4

    xor-int/lit8 v8, v4, 0x1

    .line 137
    invoke-static {v14, v15, v11, v12}, Landroidx/compose/ui/unit/IntOffset;->plus-qkQi6aY(JJ)J

    move-result-wide v11

    move-wide/from16 v13, p2

    invoke-static {v11, v12, v13, v14}, Landroidx/compose/ui/unit/IntOffset;->plus-qkQi6aY(JJ)J

    move-result-wide v11

    goto :goto_1

    :cond_2
    move-wide/from16 v13, p2

    .line 139
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/node/LayoutNode;->getOuterCoordinator$ui_release()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v4

    invoke-direct {v0, v4}, Landroidx/compose/ui/spatial/RectManager;->positionInRoot-Bjo55l4(Landroidx/compose/ui/node/NodeCoordinator;)J

    move-result-wide v11

    goto :goto_1

    :cond_3
    move-wide/from16 v13, p2

    move-wide v11, v13

    :goto_1
    if-nez v8, :cond_6

    .line 147
    invoke-static {v11, v12}, Landroidx/compose/ui/spatial/RectManagerKt;->access$isSet--gyyYBs(J)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_2

    .line 152
    :cond_4
    invoke-virtual {v1, v11, v12}, Landroidx/compose/ui/node/LayoutNode;->setOffsetFromRoot--gyyYBs$ui_release(J)V

    int-to-long v13, v3

    shl-long v8, v13, v9

    int-to-long v13, v2

    const-wide v15, 0xffffffffL

    and-long/2addr v13, v15

    or-long/2addr v8, v13

    .line 30
    invoke-static {v8, v9}, Landroidx/compose/ui/unit/IntSize;->constructor-impl(J)J

    move-result-wide v8

    .line 153
    invoke-virtual {v1, v8, v9}, Landroidx/compose/ui/node/LayoutNode;->setLastSize-ozmzZPI$ui_release(J)V

    .line 155
    invoke-static {v11, v12}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v4

    .line 156
    invoke-static {v11, v12}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v8

    add-int v9, v4, v3

    add-int v13, v8, v2

    if-nez p4, :cond_5

    .line 160
    invoke-static {v11, v12, v5, v6}, Landroidx/compose/ui/unit/IntOffset;->equals-impl0(JJ)Z

    move-result v5

    if-eqz v5, :cond_5

    if-ne v10, v3, :cond_5

    if-ne v7, v2, :cond_5

    return-void

    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move v3, v4

    move v4, v8

    move v5, v9

    move v6, v13

    .line 164
    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/spatial/RectManager;->insertOrUpdate(Landroidx/compose/ui/node/LayoutNode;ZIIII)V

    return-void

    .line 148
    :cond_6
    :goto_2
    invoke-direct/range {p0 .. p4}, Landroidx/compose/ui/spatial/RectManager;->insertOrUpdateTransformedNode-70tqf50(Landroidx/compose/ui/node/LayoutNode;JZ)V

    return-void
.end method

.method public final remove(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 1

    .line 301
    iget-object v0, p0, Landroidx/compose/ui/spatial/RectManager;->rects:Landroidx/compose/ui/spatial/RectList;

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getSemanticsId()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/compose/ui/spatial/RectList;->remove(I)Z

    .line 302
    invoke-virtual {p0}, Landroidx/compose/ui/spatial/RectManager;->invalidate()V

    const/4 p1, 0x1

    .line 303
    iput-boolean p1, p0, Landroidx/compose/ui/spatial/RectManager;->isFragmented:Z

    return-void
.end method
