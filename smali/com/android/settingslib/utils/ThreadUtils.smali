.class public abstract Lcom/android/settingslib/utils/ThreadUtils;
.super Ljava/lang/Object;
.source "ThreadUtils.java"


# static fields
.field private static volatile sMainThreadHandler:Landroid/os/Handler;


# direct methods
.method public static getUiThreadHandler()Landroid/os/Handler;
    .locals 2

    .line 51
    sget-object v0, Lcom/android/settingslib/utils/ThreadUtils;->sMainThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/settingslib/utils/ThreadUtils;->sMainThreadHandler:Landroid/os/Handler;

    .line 55
    :cond_0
    sget-object v0, Lcom/android/settingslib/utils/ThreadUtils;->sMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static postOnMainThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 99
    invoke-static {}, Lcom/android/settingslib/utils/ThreadUtils;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
