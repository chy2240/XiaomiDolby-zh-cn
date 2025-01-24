.class public abstract Landroidx/compose/foundation/text/selection/TextSelectionDelegateKt;
.super Ljava/lang/Object;
.source "TextSelectionDelegate.kt"


# direct methods
.method public static final getHorizontalPosition(Landroidx/compose/ui/text/TextLayoutResult;IZZ)F
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    if-nez p2, :cond_2

    if-eqz p3, :cond_2

    :cond_1
    move p2, p1

    goto :goto_0

    :cond_2
    add-int/lit8 p2, p1, -0x1

    .line 60
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 61
    :goto_0
    invoke-virtual {p0, p2}, Landroidx/compose/ui/text/TextLayoutResult;->getBidiRunDirection(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;

    move-result-object p2

    .line 62
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/TextLayoutResult;->getParagraphDirection(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;

    move-result-object p3

    if-ne p2, p3, :cond_3

    const/4 v0, 0x1

    .line 64
    :cond_3
    invoke-virtual {p0, p1, v0}, Landroidx/compose/ui/text/TextLayoutResult;->getHorizontalPosition(IZ)F

    move-result p0

    return p0
.end method

.method public static final getSelectionHandleCoordinates(Landroidx/compose/ui/text/TextLayoutResult;IZZ)J
    .locals 6

    .line 39
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/TextLayoutResult;->getLineForOffset(I)I

    move-result v0

    .line 42
    invoke-virtual {p0}, Landroidx/compose/ui/text/TextLayoutResult;->getLineCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    sget-object p0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide p0

    return-wide p0

    .line 46
    :cond_0
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/text/selection/TextSelectionDelegateKt;->getHorizontalPosition(Landroidx/compose/ui/text/TextLayoutResult;IZZ)F

    move-result p1

    .line 47
    invoke-virtual {p0}, Landroidx/compose/ui/text/TextLayoutResult;->getSize-YbymL2g()J

    move-result-wide p2

    const/16 v1, 0x20

    shr-long/2addr p2, v1

    long-to-int p2, p2

    int-to-float p2, p2

    const/4 p3, 0x0

    invoke-static {p1, p3, p2}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p1

    .line 49
    invoke-virtual {p0, v0}, Landroidx/compose/ui/text/TextLayoutResult;->getLineBottom(I)F

    move-result p2

    invoke-virtual {p0}, Landroidx/compose/ui/text/TextLayoutResult;->getSize-YbymL2g()J

    move-result-wide v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    long-to-int p0, v2

    int-to-float p0, p0

    invoke-static {p2, p3, p0}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p0

    .line 53
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long p1, p1

    .line 54
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v2, p0

    shl-long p0, p1, v1

    and-long p2, v2, v4

    or-long/2addr p0, p2

    .line 30
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide p0

    return-wide p0
.end method
