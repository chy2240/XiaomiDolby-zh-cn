.class final Landroidx/compose/foundation/lazy/layout/TraversablePrefetchStateNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "LazyLayoutPrefetchState.kt"

# interfaces
.implements Landroidx/compose/ui/node/TraversableNode;


# instance fields
.field private prefetchState:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

.field private final traverseKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;)V
    .locals 0

    .line 493
    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    .line 492
    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/TraversablePrefetchStateNode;->prefetchState:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    .line 495
    const-string p1, "androidx.compose.foundation.lazy.layout.TraversablePrefetchStateNode"

    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/TraversablePrefetchStateNode;->traverseKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getPrefetchState()Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;
    .locals 0

    .line 492
    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/TraversablePrefetchStateNode;->prefetchState:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    return-object p0
.end method

.method public bridge synthetic getTraverseKey()Ljava/lang/Object;
    .locals 0

    .line 490
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/layout/TraversablePrefetchStateNode;->getTraverseKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTraverseKey()Ljava/lang/String;
    .locals 0

    .line 495
    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/TraversablePrefetchStateNode;->traverseKey:Ljava/lang/String;

    return-object p0
.end method

.method public final setPrefetchState(Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;)V
    .locals 0

    .line 492
    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/TraversablePrefetchStateNode;->prefetchState:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    return-void
.end method
