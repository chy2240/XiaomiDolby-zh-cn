.class public final Lco/aospa/dolby/xiaomi/geq/data/BandGain;
.super Ljava/lang/Object;
.source "BandGain.kt"


# instance fields
.field private final band:I

.field private gain:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lco/aospa/dolby/xiaomi/geq/data/BandGain;->band:I

    .line 11
    iput p2, p0, Lco/aospa/dolby/xiaomi/geq/data/BandGain;->gain:I

    return-void
.end method

.method public static synthetic copy$default(Lco/aospa/dolby/xiaomi/geq/data/BandGain;IIILjava/lang/Object;)Lco/aospa/dolby/xiaomi/geq/data/BandGain;
    .locals 0

    .line 0
    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lco/aospa/dolby/xiaomi/geq/data/BandGain;->band:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget p2, p0, Lco/aospa/dolby/xiaomi/geq/data/BandGain;->gain:I

    :cond_1
    invoke-virtual {p0, p1, p2}, Lco/aospa/dolby/xiaomi/geq/data/BandGain;->copy(II)Lco/aospa/dolby/xiaomi/geq/data/BandGain;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(II)Lco/aospa/dolby/xiaomi/geq/data/BandGain;
    .locals 0

    .line 0
    new-instance p0, Lco/aospa/dolby/xiaomi/geq/data/BandGain;

    invoke-direct {p0, p1, p2}, Lco/aospa/dolby/xiaomi/geq/data/BandGain;-><init>(II)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lco/aospa/dolby/xiaomi/geq/data/BandGain;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lco/aospa/dolby/xiaomi/geq/data/BandGain;

    iget v1, p0, Lco/aospa/dolby/xiaomi/geq/data/BandGain;->band:I

    iget v3, p1, Lco/aospa/dolby/xiaomi/geq/data/BandGain;->band:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget p0, p0, Lco/aospa/dolby/xiaomi/geq/data/BandGain;->gain:I

    iget p1, p1, Lco/aospa/dolby/xiaomi/geq/data/BandGain;->gain:I

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getBand()I
    .locals 0

    .line 10
    iget p0, p0, Lco/aospa/dolby/xiaomi/geq/data/BandGain;->band:I

    return p0
.end method

.method public final getGain()I
    .locals 0

    .line 11
    iget p0, p0, Lco/aospa/dolby/xiaomi/geq/data/BandGain;->gain:I

    return p0
.end method

.method public hashCode()I
    .locals 1

    .line 0
    iget v0, p0, Lco/aospa/dolby/xiaomi/geq/data/BandGain;->band:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lco/aospa/dolby/xiaomi/geq/data/BandGain;->gain:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 0
    iget v0, p0, Lco/aospa/dolby/xiaomi/geq/data/BandGain;->band:I

    iget p0, p0, Lco/aospa/dolby/xiaomi/geq/data/BandGain;->gain:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BandGain(band="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", gain="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
