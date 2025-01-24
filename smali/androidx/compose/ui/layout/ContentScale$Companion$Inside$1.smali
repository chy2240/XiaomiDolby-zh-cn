.class public final Landroidx/compose/ui/layout/ContentScale$Companion$Inside$1;
.super Ljava/lang/Object;
.source "ContentScale.kt"

# interfaces
.implements Landroidx/compose/ui/layout/ContentScale;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public computeScaleFactor-H7hwNQA(JJ)J
    .locals 4

    const/16 p0, 0x20

    shr-long v0, p1, p0

    long-to-int v0, v0

    .line 22
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    shr-long v1, p3, p0

    long-to-int p0, v1

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    cmpg-float p0, v0, p0

    if-gtz p0, :cond_0

    const-wide v0, 0xffffffffL

    and-long v2, p1, v0

    long-to-int p0, v2

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    and-long/2addr v0, p3

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    .line 107
    invoke-static {p0, p0}, Landroidx/compose/ui/layout/ScaleFactorKt;->ScaleFactor(FF)J

    move-result-wide p0

    goto :goto_0

    .line 109
    :cond_0
    invoke-static {p1, p2, p3, p4}, Landroidx/compose/ui/layout/ContentScaleKt;->access$computeFillMinDimension-iLBOSCw(JJ)F

    move-result p0

    invoke-static {p0, p0}, Landroidx/compose/ui/layout/ScaleFactorKt;->ScaleFactor(FF)J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method
