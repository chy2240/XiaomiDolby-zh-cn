.class public final enum Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;
.super Ljava/lang/Enum;
.source "DolbyConstants.kt"


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;

.field public static final enum BASS_ENHANCER_ENABLE:Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;

.field public static final enum DIALOGUE_ENHANCER_AMOUNT:Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;

.field public static final enum DIALOGUE_ENHANCER_ENABLE:Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;

.field public static final enum GEQ_BAND_GAINS:Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;

.field public static final enum HEADPHONE_VIRTUALIZER:Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;

.field public static final enum IEQ_PRESET:Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;

.field public static final enum SPEAKER_VIRTUALIZER:Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;

.field public static final enum STEREO_WIDENING_AMOUNT:Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;

.field public static final enum VOLUME_LEVELER_ENABLE:Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;


# instance fields
.field private final id:I

.field private final length:I


# direct methods
.method private static final synthetic $values()[Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;
    .locals 9

    .line 0
    sget-object v0, Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;->HEADPHONE_VIRTUALIZER:Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;

    sget-object v1, Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;->SPEAKER_VIRTUALIZER:Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;

    sget-object v2, Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;->VOLUME_LEVELER_ENABLE:Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;

    sget-object v3, Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;->IEQ_PRESET:Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;

    sget-object v4, Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;->DIALOGUE_ENHANCER_ENABLE:Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;

    sget-object v5, Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;->DIALOGUE_ENHANCER_AMOUNT:Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;

    sget-object v6, Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;->GEQ_BAND_GAINS:Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;

    sget-object v7, Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;->BASS_ENHANCER_ENABLE:Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;

    sget-object v8, Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;->STEREO_WIDENING_AMOUNT:Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;

    filled-new-array/range {v0 .. v8}, [Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 19

    .line 14
    new-instance v7, Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-string v1, "HEADPHONE_VIRTUALIZER"

    const/4 v2, 0x0

    const/16 v3, 0x65

    const/4 v4, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;-><init>(Ljava/lang/String;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v7, Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;->HEADPHONE_VIRTUALIZER:Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;

    .line 15
    new-instance v0, Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;

    const/4 v13, 0x2

    const/4 v14, 0x0

    const-string v9, "SPEAKER_VIRTUALIZER"

    const/4 v10, 0x1

    const/16 v11, 0x66

    const/4 v12, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;-><init>(Ljava/lang/String;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;->SPEAKER_VIRTUALIZER:Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;

    .line 16
    new-instance v0, Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const-string v2, "VOLUME_LEVELER_ENABLE"

    const/4 v3, 0x2

    const/16 v4, 0x67

    const/4 v5, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;-><init>(Ljava/lang/String;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;->VOLUME_LEVELER_ENABLE:Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;

    .line 17
    new-instance v0, Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;

    const-string v9, "IEQ_PRESET"

    const/4 v10, 0x3

    const/16 v11, 0x68

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;-><init>(Ljava/lang/String;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;->IEQ_PRESET:Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;

    .line 18
    new-instance v0, Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;

    const-string v2, "DIALOGUE_ENHANCER_ENABLE"

    const/4 v3, 0x4

    const/16 v4, 0x69

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;-><init>(Ljava/lang/String;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;->DIALOGUE_ENHANCER_ENABLE:Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;

    .line 19
    new-instance v0, Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;

    const-string v9, "DIALOGUE_ENHANCER_AMOUNT"

    const/4 v10, 0x5

    const/16 v11, 0x6c

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;-><init>(Ljava/lang/String;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;->DIALOGUE_ENHANCER_AMOUNT:Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;

    .line 20
    new-instance v0, Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;

    const/16 v1, 0x6e

    const/16 v2, 0x14

    const-string v3, "GEQ_BAND_GAINS"

    const/4 v4, 0x6

    invoke-direct {v0, v3, v4, v1, v2}, Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;->GEQ_BAND_GAINS:Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;

    .line 21
    new-instance v0, Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;

    const/4 v10, 0x2

    const/4 v11, 0x0

    const-string v6, "BASS_ENHANCER_ENABLE"

    const/4 v7, 0x7

    const/16 v8, 0x6f

    const/4 v9, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v11}, Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;-><init>(Ljava/lang/String;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;->BASS_ENHANCER_ENABLE:Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;

    .line 22
    new-instance v0, Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;

    const/16 v17, 0x2

    const/16 v18, 0x0

    const-string v13, "STEREO_WIDENING_AMOUNT"

    const/16 v14, 0x8

    const/16 v15, 0x71

    const/16 v16, 0x0

    move-object v12, v0

    invoke-direct/range {v12 .. v18}, Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;-><init>(Ljava/lang/String;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;->STEREO_WIDENING_AMOUNT:Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;

    invoke-static {}, Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;->$values()[Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;

    move-result-object v0

    sput-object v0, Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;->$VALUES:[Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;->id:I

    iput p4, p0, Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;->length:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    const/4 p4, 0x1

    .line 13
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;-><init>(Ljava/lang/String;III)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;
    .locals 1

    .line 0
    const-class v0, Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;

    return-object p0
.end method

.method public static values()[Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;
    .locals 1

    .line 0
    sget-object v0, Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;->$VALUES:[Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    .line 13
    iget p0, p0, Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;->id:I

    return p0
.end method

.method public final getLength()I
    .locals 0

    .line 13
    iget p0, p0, Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;->length:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 25
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iget p0, p0, Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;->id:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
