.class final Landroidx/compose/runtime/SnapshotMutableFloatStateImpl$FloatStateStateRecord;
.super Landroidx/compose/runtime/snapshots/StateRecord;
.source "SnapshotFloatState.kt"


# instance fields
.field private value:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    .line 176
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/StateRecord;-><init>()V

    iput p1, p0, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl$FloatStateStateRecord;->value:F

    return-void
.end method


# virtual methods
.method public assign(Landroidx/compose/runtime/snapshots/StateRecord;)V
    .locals 1

    .line 178
    const-string v0, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutableFloatStateImpl.FloatStateStateRecord"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl$FloatStateStateRecord;

    iget p1, p1, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl$FloatStateStateRecord;->value:F

    iput p1, p0, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl$FloatStateStateRecord;->value:F

    return-void
.end method

.method public create()Landroidx/compose/runtime/snapshots/StateRecord;
    .locals 1

    .line 181
    new-instance v0, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl$FloatStateStateRecord;

    iget p0, p0, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl$FloatStateStateRecord;->value:F

    invoke-direct {v0, p0}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl$FloatStateStateRecord;-><init>(F)V

    return-object v0
.end method

.method public final getValue()F
    .locals 0

    .line 176
    iget p0, p0, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl$FloatStateStateRecord;->value:F

    return p0
.end method

.method public final setValue(F)V
    .locals 0

    .line 176
    iput p1, p0, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl$FloatStateStateRecord;->value:F

    return-void
.end method
