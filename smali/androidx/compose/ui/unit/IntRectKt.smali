.class public abstract Landroidx/compose/ui/unit/IntRectKt;
.super Ljava/lang/Object;
.source "IntRect.kt"


# direct methods
.method public static final IntRect-VbeCjmY(JJ)Landroidx/compose/ui/unit/IntRect;
    .locals 6

    .line 206
    new-instance v0, Landroidx/compose/ui/unit/IntRect;

    .line 207
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v1

    .line 208
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v2

    .line 209
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v3

    const/16 v4, 0x20

    shr-long v4, p2, v4

    long-to-int v4, v4

    add-int/2addr v3, v4

    .line 210
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result p0

    const-wide v4, 0xffffffffL

    and-long p1, p2, v4

    long-to-int p1, p1

    add-int/2addr p0, p1

    .line 206
    invoke-direct {v0, v1, v2, v3, p0}, Landroidx/compose/ui/unit/IntRect;-><init>(IIII)V

    return-object v0
.end method

.method public static final roundToIntRect(Landroidx/compose/ui/geometry/Rect;)Landroidx/compose/ui/unit/IntRect;
    .locals 4

    .line 270
    new-instance v0, Landroidx/compose/ui/unit/IntRect;

    .line 271
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v1

    .line 26
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 272
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v2

    .line 26
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 273
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v3

    .line 26
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 274
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result p0

    .line 26
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 270
    invoke-direct {v0, v1, v2, v3, p0}, Landroidx/compose/ui/unit/IntRect;-><init>(IIII)V

    return-object v0
.end method
