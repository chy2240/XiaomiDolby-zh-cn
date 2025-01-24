.class final Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$8;
.super Lkotlin/jvm/internal/Lambda;
.source "LazyListMeasure.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $isLookingAhead:Z

.field final synthetic $placementScopeInvalidator:Landroidx/compose/runtime/MutableState;

.field final synthetic $positionedItems:Ljava/util/List;

.field final synthetic $stickingItems:Ljava/util/List;


# direct methods
.method constructor <init>(Landroidx/compose/runtime/MutableState;Ljava/util/List;Ljava/util/List;Z)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$8;->$placementScopeInvalidator:Landroidx/compose/runtime/MutableState;

    iput-object p2, p0, Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$8;->$positionedItems:Ljava/util/List;

    iput-object p3, p0, Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$8;->$stickingItems:Ljava/util/List;

    iput-boolean p4, p0, Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$8;->$isLookingAhead:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 424
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$8;->invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V
    .locals 4

    .line 430
    new-instance v0, Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$8$1;

    iget-object v1, p0, Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$8;->$positionedItems:Ljava/util/List;

    iget-object v2, p0, Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$8;->$stickingItems:Ljava/util/List;

    iget-boolean v3, p0, Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$8;->$isLookingAhead:Z

    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$8$1;-><init>(Ljava/util/List;Ljava/util/List;Z)V

    invoke-virtual {p1, v0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->withMotionFrameOfReferencePlacement(Lkotlin/jvm/functions/Function1;)V

    .line 438
    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$8;->$placementScopeInvalidator:Landroidx/compose/runtime/MutableState;

    invoke-static {p0}, Landroidx/compose/foundation/lazy/layout/ObservableScopeInvalidator;->attachToScope-impl(Landroidx/compose/runtime/MutableState;)V

    return-void
.end method
