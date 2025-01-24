.class public abstract Lco/aospa/dolby/xiaomi/DolbyConstants;
.super Ljava/lang/Object;
.source "DolbyConstants.kt"


# static fields
.field public static final Companion:Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;

.field private static final PROFILE_SPECIFIC_PREFS:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lco/aospa/dolby/xiaomi/DolbyConstants;->Companion:Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;

    .line 50
    const-string v8, "dolby_bass"

    .line 51
    const-string v9, "dolby_volume"

    const-string v2, "dolby_preset"

    const-string v3, "dolby_ieq"

    const-string v4, "dolby_virtualizer"

    const-string v5, "dolby_spk_virtualizer"

    const-string v6, "dolby_stereo"

    const-string v7, "dolby_dialogue"

    filled-new-array/range {v2 .. v9}, [Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lco/aospa/dolby/xiaomi/DolbyConstants;->PROFILE_SPECIFIC_PREFS:Ljava/util/Set;

    return-void
.end method

.method public static final synthetic access$getPROFILE_SPECIFIC_PREFS$cp()Ljava/util/Set;
    .locals 1

    .line 11
    sget-object v0, Lco/aospa/dolby/xiaomi/DolbyConstants;->PROFILE_SPECIFIC_PREFS:Ljava/util/Set;

    return-object v0
.end method
