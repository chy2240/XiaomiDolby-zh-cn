.class public final Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;
.super Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;
.source "LazyList.kt"


# instance fields
.field final synthetic $afterContentPadding:I

.field final synthetic $beforeContentPadding:I

.field final synthetic $horizontalAlignment:Landroidx/compose/ui/Alignment$Horizontal;

.field final synthetic $isVertical:Z

.field final synthetic $itemsCount:I

.field final synthetic $reverseLayout:Z

.field final synthetic $spaceBetweenItems:I

.field final synthetic $state:Landroidx/compose/foundation/lazy/LazyListState;

.field final synthetic $this_null:Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;

.field final synthetic $verticalAlignment:Landroidx/compose/ui/Alignment$Vertical;

.field final synthetic $visualItemOffset:J


# direct methods
.method constructor <init>(JZLandroidx/compose/foundation/lazy/LazyListItemProvider;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;IILandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;ZIIJLandroidx/compose/foundation/lazy/LazyListState;)V
    .locals 0

    iput-boolean p3, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->$isVertical:Z

    iput-object p5, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->$this_null:Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;

    iput p6, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->$itemsCount:I

    iput p7, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->$spaceBetweenItems:I

    iput-object p8, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->$horizontalAlignment:Landroidx/compose/ui/Alignment$Horizontal;

    iput-object p9, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->$verticalAlignment:Landroidx/compose/ui/Alignment$Vertical;

    iput-boolean p10, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->$reverseLayout:Z

    iput p11, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->$beforeContentPadding:I

    iput p12, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->$afterContentPadding:I

    iput-wide p13, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->$visualItemOffset:J

    iput-object p15, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    const/4 p12, 0x0

    move-object p6, p0

    move-wide p7, p1

    move p9, p3

    move-object p10, p4

    move-object p11, p5

    .line 287
    invoke-direct/range {p6 .. p12}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;-><init>(JZLandroidx/compose/foundation/lazy/LazyListItemProvider;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public createItem-X9ElhV4(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/List;J)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    .locals 21

    move-object/from16 v0, p0

    .line 303
    iget v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->$itemsCount:I

    add-int/lit8 v1, v1, -0x1

    move/from16 v3, p1

    if-ne v3, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v12, v1

    goto :goto_1

    :cond_0
    iget v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->$spaceBetweenItems:I

    goto :goto_0

    .line 304
    :goto_1
    new-instance v1, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-object v2, v1

    .line 307
    iget-boolean v5, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->$isVertical:Z

    .line 308
    iget-object v6, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->$horizontalAlignment:Landroidx/compose/ui/Alignment$Horizontal;

    .line 309
    iget-object v7, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->$verticalAlignment:Landroidx/compose/ui/Alignment$Vertical;

    .line 310
    iget-object v4, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->$this_null:Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;

    invoke-interface {v4}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v8

    .line 311
    iget-boolean v9, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->$reverseLayout:Z

    .line 312
    iget v10, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->$beforeContentPadding:I

    .line 313
    iget v11, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->$afterContentPadding:I

    .line 315
    iget-wide v13, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->$visualItemOffset:J

    .line 318
    iget-object v0, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListState;->getItemAnimator$foundation_release()Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    move-result-object v17

    const/16 v20, 0x0

    move/from16 v3, p1

    move-object/from16 v4, p4

    move-object/from16 v15, p2

    move-object/from16 v16, p3

    move-wide/from16 v18, p5

    .line 304
    invoke-direct/range {v2 .. v20}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;-><init>(ILjava/util/List;ZLandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;ZIIIJLjava/lang/Object;Ljava/lang/Object;Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method
