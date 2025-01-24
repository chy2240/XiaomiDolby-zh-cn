.class public final Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$2$reverseScope$1;
.super Ljava/lang/Object;
.source "Scrollable.kt"

# interfaces
.implements Landroidx/compose/foundation/gestures/ScrollScope;


# instance fields
.field final synthetic $nestedScrollScope:Landroidx/compose/foundation/gestures/NestedScrollScope;

.field final synthetic this$0:Landroidx/compose/foundation/gestures/ScrollingLogic;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/gestures/ScrollingLogic;Landroidx/compose/foundation/gestures/NestedScrollScope;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$2$reverseScope$1;->this$0:Landroidx/compose/foundation/gestures/ScrollingLogic;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$2$reverseScope$1;->$nestedScrollScope:Landroidx/compose/foundation/gestures/NestedScrollScope;

    .line 718
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public scrollBy(F)F
    .locals 3

    .line 725
    sget-boolean v0, Landroidx/compose/foundation/ComposeFoundationFlags;->NewNestedFlingPropagationEnabled:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    .line 727
    iget-object v1, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$2$reverseScope$1;->this$0:Landroidx/compose/foundation/gestures/ScrollingLogic;

    invoke-static {v1}, Landroidx/compose/foundation/gestures/ScrollingLogic;->access$getScrollableState$p(Landroidx/compose/foundation/gestures/ScrollingLogic;)Landroidx/compose/foundation/gestures/ScrollableState;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/foundation/gestures/ScrollableState;->getCanScrollForward()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    .line 728
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$2$reverseScope$1;->this$0:Landroidx/compose/foundation/gestures/ScrollingLogic;

    invoke-static {v0}, Landroidx/compose/foundation/gestures/ScrollingLogic;->access$getScrollableState$p(Landroidx/compose/foundation/gestures/ScrollingLogic;)Landroidx/compose/foundation/gestures/ScrollableState;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/foundation/gestures/ScrollableState;->getCanScrollBackward()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 730
    :cond_1
    new-instance p0, Ljava/util/concurrent/CancellationException;

    .line 731
    const-string p1, "The fling was cancelled"

    .line 730
    invoke-direct {p0, p1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 742
    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$2$reverseScope$1;->this$0:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 736
    iget-object p0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$2$reverseScope$1;->$nestedScrollScope:Landroidx/compose/foundation/gestures/NestedScrollScope;

    .line 738
    invoke-virtual {v0, p1}, Landroidx/compose/foundation/gestures/ScrollingLogic;->toOffset-tuRUvjQ(F)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/compose/foundation/gestures/ScrollingLogic;->reverseIfNeeded-MK-Hz9U(J)J

    move-result-wide v1

    .line 739
    sget-object p1, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;->Companion:Landroidx/compose/ui/input/nestedscroll/NestedScrollSource$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource$Companion;->getSideEffect-WNlRxjI()I

    move-result p1

    .line 737
    invoke-interface {p0, v1, v2, p1}, Landroidx/compose/foundation/gestures/NestedScrollScope;->scrollByWithOverscroll-OzD1aCk(JI)J

    move-result-wide p0

    .line 741
    invoke-virtual {v0, p0, p1}, Landroidx/compose/foundation/gestures/ScrollingLogic;->toFloat-k-4lQ0M(J)F

    move-result p0

    .line 742
    invoke-virtual {v0, p0}, Landroidx/compose/foundation/gestures/ScrollingLogic;->reverseIfNeeded(F)F

    move-result p0

    return p0
.end method
