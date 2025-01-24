.class final Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$4;
.super Lkotlin/jvm/internal/Lambda;
.source "PresetSelector.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $currentPreset$delegate:Landroidx/compose/runtime/State;

.field final synthetic $viewModel:Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;


# direct methods
.method constructor <init>(Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;Landroidx/compose/runtime/State;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$4;->$viewModel:Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;

    iput-object p2, p0, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$4;->$currentPreset$delegate:Landroidx/compose/runtime/State;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/String;)Lco/aospa/dolby/xiaomi/geq/ui/PresetNameValidationError;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$4;->$viewModel:Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;

    .line 153
    iget-object p0, p0, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$4;->$currentPreset$delegate:Landroidx/compose/runtime/State;

    invoke-static {p0}, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt;->access$PresetSelector$lambda$1(Landroidx/compose/runtime/State;)Lco/aospa/dolby/xiaomi/geq/data/Preset;

    move-result-object p0

    .line 152
    invoke-virtual {v0, p0, p1}, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;->renamePreset(Lco/aospa/dolby/xiaomi/geq/data/Preset;Ljava/lang/String;)Lco/aospa/dolby/xiaomi/geq/ui/PresetNameValidationError;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 148
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$4;->invoke(Ljava/lang/String;)Lco/aospa/dolby/xiaomi/geq/ui/PresetNameValidationError;

    move-result-object p0

    return-object p0
.end method
