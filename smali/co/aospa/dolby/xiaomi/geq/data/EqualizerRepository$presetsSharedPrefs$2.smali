.class final Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$presetsSharedPrefs$2;
.super Lkotlin/jvm/internal/Lambda;
.source "EqualizerRepository.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;


# direct methods
.method constructor <init>(Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$presetsSharedPrefs$2;->this$0:Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/content/SharedPreferences;
    .locals 2

    .line 39
    iget-object p0, p0, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$presetsSharedPrefs$2;->this$0:Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;

    invoke-static {p0}, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;->access$getContext$p(Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;)Landroid/content/Context;

    move-result-object p0

    .line 40
    const-string v0, "presets"

    const/4 v1, 0x0

    .line 39
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 38
    invoke-virtual {p0}, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$presetsSharedPrefs$2;->invoke()Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method
