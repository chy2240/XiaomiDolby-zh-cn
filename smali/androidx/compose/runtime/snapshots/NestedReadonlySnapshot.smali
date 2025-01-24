.class public final Landroidx/compose/runtime/snapshots/NestedReadonlySnapshot;
.super Landroidx/compose/runtime/snapshots/Snapshot;
.source "Snapshot.kt"


# instance fields
.field private final parent:Landroidx/compose/runtime/snapshots/Snapshot;

.field private final readObserver:Lkotlin/jvm/functions/Function1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(ILandroidx/compose/runtime/snapshots/SnapshotIdSet;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/snapshots/Snapshot;)V
    .locals 1

    const/4 v0, 0x0

    .line 1372
    invoke-direct {p0, p1, p2, v0}, Landroidx/compose/runtime/snapshots/Snapshot;-><init>(ILandroidx/compose/runtime/snapshots/SnapshotIdSet;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1370
    iput-object p3, p0, Landroidx/compose/runtime/snapshots/NestedReadonlySnapshot;->readObserver:Lkotlin/jvm/functions/Function1;

    .line 1371
    iput-object p4, p0, Landroidx/compose/runtime/snapshots/NestedReadonlySnapshot;->parent:Landroidx/compose/runtime/snapshots/Snapshot;

    .line 1374
    invoke-virtual {p4, p0}, Landroidx/compose/runtime/snapshots/Snapshot;->nestedActivated$runtime_release(Landroidx/compose/runtime/snapshots/Snapshot;)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 1406
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->getDisposed$runtime_release()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1407
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->getId()I

    move-result v0

    iget-object v1, p0, Landroidx/compose/runtime/snapshots/NestedReadonlySnapshot;->parent:Landroidx/compose/runtime/snapshots/Snapshot;

    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/Snapshot;->getId()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1408
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->closeAndReleasePinning$runtime_release()V

    .line 1410
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/NestedReadonlySnapshot;->parent:Landroidx/compose/runtime/snapshots/Snapshot;

    invoke-virtual {v0, p0}, Landroidx/compose/runtime/snapshots/Snapshot;->nestedDeactivated$runtime_release(Landroidx/compose/runtime/snapshots/Snapshot;)V

    .line 1411
    invoke-super {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->dispose()V

    .line 1412
    invoke-static {p0}, Landroidx/compose/runtime/snapshots/tooling/SnapshotObserverKt;->dispatchObserverOnDispose(Landroidx/compose/runtime/snapshots/Snapshot;)V

    :cond_1
    return-void
.end method

.method public final getParent()Landroidx/compose/runtime/snapshots/Snapshot;
    .locals 0

    .line 1371
    iget-object p0, p0, Landroidx/compose/runtime/snapshots/NestedReadonlySnapshot;->parent:Landroidx/compose/runtime/snapshots/Snapshot;

    return-object p0
.end method

.method public bridge synthetic getReadObserver()Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 1367
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/NestedReadonlySnapshot;->getReadObserver$runtime_release()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    return-object p0
.end method

.method public getReadObserver$runtime_release()Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 1370
    iget-object p0, p0, Landroidx/compose/runtime/snapshots/NestedReadonlySnapshot;->readObserver:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public getReadOnly()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public getWriteObserver$runtime_release()Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public nestedActivated$runtime_release(Landroidx/compose/runtime/snapshots/Snapshot;)Ljava/lang/Void;
    .locals 0

    .line 1426
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateMapKt;->unsupported()Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public bridge synthetic nestedActivated$runtime_release(Landroidx/compose/runtime/snapshots/Snapshot;)V
    .locals 0

    .line 1367
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/snapshots/NestedReadonlySnapshot;->nestedActivated$runtime_release(Landroidx/compose/runtime/snapshots/Snapshot;)Ljava/lang/Void;

    return-void
.end method

.method public nestedDeactivated$runtime_release(Landroidx/compose/runtime/snapshots/Snapshot;)Ljava/lang/Void;
    .locals 0

    .line 1424
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateMapKt;->unsupported()Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public bridge synthetic nestedDeactivated$runtime_release(Landroidx/compose/runtime/snapshots/Snapshot;)V
    .locals 0

    .line 1367
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/snapshots/NestedReadonlySnapshot;->nestedDeactivated$runtime_release(Landroidx/compose/runtime/snapshots/Snapshot;)Ljava/lang/Void;

    return-void
.end method

.method public notifyObjectsInitialized$runtime_release()V
    .locals 0

    .line 0
    return-void
.end method

.method public recordModified$runtime_release(Landroidx/compose/runtime/snapshots/StateObject;)Ljava/lang/Void;
    .locals 0

    .line 1422
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$reportReadonlySnapshotWrite()Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public bridge synthetic recordModified$runtime_release(Landroidx/compose/runtime/snapshots/StateObject;)V
    .locals 0

    .line 1367
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/snapshots/NestedReadonlySnapshot;->recordModified$runtime_release(Landroidx/compose/runtime/snapshots/StateObject;)Ljava/lang/Void;

    return-void
.end method

.method public takeNestedSnapshot(Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/NestedReadonlySnapshot;
    .locals 9

    .line 163
    invoke-static {}, Landroidx/compose/runtime/snapshots/tooling/SnapshotObserverKt;->access$getObservers$p()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 167
    invoke-static {v0, p0, v2, p1, v1}, Landroidx/compose/runtime/snapshots/tooling/SnapshotObserverKt;->mergeObservers(Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;Landroidx/compose/runtime/snapshots/Snapshot;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lkotlin/Pair;

    move-result-object p1

    .line 168
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/snapshots/tooling/SnapshotInstanceObservers;

    .line 169
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/tooling/SnapshotInstanceObservers;->getReadObserver()Lkotlin/jvm/functions/Function1;

    move-result-object v3

    .line 170
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/tooling/SnapshotInstanceObservers;->getWriteObserver()Lkotlin/jvm/functions/Function1;

    .line 171
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    move-object v2, p1

    move-object p1, v3

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 1391
    :goto_0
    new-instance v3, Landroidx/compose/runtime/snapshots/NestedReadonlySnapshot;

    .line 1392
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->getId()I

    move-result v4

    .line 1393
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->getInvalid$runtime_release()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v5

    .line 1394
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/NestedReadonlySnapshot;->getReadObserver$runtime_release()Lkotlin/jvm/functions/Function1;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x4

    invoke-static {p1, v6, v7, v8, v1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->mergedReadObserver$default(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZILjava/lang/Object;)Lkotlin/jvm/functions/Function1;

    move-result-object p1

    .line 1395
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/NestedReadonlySnapshot;->getParent()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v1

    .line 1391
    invoke-direct {v3, v4, v5, p1, v1}, Landroidx/compose/runtime/snapshots/NestedReadonlySnapshot;-><init>(ILandroidx/compose/runtime/snapshots/SnapshotIdSet;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/snapshots/Snapshot;)V

    if-eqz v0, :cond_1

    .line 174
    invoke-static {v0, p0, v3, v2}, Landroidx/compose/runtime/snapshots/tooling/SnapshotObserverKt;->dispatchCreatedObservers(Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Ljava/util/Map;)V

    :cond_1
    return-object v3
.end method

.method public bridge synthetic takeNestedSnapshot(Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/Snapshot;
    .locals 0

    .line 1367
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/snapshots/NestedReadonlySnapshot;->takeNestedSnapshot(Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/NestedReadonlySnapshot;

    move-result-object p0

    return-object p0
.end method
