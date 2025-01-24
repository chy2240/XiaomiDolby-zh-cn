.class final Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$1$6;
.super Lkotlin/jvm/internal/Lambda;
.source "PresetSelector.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $currentPreset$delegate:Landroidx/compose/runtime/State;

.field final synthetic $showResetConfirmDialog$delegate:Landroidx/compose/runtime/MutableState;

.field final synthetic $viewModel:Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;


# direct methods
.method constructor <init>(Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$1$6;->$viewModel:Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;

    iput-object p2, p0, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$1$6;->$currentPreset$delegate:Landroidx/compose/runtime/State;

    iput-object p3, p0, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$1$6;->$showResetConfirmDialog$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 120
    invoke-virtual {p0}, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$1$6;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 1

    .line 126
    iget-object v0, p0, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$1$6;->$currentPreset$delegate:Landroidx/compose/runtime/State;

    invoke-static {v0}, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt;->access$PresetSelector$lambda$1(Landroidx/compose/runtime/State;)Lco/aospa/dolby/xiaomi/geq/data/Preset;

    move-result-object v0

    invoke-virtual {v0}, Lco/aospa/dolby/xiaomi/geq/data/Preset;->isUserDefined()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object p0, p0, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$1$6;->$showResetConfirmDialog$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt;->access$PresetSelector$lambda$16(Landroidx/compose/runtime/MutableState;Z)V

    goto :goto_0

    .line 129
    :cond_0
    iget-object p0, p0, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$1$6;->$viewModel:Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;

    invoke-virtual {p0}, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;->reset()V

    :goto_0
    return-void
.end method
