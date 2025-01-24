.class public final enum Lco/aospa/dolby/xiaomi/geq/ui/PresetNameValidationError;
.super Ljava/lang/Enum;
.source "PresetNameValidationError.kt"


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lco/aospa/dolby/xiaomi/geq/ui/PresetNameValidationError;

.field public static final enum NAME_EXISTS:Lco/aospa/dolby/xiaomi/geq/ui/PresetNameValidationError;

.field public static final enum NAME_TOO_LONG:Lco/aospa/dolby/xiaomi/geq/ui/PresetNameValidationError;


# direct methods
.method private static final synthetic $values()[Lco/aospa/dolby/xiaomi/geq/ui/PresetNameValidationError;
    .locals 2

    .line 0
    sget-object v0, Lco/aospa/dolby/xiaomi/geq/ui/PresetNameValidationError;->NAME_EXISTS:Lco/aospa/dolby/xiaomi/geq/ui/PresetNameValidationError;

    sget-object v1, Lco/aospa/dolby/xiaomi/geq/ui/PresetNameValidationError;->NAME_TOO_LONG:Lco/aospa/dolby/xiaomi/geq/ui/PresetNameValidationError;

    filled-new-array {v0, v1}, [Lco/aospa/dolby/xiaomi/geq/ui/PresetNameValidationError;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 14
    new-instance v0, Lco/aospa/dolby/xiaomi/geq/ui/PresetNameValidationError;

    const-string v1, "NAME_EXISTS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lco/aospa/dolby/xiaomi/geq/ui/PresetNameValidationError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lco/aospa/dolby/xiaomi/geq/ui/PresetNameValidationError;->NAME_EXISTS:Lco/aospa/dolby/xiaomi/geq/ui/PresetNameValidationError;

    .line 15
    new-instance v0, Lco/aospa/dolby/xiaomi/geq/ui/PresetNameValidationError;

    const-string v1, "NAME_TOO_LONG"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lco/aospa/dolby/xiaomi/geq/ui/PresetNameValidationError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lco/aospa/dolby/xiaomi/geq/ui/PresetNameValidationError;->NAME_TOO_LONG:Lco/aospa/dolby/xiaomi/geq/ui/PresetNameValidationError;

    invoke-static {}, Lco/aospa/dolby/xiaomi/geq/ui/PresetNameValidationError;->$values()[Lco/aospa/dolby/xiaomi/geq/ui/PresetNameValidationError;

    move-result-object v0

    sput-object v0, Lco/aospa/dolby/xiaomi/geq/ui/PresetNameValidationError;->$VALUES:[Lco/aospa/dolby/xiaomi/geq/ui/PresetNameValidationError;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lco/aospa/dolby/xiaomi/geq/ui/PresetNameValidationError;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lco/aospa/dolby/xiaomi/geq/ui/PresetNameValidationError;
    .locals 1

    .line 0
    const-class v0, Lco/aospa/dolby/xiaomi/geq/ui/PresetNameValidationError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lco/aospa/dolby/xiaomi/geq/ui/PresetNameValidationError;

    return-object p0
.end method

.method public static values()[Lco/aospa/dolby/xiaomi/geq/ui/PresetNameValidationError;
    .locals 1

    .line 0
    sget-object v0, Lco/aospa/dolby/xiaomi/geq/ui/PresetNameValidationError;->$VALUES:[Lco/aospa/dolby/xiaomi/geq/ui/PresetNameValidationError;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lco/aospa/dolby/xiaomi/geq/ui/PresetNameValidationError;

    return-object v0
.end method


# virtual methods
.method public final toErrorMessage(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;
    .locals 3

    const v0, -0x3161085

    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "co.aospa.dolby.xiaomi.geq.ui.PresetNameValidationError.toErrorMessage (PresetNameValidationError.kt:18)"

    .line 19
    invoke-static {v0, p2, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 20
    :cond_0
    sget-object p2, Lco/aospa/dolby/xiaomi/geq/ui/PresetNameValidationError$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, p2, p0

    const/4 p2, 0x1

    if-eq p0, p2, :cond_2

    const/4 p2, 0x2

    if-ne p0, p2, :cond_1

    const p0, 0x7f110187

    goto :goto_0

    .line 22
    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_2
    const p0, 0x7f110186

    :goto_0
    const/4 p2, 0x0

    .line 19
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    return-object p0
.end method
