.class public abstract Landroidx/compose/ui/layout/ScaleFactor;
.super Ljava/lang/Object;
.source "ScaleFactor.kt"


# static fields
.field public static final Companion:Landroidx/compose/ui/layout/ScaleFactor$Companion;

.field private static final Unspecified:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/layout/ScaleFactor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/layout/ScaleFactor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/layout/ScaleFactor;->Companion:Landroidx/compose/ui/layout/ScaleFactor$Companion;

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 93
    invoke-static {v0, v0}, Landroidx/compose/ui/layout/ScaleFactorKt;->ScaleFactor(FF)J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/ui/layout/ScaleFactor;->Unspecified:J

    return-void
.end method

.method public static constructor-impl(J)J
    .locals 0

    .line 0
    return-wide p0
.end method

.method public static final getScaleX-impl(J)F
    .locals 2

    .line 42
    sget-wide v0, Landroidx/compose/ui/layout/ScaleFactor;->Unspecified:J

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 43
    const-string v0, "ScaleFactor is unspecified"

    .line 44
    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_1
    const/16 v0, 0x20

    shr-long/2addr p0, v0

    long-to-int p0, p0

    .line 22
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public static final getScaleY-impl(J)F
    .locals 2

    .line 54
    sget-wide v0, Landroidx/compose/ui/layout/ScaleFactor;->Unspecified:J

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 55
    const-string v0, "ScaleFactor is unspecified"

    .line 44
    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_1
    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    long-to-int p0, p0

    .line 22
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method
