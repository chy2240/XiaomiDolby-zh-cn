.class public abstract Landroidx/compose/ui/unit/ConstraintsKt;
.super Ljava/lang/Object;
.source "Constraints.kt"


# direct methods
.method public static final Constraints(IIII)J
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lt p1, p0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-lt p3, p2, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    and-int/2addr v2, v3

    if-ltz p0, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    move v3, v0

    :goto_2
    and-int/2addr v2, v3

    if-ltz p2, :cond_3

    move v0, v1

    :cond_3
    and-int/2addr v0, v2

    if-nez v0, :cond_4

    .line 522
    const-string v0, "maxWidth must be >= than minWidth,\nmaxHeight must be >= than minHeight,\nminWidth and minHeight must be >= 0"

    .line 39
    invoke-static {v0}, Landroidx/compose/ui/unit/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 524
    :cond_4
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/unit/ConstraintsKt;->createConstraints(IIII)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic Constraints$default(IIIIILjava/lang/Object;)J
    .locals 2

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move p0, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    const v1, 0x7fffffff

    if-eqz p5, :cond_1

    move p1, v1

    :cond_1
    and-int/lit8 p5, p4, 0x4

    if-eqz p5, :cond_2

    move p2, v0

    :cond_2
    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_3

    move p3, v1

    .line 508
    :cond_3
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints(IIII)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final bitsNeedForSizeUnchecked(I)I
    .locals 1

    add-int/lit8 p0, p0, 0x1

    .line 477
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    const/16 v0, 0x13

    if-lt p0, v0, :cond_0

    const/16 p0, 0xd

    goto :goto_0

    :cond_0
    const/16 v0, 0x11

    if-lt p0, v0, :cond_1

    const/16 p0, 0xf

    goto :goto_0

    :cond_1
    const/16 v0, 0x10

    if-lt p0, v0, :cond_2

    move p0, v0

    goto :goto_0

    :cond_2
    const/16 v0, 0xe

    if-lt p0, v0, :cond_3

    const/16 p0, 0x12

    goto :goto_0

    :cond_3
    const/16 p0, 0xff

    :goto_0
    return p0
.end method

