.class public abstract Landroidx/compose/runtime/SnapshotFloatState_androidKt;
.super Ljava/lang/Object;
.source "SnapshotFloatState.android.kt"


# direct methods
.method public static final createSnapshotMutableFloatState(F)Landroidx/compose/runtime/MutableFloatState;
    .locals 1

    .line 24
    new-instance v0, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-direct {v0, p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;-><init>(F)V

    return-object v0
.end method
