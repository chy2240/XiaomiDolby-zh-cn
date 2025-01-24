.class final Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "PresetSelector.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field final synthetic $currentPreset$delegate:Landroidx/compose/runtime/State;

.field final synthetic $expanded$delegate:Landroidx/compose/runtime/MutableState;

.field final synthetic $presets$delegate:Landroidx/compose/runtime/State;

.field final synthetic $viewModel:Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;


# direct methods
.method constructor <init>(Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$1$2;->$currentPreset$delegate:Landroidx/compose/runtime/State;

    iput-object p2, p0, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$1$2;->$expanded$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p3, p0, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$1$2;->$presets$delegate:Landroidx/compose/runtime/State;

    iput-object p4, p0, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$1$2;->$viewModel:Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 62
    check-cast p1, Landroidx/compose/material3/ExposedDropdownMenuBoxScope;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$1$2;->invoke(Landroidx/compose/material3/ExposedDropdownMenuBoxScope;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/material3/ExposedDropdownMenuBoxScope;Landroidx/compose/runtime/Composer;I)V
    .locals 116

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v15, p2

    const-string v2, "$this$ExposedDropdownMenuBox"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 v2, p3, 0xe

    if-nez v2, :cond_1

    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int v2, p3, v2

    move v13, v2

    goto :goto_1

    :cond_1
    move/from16 v13, p3

    :goto_1
    and-int/lit8 v2, v13, 0x5b

    const/16 v3, 0x12

    if-ne v2, v3, :cond_3

    .line 63
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    .line 96
    :cond_2
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_3

    .line 63
    :cond_3
    :goto_2
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, -0x1

    const-string v3, "co.aospa.dolby.xiaomi.geq.ui.PresetSelector.<anonymous>.<anonymous> (PresetSelector.kt:62)"

    const v4, 0x682e33da

    invoke-static {v4, v13, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 64
    :cond_4
    iget-object v2, v0, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$1$2;->$currentPreset$delegate:Landroidx/compose/runtime/State;

    invoke-static {v2}, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt;->access$PresetSelector$lambda$1(Landroidx/compose/runtime/State;)Lco/aospa/dolby/xiaomi/geq/data/Preset;

    move-result-object v2

    invoke-virtual {v2}, Lco/aospa/dolby/xiaomi/geq/data/Preset;->getName()Ljava/lang/String;

    move-result-object v87

    .line 78
    sget-object v2, Landroidx/compose/material3/ExposedDropdownMenuDefaults;->INSTANCE:Landroidx/compose/material3/ExposedDropdownMenuDefaults;

    sget v3, Landroidx/compose/material3/ExposedDropdownMenuDefaults;->$stable:I

    shl-int/lit8 v84, v3, 0x1b

    const v85, 0x7fffffff

    const/16 v86, 0xff

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v16, 0x0

    move/from16 v115, v13

    move-wide/from16 v13, v16

    move-wide/from16 v15, v16

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    const-wide/16 v28, 0x0

    const-wide/16 v30, 0x0

    const-wide/16 v32, 0x0

    const-wide/16 v34, 0x0

    const-wide/16 v36, 0x0

    const-wide/16 v38, 0x0

    const-wide/16 v40, 0x0

    const-wide/16 v42, 0x0

    const-wide/16 v44, 0x0

    const-wide/16 v46, 0x0

    const-wide/16 v48, 0x0

    const-wide/16 v50, 0x0

    const-wide/16 v52, 0x0

    const-wide/16 v54, 0x0

    const-wide/16 v56, 0x0

    const-wide/16 v58, 0x0

    const-wide/16 v60, 0x0

    const-wide/16 v62, 0x0

    const-wide/16 v64, 0x0

    const-wide/16 v66, 0x0

    const-wide/16 v68, 0x0

    const-wide/16 v70, 0x0

    const-wide/16 v72, 0x0

    const-wide/16 v74, 0x0

    const-wide/16 v76, 0x0

    const-wide/16 v78, 0x0

    const/16 v81, 0x0

    const/16 v82, 0x0

    const/16 v83, 0x0

    move-object/from16 v80, p2

    invoke-virtual/range {v2 .. v86}, Landroidx/compose/material3/ExposedDropdownMenuDefaults;->textFieldColors-FD9MK7s(JJJJJJJJJJLandroidx/compose/foundation/text/selection/TextSelectionColors;JJJJJJJJJJJJJJJJJJJJJJJJJJJJLandroidx/compose/runtime/Composer;IIIIII)Landroidx/compose/material3/TextFieldColors;

    move-result-object v109

    .line 79
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    invoke-virtual {v1, v2}, Landroidx/compose/material3/ExposedDropdownMenuBoxScope;->menuAnchor(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 81
    sget-object v3, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$1$2$1;->INSTANCE:Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$1$2$1;

    invoke-static {v2, v3}, Landroidx/compose/ui/focus/FocusPropertiesKt;->focusProperties(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v89

    .line 63
    sget-object v88, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$1$2$2;->INSTANCE:Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$1$2$2;

    .line 66
    sget-object v2, Lco/aospa/dolby/xiaomi/geq/ui/ComposableSingletons$PresetSelectorKt;->INSTANCE:Lco/aospa/dolby/xiaomi/geq/ui/ComposableSingletons$PresetSelectorKt;

    invoke-virtual {v2}, Lco/aospa/dolby/xiaomi/geq/ui/ComposableSingletons$PresetSelectorKt;->getLambda-1$hardware__xiaomi__dolby__android_common__XiaomiDolby()Lkotlin/jvm/functions/Function2;

    move-result-object v93

    .line 73
    new-instance v2, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$1$2$3;

    iget-object v3, v0, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$1$2;->$expanded$delegate:Landroidx/compose/runtime/MutableState;

    invoke-direct {v2, v3}, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$1$2$3;-><init>(Landroidx/compose/runtime/MutableState;)V

    const/16 v3, 0x36

    const/4 v4, 0x1

    const v5, 0x5adf7301

    move-object/from16 v14, p2

    invoke-static {v5, v4, v2, v14, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v96

    const/16 v113, 0x0

    const v114, 0x3dfda8

    const/16 v90, 0x0

    const/16 v91, 0x1

    const/16 v92, 0x0

    const/16 v94, 0x0

    const/16 v95, 0x0

    const/16 v97, 0x0

    const/16 v98, 0x0

    const/16 v99, 0x0

    const/16 v100, 0x0

    const/16 v101, 0x0

    const/16 v102, 0x0

    const/16 v103, 0x0

    const/16 v104, 0x1

    const/16 v105, 0x0

    const/16 v106, 0x0

    const/16 v107, 0x0

    const/16 v108, 0x0

    const v111, 0x30186030

    const/high16 v112, 0xc00000

    move-object/from16 v110, p2

    .line 63
    invoke-static/range {v87 .. v114}, Landroidx/compose/material3/TextFieldKt;->TextField(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/runtime/Composer;IIII)V

    .line 84
    iget-object v2, v0, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$1$2;->$expanded$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v2}, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt;->access$PresetSelector$lambda$3(Landroidx/compose/runtime/MutableState;)Z

    move-result v2

    const v3, 0x238d92d0

    invoke-interface {v14, v3}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 85
    iget-object v3, v0, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$1$2;->$expanded$delegate:Landroidx/compose/runtime/MutableState;

    .line 1166
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .line 1167
    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v4, v5, :cond_5

    .line 85
    new-instance v4, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$1$2$4$1;

    invoke-direct {v4, v3}, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$1$2$4$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    .line 1169
    invoke-interface {v14, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 85
    :cond_5
    move-object v3, v4

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 86
    new-instance v4, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$1$2$5;

    iget-object v5, v0, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$1$2;->$presets$delegate:Landroidx/compose/runtime/State;

    iget-object v6, v0, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$1$2;->$viewModel:Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;

    iget-object v0, v0, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$1$2;->$expanded$delegate:Landroidx/compose/runtime/MutableState;

    invoke-direct {v4, v5, v6, v0}, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$1$2$5;-><init>(Landroidx/compose/runtime/State;Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;Landroidx/compose/runtime/MutableState;)V

    const/16 v0, 0x36

    const/4 v5, 0x1

    const v6, 0xd131a5c

    invoke-static {v6, v5, v4, v14, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v13

    sget v0, Landroidx/compose/material3/ExposedDropdownMenuBoxScope;->$stable:I

    shl-int/lit8 v0, v0, 0x3

    or-int/lit8 v0, v0, 0x6

    shl-int/lit8 v4, v115, 0x3

    and-int/lit8 v4, v4, 0x70

    or-int v16, v0, v4

    const/16 v17, 0x3fc

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v15, 0x30

    move-object/from16 v1, p1

    move-object/from16 v14, p2

    .line 83
    invoke-virtual/range {v1 .. v17}, Landroidx/compose/material3/ExposedDropdownMenuBoxScope;->ExposedDropdownMenu-vNxi1II(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;ZLandroidx/compose/ui/graphics/Shape;JFFLandroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_6
    :goto_3
    return-void
.end method
