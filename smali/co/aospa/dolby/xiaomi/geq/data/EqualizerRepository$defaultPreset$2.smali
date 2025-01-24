.class final Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$defaultPreset$2;
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
    iput-object p1, p0, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$defaultPreset$2;->this$0:Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lco/aospa/dolby/xiaomi/geq/data/Preset;
    .locals 1

    .line 60
    iget-object p0, p0, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$defaultPreset$2;->this$0:Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;

    invoke-virtual {p0}, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;->getBuiltInPresets()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lco/aospa/dolby/xiaomi/geq/data/Preset;

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 60
    invoke-virtual {p0}, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$defaultPreset$2;->invoke()Lco/aospa/dolby/xiaomi/geq/data/Preset;

    move-result-object p0

    return-object p0
.end method
