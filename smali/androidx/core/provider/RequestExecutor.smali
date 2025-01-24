.class abstract Landroidx/core/provider/RequestExecutor;
.super Ljava/lang/Object;
.source "RequestExecutor.java"


# direct methods
.method static createDefaultExecutor(Ljava/lang/String;II)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 8

    .line 82
    new-instance v7, Landroidx/core/provider/RequestExecutor$DefaultThreadFactory;

    invoke-direct {v7, p0, p1}, Landroidx/core/provider/RequestExecutor$DefaultThreadFactory;-><init>(Ljava/lang/String;I)V

    .line 85
    new-instance p0, Ljava/util/concurrent/ThreadPoolExecutor;

    int-to-long v3, p2

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    const/4 p1, 0x1

    .line 93
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    return-object p0
.end method

.method static createHandlerExecutor(Landroid/os/Handler;)Ljava/util/concurrent/Executor;
    .locals 1

    .line 98
    new-instance v0, Landroidx/core/provider/RequestExecutor$HandlerExecutor;

    invoke-direct {v0, p0}, Landroidx/core/provider/RequestExecutor$HandlerExecutor;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method static execute(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;Landroidx/core/util/Consumer;)V
    .locals 2

    .line 56
    invoke-static {}, Landroidx/core/provider/CalleeHandler;->create()Landroid/os/Handler;

    move-result-object v0

    .line 57
    new-instance v1, Landroidx/core/provider/RequestExecutor$ReplyRunnable;

    invoke-direct {v1, v0, p1, p2}, Landroidx/core/provider/RequestExecutor$ReplyRunnable;-><init>(Landroid/os/Handler;Ljava/util/concurrent/Callable;Landroidx/core/util/Consumer;)V

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static submit(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Callable;I)Ljava/lang/Object;
    .locals 1

    .line 65
    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    int-to-long p1, p2

    .line 67
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, p1, p2, v0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    .line 73
    :catch_2
    new-instance p0, Ljava/lang/InterruptedException;

    const-string p1, "timeout"

    invoke-direct {p0, p1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 71
    :goto_0
    throw p0

    .line 69
    :goto_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
