.class public final Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;
.super Ljava/lang/Object;
.source "LookaheadLayoutCoordinates.kt"

# interfaces
.implements Landroidx/compose/ui/layout/LayoutCoordinates;


# instance fields
.field private final lookaheadDelegate:Landroidx/compose/ui/node/LookaheadDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/node/LookaheadDelegate;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;->lookaheadDelegate:Landroidx/compose/ui/node/LookaheadDelegate;

    return-void
.end method

.method private final getLookaheadOffset-F1C5BW0()J
    .locals 5

    .line 62
    iget-object v0, p0, Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;->lookaheadDelegate:Landroidx/compose/ui/node/LookaheadDelegate;

    invoke-static {v0}, Landroidx/compose/ui/layout/LookaheadLayoutCoordinatesKt;->getRootLookaheadDelegate(Landroidx/compose/ui/node/LookaheadDelegate;)Landroidx/compose/ui/node/LookaheadDelegate;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Landroidx/compose/ui/node/LookaheadDelegate;->getCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v1

    sget-object v2, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v3

    invoke-virtual {p0, v1, v3, v4}, Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;->localPositionOf-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    move-result-wide v3

    .line 64
    invoke-virtual {p0}, Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;->getCoordinator()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object p0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LookaheadDelegate;->getCoordinator()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Landroidx/compose/ui/node/NodeCoordinator;->localPositionOf-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    move-result-wide v0

    .line 63
    invoke-static {v3, v4, v0, v1}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final getCoordinator()Landroidx/compose/ui/node/NodeCoordinator;
    .locals 0

    .line 32
    iget-object p0, p0, Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;->lookaheadDelegate:Landroidx/compose/ui/node/LookaheadDelegate;

    invoke-virtual {p0}, Landroidx/compose/ui/node/LookaheadDelegate;->getCoordinator()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object p0

    return-object p0
.end method

