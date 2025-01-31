.class final Landroidx/compose/foundation/gestures/ScrollableNestedScrollConnection;
.super Ljava/lang/Object;
.source "Scrollable.kt"

# interfaces
.implements Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;


# instance fields
.field private enabled:Z

.field private final scrollingLogic:Landroidx/compose/foundation/gestures/ScrollingLogic;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/gestures/ScrollingLogic;Z)V
    .locals 0

    .line 808
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 809
    iput-object p1, p0, Landroidx/compose/foundation/gestures/ScrollableNestedScrollConnection;->scrollingLogic:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 810
    iput-boolean p2, p0, Landroidx/compose/foundation/gestures/ScrollableNestedScrollConnection;->enabled:Z

    return-void
.end method


# virtual methods
.method public onPostFling-RZ2iAVY(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    instance-of p1, p5, Landroidx/compose/foundation/gestures/ScrollableNestedScrollConnection$onPostFling$1;

    if-eqz p1, :cond_0

    move-object p1, p5

    check-cast p1, Landroidx/compose/foundation/gestures/ScrollableNestedScrollConnection$onPostFling$1;

    iget p2, p1, Landroidx/compose/foundation/gestures/ScrollableNestedScrollConnection$onPostFling$1;->label:I

    const/high16 v0, -0x80000000

    and-int v1, p2, v0

    if-eqz v1, :cond_0

    sub-int/2addr p2, v0

    iput p2, p1, Landroidx/compose/foundation/gestures/ScrollableNestedScrollConnection$onPostFling$1;->label:I

    goto :goto_0

    :cond_0
    new-instance p1, Landroidx/compose/foundation/gestures/ScrollableNestedScrollConnection$onPostFling$1;

    invoke-direct {p1, p0, p5}, Landroidx/compose/foundation/gestures/ScrollableNestedScrollConnection$onPostFling$1;-><init>(Landroidx/compose/foundation/gestures/ScrollableNestedScrollConnection;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, p1, Landroidx/compose/foundation/gestures/ScrollableNestedScrollConnection$onPostFling$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p5

    .line 824
    iget v0, p1, Landroidx/compose/foundation/gestures/ScrollableNestedScrollConnection$onPostFling$1;->label:I

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-ne v0, v1, :cond_1

    iget-wide p3, p1, Landroidx/compose/foundation/gestures/ScrollableNestedScrollConnection$onPostFling$1;->J$0:J

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 825
    iget-boolean p2, p0, Landroidx/compose/foundation/gestures/ScrollableNestedScrollConnection;->enabled:Z

    if-eqz p2, :cond_4

    .line 826
    iget-object p0, p0, Landroidx/compose/foundation/gestures/ScrollableNestedScrollConnection;->scrollingLogic:Landroidx/compose/foundation/gestures/ScrollingLogic;

    iput-wide p3, p1, Landroidx/compose/foundation/gestures/ScrollableNestedScrollConnection$onPostFling$1;->J$0:J

    iput v1, p1, Landroidx/compose/foundation/gestures/ScrollableNestedScrollConnection$onPostFling$1;->label:I

    invoke-virtual {p0, p3, p4, p1}, Landroidx/compose/foundation/gestures/ScrollingLogic;->doFlingAnimation-QWom1Mo(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, p5, :cond_3

    return-object p5

    :cond_3
    :goto_1
    check-cast p2, Landroidx/compose/ui/unit/Velocity;

    invoke-virtual {p2}, Landroidx/compose/ui/unit/Velocity;->unbox-impl()J

    move-result-wide p0

    .line 827
    invoke-static {p3, p4, p0, p1}, Landroidx/compose/ui/unit/Velocity;->minus-AH228Gc(JJ)J

    move-result-wide p0

    goto :goto_2

    .line 829
    :cond_4
    sget-object p0, Landroidx/compose/ui/unit/Velocity;->Companion:Landroidx/compose/ui/unit/Velocity$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/unit/Velocity$Companion;->getZero-9UxMQ8M()J

    move-result-wide p0

    :goto_2
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Velocity;->box-impl(J)Landroidx/compose/ui/unit/Velocity;

    move-result-object p0

    return-object p0
.end method

.method public onPostScroll-DzOQY0M(JJI)J
    .locals 0

    .line 818
    iget-boolean p1, p0, Landroidx/compose/foundation/gestures/ScrollableNestedScrollConnection;->enabled:Z

    if-eqz p1, :cond_0

    .line 819
    iget-object p0, p0, Landroidx/compose/foundation/gestures/ScrollableNestedScrollConnection;->scrollingLogic:Landroidx/compose/foundation/gestures/ScrollingLogic;

    invoke-virtual {p0, p3, p4}, Landroidx/compose/foundation/gestures/ScrollingLogic;->performRawScroll-MK-Hz9U(J)J

    move-result-wide p0

    goto :goto_0

    .line 821
    :cond_0
    sget-object p0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public final setEnabled(Z)V
    .locals 0

    .line 810
    iput-boolean p1, p0, Landroidx/compose/foundation/gestures/ScrollableNestedScrollConnection;->enabled:Z

    return-void
.end method
