.class public final Lco/aospa/dolby/xiaomi/DolbyController$Companion;
.super Ljava/lang/Object;
.source "DolbyController.kt"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/DolbyController$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance(Landroid/content/Context;)Lco/aospa/dolby/xiaomi/DolbyController;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 312
    invoke-static {}, Lco/aospa/dolby/xiaomi/DolbyController;->access$getInstance$cp()Lco/aospa/dolby/xiaomi/DolbyController;

    move-result-object v0

    if-nez v0, :cond_1

    monitor-enter p0

    .line 313
    :try_start_0
    invoke-static {}, Lco/aospa/dolby/xiaomi/DolbyController;->access$getInstance$cp()Lco/aospa/dolby/xiaomi/DolbyController;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lco/aospa/dolby/xiaomi/DolbyController;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lco/aospa/dolby/xiaomi/DolbyController;-><init>(Landroid/content/Context;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0}, Lco/aospa/dolby/xiaomi/DolbyController;->access$setInstance$cp(Lco/aospa/dolby/xiaomi/DolbyController;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 312
    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0

    throw p1

    :cond_1
    :goto_2
    return-object v0
.end method
