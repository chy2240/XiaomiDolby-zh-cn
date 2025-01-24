.class public abstract Landroidx/compose/runtime/internal/Thread_jvmKt;
.super Ljava/lang/Object;
.source "Thread.jvm.kt"


# direct methods
.method public static final currentThreadId()J
    .locals 2

    .line 19
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final currentThreadName()Ljava/lang/String;
    .locals 1

    .line 21
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
