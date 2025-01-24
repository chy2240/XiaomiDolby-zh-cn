.class public abstract Landroidx/compose/runtime/snapshots/SnapshotIdSetKt;
.super Ljava/lang/Object;
.source "SnapshotIdSet.kt"


# direct methods
.method public static final binarySearch([II)I
    .locals 4

    .line 355
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-gt v1, v0, :cond_2

    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    .line 359
    aget v3, p0, v2

    if-le p1, v3, :cond_0

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_0
    if-ge p1, v3, :cond_1

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    neg-int p0, v1

    return p0
.end method
