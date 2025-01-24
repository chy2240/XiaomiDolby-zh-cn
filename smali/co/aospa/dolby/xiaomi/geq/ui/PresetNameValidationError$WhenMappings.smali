.class public abstract synthetic Lco/aospa/dolby/xiaomi/geq/ui/PresetNameValidationError$WhenMappings;
.super Ljava/lang/Object;
.source "PresetNameValidationError.kt"


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 0
    invoke-static {}, Lco/aospa/dolby/xiaomi/geq/ui/PresetNameValidationError;->values()[Lco/aospa/dolby/xiaomi/geq/ui/PresetNameValidationError;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lco/aospa/dolby/xiaomi/geq/ui/PresetNameValidationError;->NAME_EXISTS:Lco/aospa/dolby/xiaomi/geq/ui/PresetNameValidationError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Lco/aospa/dolby/xiaomi/geq/ui/PresetNameValidationError;->NAME_TOO_LONG:Lco/aospa/dolby/xiaomi/geq/ui/PresetNameValidationError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    sput-object v0, Lco/aospa/dolby/xiaomi/geq/ui/PresetNameValidationError$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