.method public getParentLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;
    .locals 1

    .line 42
    invoke-virtual {p0}, Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;->isAttached()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "LayoutCoordinate operations are only valid when isAttached is true"

    .line 44
    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 43
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;->getCoordinator()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getOuterCoordinator$ui_release()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getWrappedBy$ui_release()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 44
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLookaheadDelegate()Landroidx/compose/ui/node/LookaheadDelegate;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/ui/node/LookaheadDelegate;->getCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getSize-YbymL2g()J
    .locals 6

    .line 35
    iget-object p0, p0, Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;->lookaheadDelegate:Landroidx/compose/ui/node/LookaheadDelegate;

    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result p0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 30
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSize;->constructor-impl(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public isAttached()Z
    .locals 0

    .line 55
    invoke-virtual {p0}, Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;->getCoordinator()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->isAttached()Z

    move-result p0

    return p0
.end method

.method public localBoundingBoxOf(Landroidx/compose/ui/layout/LayoutCoordinates;Z)Landroidx/compose/ui/geometry/Rect;
    .locals 0

    .line 175
    invoke-virtual {p0}, Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;->getCoordinator()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/node/NodeCoordinator;->localBoundingBoxOf(Landroidx/compose/ui/layout/LayoutCoordinates;Z)Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    return-object p0
.end method

.method public localPositionOf-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J
    .locals 1

    const/4 v0, 0x1

    .line 86
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;->localPositionOf-S_NoaFU(Landroidx/compose/ui/layout/LayoutCoordinates;JZ)J

    move-result-wide p0

    return-wide p0
.end method

.method public localPositionOf-S_NoaFU(Landroidx/compose/ui/layout/LayoutCoordinates;JZ)J
    .locals 9

    .line 97
    instance-of v0, p1, Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;

    const-wide v1, 0xffffffffL

    const/16 v3, 0x20

    if-eqz v0, :cond_1

    .line 98
    check-cast p1, Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;

    iget-object p1, p1, Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;->lookaheadDelegate:Landroidx/compose/ui/node/LookaheadDelegate;

    .line 99
    invoke-virtual {p1}, Landroidx/compose/ui/node/LookaheadDelegate;->getCoordinator()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->onCoordinatesUsed$ui_release()V

    .line 100
    invoke-virtual {p0}, Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;->getCoordinator()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/compose/ui/node/LookaheadDelegate;->getCoordinator()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/compose/ui/node/NodeCoordinator;->findCommonAncestor$ui_release(Landroidx/compose/ui/node/NodeCoordinator;)Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->getLookaheadDelegate()Landroidx/compose/ui/node/LookaheadDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    xor-int/lit8 v4, p4, 0x1

    .line 105
    invoke-virtual {p1, v0, v4}, Landroidx/compose/ui/node/LookaheadDelegate;->positionIn-iSbpLlY$ui_release(Landroidx/compose/ui/node/LookaheadDelegate;Z)J

    move-result-wide v4

    .line 108
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffsetKt;->round-k-4lQ0M(J)J

    move-result-wide p1

    .line 105
    invoke-static {v4, v5, p1, p2}, Landroidx/compose/ui/unit/IntOffset;->plus-qkQi6aY(JJ)J

    move-result-wide p1

    .line 111
    iget-object p0, p0, Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;->lookaheadDelegate:Landroidx/compose/ui/node/LookaheadDelegate;

    xor-int/lit8 p3, p4, 0x1

    invoke-virtual {p0, v0, p3}, Landroidx/compose/ui/node/LookaheadDelegate;->positionIn-iSbpLlY$ui_release(Landroidx/compose/ui/node/LookaheadDelegate;Z)J

    move-result-wide p3

    .line 116
    invoke-static {p1, p2, p3, p4}, Landroidx/compose/ui/unit/IntOffset;->minus-qkQi6aY(JJ)J

    move-result-wide p0

    .line 159
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result p2

    int-to-float p2, p2

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result p0

    int-to-float p0, p0

    .line 53
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long p1, p1

    .line 54
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long p3, p0

    shl-long p0, p1, v3

    and-long p2, p3, v1

    or-long/2addr p0, p2

    .line 30
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide p0

    goto :goto_0

    .line 120
    :cond_0
    invoke-static {p1}, Landroidx/compose/ui/layout/LookaheadLayoutCoordinatesKt;->getRootLookaheadDelegate(Landroidx/compose/ui/node/LookaheadDelegate;)Landroidx/compose/ui/node/LookaheadDelegate;

    move-result-object v0

    xor-int/lit8 v4, p4, 0x1

    .line 123
    invoke-virtual {p1, v0, v4}, Landroidx/compose/ui/node/LookaheadDelegate;->positionIn-iSbpLlY$ui_release(Landroidx/compose/ui/node/LookaheadDelegate;Z)J

    move-result-wide v4

    .line 126
    invoke-virtual {v0}, Landroidx/compose/ui/node/LookaheadDelegate;->getPosition-nOcc-ac()J

    move-result-wide v6

    .line 123
    invoke-static {v4, v5, v6, v7}, Landroidx/compose/ui/unit/IntOffset;->plus-qkQi6aY(JJ)J

    move-result-wide v4

    .line 126
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffsetKt;->round-k-4lQ0M(J)J

    move-result-wide p1

    .line 123
    invoke-static {v4, v5, p1, p2}, Landroidx/compose/ui/unit/IntOffset;->plus-qkQi6aY(JJ)J

    move-result-wide p1

    .line 128
    iget-object p3, p0, Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;->lookaheadDelegate:Landroidx/compose/ui/node/LookaheadDelegate;

    invoke-static {p3}, Landroidx/compose/ui/layout/LookaheadLayoutCoordinatesKt;->getRootLookaheadDelegate(Landroidx/compose/ui/node/LookaheadDelegate;)Landroidx/compose/ui/node/LookaheadDelegate;

    move-result-object p3

    .line 130
    iget-object p0, p0, Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;->lookaheadDelegate:Landroidx/compose/ui/node/LookaheadDelegate;

    xor-int/lit8 v4, p4, 0x1

    invoke-virtual {p0, p3, v4}, Landroidx/compose/ui/node/LookaheadDelegate;->positionIn-iSbpLlY$ui_release(Landroidx/compose/ui/node/LookaheadDelegate;Z)J

    move-result-wide v4

    .line 133
    invoke-virtual {p3}, Landroidx/compose/ui/node/LookaheadDelegate;->getPosition-nOcc-ac()J

    move-result-wide v6

    .line 130
    invoke-static {v4, v5, v6, v7}, Landroidx/compose/ui/unit/IntOffset;->plus-qkQi6aY(JJ)J

    move-result-wide v4

    .line 135
    invoke-static {p1, p2, v4, v5}, Landroidx/compose/ui/unit/IntOffset;->minus-qkQi6aY(JJ)J

    move-result-wide p0

    .line 159
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result p2

    int-to-float p2, p2

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result p0

    int-to-float p0, p0

    .line 53
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long p1, p1

    .line 54
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v4, p0

    shl-long p0, p1, v3

    and-long/2addr v1, v4

    or-long/2addr p0, v1

    .line 30
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide p0

    .line 137
    invoke-virtual {p3}, Landroidx/compose/ui/node/LookaheadDelegate;->getCoordinator()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/compose/ui/node/NodeCoordinator;->getWrappedBy$ui_release()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 138
    invoke-virtual {v0}, Landroidx/compose/ui/node/LookaheadDelegate;->getCoordinator()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/compose/ui/node/NodeCoordinator;->getWrappedBy$ui_release()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 137
    invoke-virtual {p2, p3, p0, p1, p4}, Landroidx/compose/ui/node/NodeCoordinator;->localPositionOf-S_NoaFU(Landroidx/compose/ui/layout/LayoutCoordinates;JZ)J

    move-result-wide p0

    :goto_0
    return-wide p0

    .line 148
    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;->lookaheadDelegate:Landroidx/compose/ui/node/LookaheadDelegate;

    invoke-static {v0}, Landroidx/compose/ui/layout/LookaheadLayoutCoordinatesKt;->getRootLookaheadDelegate(Landroidx/compose/ui/node/LookaheadDelegate;)Landroidx/compose/ui/node/LookaheadDelegate;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Landroidx/compose/ui/node/LookaheadDelegate;->getLookaheadLayoutCoordinates()Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;

    move-result-object v4

    .line 151
    invoke-virtual {p0, v4, p2, p3, p4}, Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;->localPositionOf-S_NoaFU(Landroidx/compose/ui/layout/LayoutCoordinates;JZ)J

    move-result-wide p2

    .line 155
    invoke-virtual {v0}, Landroidx/compose/ui/node/LookaheadDelegate;->getPosition-nOcc-ac()J

    move-result-wide v4

    .line 159
    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result p0

    int-to-float p0, p0

    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v4

    int-to-float v4, v4

    .line 53
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v5, p0

    .line 54
    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v7, p0

    shl-long v3, v5, v3

    and-long/2addr v1, v7

    or-long/2addr v1, v3

    .line 30
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v1

    .line 151
    invoke-static {p2, p3, v1, v2}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide p2

    .line 160
    invoke-virtual {v0}, Landroidx/compose/ui/node/LookaheadDelegate;->getCoordinator()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getParentCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-virtual {v0}, Landroidx/compose/ui/node/LookaheadDelegate;->getCoordinator()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object p0

    .line 165
    :cond_2
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v0

    .line 163
    invoke-interface {p0, p1, v0, v1, p4}, Landroidx/compose/ui/layout/LayoutCoordinates;->localPositionOf-S_NoaFU(Landroidx/compose/ui/layout/LayoutCoordinates;JZ)J

    move-result-wide p0

    .line 168
    invoke-static {p2, p3, p0, p1}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public localToRoot-MK-Hz9U(J)J
    .locals 3

    .line 80
    invoke-virtual {p0}, Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;->getCoordinator()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    invoke-direct {p0}, Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;->getLookaheadOffset-F1C5BW0()J

    move-result-wide v1

    invoke-static {p1, p2, v1, v2}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Landroidx/compose/ui/node/NodeCoordinator;->localToRoot-MK-Hz9U(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public localToScreen-MK-Hz9U(J)J
    .locals 3

    .line 71
    invoke-virtual {p0}, Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;->getCoordinator()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    invoke-direct {p0}, Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;->getLookaheadOffset-F1C5BW0()J

    move-result-wide v1

    invoke-static {p1, p2, v1, v2}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Landroidx/compose/ui/node/NodeCoordinator;->localToScreen-MK-Hz9U(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public localToWindow-MK-Hz9U(J)J
    .locals 3

    .line 77
    invoke-virtual {p0}, Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;->getCoordinator()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    invoke-direct {p0}, Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;->getLookaheadOffset-F1C5BW0()J

    move-result-wide v1

    invoke-static {p1, p2, v1, v2}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Landroidx/compose/ui/node/NodeCoordinator;->localToWindow-MK-Hz9U(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public screenToLocal-MK-Hz9U(J)J
    .locals 2

    .line 68
    invoke-virtual {p0}, Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;->getCoordinator()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/node/NodeCoordinator;->screenToLocal-MK-Hz9U(J)J

    move-result-wide p1

    invoke-direct {p0}, Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;->getLookaheadOffset-F1C5BW0()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public transformFrom-EL8BTi8(Landroidx/compose/ui/layout/LayoutCoordinates;[F)V
    .locals 0

    .line 178
    invoke-virtual {p0}, Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;->getCoordinator()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/node/NodeCoordinator;->transformFrom-EL8BTi8(Landroidx/compose/ui/layout/LayoutCoordinates;[F)V

    return-void
.end method

.method public windowToLocal-MK-Hz9U(J)J
    .locals 2

    .line 74
    invoke-virtual {p0}, Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;->getCoordinator()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/node/NodeCoordinator;->windowToLocal-MK-Hz9U(J)J

    move-result-wide p1

    invoke-direct {p0}, Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;->getLookaheadOffset-F1C5BW0()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide p0

    return-wide p0
.end method
