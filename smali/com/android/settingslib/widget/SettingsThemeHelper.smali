.class public final Lcom/android/settingslib/widget/SettingsThemeHelper;
.super Ljava/lang/Object;
.source "SettingsThemeHelper.kt"


# static fields
.field public static final INSTANCE:Lcom/android/settingslib/widget/SettingsThemeHelper;

.field private static expressiveThemeState:Lcom/android/settingslib/widget/SettingsThemeHelper$ExpressiveThemeState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settingslib/widget/SettingsThemeHelper;

    invoke-direct {v0}, Lcom/android/settingslib/widget/SettingsThemeHelper;-><init>()V

    sput-object v0, Lcom/android/settingslib/widget/SettingsThemeHelper;->INSTANCE:Lcom/android/settingslib/widget/SettingsThemeHelper;

    .line 25
    sget-object v0, Lcom/android/settingslib/widget/SettingsThemeHelper$ExpressiveThemeState;->UNKNOWN:Lcom/android/settingslib/widget/SettingsThemeHelper$ExpressiveThemeState;

    sput-object v0, Lcom/android/settingslib/widget/SettingsThemeHelper;->expressiveThemeState:Lcom/android/settingslib/widget/SettingsThemeHelper$ExpressiveThemeState;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getPropBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 3

    .line 64
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const-string p1, "android.os.SystemProperties"

    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const/4 p1, 0x2

    .line 67
    new-array v0, p1, [Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 68
    const-string v1, "getBoolean"

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {p0, v1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 70
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {p2, v1}, [Ljava/lang/Object;

    move-result-object p2

    .line 71
    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    :goto_0
    return p3

    .line 73
    :goto_1
    throw p0
.end method

.method public static final isExpressiveTheme(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    sget-object v0, Lcom/android/settingslib/widget/SettingsThemeHelper;->INSTANCE:Lcom/android/settingslib/widget/SettingsThemeHelper;

    invoke-direct {v0, p0}, Lcom/android/settingslib/widget/SettingsThemeHelper;->tryInit(Landroid/content/Context;)V

    .line 36
    sget-object p0, Lcom/android/settingslib/widget/SettingsThemeHelper;->expressiveThemeState:Lcom/android/settingslib/widget/SettingsThemeHelper$ExpressiveThemeState;

    sget-object v0, Lcom/android/settingslib/widget/SettingsThemeHelper$ExpressiveThemeState;->UNKNOWN:Lcom/android/settingslib/widget/SettingsThemeHelper$ExpressiveThemeState;

    if-eq p0, v0, :cond_1

    .line 42
    sget-object p0, Lcom/android/settingslib/widget/SettingsThemeHelper;->expressiveThemeState:Lcom/android/settingslib/widget/SettingsThemeHelper$ExpressiveThemeState;

    sget-object v0, Lcom/android/settingslib/widget/SettingsThemeHelper$ExpressiveThemeState;->ENABLED:Lcom/android/settingslib/widget/SettingsThemeHelper$ExpressiveThemeState;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .line 37
    :cond_1
    new-instance p0, Ljava/lang/Exception;

    .line 38
    const-string v0, "need to call com.android.settingslib.widget.SettingsThemeHelper.init(Context) first."

    .line 37
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final tryInit(Landroid/content/Context;)V
    .locals 3

    .line 46
    sget-object v0, Lcom/android/settingslib/widget/SettingsThemeHelper;->expressiveThemeState:Lcom/android/settingslib/widget/SettingsThemeHelper$ExpressiveThemeState;

    sget-object v1, Lcom/android/settingslib/widget/SettingsThemeHelper$ExpressiveThemeState;->UNKNOWN:Lcom/android/settingslib/widget/SettingsThemeHelper$ExpressiveThemeState;

    if-eq v0, v1, :cond_0

    return-void

    .line 53
    :cond_0
    const-string v0, "is_expressive_design_enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 54
    invoke-direct {p0, p1, v0, v1}, Lcom/android/settingslib/widget/SettingsThemeHelper;->getPropBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    .line 58
    :cond_1
    sget-object p0, Lcom/android/settingslib/widget/SettingsThemeHelper$ExpressiveThemeState;->DISABLED:Lcom/android/settingslib/widget/SettingsThemeHelper$ExpressiveThemeState;

    goto :goto_1

    .line 56
    :cond_2
    :goto_0
    sget-object p0, Lcom/android/settingslib/widget/SettingsThemeHelper$ExpressiveThemeState;->ENABLED:Lcom/android/settingslib/widget/SettingsThemeHelper$ExpressiveThemeState;

    .line 50
    :goto_1
    sput-object p0, Lcom/android/settingslib/widget/SettingsThemeHelper;->expressiveThemeState:Lcom/android/settingslib/widget/SettingsThemeHelper$ExpressiveThemeState;

    return-void
.end method
