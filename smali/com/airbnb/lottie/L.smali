.class public abstract Lcom/airbnb/lottie/L;
.super Ljava/lang/Object;
.source "L.java"


# static fields
.field public static DBG:Z = false

.field private static cacheProvider:Lcom/airbnb/lottie/network/LottieNetworkCacheProvider; = null

.field private static defaultAsyncUpdates:Lcom/airbnb/lottie/AsyncUpdates; = null

.field private static disablePathInterpolatorCache:Z = true

.field private static fetcher:Lcom/airbnb/lottie/network/LottieNetworkFetcher; = null

.field private static lottieTrace:Ljava/lang/ThreadLocal; = null

.field private static volatile networkCache:Lcom/airbnb/lottie/network/NetworkCache; = null

.field private static networkCacheEnabled:Z = true

.field private static volatile networkFetcher:Lcom/airbnb/lottie/network/NetworkFetcher; = null

.field private static traceEnabled:Z = false


# direct methods
.method public static synthetic $r8$lambda$YW03oPK-d1BYC4_FG_rDZ6mwios(Landroid/content/Context;)Ljava/io/File;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/airbnb/lottie/L;->lambda$networkCache$0(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 27
    sget-object v0, Lcom/airbnb/lottie/AsyncUpdates;->AUTOMATIC:Lcom/airbnb/lottie/AsyncUpdates;

    sput-object v0, Lcom/airbnb/lottie/L;->defaultAsyncUpdates:Lcom/airbnb/lottie/AsyncUpdates;

    return-void
.end method

.method public static beginSection(Ljava/lang/String;)V
    .locals 1

    .line 54
    sget-boolean v0, Lcom/airbnb/lottie/L;->traceEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 57
    :cond_0
    invoke-static {}, Lcom/airbnb/lottie/L;->getTrace()Lcom/airbnb/lottie/utils/LottieTrace;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/utils/LottieTrace;->beginSection(Ljava/lang/String;)V

    return-void
.end method

.method public static endSection(Ljava/lang/String;)F
    .locals 1

    .line 61
    sget-boolean v0, Lcom/airbnb/lottie/L;->traceEnabled:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 64
    :cond_0
    invoke-static {}, Lcom/airbnb/lottie/L;->getTrace()Lcom/airbnb/lottie/utils/LottieTrace;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/utils/LottieTrace;->endSection(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public static getDefaultAsyncUpdates()Lcom/airbnb/lottie/AsyncUpdates;
    .locals 1

    .line 140
    sget-object v0, Lcom/airbnb/lottie/L;->defaultAsyncUpdates:Lcom/airbnb/lottie/AsyncUpdates;

    return-object v0
.end method

.method public static getDisablePathInterpolatorCache()Z
    .locals 1

    .line 132
    sget-boolean v0, Lcom/airbnb/lottie/L;->disablePathInterpolatorCache:Z

    return v0
.end method

.method private static getTrace()Lcom/airbnb/lottie/utils/LottieTrace;
    .locals 2

    .line 68
    sget-object v0, Lcom/airbnb/lottie/L;->lottieTrace:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/utils/LottieTrace;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/airbnb/lottie/utils/LottieTrace;

    invoke-direct {v0}, Lcom/airbnb/lottie/utils/LottieTrace;-><init>()V

    .line 71
    sget-object v1, Lcom/airbnb/lottie/L;->lottieTrace:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private static synthetic lambda$networkCache$0(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 120
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "lottie_network_cache"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static networkCache(Landroid/content/Context;)Lcom/airbnb/lottie/network/NetworkCache;
    .locals 3

    .line 110
    sget-boolean v0, Lcom/airbnb/lottie/L;->networkCacheEnabled:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 113
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 114
    sget-object v0, Lcom/airbnb/lottie/L;->networkCache:Lcom/airbnb/lottie/network/NetworkCache;

    if-nez v0, :cond_3

    .line 116
    const-class v1, Lcom/airbnb/lottie/network/NetworkCache;

    monitor-enter v1

    .line 117
    :try_start_0
    sget-object v0, Lcom/airbnb/lottie/L;->networkCache:Lcom/airbnb/lottie/network/NetworkCache;

    if-nez v0, :cond_2

    .line 119
    new-instance v0, Lcom/airbnb/lottie/network/NetworkCache;

    sget-object v2, Lcom/airbnb/lottie/L;->cacheProvider:Lcom/airbnb/lottie/network/LottieNetworkCacheProvider;

    if-eqz v2, :cond_1

    goto :goto_0

    .line 120
    :cond_1
    new-instance v2, Lcom/airbnb/lottie/L$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/airbnb/lottie/L$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    :goto_0
    invoke-direct {v0, v2}, Lcom/airbnb/lottie/network/NetworkCache;-><init>(Lcom/airbnb/lottie/network/LottieNetworkCacheProvider;)V

    sput-object v0, Lcom/airbnb/lottie/L;->networkCache:Lcom/airbnb/lottie/network/NetworkCache;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 122
    :cond_2
    :goto_1
    monitor-exit v1

    goto :goto_3

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_3
    return-object v0
.end method

.method public static networkFetcher(Landroid/content/Context;)Lcom/airbnb/lottie/network/NetworkFetcher;
    .locals 3

    .line 96
    sget-object v0, Lcom/airbnb/lottie/L;->networkFetcher:Lcom/airbnb/lottie/network/NetworkFetcher;

    if-nez v0, :cond_2

    .line 98
    const-class v1, Lcom/airbnb/lottie/network/NetworkFetcher;

    monitor-enter v1

    .line 99
    :try_start_0
    sget-object v0, Lcom/airbnb/lottie/L;->networkFetcher:Lcom/airbnb/lottie/network/NetworkFetcher;

    if-nez v0, :cond_1

    .line 101
    new-instance v0, Lcom/airbnb/lottie/network/NetworkFetcher;

    invoke-static {p0}, Lcom/airbnb/lottie/L;->networkCache(Landroid/content/Context;)Lcom/airbnb/lottie/network/NetworkCache;

    move-result-object p0

    sget-object v2, Lcom/airbnb/lottie/L;->fetcher:Lcom/airbnb/lottie/network/LottieNetworkFetcher;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/airbnb/lottie/network/DefaultLottieNetworkFetcher;

    invoke-direct {v2}, Lcom/airbnb/lottie/network/DefaultLottieNetworkFetcher;-><init>()V

    :goto_0
    invoke-direct {v0, p0, v2}, Lcom/airbnb/lottie/network/NetworkFetcher;-><init>(Lcom/airbnb/lottie/network/NetworkCache;Lcom/airbnb/lottie/network/LottieNetworkFetcher;)V

    sput-object v0, Lcom/airbnb/lottie/L;->networkFetcher:Lcom/airbnb/lottie/network/NetworkFetcher;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 103
    :cond_1
    :goto_1
    monitor-exit v1

    goto :goto_3

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_3
    return-object v0
.end method
