.class public abstract Landroidx/compose/runtime/internal/Utils_androidKt;
.super Ljava/lang/Object;
.source "Utils.android.kt"


# direct methods
.method public static final logError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 24
    const-string v0, "ComposeInternal"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
