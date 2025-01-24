.class public abstract Landroidx/compose/ui/text/input/EditingBufferKt;
.super Ljava/lang/Object;
.source "EditingBuffer.kt"


# direct methods
.method public static final updateRangeAfterDelete-pWDy79M(JJ)J
    .locals 3

    .line 300
    invoke-static {p0, p1}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v0

    .line 301
    invoke-static {p0, p1}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v1

    .line 306
    invoke-static {p2, p3, p0, p1}, Landroidx/compose/ui/text/TextRange;->intersects-5zc-tL8(JJ)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 307
    invoke-static {p2, p3, p0, p1}, Landroidx/compose/ui/text/TextRange;->contains-5zc-tL8(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 316
    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v0

    move v1, v0

    goto :goto_1

    .line 318
    :cond_0
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/text/TextRange;->contains-5zc-tL8(JJ)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 327
    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->getLength-impl(J)I

    move-result p0

    :goto_0
    sub-int/2addr v1, p0

    goto :goto_1

    .line 328
    :cond_1
    invoke-static {p2, p3, v0}, Landroidx/compose/ui/text/TextRange;->contains-impl(JI)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 337
    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v0

    .line 338
    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->getLength-impl(J)I

    move-result p0

    goto :goto_0

    .line 348
    :cond_2
    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v1

    goto :goto_1

    .line 351
    :cond_3
    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result p0

    if-le v1, p0, :cond_4

    .line 370
    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->getLength-impl(J)I

    move-result p0

    sub-int/2addr v0, p0

    .line 371
    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->getLength-impl(J)I

    move-result p0

    goto :goto_0

    .line 375
    :cond_4
    :goto_1
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide p0

    return-wide p0
.end method
