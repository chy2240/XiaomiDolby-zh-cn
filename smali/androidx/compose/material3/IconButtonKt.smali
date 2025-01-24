.class public abstract Landroidx/compose/material3/IconButtonKt;
.super Ljava/lang/Object;
.source "IconButton.kt"


# direct methods
.method public static final IconButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 22

    move-object/from16 v7, p6

    move/from16 v8, p8

    const/16 v0, 0x10

    const/4 v1, 0x2

    const/4 v2, 0x4

    const/4 v3, 0x6

    const/16 v4, 0x20

    const v5, -0x5405cca7

    move-object/from16 v6, p7

    .line 182
    invoke-interface {v6, v5}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v6

    const/4 v9, 0x1

    and-int/lit8 v10, p9, 0x1

    if-eqz v10, :cond_0

    or-int/lit8 v10, v8, 0x6

    move v11, v10

    move-object/from16 v10, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v10, v8, 0x6

    if-nez v10, :cond_2

    move-object/from16 v10, p0

    invoke-interface {v6, v10}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    move v11, v2

    goto :goto_0

    :cond_1
    move v11, v1

    :goto_0
    or-int/2addr v11, v8

    goto :goto_1

    :cond_2
    move-object/from16 v10, p0

    move v11, v8

    :goto_1
    and-int/lit8 v1, p9, 0x2

    if-eqz v1, :cond_4

    or-int/lit8 v11, v11, 0x30

    :cond_3
    move-object/from16 v12, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v12, v8, 0x30

    if-nez v12, :cond_3

    move-object/from16 v12, p1

    invoke-interface {v6, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    move v13, v4

    goto :goto_2

    :cond_5
    move v13, v0

    :goto_2
    or-int/2addr v11, v13

    :goto_3
    and-int/lit8 v2, p9, 0x4

    if-eqz v2, :cond_7

    or-int/lit16 v11, v11, 0x180

    :cond_6
    move/from16 v13, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v13, v8, 0x180

    if-nez v13, :cond_6

    move/from16 v13, p2

    invoke-interface {v6, v13}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v14

    if-eqz v14, :cond_8

    const/16 v14, 0x100

    goto :goto_4

    :cond_8
    const/16 v14, 0x80

    :goto_4
    or-int/2addr v11, v14

    :goto_5
    and-int/lit16 v14, v8, 0xc00

    if-nez v14, :cond_b

    and-int/lit8 v14, p9, 0x8

    if-nez v14, :cond_9

    move-object/from16 v14, p3

    invoke-interface {v6, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    const/16 v15, 0x800

    goto :goto_6

    :cond_9
    move-object/from16 v14, p3

    :cond_a
    const/16 v15, 0x400

    :goto_6
    or-int/2addr v11, v15

    goto :goto_7

    :cond_b
    move-object/from16 v14, p3

    :goto_7
    and-int/lit8 v0, p9, 0x10

    if-eqz v0, :cond_d

    or-int/lit16 v11, v11, 0x6000

    :cond_c
    move-object/from16 v15, p4

    goto :goto_9

    :cond_d
    and-int/lit16 v15, v8, 0x6000

    if-nez v15, :cond_c

    move-object/from16 v15, p4

    invoke-interface {v6, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_e

    const/16 v16, 0x4000

    goto :goto_8

    :cond_e
    const/16 v16, 0x2000

    :goto_8
    or-int v11, v11, v16

    :goto_9
    const/high16 v16, 0x30000

    and-int v16, v8, v16

    if-nez v16, :cond_10

    and-int/lit8 v16, p9, 0x20

    move-object/from16 v5, p5

    if-nez v16, :cond_f

    invoke-interface {v6, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_f

    const/high16 v17, 0x20000

    goto :goto_a

    :cond_f
    const/high16 v17, 0x10000

    :goto_a
    or-int v11, v11, v17

    goto :goto_b

    :cond_10
    move-object/from16 v5, p5

    :goto_b
    and-int/lit8 v17, p9, 0x40

    const/high16 v18, 0x180000

    if-eqz v17, :cond_11

    or-int v11, v11, v18

    goto :goto_d

    :cond_11
    and-int v17, v8, v18

    if-nez v17, :cond_13

    invoke-interface {v6, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_12

    const/high16 v17, 0x100000

    goto :goto_c

    :cond_12
    const/high16 v17, 0x80000

    :goto_c
    or-int v11, v11, v17

    :cond_13
    :goto_d
    const v17, 0x92493

    and-int v3, v11, v17

    const v4, 0x92492

    if-ne v3, v4, :cond_15

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_14

    goto :goto_e

    .line 206
    :cond_14
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object v8, v5

    move-object v2, v12

    move v3, v13

    move-object v4, v14

    move-object v5, v15

    goto/16 :goto_17

    .line 182
    :cond_15
    :goto_e
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v3, v8, 0x1

    const v4, -0x70001

    const/4 v15, 0x0

    if-eqz v3, :cond_19

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v3

    if-eqz v3, :cond_16

    goto :goto_10

    .line 180
    :cond_16
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, p9, 0x8

    if-eqz v0, :cond_17

    and-int/lit16 v11, v11, -0x1c01

    :cond_17
    const/16 v0, 0x20

    and-int/lit8 v0, p9, 0x20

    if-eqz v0, :cond_18

    and-int/2addr v11, v4

    :cond_18
    move-object/from16 v3, p4

    :goto_f
    move v4, v11

    move-object v0, v12

    move v1, v13

    move-object v2, v14

    goto :goto_14

    :cond_19
    :goto_10
    if-eqz v1, :cond_1a

    .line 176
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v12, v1

    :cond_1a
    if-eqz v2, :cond_1b

    move v13, v9

    :cond_1b
    and-int/lit8 v1, p9, 0x8

    if-eqz v1, :cond_1c

    .line 178
    sget-object v1, Landroidx/compose/material3/IconButtonDefaults;->INSTANCE:Landroidx/compose/material3/IconButtonDefaults;

    const/4 v2, 0x6

    invoke-virtual {v1, v6, v2}, Landroidx/compose/material3/IconButtonDefaults;->iconButtonLocalContentColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/IconButtonColors;

    move-result-object v1

    and-int/lit16 v11, v11, -0x1c01

    move-object v14, v1

    goto :goto_11

    :cond_1c
    const/4 v2, 0x6

    :goto_11
    if-eqz v0, :cond_1d

    move-object v0, v15

    :goto_12
    const/16 v1, 0x20

    goto :goto_13

    :cond_1d
    move-object/from16 v0, p4

    goto :goto_12

    :goto_13
    and-int/lit8 v1, p9, 0x20

    if-eqz v1, :cond_1e

    .line 180
    sget-object v1, Landroidx/compose/material3/IconButtonDefaults;->INSTANCE:Landroidx/compose/material3/IconButtonDefaults;

    invoke-virtual {v1, v6, v2}, Landroidx/compose/material3/IconButtonDefaults;->getStandardShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v1

    and-int/2addr v11, v4

    move-object v3, v0

    move-object v5, v1

    goto :goto_f

    :cond_1e
    move-object v3, v0

    goto :goto_f

    :goto_14
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v11

    if-eqz v11, :cond_1f

    const/4 v11, -0x1

    const-string v12, "androidx.compose.material3.IconButton (IconButton.kt:181)"

    const v13, -0x5405cca7

    .line 182
    invoke-static {v13, v4, v11, v12}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_1f
    const v11, -0x458a1d76

    .line 184
    invoke-interface {v6, v11}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    if-nez v3, :cond_21

    .line 1166
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    .line 1167
    sget-object v12, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v12}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v12

    if-ne v11, v12, :cond_20

    .line 184
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v11

    .line 1169
    invoke-interface {v6, v11}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 184
    :cond_20
    check-cast v11, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-object v14, v11

    goto :goto_15

    :cond_21
    move-object v14, v3

    :goto_15
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 188
    invoke-static {v0}, Landroidx/compose/material3/InteractiveComponentSizeKt;->minimumInteractiveComponentSize(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v11

    .line 189
    sget-object v12, Landroidx/compose/material3/IconButtonDefaults;->INSTANCE:Landroidx/compose/material3/IconButtonDefaults;

    const/4 v13, 0x0

    invoke-static {v12, v13, v9, v15}, Landroidx/compose/material3/IconButtonDefaults;->smallContainerSize-N-wlBFI$default(Landroidx/compose/material3/IconButtonDefaults;IILjava/lang/Object;)J

    move-result-wide v7

    invoke-static {v11, v7, v8}, Landroidx/compose/foundation/layout/SizeKt;->size-6HolHcs(Landroidx/compose/ui/Modifier;J)Landroidx/compose/ui/Modifier;

    move-result-object v7

    .line 190
    invoke-static {v7, v5}, Landroidx/compose/ui/draw/ClipKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    .line 191
    invoke-virtual {v2, v1}, Landroidx/compose/material3/IconButtonColors;->containerColor-vNxB06k$material3_release(Z)J

    move-result-wide v11

    invoke-static {v7, v11, v12, v5}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v11

    .line 195
    sget-object v7, Landroidx/compose/ui/semantics/Role;->Companion:Landroidx/compose/ui/semantics/Role$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/semantics/Role$Companion;->getButton-o7Vup1c()I

    move-result v7

    const/16 v20, 0x7

    const/16 v21, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    .line 197
    invoke-static/range {v16 .. v21}, Landroidx/compose/material3/RippleKt;->ripple-H2RKhps$default(ZFJILjava/lang/Object;)Landroidx/compose/foundation/IndicationNodeFactory;

    move-result-object v8

    .line 195
    invoke-static {v7}, Landroidx/compose/ui/semantics/Role;->box-impl(I)Landroidx/compose/ui/semantics/Role;

    move-result-object v16

    const/16 v18, 0x8

    const/16 v19, 0x0

    const/4 v7, 0x0

    move-object v12, v14

    move-object v13, v8

    move-object v8, v14

    move v14, v1

    move-object/from16 p1, v0

    move-object v0, v15

    move-object v15, v7

    move-object/from16 v17, p0

    .line 192
    invoke-static/range {v11 .. v19}, Landroidx/compose/foundation/ClickableKt;->clickable-O2vRcR0$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    .line 199
    invoke-static {v7, v0, v9, v0}, Landroidx/compose/material3/internal/ChildParentSemanticsKt;->childSemantics$default(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 200
    invoke-static {v0, v8}, Landroidx/compose/material3/InteractionSourceModifierNodeKt;->interactionSourceData(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 201
    sget-object v7, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/Alignment$Companion;->getCenter()Landroidx/compose/ui/Alignment;

    move-result-object v7

    const/4 v8, 0x0

    .line 72
    invoke-static {v7, v8}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v7

    .line 80
    invoke-static {v6, v8}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v8

    .line 81
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v9

    .line 82
    invoke-static {v6, v0}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 2265
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v11}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v12

    .line 2267
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v13

    if-nez v13, :cond_22

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 2268
    :cond_22
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 2269
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v13

    if-eqz v13, :cond_23

    .line 2270
    invoke-interface {v6, v12}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_16

    .line 2272
    :cond_23
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 2274
    :goto_16
    invoke-static {v6}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v12

    .line 86
    invoke-virtual {v11}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v13

    invoke-static {v12, v7, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 87
    invoke-virtual {v11}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v7

    invoke-static {v12, v9, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 89
    invoke-virtual {v11}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v7

    .line 2280
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v9

    if-nez v9, :cond_24

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v9, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_25

    .line 2281
    :cond_24
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v12, v9}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 2282
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v12, v8, v7}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 2285
    :cond_25
    invoke-virtual {v11}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v7

    invoke-static {v12, v0, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 2288
    sget-object v0, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 203
    invoke-virtual {v2, v1}, Landroidx/compose/material3/IconButtonColors;->contentColor-vNxB06k$material3_release(Z)J

    move-result-wide v7

    .line 204
    invoke-static {}, Landroidx/compose/material3/ContentColorKt;->getLocalContentColor()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    invoke-static {v7, v8}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v0

    sget v7, Landroidx/compose/runtime/ProvidedValue;->$stable:I

    shr-int/lit8 v4, v4, 0xf

    and-int/lit8 v4, v4, 0x70

    or-int/2addr v4, v7

    move-object/from16 v7, p6

    invoke-static {v0, v7, v6, v4}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 2289
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 2292
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_26
    move-object v4, v2

    move-object v8, v5

    move-object/from16 v2, p1

    move-object v5, v3

    move v3, v1

    .line 206
    :goto_17
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v11

    if-eqz v11, :cond_27

    new-instance v12, Landroidx/compose/material3/IconButtonKt$IconButton$3;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object v6, v8

    move-object/from16 v7, p6

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Landroidx/compose/material3/IconButtonKt$IconButton$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function2;II)V

    invoke-interface {v11, v12}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_27
    return-void
.end method
