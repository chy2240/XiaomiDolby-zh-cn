.class public final Lco/aospa/dolby/xiaomi/DolbyAudioEffect;
.super Landroid/media/audiofx/AudioEffect;
.source "DolbyAudioEffect.kt"


# static fields
.field public static final Companion:Lco/aospa/dolby/xiaomi/DolbyAudioEffect$Companion;

.field private static final EFFECT_TYPE_DAP:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lco/aospa/dolby/xiaomi/DolbyAudioEffect$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lco/aospa/dolby/xiaomi/DolbyAudioEffect$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lco/aospa/dolby/xiaomi/DolbyAudioEffect;->Companion:Lco/aospa/dolby/xiaomi/DolbyAudioEffect$Companion;

    .line 90
    const-string v0, "9d4921da-8225-4f29-aefa-39537a04bcaa"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lco/aospa/dolby/xiaomi/DolbyAudioEffect;->EFFECT_TYPE_DAP:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .line 15
    sget-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    sget-object v1, Lco/aospa/dolby/xiaomi/DolbyAudioEffect;->EFFECT_TYPE_DAP:Ljava/util/UUID;

    .line 14
    invoke-direct {p0, v0, v1, p1, p2}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    return-void
.end method

.method private final getIntParam(I)I
    .locals 3

    const/16 v0, 0xc

    .line 41
    new-array v0, v0, [B

    .line 42
    sget-object v1, Lco/aospa/dolby/xiaomi/DolbyAudioEffect;->Companion:Lco/aospa/dolby/xiaomi/DolbyAudioEffect$Companion;

    const/4 v2, 0x0

    invoke-static {v1, p1, v0, v2}, Lco/aospa/dolby/xiaomi/DolbyAudioEffect$Companion;->access$int32ToByteArray(Lco/aospa/dolby/xiaomi/DolbyAudioEffect$Companion;I[BI)V

    add-int/lit8 v2, p1, 0x5

    .line 43
    invoke-virtual {p0, v2, v0}, Landroid/media/audiofx/AudioEffect;->getParameter(I[B)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    .line 44
    invoke-static {v1, v0}, Lco/aospa/dolby/xiaomi/DolbyAudioEffect$Companion;->access$byteArrayToInt32(Lco/aospa/dolby/xiaomi/DolbyAudioEffect$Companion;[B)I

    move-result p0

    .line 45
    sget-object v0, Lco/aospa/dolby/xiaomi/DolbyConstants;->Companion:Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIntParam("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "): "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "DolbyAudioEffect"

    invoke-virtual {v0, v1, p1}, Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;->dlog(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public static synthetic resetProfileSpecificSettings$default(Lco/aospa/dolby/xiaomi/DolbyAudioEffect;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 49
    invoke-virtual {p0}, Lco/aospa/dolby/xiaomi/DolbyAudioEffect;->getProfile()I

    move-result p1

    :cond_0
    invoke-virtual {p0, p1}, Lco/aospa/dolby/xiaomi/DolbyAudioEffect;->resetProfileSpecificSettings(I)V

    return-void
.end method

.method private final setIntParam(II)V
    .locals 3

    .line 32
    sget-object v0, Lco/aospa/dolby/xiaomi/DolbyConstants;->Companion:Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIntParam("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DolbyAudioEffect"

    invoke-virtual {v0, v2, v1}, Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;->dlog(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xc

    .line 33
    new-array v0, v0, [B

    .line 34
    sget-object v1, Lco/aospa/dolby/xiaomi/DolbyAudioEffect;->Companion:Lco/aospa/dolby/xiaomi/DolbyAudioEffect$Companion;

    const/4 v2, 0x0

    invoke-static {v1, p1, v0, v2}, Lco/aospa/dolby/xiaomi/DolbyAudioEffect$Companion;->access$int32ToByteArray(Lco/aospa/dolby/xiaomi/DolbyAudioEffect$Companion;I[BI)V

    const/4 p1, 0x1

    const/4 v2, 0x4

    .line 35
    invoke-static {v1, p1, v0, v2}, Lco/aospa/dolby/xiaomi/DolbyAudioEffect$Companion;->access$int32ToByteArray(Lco/aospa/dolby/xiaomi/DolbyAudioEffect$Companion;I[BI)V

    const/16 p1, 0x8

    .line 36
    invoke-static {v1, p2, v0, p1}, Lco/aospa/dolby/xiaomi/DolbyAudioEffect$Companion;->access$int32ToByteArray(Lco/aospa/dolby/xiaomi/DolbyAudioEffect$Companion;I[BI)V

    const/4 p1, 0x5

    .line 37
    invoke-virtual {p0, p1, v0}, Landroid/media/audiofx/AudioEffect;->setParameter(I[B)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    return-void
.end method


# virtual methods
.method public final getDapParameter(Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;I)[I
    .locals 3

    const-string v0, "param"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    sget-object v0, Lco/aospa/dolby/xiaomi/DolbyConstants;->Companion:Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDapParameter: profile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " param="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DolbyAudioEffect"

    invoke-virtual {v0, v2, v1}, Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;->dlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p1}, Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;->getLength()I

    move-result v0

    add-int/lit8 v1, v0, 0x2

    mul-int/lit8 v1, v1, 0x4

    .line 75
    new-array v1, v1, [B

    .line 76
    invoke-virtual {p1}, Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;->getId()I

    move-result p1

    shl-int/lit8 p1, p1, 0x10

    shl-int/lit8 p2, p2, 0x8

    add-int/2addr p1, p2

    const p2, 0x1000005

    add-int/2addr p1, p2

    .line 77
    invoke-virtual {p0, p1, v1}, Landroid/media/audiofx/AudioEffect;->getParameter(I[B)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    .line 78
    sget-object p0, Lco/aospa/dolby/xiaomi/DolbyAudioEffect;->Companion:Lco/aospa/dolby/xiaomi/DolbyAudioEffect$Companion;

    invoke-static {p0, v1, v0}, Lco/aospa/dolby/xiaomi/DolbyAudioEffect$Companion;->access$byteArrayToInt32Array(Lco/aospa/dolby/xiaomi/DolbyAudioEffect$Companion;[BI)[I

    move-result-object p0

    return-object p0
.end method

.method public final getDapParameterBool(Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;I)Z
    .locals 1

    const-string v0, "param"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0, p1, p2}, Lco/aospa/dolby/xiaomi/DolbyAudioEffect;->getDapParameter(Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;I)[I

    move-result-object p0

    const/4 p1, 0x0

    aget p0, p0, p1

    const/4 p2, 0x1

    if-ne p0, p2, :cond_0

    move p1, p2

    :cond_0
    return p1
.end method

.method public final getDapParameterInt(Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;I)I
    .locals 1

    const-string v0, "param"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0, p1, p2}, Lco/aospa/dolby/xiaomi/DolbyAudioEffect;->getDapParameter(Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;I)[I

    move-result-object p0

    const/4 p1, 0x0

    aget p0, p0, p1

    return p0
.end method

.method public final getDsOn()Z
    .locals 2

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, v0}, Lco/aospa/dolby/xiaomi/DolbyAudioEffect;->getIntParam(I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public final getProfile()I
    .locals 1

    const/high16 v0, 0xa000000

    .line 26
    invoke-direct {p0, v0}, Lco/aospa/dolby/xiaomi/DolbyAudioEffect;->getIntParam(I)I

    move-result p0

    return p0
.end method

.method public final resetProfileSpecificSettings(I)V
    .locals 3

    .line 50
    sget-object v0, Lco/aospa/dolby/xiaomi/DolbyConstants;->Companion:Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetProfileSpecificSettings: profile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DolbyAudioEffect"

    invoke-virtual {v0, v2, v1}, Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;->dlog(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, 0xc000000

    .line 51
    invoke-direct {p0, v0, p1}, Lco/aospa/dolby/xiaomi/DolbyAudioEffect;->setIntParam(II)V

    return-void
.end method

.method public final setDapParameter(Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;II)V
    .locals 1

    const-string v0, "param"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    filled-new-array {p2}, [I

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lco/aospa/dolby/xiaomi/DolbyAudioEffect;->setDapParameter(Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;[II)V

    return-void
.end method

.method public final setDapParameter(Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;ZI)V
    .locals 1

    const-string v0, "param"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    filled-new-array {p2}, [I

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lco/aospa/dolby/xiaomi/DolbyAudioEffect;->setDapParameter(Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;[II)V

    return-void
.end method

.method public final setDapParameter(Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;[II)V
    .locals 6

    const-string v0, "param"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    sget-object v0, Lco/aospa/dolby/xiaomi/DolbyConstants;->Companion:Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDapParameter: profile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " param="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DolbyAudioEffect"

    invoke-virtual {v0, v2, v1}, Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;->dlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    array-length v0, p2

    add-int/lit8 v1, v0, 0x4

    const/4 v2, 0x4

    mul-int/2addr v1, v2

    .line 57
    new-array v1, v1, [B

    .line 58
    sget-object v3, Lco/aospa/dolby/xiaomi/DolbyAudioEffect;->Companion:Lco/aospa/dolby/xiaomi/DolbyAudioEffect$Companion;

    const/high16 v4, 0x1000000

    const/4 v5, 0x0

    invoke-static {v3, v4, v1, v5}, Lco/aospa/dolby/xiaomi/DolbyAudioEffect$Companion;->access$int32ToByteArray(Lco/aospa/dolby/xiaomi/DolbyAudioEffect$Companion;I[BI)V

    add-int/lit8 v0, v0, 0x1

    .line 59
    invoke-static {v3, v0, v1, v2}, Lco/aospa/dolby/xiaomi/DolbyAudioEffect$Companion;->access$int32ToByteArray(Lco/aospa/dolby/xiaomi/DolbyAudioEffect$Companion;I[BI)V

    const/16 v0, 0x8

    .line 60
    invoke-static {v3, p3, v1, v0}, Lco/aospa/dolby/xiaomi/DolbyAudioEffect$Companion;->access$int32ToByteArray(Lco/aospa/dolby/xiaomi/DolbyAudioEffect$Companion;I[BI)V

    .line 61
    invoke-virtual {p1}, Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;->getId()I

    move-result p1

    const/16 p3, 0xc

    invoke-static {v3, p1, v1, p3}, Lco/aospa/dolby/xiaomi/DolbyAudioEffect$Companion;->access$int32ToByteArray(Lco/aospa/dolby/xiaomi/DolbyAudioEffect$Companion;I[BI)V

    const/16 p1, 0x10

    .line 62
    invoke-static {v3, p2, v1, p1}, Lco/aospa/dolby/xiaomi/DolbyAudioEffect$Companion;->access$int32ArrayToByteArray(Lco/aospa/dolby/xiaomi/DolbyAudioEffect$Companion;[I[BI)V

    const/4 p1, 0x5

    .line 63
    invoke-virtual {p0, p1, v1}, Landroid/media/audiofx/AudioEffect;->setParameter(I[B)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    return-void
.end method

.method public final setDsOn(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, v0, p1}, Lco/aospa/dolby/xiaomi/DolbyAudioEffect;->setIntParam(II)V

    .line 22
    invoke-virtual {p0, p1}, Landroid/media/audiofx/AudioEffect;->setEnabled(Z)I

    return-void
.end method

.method public final setProfile(I)V
    .locals 1

    const/high16 v0, 0xa000000

    .line 28
    invoke-direct {p0, v0, p1}, Lco/aospa/dolby/xiaomi/DolbyAudioEffect;->setIntParam(II)V

    return-void
.end method
