.class public final Landroidx/window/embedding/EmbeddingCompat$Companion;
.super Ljava/lang/Object;
.source "EmbeddingCompat.kt"


# direct methods
.method public static synthetic $r8$lambda$rtbgcbRjhO25XLLK2gKNKt8kS9I(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroidx/window/embedding/EmbeddingCompat$Companion;->emptyActivityEmbeddingProxy$lambda$2(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>()V
    .locals 0

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/window/embedding/EmbeddingCompat$Companion;-><init>()V

    return-void
.end method

.method private final emptyActivityEmbeddingProxy()Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;
    .locals 3

    .line 365
    const-class p0, Landroidx/window/embedding/EmbeddingCompat;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const/4 v0, 0x1

    .line 366
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;

    aput-object v2, v0, v1

    .line 367
    new-instance v1, Landroidx/window/embedding/EmbeddingCompat$Companion$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroidx/window/embedding/EmbeddingCompat$Companion$$ExternalSyntheticLambda0;-><init>()V

    .line 364
    invoke-static {p0, v0, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type androidx.window.extensions.embedding.ActivityEmbeddingComponent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;

    return-object p0
.end method

.method private static final emptyActivityEmbeddingProxy$lambda$2(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Lkotlin/Unit;
    .locals 0

    .line 368
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final embeddingComponent()Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;
    .locals 5

    .line 349
    invoke-virtual {p0}, Landroidx/window/embedding/EmbeddingCompat$Companion;->isEmbeddingAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 350
    const-class v0, Landroidx/window/embedding/EmbeddingCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 351
    new-instance v1, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;

    .line 353
    new-instance v2, Landroidx/window/core/ConsumerAdapter;

    invoke-direct {v2, v0}, Landroidx/window/core/ConsumerAdapter;-><init>(Ljava/lang/ClassLoader;)V

    .line 354
    invoke-static {}, Landroidx/window/extensions/WindowExtensionsProvider;->getWindowExtensions()Landroidx/window/extensions/WindowExtensions;

    move-result-object v3

    const-string v4, "getWindowExtensions()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 351
    invoke-direct {v1, v0, v2, v3}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;-><init>(Ljava/lang/ClassLoader;Landroidx/window/core/ConsumerAdapter;Landroidx/window/extensions/WindowExtensions;)V

    .line 356
    invoke-virtual {v1}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->getActivityEmbeddingComponent()Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;

    move-result-object v0

    if-nez v0, :cond_2

    .line 357
    :cond_0
    invoke-direct {p0}, Landroidx/window/embedding/EmbeddingCompat$Companion;->emptyActivityEmbeddingProxy()Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;

    move-result-object v0

    goto :goto_0

    .line 359
    :cond_1
    invoke-direct {p0}, Landroidx/window/embedding/EmbeddingCompat$Companion;->emptyActivityEmbeddingProxy()Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public final isEmbeddingAvailable()Z
    .locals 6

    .line 326
    const-string p0, "EmbeddingCompat"

    const/4 v0, 0x0

    .line 327
    :try_start_0
    const-class v1, Landroidx/window/embedding/EmbeddingCompat;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 328
    new-instance v2, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;

    .line 330
    new-instance v3, Landroidx/window/core/ConsumerAdapter;

    invoke-direct {v3, v1}, Landroidx/window/core/ConsumerAdapter;-><init>(Ljava/lang/ClassLoader;)V

    .line 331
    invoke-static {}, Landroidx/window/extensions/WindowExtensionsProvider;->getWindowExtensions()Landroidx/window/extensions/WindowExtensions;

    move-result-object v4

    const-string v5, "getWindowExtensions()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 328
    invoke-direct {v2, v1, v3, v4}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;-><init>(Ljava/lang/ClassLoader;Landroidx/window/core/ConsumerAdapter;Landroidx/window/extensions/WindowExtensions;)V

    .line 333
    invoke-virtual {v2}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->getActivityEmbeddingComponent()Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 342
    :catch_0
    const-string v1, "Stub Extension"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 337
    :catch_1
    const-string v1, "Embedding extension version not found"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0
.end method
