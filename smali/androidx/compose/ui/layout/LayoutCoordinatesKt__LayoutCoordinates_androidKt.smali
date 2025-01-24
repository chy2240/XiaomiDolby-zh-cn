.class abstract synthetic Landroidx/compose/ui/layout/LayoutCoordinatesKt__LayoutCoordinates_androidKt;
.super Ljava/lang/Object;
.source "LayoutCoordinates.android.kt"


# direct methods
.method private static final toCoordinatorOrNull$LayoutCoordinatesKt__LayoutCoordinates_androidKt(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/node/NodeCoordinator;
    .locals 2

    .line 54
    instance-of v0, p0, Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;->getCoordinator()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v0

    goto :goto_2

    :cond_2
    :goto_1
    instance-of v0, p0, Landroidx/compose/ui/node/NodeCoordinator;

    if-eqz v0, :cond_3

    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/node/NodeCoordinator;

    :cond_3
    :goto_2
    return-object v1
.end method

.method public static final transformToScreen-EL8BTi8(Landroidx/compose/ui/layout/LayoutCoordinates;[F)V
    .locals 6

    .line 34
    invoke-static {p0}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->findRootCoordinates(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 37
    invoke-static {v2, v1, v2}, Landroidx/compose/ui/graphics/Matrix;->constructor-impl$default([FILkotlin/jvm/internal/DefaultConstructorMarker;)[F

    move-result-object v1

    .line 38
    invoke-interface {v0, p0, v1}, Landroidx/compose/ui/layout/LayoutCoordinates;->transformFrom-EL8BTi8(Landroidx/compose/ui/layout/LayoutCoordinates;[F)V

    .line 39
    invoke-static {p1, v1}, Landroidx/compose/ui/graphics/Matrix;->timesAssign-58bKbWc([F[F)V

    .line 41
    invoke-static {p0}, Landroidx/compose/ui/layout/LayoutCoordinatesKt__LayoutCoordinates_androidKt;->toCoordinatorOrNull$LayoutCoordinatesKt__LayoutCoordinates_androidKt(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Landroidx/compose/ui/node/LayoutNodeKt;->requireOwner(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v2

    :goto_0
    instance-of v1, p0, Landroidx/compose/ui/input/pointer/MatrixPositionCalculator;

    if-eqz v1, :cond_1

    move-object v2, p0

    check-cast v2, Landroidx/compose/ui/input/pointer/MatrixPositionCalculator;

    :cond_1
    if-eqz v2, :cond_2

    .line 43
    invoke-interface {v2, p1}, Landroidx/compose/ui/input/pointer/MatrixPositionCalculator;->localToScreen-58bKbWc([F)V

    goto :goto_1

    .line 46
    :cond_2
    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->positionOnScreen(Landroidx/compose/ui/layout/LayoutCoordinates;)J

    move-result-wide v0

    const-wide v2, 0x7fffffff7fffffffL

    and-long/2addr v2, v0

    const-wide v4, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long p0, v2, v4

    if-eqz p0, :cond_3

    const/16 p0, 0x20

    shr-long v2, v0, p0

    long-to-int p0, v2

    .line 22
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    const/4 v1, 0x0

    .line 48
    invoke-static {p1, p0, v0, v1}, Landroidx/compose/ui/graphics/Matrix;->translate-impl([FFFF)V

    :cond_3
    :goto_1
    return-void
.end method
