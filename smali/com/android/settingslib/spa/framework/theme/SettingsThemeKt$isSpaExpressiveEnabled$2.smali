.class final Lcom/android/settingslib/spa/framework/theme/SettingsThemeKt$isSpaExpressiveEnabled$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SettingsTheme.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# static fields
.field public static final INSTANCE:Lcom/android/settingslib/spa/framework/theme/SettingsThemeKt$isSpaExpressiveEnabled$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/android/settingslib/spa/framework/theme/SettingsThemeKt$isSpaExpressiveEnabled$2;

    invoke-direct {v0}, Lcom/android/settingslib/spa/framework/theme/SettingsThemeKt$isSpaExpressiveEnabled$2;-><init>()V

    sput-object v0, Lcom/android/settingslib/spa/framework/theme/SettingsThemeKt$isSpaExpressiveEnabled$2;->INSTANCE:Lcom/android/settingslib/spa/framework/theme/SettingsThemeKt$isSpaExpressiveEnabled$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Boolean;
    .locals 2

    .line 46
    sget-object p0, Lcom/android/settingslib/spa/framework/util/SystemProperties;->INSTANCE:Lcom/android/settingslib/spa/framework/util/SystemProperties;

    const-string v0, "is_expressive_design_enabled"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settingslib/spa/framework/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcom/android/settingslib/spa/framework/theme/SettingsThemeKt$isSpaExpressiveEnabled$2;->invoke()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
