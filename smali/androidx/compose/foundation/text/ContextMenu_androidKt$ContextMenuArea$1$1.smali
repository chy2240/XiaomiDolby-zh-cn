.class final Landroidx/compose/foundation/text/ContextMenu_androidKt$ContextMenuArea$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ContextMenu.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $state:Landroidx/compose/foundation/contextmenu/ContextMenuState;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/contextmenu/ContextMenuState;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/foundation/text/ContextMenu_androidKt$ContextMenuArea$1$1;->$state:Landroidx/compose/foundation/contextmenu/ContextMenuState;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 40
    invoke-virtual {p0}, Landroidx/compose/foundation/text/ContextMenu_androidKt$ContextMenuArea$1$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 0

    .line 40
    iget-object p0, p0, Landroidx/compose/foundation/text/ContextMenu_androidKt$ContextMenuArea$1$1;->$state:Landroidx/compose/foundation/contextmenu/ContextMenuState;

    invoke-static {p0}, Landroidx/compose/foundation/contextmenu/ContextMenuState_androidKt;->close(Landroidx/compose/foundation/contextmenu/ContextMenuState;)V

    return-void
.end method
