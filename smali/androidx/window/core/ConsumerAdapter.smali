.class public final Landroidx/window/core/ConsumerAdapter;
.super Ljava/lang/Object;
.source "ConsumerAdapter.kt"


# instance fields
.field private final loader:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 1

    const-string v0, "loader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Landroidx/window/core/ConsumerAdapter;->loader:Ljava/lang/ClassLoader;

    return-void
.end method

.method private final buildConsumer(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 2

    .line 52
    new-instance v0, Landroidx/window/core/ConsumerAdapter$ConsumerHandler;

    invoke-direct {v0, p1, p2}, Landroidx/window/core/ConsumerAdapter$ConsumerHandler;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function1;)V

    .line 53
    iget-object p1, p0, Landroidx/window/core/ConsumerAdapter;->loader:Ljava/lang/ClassLoader;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-direct {p0}, Landroidx/window/core/ConsumerAdapter;->unsafeConsumerClass()Ljava/lang/Class;

    move-result-object p0

    aput-object p0, p2, v1

    invoke-static {p1, p2, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "newProxyInstance(loader,\u2026onsumerClass()), handler)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final unsafeConsumerClass()Ljava/lang/Class;
    .locals 1

    .line 44
    iget-object p0, p0, Landroidx/window/core/ConsumerAdapter;->loader:Ljava/lang/ClassLoader;

    const-string v0, "java.util.function.Consumer"

    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v0, "loader.loadClass(\"java.util.function.Consumer\")"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public final addConsumer(Ljava/lang/Object;Lkotlin/reflect/KClass;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 4

    const-string v0, "obj"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clazz"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "methodName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consumer"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    .line 63
    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {p0}, Landroidx/window/core/ConsumerAdapter;->unsafeConsumerClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    .line 64
    invoke-direct {p0, p2, p4}, Landroidx/window/core/ConsumerAdapter;->buildConsumer(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p3, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final consumerClassOrNull$window_release()Ljava/lang/Class;
    .locals 0

    .line 37
    :try_start_0
    invoke-direct {p0}, Landroidx/window/core/ConsumerAdapter;->unsafeConsumerClass()Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
