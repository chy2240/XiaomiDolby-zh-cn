.class public abstract Landroidx/compose/runtime/snapshots/tooling/SnapshotObserverKt;
.super Ljava/lang/Object;
.source "SnapshotObserver.kt"


# static fields
.field private static observers:Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public static final synthetic access$getObservers$p()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/runtime/snapshots/tooling/SnapshotObserverKt;->observers:Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    return-object v0
.end method

.method public static final dispatchCreatedObservers(Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Ljava/util/Map;)V
    .locals 0

    .line 34
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, 0x0

    .line 35
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 36
    invoke-static {p0}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p0, 0x0

    if-eqz p3, :cond_0

    .line 220
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/runtime/snapshots/tooling/SnapshotInstanceObservers;

    .line 221
    :cond_0
    throw p0

    :cond_1
    return-void
.end method

.method public static final dispatchObserverOnApplied(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/collection/ScatterSet;)V
    .locals 1

    .line 232
    sget-object p0, Landroidx/compose/runtime/snapshots/tooling/SnapshotObserverKt;->observers:Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    if-eqz p0, :cond_4

    .line 233
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 234
    invoke-static {p1}, Landroidx/compose/runtime/collection/ScatterSetWrapperKt;->wrapIntoSet(Landroidx/collection/ScatterSet;)Ljava/util/Set;

    move-result-object p1

    if-nez p1, :cond_2

    :cond_1
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    .line 34
    :cond_2
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p1

    if-gtz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 35
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 36
    invoke-static {p0}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p0, 0x0

    .line 235
    throw p0

    :cond_4
    :goto_0
    return-void
.end method

.method public static final dispatchObserverOnDispose(Landroidx/compose/runtime/snapshots/Snapshot;)V
    .locals 1

    .line 227
    sget-object p0, Landroidx/compose/runtime/snapshots/tooling/SnapshotObserverKt;->observers:Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    if-eqz p0, :cond_1

    .line 34
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 35
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 36
    invoke-static {p0}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p0, 0x0

    .line 227
    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static final mergeObservers(Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;Landroidx/compose/runtime/snapshots/Snapshot;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lkotlin/Pair;
    .locals 0

    .line 34
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p1

    const/4 p2, 0x0

    if-gtz p1, :cond_0

    .line 201
    new-instance p0, Landroidx/compose/runtime/snapshots/tooling/SnapshotInstanceObservers;

    invoke-direct {p0, p3, p4}, Landroidx/compose/runtime/snapshots/tooling/SnapshotInstanceObservers;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    invoke-static {p0, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 35
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 36
    invoke-static {p0}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 189
    throw p2
.end method