.method public static final constrain-4WqzIAM(JJ)J
    .locals 5

    const/16 v0, 0x20

    shr-long v1, p2, v0

    long-to-int v1, v1

    .line 553
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v2

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v3

    if-ge v1, v2, :cond_0

    move v1, v2

    :cond_0
    if-le v1, v3, :cond_1

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    const-wide v1, 0xffffffffL

    and-long/2addr p2, v1

    long-to-int p2, p2

    .line 554
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result p3

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result p0

    if-ge p2, p3, :cond_2

    move p2, p3

    :cond_2
    if-le p2, p0, :cond_3

    goto :goto_1

    :cond_3
    move p0, p2

    :goto_1
    int-to-long p1, v3

    shl-long/2addr p1, v0

    int-to-long v3, p0

    and-long v0, v3, v1

    or-long p0, p1, v0

    .line 30
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/IntSize;->constructor-impl(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final constrain-N9IONVI(JJ)J
    .locals 4

    .line 537
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v0

    .line 538
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v1

    .line 539
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v2

    .line 540
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result p0

    .line 542
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result p1

    if-ge p1, v0, :cond_0

    move p1, v0

    :cond_0
    if-le p1, v1, :cond_1

    move p1, v1

    .line 543
    :cond_1
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v3

    if-ge v3, v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_0
    if-le v0, v1, :cond_3

    goto :goto_1

    :cond_3
    move v1, v0

    .line 544
    :goto_1
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v0

    if-ge v0, v2, :cond_4

    move v0, v2

    :cond_4
    if-le v0, p0, :cond_5

    move v0, p0

    .line 545
    :cond_5
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result p2

    if-ge p2, v2, :cond_6

    goto :goto_2

    :cond_6
    move v2, p2

    :goto_2
    if-le v2, p0, :cond_7

    goto :goto_3

    :cond_7
    move p0, v2

    .line 541
    :goto_3
    invoke-static {p1, v1, v0, p0}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints(IIII)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final constrainHeight-K40F9xA(JI)I
    .locals 1

    .line 561
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v0

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result p0

    if-ge p2, v0, :cond_0

    move p2, v0

    :cond_0
    if-le p2, p0, :cond_1

    goto :goto_0

    :cond_1
    move p0, p2

    :goto_0
    return p0
.end method

.method public static final constrainWidth-K40F9xA(JI)I
    .locals 1

    .line 558
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v0

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result p0

    if-ge p2, v0, :cond_0

    move p2, v0

    :cond_0
    if-le p2, p0, :cond_1

    goto :goto_0

    :cond_1
    move p0, p2

    :goto_0
    return p0
.end method

.method public static final createConstraints(IIII)J
    .locals 6

    const v0, 0x7fffffff

    if-ne p3, v0, :cond_0

    move v1, p2

    goto :goto_0

    :cond_0
    move v1, p3

    .line 434
    :goto_0
    invoke-static {v1}, Landroidx/compose/ui/unit/ConstraintsKt;->bitsNeedForSizeUnchecked(I)I

    move-result v2

    if-ne p1, v0, :cond_1

    move v0, p0

    goto :goto_1

    :cond_1
    move v0, p1

    .line 437
    :goto_1
    invoke-static {v0}, Landroidx/compose/ui/unit/ConstraintsKt;->bitsNeedForSizeUnchecked(I)I

    move-result v3

    add-int/2addr v2, v3

    const/16 v4, 0x1f

    if-le v2, v4, :cond_2

    .line 440
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/ConstraintsKt;->throwInvalidConstraintException(II)V

    :cond_2
    add-int/lit8 p1, p1, 0x1

    shr-int/lit8 v0, p1, 0x1f

    not-int v0, v0

    and-int/2addr p1, v0

    add-int/lit8 p3, p3, 0x1

    shr-int/lit8 v0, p3, 0x1f

    not-int v0, v0

    and-int/2addr p3, v0

    add-int/lit8 v0, v3, -0xd

    shr-int/lit8 v1, v0, 0x1

    and-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v0

    add-int/lit8 v0, v3, 0x2

    add-int/lit8 v3, v3, 0x21

    int-to-long v1, v1

    int-to-long v4, p0

    const/4 p0, 0x2

    shl-long/2addr v4, p0

    or-long/2addr v1, v4

    int-to-long p0, p1

    const/16 v4, 0x21

    shl-long/2addr p0, v4

    or-long/2addr p0, v1

    int-to-long v1, p2

    shl-long v0, v1, v0

    or-long/2addr p0, v0

    int-to-long p2, p3

    shl-long/2addr p2, v3

    or-long/2addr p0, p2

    .line 466
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->constructor-impl(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final offset-NN6Ew-U(JII)J
    .locals 4

    .line 573
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v0

    add-int/2addr v0, p2

    const/4 v1, 0x0

    if-gez v0, :cond_0

    move v0, v1

    .line 574
    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v2

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    add-int/2addr v2, p2

    if-gez v2, :cond_2

    move v2, v1

    .line 575
    :cond_2
    :goto_0
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result p2

    add-int/2addr p2, p3

    if-gez p2, :cond_3

    move p2, v1

    .line 576
    :cond_3
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result p0

    if-ne p0, v3, :cond_5

    :cond_4
    move v1, p0

    goto :goto_1

    :cond_5
    add-int/2addr p0, p3

    if-gez p0, :cond_4

    .line 572
    :goto_1
    invoke-static {v0, v2, p2, v1}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints(IIII)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic offset-NN6Ew-U$default(JIIILjava/lang/Object;)J
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    move p3, v0

    .line 571
    :cond_1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U(JII)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final throwInvalidConstraintException(II)V
    .locals 3

    .line 416
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 417
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t represent a width of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " and height of "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " in Constraints"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 416
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final throwInvalidConstraintsSizeException(I)Ljava/lang/Void;
    .locals 3

    .line 423
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t represent a size of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " in Constraints"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
