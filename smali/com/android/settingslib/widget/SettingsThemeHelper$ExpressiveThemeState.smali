.class public final enum Lcom/android/settingslib/widget/SettingsThemeHelper$ExpressiveThemeState;
.super Ljava/lang/Enum;
.source "SettingsThemeHelper.kt"


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/android/settingslib/widget/SettingsThemeHelper$ExpressiveThemeState;

.field public static final enum DISABLED:Lcom/android/settingslib/widget/SettingsThemeHelper$ExpressiveThemeState;

.field public static final enum ENABLED:Lcom/android/settingslib/widget/SettingsThemeHelper$ExpressiveThemeState;

.field public static final enum UNKNOWN:Lcom/android/settingslib/widget/SettingsThemeHelper$ExpressiveThemeState;


# direct methods
.method private static final synthetic $values()[Lcom/android/settingslib/widget/SettingsThemeHelper$ExpressiveThemeState;
    .locals 3

    .line 0
    sget-object v0, Lcom/android/settingslib/widget/SettingsThemeHelper$ExpressiveThemeState;->UNKNOWN:Lcom/android/settingslib/widget/SettingsThemeHelper$ExpressiveThemeState;

    sget-object v1, Lcom/android/settingslib/widget/SettingsThemeHelper$ExpressiveThemeState;->ENABLED:Lcom/android/settingslib/widget/SettingsThemeHelper$ExpressiveThemeState;

    sget-object v2, Lcom/android/settingslib/widget/SettingsThemeHelper$ExpressiveThemeState;->DISABLED:Lcom/android/settingslib/widget/SettingsThemeHelper$ExpressiveThemeState;

    filled-new-array {v0, v1, v2}, [Lcom/android/settingslib/widget/SettingsThemeHelper$ExpressiveThemeState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 28
    new-instance v0, Lcom/android/settingslib/widget/SettingsThemeHelper$ExpressiveThemeState;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/widget/SettingsThemeHelper$ExpressiveThemeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settingslib/widget/SettingsThemeHelper$ExpressiveThemeState;->UNKNOWN:Lcom/android/settingslib/widget/SettingsThemeHelper$ExpressiveThemeState;

    .line 29
    new-instance v0, Lcom/android/settingslib/widget/SettingsThemeHelper$ExpressiveThemeState;

    const-string v1, "ENABLED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/widget/SettingsThemeHelper$ExpressiveThemeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settingslib/widget/SettingsThemeHelper$ExpressiveThemeState;->ENABLED:Lcom/android/settingslib/widget/SettingsThemeHelper$ExpressiveThemeState;

    .line 30
    new-instance v0, Lcom/android/settingslib/widget/SettingsThemeHelper$ExpressiveThemeState;

    const-string v1, "DISABLED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/widget/SettingsThemeHelper$ExpressiveThemeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settingslib/widget/SettingsThemeHelper$ExpressiveThemeState;->DISABLED:Lcom/android/settingslib/widget/SettingsThemeHelper$ExpressiveThemeState;

    invoke-static {}, Lcom/android/settingslib/widget/SettingsThemeHelper$ExpressiveThemeState;->$values()[Lcom/android/settingslib/widget/SettingsThemeHelper$ExpressiveThemeState;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/widget/SettingsThemeHelper$ExpressiveThemeState;->$VALUES:[Lcom/android/settingslib/widget/SettingsThemeHelper$ExpressiveThemeState;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/widget/SettingsThemeHelper$ExpressiveThemeState;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settingslib/widget/SettingsThemeHelper$ExpressiveThemeState;
    .locals 1

    .line 0
    const-class v0, Lcom/android/settingslib/widget/SettingsThemeHelper$ExpressiveThemeState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/widget/SettingsThemeHelper$ExpressiveThemeState;

    return-object p0
.end method

.method public static values()[Lcom/android/settingslib/widget/SettingsThemeHelper$ExpressiveThemeState;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/settingslib/widget/SettingsThemeHelper$ExpressiveThemeState;->$VALUES:[Lcom/android/settingslib/widget/SettingsThemeHelper$ExpressiveThemeState;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settingslib/widget/SettingsThemeHelper$ExpressiveThemeState;

    return-object v0
.end method
