.class public abstract Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt;
.super Ljava/lang/Object;
.source "PresetSelector.kt"


# direct methods
.method public static final PresetSelector(Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;Landroidx/compose/runtime/Composer;I)V
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p2

    const-string v2, "viewModel"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, -0x5f72e06c

    move-object/from16 v3, p1

    .line 40
    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v10

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, -0x1

    const-string v4, "co.aospa.dolby.xiaomi.geq.ui.PresetSelector (PresetSelector.kt:39)"

    invoke-static {v2, v1, v3, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 41
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;->getPresets()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x1

    invoke-static {v2, v3, v10, v4, v5}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v2

    .line 42
    invoke-virtual/range {p0 .. p0}, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;->getPreset()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v6

    invoke-static {v6, v3, v10, v4, v5}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v11

    const v6, 0x63aa43b2

    invoke-interface {v10, v6}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 1166
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    .line 1167
    sget-object v12, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v12}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    const/4 v8, 0x2

    if-ne v6, v7, :cond_1

    .line 43
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v6, v3, v8, v3}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v6

    .line 1169
    invoke-interface {v10, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 43
    :cond_1
    check-cast v6, Landroidx/compose/runtime/MutableState;

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const v7, 0x63aa43f4

    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 1166
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    .line 1167
    invoke-virtual {v12}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v9

    if-ne v7, v9, :cond_2

    .line 44
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v7, v3, v8, v3}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v7

    .line 1169
    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 44
    :cond_2
    move-object v13, v7

    check-cast v13, Landroidx/compose/runtime/MutableState;

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const v7, 0x63aa4439

    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 1166
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    .line 1167
    invoke-virtual {v12}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v9

    if-ne v7, v9, :cond_3

    .line 45
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v7, v3, v8, v3}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v7

    .line 1169
    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 45
    :cond_3
    move-object v14, v7

    check-cast v14, Landroidx/compose/runtime/MutableState;

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const v7, 0x63aa447f

    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 1166
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    .line 1167
    invoke-virtual {v12}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v9

    if-ne v7, v9, :cond_4

    .line 46
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v7, v3, v8, v3}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v7

    .line 1169
    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 46
    :cond_4
    move-object v15, v7

    check-cast v15, Landroidx/compose/runtime/MutableState;

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const v7, 0x63aa44c4

    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 1166
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    .line 1167
    invoke-virtual {v12}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v9

    if-ne v7, v9, :cond_5

    .line 47
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v7, v3, v8, v3}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v7

    .line 1169
    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 47
    :cond_5
    move-object v9, v7

    check-cast v9, Landroidx/compose/runtime/MutableState;

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 50
    sget-object v7, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    const/4 v8, 0x0

    .line 51
    invoke-static {v7, v8, v5, v3}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v16

    const/16 v3, 0x18

    int-to-float v3, v3

    .line 109
    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v20

    const/16 v21, 0x7

    const/16 v22, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 52
    invoke-static/range {v16 .. v22}, Landroidx/compose/foundation/layout/PaddingKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 53
    sget-object v8, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v8}, Landroidx/compose/foundation/layout/Arrangement;->getStart()Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    move-result-object v8

    .line 54
    sget-object v16, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/Alignment$Companion;->getCenterVertically()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v5

    const/16 v4, 0x36

    .line 99
    invoke-static {v8, v5, v10, v4}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v5

    const/4 v8, 0x0

    .line 79
    invoke-static {v10, v8}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v17

    .line 80
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v8

    .line 81
    invoke-static {v10, v3}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 83
    sget-object v18, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v4

    .line 348
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v19

    if-nez v19, :cond_6

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 349
    :cond_6
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 350
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v19

    if-eqz v19, :cond_7

    .line 351
    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    .line 353
    :cond_7
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 355
    :goto_0
    invoke-static {v10}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v4

    move-object/from16 v23, v9

    .line 85
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v9

    invoke-static {v4, v5, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 86
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    invoke-static {v4, v8, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 87
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    .line 4045
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v8

    if-nez v8, :cond_8

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 4046
    :cond_8
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 4047
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v8, v5}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 88
    :cond_9
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    invoke-static {v4, v3, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 101
    sget-object v3, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    .line 57
    invoke-static {v6}, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt;->PresetSelector$lambda$3(Landroidx/compose/runtime/MutableState;)Z

    move-result v4

    const v5, -0x725f40be

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 1166
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .line 1167
    invoke-virtual {v12}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v8

    if-ne v5, v8, :cond_a

    .line 58
    new-instance v5, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$1$1$1;

    invoke-direct {v5, v6}, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$1$1$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    .line 1169
    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 58
    :cond_a
    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const/16 v8, 0x8

    int-to-float v8, v8

    .line 109
    invoke-static {v8}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v19

    const/16 v21, 0xb

    const/16 v22, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    move-object/from16 v16, v7

    .line 60
    invoke-static/range {v16 .. v22}, Landroidx/compose/foundation/layout/PaddingKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v18

    const/16 v21, 0x2

    const/high16 v19, 0x3f800000    # 1.0f

    const/16 v20, 0x0

    move-object/from16 v17, v3

    .line 61
    invoke-static/range {v17 .. v22}, Landroidx/compose/foundation/layout/RowScope;->weight$default(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/ui/Modifier;FZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    .line 62
    new-instance v3, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$1$2;

    invoke-direct {v3, v11, v6, v2, v0}, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$1$2;-><init>(Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;)V

    const v2, 0x682e33da

    const/4 v6, 0x1

    const/16 v8, 0x36

    invoke-static {v2, v6, v3, v10, v8}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v6

    const/16 v8, 0xc30

    const/4 v9, 0x0

    move v3, v4

    move-object v4, v5

    move-object v5, v7

    move-object v7, v10

    const/4 v2, 0x0

    move-object/from16 v2, v23

    .line 56
    invoke-static/range {v3 .. v9}, Landroidx/compose/material3/ExposedDropdownMenu_androidKt;->ExposedDropdownMenuBox(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 100
    sget-object v3, Landroidx/compose/ui/graphics/vector/ImageVector;->Companion:Landroidx/compose/ui/graphics/vector/ImageVector$Companion;

    const v4, 0x7f080196

    const/16 v5, 0x38

    invoke-static {v3, v4, v10, v5}, Landroidx/compose/ui/res/VectorResources_androidKt;->vectorResource(Landroidx/compose/ui/graphics/vector/ImageVector$Companion;ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v4

    const v6, 0x7f110183

    const/4 v9, 0x6

    .line 103
    invoke-static {v6, v10, v9}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v7

    const v8, -0x725f3a56

    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 1166
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    .line 1167
    invoke-virtual {v12}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v8, v6, :cond_b

    .line 104
    new-instance v8, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$1$3$1;

    invoke-direct {v8, v13}, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$1$3$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    .line 1169
    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 104
    :cond_b
    check-cast v8, Lkotlin/jvm/functions/Function0;

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const/16 v6, 0x180

    .line 99
    invoke-static {v4, v7, v8, v10, v6}, Lco/aospa/dolby/xiaomi/geq/ui/TooltipIconButtonKt;->TooltipIconButton(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    const v4, -0x725f3a24

    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 107
    invoke-static {v11}, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt;->PresetSelector$lambda$1(Landroidx/compose/runtime/State;)Lco/aospa/dolby/xiaomi/geq/data/Preset;

    move-result-object v4

    invoke-virtual {v4}, Lco/aospa/dolby/xiaomi/geq/data/Preset;->isUserDefined()Z

    move-result v4

    const v8, 0x7f110188

    if-eqz v4, :cond_e

    .line 109
    sget-object v4, Landroidx/compose/material/icons/Icons;->INSTANCE:Landroidx/compose/material/icons/Icons;

    invoke-virtual {v4}, Landroidx/compose/material/icons/Icons;->getDefault()Landroidx/compose/material/icons/Icons$Filled;

    move-result-object v7

    invoke-static {v7}, Landroidx/compose/material/icons/filled/EditKt;->getEdit(Landroidx/compose/material/icons/Icons$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v7

    .line 110
    invoke-static {v8, v10, v9}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v5

    const v8, -0x725f394f

    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 1166
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    .line 1167
    invoke-virtual {v12}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v9

    if-ne v8, v9, :cond_c

    .line 111
    new-instance v8, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$1$4$1;

    invoke-direct {v8, v14}, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$1$4$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    .line 1169
    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 111
    :cond_c
    check-cast v8, Lkotlin/jvm/functions/Function0;

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 108
    invoke-static {v7, v5, v8, v10, v6}, Lco/aospa/dolby/xiaomi/geq/ui/TooltipIconButtonKt;->TooltipIconButton(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 114
    invoke-virtual {v4}, Landroidx/compose/material/icons/Icons;->getDefault()Landroidx/compose/material/icons/Icons$Filled;

    move-result-object v4

    invoke-static {v4}, Landroidx/compose/material/icons/filled/DeleteKt;->getDelete(Landroidx/compose/material/icons/Icons$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v4

    const v5, 0x7f110181

    const/4 v7, 0x6

    .line 115
    invoke-static {v5, v10, v7}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v5

    const v7, -0x725f386b

    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 1166
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    .line 1167
    invoke-virtual {v12}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v8

    if-ne v7, v8, :cond_d

    .line 116
    new-instance v7, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$1$5$1;

    invoke-direct {v7, v15}, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$1$5$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    .line 1169
    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 116
    :cond_d
    check-cast v7, Lkotlin/jvm/functions/Function0;

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 113
    invoke-static {v4, v5, v7, v10, v6}, Lco/aospa/dolby/xiaomi/geq/ui/TooltipIconButtonKt;->TooltipIconButton(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    :cond_e
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const v4, 0x7f080192

    const/16 v5, 0x38

    .line 121
    invoke-static {v3, v4, v10, v5}, Landroidx/compose/ui/res/VectorResources_androidKt;->vectorResource(Landroidx/compose/ui/graphics/vector/ImageVector$Companion;ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v3

    const v4, 0x7f110189

    const/4 v9, 0x6

    .line 124
    invoke-static {v4, v10, v9}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v4

    .line 120
    new-instance v5, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$1$6;

    invoke-direct {v5, v0, v11, v2}, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$1$6;-><init>(Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;)V

    const/4 v7, 0x0

    invoke-static {v3, v4, v5, v10, v7}, Lco/aospa/dolby/xiaomi/geq/ui/TooltipIconButtonKt;->TooltipIconButton(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 357
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endNode()V

    const v3, 0x63aa5086

    .line 105
    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 137
    invoke-static {v13}, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt;->PresetSelector$lambda$6(Landroidx/compose/runtime/MutableState;)Z

    move-result v3

    if-eqz v3, :cond_10

    const v3, 0x7f110183

    .line 139
    invoke-static {v3, v10, v9}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v3

    .line 138
    new-instance v5, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$2;

    invoke-direct {v5, v0}, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$2;-><init>(Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;)V

    const v4, 0x63aa519d

    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 1166
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .line 1167
    invoke-virtual {v12}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v4, v7, :cond_f

    .line 143
    new-instance v4, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$3$1;

    invoke-direct {v4, v13}, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$3$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    .line 1169
    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 143
    :cond_f
    move-object v7, v4

    check-cast v7, Lkotlin/jvm/functions/Function0;

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const/16 v8, 0xc00

    const/4 v13, 0x2

    const/4 v4, 0x0

    move-object v6, v7

    move-object v7, v10

    move v1, v9

    move v9, v13

    .line 138
    invoke-static/range {v3 .. v9}, Lco/aospa/dolby/xiaomi/geq/ui/PresetNameDialogKt;->PresetNameDialog(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    goto :goto_1

    :cond_10
    move v1, v9

    :goto_1
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const v3, 0x63aa51d2

    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 147
    invoke-static {v14}, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt;->PresetSelector$lambda$9(Landroidx/compose/runtime/MutableState;)Z

    move-result v3

    if-eqz v3, :cond_12

    const v3, 0x7f110188

    .line 149
    invoke-static {v3, v10, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v3

    .line 150
    invoke-static {v11}, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt;->PresetSelector$lambda$1(Landroidx/compose/runtime/State;)Lco/aospa/dolby/xiaomi/geq/data/Preset;

    move-result-object v4

    invoke-virtual {v4}, Lco/aospa/dolby/xiaomi/geq/data/Preset;->getName()Ljava/lang/String;

    move-result-object v4

    .line 148
    new-instance v5, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$4;

    invoke-direct {v5, v0, v11}, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$4;-><init>(Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;Landroidx/compose/runtime/State;)V

    const v6, 0x63aa536b

    invoke-interface {v10, v6}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 1166
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    .line 1167
    invoke-virtual {v12}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v6, v7, :cond_11

    .line 157
    new-instance v6, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$5$1;

    invoke-direct {v6, v14}, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$5$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    .line 1169
    invoke-interface {v10, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 157
    :cond_11
    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const/16 v8, 0xc00

    const/4 v9, 0x0

    move-object v7, v10

    .line 148
    invoke-static/range {v3 .. v9}, Lco/aospa/dolby/xiaomi/geq/ui/PresetNameDialogKt;->PresetNameDialog(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    :cond_12
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const v3, 0x63aa53a3

    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 161
    invoke-static {v15}, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt;->PresetSelector$lambda$12(Landroidx/compose/runtime/MutableState;)Z

    move-result v3

    if-eqz v3, :cond_14

    const v3, 0x7f110182

    .line 163
    invoke-static {v3, v10, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v3

    .line 162
    new-instance v4, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$6;

    invoke-direct {v4, v0, v11}, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$6;-><init>(Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;Landroidx/compose/runtime/State;)V

    const v5, 0x63aa548a

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 1166
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .line 1167
    invoke-virtual {v12}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v5, v6, :cond_13

    .line 165
    new-instance v5, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$7$1;

    invoke-direct {v5, v15}, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$7$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    .line 1169
    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 165
    :cond_13
    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const/16 v6, 0x180

    .line 162
    invoke-static {v3, v4, v5, v10, v6}, Lco/aospa/dolby/xiaomi/geq/ui/ConfirmationDialogKt;->ConfirmationDialog(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    goto :goto_2

    :cond_14
    const/16 v6, 0x180

    :goto_2
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 169
    invoke-static {v2}, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt;->PresetSelector$lambda$15(Landroidx/compose/runtime/MutableState;)Z

    move-result v3

    if-eqz v3, :cond_16

    const v3, 0x7f11018a

    .line 171
    invoke-static {v3, v10, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v1

    .line 170
    new-instance v3, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$8;

    invoke-direct {v3, v0}, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$8;-><init>(Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;)V

    const v4, 0x63aa5593

    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 1166
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .line 1167
    invoke-virtual {v12}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v4, v5, :cond_15

    .line 173
    new-instance v4, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$9$1;

    invoke-direct {v4, v2}, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$9$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    .line 1169
    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 173
    :cond_15
    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 170
    invoke-static {v1, v3, v4, v10, v6}, Lco/aospa/dolby/xiaomi/geq/ui/ConfirmationDialogKt;->ConfirmationDialog(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    :cond_16
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_17
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v1

    if-eqz v1, :cond_18

    new-instance v2, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$10;

    move/from16 v3, p2

    invoke-direct {v2, v0, v3}, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$10;-><init>(Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;I)V

    invoke-interface {v1, v2}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_18
    return-void
.end method

.method private static final PresetSelector$lambda$0(Landroidx/compose/runtime/State;)Ljava/util/List;
    .locals 0

    .line 81
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static final PresetSelector$lambda$1(Landroidx/compose/runtime/State;)Lco/aospa/dolby/xiaomi/geq/data/Preset;
    .locals 0

    .line 81
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lco/aospa/dolby/xiaomi/geq/data/Preset;

    return-object p0
.end method

.method private static final PresetSelector$lambda$10(Landroidx/compose/runtime/MutableState;Z)V
    .locals 0

    .line 45
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 109
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private static final PresetSelector$lambda$12(Landroidx/compose/runtime/MutableState;)Z
    .locals 0

    .line 81
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final PresetSelector$lambda$13(Landroidx/compose/runtime/MutableState;Z)V
    .locals 0

    .line 46
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 109
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private static final PresetSelector$lambda$15(Landroidx/compose/runtime/MutableState;)Z
    .locals 0

    .line 81
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final PresetSelector$lambda$16(Landroidx/compose/runtime/MutableState;Z)V
    .locals 0

    .line 47
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 109
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private static final PresetSelector$lambda$3(Landroidx/compose/runtime/MutableState;)Z
    .locals 0

    .line 81
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final PresetSelector$lambda$4(Landroidx/compose/runtime/MutableState;Z)V
    .locals 0

    .line 43
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 109
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private static final PresetSelector$lambda$6(Landroidx/compose/runtime/MutableState;)Z
    .locals 0

    .line 81
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final PresetSelector$lambda$7(Landroidx/compose/runtime/MutableState;Z)V
    .locals 0

    .line 44
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 109
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private static final PresetSelector$lambda$9(Landroidx/compose/runtime/MutableState;)Z
    .locals 0

    .line 81
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$PresetSelector$lambda$0(Landroidx/compose/runtime/State;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0}, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt;->PresetSelector$lambda$0(Landroidx/compose/runtime/State;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$PresetSelector$lambda$1(Landroidx/compose/runtime/State;)Lco/aospa/dolby/xiaomi/geq/data/Preset;
    .locals 0

    .line 1
    invoke-static {p0}, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt;->PresetSelector$lambda$1(Landroidx/compose/runtime/State;)Lco/aospa/dolby/xiaomi/geq/data/Preset;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$PresetSelector$lambda$10(Landroidx/compose/runtime/MutableState;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt;->PresetSelector$lambda$10(Landroidx/compose/runtime/MutableState;Z)V

    return-void
.end method

.method public static final synthetic access$PresetSelector$lambda$13(Landroidx/compose/runtime/MutableState;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt;->PresetSelector$lambda$13(Landroidx/compose/runtime/MutableState;Z)V

    return-void
.end method

.method public static final synthetic access$PresetSelector$lambda$16(Landroidx/compose/runtime/MutableState;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt;->PresetSelector$lambda$16(Landroidx/compose/runtime/MutableState;Z)V

    return-void
.end method

.method public static final synthetic access$PresetSelector$lambda$3(Landroidx/compose/runtime/MutableState;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt;->PresetSelector$lambda$3(Landroidx/compose/runtime/MutableState;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$PresetSelector$lambda$4(Landroidx/compose/runtime/MutableState;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt;->PresetSelector$lambda$4(Landroidx/compose/runtime/MutableState;Z)V

    return-void
.end method

.method public static final synthetic access$PresetSelector$lambda$7(Landroidx/compose/runtime/MutableState;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt;->PresetSelector$lambda$7(Landroidx/compose/runtime/MutableState;Z)V

    return-void
.end method
