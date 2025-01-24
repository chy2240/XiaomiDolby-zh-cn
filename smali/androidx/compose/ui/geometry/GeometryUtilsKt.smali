.class public abstract Landroidx/compose/ui/geometry/GeometryUtilsKt;
.super Ljava/lang/Object;
.source "GeometryUtils.kt"


# direct methods
.method public static final toStringAsFixed(FI)Ljava/lang/String;
    .locals 4

    .line 24
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "NaN"

    return-object p0

    .line 25
    :cond_0
    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x0

    cmpg-float p0, p0, p1

    if-gez p0, :cond_1

    const-string p0, "-Infinity"

    goto :goto_0

    :cond_1
    const-string p0, "Infinity"

    :goto_0
    return-object p0

    :cond_2
    const/4 v0, 0x0

    .line 27
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/high16 v0, 0x41200000    # 10.0f

    float-to-double v0, v0

    int-to-double v2, p1

    .line 28
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr p0, v0

    float-to-int v1, p0

    int-to-float v2, v1

    sub-float/2addr p0, v2

    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float p0, p0, v2

    if-ltz p0, :cond_3

    add-int/lit8 v1, v1, 0x1

    :cond_3
    int-to-float p0, v1

    div-float/2addr p0, v0

    if-lez p1, :cond_4

    .line 43
    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_4
    float-to-int p0, p0

    .line 47
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method
