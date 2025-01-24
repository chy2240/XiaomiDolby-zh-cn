.class final Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$userPresets$1$listener$1;
.super Ljava/lang/Object;
.source "EqualizerRepository.kt"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field final synthetic $$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

.field final synthetic this$0:Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/channels/ProducerScope;Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$userPresets$1$listener$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iput-object p2, p0, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$userPresets$1$listener$1;->this$0:Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 9

    .line 67
    sget-object p1, Lco/aospa/dolby/xiaomi/DolbyConstants;->Companion:Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;

    const-string p2, "EqRepository"

    const-string v0, "presetsSharedPrefs changed"

    invoke-virtual {p1, p2, v0}, Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;->dlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object p1, p0, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$userPresets$1$listener$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    .line 69
    iget-object p0, p0, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$userPresets$1$listener$1;->this$0:Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;

    invoke-static {p0}, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;->access$getPresetsSharedPrefs(Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p0

    const-string p2, "getAll(...)"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 152
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 69
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 70
    new-instance v1, Lco/aospa/dolby/xiaomi/geq/data/Preset;

    .line 71
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 72
    invoke-static {}, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;->access$getCompanion$p()Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$Companion;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$Companion;->deserializeGains(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    const/16 v7, 0x8

    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v2, v1

    .line 70
    invoke-direct/range {v2 .. v8}, Lco/aospa/dolby/xiaomi/geq/data/Preset;-><init>(Ljava/lang/String;Ljava/util/List;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 153
    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 68
    :cond_0
    invoke-interface {p1, p2}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
