.class final Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$NestedPrefetchScopeImpl;
.super Ljava/lang/Object;
.source "LazyLayoutPrefetchState.kt"

# interfaces
.implements Landroidx/compose/foundation/lazy/layout/NestedPrefetchScope;


# instance fields
.field private final _requests:Ljava/util/List;

.field final synthetic this$0:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;)V
    .locals 0

    .line 102
    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$NestedPrefetchScopeImpl;->this$0:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$NestedPrefetchScopeImpl;->_requests:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getRequests()Ljava/util/List;
    .locals 0

    .line 105
    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$NestedPrefetchScopeImpl;->_requests:Ljava/util/List;

    return-object p0
.end method

.method public schedulePrefetch(I)V
    .locals 2

    .line 110
    invoke-static {}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchStateKt;->access$getZeroConstraints$p()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$NestedPrefetchScopeImpl;->schedulePrefetch-0kLqBqw(IJ)V

    return-void
.end method

.method public schedulePrefetch-0kLqBqw(IJ)V
    .locals 2

    .line 114
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$NestedPrefetchScopeImpl;->this$0:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;->getPrefetchHandleProvider$foundation_release()Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 115
    :cond_0
    iget-object v1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$NestedPrefetchScopeImpl;->_requests:Ljava/util/List;

    .line 119
    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$NestedPrefetchScopeImpl;->this$0:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    invoke-static {p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;->access$getPrefetchMetrics$p(Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;)Landroidx/compose/foundation/lazy/layout/PrefetchMetrics;

    move-result-object p0

    .line 116
    invoke-virtual {v0, p1, p2, p3, p0}, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider;->createNestedPrefetchRequest-VKLhPVY(IJLandroidx/compose/foundation/lazy/layout/PrefetchMetrics;)Landroidx/compose/foundation/lazy/layout/PrefetchRequest;

    move-result-object p0

    .line 115
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
