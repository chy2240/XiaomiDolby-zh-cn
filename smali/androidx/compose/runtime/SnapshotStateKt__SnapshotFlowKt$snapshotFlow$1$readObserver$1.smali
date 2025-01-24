.class final Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt$snapshotFlow$1$readObserver$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SnapshotFlow.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $readSet:Landroidx/collection/MutableScatterSet;


# direct methods
.method constructor <init>(Landroidx/collection/MutableScatterSet;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt$snapshotFlow$1$readObserver$1;->$readSet:Landroidx/collection/MutableScatterSet;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 111
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt$snapshotFlow$1$readObserver$1;->invoke(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    .line 112
    instance-of v0, p1, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    if-eqz v0, :cond_0

    .line 113
    move-object v0, p1

    check-cast v0, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    const/4 v1, 0x4

    .line 60
    invoke-static {v1}, Landroidx/compose/runtime/snapshots/ReaderKind;->constructor-impl(I)I

    move-result v1

    .line 113
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/snapshots/StateObjectImpl;->recordReadIn-h_f27i8$runtime_release(I)V

    .line 115
    :cond_0
    iget-object p0, p0, Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt$snapshotFlow$1$readObserver$1;->$readSet:Landroidx/collection/MutableScatterSet;

    invoke-virtual {p0, p1}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    return-void
.end method
