.class public Landroidx/core/util/Pools$SynchronizedPool;
.super Landroidx/core/util/Pools$SimplePool;
.source "Pools.kt"


# instance fields
.field private final lock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Landroidx/core/util/Pools$SimplePool;-><init>(I)V

    .line 118
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/util/Pools$SynchronizedPool;->lock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public acquire()Ljava/lang/Object;
    .locals 1

    .line 121
    iget-object v0, p0, Landroidx/core/util/Pools$SynchronizedPool;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 122
    :try_start_0
    invoke-super {p0}, Landroidx/core/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public release(Ljava/lang/Object;)Z
    .locals 1

    .line 127
    const-string v0, "instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/core/util/Pools$SynchronizedPool;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 128
    :try_start_0
    invoke-super {p0, p1}, Landroidx/core/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
