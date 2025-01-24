.class public final Landroidx/compose/foundation/lazy/LazyListMeasureResult;
.super Ljava/lang/Object;
.source "LazyListMeasureResult.kt"

# interfaces
.implements Landroidx/compose/foundation/lazy/LazyListLayoutInfo;
.implements Landroidx/compose/ui/layout/MeasureResult;


# instance fields
.field private final afterContentPadding:I

.field private final canScrollForward:Z

.field private final childConstraints:J

.field private final consumedScroll:F

.field private final coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field private final density:Landroidx/compose/ui/unit/Density;

.field private final firstVisibleItem:Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

.field private final firstVisibleItemScrollOffset:I

.field private final mainAxisItemSpacing:I

.field private final measureResult:Landroidx/compose/ui/layout/MeasureResult;

.field private final orientation:Landroidx/compose/foundation/gestures/Orientation;

.field private final remeasureNeeded:Z

.field private final reverseLayout:Z

.field private final scrollBackAmount:F

.field private final totalItemsCount:I

.field private final viewportEndOffset:I

.field private final viewportStartOffset:I

.field private final visibleItemsInfo:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method private constructor <init>(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;IZFLandroidx/compose/ui/layout/MeasureResult;FZLkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/unit/Density;JLjava/util/List;IIIZLandroidx/compose/foundation/gestures/Orientation;II)V
    .locals 3

    move-object v0, p0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 31
    iput-object v1, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->firstVisibleItem:Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move v1, p2

    .line 33
    iput v1, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->firstVisibleItemScrollOffset:I

    move v1, p3

    .line 35
    iput-boolean v1, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->canScrollForward:Z

    move v1, p4

    .line 37
    iput v1, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->consumedScroll:F

    move-object v1, p5

    .line 39
    iput-object v1, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->measureResult:Landroidx/compose/ui/layout/MeasureResult;

    move v1, p6

    .line 41
    iput v1, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->scrollBackAmount:F

    move v1, p7

    .line 43
    iput-boolean v1, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->remeasureNeeded:Z

    move-object v1, p8

    .line 45
    iput-object v1, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    move-object v1, p9

    .line 47
    iput-object v1, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->density:Landroidx/compose/ui/unit/Density;

    move-wide v1, p10

    .line 49
    iput-wide v1, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->childConstraints:J

    move-object v1, p12

    .line 52
    iput-object v1, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->visibleItemsInfo:Ljava/util/List;

    move/from16 v1, p13

    .line 54
    iput v1, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->viewportStartOffset:I

    move/from16 v1, p14

    .line 56
    iput v1, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->viewportEndOffset:I

    move/from16 v1, p15

    .line 58
    iput v1, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->totalItemsCount:I

    move/from16 v1, p16

    .line 60
    iput-boolean v1, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->reverseLayout:Z

    move-object/from16 v1, p17

    .line 62
    iput-object v1, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    move/from16 v1, p18

    .line 64
    iput v1, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->afterContentPadding:I

    move/from16 v1, p19

    .line 66
    iput v1, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->mainAxisItemSpacing:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;IZFLandroidx/compose/ui/layout/MeasureResult;FZLkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/unit/Density;JLjava/util/List;IIIZLandroidx/compose/foundation/gestures/Orientation;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p19}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;-><init>(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;IZFLandroidx/compose/ui/layout/MeasureResult;FZLkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/unit/Density;JLjava/util/List;IIIZLandroidx/compose/foundation/gestures/Orientation;II)V

    return-void
.end method


