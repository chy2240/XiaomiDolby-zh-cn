.class public abstract Landroidx/compose/ui/graphics/colorspace/TransferParametersKt;
.super Ljava/lang/Object;
.source "TransferParameters.kt"


# direct methods
.method public static final synthetic access$isSpecialG(D)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/colorspace/TransferParametersKt;->isSpecialG(D)Z

    move-result p0

    return p0
.end method

.method private static final isSpecialG(D)Z
    .locals 2

    .line 0
    const-wide/high16 v0, -0x4000000000000000L    # -2.0

    cmpg-double v0, p0, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, -0x3ff8000000000000L    # -3.0

    cmpg-double p0, p0, v0

    if-nez p0, :cond_1

    :goto_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method
