.class final Landroidx/compose/foundation/gestures/ScrollableNode$drag$2$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Scrollable.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $$this$scroll:Landroidx/compose/foundation/gestures/NestedScrollScope;

.field final synthetic $this_with:Landroidx/compose/foundation/gestures/ScrollingLogic;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/gestures/NestedScrollScope;Landroidx/compose/foundation/gestures/ScrollingLogic;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/foundation/gestures/ScrollableNode$drag$2$1$1;->$$this$scroll:Landroidx/compose/foundation/gestures/NestedScrollScope;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/ScrollableNode$drag$2$1$1;->$this_with:Landroidx/compose/foundation/gestures/ScrollingLogic;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 332
    check-cast p1, Landroidx/compose/foundation/gestures/DragEvent$DragDelta;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/gestures/ScrollableNode$drag$2$1$1;->invoke(Landroidx/compose/foundation/gestures/DragEvent$DragDelta;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/foundation/gestures/DragEvent$DragDelta;)V
    .locals 3

    .line 333
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode$drag$2$1$1;->$$this$scroll:Landroidx/compose/foundation/gestures/NestedScrollScope;

    iget-object p0, p0, Landroidx/compose/foundation/gestures/ScrollableNode$drag$2$1$1;->$this_with:Landroidx/compose/foundation/gestures/ScrollingLogic;

    invoke-virtual {p1}, Landroidx/compose/foundation/gestures/DragEvent$DragDelta;->getDelta-F1C5BW0()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Landroidx/compose/foundation/gestures/ScrollingLogic;->singleAxisOffset-MK-Hz9U(J)J

    move-result-wide p0

    sget-object v1, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;->Companion:Landroidx/compose/ui/input/nestedscroll/NestedScrollSource$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource$Companion;->getUserInput-WNlRxjI()I

    move-result v1

    invoke-interface {v0, p0, p1, v1}, Landroidx/compose/foundation/gestures/NestedScrollScope;->scrollByWithOverscroll-OzD1aCk(JI)J

    return-void
.end method
