.class public final Lco/aospa/dolby/xiaomi/DolbyAudioEffect$Companion;
.super Ljava/lang/Object;
.source "DolbyAudioEffect.kt"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/DolbyAudioEffect$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$byteArrayToInt32(Lco/aospa/dolby/xiaomi/DolbyAudioEffect$Companion;[B)I
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lco/aospa/dolby/xiaomi/DolbyAudioEffect$Companion;->byteArrayToInt32([B)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$byteArrayToInt32Array(Lco/aospa/dolby/xiaomi/DolbyAudioEffect$Companion;[BI)[I
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2}, Lco/aospa/dolby/xiaomi/DolbyAudioEffect$Companion;->byteArrayToInt32Array([BI)[I

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$int32ArrayToByteArray(Lco/aospa/dolby/xiaomi/DolbyAudioEffect$Companion;[I[BI)V
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2, p3}, Lco/aospa/dolby/xiaomi/DolbyAudioEffect$Companion;->int32ArrayToByteArray([I[BI)V

    return-void
.end method

.method public static final synthetic access$int32ToByteArray(Lco/aospa/dolby/xiaomi/DolbyAudioEffect$Companion;I[BI)V
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2, p3}, Lco/aospa/dolby/xiaomi/DolbyAudioEffect$Companion;->int32ToByteArray(I[BI)V

    return-void
.end method

.method private final byteArrayToInt32([B)I
    .locals 1

    const/4 p0, 0x3

    .line 108
    aget-byte p0, p1, p0

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    const/4 v0, 0x2

    .line 109
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr p0, v0

    const/4 v0, 0x1

    .line 110
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p0, v0

    const/4 v0, 0x0

    .line 111
    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p0, p1

    return p0
.end method

.method private final byteArrayToInt32Array([BI)[I
    .locals 4

    .line 125
    array-length p0, p1

    shr-int/lit8 p0, p0, 0x2

    .line 126
    invoke-static {p2, p0}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result p0

    new-array p2, p0, [I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    mul-int/lit8 v1, v0, 0x4

    add-int/lit8 v2, v1, 0x3

    .line 128
    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v3, v1, 0x2

    .line 129
    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, v1, 0x1

    .line 130
    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    .line 131
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v2

    .line 128
    aput v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method private final int32ArrayToByteArray([I[BI)V
    .locals 5

    .line 116
    array-length p0, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    aget v1, p1, v0

    add-int/lit8 v2, p3, 0x1

    and-int/lit16 v3, v1, 0xff

    int-to-byte v3, v3

    .line 117
    aput-byte v3, p2, p3

    add-int/lit8 v3, p3, 0x2

    ushr-int/lit8 v4, v1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 118
    aput-byte v4, p2, v2

    add-int/lit8 v2, p3, 0x3

    ushr-int/lit8 v4, v1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 119
    aput-byte v4, p2, v3

    add-int/lit8 p3, p3, 0x4

    ushr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 120
    aput-byte v1, p2, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final int32ToByteArray(I[BI)V
    .locals 2

    add-int/lit8 p0, p3, 0x1

    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    .line 101
    aput-byte v0, p2, p3

    add-int/lit8 v0, p3, 0x2

    ushr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 102
    aput-byte v1, p2, p0

    add-int/lit8 p3, p3, 0x3

    ushr-int/lit8 p0, p1, 0x10

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    .line 103
    aput-byte p0, p2, v0

    ushr-int/lit8 p0, p1, 0x18

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    .line 104
    aput-byte p0, p2, p3

    return-void
.end method
