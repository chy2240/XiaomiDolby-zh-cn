.class public abstract Landroidx/compose/foundation/internal/InlineClassHelperKt;
.super Ljava/lang/Object;
.source "InlineClassHelper.kt"


# direct methods
.method public static final throwIllegalArgumentException(Ljava/lang/String;)V
    .locals 1

    .line 34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final throwIllegalArgumentExceptionForNullCheck(Ljava/lang/String;)Ljava/lang/Void;
    .locals 1

    .line 38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final throwIllegalStateException(Ljava/lang/String;)V
    .locals 1

    .line 26
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final throwIndexOutOfBoundsException(Ljava/lang/String;)V
    .locals 1

    .line 42
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
