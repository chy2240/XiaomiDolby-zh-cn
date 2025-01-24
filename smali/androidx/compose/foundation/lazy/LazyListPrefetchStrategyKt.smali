.class public abstract Landroidx/compose/foundation/lazy/LazyListPrefetchStrategyKt;
.super Ljava/lang/Object;
.source "LazyListPrefetchStrategy.kt"


# direct methods
.method public static final LazyListPrefetchStrategy(I)Landroidx/compose/foundation/lazy/LazyListPrefetchStrategy;
    .locals 1

    .line 112
    new-instance v0, Landroidx/compose/foundation/lazy/DefaultLazyListPrefetchStrategy;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/lazy/DefaultLazyListPrefetchStrategy;-><init>(I)V

    return-object v0
.end method

.method public static synthetic LazyListPrefetchStrategy$default(IILjava/lang/Object;)Landroidx/compose/foundation/lazy/LazyListPrefetchStrategy;
    .locals 0

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/4 p0, 0x2

    .line 111
    :cond_0
    invoke-static {p0}, Landroidx/compose/foundation/lazy/LazyListPrefetchStrategyKt;->LazyListPrefetchStrategy(I)Landroidx/compose/foundation/lazy/LazyListPrefetchStrategy;

    move-result-object p0

    return-object p0
.end method
