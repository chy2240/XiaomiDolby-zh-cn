.class public final Landroidx/compose/runtime/internal/SnapshotThreadLocal;
.super Ljava/lang/Object;
.source "SnapshotThreadLocal.kt"


# instance fields
.field private mainThreadValue:Ljava/lang/Object;

.field private final map:Ljava/util/concurrent/atomic/AtomicReference;

.field private final writeMutex:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Landroidx/compose/runtime/internal/SnapshotThreadLocalKt;->access$getEmptyThreadMap$p()Landroidx/compose/runtime/internal/ThreadMap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/compose/runtime/internal/SnapshotThreadLocal;->map:Ljava/util/concurrent/atomic/AtomicReference;

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/internal/SnapshotThreadLocal;->writeMutex:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    .line 39
    invoke-static {}, Landroidx/compose/runtime/internal/Thread_jvmKt;->currentThreadId()J

    move-result-wide v0

    .line 40
    invoke-static {}, Landroidx/compose/runtime/internal/Thread_androidKt;->getMainThreadId()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 41
    iget-object p0, p0, Landroidx/compose/runtime/internal/SnapshotThreadLocal;->mainThreadValue:Ljava/lang/Object;

    goto :goto_0

    .line 43
    :cond_0
    iget-object p0, p0, Landroidx/compose/runtime/internal/SnapshotThreadLocal;->map:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/runtime/internal/ThreadMap;

    invoke-virtual {p0, v0, v1}, Landroidx/compose/runtime/internal/ThreadMap;->get(J)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 5

    .line 48
    invoke-static {}, Landroidx/compose/runtime/internal/Thread_jvmKt;->currentThreadId()J

    move-result-wide v0

    .line 49
    invoke-static {}, Landroidx/compose/runtime/internal/Thread_androidKt;->getMainThreadId()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 50
    iput-object p1, p0, Landroidx/compose/runtime/internal/SnapshotThreadLocal;->mainThreadValue:Ljava/lang/Object;

    goto :goto_0

    .line 52
    :cond_0
    iget-object v2, p0, Landroidx/compose/runtime/internal/SnapshotThreadLocal;->writeMutex:Ljava/lang/Object;

    .line 27
    monitor-enter v2

    .line 53
    :try_start_0
    iget-object v3, p0, Landroidx/compose/runtime/internal/SnapshotThreadLocal;->map:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/runtime/internal/ThreadMap;

    .line 54
    invoke-virtual {v3, v0, v1, p1}, Landroidx/compose/runtime/internal/ThreadMap;->trySet(JLjava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    monitor-exit v2

    return-void

    .line 55
    :cond_1
    :try_start_1
    iget-object p0, p0, Landroidx/compose/runtime/internal/SnapshotThreadLocal;->map:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v0, v1, p1}, Landroidx/compose/runtime/internal/ThreadMap;->newWith(JLjava/lang/Object;)Landroidx/compose/runtime/internal/ThreadMap;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 56
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    monitor-exit v2

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v2

    throw p0
.end method
