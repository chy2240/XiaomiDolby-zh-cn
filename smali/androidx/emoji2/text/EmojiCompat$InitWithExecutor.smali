.class final Landroidx/emoji2/text/EmojiCompat$InitWithExecutor;
.super Ljava/lang/Object;
.source "EmojiCompat.java"


# instance fields
.field mExecutor:Ljava/util/concurrent/Executor;

.field mInitCallback:Landroidx/emoji2/text/EmojiCompat$InitCallback;


# direct methods
.method public static synthetic $r8$lambda$Ew_PGWd-ONLKbbA0WQOmRcpFKS8(Landroidx/emoji2/text/EmojiCompat$InitWithExecutor;Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Landroidx/emoji2/text/EmojiCompat$InitWithExecutor;->lambda$dispatchFailed$1(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KxXOFEgTutHDuFYjkCNvYNS1kD4(Landroidx/emoji2/text/EmojiCompat$InitWithExecutor;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/emoji2/text/EmojiCompat$InitWithExecutor;->lambda$dispatchInitialized$0()V

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Executor;Landroidx/emoji2/text/EmojiCompat$InitCallback;)V
    .locals 0

    .line 1276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1277
    iput-object p2, p0, Landroidx/emoji2/text/EmojiCompat$InitWithExecutor;->mInitCallback:Landroidx/emoji2/text/EmojiCompat$InitCallback;

    .line 1278
    iput-object p1, p0, Landroidx/emoji2/text/EmojiCompat$InitWithExecutor;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private synthetic lambda$dispatchFailed$1(Ljava/lang/Throwable;)V
    .locals 0

    .line 1286
    iget-object p0, p0, Landroidx/emoji2/text/EmojiCompat$InitWithExecutor;->mInitCallback:Landroidx/emoji2/text/EmojiCompat$InitCallback;

    invoke-virtual {p0, p1}, Landroidx/emoji2/text/EmojiCompat$InitCallback;->onFailed(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$dispatchInitialized$0()V
    .locals 0

    .line 1282
    iget-object p0, p0, Landroidx/emoji2/text/EmojiCompat$InitWithExecutor;->mInitCallback:Landroidx/emoji2/text/EmojiCompat$InitCallback;

    invoke-virtual {p0}, Landroidx/emoji2/text/EmojiCompat$InitCallback;->onInitialized()V

    return-void
.end method


# virtual methods
.method dispatchFailed(Ljava/lang/Throwable;)V
    .locals 2

    .line 1286
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat$InitWithExecutor;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/emoji2/text/EmojiCompat$InitWithExecutor$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroidx/emoji2/text/EmojiCompat$InitWithExecutor$$ExternalSyntheticLambda1;-><init>(Landroidx/emoji2/text/EmojiCompat$InitWithExecutor;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method dispatchInitialized()V
    .locals 2

    .line 1282
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat$InitWithExecutor;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/emoji2/text/EmojiCompat$InitWithExecutor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroidx/emoji2/text/EmojiCompat$InitWithExecutor$$ExternalSyntheticLambda0;-><init>(Landroidx/emoji2/text/EmojiCompat$InitWithExecutor;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
