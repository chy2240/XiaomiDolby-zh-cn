.class final Landroidx/compose/foundation/text/selection/ClicksCounter;
.super Ljava/lang/Object;
.source "SelectionGestures.kt"


# instance fields
.field private clicks:I

.field private prevClick:Landroidx/compose/ui/input/pointer/PointerInputChange;

.field private final viewConfiguration:Landroidx/compose/ui/platform/ViewConfiguration;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/platform/ViewConfiguration;)V
    .locals 0

    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/selection/ClicksCounter;->viewConfiguration:Landroidx/compose/ui/platform/ViewConfiguration;

    return-void
.end method


# virtual methods
.method public final getClicks()I
    .locals 0

    .line 398
    iget p0, p0, Landroidx/compose/foundation/text/selection/ClicksCounter;->clicks:I

    return p0
.end method

.method public final positionIsTolerable(Landroidx/compose/ui/input/pointer/PointerInputChange;Landroidx/compose/ui/input/pointer/PointerInputChange;)Z
    .locals 0

    .line 420
    iget-object p0, p0, Landroidx/compose/foundation/text/selection/ClicksCounter;->viewConfiguration:Landroidx/compose/ui/platform/ViewConfiguration;

    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/text/selection/SelectionGesturesKt;->access$distanceIsTolerable(Landroidx/compose/ui/platform/ViewConfiguration;Landroidx/compose/ui/input/pointer/PointerInputChange;Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    move-result p0

    return p0
.end method

.method public final timeIsTolerable(Landroidx/compose/ui/input/pointer/PointerInputChange;Landroidx/compose/ui/input/pointer/PointerInputChange;)Z
    .locals 2

    .line 417
    invoke-virtual {p2}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getUptimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getUptimeMillis()J

    move-result-wide p1

    sub-long/2addr v0, p1

    iget-object p0, p0, Landroidx/compose/foundation/text/selection/ClicksCounter;->viewConfiguration:Landroidx/compose/ui/platform/ViewConfiguration;

    invoke-interface {p0}, Landroidx/compose/ui/platform/ViewConfiguration;->getDoubleTapTimeoutMillis()J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final update(Landroidx/compose/ui/input/pointer/PointerEvent;)V
    .locals 3

    .line 402
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/ClicksCounter;->prevClick:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 403
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 406
    invoke-virtual {p0, v0, p1}, Landroidx/compose/foundation/text/selection/ClicksCounter;->timeIsTolerable(Landroidx/compose/ui/input/pointer/PointerInputChange;Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 407
    invoke-virtual {p0, v0, p1}, Landroidx/compose/foundation/text/selection/ClicksCounter;->positionIsTolerable(Landroidx/compose/ui/input/pointer/PointerInputChange;Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    iget v0, p0, Landroidx/compose/foundation/text/selection/ClicksCounter;->clicks:I

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/compose/foundation/text/selection/ClicksCounter;->clicks:I

    goto :goto_0

    .line 411
    :cond_0
    iput v1, p0, Landroidx/compose/foundation/text/selection/ClicksCounter;->clicks:I

    .line 413
    :goto_0
    iput-object p1, p0, Landroidx/compose/foundation/text/selection/ClicksCounter;->prevClick:Landroidx/compose/ui/input/pointer/PointerInputChange;

    return-void
.end method
