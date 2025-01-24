.class public abstract Landroidx/compose/foundation/text/modifiers/InlineDensity;
.super Ljava/lang/Object;
.source "InlineDensity.kt"


# static fields
.field public static final Companion:Landroidx/compose/foundation/text/modifiers/InlineDensity$Companion;

.field private static final Unspecified:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/foundation/text/modifiers/InlineDensity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/foundation/text/modifiers/InlineDensity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/foundation/text/modifiers/InlineDensity;->Companion:Landroidx/compose/foundation/text/modifiers/InlineDensity$Companion;

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 48
    invoke-static {v0, v0}, Landroidx/compose/foundation/text/modifiers/InlineDensity;->constructor-impl(FF)J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/foundation/text/modifiers/InlineDensity;->Unspecified:J

    return-void
.end method

.method public static final synthetic access$getUnspecified$cp()J
    .locals 2

    .line 30
    sget-wide v0, Landroidx/compose/foundation/text/modifiers/InlineDensity;->Unspecified:J

    return-wide v0
.end method

.method public static constructor-impl(FF)J
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

    .line 33
    invoke-static {p0, p1}, Landroidx/compose/foundation/text/modifiers/InlineDensity;->constructor-impl(J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static constructor-impl(J)J
    .locals 0

    .line 0
    return-wide p0
.end method

.method public static constructor-impl(Landroidx/compose/ui/unit/Density;)J
    .locals 2

    .line 35
    invoke-interface {p0}, Landroidx/compose/ui/unit/Density;->getDensity()F

    move-result v0

    invoke-interface {p0}, Landroidx/compose/ui/unit/FontScaling;->getFontScale()F

    move-result p0

    invoke-static {v0, p0}, Landroidx/compose/foundation/text/modifiers/InlineDensity;->constructor-impl(FF)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final equals-impl0(JJ)Z
    .locals 0

    .line 0
    cmp-long p0, p0, p2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final getDensity-impl(J)F
    .locals 1

    const/16 v0, 0x20

    shr-long/2addr p0, v0

    long-to-int p0, p0

    .line 22
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public static final getFontScale-impl(J)F
    .locals 2

    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    long-to-int p0, p0

    .line 22
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public static toString-impl(J)Ljava/lang/String;
    .locals 2

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InlineDensity(density="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Landroidx/compose/foundation/text/modifiers/InlineDensity;->getDensity-impl(J)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", fontScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Landroidx/compose/foundation/text/modifiers/InlineDensity;->getFontScale-impl(J)F

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
