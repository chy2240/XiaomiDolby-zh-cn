.class public final Landroidx/compose/ui/node/UiApplier;
.super Landroidx/compose/runtime/AbstractApplier;
.source "UiApplier.android.kt"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Landroidx/compose/runtime/AbstractApplier;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public insertBottomUp(ILandroidx/compose/ui/node/LayoutNode;)V
    .locals 0

    .line 29
    invoke-virtual {p0}, Landroidx/compose/runtime/AbstractApplier;->getCurrent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/node/LayoutNode;->insertAt$ui_release(ILandroidx/compose/ui/node/LayoutNode;)V

    return-void
.end method

.method public bridge synthetic insertBottomUp(ILjava/lang/Object;)V
    .locals 0

    .line 21
    check-cast p2, Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/node/UiApplier;->insertBottomUp(ILandroidx/compose/ui/node/LayoutNode;)V

    return-void
.end method

.method public insertTopDown(ILandroidx/compose/ui/node/LayoutNode;)V
    .locals 0

    .line 0
    return-void
.end method

.method public bridge synthetic insertTopDown(ILjava/lang/Object;)V
    .locals 0

    .line 21
    check-cast p2, Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/node/UiApplier;->insertTopDown(ILandroidx/compose/ui/node/LayoutNode;)V

    return-void
.end method

.method public move(III)V
    .locals 0

    .line 37
    invoke-virtual {p0}, Landroidx/compose/runtime/AbstractApplier;->getCurrent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/ui/node/LayoutNode;->move$ui_release(III)V

    return-void
.end method

.method protected onClear()V
    .locals 0

    .line 41
    invoke-virtual {p0}, Landroidx/compose/runtime/AbstractApplier;->getRoot()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->removeAll$ui_release()V

    return-void
.end method

.method public onEndChanges()V
    .locals 0

    .line 45
    invoke-super {p0}, Landroidx/compose/runtime/Applier;->onEndChanges()V

    .line 46
    invoke-virtual {p0}, Landroidx/compose/runtime/AbstractApplier;->getRoot()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getOwner$ui_release()Landroidx/compose/ui/node/Owner;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroidx/compose/ui/node/Owner;->onEndApplyChanges()V

    :cond_0
    return-void
.end method

.method public remove(II)V
    .locals 0

    .line 33
    invoke-virtual {p0}, Landroidx/compose/runtime/AbstractApplier;->getCurrent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/node/LayoutNode;->removeAt$ui_release(II)V

    return-void
.end method

.method public reuse()V
    .locals 0

    .line 50
    invoke-virtual {p0}, Landroidx/compose/runtime/AbstractApplier;->getCurrent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->onReuse()V

    return-void
.end method
