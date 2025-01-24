.class public abstract Landroidx/compose/foundation/text/modifiers/LayoutUtilsKt;
.super Ljava/lang/Object;
.source "LayoutUtils.kt"


# direct methods
.method public static final finalConstraints-tfFHcEY(JZIF)J
    .locals 1

    .line 30
    sget-object v0, Landroidx/compose/ui/unit/Constraints;->Companion:Landroidx/compose/ui/unit/Constraints$Companion;

    .line 32
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/text/modifiers/LayoutUtilsKt;->finalMaxWidth-tfFHcEY(JZIF)I

    move-result p2

    .line 34
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result p0

    const/4 p1, 0x0

    .line 30
    invoke-virtual {v0, p1, p2, p1, p0}, Landroidx/compose/ui/unit/Constraints$Companion;->fitPrioritizingWidth-Zbe2FdA(IIII)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final finalMaxLines-xdlQI24(ZII)I
    .locals 1

    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 84
    invoke-static {p1}, Landroidx/compose/foundation/text/modifiers/LayoutUtilsKt;->isEllipsis-MW5-ApA(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    invoke-static {p2, v0}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    :goto_0
    return v0
.end method

.method public static final finalMaxWidth-tfFHcEY(JZIF)I
    .locals 0

    if-nez p2, :cond_0

    .line 44
    invoke-static {p3}, Landroidx/compose/foundation/text/modifiers/LayoutUtilsKt;->isEllipsis-MW5-ApA(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 46
    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getHasBoundedWidth-impl(J)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 47
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result p2

    goto :goto_0

    :cond_1
    const p2, 0x7fffffff

    .line 61
    :goto_0
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result p3

    if-ne p3, p2, :cond_2

    goto :goto_1

    .line 64
    :cond_2
    invoke-static {p4}, Landroidx/compose/foundation/text/TextDelegateKt;->ceilToIntPx(F)I

    move-result p3

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result p0

    invoke-static {p3, p0, p2}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p2

    :goto_1
    return p2
.end method

.method public static final isEllipsis-MW5-ApA(I)Z
    .locals 2

    .line 90
    sget-object v0, Landroidx/compose/ui/text/style/TextOverflow;->Companion:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextOverflow$Companion;->getEllipsis-gIe3tQ8()I

    move-result v1

    invoke-static {p0, v1}, Landroidx/compose/ui/text/style/TextOverflow;->equals-impl0(II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 91
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextOverflow$Companion;->getStartEllipsis-gIe3tQ8()I

    move-result v1

    invoke-static {p0, v1}, Landroidx/compose/ui/text/style/TextOverflow;->equals-impl0(II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 92
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextOverflow$Companion;->getMiddleEllipsis-gIe3tQ8()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/ui/text/style/TextOverflow;->equals-impl0(II)Z

    move-result p0

    if-eqz p0, :cond_0

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
