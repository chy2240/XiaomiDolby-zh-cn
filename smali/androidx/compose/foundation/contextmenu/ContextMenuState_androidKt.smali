.class public abstract Landroidx/compose/foundation/contextmenu/ContextMenuState_androidKt;
.super Ljava/lang/Object;
.source "ContextMenuState.android.kt"


# direct methods
.method public static final close(Landroidx/compose/foundation/contextmenu/ContextMenuState;)V
    .locals 1

    .line 76
    sget-object v0, Landroidx/compose/foundation/contextmenu/ContextMenuState$Status$Closed;->INSTANCE:Landroidx/compose/foundation/contextmenu/ContextMenuState$Status$Closed;

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/contextmenu/ContextMenuState;->setStatus(Landroidx/compose/foundation/contextmenu/ContextMenuState$Status;)V

    return-void
.end method
