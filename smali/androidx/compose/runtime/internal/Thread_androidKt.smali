.class public abstract Landroidx/compose/runtime/internal/Thread_androidKt;
.super Ljava/lang/Object;
.source "Thread.android.kt"


# static fields
.field private static final MainThreadId:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-wide/16 v0, -0x1

    .line 22
    :goto_0
    sput-wide v0, Landroidx/compose/runtime/internal/Thread_androidKt;->MainThreadId:J

    return-void
.end method

.method public static final getMainThreadId()J
    .locals 2

    .line 21
    sget-wide v0, Landroidx/compose/runtime/internal/Thread_androidKt;->MainThreadId:J

    return-wide v0
.end method
