.class public final Landroidx/compose/ui/node/InnerNodeCoordinator;
.super Landroidx/compose/ui/node/NodeCoordinator;
.source "InnerNodeCoordinator.kt"


# static fields
.field public static final Companion:Landroidx/compose/ui/node/InnerNodeCoordinator$Companion;

.field private static final innerBoundsPaint:Landroidx/compose/ui/graphics/Paint;


# instance fields
.field private lookaheadDelegate:Landroidx/compose/ui/node/LookaheadDelegate;

.field private final tail:Landroidx/compose/ui/node/TailModifierNode;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/compose/ui/node/InnerNodeCoordinator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/node/InnerNodeCoordinator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/node/InnerNodeCoordinator;->Companion:Landroidx/compose/ui/node/InnerNodeCoordinator$Companion;

    .line 242
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPaint_androidKt;->Paint()Landroidx/compose/ui/graphics/Paint;

    move-result-object v0

    .line 243
    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getRed-0d7_KjU()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Landroidx/compose/ui/graphics/Paint;->setColor-8_81llA(J)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 244
    invoke-interface {v0, v1}, Landroidx/compose/ui/graphics/Paint;->setStrokeWidth(F)V

    .line 245
    sget-object v1, Landroidx/compose/ui/graphics/PaintingStyle;->Companion:Landroidx/compose/ui/graphics/PaintingStyle$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/PaintingStyle$Companion;->getStroke-TiuSbCo()I

    move-result v1

    invoke-interface {v0, v1}, Landroidx/compose/ui/graphics/Paint;->setStyle-k9PVt8s(I)V

    .line 242
    sput-object v0, Landroidx/compose/ui/node/InnerNodeCoordinator;->innerBoundsPaint:Landroidx/compose/ui/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 1

    .line 59
    invoke-direct {p0, p1}, Landroidx/compose/ui/node/NodeCoordinator;-><init>(Landroidx/compose/ui/node/LayoutNode;)V

    .line 60
    new-instance v0, Landroidx/compose/ui/node/TailModifierNode;

    invoke-direct {v0}, Landroidx/compose/ui/node/TailModifierNode;-><init>()V

    iput-object v0, p0, Landroidx/compose/ui/node/InnerNodeCoordinator;->tail:Landroidx/compose/ui/node/TailModifierNode;

    .line 63
    invoke-virtual {p0}, Landroidx/compose/ui/node/InnerNodeCoordinator;->getTail()Landroidx/compose/ui/node/TailModifierNode;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/compose/ui/Modifier$Node;->updateCoordinator$ui_release(Landroidx/compose/ui/node/NodeCoordinator;)V

    .line 67
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getLookaheadRoot$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p1, Landroidx/compose/ui/node/InnerNodeCoordinator$LookaheadDelegateImpl;

    invoke-direct {p1, p0}, Landroidx/compose/ui/node/InnerNodeCoordinator$LookaheadDelegateImpl;-><init>(Landroidx/compose/ui/node/InnerNodeCoordinator;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Landroidx/compose/ui/node/InnerNodeCoordinator;->lookaheadDelegate:Landroidx/compose/ui/node/LookaheadDelegate;

    return-void
.end method

.method private final onAfterPlaceAt()V
    .locals 1

    .line 161
    invoke-virtual {p0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->isShallowPlacing$ui_release()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 163
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getMeasurePassDelegate$ui_release()Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;->onNodePlaced$ui_release()V

    return-void
.end method


# virtual methods
.method public calculateAlignmentLine(Landroidx/compose/ui/layout/AlignmentLine;)I
    .locals 1

    .line 167
    invoke-virtual {p0}, Landroidx/compose/ui/node/InnerNodeCoordinator;->getLookaheadDelegate()Landroidx/compose/ui/node/LookaheadDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->calculateAlignmentLine(Landroidx/compose/ui/layout/AlignmentLine;)I

    move-result p0

    goto :goto_0

    .line 168
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getAlignmentLinesOwner()Landroidx/compose/ui/node/AlignmentLinesOwner;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/ui/node/AlignmentLinesOwner;->calculateAlignmentLines()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_1

    .line 167
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_1
    const/high16 p0, -0x80000000

    :goto_0
    return p0
.end method

.method public ensureLookaheadDelegateCreated()V
    .locals 1

    .line 106
    invoke-virtual {p0}, Landroidx/compose/ui/node/InnerNodeCoordinator;->getLookaheadDelegate()Landroidx/compose/ui/node/LookaheadDelegate;

    move-result-object v0

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Landroidx/compose/ui/node/InnerNodeCoordinator$LookaheadDelegateImpl;

    invoke-direct {v0, p0}, Landroidx/compose/ui/node/InnerNodeCoordinator$LookaheadDelegateImpl;-><init>(Landroidx/compose/ui/node/InnerNodeCoordinator;)V

    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/InnerNodeCoordinator;->setLookaheadDelegate(Landroidx/compose/ui/node/LookaheadDelegate;)V

    :cond_0
    return-void
.end method

.method public getLookaheadDelegate()Landroidx/compose/ui/node/LookaheadDelegate;
    .locals 0

    .line 66
    iget-object p0, p0, Landroidx/compose/ui/node/InnerNodeCoordinator;->lookaheadDelegate:Landroidx/compose/ui/node/LookaheadDelegate;

    return-object p0
.end method

.method public bridge synthetic getTail()Landroidx/compose/ui/Modifier$Node;
    .locals 0

    .line 59
    invoke-virtual {p0}, Landroidx/compose/ui/node/InnerNodeCoordinator;->getTail()Landroidx/compose/ui/node/TailModifierNode;

    move-result-object p0

    return-object p0
.end method

.method public getTail()Landroidx/compose/ui/node/TailModifierNode;
    .locals 0

    .line 60
    iget-object p0, p0, Landroidx/compose/ui/node/InnerNodeCoordinator;->tail:Landroidx/compose/ui/node/TailModifierNode;

    return-object p0
.end method

.method public hitTestChild-YqVAtuI(Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZ)V
    .locals 15

    move-object v0, p0

    move-wide/from16 v7, p2

    .line 194
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    move-object/from16 v9, p1

    invoke-interface {v9, v1}, Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;->shouldHitTestChildren(Landroidx/compose/ui/node/LayoutNode;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 195
    invoke-virtual {p0, v7, v8}, Landroidx/compose/ui/node/NodeCoordinator;->withinLayerBounds-k-4lQ0M(J)Z

    move-result v1

    if-eqz v1, :cond_0

    move/from16 v10, p6

    :goto_0
    move v3, v2

    goto :goto_1

    :cond_0
    if-eqz p5, :cond_1

    .line 199
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getMinimumTouchTargetSize-NH-jbRc()J

    move-result-wide v4

    invoke-virtual {p0, v7, v8, v4, v5}, Landroidx/compose/ui/node/NodeCoordinator;->distanceInMinimumTouchTarget-tz77jQw(JJ)F

    move-result v1

    .line 135
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    const v4, 0x7fffffff

    and-int/2addr v1, v4

    const/high16 v4, 0x7f800000    # Float.POSITIVE_INFINITY

    if-ge v1, v4, :cond_1

    move v10, v3

    goto :goto_0

    :cond_1
    move/from16 v10, p6

    :goto_1
    if-eqz v3, :cond_6

    .line 177
    invoke-static/range {p4 .. p4}, Landroidx/compose/ui/node/HitTestResult;->access$getHitDepth$p(Landroidx/compose/ui/node/HitTestResult;)I

    move-result v11

    .line 212
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getZSortedChildren()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v0

    .line 204
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v1

    if-lez v1, :cond_4

    sub-int/2addr v1, v2

    .line 207
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v12

    move v13, v1

    .line 209
    :cond_2
    aget-object v0, v12, v13

    move-object v14, v0

    check-cast v14, Landroidx/compose/ui/node/LayoutNode;

    .line 213
    invoke-virtual {v14}, Landroidx/compose/ui/node/LayoutNode;->isPlaced()Z

    move-result v0

    if-eqz v0, :cond_5

    move-object/from16 v0, p1

    move-object v1, v14

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    move/from16 v5, p5

    move v6, v10

    .line 214
    invoke-interface/range {v0 .. v6}, Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;->childHitTest-YqVAtuI(Landroidx/compose/ui/node/LayoutNode;JLandroidx/compose/ui/node/HitTestResult;ZZ)V

    .line 221
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/ui/node/HitTestResult;->hasHit()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_3

    .line 225
    :cond_3
    invoke-virtual {v14}, Landroidx/compose/ui/node/LayoutNode;->getOuterCoordinator$ui_release()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->shouldSharePointerInputWithSiblings()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 226
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/ui/node/HitTestResult;->acceptHits()V

    goto :goto_3

    :cond_4
    :goto_2
    move-object/from16 v0, p4

    goto :goto_4

    :cond_5
    :goto_3
    add-int/lit8 v13, v13, -0x1

    if-gez v13, :cond_2

    goto :goto_2

    .line 179
    :goto_4
    invoke-static {v0, v11}, Landroidx/compose/ui/node/HitTestResult;->access$setHitDepth$p(Landroidx/compose/ui/node/HitTestResult;I)V

    :cond_6
    return-void
.end method

.method public maxIntrinsicHeight(I)I
    .locals 0

    .line 139
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/LayoutNode;->maxIntrinsicHeight(I)I

    move-result p0

    return p0
.end method

.method public maxIntrinsicWidth(I)I
    .locals 0

    .line 137
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/LayoutNode;->maxIntrinsicWidth(I)I

    move-result p0

    return p0
.end method

.method public measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;
    .locals 5

    .line 114
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getForceMeasureWithLookaheadConstraints$ui_release()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p0}, Landroidx/compose/ui/node/InnerNodeCoordinator;->getLookaheadDelegate()Landroidx/compose/ui/node/LookaheadDelegate;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/compose/ui/node/LookaheadDelegate;->getConstraints-msEJaDk$ui_release()J

    move-result-wide p1

    .line 307
    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/node/NodeCoordinator;->access$setMeasurementConstraints-BRTryo0(Landroidx/compose/ui/node/NodeCoordinator;J)V

    .line 122
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    .line 198
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->get_children$ui_release()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v0

    .line 434
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v1

    if-lez v1, :cond_2

    .line 437
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    .line 439
    :cond_1
    aget-object v3, v0, v2

    check-cast v3, Landroidx/compose/ui/node/LayoutNode;

    .line 123
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->getMeasurePassDelegate$ui_release()Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;

    move-result-object v3

    sget-object v4, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->NotUsed:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    invoke-virtual {v3, v4}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;->setMeasuredByParent$ui_release(Landroidx/compose/ui/node/LayoutNode$UsageByParent;)V

    add-int/lit8 v2, v2, 0x1

    if-lt v2, v1, :cond_1

    .line 127
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getMeasurePolicy()Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getChildMeasurables$ui_release()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, p0, v1, p1, p2}, Landroidx/compose/ui/layout/MeasurePolicy;->measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p1

    .line 126
    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/NodeCoordinator;->setMeasureResult$ui_release(Landroidx/compose/ui/layout/MeasureResult;)V

    .line 128
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->onMeasured()V

    return-object p0
.end method

.method public minIntrinsicHeight(I)I
    .locals 0

    .line 135
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/LayoutNode;->minIntrinsicHeight(I)I

    move-result p0

    return p0
.end method

.method public minIntrinsicWidth(I)I
    .locals 0

    .line 133
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/LayoutNode;->minIntrinsicWidth(I)I

    move-result p0

    return p0
.end method

.method public performDraw(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 6

    .line 173
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/node/LayoutNodeKt;->requireOwner(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v0

    .line 174
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getZSortedChildren()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v1

    .line 434
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v2

    if-lez v2, :cond_2

    .line 437
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x0

    .line 439
    :cond_0
    aget-object v4, v1, v3

    check-cast v4, Landroidx/compose/ui/node/LayoutNode;

    .line 175
    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutNode;->isPlaced()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 176
    invoke-virtual {v4, p1, p2}, Landroidx/compose/ui/node/LayoutNode;->draw$ui_release(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    if-lt v3, v2, :cond_0

    .line 179
    :cond_2
    invoke-interface {v0}, Landroidx/compose/ui/node/Owner;->getShowLayoutBounds()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 180
    sget-object p2, Landroidx/compose/ui/node/InnerNodeCoordinator;->innerBoundsPaint:Landroidx/compose/ui/graphics/Paint;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/node/NodeCoordinator;->drawBorder(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/Paint;)V

    :cond_3
    return-void
.end method

.method protected placeAt-f8xVGno(JFLandroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 0

    .line 142
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/compose/ui/node/NodeCoordinator;->placeAt-f8xVGno(JFLandroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    .line 143
    invoke-direct {p0}, Landroidx/compose/ui/node/InnerNodeCoordinator;->onAfterPlaceAt()V

    return-void
.end method

.method protected placeAt-f8xVGno(JFLkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 151
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/compose/ui/node/NodeCoordinator;->placeAt-f8xVGno(JFLkotlin/jvm/functions/Function1;)V

    .line 152
    invoke-direct {p0}, Landroidx/compose/ui/node/InnerNodeCoordinator;->onAfterPlaceAt()V

    return-void
.end method

.method protected setLookaheadDelegate(Landroidx/compose/ui/node/LookaheadDelegate;)V
    .locals 0

    .line 66
    iput-object p1, p0, Landroidx/compose/ui/node/InnerNodeCoordinator;->lookaheadDelegate:Landroidx/compose/ui/node/LookaheadDelegate;

    return-void
.end method
