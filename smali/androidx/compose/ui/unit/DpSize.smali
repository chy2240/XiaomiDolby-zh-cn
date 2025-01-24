.class public final Landroidx/compose/ui/unit/DpSize;
.super Ljava/lang/Object;
.source "Dp.kt"


# static fields
.field public static final Companion:Landroidx/compose/ui/unit/DpSize$Companion;

.field private static final Unspecified:J

.field private static final Zero:J


# instance fields
.field private final packedValue:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/unit/DpSize$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/unit/DpSize$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/unit/DpSize;->Companion:Landroidx/compose/ui/unit/DpSize$Companion;

    const-wide/16 v0, 0x0

    .line 345
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/DpSize;->constructor-impl(J)J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/ui/unit/DpSize;->Zero:J

    const-wide v0, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 352
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/DpSize;->constructor-impl(J)J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/ui/unit/DpSize;->Unspecified:J

    return-void
.end method

.method private synthetic constructor <init>(J)V
    .locals 0

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/compose/ui/unit/DpSize;->packedValue:J

    return-void
.end method

.method public static final synthetic access$getUnspecified$cp()J
    .locals 2

    .line 286
    sget-wide v0, Landroidx/compose/ui/unit/DpSize;->Unspecified:J

    return-wide v0
.end method

.method public static final synthetic access$getZero$cp()J
    .locals 2

    .line 286
    sget-wide v0, Landroidx/compose/ui/unit/DpSize;->Zero:J

    return-wide v0
.end method

.method public static final synthetic box-impl(J)Landroidx/compose/ui/unit/DpSize;
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/ui/unit/DpSize;

    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/unit/DpSize;-><init>(J)V

    return-object v0
.end method

.method public static constructor-impl(J)J
    .locals 0

    .line 0
    return-wide p0
.end method

.method public static final copy-DwJknco(JFF)J
    .locals 2

    .line 53
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long p0, p0

    .line 54
    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    int-to-long p2, p2

    const/16 v0, 0x20

    shl-long/2addr p0, v0

    const-wide v0, 0xffffffffL

    and-long/2addr p2, v0

    or-long/2addr p0, p2

    .line 303
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/DpSize;->constructor-impl(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic copy-DwJknco$default(JFFILjava/lang/Object;)J
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 302
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/DpSize;->getWidth-D9Ej5fM(J)F

    move-result p2

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/DpSize;->getHeight-D9Ej5fM(J)F

    move-result p3

    :cond_1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/unit/DpSize;->copy-DwJknco(JFF)J

    move-result-wide p0

    return-wide p0
.end method

.method public static equals-impl(JLjava/lang/Object;)Z
    .locals 4

    .line 0
    instance-of v0, p2, Landroidx/compose/ui/unit/DpSize;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p2, Landroidx/compose/ui/unit/DpSize;

    invoke-virtual {p2}, Landroidx/compose/ui/unit/DpSize;->unbox-impl()J

    move-result-wide v2

    cmp-long p0, p0, v2

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
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

.method public static final getHeight-D9Ej5fM(J)F
    .locals 2

    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    long-to-int p0, p0

    .line 22
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    .line 119
    invoke-static {p0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p0

    return p0
.end method

.method public static final getWidth-D9Ej5fM(J)F
    .locals 1

    const/16 v0, 0x20

    shr-long/2addr p0, v0

    long-to-int p0, p0

    .line 22
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    .line 119
    invoke-static {p0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p0

    return p0
.end method

.method public static hashCode-impl(J)I
    .locals 0

    .line 0
    invoke-static {p0, p1}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    return p0
.end method

.method public static toString-impl(J)Ljava/lang/String;
    .locals 2

    const-wide v0, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/DpSize;->getWidth-D9Ej5fM(J)F

    move-result v1

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->toString-impl(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/DpSize;->getHeight-D9Ej5fM(J)F

    move-result p0

    invoke-static {p0}, Landroidx/compose/ui/unit/Dp;->toString-impl(F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 340
    :cond_0
    const-string p0, "DpSize.Unspecified"

    :goto_0
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 0
    iget-wide v0, p0, Landroidx/compose/ui/unit/DpSize;->packedValue:J

    invoke-static {v0, v1, p1}, Landroidx/compose/ui/unit/DpSize;->equals-impl(JLjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 2

    .line 0
    iget-wide v0, p0, Landroidx/compose/ui/unit/DpSize;->packedValue:J

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/DpSize;->hashCode-impl(J)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 336
    iget-wide v0, p0, Landroidx/compose/ui/unit/DpSize;->packedValue:J

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/DpSize;->toString-impl(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic unbox-impl()J
    .locals 2

    .line 0
    iget-wide v0, p0, Landroidx/compose/ui/unit/DpSize;->packedValue:J

    return-wide v0
.end method
