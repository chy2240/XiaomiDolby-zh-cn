.class public abstract Lcom/android/settingslib/spa/widget/preference/BasePreferenceKt;
.super Ljava/lang/Object;
.source "BasePreference.kt"


# direct methods
.method public static final BasePreference-jXF2sa8(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;FFFLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;III)V
    .locals 33

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move/from16 v15, p13

    move/from16 v12, p15

    const-string v0, "title"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "summary"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x71d45798

    move-object/from16 v1, p12

    .line 44
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v11

    and-int/lit8 v1, v12, 0x1

    if-eqz v1, :cond_0

    or-int/lit8 v1, v15, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v1, v15, 0xe

    if-nez v1, :cond_2

    invoke-interface {v11, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v15

    goto :goto_1

    :cond_2
    move v1, v15

    :goto_1
    and-int/lit8 v4, v12, 0x2

    if-eqz v4, :cond_3

    or-int/lit8 v1, v1, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v4, v15, 0x70

    if-nez v4, :cond_5

    invoke-interface {v11, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x20

    goto :goto_2

    :cond_4
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v1, v4

    :cond_5
    :goto_3
    and-int/lit8 v4, v12, 0x4

    if-eqz v4, :cond_7

    or-int/lit16 v1, v1, 0x180

    :cond_6
    move-object/from16 v7, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v7, v15, 0x380

    if-nez v7, :cond_6

    move-object/from16 v7, p2

    invoke-interface {v11, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    const/16 v8, 0x100

    goto :goto_4

    :cond_8
    const/16 v8, 0x80

    :goto_4
    or-int/2addr v1, v8

    :goto_5
    and-int/lit8 v8, v12, 0x8

    if-eqz v8, :cond_a

    or-int/lit16 v1, v1, 0xc00

    :cond_9
    move-object/from16 v9, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v9, v15, 0x1c00

    if-nez v9, :cond_9

    move-object/from16 v9, p3

    invoke-interface {v11, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    const/16 v10, 0x800

    goto :goto_6

    :cond_b
    const/16 v10, 0x400

    :goto_6
    or-int/2addr v1, v10

    :goto_7
    and-int/lit8 v10, v12, 0x10

    const v16, 0xe000

    if-eqz v10, :cond_c

    or-int/lit16 v1, v1, 0x6000

    move-object/from16 v2, p4

    goto :goto_9

    :cond_c
    and-int v17, v15, v16

    move-object/from16 v2, p4

    if-nez v17, :cond_e

    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d

    const/16 v17, 0x4000

    goto :goto_8

    :cond_d
    const/16 v17, 0x2000

    :goto_8
    or-int v1, v1, v17

    :cond_e
    :goto_9
    and-int/lit8 v17, v12, 0x20

    const/high16 v18, 0x70000

    if-eqz v17, :cond_f

    const/high16 v19, 0x30000

    or-int v1, v1, v19

    move/from16 v3, p5

    goto :goto_b

    :cond_f
    and-int v19, v15, v18

    move/from16 v3, p5

    if-nez v19, :cond_11

    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v20

    if-eqz v20, :cond_10

    const/high16 v20, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v20, 0x10000

    :goto_a
    or-int v1, v1, v20

    :cond_11
    :goto_b
    and-int/lit8 v20, v12, 0x40

    const/high16 v21, 0x380000

    if-eqz v20, :cond_12

    const/high16 v22, 0x180000

    or-int v1, v1, v22

    move-object/from16 v5, p6

    goto :goto_d

    :cond_12
    and-int v22, v15, v21

    move-object/from16 v5, p6

    if-nez v22, :cond_14

    invoke-interface {v11, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_13

    const/high16 v23, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v23, 0x80000

    :goto_c
    or-int v1, v1, v23

    :cond_14
    :goto_d
    and-int/lit16 v6, v12, 0x80

    const/high16 v24, 0x1c00000

    if-eqz v6, :cond_15

    const/high16 v25, 0xc00000

    or-int v1, v1, v25

    move-object/from16 v0, p7

    goto :goto_f

    :cond_15
    and-int v25, v15, v24

    move-object/from16 v0, p7

    if-nez v25, :cond_17

    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_16

    const/high16 v26, 0x800000

    goto :goto_e

    :cond_16
    const/high16 v26, 0x400000

    :goto_e
    or-int v1, v1, v26

    :cond_17
    :goto_f
    and-int/lit16 v0, v12, 0x100

    const/high16 v26, 0xe000000

    if-eqz v0, :cond_18

    const/high16 v27, 0x6000000

    or-int v1, v1, v27

    move/from16 v2, p8

    goto :goto_11

    :cond_18
    and-int v27, v15, v26

    move/from16 v2, p8

    if-nez v27, :cond_1a

    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v27

    if-eqz v27, :cond_19

    const/high16 v27, 0x4000000

    goto :goto_10

    :cond_19
    const/high16 v27, 0x2000000

    :goto_10
    or-int v1, v1, v27

    :cond_1a
    :goto_11
    and-int/lit16 v2, v12, 0x200

    const/high16 v27, 0x70000000

    if-eqz v2, :cond_1b

    const/high16 v28, 0x30000000

    or-int v1, v1, v28

    move/from16 v3, p9

    goto :goto_13

    :cond_1b
    and-int v28, v15, v27

    move/from16 v3, p9

    if-nez v28, :cond_1d

    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v28

    if-eqz v28, :cond_1c

    const/high16 v28, 0x20000000

    goto :goto_12

    :cond_1c
    const/high16 v28, 0x10000000

    :goto_12
    or-int v1, v1, v28

    :cond_1d
    :goto_13
    and-int/lit16 v3, v12, 0x400

    if-eqz v3, :cond_1e

    or-int/lit8 v19, p14, 0x6

    move/from16 v5, p10

    goto :goto_15

    :cond_1e
    and-int/lit8 v28, p14, 0xe

    move/from16 v5, p10

    if-nez v28, :cond_20

    invoke-interface {v11, v5}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v28

    if-eqz v28, :cond_1f

    const/16 v19, 0x4

    goto :goto_14

    :cond_1f
    const/16 v19, 0x2

    :goto_14
    or-int v19, p14, v19

    goto :goto_15

    :cond_20
    move/from16 v19, p14

    :goto_15
    and-int/lit16 v5, v12, 0x800

    if-eqz v5, :cond_22

    or-int/lit8 v19, v19, 0x30

    :cond_21
    :goto_16
    move/from16 v7, v19

    goto :goto_18

    :cond_22
    and-int/lit8 v28, p14, 0x70

    move-object/from16 v7, p11

    if-nez v28, :cond_21

    invoke-interface {v11, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_23

    const/16 v22, 0x20

    goto :goto_17

    :cond_23
    const/16 v22, 0x10

    :goto_17
    or-int v19, v19, v22

    goto :goto_16

    :goto_18
    const v19, 0x5b6db6db

    and-int v9, v1, v19

    const v12, 0x12492492

    if-ne v9, v12, :cond_25

    and-int/lit8 v9, v7, 0x5b

    const/16 v12, 0x12

    if-ne v9, v12, :cond_25

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v9

    if-nez v9, :cond_24

    goto :goto_19

    .line 63
    :cond_24
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v12, p11

    move-object/from16 v24, v11

    move/from16 v11, p10

    goto/16 :goto_24

    :cond_25
    :goto_19
    if-eqz v4, :cond_26

    .line 34
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object/from16 v19, v4

    goto :goto_1a

    :cond_26
    move-object/from16 v19, p2

    :goto_1a
    if-eqz v8, :cond_27

    const/4 v4, 0x0

    move-object/from16 v22, v4

    goto :goto_1b

    :cond_27
    move-object/from16 v22, p3

    :goto_1b
    if-eqz v10, :cond_28

    .line 36
    sget-object v4, Lcom/android/settingslib/spa/widget/preference/BasePreferenceKt$BasePreference$1;->INSTANCE:Lcom/android/settingslib/spa/widget/preference/BasePreferenceKt$BasePreference$1;

    move-object v12, v4

    goto :goto_1c

    :cond_28
    move-object/from16 v12, p4

    :goto_1c
    if-eqz v17, :cond_29

    const/4 v4, 0x0

    move v10, v4

    goto :goto_1d

    :cond_29
    move/from16 v10, p5

    :goto_1d
    if-eqz v20, :cond_2a

    const/4 v4, 0x0

    move-object/from16 v17, v4

    goto :goto_1e

    :cond_2a
    move-object/from16 v17, p6

    :goto_1e
    if-eqz v6, :cond_2b

    .line 39
    sget-object v4, Lcom/android/settingslib/spa/widget/preference/BasePreferenceKt$BasePreference$2;->INSTANCE:Lcom/android/settingslib/spa/widget/preference/BasePreferenceKt$BasePreference$2;

    move-object/from16 v20, v4

    goto :goto_1f

    :cond_2b
    move-object/from16 v20, p7

    :goto_1f
    if-eqz v0, :cond_2c

    .line 40
    sget-object v0, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->INSTANCE:Lcom/android/settingslib/spa/framework/theme/SettingsDimension;

    invoke-virtual {v0}, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->getItemPaddingStart-D9Ej5fM()F

    move-result v0

    move/from16 v23, v0

    goto :goto_20

    :cond_2c
    move/from16 v23, p8

    :goto_20
    if-eqz v2, :cond_2d

    .line 41
    sget-object v0, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->INSTANCE:Lcom/android/settingslib/spa/framework/theme/SettingsDimension;

    invoke-virtual {v0}, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->getItemPaddingEnd-D9Ej5fM()F

    move-result v0

    move/from16 v28, v0

    goto :goto_21

    :cond_2d
    move/from16 v28, p9

    :goto_21
    if-eqz v3, :cond_2e

    .line 42
    sget-object v0, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->INSTANCE:Lcom/android/settingslib/spa/framework/theme/SettingsDimension;

    invoke-virtual {v0}, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->getItemPaddingVertical-D9Ej5fM()F

    move-result v0

    move/from16 v29, v0

    goto :goto_22

    :cond_2e
    move/from16 v29, p10

    :goto_22
    if-eqz v5, :cond_2f

    sget-object v0, Lcom/android/settingslib/spa/widget/preference/ComposableSingletons$BasePreferenceKt;->INSTANCE:Lcom/android/settingslib/spa/widget/preference/ComposableSingletons$BasePreferenceKt;

    invoke-virtual {v0}, Lcom/android/settingslib/spa/widget/preference/ComposableSingletons$BasePreferenceKt;->getLambda-1$frameworks__base__packages__SettingsLib__Spa__spa__android_common__SpaLib()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    move-object/from16 v30, v0

    goto :goto_23

    :cond_2f
    move-object/from16 v30, p11

    :goto_23
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_30

    const-string v0, "com.android.settingslib.spa.widget.preference.BasePreference (BasePreference.kt:43)"

    const v2, -0x71d45798

    .line 44
    invoke-static {v2, v1, v7, v0}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 48
    :cond_30
    new-instance v0, Lcom/android/settingslib/spa/widget/preference/BasePreferenceKt$BasePreference$3;

    invoke-direct {v0, v14, v12, v10}, Lcom/android/settingslib/spa/widget/preference/BasePreferenceKt$BasePreference$3;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Z)V

    const/16 v2, 0x36

    const v3, -0x5d12bd21

    const/4 v4, 0x1

    invoke-static {v3, v4, v0, v11, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v2

    and-int/lit8 v0, v1, 0xe

    or-int/lit8 v0, v0, 0x30

    and-int/lit16 v3, v1, 0x380

    or-int/2addr v0, v3

    and-int/lit16 v3, v1, 0x1c00

    or-int/2addr v0, v3

    shr-int/lit8 v1, v1, 0x6

    and-int v3, v1, v16

    or-int/2addr v0, v3

    and-int v3, v1, v18

    or-int/2addr v0, v3

    and-int v3, v1, v21

    or-int/2addr v0, v3

    and-int v1, v1, v24

    or-int/2addr v0, v1

    shl-int/lit8 v1, v7, 0x18

    and-int v3, v1, v26

    or-int/2addr v0, v3

    and-int v1, v1, v27

    or-int v16, v0, v1

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object v1, v2

    move-object/from16 v2, v19

    move-object/from16 v3, v22

    move-object/from16 v4, v17

    move-object/from16 v5, v20

    move/from16 v6, v23

    move/from16 v7, v28

    move/from16 v8, v29

    move-object/from16 v9, v30

    move/from16 v21, v10

    move-object v10, v11

    move-object/from16 v24, v11

    move/from16 v11, v16

    move-object/from16 v16, v12

    move/from16 v12, v18

    .line 45
    invoke-static/range {v0 .. v12}, Lcom/android/settingslib/spa/widget/preference/BaseLayoutKt;->BaseLayout-IBxwOmc(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;FFFLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_31
    move-object/from16 v5, v16

    move-object/from16 v7, v17

    move-object/from16 v3, v19

    move-object/from16 v8, v20

    move/from16 v6, v21

    move-object/from16 v4, v22

    move/from16 v9, v23

    move/from16 v10, v28

    move/from16 v11, v29

    move-object/from16 v12, v30

    .line 63
    :goto_24
    invoke-interface/range {v24 .. v24}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v2

    if-eqz v2, :cond_32

    new-instance v1, Lcom/android/settingslib/spa/widget/preference/BasePreferenceKt$BasePreference$4;

    move-object v0, v1

    move-object/from16 v31, v1

    move-object/from16 v1, p0

    move-object v13, v2

    move-object/from16 v2, p1

    move-object v14, v13

    move/from16 v13, p13

    move-object v15, v14

    move/from16 v14, p14

    move-object/from16 v32, v15

    move/from16 v15, p15

    invoke-direct/range {v0 .. v15}, Lcom/android/settingslib/spa/widget/preference/BasePreferenceKt$BasePreference$4;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;FFFLkotlin/jvm/functions/Function2;III)V

    move-object/from16 v1, v31

    move-object/from16 v0, v32

    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_32
    return-void
.end method
