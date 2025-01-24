.class final Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$6;
.super Lkotlin/jvm/internal/Lambda;
.source "PresetSelector.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $currentPreset$delegate:Landroidx/compose/runtime/State;

.field final synthetic $viewModel:Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;


# direct methods
.method constructor <init>(Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;Landroidx/compose/runtime/State;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$6;->$viewModel:Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;

    iput-object p2, p0, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$6;->$currentPreset$delegate:Landroidx/compose/runtime/State;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 162
    invoke-virtual {p0}, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$6;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 4

    .line 164
    iget-object v0, p0, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$6;->$viewModel:Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;

    iget-object p0, p0, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$6;->$currentPreset$delegate:Landroidx/compose/runtime/State;

    invoke-static {p0}, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt;->access$PresetSelector$lambda$1(Landroidx/compose/runtime/State;)Lco/aospa/dolby/xiaomi/geq/data/Preset;

    move-result-object p0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, p0, v3, v1, v2}, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;->deletePreset$default(Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;Lco/aospa/dolby/xiaomi/geq/data/Preset;ZILjava/lang/Object;)V

    return-void
.end method
