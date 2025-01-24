.class public abstract Lco/aospa/dolby/xiaomi/geq/ui/PresetNameDialogKt;
.super Ljava/lang/Object;
.source "PresetNameDialog.kt"


# direct methods
.method public static final PresetNameDialog(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V
    .locals 28

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p5

    const-string v0, "title"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onPresetNameSet"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onDismissDialog"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7a480f91

    move-object/from16 v2, p4

    .line 32
    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v2

    and-int/lit8 v6, p6, 0x1

    const/4 v7, 0x2

    if-eqz v6, :cond_0

    or-int/lit8 v6, v5, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v6, v5, 0xe

    if-nez v6, :cond_2

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x4

    goto :goto_0

    :cond_1
    move v6, v7

    :goto_0
    or-int/2addr v6, v5

    goto :goto_1

    :cond_2
    move v6, v5

    :goto_1
    and-int/lit8 v8, p6, 0x2

    if-eqz v8, :cond_4

    or-int/lit8 v6, v6, 0x30

    :cond_3
    move-object/from16 v9, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v9, v5, 0x70

    if-nez v9, :cond_3

    move-object/from16 v9, p1

    invoke-interface {v2, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/16 v10, 0x20

    goto :goto_2

    :cond_5
    const/16 v10, 0x10

    :goto_2
    or-int/2addr v6, v10

    :goto_3
    and-int/lit8 v10, p6, 0x4

    if-eqz v10, :cond_6

    or-int/lit16 v6, v6, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v10, v5, 0x380

    if-nez v10, :cond_8

    invoke-interface {v2, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const/16 v10, 0x100

    goto :goto_4

    :cond_7
    const/16 v10, 0x80

    :goto_4
    or-int/2addr v6, v10

    :cond_8
    :goto_5
    and-int/lit8 v10, p6, 0x8

    if-eqz v10, :cond_9

    or-int/lit16 v6, v6, 0xc00

    goto :goto_7

    :cond_9
    and-int/lit16 v10, v5, 0x1c00

    if-nez v10, :cond_b

    invoke-interface {v2, v4}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    const/16 v10, 0x800

    goto :goto_6

    :cond_a
    const/16 v10, 0x400

    :goto_6
    or-int/2addr v6, v10

    :cond_b
    :goto_7
    and-int/lit16 v10, v6, 0x16db

    const/16 v11, 0x492

    if-ne v10, v11, :cond_d

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v10

    if-nez v10, :cond_c

    goto :goto_8

    .line 94
    :cond_c
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_a

    :cond_d
    :goto_8
    if-eqz v8, :cond_e

    .line 29
    const-string v8, ""

    move-object v14, v8

    goto :goto_9

    :cond_e
    move-object v14, v9

    :goto_9
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v8

    if-eqz v8, :cond_f

    const/4 v8, -0x1

    const-string v9, "co.aospa.dolby.xiaomi.geq.ui.PresetNameDialog (PresetNameDialog.kt:31)"

    .line 32
    invoke-static {v0, v6, v8, v9}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_f
    const v0, -0x7eb61573

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 1166
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .line 1167
    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x0

    if-ne v0, v8, :cond_10

    .line 33
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v9, v7, v9}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    .line 1169
    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 33
    :cond_10
    check-cast v0, Landroidx/compose/runtime/MutableState;

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 34
    invoke-static {v0}, Lco/aospa/dolby/xiaomi/geq/ui/PresetNameDialogKt;->PresetNameDialog$lambda$1(Landroidx/compose/runtime/MutableState;)Z

    move-result v8

    if-nez v8, :cond_13

    .line 35
    invoke-interface/range {p3 .. p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_11
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v7

    if-eqz v7, :cond_12

    new-instance v8, Lco/aospa/dolby/xiaomi/geq/ui/PresetNameDialogKt$PresetNameDialog$1;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object v2, v14

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lco/aospa/dolby/xiaomi/geq/ui/PresetNameDialogKt$PresetNameDialog$1;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;II)V

    invoke-interface {v7, v8}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_12
    return-void

    :cond_13
    const v8, -0x7eb614fb

    .line 36
    invoke-interface {v2, v8}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 1166
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    .line 1167
    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v10

    if-ne v8, v10, :cond_14

    .line 38
    invoke-static {v14, v9, v7, v9}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v8

    .line 1169
    invoke-interface {v2, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 38
    :cond_14
    check-cast v8, Landroidx/compose/runtime/MutableState;

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const v10, -0x7eb614c2

    invoke-interface {v2, v10}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 1166
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    .line 1167
    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v11

    if-ne v10, v11, :cond_15

    .line 39
    invoke-static {v9, v9, v7, v9}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v10

    .line 1169
    invoke-interface {v2, v10}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 39
    :cond_15
    check-cast v10, Landroidx/compose/runtime/MutableState;

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const v7, -0x7eb61457

    invoke-interface {v2, v7}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 1166
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    .line 1167
    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v7, v6, :cond_16

    .line 42
    new-instance v7, Lco/aospa/dolby/xiaomi/geq/ui/PresetNameDialogKt$PresetNameDialog$2$1;

    invoke-direct {v7, v0}, Lco/aospa/dolby/xiaomi/geq/ui/PresetNameDialogKt$PresetNameDialog$2$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    .line 1169
    invoke-interface {v2, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 42
    :cond_16
    move-object v6, v7

    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 43
    new-instance v7, Lco/aospa/dolby/xiaomi/geq/ui/PresetNameDialogKt$PresetNameDialog$3;

    invoke-direct {v7, v3, v8, v10, v0}, Lco/aospa/dolby/xiaomi/geq/ui/PresetNameDialogKt$PresetNameDialog$3;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V

    const v9, 0x2b3c4049

    const/4 v12, 0x1

    const/16 v13, 0x36

    invoke-static {v9, v12, v7, v2, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v7

    .line 61
    new-instance v9, Lco/aospa/dolby/xiaomi/geq/ui/PresetNameDialogKt$PresetNameDialog$4;

    invoke-direct {v9, v0}, Lco/aospa/dolby/xiaomi/geq/ui/PresetNameDialogKt$PresetNameDialog$4;-><init>(Landroidx/compose/runtime/MutableState;)V

    const v0, 0x4424ba07

    invoke-static {v0, v12, v9, v2, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v9

    .line 70
    new-instance v0, Lco/aospa/dolby/xiaomi/geq/ui/PresetNameDialogKt$PresetNameDialog$5;

    invoke-direct {v0, v1}, Lco/aospa/dolby/xiaomi/geq/ui/PresetNameDialogKt$PresetNameDialog$5;-><init>(Ljava/lang/String;)V

    const v11, 0x5d0d33c5

    invoke-static {v11, v12, v0, v2, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v11

    .line 71
    new-instance v0, Lco/aospa/dolby/xiaomi/geq/ui/PresetNameDialogKt$PresetNameDialog$6;

    invoke-direct {v0, v8, v10}, Lco/aospa/dolby/xiaomi/geq/ui/PresetNameDialogKt$PresetNameDialog$6;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V

    const v8, -0x167e8f5c

    invoke-static {v8, v12, v0, v2, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v12

    const/16 v26, 0x0

    const/16 v27, 0x3f94

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const-wide/16 v15, 0x0

    move-object v0, v14

    move-wide v14, v15

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const v25, 0x1b0c36

    move-object/from16 v24, v2

    .line 41
    invoke-static/range {v6 .. v27}, Landroidx/compose/material3/AndroidAlertDialog_androidKt;->AlertDialog-Oix01E0(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;JJJJFLandroidx/compose/ui/window/DialogProperties;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v6

    if-eqz v6, :cond_17

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_17
    move-object v9, v0

    .line 94
    :goto_a
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v7

    if-eqz v7, :cond_18

    new-instance v8, Lco/aospa/dolby/xiaomi/geq/ui/PresetNameDialogKt$PresetNameDialog$7;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object v2, v9

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lco/aospa/dolby/xiaomi/geq/ui/PresetNameDialogKt$PresetNameDialog$7;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;II)V

    invoke-interface {v7, v8}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_18
    return-void
.end method

.method private static final PresetNameDialog$lambda$1(Landroidx/compose/runtime/MutableState;)Z
    .locals 0

    .line 81
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final PresetNameDialog$lambda$2(Landroidx/compose/runtime/MutableState;Z)V
    .locals 0

    .line 33
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 109
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private static final PresetNameDialog$lambda$4(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;
    .locals 0

    .line 81
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static final PresetNameDialog$lambda$5(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V
    .locals 0

    .line 109
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private static final PresetNameDialog$lambda$7(Landroidx/compose/runtime/MutableState;)Lco/aospa/dolby/xiaomi/geq/ui/PresetNameValidationError;
    .locals 0

    .line 81
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lco/aospa/dolby/xiaomi/geq/ui/PresetNameValidationError;

    return-object p0
.end method

.method private static final PresetNameDialog$lambda$8(Landroidx/compose/runtime/MutableState;Lco/aospa/dolby/xiaomi/geq/ui/PresetNameValidationError;)V
    .locals 0

    .line 109
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$PresetNameDialog$lambda$2(Landroidx/compose/runtime/MutableState;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lco/aospa/dolby/xiaomi/geq/ui/PresetNameDialogKt;->PresetNameDialog$lambda$2(Landroidx/compose/runtime/MutableState;Z)V

    return-void
.end method

.method public static final synthetic access$PresetNameDialog$lambda$4(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lco/aospa/dolby/xiaomi/geq/ui/PresetNameDialogKt;->PresetNameDialog$lambda$4(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$PresetNameDialog$lambda$5(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lco/aospa/dolby/xiaomi/geq/ui/PresetNameDialogKt;->PresetNameDialog$lambda$5(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$PresetNameDialog$lambda$7(Landroidx/compose/runtime/MutableState;)Lco/aospa/dolby/xiaomi/geq/ui/PresetNameValidationError;
    .locals 0

    .line 1
    invoke-static {p0}, Lco/aospa/dolby/xiaomi/geq/ui/PresetNameDialogKt;->PresetNameDialog$lambda$7(Landroidx/compose/runtime/MutableState;)Lco/aospa/dolby/xiaomi/geq/ui/PresetNameValidationError;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$PresetNameDialog$lambda$8(Landroidx/compose/runtime/MutableState;Lco/aospa/dolby/xiaomi/geq/ui/PresetNameValidationError;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lco/aospa/dolby/xiaomi/geq/ui/PresetNameDialogKt;->PresetNameDialog$lambda$8(Landroidx/compose/runtime/MutableState;Lco/aospa/dolby/xiaomi/geq/ui/PresetNameValidationError;)V

    return-void
.end method
