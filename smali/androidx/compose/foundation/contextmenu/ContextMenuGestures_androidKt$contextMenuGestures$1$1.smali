.class final Landroidx/compose/foundation/contextmenu/ContextMenuGestures_androidKt$contextMenuGestures$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ContextMenuGestures.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $state:Landroidx/compose/foundation/contextmenu/ContextMenuState;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/contextmenu/ContextMenuState;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/foundation/contextmenu/ContextMenuGestures_androidKt$contextMenuGestures$1$1;->$state:Landroidx/compose/foundation/contextmenu/ContextMenuState;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 43
    check-cast p1, Landroidx/compose/ui/geometry/Offset;

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/foundation/contextmenu/ContextMenuGestures_androidKt$contextMenuGestures$1$1;->invoke-k-4lQ0M(J)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke-k-4lQ0M(J)V
    .locals 2

    .line 43
    iget-object p0, p0, Landroidx/compose/foundation/contextmenu/ContextMenuGestures_androidKt$contextMenuGestures$1$1;->$state:Landroidx/compose/foundation/contextmenu/ContextMenuState;

    new-instance v0, Landroidx/compose/foundation/contextmenu/ContextMenuState$Status$Open;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Landroidx/compose/foundation/contextmenu/ContextMenuState$Status$Open;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/contextmenu/ContextMenuState;->setStatus(Landroidx/compose/foundation/contextmenu/ContextMenuState$Status;)V

    return-void
.end method
