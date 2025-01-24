.class public interface abstract Landroidx/compose/foundation/lazy/LazyListPrefetchStrategy;
.super Ljava/lang/Object;
.source "LazyListPrefetchStrategy.kt"


# virtual methods
.method public getPrefetchScheduler()Landroidx/compose/foundation/lazy/layout/PrefetchScheduler;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract onNestedPrefetch(Landroidx/compose/foundation/lazy/layout/NestedPrefetchScope;I)V
.end method

.method public abstract onScroll(Landroidx/compose/foundation/lazy/LazyListPrefetchScope;FLandroidx/compose/foundation/lazy/LazyListLayoutInfo;)V
.end method

.method public abstract onVisibleItemsUpdated(Landroidx/compose/foundation/lazy/LazyListPrefetchScope;Landroidx/compose/foundation/lazy/LazyListLayoutInfo;)V
.end method
