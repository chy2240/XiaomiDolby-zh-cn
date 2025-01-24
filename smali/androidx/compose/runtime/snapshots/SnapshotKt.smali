.class public abstract Landroidx/compose/runtime/snapshots/SnapshotKt;
.super Ljava/lang/Object;
.source "Snapshot.kt"


# static fields
.field private static applyObservers:Ljava/util/List;

.field private static final currentGlobalSnapshot:Ljava/util/concurrent/atomic/AtomicReference;

.field private static final emptyLambda:Lkotlin/jvm/functions/Function1;

.field private static final extraStateObjects:Landroidx/compose/runtime/snapshots/SnapshotWeakSet;

.field private static globalWriteObservers:Ljava/util/List;

.field private static final lock:Ljava/lang/Object;

.field private static nextSnapshotId:I

.field private static openSnapshots:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

.field private static pendingApplyObserverCount:Landroidx/compose/runtime/internal/AtomicInt;

.field private static final pinningTable:Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;

.field private static final snapshotInitializer:Landroidx/compose/runtime/snapshots/Snapshot;

.field private static final threadSnapshot:Landroidx/compose/runtime/internal/SnapshotThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1429
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt$emptyLambda$1;->INSTANCE:Landroidx/compose/runtime/snapshots/SnapshotKt$emptyLambda$1;

    sput-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->emptyLambda:Lkotlin/jvm/functions/Function1;

    .line 1838
    new-instance v0, Landroidx/compose/runtime/internal/SnapshotThreadLocal;

    invoke-direct {v0}, Landroidx/compose/runtime/internal/SnapshotThreadLocal;-><init>()V

    sput-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->threadSnapshot:Landroidx/compose/runtime/internal/SnapshotThreadLocal;

    .line 1844
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->lock:Ljava/lang/Object;

    .line 1853
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->Companion:Landroidx/compose/runtime/snapshots/SnapshotIdSet$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotIdSet$Companion;->getEMPTY()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v1

    sput-object v1, Landroidx/compose/runtime/snapshots/SnapshotKt;->openSnapshots:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    const/4 v1, 0x2

    .line 1856
    sput v1, Landroidx/compose/runtime/snapshots/SnapshotKt;->nextSnapshotId:I

    .line 1863
    new-instance v1, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;

    invoke-direct {v1}, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;-><init>()V

    sput-object v1, Landroidx/compose/runtime/snapshots/SnapshotKt;->pinningTable:Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;

    .line 1870
    new-instance v1, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;

    invoke-direct {v1}, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;-><init>()V

    sput-object v1, Landroidx/compose/runtime/snapshots/SnapshotKt;->extraStateObjects:Landroidx/compose/runtime/snapshots/SnapshotWeakSet;

    .line 1873
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    sput-object v1, Landroidx/compose/runtime/snapshots/SnapshotKt;->applyObservers:Ljava/util/List;

    .line 1876
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    sput-object v1, Landroidx/compose/runtime/snapshots/SnapshotKt;->globalWriteObservers:Ljava/util/List;

    .line 1880
    new-instance v1, Landroidx/compose/runtime/snapshots/GlobalSnapshot;

    sget v2, Landroidx/compose/runtime/snapshots/SnapshotKt;->nextSnapshotId:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Landroidx/compose/runtime/snapshots/SnapshotKt;->nextSnapshotId:I

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotIdSet$Companion;->getEMPTY()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroidx/compose/runtime/snapshots/GlobalSnapshot;-><init>(ILandroidx/compose/runtime/snapshots/SnapshotIdSet;)V

    .line 1881
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->openSnapshots:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/Snapshot;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->set(I)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v0

    sput-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->openSnapshots:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 1879
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->currentGlobalSnapshot:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1893
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/snapshots/Snapshot;

    sput-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->snapshotInitializer:Landroidx/compose/runtime/snapshots/Snapshot;

    .line 1918
    new-instance v0, Landroidx/compose/runtime/internal/AtomicInt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/runtime/internal/AtomicInt;-><init>(I)V

    sput-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->pendingApplyObserverCount:Landroidx/compose/runtime/internal/AtomicInt;

    return-void
.end method

