.class Lcom/airbnb/lottie/LottieTask$LottieFutureTask;
.super Ljava/util/concurrent/FutureTask;
.source "LottieTask.java"


# instance fields
.field private lottieTask:Lcom/airbnb/lottie/LottieTask;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieTask;Ljava/util/concurrent/Callable;)V
    .locals 0

    .line 188
    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 189
    iput-object p1, p0, Lcom/airbnb/lottie/LottieTask$LottieFutureTask;->lottieTask:Lcom/airbnb/lottie/LottieTask;

    return-void
.end method


# virtual methods
.method protected done()V
    .locals 4

    const/4 v0, 0x0

    .line 195
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 221
    iput-object v0, p0, Lcom/airbnb/lottie/LottieTask$LottieFutureTask;->lottieTask:Lcom/airbnb/lottie/LottieTask;

    return-void

    .line 201
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/airbnb/lottie/LottieTask$LottieFutureTask;->lottieTask:Lcom/airbnb/lottie/LottieTask;

    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieResult;

    invoke-static {v1, v2}, Lcom/airbnb/lottie/LottieTask;->access$000(Lcom/airbnb/lottie/LottieTask;Lcom/airbnb/lottie/LottieResult;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 203
    :try_start_2
    iget-object v2, p0, Lcom/airbnb/lottie/LottieTask$LottieFutureTask;->lottieTask:Lcom/airbnb/lottie/LottieTask;

    new-instance v3, Lcom/airbnb/lottie/LottieResult;

    invoke-direct {v3, v1}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v2, v3}, Lcom/airbnb/lottie/LottieTask;->access$000(Lcom/airbnb/lottie/LottieTask;Lcom/airbnb/lottie/LottieResult;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 221
    :goto_0
    iput-object v0, p0, Lcom/airbnb/lottie/LottieTask$LottieFutureTask;->lottieTask:Lcom/airbnb/lottie/LottieTask;

    return-void

    :goto_1
    iput-object v0, p0, Lcom/airbnb/lottie/LottieTask$LottieFutureTask;->lottieTask:Lcom/airbnb/lottie/LottieTask;

    .line 222
    throw v1
.end method
