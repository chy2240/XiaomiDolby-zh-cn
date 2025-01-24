.class public abstract Landroidx/compose/ui/layout/ContentScaleKt;
.super Ljava/lang/Object;
.source "ContentScale.kt"


# direct methods
.method public static final synthetic access$computeFillHeight-iLBOSCw(JJ)F
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/layout/ContentScaleKt;->computeFillHeight-iLBOSCw(JJ)F

    move-result p0

    return p0
.end method

.method public static final synthetic access$computeFillMaxDimension-iLBOSCw(JJ)F
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/layout/ContentScaleKt;->computeFillMaxDimension-iLBOSCw(JJ)F

    move-result p0

    return p0
.end method

.method public static final synthetic access$computeFillMinDimension-iLBOSCw(JJ)F
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/layout/ContentScaleKt;->computeFillMinDimension-iLBOSCw(JJ)F

    move-result p0

    return p0
.end method

.method public static final synthetic access$computeFillWidth-iLBOSCw(JJ)F
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/layout/ContentScaleKt;->computeFillWidth-iLBOSCw(JJ)F

    move-result p0

    return p0
.end method

.method private static final computeFillHeight-iLBOSCw(JJ)F
    .locals 2

    const-wide v0, 0xffffffffL

    and-long/2addr p2, v0

    long-to-int p2, p2

    .line 22
    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    and-long/2addr p0, v0

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    div-float/2addr p2, p0

    return p2
.end method

.method private static final computeFillMaxDimension-iLBOSCw(JJ)F
    .locals 1

    .line 141
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/layout/ContentScaleKt;->computeFillWidth-iLBOSCw(JJ)F

    move-result v0

    .line 142
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/layout/ContentScaleKt;->computeFillHeight-iLBOSCw(JJ)F

    move-result p0

    .line 143
    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method private static final computeFillMinDimension-iLBOSCw(JJ)F
    .locals 1

    .line 147
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/layout/ContentScaleKt;->computeFillWidth-iLBOSCw(JJ)F

    move-result v0

    .line 148
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/layout/ContentScaleKt;->computeFillHeight-iLBOSCw(JJ)F

    move-result p0

    .line 149
    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method private static final computeFillWidth-iLBOSCw(JJ)F
    .locals 1

    const/16 v0, 0x20

    shr-long/2addr p2, v0

    long-to-int p2, p2

    .line 22
    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    shr-long/2addr p0, v0

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    div-float/2addr p2, p0

    return p2
.end method