# virtual methods
.method public final copyWithScrollDeltaWithoutRemeasure(IZ)Landroidx/compose/foundation/lazy/LazyListMeasureResult;
    .locals 27

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 94
    iget-boolean v2, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->remeasureNeeded:Z

    const/4 v3, 0x0

    if-nez v2, :cond_5

    .line 95
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 96
    iget-object v2, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->firstVisibleItem:Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    if-eqz v2, :cond_5

    .line 99
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getMainAxisSizeWithSpacings()I

    move-result v2

    .line 98
    iget v4, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->firstVisibleItemScrollOffset:I

    sub-int/2addr v4, v1

    if-ltz v4, :cond_5

    if-ge v4, v2, :cond_5

    .line 103
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 104
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 105
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getNonScrollableItem()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getNonScrollableItem()Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_5

    :cond_0
    if-gez v1, :cond_1

    .line 113
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getOffset()I

    move-result v5

    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getMainAxisSizeWithSpacings()I

    move-result v2

    add-int/2addr v5, v2

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->getViewportStartOffset()I

    move-result v2

    sub-int/2addr v5, v2

    .line 115
    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getOffset()I

    move-result v2

    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getMainAxisSizeWithSpacings()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->getViewportEndOffset()I

    move-result v4

    sub-int/2addr v2, v4

    .line 116
    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    neg-int v4, v1

    if-le v2, v4, :cond_5

    goto :goto_0

    .line 119
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->getViewportStartOffset()I

    move-result v5

    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getOffset()I

    move-result v2

    sub-int/2addr v5, v2

    .line 120
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->getViewportEndOffset()I

    move-result v2

    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getOffset()I

    move-result v4

    sub-int/2addr v2, v4

    .line 121
    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-le v2, v1, :cond_5

    .line 124
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object v2

    .line 34
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_2

    .line 35
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 36
    check-cast v6, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move/from16 v7, p2

    .line 124
    invoke-virtual {v6, v1, v7}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->applyScrollDelta(IZ)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 125
    :cond_2
    new-instance v3, Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    .line 126
    iget-object v7, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->firstVisibleItem:Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 127
    iget v2, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->firstVisibleItemScrollOffset:I

    sub-int v8, v2, v1

    .line 129
    iget-boolean v2, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->canScrollForward:Z

    if-nez v2, :cond_4

    if-lez v1, :cond_3

    goto :goto_3

    :cond_3
    :goto_2
    move v9, v4

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v4, 0x1

    goto :goto_2

    :goto_4
    int-to-float v10, v1

    .line 132
    iget-object v11, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->measureResult:Landroidx/compose/ui/layout/MeasureResult;

    .line 133
    iget v12, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->scrollBackAmount:F

    .line 134
    iget-boolean v13, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->remeasureNeeded:Z

    .line 135
    iget-object v14, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 136
    iget-object v15, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->density:Landroidx/compose/ui/unit/Density;

    .line 137
    iget-wide v1, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->childConstraints:J

    move-wide/from16 v16, v1

    .line 138
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object v18

    .line 139
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->getViewportStartOffset()I

    move-result v19

    .line 140
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->getViewportEndOffset()I

    move-result v20

    .line 141
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->getTotalItemsCount()I

    move-result v21

    .line 142
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->getReverseLayout()Z

    move-result v22

    .line 143
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->getOrientation()Landroidx/compose/foundation/gestures/Orientation;

    move-result-object v23

    .line 144
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->getAfterContentPadding()I

    move-result v24

    .line 145
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->getMainAxisItemSpacing()I

    move-result v25

    const/16 v26, 0x0

    move-object v6, v3

    .line 125
    invoke-direct/range {v6 .. v26}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;-><init>(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;IZFLandroidx/compose/ui/layout/MeasureResult;FZLkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/unit/Density;JLjava/util/List;IIIZLandroidx/compose/foundation/gestures/Orientation;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_5
    :goto_5
    return-object v3
.end method

.method public getAfterContentPadding()I
    .locals 0

    .line 64
    iget p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->afterContentPadding:I

    return p0
.end method

.method public getAlignmentLines()Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->measureResult:Landroidx/compose/ui/layout/MeasureResult;

    invoke-interface {p0}, Landroidx/compose/ui/layout/MeasureResult;->getAlignmentLines()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getBeforeContentPadding()I
    .locals 0

    .line 76
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->getViewportStartOffset()I

    move-result p0

    neg-int p0, p0

    return p0
.end method

.method public final getCanScrollBackward()Z
    .locals 2

    .line 70
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->firstVisibleItem:Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getIndex()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    iget p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->firstVisibleItemScrollOffset:I

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public final getCanScrollForward()Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->canScrollForward:Z

    return p0
.end method

.method public final getChildConstraints-msEJaDk()J
    .locals 2

    .line 49
    iget-wide v0, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->childConstraints:J

    return-wide v0
.end method

.method public final getConsumedScroll()F
    .locals 0

    .line 37
    iget p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->consumedScroll:F

    return p0
.end method

.method public final getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;
    .locals 0

    .line 45
    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    return-object p0
.end method

.method public final getDensity()Landroidx/compose/ui/unit/Density;
    .locals 0

    .line 47
    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->density:Landroidx/compose/ui/unit/Density;

    return-object p0
.end method

.method public final getFirstVisibleItem()Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    .locals 0

    .line 31
    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->firstVisibleItem:Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    return-object p0
.end method

.method public final getFirstVisibleItemScrollOffset()I
    .locals 0

    .line 33
    iget p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->firstVisibleItemScrollOffset:I

    return p0
.end method

.method public getHeight()I
    .locals 0

    .line 0
    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->measureResult:Landroidx/compose/ui/layout/MeasureResult;

    invoke-interface {p0}, Landroidx/compose/ui/layout/MeasureResult;->getHeight()I

    move-result p0

    return p0
.end method

.method public getMainAxisItemSpacing()I
    .locals 0

    .line 66
    iget p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->mainAxisItemSpacing:I

    return p0
.end method

.method public getOrientation()Landroidx/compose/foundation/gestures/Orientation;
    .locals 0

    .line 62
    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    return-object p0
.end method

.method public getReverseLayout()Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->reverseLayout:Z

    return p0
.end method

.method public getRulers()Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 0
    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->measureResult:Landroidx/compose/ui/layout/MeasureResult;

    invoke-interface {p0}, Landroidx/compose/ui/layout/MeasureResult;->getRulers()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    return-object p0
.end method

.method public final getScrollBackAmount()F
    .locals 0

    .line 41
    iget p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->scrollBackAmount:F

    return p0
.end method

.method public getTotalItemsCount()I
    .locals 0

    .line 58
    iget p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->totalItemsCount:I

    return p0
.end method

.method public getViewportEndOffset()I
    .locals 0

    .line 56
    iget p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->viewportEndOffset:I

    return p0
.end method

.method public getViewportSize-YbymL2g()J
    .locals 6

    .line 73
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->getHeight()I

    move-result p0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 30
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSize;->constructor-impl(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getViewportStartOffset()I
    .locals 0

    .line 54
    iget p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->viewportStartOffset:I

    return p0
.end method

.method public getVisibleItemsInfo()Ljava/util/List;
    .locals 0

    .line 52
    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->visibleItemsInfo:Ljava/util/List;

    return-object p0
.end method

.method public getWidth()I
    .locals 0

    .line 0
    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->measureResult:Landroidx/compose/ui/layout/MeasureResult;

    invoke-interface {p0}, Landroidx/compose/ui/layout/MeasureResult;->getWidth()I

    move-result p0

    return p0
.end method

.method public placeChildren()V
    .locals 0

    .line 0
    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->measureResult:Landroidx/compose/ui/layout/MeasureResult;

    invoke-interface {p0}, Landroidx/compose/ui/layout/MeasureResult;->placeChildren()V

    return-void
.end method
