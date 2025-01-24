.class final Landroidx/collection/MutableOrderedScatterSet$MutableSetWrapper;
.super Landroidx/collection/OrderedScatterSet$SetWrapper;
.source "OrderedScatterSet.kt"

# interfaces
.implements Ljava/util/Set;
.implements Lkotlin/jvm/internal/markers/KMutableSet;


# instance fields
.field final synthetic this$0:Landroidx/collection/MutableOrderedScatterSet;


# direct methods
.method public constructor <init>(Landroidx/collection/MutableOrderedScatterSet;)V
    .locals 0

    .line 1391
    iput-object p1, p0, Landroidx/collection/MutableOrderedScatterSet$MutableSetWrapper;->this$0:Landroidx/collection/MutableOrderedScatterSet;

    invoke-direct {p0, p1}, Landroidx/collection/OrderedScatterSet$SetWrapper;-><init>(Landroidx/collection/OrderedScatterSet;)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 0

    .line 1392
    iget-object p0, p0, Landroidx/collection/MutableOrderedScatterSet$MutableSetWrapper;->this$0:Landroidx/collection/MutableOrderedScatterSet;

    invoke-virtual {p0, p1}, Landroidx/collection/MutableOrderedScatterSet;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1395
    iget-object p0, p0, Landroidx/collection/MutableOrderedScatterSet$MutableSetWrapper;->this$0:Landroidx/collection/MutableOrderedScatterSet;

    check-cast p1, Ljava/lang/Iterable;

    invoke-virtual {p0, p1}, Landroidx/collection/MutableOrderedScatterSet;->addAll(Ljava/lang/Iterable;)Z

    move-result p0

    return p0
.end method

.method public clear()V
    .locals 0

    .line 1398
    iget-object p0, p0, Landroidx/collection/MutableOrderedScatterSet$MutableSetWrapper;->this$0:Landroidx/collection/MutableOrderedScatterSet;

    invoke-virtual {p0}, Landroidx/collection/MutableOrderedScatterSet;->clear()V

    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .line 1402
    new-instance v0, Landroidx/collection/MutableOrderedScatterSet$MutableSetWrapper$iterator$1;

    iget-object p0, p0, Landroidx/collection/MutableOrderedScatterSet$MutableSetWrapper;->this$0:Landroidx/collection/MutableOrderedScatterSet;

    invoke-direct {v0, p0}, Landroidx/collection/MutableOrderedScatterSet$MutableSetWrapper$iterator$1;-><init>(Landroidx/collection/MutableOrderedScatterSet;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 0

    .line 1423
    iget-object p0, p0, Landroidx/collection/MutableOrderedScatterSet$MutableSetWrapper;->this$0:Landroidx/collection/MutableOrderedScatterSet;

    invoke-virtual {p0, p1}, Landroidx/collection/MutableOrderedScatterSet;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1429
    iget-object p0, p0, Landroidx/collection/MutableOrderedScatterSet$MutableSetWrapper;->this$0:Landroidx/collection/MutableOrderedScatterSet;

    check-cast p1, Ljava/lang/Iterable;

    invoke-virtual {p0, p1}, Landroidx/collection/MutableOrderedScatterSet;->removeAll(Ljava/lang/Iterable;)Z

    move-result p0

    return p0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1426
    iget-object p0, p0, Landroidx/collection/MutableOrderedScatterSet$MutableSetWrapper;->this$0:Landroidx/collection/MutableOrderedScatterSet;

    invoke-virtual {p0, p1}, Landroidx/collection/MutableOrderedScatterSet;->retainAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method
