.class public abstract Landroidx/compose/ui/layout/ScaleFactorKt;
.super Ljava/lang/Object;
.source "ScaleFactor.kt"


# direct methods
.method public static final ScaleFactor(FF)J
    .locals 4

    .line 53
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v0, p0

    .line 54
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long p0, p0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    const-wide v2, 0xffffffffL

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    .line 29
    invoke-static {p0, p1}, Landroidx/compose/ui/layout/ScaleFactor;->constructor-impl(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final times-UQTWf7w(JJ)J
    .locals 6

    const/16 v0, 0x20

    shr-long v1, p0, v0

    long-to-int v1, v1

    .line 22
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    .line 122
    invoke-static {p2, p3}, Landroidx/compose/ui/layout/ScaleFactor;->getScaleX-impl(J)F

    move-result v2

    mul-float/2addr v1, v2

    const-wide v2, 0xffffffffL

    and-long/2addr p0, v2

    long-to-int p0, p0

    .line 22
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    .line 122
    invoke-static {p2, p3}, Landroidx/compose/ui/layout/ScaleFactor;->getScaleY-impl(J)F

    move-result p1

    mul-float/2addr p0, p1

    .line 53
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long p1, p1

    .line 54
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v4, p0

    shl-long p0, p1, v0

    and-long p2, v4, v2

    or-long/2addr p0, p2

    .line 33
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Size;->constructor-impl(J)J

    move-result-wide p0

    return-wide p0
.end method
