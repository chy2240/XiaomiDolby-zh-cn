.class final Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$1$2$5$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "PresetSelector.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $expanded$delegate:Landroidx/compose/runtime/MutableState;

.field final synthetic $preset:Lco/aospa/dolby/xiaomi/geq/data/Preset;

.field final synthetic $viewModel:Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;


# direct methods
.method constructor <init>(Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;Lco/aospa/dolby/xiaomi/geq/data/Preset;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$1$2$5$1$2;->$viewModel:Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;

    iput-object p2, p0, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$1$2$5$1$2;->$preset:Lco/aospa/dolby/xiaomi/geq/data/Preset;

    iput-object p3, p0, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$1$2$5$1$2;->$expanded$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 88
    invoke-virtual {p0}, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$1$2$5$1$2;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 2

    .line 91
    iget-object v0, p0, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$1$2$5$1$2;->$viewModel:Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;

    iget-object v1, p0, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$1$2$5$1$2;->$preset:Lco/aospa/dolby/xiaomi/geq/data/Preset;

    invoke-virtual {v0, v1}, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;->setPreset(Lco/aospa/dolby/xiaomi/geq/data/Preset;)V

    .line 92
    iget-object p0, p0, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$1$2$5$1$2;->$expanded$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt;->access$PresetSelector$lambda$4(Landroidx/compose/runtime/MutableState;Z)V

    return-void
.end method