.method public static final synthetic access$advanceGlobalSnapshot(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->advanceGlobalSnapshot(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$advanceGlobalSnapshot()V
    .locals 0

    .line 1
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->advanceGlobalSnapshot()V

    return-void
.end method

.method public static final synthetic access$checkAndOverwriteUnusedRecordsLocked()V
    .locals 0

    .line 1
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->checkAndOverwriteUnusedRecordsLocked()V

    return-void
.end method

.method public static final synthetic access$createTransparentSnapshotWithNoParentReadObserver(Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;Z)Landroidx/compose/runtime/snapshots/Snapshot;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/snapshots/SnapshotKt;->createTransparentSnapshotWithNoParentReadObserver(Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;Z)Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getApplyObservers$p()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->applyObservers:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getCurrentGlobalSnapshot$p()Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->currentGlobalSnapshot:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method public static final synthetic access$getEmptyLambda$p()Lkotlin/jvm/functions/Function1;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->emptyLambda:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final synthetic access$getGlobalWriteObservers$p()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->globalWriteObservers:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getNextSnapshotId$p()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->nextSnapshotId:I

    return v0
.end method

.method public static final synthetic access$getOpenSnapshots$p()Landroidx/compose/runtime/snapshots/SnapshotIdSet;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->openSnapshots:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    return-object v0
.end method

.method public static final synthetic access$getThreadSnapshot$p()Landroidx/compose/runtime/internal/SnapshotThreadLocal;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->threadSnapshot:Landroidx/compose/runtime/internal/SnapshotThreadLocal;

    return-object v0
.end method

.method public static final synthetic access$mergedReadObserver(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Z)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/snapshots/SnapshotKt;->mergedReadObserver(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Z)Lkotlin/jvm/functions/Function1;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$mergedWriteObserver(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->mergedWriteObserver(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function1;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$optimisticMerges(Landroidx/compose/runtime/snapshots/MutableSnapshot;Landroidx/compose/runtime/snapshots/MutableSnapshot;Landroidx/compose/runtime/snapshots/SnapshotIdSet;)Ljava/util/Map;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/snapshots/SnapshotKt;->optimisticMerges(Landroidx/compose/runtime/snapshots/MutableSnapshot;Landroidx/compose/runtime/snapshots/MutableSnapshot;Landroidx/compose/runtime/snapshots/SnapshotIdSet;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$processForUnusedRecordsLocked(Landroidx/compose/runtime/snapshots/StateObject;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->processForUnusedRecordsLocked(Landroidx/compose/runtime/snapshots/StateObject;)V

    return-void
.end method

.method public static final synthetic access$readError()Ljava/lang/Void;
    .locals 1

    .line 1
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->readError()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$readable(Landroidx/compose/runtime/snapshots/StateRecord;ILandroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/StateRecord;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/snapshots/SnapshotKt;->readable(Landroidx/compose/runtime/snapshots/StateRecord;ILandroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$reportReadonlySnapshotWrite()Ljava/lang/Void;
    .locals 1

    .line 1
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->reportReadonlySnapshotWrite()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$setApplyObservers$p(Ljava/util/List;)V
    .locals 0

    .line 1
    sput-object p0, Landroidx/compose/runtime/snapshots/SnapshotKt;->applyObservers:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$setGlobalWriteObservers$p(Ljava/util/List;)V
    .locals 0

    .line 1
    sput-object p0, Landroidx/compose/runtime/snapshots/SnapshotKt;->globalWriteObservers:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$setNextSnapshotId$p(I)V
    .locals 0

    .line 1
    sput p0, Landroidx/compose/runtime/snapshots/SnapshotKt;->nextSnapshotId:I

    return-void
.end method

.method public static final synthetic access$setOpenSnapshots$p(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)V
    .locals 0

    .line 1
    sput-object p0, Landroidx/compose/runtime/snapshots/SnapshotKt;->openSnapshots:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    return-void
.end method

.method public static final synthetic access$takeNewGlobalSnapshot(Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->takeNewGlobalSnapshot(Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$takeNewSnapshot(Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/Snapshot;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->takeNewSnapshot(Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$validateOpen(Landroidx/compose/runtime/snapshots/Snapshot;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->validateOpen(Landroidx/compose/runtime/snapshots/Snapshot;)V

    return-void
.end method

.method public static final addRange(Landroidx/compose/runtime/snapshots/SnapshotIdSet;II)Landroidx/compose/runtime/snapshots/SnapshotIdSet;
    .locals 0

    :goto_0
    if-ge p1, p2, :cond_0

    .line 2414
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->set(I)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object p0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private static final advanceGlobalSnapshot(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 17

    const/4 v0, 0x1

    .line 1921
    sget-object v1, Landroidx/compose/runtime/snapshots/SnapshotKt;->snapshotInitializer:Landroidx/compose/runtime/snapshots/Snapshot;

    const-string v2, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.GlobalSnapshot"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/compose/runtime/snapshots/GlobalSnapshot;

    .line 1846
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    move-result-object v1

    .line 27
    monitor-enter v1

    .line 1925
    :try_start_0
    sget-object v2, Landroidx/compose/runtime/snapshots/SnapshotKt;->currentGlobalSnapshot:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    .line 1926
    move-object v3, v2

    check-cast v3, Landroidx/compose/runtime/snapshots/GlobalSnapshot;

    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->getModified$runtime_release()Landroidx/collection/MutableScatterSet;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1928
    sget-object v4, Landroidx/compose/runtime/snapshots/SnapshotKt;->pendingApplyObserverCount:Landroidx/compose/runtime/internal/AtomicInt;

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/internal/AtomicInt;->add(I)I

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    .line 1930
    :cond_0
    :goto_0
    move-object v4, v2

    check-cast v4, Landroidx/compose/runtime/snapshots/Snapshot;

    move-object/from16 v5, p0

    invoke-static {v4, v5}, Landroidx/compose/runtime/snapshots/SnapshotKt;->takeNewGlobalSnapshot(Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    monitor-exit v1

    const/4 v1, 0x0

    if-eqz v3, :cond_2

    const/4 v5, -0x1

    .line 1937
    :try_start_1
    sget-object v6, Landroidx/compose/runtime/snapshots/SnapshotKt;->applyObservers:Ljava/util/List;

    .line 34
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v7

    move v8, v1

    :goto_1
    if-ge v8, v7, :cond_1

    .line 35
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 36
    check-cast v9, Lkotlin/jvm/functions/Function2;

    .line 1938
    invoke-static {v3}, Landroidx/compose/runtime/collection/ScatterSetWrapperKt;->wrapIntoSet(Landroidx/collection/ScatterSet;)Ljava/util/Set;

    move-result-object v10

    invoke-interface {v9, v10, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/2addr v8, v0

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 1940
    :cond_1
    sget-object v2, Landroidx/compose/runtime/snapshots/SnapshotKt;->pendingApplyObserverCount:Landroidx/compose/runtime/internal/AtomicInt;

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/internal/AtomicInt;->add(I)I

    goto :goto_3

    :goto_2
    sget-object v1, Landroidx/compose/runtime/snapshots/SnapshotKt;->pendingApplyObserverCount:Landroidx/compose/runtime/internal/AtomicInt;

    invoke-virtual {v1, v5}, Landroidx/compose/runtime/internal/AtomicInt;->add(I)I

    throw v0

    .line 1846
    :cond_2
    :goto_3
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    move-result-object v2

    .line 27
    monitor-enter v2

    .line 1945
    :try_start_2
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->checkAndOverwriteUnusedRecordsLocked()V

    if-eqz v3, :cond_7

    .line 232
    iget-object v5, v3, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 201
    iget-object v3, v3, Landroidx/collection/ScatterSet;->metadata:[J

    .line 202
    array-length v6, v3

    add-int/lit8 v6, v6, -0x2

    if-ltz v6, :cond_6

    move v7, v1

    .line 205
    :goto_4
    aget-wide v8, v3, v7

    not-long v10, v8

    const/4 v12, 0x7

    shl-long/2addr v10, v12

    and-long/2addr v10, v8

    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v10, v12

    cmp-long v10, v10, v12

    if-eqz v10, :cond_5

    sub-int v10, v7, v6

    not-int v10, v10

    ushr-int/lit8 v10, v10, 0x1f

    const/16 v11, 0x8

    rsub-int/lit8 v10, v10, 0x8

    move v12, v1

    :goto_5
    if-ge v12, v10, :cond_4

    const-wide/16 v13, 0xff

    and-long/2addr v13, v8

    const-wide/16 v15, 0x80

    cmp-long v13, v13, v15

    if-gez v13, :cond_3

    shl-int/lit8 v13, v7, 0x3

    add-int/2addr v13, v12

    .line 233
    aget-object v13, v5, v13

    check-cast v13, Landroidx/compose/runtime/snapshots/StateObject;

    .line 1946
    invoke-static {v13}, Landroidx/compose/runtime/snapshots/SnapshotKt;->processForUnusedRecordsLocked(Landroidx/compose/runtime/snapshots/StateObject;)V

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_7

    :cond_3
    :goto_6
    shr-long/2addr v8, v11

    add-int/2addr v12, v0

    goto :goto_5

    :cond_4
    if-ne v10, v11, :cond_6

    :cond_5
    if-eq v7, v6, :cond_6

    add-int/2addr v7, v0

    goto :goto_4

    .line 234
    :cond_6
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 27
    :cond_7
    monitor-exit v2

    return-object v4

    :goto_7
    monitor-exit v2

    throw v0

    .line 27
    :goto_8
    monitor-exit v1

    throw v0
.end method

.method private static final advanceGlobalSnapshot()V
    .locals 1

    .line 1952
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt$advanceGlobalSnapshot$3;->INSTANCE:Landroidx/compose/runtime/snapshots/SnapshotKt$advanceGlobalSnapshot$3;

    invoke-static {v0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->advanceGlobalSnapshot(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    return-void
.end method

.method private static final checkAndOverwriteUnusedRecordsLocked()V
    .locals 7

    .line 2170
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->extraStateObjects:Landroidx/compose/runtime/snapshots/SnapshotWeakSet;

    .line 119
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->getSize$runtime_release()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    const/4 v5, 0x0

    if-ge v3, v1, :cond_3

    .line 124
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->getValues$runtime_release()[Landroidx/compose/runtime/internal/WeakReference;

    move-result-object v6

    aget-object v6, v6, v3

    if-eqz v6, :cond_0

    .line 125
    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    :cond_0
    if-eqz v5, :cond_2

    .line 126
    check-cast v5, Landroidx/compose/runtime/snapshots/StateObject;

    .line 2170
    invoke-static {v5}, Landroidx/compose/runtime/snapshots/SnapshotKt;->overwriteUnusedRecordsLocked(Landroidx/compose/runtime/snapshots/StateObject;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eq v4, v3, :cond_1

    .line 129
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->getValues$runtime_release()[Landroidx/compose/runtime/internal/WeakReference;

    move-result-object v5

    aput-object v6, v5, v4

    .line 130
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->getHashes$runtime_release()[I

    move-result-object v5

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->getHashes$runtime_release()[I

    move-result-object v6

    aget v6, v6, v3

    aput v6, v5, v4

    :cond_1
    add-int/lit8 v4, v4, 0x1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    move v3, v4

    :goto_1
    if-ge v3, v1, :cond_4

    .line 138
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->getValues$runtime_release()[Landroidx/compose/runtime/internal/WeakReference;

    move-result-object v6

    aput-object v5, v6, v3

    .line 139
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->getHashes$runtime_release()[I

    move-result-object v6

    aput v2, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    if-eq v4, v1, :cond_5

    .line 144
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->setSize$runtime_release(I)V

    :cond_5
    return-void
.end method

.method private static final createTransparentSnapshotWithNoParentReadObserver(Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;Z)Landroidx/compose/runtime/snapshots/Snapshot;
    .locals 8

    .line 1783
    instance-of v0, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;

    if-nez v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 1792
    :cond_0
    new-instance v0, Landroidx/compose/runtime/snapshots/TransparentObserverSnapshot;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, p2}, Landroidx/compose/runtime/snapshots/TransparentObserverSnapshot;-><init>(Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;ZZ)V

    goto :goto_3

    .line 1784
    :cond_1
    :goto_0
    new-instance v1, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;

    if-eqz v0, :cond_2

    .line 1785
    check-cast p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;

    :goto_1
    move-object v3, p0

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    :goto_2
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v1

    move-object v4, p1

    move v7, p2

    .line 1784
    invoke-direct/range {v2 .. v7}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;-><init>(Landroidx/compose/runtime/snapshots/MutableSnapshot;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZZ)V

    move-object v0, v1

    :goto_3
    return-object v0
.end method

.method static synthetic createTransparentSnapshotWithNoParentReadObserver$default(Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;ZILjava/lang/Object;)Landroidx/compose/runtime/snapshots/Snapshot;
    .locals 0

    and-int/lit8 p4, p3, 0x2

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 1778
    :cond_1
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/snapshots/SnapshotKt;->createTransparentSnapshotWithNoParentReadObserver(Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;Z)Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object p0

    return-object p0
.end method

.method public static final current(Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;
    .locals 3

    .line 2394
    sget-object v0, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->getCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v1

    .line 2395
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/Snapshot;->getId()I

    move-result v2

    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/Snapshot;->getInvalid$runtime_release()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v1

    invoke-static {p0, v2, v1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->readable(Landroidx/compose/runtime/snapshots/StateRecord;ILandroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1846
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    move-result-object v1

    .line 27
    monitor-enter v1

    .line 2397
    :try_start_0
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->getCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v0

    .line 2398
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->getId()I

    move-result v2

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->getInvalid$runtime_release()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v0

    invoke-static {p0, v2, v0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->readable(Landroidx/compose/runtime/snapshots/StateRecord;ILandroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    monitor-exit v1

    if-eqz p0, :cond_0

    move-object v1, p0

    goto :goto_0

    .line 2401
    :cond_0
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->readError()Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    :catchall_0
    move-exception p0

    .line 27
    monitor-exit v1

    throw p0

    :cond_1
    :goto_0
    return-object v1
.end method

.method public static final current(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/StateRecord;
    .locals 1

    .line 2390
    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/Snapshot;->getId()I

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/Snapshot;->getInvalid$runtime_release()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object p1

    invoke-static {p0, v0, p1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->readable(Landroidx/compose/runtime/snapshots/StateRecord;ILandroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->readError()Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public static final currentSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;
    .locals 1

    .line 1219
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->threadSnapshot:Landroidx/compose/runtime/internal/SnapshotThreadLocal;

    invoke-virtual {v0}, Landroidx/compose/runtime/internal/SnapshotThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/snapshots/Snapshot;

    if-nez v0, :cond_0

    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->currentGlobalSnapshot:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/snapshots/Snapshot;

    :cond_0
    return-object v0
.end method

.method public static final getLock()Ljava/lang/Object;
    .locals 1

    .line 1844
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method public static final getSnapshotInitializer()Landroidx/compose/runtime/snapshots/Snapshot;
    .locals 1

    .line 1893
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->snapshotInitializer:Landroidx/compose/runtime/snapshots/Snapshot;

    return-object v0
.end method

.method private static final mergedReadObserver(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Z)Lkotlin/jvm/functions/Function1;
    .locals 0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-eq p0, p1, :cond_1

    .line 1807
    new-instance p2, Landroidx/compose/runtime/snapshots/SnapshotKt$mergedReadObserver$1;

    invoke-direct {p2, p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotKt$mergedReadObserver$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    move-object p0, p2

    goto :goto_1

    :cond_1
    if-nez p0, :cond_2

    move-object p0, p1

    :cond_2
    :goto_1
    return-object p0
.end method

.method static synthetic mergedReadObserver$default(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZILjava/lang/Object;)Lkotlin/jvm/functions/Function1;
    .locals 0

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 1800
    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/snapshots/SnapshotKt;->mergedReadObserver(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Z)Lkotlin/jvm/functions/Function1;

    move-result-object p0

    return-object p0
.end method

.method private static final mergedWriteObserver(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function1;
    .locals 1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eq p0, p1, :cond_0

    .line 1819
    new-instance v0, Landroidx/compose/runtime/snapshots/SnapshotKt$mergedWriteObserver$1;

    invoke-direct {v0, p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotKt$mergedWriteObserver$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    move-object p0, v0

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    move-object p0, p1

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static final newOverwritableRecordLocked(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;)Landroidx/compose/runtime/snapshots/StateRecord;
    .locals 2

    .line 2264
    invoke-static {p1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->usedLocked(Landroidx/compose/runtime/snapshots/StateObject;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v0

    const v1, 0x7fffffff

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/snapshots/StateRecord;->setSnapshotId$runtime_release(I)V

    goto :goto_0

    .line 2265
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/StateRecord;->create()Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v0

    .line 2266
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/snapshots/StateRecord;->setSnapshotId$runtime_release(I)V

    .line 2267
    invoke-interface {p1}, Landroidx/compose/runtime/snapshots/StateObject;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/compose/runtime/snapshots/StateRecord;->setNext$runtime_release(Landroidx/compose/runtime/snapshots/StateRecord;)V

    .line 2268
    const-string p0, "null cannot be cast to non-null type T of androidx.compose.runtime.snapshots.SnapshotKt.newOverwritableRecordLocked$lambda$16"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Landroidx/compose/runtime/snapshots/StateObject;->prependStateRecord(Landroidx/compose/runtime/snapshots/StateRecord;)V

    .line 2265
    const-string p0, "null cannot be cast to non-null type T of androidx.compose.runtime.snapshots.SnapshotKt.newOverwritableRecordLocked"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public static final newWritableRecord(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/StateRecord;
    .locals 1

    .line 1846
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    move-result-object v0

    .line 27
    monitor-enter v0

    .line 2230
    :try_start_0
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/snapshots/SnapshotKt;->newWritableRecordLocked(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static final newWritableRecordLocked(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/StateRecord;
    .locals 0

    .line 2245
    invoke-static {p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->newOverwritableRecordLocked(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object p1

    .line 2246
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/snapshots/StateRecord;->assign(Landroidx/compose/runtime/snapshots/StateRecord;)V

    .line 2247
    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/Snapshot;->getId()I

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/snapshots/StateRecord;->setSnapshotId$runtime_release(I)V

    return-object p1
.end method

.method public static final notifyWrite(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/StateObject;)V
    .locals 1

    .line 2274
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->getWriteCount$runtime_release()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/snapshots/Snapshot;->setWriteCount$runtime_release(I)V

    .line 2275
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->getWriteObserver$runtime_release()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static final optimisticMerges(Landroidx/compose/runtime/snapshots/MutableSnapshot;Landroidx/compose/runtime/snapshots/MutableSnapshot;Landroidx/compose/runtime/snapshots/SnapshotIdSet;)Ljava/util/Map;
    .locals 20

    .line 2353
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->getModified$runtime_release()Landroidx/collection/MutableScatterSet;

    move-result-object v0

    .line 2354
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/snapshots/Snapshot;->getId()I

    move-result v1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return-object v2

    .line 2356
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/snapshots/Snapshot;->getInvalid$runtime_release()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/snapshots/Snapshot;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->set(I)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->getPreviousIds$runtime_release()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->or(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v3

    .line 232
    iget-object v4, v0, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 201
    iget-object v0, v0, Landroidx/collection/ScatterSet;->metadata:[J

    .line 202
    array-length v5, v0

    add-int/lit8 v5, v5, -0x2

    if-ltz v5, :cond_b

    move-object v8, v2

    const/4 v7, 0x0

    .line 205
    :goto_0
    aget-wide v9, v0, v7

    not-long v11, v9

    const/4 v13, 0x7

    shl-long/2addr v11, v13

    and-long/2addr v11, v9

    const-wide v13, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v11, v13

    cmp-long v11, v11, v13

    if-eqz v11, :cond_9

    sub-int v11, v7, v5

    not-int v11, v11

    ushr-int/lit8 v11, v11, 0x1f

    const/16 v12, 0x8

    rsub-int/lit8 v11, v11, 0x8

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v11, :cond_8

    const-wide/16 v14, 0xff

    and-long/2addr v14, v9

    const-wide/16 v16, 0x80

    cmp-long v14, v14, v16

    if-gez v14, :cond_7

    shl-int/lit8 v14, v7, 0x3

    add-int/2addr v14, v13

    .line 233
    aget-object v14, v4, v14

    check-cast v14, Landroidx/compose/runtime/snapshots/StateObject;

    .line 2359
    invoke-interface {v14}, Landroidx/compose/runtime/snapshots/StateObject;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v15

    move-object/from16 v6, p2

    .line 2360
    invoke-static {v15, v1, v6}, Landroidx/compose/runtime/snapshots/SnapshotKt;->readable(Landroidx/compose/runtime/snapshots/StateRecord;ILandroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v12

    if-nez v12, :cond_1

    goto :goto_2

    .line 2361
    :cond_1
    invoke-static {v15, v1, v3}, Landroidx/compose/runtime/snapshots/SnapshotKt;->readable(Landroidx/compose/runtime/snapshots/StateRecord;ILandroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v2

    if-nez v2, :cond_3

    :cond_2
    :goto_2
    move-object/from16 v18, v0

    move/from16 v19, v1

    :goto_3
    const/4 v0, 0x0

    goto :goto_4

    .line 2362
    :cond_3
    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_2

    move-object/from16 v18, v0

    .line 2365
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/snapshots/Snapshot;->getId()I

    move-result v0

    move/from16 v19, v1

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/snapshots/Snapshot;->getInvalid$runtime_release()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v1

    invoke-static {v15, v0, v1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->readable(Landroidx/compose/runtime/snapshots/StateRecord;ILandroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2366
    invoke-interface {v14, v2, v12, v0}, Landroidx/compose/runtime/snapshots/StateObject;->mergeRecords(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v0

    if-eqz v0, :cond_5

    if-nez v8, :cond_4

    .line 2368
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    :cond_4
    move-object v1, v8

    invoke-interface {v8, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v8, v1

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    return-object v0

    .line 2365
    :cond_6
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->readError()Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    :goto_4
    const/16 v1, 0x8

    goto :goto_5

    :cond_7
    move-object/from16 v6, p2

    move-object/from16 v18, v0

    move/from16 v19, v1

    move-object v0, v2

    move v1, v12

    :goto_5
    shr-long/2addr v9, v1

    add-int/lit8 v13, v13, 0x1

    move-object v2, v0

    move v12, v1

    move-object/from16 v0, v18

    move/from16 v1, v19

    goto :goto_1

    :cond_8
    move-object/from16 v6, p2

    move-object/from16 v18, v0

    move/from16 v19, v1

    move-object v0, v2

    move v1, v12

    if-ne v11, v1, :cond_c

    goto :goto_6

    :cond_9
    move-object/from16 v6, p2

    move-object/from16 v18, v0

    move/from16 v19, v1

    move-object v0, v2

    :goto_6
    if-eq v7, v5, :cond_a

    add-int/lit8 v7, v7, 0x1

    move-object v2, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    goto/16 :goto_0

    :cond_a
    move-object v2, v8

    goto :goto_7

    :cond_b
    move-object v0, v2

    :goto_7
    move-object v8, v2

    :cond_c
    return-object v8
.end method

.method public static final overwritableRecord(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;
    .locals 2

    .line 2213
    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/Snapshot;->getReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2215
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/snapshots/Snapshot;->recordModified$runtime_release(Landroidx/compose/runtime/snapshots/StateObject;)V

    .line 2217
    :cond_0
    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/Snapshot;->getId()I

    move-result v0

    .line 2219
    invoke-virtual {p3}, Landroidx/compose/runtime/snapshots/StateRecord;->getSnapshotId$runtime_release()I

    move-result v1

    if-ne v1, v0, :cond_1

    return-object p3

    .line 1846
    :cond_1
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    move-result-object v1

    .line 27
    monitor-enter v1

    .line 2221
    :try_start_0
    invoke-static {p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->newOverwritableRecordLocked(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    monitor-exit v1

    .line 2222
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/snapshots/StateRecord;->setSnapshotId$runtime_release(I)V

    .line 2224
    invoke-virtual {p3}, Landroidx/compose/runtime/snapshots/StateRecord;->getSnapshotId$runtime_release()I

    move-result p3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_2

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/snapshots/Snapshot;->recordModified$runtime_release(Landroidx/compose/runtime/snapshots/StateObject;)V

    :cond_2
    return-object p0

    :catchall_0
    move-exception p0

    .line 27
    monitor-exit v1

    throw p0
.end method

.method private static final overwriteUnusedRecordsLocked(Landroidx/compose/runtime/snapshots/StateObject;)Z
    .locals 10

    .line 2113
    invoke-interface {p0}, Landroidx/compose/runtime/snapshots/StateObject;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v0

    .line 2116
    sget-object v1, Landroidx/compose/runtime/snapshots/SnapshotKt;->pinningTable:Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;

    sget v2, Landroidx/compose/runtime/snapshots/SnapshotKt;->nextSnapshotId:I

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->lowestOrDefault(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    move v5, v3

    :goto_0
    if-eqz v0, :cond_8

    .line 2120
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/StateRecord;->getSnapshotId$runtime_release()I

    move-result v6

    if-eqz v6, :cond_7

    if-ge v6, v1, :cond_6

    if-nez v2, :cond_0

    add-int/lit8 v5, v5, 0x1

    move-object v2, v0

    goto :goto_4

    .line 2131
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/StateRecord;->getSnapshotId$runtime_release()I

    move-result v6

    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/StateRecord;->getSnapshotId$runtime_release()I

    move-result v7

    if-ge v6, v7, :cond_1

    move-object v6, v2

    move-object v2, v0

    goto :goto_1

    :cond_1
    move-object v6, v0

    :goto_1
    if-nez v4, :cond_5

    .line 2143
    invoke-interface {p0}, Landroidx/compose/runtime/snapshots/StateObject;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v4

    move-object v7, v4

    :goto_2
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroidx/compose/runtime/snapshots/StateRecord;->getSnapshotId$runtime_release()I

    move-result v8

    if-lt v8, v1, :cond_2

    goto :goto_3

    .line 2163
    :cond_2
    invoke-virtual {v7}, Landroidx/compose/runtime/snapshots/StateRecord;->getSnapshotId$runtime_release()I

    move-result v8

    invoke-virtual {v4}, Landroidx/compose/runtime/snapshots/StateRecord;->getSnapshotId$runtime_release()I

    move-result v9

    if-ge v8, v9, :cond_3

    move-object v7, v4

    .line 2164
    :cond_3
    invoke-virtual {v4}, Landroidx/compose/runtime/snapshots/StateRecord;->getNext$runtime_release()Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v4

    goto :goto_2

    :cond_4
    move-object v4, v7

    .line 2145
    :cond_5
    :goto_3
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/snapshots/StateRecord;->setSnapshotId$runtime_release(I)V

    .line 2146
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/snapshots/StateRecord;->assign(Landroidx/compose/runtime/snapshots/StateRecord;)V

    move-object v2, v6

    goto :goto_4

    :cond_6
    add-int/lit8 v5, v5, 0x1

    .line 2152
    :cond_7
    :goto_4
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/StateRecord;->getNext$runtime_release()Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v0

    goto :goto_0

    :cond_8
    const/4 p0, 0x1

    if-le v5, p0, :cond_9

    move v3, p0

    :cond_9
    return v3
.end method

.method private static final processForUnusedRecordsLocked(Landroidx/compose/runtime/snapshots/StateObject;)V
    .locals 1

    .line 2174
    invoke-static {p0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->overwriteUnusedRecordsLocked(Landroidx/compose/runtime/snapshots/StateObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2175
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->extraStateObjects:Landroidx/compose/runtime/snapshots/SnapshotWeakSet;

    invoke-virtual {v0, p0}, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private static final readError()Ljava/lang/Void;
    .locals 2

    .line 2054
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2055
    const-string v1, "Reading a state that was created after the snapshot was taken or in a snapshot that has not yet been applied"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final readable(Landroidx/compose/runtime/snapshots/StateRecord;ILandroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/StateRecord;
    .locals 4

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    if-eqz p0, :cond_2

    .line 2006
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/snapshots/SnapshotKt;->valid(Landroidx/compose/runtime/snapshots/StateRecord;ILandroidx/compose/runtime/snapshots/SnapshotIdSet;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v1, :cond_0

    goto :goto_1

    .line 2009
    :cond_0
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/StateRecord;->getSnapshotId$runtime_release()I

    move-result v2

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/StateRecord;->getSnapshotId$runtime_release()I

    move-result v3

    if-ge v2, v3, :cond_1

    :goto_1
    move-object v1, p0

    .line 2011
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/StateRecord;->getNext$runtime_release()Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object p0

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    return-object v1

    :cond_3
    return-object v0
.end method

.method public static final readable(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;)Landroidx/compose/runtime/snapshots/StateRecord;
    .locals 3

    .line 2024
    sget-object v0, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->getCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v1

    .line 2025
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/Snapshot;->getReadObserver()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2026
    :cond_0
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/Snapshot;->getId()I

    move-result v2

    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/Snapshot;->getInvalid$runtime_release()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v1

    invoke-static {p0, v2, v1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->readable(Landroidx/compose/runtime/snapshots/StateRecord;ILandroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object p0

    if-nez p0, :cond_2

    .line 1846
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    move-result-object p0

    .line 27
    monitor-enter p0

    .line 2036
    :try_start_0
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->getCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v0

    .line 2038
    invoke-interface {p1}, Landroidx/compose/runtime/snapshots/StateObject;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type T of androidx.compose.runtime.snapshots.SnapshotKt.readable$lambda$9"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->getId()I

    move-result v1

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->getInvalid$runtime_release()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v0

    invoke-static {p1, v1, v0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->readable(Landroidx/compose/runtime/snapshots/StateRecord;ILandroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 27
    monitor-exit p0

    move-object p0, p1

    goto :goto_0

    .line 2039
    :cond_1
    :try_start_1
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->readError()Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 27
    monitor-exit p0

    throw p1

    :cond_2
    :goto_0
    return-object p0
.end method

.method public static final releasePinningLocked(I)V
    .locals 1

    .line 697
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->pinningTable:Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;

    invoke-virtual {v0, p0}, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->remove(I)V

    return-void
.end method

.method private static final reportReadonlySnapshotWrite()Ljava/lang/Void;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2384
    const-string v1, "Cannot modify a state object in a read-only snapshot"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final takeNewGlobalSnapshot(Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 5

    .line 1901
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->openSnapshots:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->clear(I)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1846
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    move-result-object v0

    .line 27
    monitor-enter v0

    .line 1904
    :try_start_0
    sget v1, Landroidx/compose/runtime/snapshots/SnapshotKt;->nextSnapshotId:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Landroidx/compose/runtime/snapshots/SnapshotKt;->nextSnapshotId:I

    .line 1905
    sget-object v2, Landroidx/compose/runtime/snapshots/SnapshotKt;->openSnapshots:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->clear(I)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v2

    sput-object v2, Landroidx/compose/runtime/snapshots/SnapshotKt;->openSnapshots:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 1906
    sget-object v2, Landroidx/compose/runtime/snapshots/SnapshotKt;->currentGlobalSnapshot:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v3, Landroidx/compose/runtime/snapshots/GlobalSnapshot;

    sget-object v4, Landroidx/compose/runtime/snapshots/SnapshotKt;->openSnapshots:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    invoke-direct {v3, v1, v4}, Landroidx/compose/runtime/snapshots/GlobalSnapshot;-><init>(ILandroidx/compose/runtime/snapshots/SnapshotIdSet;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1907
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->dispose()V

    .line 1908
    sget-object p0, Landroidx/compose/runtime/snapshots/SnapshotKt;->openSnapshots:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    invoke-virtual {p0, v1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->set(I)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object p0

    sput-object p0, Landroidx/compose/runtime/snapshots/SnapshotKt;->openSnapshots:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 1909
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static final takeNewSnapshot(Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/Snapshot;
    .locals 1

    .line 1955
    new-instance v0, Landroidx/compose/runtime/snapshots/SnapshotKt$takeNewSnapshot$1;

    invoke-direct {v0, p0}, Landroidx/compose/runtime/snapshots/SnapshotKt$takeNewSnapshot$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-static {v0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->advanceGlobalSnapshot(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/runtime/snapshots/Snapshot;

    return-object p0
.end method

.method public static final trackPinning(ILandroidx/compose/runtime/snapshots/SnapshotIdSet;)I
    .locals 1

    .line 691
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowest(I)I

    move-result p0

    .line 1846
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    move-result-object p1

    .line 27
    monitor-enter p1

    .line 692
    :try_start_0
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->pinningTable:Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;

    invoke-virtual {v0, p0}, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->add(I)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    monitor-exit p1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0
.end method

.method private static final usedLocked(Landroidx/compose/runtime/snapshots/StateObject;)Landroidx/compose/runtime/snapshots/StateRecord;
    .locals 5

    .line 2066
    invoke-interface {p0}, Landroidx/compose/runtime/snapshots/StateObject;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object p0

    .line 2068
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->pinningTable:Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;

    sget v1, Landroidx/compose/runtime/snapshots/SnapshotKt;->nextSnapshotId:I

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->lowestOrDefault(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 2069
    sget-object v1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->Companion:Landroidx/compose/runtime/snapshots/SnapshotIdSet$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet$Companion;->getEMPTY()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    :goto_0
    if-eqz p0, :cond_4

    .line 2071
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/StateRecord;->getSnapshotId$runtime_release()I

    move-result v4

    if-nez v4, :cond_0

    return-object p0

    .line 2077
    :cond_0
    invoke-static {p0, v0, v1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->valid(Landroidx/compose/runtime/snapshots/StateRecord;ILandroidx/compose/runtime/snapshots/SnapshotIdSet;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-nez v3, :cond_1

    move-object v3, p0

    goto :goto_2

    .line 2083
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/StateRecord;->getSnapshotId$runtime_release()I

    move-result v0

    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/StateRecord;->getSnapshotId$runtime_release()I

    move-result v1

    if-ge v0, v1, :cond_2

    goto :goto_1

    :cond_2
    move-object p0, v3

    :goto_1
    return-object p0

    .line 2086
    :cond_3
    :goto_2
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/StateRecord;->getNext$runtime_release()Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object p0

    goto :goto_0

    :cond_4
    return-object v2
.end method

.method private static final valid(IILandroidx/compose/runtime/snapshots/SnapshotIdSet;)Z
    .locals 0

    if-eqz p1, :cond_0

    if-gt p1, p0, :cond_0

    .line 1993
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->get(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static final valid(Landroidx/compose/runtime/snapshots/StateRecord;ILandroidx/compose/runtime/snapshots/SnapshotIdSet;)Z
    .locals 0

    .line 1998
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/StateRecord;->getSnapshotId$runtime_release()I

    move-result p0

    invoke-static {p1, p0, p2}, Landroidx/compose/runtime/snapshots/SnapshotKt;->valid(IILandroidx/compose/runtime/snapshots/SnapshotIdSet;)Z

    move-result p0

    return p0
.end method

.method private static final validateOpen(Landroidx/compose/runtime/snapshots/Snapshot;)V
    .locals 3

    .line 1962
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->openSnapshots:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 1963
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1965
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Snapshot is not open: id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1966
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->getId()I

    move-result v1

    .line 1965
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1967
    const-string v1, ", disposed="

    .line 1965
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1968
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->getDisposed$runtime_release()Z

    move-result v1

    .line 1965
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1969
    const-string v1, ", applied="

    .line 1965
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1970
    instance-of v1, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;

    if-eqz v1, :cond_0

    check-cast p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->getApplied$runtime_release()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_1

    :cond_1
    const-string p0, "read-only"

    .line 1965
    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1971
    const-string p0, ", lowestPin="

    .line 1965
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1846
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    move-result-object p0

    .line 27
    monitor-enter p0

    .line 1972
    :try_start_0
    sget-object v1, Landroidx/compose/runtime/snapshots/SnapshotKt;->pinningTable:Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->lowestOrDefault(I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    monitor-exit p0

    .line 1965
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1964
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 27
    monitor-exit p0

    throw v0

    :cond_2
    return-void
.end method

.method public static final writableRecord(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/StateRecord;
    .locals 4

    .line 2181
    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/Snapshot;->getReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2183
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/snapshots/Snapshot;->recordModified$runtime_release(Landroidx/compose/runtime/snapshots/StateObject;)V

    .line 2185
    :cond_0
    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/Snapshot;->getId()I

    move-result v0

    .line 2186
    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/Snapshot;->getInvalid$runtime_release()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->readable(Landroidx/compose/runtime/snapshots/StateRecord;ILandroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 2189
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/StateRecord;->getSnapshotId$runtime_release()I

    move-result v1

    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/Snapshot;->getId()I

    move-result v2

    if-ne v1, v2, :cond_1

    return-object p0

    .line 1846
    :cond_1
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    move-result-object v1

    .line 27
    monitor-enter v1

    .line 2197
    :try_start_0
    invoke-interface {p1}, Landroidx/compose/runtime/snapshots/StateObject;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v2

    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/Snapshot;->getInvalid$runtime_release()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v3

    invoke-static {v2, v0, v3}, Landroidx/compose/runtime/snapshots/SnapshotKt;->readable(Landroidx/compose/runtime/snapshots/StateRecord;ILandroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 2198
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/StateRecord;->getSnapshotId$runtime_release()I

    move-result v3

    if-ne v3, v0, :cond_2

    goto :goto_0

    .line 2199
    :cond_2
    invoke-static {v2, p1, p2}, Landroidx/compose/runtime/snapshots/SnapshotKt;->newWritableRecordLocked(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :goto_0
    monitor-exit v1

    .line 2195
    const-string v0, "null cannot be cast to non-null type T of androidx.compose.runtime.snapshots.SnapshotKt.writableRecord"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2203
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/StateRecord;->getSnapshotId$runtime_release()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/snapshots/Snapshot;->recordModified$runtime_release(Landroidx/compose/runtime/snapshots/StateObject;)V

    :cond_3
    return-object v2

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 2197
    :cond_4
    :try_start_1
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->readError()Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    :goto_1
    monitor-exit v1

    throw p0

    .line 2186
    :cond_5
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->readError()Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method
