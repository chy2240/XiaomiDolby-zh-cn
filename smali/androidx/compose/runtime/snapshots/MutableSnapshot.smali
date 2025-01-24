.class public Landroidx/compose/runtime/snapshots/MutableSnapshot;
.super Landroidx/compose/runtime/snapshots/Snapshot;
.source "Snapshot.kt"


# static fields
.field public static final $stable:I

.field private static final Companion:Landroidx/compose/runtime/snapshots/MutableSnapshot$Companion;

.field private static final EmptyIntArray:[I


# instance fields
.field private applied:Z

.field private merged:Ljava/util/List;

.field private modified:Landroidx/collection/MutableScatterSet;

.field private previousIds:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

.field private previousPinnedSnapshots:[I

.field private final readObserver:Lkotlin/jvm/functions/Function1;

.field private snapshots:I

.field private writeCount:I

.field private final writeObserver:Lkotlin/jvm/functions/Function1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/runtime/snapshots/MutableSnapshot$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/runtime/snapshots/MutableSnapshot$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->Companion:Landroidx/compose/runtime/snapshots/MutableSnapshot$Companion;

    const/16 v0, 0x8

    sput v0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->$stable:I

    const/4 v0, 0x0

    .line 1158
    new-array v0, v0, [I

    sput-object v0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->EmptyIntArray:[I

    return-void
.end method

.method public constructor <init>(ILandroidx/compose/runtime/snapshots/SnapshotIdSet;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const/4 v0, 0x0

    .line 727
    invoke-direct {p0, p1, p2, v0}, Landroidx/compose/runtime/snapshots/Snapshot;-><init>(ILandroidx/compose/runtime/snapshots/SnapshotIdSet;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 725
    iput-object p3, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->readObserver:Lkotlin/jvm/functions/Function1;

    .line 726
    iput-object p4, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->writeObserver:Lkotlin/jvm/functions/Function1;

    .line 1143
    sget-object p1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->Companion:Landroidx/compose/runtime/snapshots/SnapshotIdSet$Companion;

    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet$Companion;->getEMPTY()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->previousIds:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 1146
    sget-object p1, Landroidx/compose/runtime/snapshots/MutableSnapshot;->EmptyIntArray:[I

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->previousPinnedSnapshots:[I

    const/4 p1, 0x1

    .line 1152
    iput p1, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->snapshots:I

    return-void
.end method

.method private final abandon()V
    .locals 15

    .line 965
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->getModified$runtime_release()Landroidx/collection/MutableScatterSet;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 967
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->validateNotApplied()V

    const/4 v1, 0x0

    .line 971
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->setModified(Landroidx/collection/MutableScatterSet;)V

    .line 972
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->getId()I

    move-result v1

    .line 232
    iget-object v2, v0, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 201
    iget-object v0, v0, Landroidx/collection/ScatterSet;->metadata:[J

    .line 202
    array-length v3, v0

    add-int/lit8 v3, v3, -0x2

    if-ltz v3, :cond_5

    const/4 v4, 0x0

    move v5, v4

    .line 205
    :goto_0
    aget-wide v6, v0, v5

    not-long v8, v6

    const/4 v10, 0x7

    shl-long/2addr v8, v10

    and-long/2addr v8, v6

    const-wide v10, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v8, v10

    cmp-long v8, v8, v10

    if-eqz v8, :cond_4

    sub-int v8, v5, v3

    not-int v8, v8

    ushr-int/lit8 v8, v8, 0x1f

    const/16 v9, 0x8

    rsub-int/lit8 v8, v8, 0x8

    move v10, v4

    :goto_1
    if-ge v10, v8, :cond_3

    const-wide/16 v11, 0xff

    and-long/2addr v11, v6

    const-wide/16 v13, 0x80

    cmp-long v11, v11, v13

    if-gez v11, :cond_2

    shl-int/lit8 v11, v5, 0x3

    add-int/2addr v11, v10

    .line 233
    aget-object v11, v2, v11

    check-cast v11, Landroidx/compose/runtime/snapshots/StateObject;

    .line 974
    invoke-interface {v11}, Landroidx/compose/runtime/snapshots/StateObject;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v11

    :goto_2
    if-eqz v11, :cond_2

    .line 976
    invoke-virtual {v11}, Landroidx/compose/runtime/snapshots/StateRecord;->getSnapshotId$runtime_release()I

    move-result v12

    if-eq v12, v1, :cond_0

    iget-object v12, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->previousIds:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    invoke-virtual {v11}, Landroidx/compose/runtime/snapshots/StateRecord;->getSnapshotId$runtime_release()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v12, v13}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 977
    :cond_0
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/snapshots/StateRecord;->setSnapshotId$runtime_release(I)V

    .line 979
    :cond_1
    invoke-virtual {v11}, Landroidx/compose/runtime/snapshots/StateRecord;->getNext$runtime_release()Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v11

    goto :goto_2

    :cond_2
    shr-long/2addr v6, v9

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_3
    if-ne v8, v9, :cond_5

    :cond_4
    if-eq v5, v3, :cond_5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 985
    :cond_5
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->closeAndReleasePinning$runtime_release()V

    return-void
.end method

.method private final releasePreviouslyPinnedSnapshotsLocked()V
    .locals 3

    .line 1120
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->previousPinnedSnapshots:[I

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1121
    iget-object v2, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->previousPinnedSnapshots:[I

    aget v2, v2, v1

    invoke-static {v2}, Landroidx/compose/runtime/snapshots/SnapshotKt;->releasePinningLocked(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final validateNotApplied()V
    .locals 0

    .line 951
    iget-boolean p0, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->applied:Z

    if-eqz p0, :cond_0

    const-string p0, "Unsupported operation on a snapshot that has been applied"

    .line 50
    invoke-static {p0}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final validateNotAppliedOrPinned()V
    .locals 1

    .line 955
    iget-boolean v0, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->applied:Z

    if-eqz v0, :cond_1

    .line 191
    invoke-static {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->access$getPinningTrackingHandle$p(Landroidx/compose/runtime/snapshots/Snapshot;)I

    move-result p0

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    if-nez p0, :cond_2

    .line 956
    const-string p0, "Unsupported operation on a disposed or applied snapshot"

    .line 50
    invoke-static {p0}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final advance$runtime_release()V
    .locals 4

    .line 1085
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->recordPrevious$runtime_release(I)V

    .line 1102
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1091
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->getApplied$runtime_release()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->getDisposed$runtime_release()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1092
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->getId()I

    move-result v0

    .line 1846
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    move-result-object v1

    .line 27
    monitor-enter v1

    .line 1094
    :try_start_0
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$getNextSnapshotId$p()I

    move-result v2

    add-int/lit8 v3, v2, 0x1

    invoke-static {v3}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$setNextSnapshotId$p(I)V

    invoke-virtual {p0, v2}, Landroidx/compose/runtime/snapshots/Snapshot;->setId$runtime_release(I)V

    .line 1095
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$getOpenSnapshots$p()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->set(I)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$setOpenSnapshots$p(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    monitor-exit v1

    .line 1097
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->getInvalid$runtime_release()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->getId()I

    move-result v2

    invoke-static {v1, v0, v2}, Landroidx/compose/runtime/snapshots/SnapshotKt;->addRange(Landroidx/compose/runtime/snapshots/SnapshotIdSet;II)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/snapshots/Snapshot;->setInvalid$runtime_release(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 27
    monitor-exit v1

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method public apply()Landroidx/compose/runtime/snapshots/SnapshotApplyResult;
    .locals 24

    move-object/from16 v0, p0

    const/4 v1, 0x1

    .line 802
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->getModified$runtime_release()Landroidx/collection/MutableScatterSet;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 806
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$getCurrentGlobalSnapshot$p()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 808
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$getOpenSnapshots$p()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v5

    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$getCurrentGlobalSnapshot$p()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/runtime/snapshots/GlobalSnapshot;

    invoke-virtual {v6}, Landroidx/compose/runtime/snapshots/Snapshot;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->clear(I)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v5

    .line 805
    invoke-static {v4, v0, v5}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$optimisticMerges(Landroidx/compose/runtime/snapshots/MutableSnapshot;Landroidx/compose/runtime/snapshots/MutableSnapshot;Landroidx/compose/runtime/snapshots/SnapshotIdSet;)Ljava/util/Map;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v3

    .line 812
    :goto_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 1846
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    move-result-object v6

    .line 27
    monitor-enter v6

    .line 815
    :try_start_0
    invoke-static/range {p0 .. p0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$validateOpen(Landroidx/compose/runtime/snapshots/Snapshot;)V

    if-eqz v2, :cond_3

    .line 816
    invoke-virtual {v2}, Landroidx/collection/ScatterSet;->getSize()I

    move-result v7

    if-nez v7, :cond_1

    goto :goto_1

    .line 826
    :cond_1
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$getCurrentGlobalSnapshot$p()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/runtime/snapshots/GlobalSnapshot;

    .line 829
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$getNextSnapshotId$p()I

    move-result v7

    .line 832
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$getOpenSnapshots$p()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v8

    invoke-virtual {v5}, Landroidx/compose/runtime/snapshots/Snapshot;->getId()I

    move-result v9

    invoke-virtual {v8, v9}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->clear(I)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v8

    .line 828
    invoke-virtual {v0, v7, v2, v4, v8}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->innerApplyLocked$runtime_release(ILandroidx/collection/MutableScatterSet;Ljava/util/Map;Landroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/SnapshotApplyResult;

    move-result-object v4

    .line 834
    sget-object v7, Landroidx/compose/runtime/snapshots/SnapshotApplyResult$Success;->INSTANCE:Landroidx/compose/runtime/snapshots/SnapshotApplyResult$Success;

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_2

    monitor-exit v6

    return-object v4

    .line 836
    :cond_2
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->closeLocked$runtime_release()V

    .line 839
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$getEmptyLambda$p()Lkotlin/jvm/functions/Function1;

    move-result-object v4

    invoke-static {v5, v4}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$takeNewGlobalSnapshot(Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 840
    invoke-virtual {v5}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->getModified$runtime_release()Landroidx/collection/MutableScatterSet;

    move-result-object v4

    .line 841
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->setModified(Landroidx/collection/MutableScatterSet;)V

    .line 842
    invoke-virtual {v5, v3}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->setModified(Landroidx/collection/MutableScatterSet;)V

    .line 844
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$getApplyObservers$p()Ljava/util/List;

    move-result-object v5

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_e

    .line 817
    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->closeLocked$runtime_release()V

    .line 818
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$getCurrentGlobalSnapshot$p()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/runtime/snapshots/GlobalSnapshot;

    .line 819
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$getEmptyLambda$p()Lkotlin/jvm/functions/Function1;

    move-result-object v7

    invoke-static {v4, v7}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$takeNewGlobalSnapshot(Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 820
    invoke-virtual {v4}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->getModified$runtime_release()Landroidx/collection/MutableScatterSet;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 821
    invoke-virtual {v4}, Landroidx/collection/ScatterSet;->isNotEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 822
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$getApplyObservers$p()Ljava/util/List;

    move-result-object v5

    goto :goto_2

    :cond_4
    move-object v4, v3

    .line 847
    :goto_2
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    monitor-exit v6

    .line 850
    iput-boolean v1, v0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->applied:Z

    if-eqz v4, :cond_5

    .line 854
    invoke-static {v4}, Landroidx/compose/runtime/collection/ScatterSetWrapperKt;->wrapIntoSet(Landroidx/collection/ScatterSet;)Ljava/util/Set;

    move-result-object v7

    .line 855
    move-object v8, v7

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    .line 34
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v8, :cond_5

    .line 35
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 36
    check-cast v10, Lkotlin/jvm/functions/Function2;

    .line 856
    invoke-interface {v10, v7, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v9, v1

    goto :goto_3

    :cond_5
    if-eqz v2, :cond_6

    .line 860
    invoke-virtual {v2}, Landroidx/collection/ScatterSet;->isNotEmpty()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 861
    invoke-static {v2}, Landroidx/compose/runtime/collection/ScatterSetWrapperKt;->wrapIntoSet(Landroidx/collection/ScatterSet;)Ljava/util/Set;

    move-result-object v7

    .line 34
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v8, :cond_6

    .line 35
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 36
    check-cast v10, Lkotlin/jvm/functions/Function2;

    .line 862
    invoke-interface {v10, v7, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v9, v1

    goto :goto_4

    .line 865
    :cond_6
    invoke-static {v0, v2}, Landroidx/compose/runtime/snapshots/tooling/SnapshotObserverKt;->dispatchObserverOnApplied(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/collection/ScatterSet;)V

    .line 1846
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    move-result-object v5

    .line 27
    monitor-enter v5

    .line 871
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->releasePinnedSnapshotsForCloseLocked$runtime_release()V

    .line 872
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$checkAndOverwriteUnusedRecordsLocked()V

    const-wide/16 v9, 0xff

    const/4 v11, 0x7

    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/16 v14, 0x8

    if-eqz v4, :cond_a

    .line 232
    iget-object v15, v4, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 201
    iget-object v4, v4, Landroidx/collection/ScatterSet;->metadata:[J

    .line 202
    array-length v6, v4

    add-int/lit8 v6, v6, -0x2

    if-ltz v6, :cond_a

    move-object/from16 v17, v2

    const/4 v3, 0x0

    .line 205
    :goto_5
    aget-wide v1, v4, v3

    not-long v7, v1

    shl-long/2addr v7, v11

    and-long/2addr v7, v1

    and-long/2addr v7, v12

    cmp-long v7, v7, v12

    if-eqz v7, :cond_9

    sub-int v7, v3, v6

    not-int v7, v7

    ushr-int/lit8 v7, v7, 0x1f

    rsub-int/lit8 v7, v7, 0x8

    const/4 v8, 0x0

    :goto_6
    if-ge v8, v7, :cond_8

    and-long v20, v1, v9

    const-wide/16 v18, 0x80

    cmp-long v20, v20, v18

    if-gez v20, :cond_7

    shl-int/lit8 v20, v3, 0x3

    add-int v20, v20, v8

    .line 233
    aget-object v20, v15, v20

    check-cast v20, Landroidx/compose/runtime/snapshots/StateObject;

    .line 873
    invoke-static/range {v20 .. v20}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$processForUnusedRecordsLocked(Landroidx/compose/runtime/snapshots/StateObject;)V

    goto :goto_7

    :catchall_1
    move-exception v0

    goto/16 :goto_d

    :cond_7
    :goto_7
    shr-long/2addr v1, v14

    const/16 v16, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_8
    const/16 v16, 0x1

    if-ne v7, v14, :cond_b

    goto :goto_8

    :cond_9
    const/16 v16, 0x1

    :goto_8
    if-eq v3, v6, :cond_b

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_a
    move-object/from16 v17, v2

    :cond_b
    if-eqz v17, :cond_f

    move-object/from16 v1, v17

    .line 232
    iget-object v2, v1, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 201
    iget-object v1, v1, Landroidx/collection/ScatterSet;->metadata:[J

    .line 202
    array-length v3, v1

    add-int/lit8 v3, v3, -0x2

    if-ltz v3, :cond_f

    const/4 v4, 0x0

    .line 205
    :goto_9
    aget-wide v6, v1, v4

    not-long v9, v6

    shl-long v8, v9, v11

    and-long/2addr v8, v6

    and-long/2addr v8, v12

    cmp-long v8, v8, v12

    if-eqz v8, :cond_e

    sub-int v8, v4, v3

    not-int v8, v8

    ushr-int/lit8 v8, v8, 0x1f

    rsub-int/lit8 v8, v8, 0x8

    const/4 v9, 0x0

    :goto_a
    if-ge v9, v8, :cond_d

    const-wide/16 v20, 0xff

    and-long v22, v6, v20

    const-wide/16 v17, 0x80

    cmp-long v10, v22, v17

    if-gez v10, :cond_c

    shl-int/lit8 v10, v4, 0x3

    add-int/2addr v10, v9

    .line 233
    aget-object v10, v2, v10

    check-cast v10, Landroidx/compose/runtime/snapshots/StateObject;

    .line 874
    invoke-static {v10}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$processForUnusedRecordsLocked(Landroidx/compose/runtime/snapshots/StateObject;)V

    :cond_c
    shr-long/2addr v6, v14

    const/4 v10, 0x1

    add-int/2addr v9, v10

    goto :goto_a

    :cond_d
    const/4 v10, 0x1

    const-wide/16 v17, 0x80

    const-wide/16 v20, 0xff

    if-ne v8, v14, :cond_f

    goto :goto_b

    :cond_e
    const/4 v10, 0x1

    const-wide/16 v17, 0x80

    const-wide/16 v20, 0xff

    :goto_b
    if-eq v4, v3, :cond_f

    add-int/2addr v4, v10

    move-wide/from16 v9, v20

    goto :goto_9

    .line 875
    :cond_f
    iget-object v1, v0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->merged:Ljava/util/List;

    if-eqz v1, :cond_10

    .line 34
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v6, 0x0

    :goto_c
    if-ge v6, v2, :cond_10

    .line 35
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 36
    check-cast v3, Landroidx/compose/runtime/snapshots/StateObject;

    .line 875
    invoke-static {v3}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$processForUnusedRecordsLocked(Landroidx/compose/runtime/snapshots/StateObject;)V

    const/4 v3, 0x1

    add-int/2addr v6, v3

    goto :goto_c

    :cond_10
    const/4 v1, 0x0

    .line 876
    iput-object v1, v0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->merged:Ljava/util/List;

    .line 877
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 27
    monitor-exit v5

    .line 879
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotApplyResult$Success;->INSTANCE:Landroidx/compose/runtime/snapshots/SnapshotApplyResult$Success;

    return-object v0

    .line 27
    :goto_d
    monitor-exit v5

    throw v0

    .line 27
    :goto_e
    monitor-exit v6

    throw v0
.end method

.method public closeLocked$runtime_release()V
    .locals 2

    .line 942
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$getOpenSnapshots$p()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->clear(I)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v0

    iget-object p0, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->previousIds:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    invoke-virtual {v0, p0}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->andNot(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$setOpenSnapshots$p(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)V

    return-void
.end method

.method public dispose()V
    .locals 1

    .line 889
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->getDisposed$runtime_release()Z

    move-result v0

    if-nez v0, :cond_0

    .line 890
    invoke-super {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->dispose()V

    .line 891
    invoke-virtual {p0, p0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->nestedDeactivated$runtime_release(Landroidx/compose/runtime/snapshots/Snapshot;)V

    .line 892
    invoke-static {p0}, Landroidx/compose/runtime/snapshots/tooling/SnapshotObserverKt;->dispatchObserverOnDispose(Landroidx/compose/runtime/snapshots/Snapshot;)V

    :cond_0
    return-void
.end method

.method public final getApplied$runtime_release()Z
    .locals 0

    .line 1155
    iget-boolean p0, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->applied:Z

    return p0
.end method

.method public getModified$runtime_release()Landroidx/collection/MutableScatterSet;
    .locals 0

    .line 1135
    iget-object p0, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->modified:Landroidx/collection/MutableScatterSet;

    return-object p0
.end method

.method public final getPreviousIds$runtime_release()Landroidx/compose/runtime/snapshots/SnapshotIdSet;
    .locals 0

    .line 1143
    iget-object p0, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->previousIds:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    return-object p0
.end method

.method public final getPreviousPinnedSnapshots$runtime_release()[I
    .locals 0

    .line 1146
    iget-object p0, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->previousPinnedSnapshots:[I

    return-object p0
.end method

.method public bridge synthetic getReadObserver()Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 721
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->getReadObserver$runtime_release()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    return-object p0
.end method

.method public getReadObserver$runtime_release()Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 725
    iget-object p0, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->readObserver:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public getReadOnly()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getWriteCount$runtime_release()I
    .locals 0

    .line 1133
    iget p0, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->writeCount:I

    return p0
.end method

.method public getWriteObserver$runtime_release()Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 726
    iget-object p0, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->writeObserver:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final innerApplyLocked$runtime_release(ILandroidx/collection/MutableScatterSet;Ljava/util/Map;Landroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/SnapshotApplyResult;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 1006
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/snapshots/Snapshot;->getInvalid$runtime_release()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/snapshots/Snapshot;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->set(I)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v4

    iget-object v5, v0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->previousIds:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->or(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v4

    .line 232
    iget-object v5, v1, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 201
    iget-object v6, v1, Landroidx/collection/ScatterSet;->metadata:[J

    .line 202
    array-length v7, v6

    add-int/lit8 v7, v7, -0x2

    const/4 v8, 0x0

    move-object v10, v8

    if-ltz v7, :cond_10

    const/4 v11, 0x0

    .line 205
    :goto_0
    aget-wide v12, v6, v11

    not-long v14, v12

    const/16 v16, 0x7

    shl-long v14, v14, v16

    and-long/2addr v14, v12

    const-wide v16, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v14, v14, v16

    cmp-long v14, v14, v16

    if-eqz v14, :cond_f

    sub-int v14, v11, v7

    not-int v14, v14

    ushr-int/lit8 v14, v14, 0x1f

    const/16 v15, 0x8

    rsub-int/lit8 v14, v14, 0x8

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v14, :cond_e

    const-wide/16 v17, 0xff

    and-long v17, v12, v17

    const-wide/16 v19, 0x80

    cmp-long v17, v17, v19

    if-gez v17, :cond_d

    shl-int/lit8 v17, v11, 0x3

    add-int v17, v17, v9

    .line 233
    aget-object v17, v5, v17

    move-object/from16 v15, v17

    check-cast v15, Landroidx/compose/runtime/snapshots/StateObject;

    .line 1009
    invoke-interface {v15}, Landroidx/compose/runtime/snapshots/StateObject;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v3

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move/from16 v5, p1

    move-object/from16 v6, p4

    .line 1012
    invoke-static {v3, v5, v6}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$readable(Landroidx/compose/runtime/snapshots/StateRecord;ILandroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_2
    move-object/from16 v21, v4

    goto/16 :goto_4

    .line 1013
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/snapshots/Snapshot;->getId()I

    move-result v5

    invoke-static {v3, v5, v4}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$readable(Landroidx/compose/runtime/snapshots/StateRecord;ILandroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    move-object/from16 v21, v4

    .line 1014
    invoke-virtual {v5}, Landroidx/compose/runtime/snapshots/StateRecord;->getSnapshotId$runtime_release()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_2

    goto/16 :goto_4

    .line 1023
    :cond_2
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 1024
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/snapshots/Snapshot;->getId()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/snapshots/Snapshot;->getInvalid$runtime_release()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v6

    invoke-static {v3, v4, v6}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$readable(Landroidx/compose/runtime/snapshots/StateRecord;ILandroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v3

    if-eqz v3, :cond_b

    if-eqz v2, :cond_3

    .line 1026
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/runtime/snapshots/StateRecord;

    if-nez v4, :cond_4

    .line 1027
    :cond_3
    invoke-interface {v15, v5, v1, v3}, Landroidx/compose/runtime/snapshots/StateObject;->mergeRecords(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v4

    :cond_4
    if-nez v4, :cond_5

    .line 1029
    new-instance v1, Landroidx/compose/runtime/snapshots/SnapshotApplyResult$Failure;

    invoke-direct {v1, v0}, Landroidx/compose/runtime/snapshots/SnapshotApplyResult$Failure;-><init>(Landroidx/compose/runtime/snapshots/Snapshot;)V

    return-object v1

    .line 1030
    :cond_5
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 1034
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    if-nez v8, :cond_6

    .line 1036
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1039
    :cond_6
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/StateRecord;->create()Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v1

    invoke-static {v15, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v10, :cond_7

    .line 1043
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1044
    :cond_7
    invoke-interface {v10, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    if-nez v8, :cond_9

    .line 1048
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1052
    :cond_9
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-static {v15, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    goto :goto_3

    .line 1053
    :cond_a
    invoke-virtual {v5}, Landroidx/compose/runtime/snapshots/StateRecord;->create()Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v1

    invoke-static {v15, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    .line 1051
    :goto_3
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1024
    :cond_b
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$readError()Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    :cond_c
    :goto_4
    const/16 v1, 0x8

    goto :goto_5

    :cond_d
    move-object/from16 v21, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move v1, v15

    :goto_5
    shr-long/2addr v12, v1

    const/4 v3, 0x1

    add-int/2addr v9, v3

    move v15, v1

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    move-object/from16 v4, v21

    move-object/from16 v1, p2

    goto/16 :goto_1

    :cond_e
    move-object/from16 v21, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move v1, v15

    const/4 v3, 0x1

    if-ne v14, v1, :cond_10

    goto :goto_6

    :cond_f
    move-object/from16 v21, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    const/4 v3, 0x1

    :goto_6
    if-eq v11, v7, :cond_10

    add-int/2addr v11, v3

    move-object/from16 v1, p2

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    move-object/from16 v4, v21

    goto/16 :goto_0

    :cond_10
    if-eqz v8, :cond_11

    .line 1062
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->advance$runtime_release()V

    .line 34
    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_11

    .line 35
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 36
    check-cast v3, Lkotlin/Pair;

    .line 1066
    invoke-virtual {v3}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/runtime/snapshots/StateObject;

    invoke-virtual {v3}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/runtime/snapshots/StateRecord;

    .line 1067
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/snapshots/Snapshot;->getId()I

    move-result v5

    invoke-virtual {v3, v5}, Landroidx/compose/runtime/snapshots/StateRecord;->setSnapshotId$runtime_release(I)V

    .line 1846
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    move-result-object v5

    .line 27
    monitor-enter v5

    .line 1069
    :try_start_0
    invoke-interface {v4}, Landroidx/compose/runtime/snapshots/StateObject;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroidx/compose/runtime/snapshots/StateRecord;->setNext$runtime_release(Landroidx/compose/runtime/snapshots/StateRecord;)V

    .line 1070
    invoke-interface {v4, v3}, Landroidx/compose/runtime/snapshots/StateObject;->prependStateRecord(Landroidx/compose/runtime/snapshots/StateRecord;)V

    .line 1071
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    monitor-exit v5

    const/4 v3, 0x1

    add-int/2addr v2, v3

    goto :goto_7

    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0

    :cond_11
    if-eqz v10, :cond_14

    .line 34
    invoke-interface {v10}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v9, 0x0

    :goto_8
    if-ge v9, v1, :cond_12

    .line 35
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 36
    check-cast v2, Landroidx/compose/runtime/snapshots/StateObject;

    move-object/from16 v3, p2

    .line 1076
    invoke-virtual {v3, v2}, Landroidx/collection/MutableScatterSet;->remove(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    add-int/2addr v9, v2

    goto :goto_8

    .line 1077
    :cond_12
    iget-object v1, v0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->merged:Ljava/util/List;

    if-nez v1, :cond_13

    goto :goto_9

    .line 1078
    :cond_13
    invoke-static {v1, v10}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v10

    :goto_9
    iput-object v10, v0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->merged:Ljava/util/List;

    .line 1081
    :cond_14
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotApplyResult$Success;->INSTANCE:Landroidx/compose/runtime/snapshots/SnapshotApplyResult$Success;

    return-object v0
.end method

.method public nestedActivated$runtime_release(Landroidx/compose/runtime/snapshots/Snapshot;)V
    .locals 0

    .line 923
    iget p1, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->snapshots:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->snapshots:I

    return-void
.end method

.method public nestedDeactivated$runtime_release(Landroidx/compose/runtime/snapshots/Snapshot;)V
    .locals 0

    .line 927
    iget p1, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->snapshots:I

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    const-string p1, "no pending nested snapshots"

    .line 35
    invoke-static {p1}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 928
    :cond_1
    iget p1, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->snapshots:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->snapshots:I

    if-nez p1, :cond_2

    .line 929
    iget-boolean p1, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->applied:Z

    if-nez p1, :cond_2

    .line 930
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->abandon()V

    :cond_2
    return-void
.end method

.method public notifyObjectsInitialized$runtime_release()V
    .locals 1

    .line 936
    iget-boolean v0, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->applied:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->getDisposed$runtime_release()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 937
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->advance$runtime_release()V

    :cond_1
    :goto_0
    return-void
.end method

.method public recordModified$runtime_release(Landroidx/compose/runtime/snapshots/StateObject;)V
    .locals 1

    .line 1130
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->getModified$runtime_release()Landroidx/collection/MutableScatterSet;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Landroidx/collection/ScatterSetKt;->mutableScatterSetOf()Landroidx/collection/MutableScatterSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->setModified(Landroidx/collection/MutableScatterSet;)V

    :cond_0
    invoke-virtual {v0, p1}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final recordPrevious$runtime_release(I)V
    .locals 2

    .line 1846
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    move-result-object v0

    .line 27
    monitor-enter v0

    .line 1105
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->previousIds:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    invoke-virtual {v1, p1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->set(I)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->previousIds:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final recordPreviousList$runtime_release(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)V
    .locals 2

    .line 1846
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    move-result-object v0

    .line 27
    monitor-enter v0

    .line 1126
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->previousIds:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    invoke-virtual {v1, p1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->or(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->previousIds:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final recordPreviousPinnedSnapshot$runtime_release(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 1109
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->previousPinnedSnapshots:[I

    invoke-static {v0, p1}, Lkotlin/collections/ArraysKt;->plus([II)[I

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->previousPinnedSnapshots:[I

    :cond_0
    return-void
.end method

.method public final recordPreviousPinnedSnapshots$runtime_release([I)V
    .locals 2

    .line 1114
    array-length v0, p1

    if-nez v0, :cond_0

    return-void

    .line 1115
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->previousPinnedSnapshots:[I

    .line 1116
    array-length v1, v0

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0, p1}, Lkotlin/collections/ArraysKt;->plus([I[I)[I

    move-result-object p1

    :goto_0
    iput-object p1, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->previousPinnedSnapshots:[I

    return-void
.end method

.method public releasePinnedSnapshotsForCloseLocked$runtime_release()V
    .locals 0

    .line 946
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->releasePreviouslyPinnedSnapshotsLocked()V

    .line 947
    invoke-super {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->releasePinnedSnapshotsForCloseLocked$runtime_release()V

    return-void
.end method

.method public final setApplied$runtime_release(Z)V
    .locals 0

    .line 1155
    iput-boolean p1, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->applied:Z

    return-void
.end method

.method public setModified(Landroidx/collection/MutableScatterSet;)V
    .locals 0

    .line 1135
    iput-object p1, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->modified:Landroidx/collection/MutableScatterSet;

    return-void
.end method

.method public setWriteCount$runtime_release(I)V
    .locals 0

    .line 1133
    iput p1, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->writeCount:I

    return-void
.end method

.method public takeNestedMutableSnapshot(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/MutableSnapshot;
    .locals 13

    .line 752
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->validateNotDisposed$runtime_release()V

    .line 753
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->validateNotAppliedOrPinned()V

    .line 163
    invoke-static {}, Landroidx/compose/runtime/snapshots/tooling/SnapshotObserverKt;->access$getObservers$p()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 167
    invoke-static {v0, p0, v1, p1, p2}, Landroidx/compose/runtime/snapshots/tooling/SnapshotObserverKt;->mergeObservers(Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;Landroidx/compose/runtime/snapshots/Snapshot;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lkotlin/Pair;

    move-result-object p1

    .line 168
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/compose/runtime/snapshots/tooling/SnapshotInstanceObservers;

    .line 169
    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/tooling/SnapshotInstanceObservers;->getReadObserver()Lkotlin/jvm/functions/Function1;

    move-result-object v3

    .line 170
    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/tooling/SnapshotInstanceObservers;->getWriteObserver()Lkotlin/jvm/functions/Function1;

    move-result-object p2

    .line 171
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    move-object v12, p2

    move-object p2, p1

    move-object p1, v3

    move-object v3, v12

    goto :goto_0

    :cond_0
    move-object v3, p2

    move-object p2, v2

    .line 1085
    :goto_0
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->getId()I

    move-result v4

    invoke-virtual {p0, v4}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->recordPrevious$runtime_release(I)V

    .line 1846
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    move-result-object v4

    .line 27
    monitor-enter v4

    .line 759
    :try_start_0
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$getNextSnapshotId$p()I

    move-result v6

    add-int/lit8 v5, v6, 0x1

    invoke-static {v5}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$setNextSnapshotId$p(I)V

    .line 760
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$getOpenSnapshots$p()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->set(I)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v5

    invoke-static {v5}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$setOpenSnapshots$p(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)V

    .line 761
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->getInvalid$runtime_release()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v5

    .line 762
    invoke-virtual {v5, v6}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->set(I)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroidx/compose/runtime/snapshots/Snapshot;->setInvalid$runtime_release(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)V

    .line 763
    new-instance v11, Landroidx/compose/runtime/snapshots/NestedMutableSnapshot;

    .line 765
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->getId()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v5, v7, v6}, Landroidx/compose/runtime/snapshots/SnapshotKt;->addRange(Landroidx/compose/runtime/snapshots/SnapshotIdSet;II)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v7

    .line 766
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->getReadObserver$runtime_release()Lkotlin/jvm/functions/Function1;

    move-result-object v5

    const/4 v8, 0x4

    invoke-static {p1, v5, v1, v8, v2}, Landroidx/compose/runtime/snapshots/SnapshotKt;->mergedReadObserver$default(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZILjava/lang/Object;)Lkotlin/jvm/functions/Function1;

    move-result-object v8

    .line 767
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->getWriteObserver$runtime_release()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    invoke-static {v3, p1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$mergedWriteObserver(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function1;

    move-result-object v9

    move-object v5, v11

    move-object v10, p0

    .line 763
    invoke-direct/range {v5 .. v10}, Landroidx/compose/runtime/snapshots/NestedMutableSnapshot;-><init>(ILandroidx/compose/runtime/snapshots/SnapshotIdSet;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/snapshots/MutableSnapshot;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    monitor-exit v4

    .line 1091
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->getApplied$runtime_release()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->getDisposed$runtime_release()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1092
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->getId()I

    move-result p1

    .line 1846
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    move-result-object v1

    .line 27
    monitor-enter v1

    .line 1094
    :try_start_1
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$getNextSnapshotId$p()I

    move-result v2

    add-int/lit8 v3, v2, 0x1

    invoke-static {v3}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$setNextSnapshotId$p(I)V

    invoke-virtual {p0, v2}, Landroidx/compose/runtime/snapshots/Snapshot;->setId$runtime_release(I)V

    .line 1095
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$getOpenSnapshots$p()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->set(I)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$setOpenSnapshots$p(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)V

    .line 1096
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    monitor-exit v1

    .line 1097
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->getInvalid$runtime_release()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->getId()I

    move-result v2

    invoke-static {v1, p1, v2}, Landroidx/compose/runtime/snapshots/SnapshotKt;->addRange(Landroidx/compose/runtime/snapshots/SnapshotIdSet;II)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/snapshots/Snapshot;->setInvalid$runtime_release(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 27
    monitor-exit v1

    throw p0

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 174
    invoke-static {v0, p0, v11, p2}, Landroidx/compose/runtime/snapshots/tooling/SnapshotObserverKt;->dispatchCreatedObservers(Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Ljava/util/Map;)V

    :cond_2
    return-object v11

    :catchall_1
    move-exception p0

    .line 27
    monitor-exit v4

    throw p0
.end method

.method public takeNestedSnapshot(Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/Snapshot;
    .locals 12

    const/4 v0, 0x1

    .line 898
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->validateNotDisposed$runtime_release()V

    .line 899
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->validateNotAppliedOrPinned()V

    .line 900
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->getId()I

    move-result v1

    .line 902
    instance-of v2, p0, Landroidx/compose/runtime/snapshots/GlobalSnapshot;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    move-object v2, p0

    .line 163
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/snapshots/tooling/SnapshotObserverKt;->access$getObservers$p()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 167
    invoke-static {v4, v2, v0, p1, v3}, Landroidx/compose/runtime/snapshots/tooling/SnapshotObserverKt;->mergeObservers(Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;Landroidx/compose/runtime/snapshots/Snapshot;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lkotlin/Pair;

    move-result-object p1

    .line 168
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/runtime/snapshots/tooling/SnapshotInstanceObservers;

    .line 169
    invoke-virtual {v5}, Landroidx/compose/runtime/snapshots/tooling/SnapshotInstanceObservers;->getReadObserver()Lkotlin/jvm/functions/Function1;

    move-result-object v6

    .line 170
    invoke-virtual {v5}, Landroidx/compose/runtime/snapshots/tooling/SnapshotInstanceObservers;->getWriteObserver()Lkotlin/jvm/functions/Function1;

    .line 171
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    move-object v5, p1

    move-object p1, v6

    goto :goto_1

    :cond_1
    move-object v5, v3

    .line 1085
    :goto_1
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->getId()I

    move-result v6

    invoke-virtual {p0, v6}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->recordPrevious$runtime_release(I)V

    .line 1846
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    move-result-object v6

    .line 27
    monitor-enter v6

    .line 909
    :try_start_0
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$getNextSnapshotId$p()I

    move-result v7

    add-int/lit8 v8, v7, 0x1

    invoke-static {v8}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$setNextSnapshotId$p(I)V

    .line 910
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$getOpenSnapshots$p()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->set(I)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v8

    invoke-static {v8}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$setOpenSnapshots$p(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)V

    .line 911
    new-instance v8, Landroidx/compose/runtime/snapshots/NestedReadonlySnapshot;

    .line 913
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->getInvalid$runtime_release()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v9

    add-int/2addr v1, v0

    invoke-static {v9, v1, v7}, Landroidx/compose/runtime/snapshots/SnapshotKt;->addRange(Landroidx/compose/runtime/snapshots/SnapshotIdSet;II)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v1

    .line 914
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->getReadObserver$runtime_release()Lkotlin/jvm/functions/Function1;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x4

    invoke-static {p1, v9, v10, v11, v3}, Landroidx/compose/runtime/snapshots/SnapshotKt;->mergedReadObserver$default(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZILjava/lang/Object;)Lkotlin/jvm/functions/Function1;

    move-result-object p1

    .line 911
    invoke-direct {v8, v7, v1, p1, p0}, Landroidx/compose/runtime/snapshots/NestedReadonlySnapshot;-><init>(ILandroidx/compose/runtime/snapshots/SnapshotIdSet;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/snapshots/Snapshot;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    monitor-exit v6

    .line 1091
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->getApplied$runtime_release()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->getDisposed$runtime_release()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1092
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->getId()I

    move-result p1

    .line 1846
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    move-result-object v1

    .line 27
    monitor-enter v1

    .line 1094
    :try_start_1
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$getNextSnapshotId$p()I

    move-result v3

    add-int/lit8 v6, v3, 0x1

    invoke-static {v6}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$setNextSnapshotId$p(I)V

    invoke-virtual {p0, v3}, Landroidx/compose/runtime/snapshots/Snapshot;->setId$runtime_release(I)V

    .line 1095
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$getOpenSnapshots$p()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->getId()I

    move-result v6

    invoke-virtual {v3, v6}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->set(I)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v3

    invoke-static {v3}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$setOpenSnapshots$p(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)V

    .line 1096
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    monitor-exit v1

    .line 1097
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->getInvalid$runtime_release()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v1

    add-int/2addr p1, v0

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->getId()I

    move-result v0

    invoke-static {v1, p1, v0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->addRange(Landroidx/compose/runtime/snapshots/SnapshotIdSet;II)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/snapshots/Snapshot;->setInvalid$runtime_release(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 27
    monitor-exit v1

    throw p0

    :cond_2
    :goto_2
    if-eqz v4, :cond_3

    .line 174
    invoke-static {v4, v2, v8, v5}, Landroidx/compose/runtime/snapshots/tooling/SnapshotObserverKt;->dispatchCreatedObservers(Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Ljava/util/Map;)V

    :cond_3
    return-object v8

    :catchall_1
    move-exception p0

    .line 27
    monitor-exit v6

    throw p0
.end method
