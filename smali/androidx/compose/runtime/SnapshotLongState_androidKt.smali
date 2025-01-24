.class public abstract Landroidx/compose/runtime/SnapshotLongState_androidKt;
.super Ljava/lang/Object;
.source "SnapshotLongState.android.kt"


# direct methods
.method public static final createSnapshotMutableLongState(J)Landroidx/compose/runtime/MutableLongState;
    .locals 1

    .line 24
    new-instance v0, Landroidx/compose/runtime/ParcelableSnapshotMutableLongState;

    invoke-direct {v0, p0, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableLongState;-><init>(J)V

    return-object v0
.end method
