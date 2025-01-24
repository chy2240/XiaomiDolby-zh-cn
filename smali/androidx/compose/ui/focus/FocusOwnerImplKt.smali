.class public abstract Landroidx/compose/ui/focus/FocusOwnerImplKt;
.super Ljava/lang/Object;
.source "FocusOwnerImpl.kt"


# direct methods
.method public static final is1dFocusSearch-3ESFkO8(I)Z
    .locals 2

    .line 427
    sget-object v0, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getNext-dhqQ-8s()I

    move-result v1

    invoke-static {p0, v1}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    .line 428
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getPrevious-dhqQ-8s()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result p0

    :goto_0
    return p0
.end method
