.class public Landroidx/profileinstaller/ProfileInstallerInitializer;
.super Ljava/lang/Object;
.source "ProfileInstallerInitializer.java"

# interfaces
.implements Landroidx/startup/Initializer;


# direct methods
.method public static synthetic $r8$lambda$NsMAloYpbbNbo7OHskmPQsgaOhM(Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/profileinstaller/ProfileInstallerInitializer;->lambda$writeInBackground$2(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VUbECJrladThvzfJ9dnTNG05Na4(Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/profileinstaller/ProfileInstallerInitializer;->lambda$installAfterDelay$1(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Wf706qC-QjmOyoCCyLdfVmHaey4(Landroidx/profileinstaller/ProfileInstallerInitializer;Landroid/content/Context;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Landroidx/profileinstaller/ProfileInstallerInitializer;->lambda$create$0(Landroid/content/Context;J)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$create$0(Landroid/content/Context;J)V
    .locals 0

    .line 84
    invoke-virtual {p0, p1}, Landroidx/profileinstaller/ProfileInstallerInitializer;->installAfterDelay(Landroid/content/Context;)V

    return-void
.end method

.method private static synthetic lambda$installAfterDelay$1(Landroid/content/Context;)V
    .locals 0

    .line 108
    invoke-static {p0}, Landroidx/profileinstaller/ProfileInstallerInitializer;->writeInBackground(Landroid/content/Context;)V

    return-void
.end method

.method private static synthetic lambda$writeInBackground$2(Landroid/content/Context;)V
    .locals 0

    .line 136
    invoke-static {p0}, Landroidx/profileinstaller/ProfileInstaller;->writeProfile(Landroid/content/Context;)V

    return-void
.end method

.method private static writeInBackground(Landroid/content/Context;)V
    .locals 8

    .line 129
    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 136
    new-instance v0, Landroidx/profileinstaller/ProfileInstallerInitializer$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Landroidx/profileinstaller/ProfileInstallerInitializer$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;)Landroidx/profileinstaller/ProfileInstallerInitializer$Result;
    .locals 2

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 83
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    new-instance v1, Landroidx/profileinstaller/ProfileInstallerInitializer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroidx/profileinstaller/ProfileInstallerInitializer$$ExternalSyntheticLambda0;-><init>(Landroidx/profileinstaller/ProfileInstallerInitializer;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 85
    new-instance p0, Landroidx/profileinstaller/ProfileInstallerInitializer$Result;

    invoke-direct {p0}, Landroidx/profileinstaller/ProfileInstallerInitializer$Result;-><init>()V

    return-object p0
.end method

.method public bridge synthetic create(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0

    .line 63
    invoke-virtual {p0, p1}, Landroidx/profileinstaller/ProfileInstallerInitializer;->create(Landroid/content/Context;)Landroidx/profileinstaller/ProfileInstallerInitializer$Result;

    move-result-object p0

    return-object p0
.end method

.method public dependencies()Ljava/util/List;
    .locals 0

    .line 117
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method installAfterDelay(Landroid/content/Context;)V
    .locals 4

    .line 101
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {p0}, Landroidx/profileinstaller/ProfileInstallerInitializer$Handler28Impl;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object p0

    .line 105
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x3e8

    const/4 v2, 0x1

    .line 106
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 108
    new-instance v1, Landroidx/profileinstaller/ProfileInstallerInitializer$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Landroidx/profileinstaller/ProfileInstallerInitializer$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;)V

    add-int/lit16 v0, v0, 0x1388

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
