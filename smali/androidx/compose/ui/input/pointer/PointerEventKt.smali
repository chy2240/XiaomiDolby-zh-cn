.class public abstract Landroidx/compose/ui/input/pointer/PointerEventKt;
.super Ljava/lang/Object;
.source "PointerEvent.kt"


# direct methods
.method public static final changedToDown(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z
    .locals 1

    .line 906
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPreviousPressed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPressed()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final changedToDownIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z
    .locals 1

    .line 912
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPreviousPressed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPressed()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final changedToUp(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z
    .locals 1

    .line 918
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPreviousPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPressed()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final changedToUpIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z
    .locals 1

    .line 924
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPreviousPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPressed()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isOutOfBounds-O0kMr_c(Landroidx/compose/ui/input/pointer/PointerInputChange;J)Z
    .locals 7

    .line 1014
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    move-result-wide v0

    const/16 p0, 0x20

    shr-long v2, v0, p0

    long-to-int v2, v2

    .line 22
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    const-wide v3, 0xffffffffL

    and-long/2addr v0, v3

    long-to-int v0, v0

    .line 22
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    shr-long v5, p1, p0

    long-to-int p0, v5

    and-long/2addr p1, v3

    long-to-int p1, p1

    const/4 p2, 0x0

    cmpg-float v1, v2, p2

    if-ltz v1, :cond_1

    int-to-float p0, p0

    cmpl-float p0, v2, p0

    if-gtz p0, :cond_1

    cmpg-float p0, v0, p2

    if-ltz p0, :cond_1

    int-to-float p0, p1

    cmpl-float p0, v0, p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static final isOutOfBounds-jwHxaWs(Landroidx/compose/ui/input/pointer/PointerInputChange;JJ)Z
    .locals 8

    .line 1030
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getType-T8wyACA()I

    move-result v0

    sget-object v1, Landroidx/compose/ui/input/pointer/PointerType;->Companion:Landroidx/compose/ui/input/pointer/PointerType$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerType$Companion;->getTouch-T8wyACA()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/ui/input/pointer/PointerType;->equals-impl0(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1031
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/input/pointer/PointerEventKt;->isOutOfBounds-O0kMr_c(Landroidx/compose/ui/input/pointer/PointerInputChange;J)Z

    move-result p0

    return p0

    .line 1033
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    move-result-wide v0

    const/16 p0, 0x20

    shr-long v2, v0, p0

    long-to-int v2, v2

    .line 22
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    const-wide v3, 0xffffffffL

    and-long/2addr v0, v3

    long-to-int v0, v0

    .line 22
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    shr-long v5, p3, p0

    long-to-int v1, v5

    .line 22
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    neg-float v5, v5

    shr-long v6, p1, p0

    long-to-int p0, v6

    int-to-float p0, p0

    .line 22
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    add-float/2addr p0, v1

    and-long/2addr p3, v3

    long-to-int p3, p3

    .line 22
    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p4

    neg-float p4, p4

    and-long/2addr p1, v3

    long-to-int p1, p1

    int-to-float p1, p1

    .line 22
    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    add-float/2addr p1, p2

    cmpg-float p2, v2, v5

    if-ltz p2, :cond_2

    cmpl-float p0, v2, p0

    if-gtz p0, :cond_2

    cmpg-float p0, v0, p4

    if-ltz p0, :cond_2

    cmpl-float p0, v0, p1

    if-lez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static final positionChange(Landroidx/compose/ui/input/pointer/PointerInputChange;)J
    .locals 2

    const/4 v0, 0x0

    .line 943
    invoke-static {p0, v0}, Landroidx/compose/ui/input/pointer/PointerEventKt;->positionChangeInternal(Landroidx/compose/ui/input/pointer/PointerInputChange;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final positionChangeIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)J
    .locals 2

    const/4 v0, 0x1

    .line 949
    invoke-static {p0, v0}, Landroidx/compose/ui/input/pointer/PointerEventKt;->positionChangeInternal(Landroidx/compose/ui/input/pointer/PointerInputChange;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method private static final positionChangeInternal(Landroidx/compose/ui/input/pointer/PointerInputChange;Z)J
    .locals 4

    .line 952
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPreviousPosition-F1C5BW0()J

    move-result-wide v0

    .line 953
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    move-result-wide v2

    .line 955
    invoke-static {v2, v3, v0, v1}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v0

    if-nez p1, :cond_0

    .line 957
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method public static final positionChangedIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z
    .locals 5

    const/4 v0, 0x1

    .line 938
    invoke-static {p0, v0}, Landroidx/compose/ui/input/pointer/PointerEventKt;->positionChangeInternal(Landroidx/compose/ui/input/pointer/PointerInputChange;Z)J

    move-result-wide v1

    sget-object p0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method
