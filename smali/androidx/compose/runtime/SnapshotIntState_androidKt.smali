.class public abstract Landroidx/compose/runtime/SnapshotIntState_androidKt;
.super Ljava/lang/Object;
.source "SnapshotIntState.android.kt"


# direct methods
.method public static final createSnapshotMutableIntState(I)Landroidx/compose/runtime/MutableIntState;
    .locals 1

    .line 24
    new-instance v0, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-direct {v0, p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;-><init>(I)V

    return-object v0
.end method
