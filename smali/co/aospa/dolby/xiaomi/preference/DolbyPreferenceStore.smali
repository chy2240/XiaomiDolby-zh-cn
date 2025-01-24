.class public final Lco/aospa/dolby/xiaomi/preference/DolbyPreferenceStore;
.super Landroidx/preference/PreferenceDataStore;
.source "DolbyPreferenceStore.kt"


# instance fields
.field private final context:Landroid/content/Context;

.field private final defaultSharedPrefs$delegate:Lkotlin/Lazy;

.field private profile:I

.field private profileSharedPrefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Landroidx/preference/PreferenceDataStore;-><init>()V

    .line 16
    iput-object p1, p0, Lco/aospa/dolby/xiaomi/preference/DolbyPreferenceStore;->context:Landroid/content/Context;

    .line 19
    new-instance p1, Lco/aospa/dolby/xiaomi/preference/DolbyPreferenceStore$defaultSharedPrefs$2;

    invoke-direct {p1, p0}, Lco/aospa/dolby/xiaomi/preference/DolbyPreferenceStore$defaultSharedPrefs$2;-><init>(Lco/aospa/dolby/xiaomi/preference/DolbyPreferenceStore;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lco/aospa/dolby/xiaomi/preference/DolbyPreferenceStore;->defaultSharedPrefs$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getContext$p(Lco/aospa/dolby/xiaomi/preference/DolbyPreferenceStore;)Landroid/content/Context;
    .locals 0

    .line 15
    iget-object p0, p0, Lco/aospa/dolby/xiaomi/preference/DolbyPreferenceStore;->context:Landroid/content/Context;

    return-object p0
.end method

.method private final getDefaultSharedPrefs()Landroid/content/SharedPreferences;
    .locals 0

    .line 19
    iget-object p0, p0, Lco/aospa/dolby/xiaomi/preference/DolbyPreferenceStore;->defaultSharedPrefs$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/SharedPreferences;

    return-object p0
.end method

.method private final getSharedPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 1

    .line 35
    sget-object v0, Lco/aospa/dolby/xiaomi/DolbyConstants;->Companion:Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;

    invoke-virtual {v0}, Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;->getPROFILE_SPECIFIC_PREFS()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 36
    iget-object p0, p0, Lco/aospa/dolby/xiaomi/preference/DolbyPreferenceStore;->profileSharedPrefs:Landroid/content/SharedPreferences;

    if-nez p0, :cond_1

    const-string p0, "profileSharedPrefs"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    goto :goto_0

    .line 38
    :cond_0
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/preference/DolbyPreferenceStore;->getDefaultSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0, p1}, Lco/aospa/dolby/xiaomi/preference/DolbyPreferenceStore;->getSharedPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-direct {p0, p1}, Lco/aospa/dolby/xiaomi/preference/DolbyPreferenceStore;->getSharedPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-direct {p0, p1}, Lco/aospa/dolby/xiaomi/preference/DolbyPreferenceStore;->getSharedPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0, p1}, Lco/aospa/dolby/xiaomi/preference/DolbyPreferenceStore;->getSharedPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 43
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 44
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-direct {p0, p1}, Lco/aospa/dolby/xiaomi/preference/DolbyPreferenceStore;->getSharedPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 51
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 52
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-direct {p0, p1}, Lco/aospa/dolby/xiaomi/preference/DolbyPreferenceStore;->getSharedPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 59
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 60
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setProfile(I)V
    .locals 3

    .line 27
    iput p1, p0, Lco/aospa/dolby/xiaomi/preference/DolbyPreferenceStore;->profile:I

    .line 28
    iget-object v0, p0, Lco/aospa/dolby/xiaomi/preference/DolbyPreferenceStore;->context:Landroid/content/Context;

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "profile_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 28
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "getSharedPreferences(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lco/aospa/dolby/xiaomi/preference/DolbyPreferenceStore;->profileSharedPrefs:Landroid/content/SharedPreferences;

    return-void
.end method
