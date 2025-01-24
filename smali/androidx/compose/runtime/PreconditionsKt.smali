.class public abstract Landroidx/compose/runtime/PreconditionsKt;
.super Ljava/lang/Object;
.source "Preconditions.kt"


# direct methods
.method public static final throwIllegalArgumentException(Ljava/lang/String;)V
    .locals 1

    .line 26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final throwIllegalStateException(Ljava/lang/String;)V
    .locals 1

    .line 41
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
