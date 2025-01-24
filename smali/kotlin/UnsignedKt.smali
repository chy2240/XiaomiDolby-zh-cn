.class public abstract Lkotlin/UnsignedKt;
.super Ljava/lang/Object;
.source "UnsignedUtils.kt"


# direct methods
.method public static final ulongToDouble(J)D
    .locals 4

    .line 0
    const/16 v0, 0xb

    ushr-long v0, p0, v0

    long-to-double v0, v0

    const/16 v2, 0x800

    int-to-double v2, v2

    mul-double/2addr v0, v2

    const-wide/16 v2, 0x7ff

    and-long/2addr p0, v2

    long-to-double p0, p0

    add-double/2addr v0, p0

    return-wide v0
.end method
