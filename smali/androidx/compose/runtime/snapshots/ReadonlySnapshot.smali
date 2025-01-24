.class public final Landroidx/compose/runtime/snapshots/ReadonlySnapshot;
.super Landroidx/compose/runtime/snapshots/Snapshot;
.source "Snapshot.kt"


# instance fields
.field private final readObserver:Lkotlin/jvm/functions/Function1;

.field private snapshots:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(ILandroidx/compose/runtime/snapshots/SnapshotIdSet;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const/4 v0, 0x0

    .line 1300
    invoke-direct {p0, p1, p2, v0}, Landroidx/compose/runtime/snapshots/Snapshot;-><init>(ILandroidx/compose/runtime/snapshots/SnapshotIdSet;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1299
    iput-object p3, p0, Landroidx/compose/runtime/snapshots/ReadonlySnapshot;->readObserver:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x1

    .line 1305
    iput p1, p0, Landroidx/compose/runtime/snapshots/ReadonlySnapshot;->snapshots:I

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 1344
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->getDisposed$runtime_release()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1345
    invoke-virtual {p0, p0}, Landroidx/compose/runtime/snapshots/ReadonlySnapshot;->nestedDeactivated$runtime_release(Landroidx/compose/runtime/snapshots/Snapshot;)V

    .line 1346
    invoke-super {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->dispose()V

    .line 1347
    invoke-static {p0}, Landroidx/compose/runtime/snapshots/tooling/SnapshotObserverKt;->dispatchObserverOnDispose(Landroidx/compose/runtime/snapshots/Snapshot;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic getReadObserver()Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 1298
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/ReadonlySnapshot;->getReadObserver$runtime_release()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    return-object p0
.end method

.method public getReadObserver$runtime_release()Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 1299
    iget-object p0, p0, Landroidx/compose/runtime/snapshots/ReadonlySnapshot;->readObserver:Lkotlin/jvm/functions/Function1;

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

.method public nestedActivated$runtime_release(Landroidx/compose/runtime/snapshots/Snapshot;)V
    .locals 0

    .line 1352
    iget p1, p0, Landroidx/compose/runtime/snapshots/ReadonlySnapshot;->snapshots:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/compose/runtime/snapshots/ReadonlySnapshot;->snapshots:I

    return-void
.end method

.method public nestedDeactivated$runtime_release(Landroidx/compose/runtime/snapshots/Snapshot;)V
    .locals 0

    .line 1356
    iget p1, p0, Landroidx/compose/runtime/snapshots/ReadonlySnapshot;->snapshots:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/compose/runtime/snapshots/ReadonlySnapshot;->snapshots:I

    if-nez p1, :cond_0

    .line 1358
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->closeAndReleasePinning$runtime_release()V

    :cond_0
    return-void
.end method

.method public notifyObjectsInitialized$runtime_release()V
    .locals 0

    .line 0
    return-void
.end method

.method public recordModified$runtime_release(Landroidx/compose/runtime/snapshots/StateObject;)V
    .locals 0

    .line 1363
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$reportReadonlySnapshotWrite()Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public takeNestedSnapshot(Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/Snapshot;
    .locals 9

    .line 1323
    invoke-static {p0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$validateOpen(Landroidx/compose/runtime/snapshots/Snapshot;)V

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

    .line 1330
    :goto_0
    new-instance v3, Landroidx/compose/runtime/snapshots/NestedReadonlySnapshot;

    .line 1331
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->getId()I

    move-result v4

    .line 1332
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->getInvalid$runtime_release()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v5

    .line 1333
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/ReadonlySnapshot;->getReadObserver$runtime_release()Lkotlin/jvm/functions/Function1;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x4

    invoke-static {p1, v6, v7, v8, v1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->mergedReadObserver$default(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZILjava/lang/Object;)Lkotlin/jvm/functions/Function1;

    move-result-object p1

    .line 1330
    invoke-direct {v3, v4, v5, p1, p0}, Landroidx/compose/runtime/snapshots/NestedReadonlySnapshot;-><init>(ILandroidx/compose/runtime/snapshots/SnapshotIdSet;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/snapshots/Snapshot;)V

    if-eqz v0, :cond_1

    .line 174
    invoke-static {v0, p0, v3, v2}, Landroidx/compose/runtime/snapshots/tooling/SnapshotObserverKt;->dispatchCreatedObservers(Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Ljava/util/Map;)V

    :cond_1
    return-object v3
.end method
