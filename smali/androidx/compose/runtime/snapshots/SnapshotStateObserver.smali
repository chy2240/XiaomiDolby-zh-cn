.class public final Landroidx/compose/runtime/snapshots/SnapshotStateObserver;
.super Ljava/lang/Object;
.source "SnapshotStateObserver.kt"


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final applyObserver:Lkotlin/jvm/functions/Function2;

.field private applyUnsubscribe:Landroidx/compose/runtime/snapshots/ObserverHandle;

.field private currentMap:Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

.field private currentMapThreadId:J

.field private isPaused:Z

.field private final observedScopeMaps:Landroidx/compose/runtime/collection/MutableVector;

.field private final observedScopeMapsLock:Ljava/lang/Object;

.field private final onChangedExecutor:Lkotlin/jvm/functions/Function1;

.field private final pendingChanges:Ljava/util/concurrent/atomic/AtomicReference;

.field private final readObserver:Lkotlin/jvm/functions/Function1;

.field private sendingNotifications:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->onChangedExecutor:Lkotlin/jvm/functions/Function1;

    .line 46
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->pendingChanges:Ljava/util/concurrent/atomic/AtomicReference;

    .line 49
    new-instance p1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$applyObserver$1;

    invoke-direct {p1, p0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$applyObserver$1;-><init>(Landroidx/compose/runtime/snapshots/SnapshotStateObserver;)V

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->applyObserver:Lkotlin/jvm/functions/Function2;

    .line 163
    new-instance p1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$readObserver$1;

    invoke-direct {p1, p0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$readObserver$1;-><init>(Landroidx/compose/runtime/snapshots/SnapshotStateObserver;)V

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->readObserver:Lkotlin/jvm/functions/Function1;

    .line 1130
    new-instance p1, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v0, 0x10

    new-array v0, v0, [Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 174
    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observedScopeMaps:Landroidx/compose/runtime/collection/MutableVector;

    .line 175
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observedScopeMapsLock:Ljava/lang/Object;

    const-wide/16 v0, -0x1

    .line 205
    iput-wide v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->currentMapThreadId:J

    return-void
.end method

.method public static final synthetic access$addChanges(Landroidx/compose/runtime/snapshots/SnapshotStateObserver;Ljava/util/Set;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->addChanges(Ljava/util/Set;)V

    return-void
.end method

.method public static final synthetic access$drainChanges(Landroidx/compose/runtime/snapshots/SnapshotStateObserver;)Z
    .locals 0

    .line 44
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->drainChanges()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getCurrentMap$p(Landroidx/compose/runtime/snapshots/SnapshotStateObserver;)Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
    .locals 0

    .line 44
    iget-object p0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->currentMap:Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

    return-object p0
.end method

.method public static final synthetic access$getObservedScopeMaps$p(Landroidx/compose/runtime/snapshots/SnapshotStateObserver;)Landroidx/compose/runtime/collection/MutableVector;
    .locals 0

    .line 44
    iget-object p0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observedScopeMaps:Landroidx/compose/runtime/collection/MutableVector;

    return-object p0
.end method

.method public static final synthetic access$getObservedScopeMapsLock$p(Landroidx/compose/runtime/snapshots/SnapshotStateObserver;)Ljava/lang/Object;
    .locals 0

    .line 44
    iget-object p0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observedScopeMapsLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic access$getSendingNotifications$p(Landroidx/compose/runtime/snapshots/SnapshotStateObserver;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->sendingNotifications:Z

    return p0
.end method

.method public static final synthetic access$isPaused$p(Landroidx/compose/runtime/snapshots/SnapshotStateObserver;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->isPaused:Z

    return p0
.end method

.method public static final synthetic access$sendNotifications(Landroidx/compose/runtime/snapshots/SnapshotStateObserver;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->sendNotifications()V

    return-void
.end method

.method public static final synthetic access$setSendingNotifications$p(Landroidx/compose/runtime/snapshots/SnapshotStateObserver;Z)V
    .locals 0

    .line 44
    iput-boolean p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->sendingNotifications:Z

    return-void
.end method

.method private final addChanges(Ljava/util/Set;)V
    .locals 3

    .line 115
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->pendingChanges:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 118
    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    goto :goto_0

    .line 119
    :cond_1
    instance-of v1, v0, Ljava/util/Set;

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/util/Set;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 120
    :cond_2
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 123
    :goto_0
    iget-object v2, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->pendingChanges:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 121
    :cond_3
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->report()Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method private final drainChanges()Z
    .locals 9

    const/4 v0, 0x1

    .line 65
    iget-object v1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observedScopeMapsLock:Ljava/lang/Object;

    .line 27
    monitor-enter v1

    .line 65
    :try_start_0
    iget-boolean v2, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->sendingNotifications:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    monitor-exit v1

    const/4 v1, 0x0

    if-eqz v2, :cond_0

    return v1

    :cond_0
    move v2, v1

    .line 70
    :goto_0
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->removeChanges()Ljava/util/Set;

    move-result-object v3

    if-nez v3, :cond_1

    return v2

    .line 183
    :cond_1
    iget-object v4, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observedScopeMapsLock:Ljava/lang/Object;

    .line 27
    monitor-enter v4

    .line 183
    :try_start_1
    iget-object v5, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observedScopeMaps:Landroidx/compose/runtime/collection/MutableVector;

    .line 434
    invoke-virtual {v5}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v6

    if-lez v6, :cond_5

    .line 437
    invoke-virtual {v5}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v5

    move v7, v1

    .line 439
    :cond_2
    aget-object v8, v5, v7

    check-cast v8, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

    .line 72
    invoke-virtual {v8, v3}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->recordInvalidation(Ljava/util/Set;)Z

    move-result v8

    if-nez v8, :cond_4

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    move v2, v1

    goto :goto_2

    :cond_4
    :goto_1
    move v2, v0

    :goto_2
    add-int/2addr v7, v0

    if-lt v7, v6, :cond_2

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    .line 183
    :cond_5
    :goto_3
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    monitor-exit v4

    goto :goto_0

    :goto_4
    monitor-exit v4

    throw p0

    :catchall_1
    move-exception p0

    .line 27
    monitor-exit v1

    throw p0
.end method

.method private final ensureMap(Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
    .locals 5

    .line 327
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observedScopeMaps:Landroidx/compose/runtime/collection/MutableVector;

    .line 342
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v1

    if-lez v1, :cond_2

    .line 345
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    .line 347
    :cond_0
    aget-object v3, v0, v2

    .line 348
    move-object v4, v3

    check-cast v4, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

    .line 327
    invoke-virtual {v4}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->getOnChanged()Lkotlin/jvm/functions/Function1;

    move-result-object v4

    if-ne v4, p1, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    if-lt v2, v1, :cond_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    check-cast v3, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

    if-nez v3, :cond_3

    .line 329
    new-instance v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

    const-string v1, "null cannot be cast to non-null type kotlin.Function1<kotlin.Any, kotlin.Unit>"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/jvm/functions/Function1;

    invoke-direct {v0, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 330
    iget-object p0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observedScopeMaps:Landroidx/compose/runtime/collection/MutableVector;

    .line 684
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_3
    return-object v3
.end method

.method private final removeChanges()Ljava/util/Set;
    .locals 7

    .line 134
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->pendingChanges:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    .line 139
    :cond_1
    instance-of v2, v0, Ljava/util/Set;

    if-eqz v2, :cond_2

    .line 140
    move-object v2, v0

    check-cast v2, Ljava/util/Set;

    goto :goto_1

    .line 143
    :cond_2
    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_5

    .line 144
    move-object v2, v0

    check-cast v2, Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 147
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-ne v4, v6, :cond_3

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 148
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v6, :cond_4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v2, v5, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    :cond_4
    :goto_0
    move-object v2, v3

    .line 154
    :goto_1
    iget-object v3, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->pendingChanges:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v2

    .line 152
    :cond_5
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->report()Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method private final report()Ljava/lang/Void;
    .locals 0

    .line 160
    const-string p0, "Unexpected notification"

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method private final sendNotifications()V
    .locals 2

    .line 83
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->onChangedExecutor:Lkotlin/jvm/functions/Function1;

    new-instance v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$sendNotifications$1;

    invoke-direct {v1, p0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$sendNotifications$1;-><init>(Landroidx/compose/runtime/snapshots/SnapshotStateObserver;)V

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 4

    .line 183
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observedScopeMapsLock:Ljava/lang/Object;

    .line 27
    monitor-enter v0

    .line 183
    :try_start_0
    iget-object p0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observedScopeMaps:Landroidx/compose/runtime/collection/MutableVector;

    .line 434
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v1

    if-lez v1, :cond_1

    .line 437
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object p0

    const/4 v2, 0x0

    .line 439
    :cond_0
    aget-object v3, p0, v2

    check-cast v3, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

    .line 316
    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->clear()V

    add-int/lit8 v2, v2, 0x1

    if-lt v2, v1, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 183
    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public final clearIf(Lkotlin/jvm/functions/Function1;)V
    .locals 7

    .line 187
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observedScopeMapsLock:Ljava/lang/Object;

    .line 27
    monitor-enter v0

    .line 187
    :try_start_0
    iget-object p0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observedScopeMaps:Landroidx/compose/runtime/collection/MutableVector;

    .line 784
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_2

    .line 786
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v4

    aget-object v4, v4, v2

    check-cast v4, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

    .line 290
    invoke-virtual {v4, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->removeScopeIf(Lkotlin/jvm/functions/Function1;)V

    .line 291
    invoke-virtual {v4}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->hasScopeObservations()Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    if-lez v3, :cond_1

    .line 792
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v4

    sub-int v5, v2, v3

    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v6

    aget-object v6, v6, v2

    aput-object v6, v4, v5

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 795
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object p1

    sub-int v2, v1, v3

    const/4 v3, 0x0

    invoke-static {p1, v3, v2, v1}, Lkotlin/collections/ArraysKt;->fill([Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 796
    invoke-virtual {p0, v2}, Landroidx/compose/runtime/collection/MutableVector;->setSize(I)V

    .line 187
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0

    throw p0
.end method

.method public final observeReads(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
    .locals 8

    .line 222
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observedScopeMapsLock:Ljava/lang/Object;

    .line 27
    monitor-enter v0

    .line 222
    :try_start_0
    invoke-direct {p0, p2}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->ensureMap(Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    monitor-exit v0

    .line 224
    iget-boolean v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->isPaused:Z

    .line 225
    iget-object v1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->currentMap:Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

    .line 226
    iget-wide v2, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->currentMapThreadId:J

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 229
    invoke-static {}, Landroidx/compose/runtime/internal/Thread_jvmKt;->currentThreadId()J

    move-result-wide v6

    cmp-long v4, v2, v6

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    if-nez v4, :cond_1

    .line 230
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Detected multithreaded access to SnapshotStateObserver: previousThreadId="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 231
    const-string v6, "), currentThread={id="

    .line 230
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-static {}, Landroidx/compose/runtime/internal/Thread_jvmKt;->currentThreadId()J

    move-result-wide v6

    .line 230
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 232
    const-string v6, ", name="

    .line 230
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-static {}, Landroidx/compose/runtime/internal/Thread_jvmKt;->currentThreadName()Ljava/lang/String;

    move-result-object v6

    .line 230
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    const-string v6, "}. Note that observation on multiple threads in layout/draw is not supported. Make sure your measure/layout/draw for each Owner (AndroidComposeView) is executed on the same thread."

    .line 230
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 35
    invoke-static {v4}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 240
    :cond_1
    :try_start_1
    iput-boolean v5, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->isPaused:Z

    .line 241
    iput-object p2, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->currentMap:Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

    .line 242
    invoke-static {}, Landroidx/compose/runtime/internal/Thread_jvmKt;->currentThreadId()J

    move-result-wide v4

    iput-wide v4, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->currentMapThreadId:J

    .line 244
    iget-object v4, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->readObserver:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p2, p1, v4, p3}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->observe(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 246
    iput-object v1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->currentMap:Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

    .line 247
    iput-boolean v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->isPaused:Z

    .line 248
    iput-wide v2, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->currentMapThreadId:J

    return-void

    :catchall_0
    move-exception p1

    .line 246
    iput-object v1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->currentMap:Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

    .line 247
    iput-boolean v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->isPaused:Z

    .line 248
    iput-wide v2, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->currentMapThreadId:J

    throw p1

    :catchall_1
    move-exception p0

    .line 27
    monitor-exit v0

    throw p0
.end method

.method public final start()V
    .locals 2

    .line 297
    sget-object v0, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    iget-object v1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->applyObserver:Lkotlin/jvm/functions/Function2;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->registerApplyObserver(Lkotlin/jvm/functions/Function2;)Landroidx/compose/runtime/snapshots/ObserverHandle;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->applyUnsubscribe:Landroidx/compose/runtime/snapshots/ObserverHandle;

    return-void
.end method

.method public final stop()V
    .locals 0

    .line 302
    iget-object p0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->applyUnsubscribe:Landroidx/compose/runtime/snapshots/ObserverHandle;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroidx/compose/runtime/snapshots/ObserverHandle;->dispose()V

    :cond_0
    return-void
.end method
