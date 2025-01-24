.class final Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$8$1;
.super Lkotlin/jvm/internal/Lambda;
.source "LazyListMeasure.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $isLookingAhead:Z

.field final synthetic $positionedItems:Ljava/util/List;

.field final synthetic $stickingItems:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/List;Z)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$8$1;->$positionedItems:Ljava/util/List;

    iput-object p2, p0, Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$8$1;->$stickingItems:Ljava/util/List;

    iput-boolean p3, p0, Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$8$1;->$isLookingAhead:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 430
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$8$1;->invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V
    .locals 6

    .line 432
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$8$1;->$positionedItems:Ljava/util/List;

    iget-boolean v1, p0, Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$8$1;->$isLookingAhead:Z

    .line 34
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    .line 35
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 36
    check-cast v5, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 432
    invoke-virtual {v5, p1, v1}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->place(Landroidx/compose/ui/layout/Placeable$PlacementScope;Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 434
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$8$1;->$stickingItems:Ljava/util/List;

    iget-boolean p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$8$1;->$isLookingAhead:Z

    .line 34
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    :goto_1
    if-ge v3, v1, :cond_1

    .line 35
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 36
    check-cast v2, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 434
    invoke-virtual {v2, p1, p0}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->place(Landroidx/compose/ui/layout/Placeable$PlacementScope;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
