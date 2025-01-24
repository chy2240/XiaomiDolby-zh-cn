.class final Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$userPresets$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "EqualizerRepository.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field final synthetic this$0:Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;


# direct methods
.method constructor <init>(Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$userPresets$1$1;->this$0:Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;

    iput-object p2, p0, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$userPresets$1$1;->$listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 84
    invoke-virtual {p0}, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$userPresets$1$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 2

    .line 85
    iget-object v0, p0, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$userPresets$1$1;->this$0:Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;

    invoke-static {v0}, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;->access$getPresetsSharedPrefs(Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object p0, p0, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$userPresets$1$1;->$listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 86
    sget-object p0, Lco/aospa/dolby/xiaomi/DolbyConstants;->Companion:Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;

    const-string v0, "EqRepository"

    const-string v1, "presetsSharedPrefs unregistered listener"

    invoke-virtual {p0, v0, v1}, Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;->dlog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
