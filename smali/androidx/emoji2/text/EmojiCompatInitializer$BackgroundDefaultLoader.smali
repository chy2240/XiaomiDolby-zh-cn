.class Landroidx/emoji2/text/EmojiCompatInitializer$BackgroundDefaultLoader;
.super Ljava/lang/Object;
.source "EmojiCompatInitializer.java"

# interfaces
.implements Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoader;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$55Ivg7v_3m1eazHc6HmoU-ZdULY(Landroidx/emoji2/text/EmojiCompatInitializer$BackgroundDefaultLoader;Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoaderCallback;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Landroidx/emoji2/text/EmojiCompatInitializer$BackgroundDefaultLoader;->lambda$load$0(Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoaderCallback;Ljava/util/concurrent/ThreadPoolExecutor;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/emoji2/text/EmojiCompatInitializer$BackgroundDefaultLoader;->mContext:Landroid/content/Context;

    return-void
.end method

.method private synthetic lambda$load$0(Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoaderCallback;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 0

    .line 158
    invoke-virtual {p0, p1, p2}, Landroidx/emoji2/text/EmojiCompatInitializer$BackgroundDefaultLoader;->doLoad(Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoaderCallback;Ljava/util/concurrent/ThreadPoolExecutor;)V

    return-void
.end method


# virtual methods
.method doLoad(Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoaderCallback;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 2

    .line 165
    :try_start_0
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompatInitializer$BackgroundDefaultLoader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/emoji2/text/DefaultEmojiCompatConfig;->create(Landroid/content/Context;)Landroidx/emoji2/text/FontRequestEmojiCompatConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {v0, p2}, Landroidx/emoji2/text/FontRequestEmojiCompatConfig;->setLoadingExecutor(Ljava/util/concurrent/Executor;)Landroidx/emoji2/text/FontRequestEmojiCompatConfig;

    .line 171
    invoke-virtual {v0}, Landroidx/emoji2/text/EmojiCompat$Config;->getMetadataRepoLoader()Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoader;

    move-result-object v0

    new-instance v1, Landroidx/emoji2/text/EmojiCompatInitializer$BackgroundDefaultLoader$1;

    invoke-direct {v1, p0, p1, p2}, Landroidx/emoji2/text/EmojiCompatInitializer$BackgroundDefaultLoader$1;-><init>(Landroidx/emoji2/text/EmojiCompatInitializer$BackgroundDefaultLoader;Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoaderCallback;Ljava/util/concurrent/ThreadPoolExecutor;)V

    invoke-interface {v0, v1}, Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoader;->load(Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoaderCallback;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 167
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "EmojiCompat font provider not available on this device."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    :goto_0
    invoke-virtual {p1, p0}, Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoaderCallback;->onFailed(Ljava/lang/Throwable;)V

    .line 194
    invoke-virtual {p2}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    :goto_1
    return-void
.end method

.method public load(Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoaderCallback;)V
    .locals 2

    .line 156
    const-string v0, "EmojiCompatInitializer"

    invoke-static {v0}, Landroidx/emoji2/text/ConcurrencyHelpers;->createBackgroundPriorityExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    .line 158
    new-instance v1, Landroidx/emoji2/text/EmojiCompatInitializer$BackgroundDefaultLoader$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, v0}, Landroidx/emoji2/text/EmojiCompatInitializer$BackgroundDefaultLoader$$ExternalSyntheticLambda0;-><init>(Landroidx/emoji2/text/EmojiCompatInitializer$BackgroundDefaultLoader;Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoaderCallback;Ljava/util/concurrent/ThreadPoolExecutor;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
