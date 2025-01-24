.class public Landroidx/arch/core/executor/ArchTaskExecutor;
.super Landroidx/arch/core/executor/TaskExecutor;
.source "ArchTaskExecutor.java"


# static fields
.field private static final sIOThreadExecutor:Ljava/util/concurrent/Executor;

.field private static volatile sInstance:Landroidx/arch/core/executor/ArchTaskExecutor;

.field private static final sMainThreadExecutor:Ljava/util/concurrent/Executor;


# instance fields
.field private final mDefaultTaskExecutor:Landroidx/arch/core/executor/TaskExecutor;

.field private mDelegate:Landroidx/arch/core/executor/TaskExecutor;


# direct methods
.method public static synthetic $r8$lambda$iDc81zb_vTqqbYgAu5pDFlgKzao(Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/arch/core/executor/ArchTaskExecutor;->lambda$static$0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jMV7X2Tn_t5-EUbO6ennHkrVKsQ(Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/arch/core/executor/ArchTaskExecutor;->lambda$static$1(Ljava/lang/Runnable;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Landroidx/arch/core/executor/ArchTaskExecutor$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/arch/core/executor/ArchTaskExecutor$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/arch/core/executor/ArchTaskExecutor;->sMainThreadExecutor:Ljava/util/concurrent/Executor;

    .line 45
    new-instance v0, Landroidx/arch/core/executor/ArchTaskExecutor$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroidx/arch/core/executor/ArchTaskExecutor$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Landroidx/arch/core/executor/ArchTaskExecutor;->sIOThreadExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Landroidx/arch/core/executor/TaskExecutor;-><init>()V

    .line 49
    new-instance v0, Landroidx/arch/core/executor/DefaultTaskExecutor;

    invoke-direct {v0}, Landroidx/arch/core/executor/DefaultTaskExecutor;-><init>()V

    iput-object v0, p0, Landroidx/arch/core/executor/ArchTaskExecutor;->mDefaultTaskExecutor:Landroidx/arch/core/executor/TaskExecutor;

    .line 50
    iput-object v0, p0, Landroidx/arch/core/executor/ArchTaskExecutor;->mDelegate:Landroidx/arch/core/executor/TaskExecutor;

    return-void
.end method

.method public static getInstance()Landroidx/arch/core/executor/ArchTaskExecutor;
    .locals 2

    .line 60
    sget-object v0, Landroidx/arch/core/executor/ArchTaskExecutor;->sInstance:Landroidx/arch/core/executor/ArchTaskExecutor;

    if-eqz v0, :cond_0

    .line 61
    sget-object v0, Landroidx/arch/core/executor/ArchTaskExecutor;->sInstance:Landroidx/arch/core/executor/ArchTaskExecutor;

    return-object v0

    .line 63
    :cond_0
    const-class v0, Landroidx/arch/core/executor/ArchTaskExecutor;

    monitor-enter v0

    .line 64
    :try_start_0
    sget-object v1, Landroidx/arch/core/executor/ArchTaskExecutor;->sInstance:Landroidx/arch/core/executor/ArchTaskExecutor;

    if-nez v1, :cond_1

    .line 65
    new-instance v1, Landroidx/arch/core/executor/ArchTaskExecutor;

    invoke-direct {v1}, Landroidx/arch/core/executor/ArchTaskExecutor;-><init>()V

    sput-object v1, Landroidx/arch/core/executor/ArchTaskExecutor;->sInstance:Landroidx/arch/core/executor/ArchTaskExecutor;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 67
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    sget-object v0, Landroidx/arch/core/executor/ArchTaskExecutor;->sInstance:Landroidx/arch/core/executor/ArchTaskExecutor;

    return-object v0

    .line 67
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static synthetic lambda$static$0(Ljava/lang/Runnable;)V
    .locals 1

    .line 42
    invoke-static {}, Landroidx/arch/core/executor/ArchTaskExecutor;->getInstance()Landroidx/arch/core/executor/ArchTaskExecutor;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/arch/core/executor/ArchTaskExecutor;->postToMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$static$1(Ljava/lang/Runnable;)V
    .locals 1

    .line 46
    invoke-static {}, Landroidx/arch/core/executor/ArchTaskExecutor;->getInstance()Landroidx/arch/core/executor/ArchTaskExecutor;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/arch/core/executor/ArchTaskExecutor;->executeOnDiskIO(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public executeOnDiskIO(Ljava/lang/Runnable;)V
    .locals 0

    .line 87
    iget-object p0, p0, Landroidx/arch/core/executor/ArchTaskExecutor;->mDelegate:Landroidx/arch/core/executor/TaskExecutor;

    invoke-virtual {p0, p1}, Landroidx/arch/core/executor/TaskExecutor;->executeOnDiskIO(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isMainThread()Z
    .locals 0

    .line 107
    iget-object p0, p0, Landroidx/arch/core/executor/ArchTaskExecutor;->mDelegate:Landroidx/arch/core/executor/TaskExecutor;

    invoke-virtual {p0}, Landroidx/arch/core/executor/TaskExecutor;->isMainThread()Z

    move-result p0

    return p0
.end method

.method public postToMainThread(Ljava/lang/Runnable;)V
    .locals 0

    .line 92
    iget-object p0, p0, Landroidx/arch/core/executor/ArchTaskExecutor;->mDelegate:Landroidx/arch/core/executor/TaskExecutor;

    invoke-virtual {p0, p1}, Landroidx/arch/core/executor/TaskExecutor;->postToMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
