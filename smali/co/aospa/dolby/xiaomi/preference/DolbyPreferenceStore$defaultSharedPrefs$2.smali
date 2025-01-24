.class final Lco/aospa/dolby/xiaomi/preference/DolbyPreferenceStore$defaultSharedPrefs$2;
.super Lkotlin/jvm/internal/Lambda;
.source "DolbyPreferenceStore.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lco/aospa/dolby/xiaomi/preference/DolbyPreferenceStore;


# direct methods
.method constructor <init>(Lco/aospa/dolby/xiaomi/preference/DolbyPreferenceStore;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lco/aospa/dolby/xiaomi/preference/DolbyPreferenceStore$defaultSharedPrefs$2;->this$0:Lco/aospa/dolby/xiaomi/preference/DolbyPreferenceStore;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/content/SharedPreferences;
    .locals 0

    .line 20
    iget-object p0, p0, Lco/aospa/dolby/xiaomi/preference/DolbyPreferenceStore$defaultSharedPrefs$2;->this$0:Lco/aospa/dolby/xiaomi/preference/DolbyPreferenceStore;

    invoke-static {p0}, Lco/aospa/dolby/xiaomi/preference/DolbyPreferenceStore;->access$getContext$p(Lco/aospa/dolby/xiaomi/preference/DolbyPreferenceStore;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 19
    invoke-virtual {p0}, Lco/aospa/dolby/xiaomi/preference/DolbyPreferenceStore$defaultSharedPrefs$2;->invoke()Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method
