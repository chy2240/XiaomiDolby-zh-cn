.class public abstract Landroidx/compose/material3/ButtonKt;
.super Ljava/lang/Object;
.source "Button.kt"


# direct methods
.method public static final Button(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 31

    move-object/from16 v10, p9

    move/from16 v11, p11

    move/from16 v12, p12

    const v0, 0x26c01063

    move-object/from16 v1, p10

    .line 130
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v15

    and-int/lit8 v1, v12, 0x1

    if-eqz v1, :cond_0

    or-int/lit8 v1, v11, 0x6

    move-object/from16 v13, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v1, v11, 0x6

    move-object/from16 v13, p0

    if-nez v1, :cond_2

    invoke-interface {v15, v13}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v11

    goto :goto_1

    :cond_2
    move v1, v11

    :goto_1
    and-int/lit8 v2, v12, 0x2

    if-eqz v2, :cond_4

    or-int/lit8 v1, v1, 0x30

    :cond_3
    move-object/from16 v3, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v3, v11, 0x30

    if-nez v3, :cond_3

    move-object/from16 v3, p1

    invoke-interface {v15, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v4, 0x20

    goto :goto_2

    :cond_5
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v1, v4

    :goto_3
    and-int/lit8 v4, v12, 0x4

    if-eqz v4, :cond_7

    or-int/lit16 v1, v1, 0x180

    :cond_6
    move/from16 v5, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v5, v11, 0x180

    if-nez v5, :cond_6

    move/from16 v5, p2

    invoke-interface {v15, v5}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v6

    if-eqz v6, :cond_8

    const/16 v6, 0x100

    goto :goto_4

    :cond_8
    const/16 v6, 0x80

    :goto_4
    or-int/2addr v1, v6

    :goto_5
    and-int/lit16 v6, v11, 0xc00

    if-nez v6, :cond_b

    and-int/lit8 v6, v12, 0x8

    if-nez v6, :cond_9

    move-object/from16 v6, p3

    invoke-interface {v15, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    const/16 v7, 0x800

    goto :goto_6

    :cond_9
    move-object/from16 v6, p3

    :cond_a
    const/16 v7, 0x400

    :goto_6
    or-int/2addr v1, v7

    goto :goto_7

    :cond_b
    move-object/from16 v6, p3

    :goto_7
    and-int/lit16 v7, v11, 0x6000

    if-nez v7, :cond_e

    and-int/lit8 v7, v12, 0x10

    if-nez v7, :cond_c

    move-object/from16 v7, p4

    invoke-interface {v15, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    const/16 v8, 0x4000

    goto :goto_8

    :cond_c
    move-object/from16 v7, p4

    :cond_d
    const/16 v8, 0x2000

    :goto_8
    or-int/2addr v1, v8

    goto :goto_9

    :cond_e
    move-object/from16 v7, p4

    :goto_9
    const/high16 v8, 0x30000

    and-int/2addr v8, v11

    if-nez v8, :cond_11

    and-int/lit8 v8, v12, 0x20

    if-nez v8, :cond_f

    move-object/from16 v8, p5

    invoke-interface {v15, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    const/high16 v9, 0x20000

    goto :goto_a

    :cond_f
    move-object/from16 v8, p5

    :cond_10
    const/high16 v9, 0x10000

    :goto_a
    or-int/2addr v1, v9

    goto :goto_b

    :cond_11
    move-object/from16 v8, p5

    :goto_b
    and-int/lit8 v14, v12, 0x40

    const/high16 v9, 0x180000

    if-eqz v14, :cond_13

    or-int/2addr v1, v9

    :cond_12
    move-object/from16 v9, p6

    goto :goto_d

    :cond_13
    and-int/2addr v9, v11

    if-nez v9, :cond_12

    move-object/from16 v9, p6

    invoke-interface {v15, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_14

    const/high16 v16, 0x100000

    goto :goto_c

    :cond_14
    const/high16 v16, 0x80000

    :goto_c
    or-int v1, v1, v16

    :goto_d
    and-int/lit16 v0, v12, 0x80

    const/high16 v17, 0xc00000

    if-eqz v0, :cond_15

    or-int v1, v1, v17

    move-object/from16 v9, p7

    goto :goto_f

    :cond_15
    and-int v17, v11, v17

    move-object/from16 v9, p7

    if-nez v17, :cond_17

    invoke-interface {v15, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_16

    const/high16 v17, 0x800000

    goto :goto_e

    :cond_16
    const/high16 v17, 0x400000

    :goto_e
    or-int v1, v1, v17

    :cond_17
    :goto_f
    and-int/lit16 v9, v12, 0x100

    const/high16 v17, 0x6000000

    if-eqz v9, :cond_19

    or-int v1, v1, v17

    :cond_18
    move/from16 v17, v9

    move-object/from16 v9, p8

    goto :goto_11

    :cond_19
    and-int v17, v11, v17

    if-nez v17, :cond_18

    move/from16 v17, v9

    move-object/from16 v9, p8

    invoke-interface {v15, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1a

    const/high16 v18, 0x4000000

    goto :goto_10

    :cond_1a
    const/high16 v18, 0x2000000

    :goto_10
    or-int v1, v1, v18

    :goto_11
    and-int/lit16 v3, v12, 0x200

    const/high16 v18, 0x30000000

    if-eqz v3, :cond_1b

    or-int v1, v1, v18

    goto :goto_13

    :cond_1b
    and-int v3, v11, v18

    if-nez v3, :cond_1d

    invoke-interface {v15, v10}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    const/high16 v3, 0x20000000

    goto :goto_12

    :cond_1c
    const/high16 v3, 0x10000000

    :goto_12
    or-int/2addr v1, v3

    :cond_1d
    :goto_13
    const v3, 0x12492493

    and-int/2addr v3, v1

    const v5, 0x12492492

    if-ne v3, v5, :cond_1f

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_1e

    goto :goto_14

    .line 163
    :cond_1e
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    move-object v0, v15

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    goto/16 :goto_23

    .line 130
    :cond_1f
    :goto_14
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v3, v11, 0x1

    const v18, -0x70001

    const v5, -0xe001

    const/4 v9, 0x6

    const/4 v8, 0x1

    if-eqz v3, :cond_24

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v3

    if-eqz v3, :cond_20

    goto :goto_15

    .line 128
    :cond_20
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v12, 0x8

    if-eqz v0, :cond_21

    and-int/lit16 v1, v1, -0x1c01

    :cond_21
    and-int/lit8 v0, v12, 0x10

    if-eqz v0, :cond_22

    and-int/2addr v1, v5

    :cond_22
    and-int/lit8 v0, v12, 0x20

    if-eqz v0, :cond_23

    and-int v1, v1, v18

    :cond_23
    move-object/from16 v0, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move v8, v1

    move/from16 v24, v9

    const/4 v11, 0x0

    move/from16 v1, p2

    goto/16 :goto_1e

    :cond_24
    :goto_15
    if-eqz v2, :cond_25

    .line 121
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object/from16 v19, v2

    goto :goto_16

    :cond_25
    move-object/from16 v19, p1

    :goto_16
    if-eqz v4, :cond_26

    move/from16 v20, v8

    goto :goto_17

    :cond_26
    move/from16 v20, p2

    :goto_17
    and-int/lit8 v2, v12, 0x8

    if-eqz v2, :cond_27

    .line 123
    sget-object v2, Landroidx/compose/material3/ButtonDefaults;->INSTANCE:Landroidx/compose/material3/ButtonDefaults;

    invoke-virtual {v2, v15, v9}, Landroidx/compose/material3/ButtonDefaults;->getShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v2

    and-int/lit16 v1, v1, -0x1c01

    move-object/from16 v21, v2

    goto :goto_18

    :cond_27
    move-object/from16 v21, v6

    :goto_18
    and-int/lit8 v2, v12, 0x10

    if-eqz v2, :cond_28

    .line 124
    sget-object v2, Landroidx/compose/material3/ButtonDefaults;->INSTANCE:Landroidx/compose/material3/ButtonDefaults;

    invoke-virtual {v2, v15, v9}, Landroidx/compose/material3/ButtonDefaults;->buttonColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ButtonColors;

    move-result-object v2

    and-int/2addr v1, v5

    move/from16 v23, v1

    move-object/from16 v22, v2

    goto :goto_19

    :cond_28
    move/from16 v23, v1

    move-object/from16 v22, v7

    :goto_19
    and-int/lit8 v1, v12, 0x20

    if-eqz v1, :cond_29

    .line 125
    sget-object v1, Landroidx/compose/material3/ButtonDefaults;->INSTANCE:Landroidx/compose/material3/ButtonDefaults;

    const/high16 v24, 0x30000

    const/16 v25, 0x1f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, v15

    move/from16 v8, v24

    move/from16 v24, v9

    const/4 v11, 0x0

    move/from16 v9, v25

    invoke-virtual/range {v1 .. v9}, Landroidx/compose/material3/ButtonDefaults;->buttonElevation-R_JCAzs(FFFFFLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/ButtonElevation;

    move-result-object v1

    and-int v2, v23, v18

    move/from16 v23, v2

    goto :goto_1a

    :cond_29
    move/from16 v24, v9

    const/4 v11, 0x0

    move-object/from16 v1, p5

    :goto_1a
    if-eqz v14, :cond_2a

    move-object v2, v11

    goto :goto_1b

    :cond_2a
    move-object/from16 v2, p6

    :goto_1b
    if-eqz v0, :cond_2b

    .line 127
    sget-object v0, Landroidx/compose/material3/ButtonDefaults;->INSTANCE:Landroidx/compose/material3/ButtonDefaults;

    invoke-virtual {v0}, Landroidx/compose/material3/ButtonDefaults;->getContentPadding()Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v0

    goto :goto_1c

    :cond_2b
    move-object/from16 v0, p7

    :goto_1c
    if-eqz v17, :cond_2c

    move-object v4, v0

    move-object v3, v2

    move-object v5, v11

    :goto_1d
    move-object/from16 v0, v19

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    move/from16 v8, v23

    move-object v2, v1

    move/from16 v1, v20

    goto :goto_1e

    :cond_2c
    move-object/from16 v5, p8

    move-object v4, v0

    move-object v3, v2

    goto :goto_1d

    .line 128
    :goto_1e
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v9

    if-eqz v9, :cond_2d

    const/4 v9, -0x1

    const-string v14, "androidx.compose.material3.Button (Button.kt:129)"

    const v11, 0x26c01063

    .line 130
    invoke-static {v11, v8, v9, v14}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2d
    const v9, -0xe40f98f

    .line 132
    invoke-interface {v15, v9}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    if-nez v5, :cond_2f

    .line 1166
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    .line 1167
    sget-object v11, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v11}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v11

    if-ne v9, v11, :cond_2e

    .line 132
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v9

    .line 1169
    invoke-interface {v15, v9}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 132
    :cond_2e
    check-cast v9, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    goto :goto_1f

    :cond_2f
    move-object v9, v5

    :goto_1f
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 133
    invoke-virtual {v7, v1}, Landroidx/compose/material3/ButtonColors;->containerColor-vNxB06k$material3_release(Z)J

    move-result-wide v17

    .line 134
    invoke-virtual {v7, v1}, Landroidx/compose/material3/ButtonColors;->contentColor-vNxB06k$material3_release(Z)J

    move-result-wide v11

    const v14, -0xe40dfe0

    .line 135
    invoke-interface {v15, v14}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    if-nez v2, :cond_30

    move-object/from16 p1, v5

    const/4 v5, 0x0

    goto :goto_20

    :cond_30
    shr-int/lit8 v14, v8, 0x6

    and-int/lit8 v14, v14, 0xe

    move-object/from16 p1, v5

    shr-int/lit8 v5, v8, 0x9

    and-int/lit16 v5, v5, 0x380

    or-int/2addr v5, v14

    invoke-virtual {v2, v1, v9, v15, v5}, Landroidx/compose/material3/ButtonElevation;->shadowElevation$material3_release(ZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v5

    :goto_20
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const/4 v14, 0x0

    if-eqz v5, :cond_31

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/unit/Dp;

    invoke-virtual {v5}, Landroidx/compose/ui/unit/Dp;->unbox-impl()F

    move-result v5

    :goto_21
    move/from16 v22, v5

    goto :goto_22

    :cond_31
    int-to-float v5, v14

    .line 1150
    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    goto :goto_21

    .line 138
    :goto_22
    sget-object v5, Landroidx/compose/material3/ButtonKt$Button$1;->INSTANCE:Landroidx/compose/material3/ButtonKt$Button$1;

    move-object/from16 p2, v2

    move-object/from16 v30, v7

    const/4 v2, 0x0

    const/4 v7, 0x1

    invoke-static {v0, v14, v5, v7, v2}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v14

    .line 146
    new-instance v2, Landroidx/compose/material3/ButtonKt$Button$2;

    invoke-direct {v2, v11, v12, v4, v10}, Landroidx/compose/material3/ButtonKt$Button$2;-><init>(JLandroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;)V

    const/16 v5, 0x36

    move-object/from16 p3, v0

    const v0, 0x3902db2e

    invoke-static {v0, v7, v2, v15, v5}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v25

    and-int/lit16 v0, v8, 0x1f8e

    const/high16 v2, 0xe000000

    shl-int/lit8 v5, v8, 0x6

    and-int/2addr v2, v5

    or-int v27, v0, v2

    const/16 v28, 0x6

    const/16 v29, 0x40

    const/16 v21, 0x0

    move-object/from16 v13, p0

    move-object v0, v15

    move v15, v1

    move-object/from16 v16, v6

    move-wide/from16 v19, v11

    move-object/from16 v23, v3

    move-object/from16 v24, v9

    move-object/from16 v26, v0

    .line 136
    invoke-static/range {v13 .. v29}, Landroidx/compose/material3/SurfaceKt;->Surface-o_FOJdg(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_32
    move-object/from16 v9, p1

    move-object/from16 v2, p3

    move-object v7, v3

    move-object v8, v4

    move-object v4, v6

    move-object/from16 v5, v30

    move-object/from16 v6, p2

    move v3, v1

    .line 163
    :goto_23
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v13

    if-eqz v13, :cond_33

    new-instance v14, Landroidx/compose/material3/ButtonKt$Button$3;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v10, p9

    move/from16 v11, p11

    move/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Landroidx/compose/material3/ButtonKt$Button$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;II)V

    invoke-interface {v13, v14}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_33
    return-void
.end method

.method public static final TextButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 26

    move/from16 v11, p11

    move/from16 v12, p12

    const v0, -0x7d8d8bca

    move-object/from16 v1, p10

    .line 446
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v1

    and-int/lit8 v2, v12, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v2, v11, 0x6

    move v3, v2

    move-object/from16 v2, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v11, 0x6

    if-nez v2, :cond_2

    move-object/from16 v2, p0

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v11

    goto :goto_1

    :cond_2
    move-object/from16 v2, p0

    move v3, v11

    :goto_1
    and-int/lit8 v4, v12, 0x2

    if-eqz v4, :cond_4

    or-int/lit8 v3, v3, 0x30

    :cond_3
    move-object/from16 v5, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v5, v11, 0x30

    if-nez v5, :cond_3

    move-object/from16 v5, p1

    invoke-interface {v1, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x20

    goto :goto_2

    :cond_5
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v3, v6

    :goto_3
    and-int/lit8 v6, v12, 0x4

    if-eqz v6, :cond_7

    or-int/lit16 v3, v3, 0x180

    :cond_6
    move/from16 v7, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v7, v11, 0x180

    if-nez v7, :cond_6

    move/from16 v7, p2

    invoke-interface {v1, v7}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v8

    if-eqz v8, :cond_8

    const/16 v8, 0x100

    goto :goto_4

    :cond_8
    const/16 v8, 0x80

    :goto_4
    or-int/2addr v3, v8

    :goto_5
    and-int/lit16 v8, v11, 0xc00

    if-nez v8, :cond_b

    and-int/lit8 v8, v12, 0x8

    if-nez v8, :cond_9

    move-object/from16 v8, p3

    invoke-interface {v1, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x800

    goto :goto_6

    :cond_9
    move-object/from16 v8, p3

    :cond_a
    const/16 v9, 0x400

    :goto_6
    or-int/2addr v3, v9

    goto :goto_7

    :cond_b
    move-object/from16 v8, p3

    :goto_7
    and-int/lit16 v9, v11, 0x6000

    if-nez v9, :cond_e

    and-int/lit8 v9, v12, 0x10

    if-nez v9, :cond_c

    move-object/from16 v9, p4

    invoke-interface {v1, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    const/16 v10, 0x4000

    goto :goto_8

    :cond_c
    move-object/from16 v9, p4

    :cond_d
    const/16 v10, 0x2000

    :goto_8
    or-int/2addr v3, v10

    goto :goto_9

    :cond_e
    move-object/from16 v9, p4

    :goto_9
    and-int/lit8 v10, v12, 0x20

    const/high16 v13, 0x30000

    if-eqz v10, :cond_10

    or-int/2addr v3, v13

    :cond_f
    move-object/from16 v13, p5

    goto :goto_b

    :cond_10
    and-int/2addr v13, v11

    if-nez v13, :cond_f

    move-object/from16 v13, p5

    invoke-interface {v1, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_11

    const/high16 v14, 0x20000

    goto :goto_a

    :cond_11
    const/high16 v14, 0x10000

    :goto_a
    or-int/2addr v3, v14

    :goto_b
    and-int/lit8 v14, v12, 0x40

    const/high16 v15, 0x180000

    if-eqz v14, :cond_13

    or-int/2addr v3, v15

    :cond_12
    move-object/from16 v15, p6

    goto :goto_d

    :cond_13
    and-int/2addr v15, v11

    if-nez v15, :cond_12

    move-object/from16 v15, p6

    invoke-interface {v1, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_14

    const/high16 v16, 0x100000

    goto :goto_c

    :cond_14
    const/high16 v16, 0x80000

    :goto_c
    or-int v3, v3, v16

    :goto_d
    and-int/lit16 v0, v12, 0x80

    const/high16 v17, 0xc00000

    if-eqz v0, :cond_15

    or-int v3, v3, v17

    move-object/from16 v2, p7

    goto :goto_f

    :cond_15
    and-int v17, v11, v17

    move-object/from16 v2, p7

    if-nez v17, :cond_17

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_16

    const/high16 v17, 0x800000

    goto :goto_e

    :cond_16
    const/high16 v17, 0x400000

    :goto_e
    or-int v3, v3, v17

    :cond_17
    :goto_f
    and-int/lit16 v2, v12, 0x100

    const/high16 v17, 0x6000000

    if-eqz v2, :cond_18

    or-int v3, v3, v17

    move-object/from16 v5, p8

    goto :goto_11

    :cond_18
    and-int v17, v11, v17

    move-object/from16 v5, p8

    if-nez v17, :cond_1a

    invoke-interface {v1, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_19

    const/high16 v17, 0x4000000

    goto :goto_10

    :cond_19
    const/high16 v17, 0x2000000

    :goto_10
    or-int v3, v3, v17

    :cond_1a
    :goto_11
    and-int/lit16 v5, v12, 0x200

    const/high16 v17, 0x30000000

    if-eqz v5, :cond_1c

    or-int v3, v3, v17

    :cond_1b
    move-object/from16 v5, p9

    goto :goto_13

    :cond_1c
    and-int v5, v11, v17

    if-nez v5, :cond_1b

    move-object/from16 v5, p9

    invoke-interface {v1, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1d

    const/high16 v17, 0x20000000

    goto :goto_12

    :cond_1d
    const/high16 v17, 0x10000000

    :goto_12
    or-int v3, v3, v17

    :goto_13
    const v17, 0x12492493

    and-int v5, v3, v17

    const v7, 0x12492492

    if-ne v5, v7, :cond_1f

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v5

    if-nez v5, :cond_1e

    goto :goto_14

    .line 457
    :cond_1e
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object v4, v8

    move-object v5, v9

    move-object v6, v13

    move-object v7, v15

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    goto/16 :goto_1d

    .line 446
    :cond_1f
    :goto_14
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v5, v11, 0x1

    const v7, -0xe001

    if-eqz v5, :cond_23

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v5

    if-eqz v5, :cond_20

    goto :goto_15

    .line 443
    :cond_20
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v12, 0x8

    if-eqz v0, :cond_21

    and-int/lit16 v3, v3, -0x1c01

    :cond_21
    and-int/lit8 v0, v12, 0x10

    if-eqz v0, :cond_22

    and-int/2addr v3, v7

    :cond_22
    move-object/from16 v4, p1

    move/from16 v5, p2

    move-object v6, v8

    move-object v7, v9

    move-object v0, v13

    move-object v2, v15

    move-object/from16 v8, p8

    move v9, v3

    move-object/from16 v3, p7

    goto :goto_1c

    :cond_23
    :goto_15
    if-eqz v4, :cond_24

    .line 436
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_16

    :cond_24
    move-object/from16 v4, p1

    :goto_16
    if-eqz v6, :cond_25

    const/4 v5, 0x1

    goto :goto_17

    :cond_25
    move/from16 v5, p2

    :goto_17
    and-int/lit8 v6, v12, 0x8

    const/4 v7, 0x6

    if-eqz v6, :cond_26

    .line 438
    sget-object v6, Landroidx/compose/material3/ButtonDefaults;->INSTANCE:Landroidx/compose/material3/ButtonDefaults;

    invoke-virtual {v6, v1, v7}, Landroidx/compose/material3/ButtonDefaults;->getTextShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v6

    and-int/lit16 v3, v3, -0x1c01

    goto :goto_18

    :cond_26
    move-object v6, v8

    :goto_18
    and-int/lit8 v8, v12, 0x10

    if-eqz v8, :cond_27

    .line 439
    sget-object v8, Landroidx/compose/material3/ButtonDefaults;->INSTANCE:Landroidx/compose/material3/ButtonDefaults;

    invoke-virtual {v8, v1, v7}, Landroidx/compose/material3/ButtonDefaults;->textButtonColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ButtonColors;

    move-result-object v7

    const v8, -0xe001

    and-int/2addr v3, v8

    goto :goto_19

    :cond_27
    move-object v7, v9

    :goto_19
    const/4 v8, 0x0

    if-eqz v10, :cond_28

    move-object v13, v8

    :cond_28
    if-eqz v14, :cond_29

    move-object v15, v8

    :cond_29
    if-eqz v0, :cond_2a

    .line 442
    sget-object v0, Landroidx/compose/material3/ButtonDefaults;->INSTANCE:Landroidx/compose/material3/ButtonDefaults;

    invoke-virtual {v0}, Landroidx/compose/material3/ButtonDefaults;->getTextButtonContentPadding()Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v0

    goto :goto_1a

    :cond_2a
    move-object/from16 v0, p7

    :goto_1a
    if-eqz v2, :cond_2b

    :goto_1b
    move v9, v3

    move-object v2, v15

    move-object v3, v0

    move-object v0, v13

    goto :goto_1c

    :cond_2b
    move-object/from16 v8, p8

    goto :goto_1b

    .line 443
    :goto_1c
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v10

    if-eqz v10, :cond_2c

    const/4 v10, -0x1

    const-string v13, "androidx.compose.material3.TextButton (Button.kt:445)"

    const v14, -0x7d8d8bca

    .line 446
    invoke-static {v14, v9, v10, v13}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2c
    const v10, 0x7ffffffe

    and-int v24, v9, v10

    const/16 v25, 0x0

    move-object/from16 v13, p0

    move-object v14, v4

    move v15, v5

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move-object/from16 v18, v0

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v8

    move-object/from16 v22, p9

    move-object/from16 v23, v1

    invoke-static/range {v13 .. v25}, Landroidx/compose/material3/ButtonKt;->Button(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v9

    if-eqz v9, :cond_2d

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_2d
    move-object v9, v8

    move-object v8, v3

    move v3, v5

    move-object v5, v7

    move-object v7, v2

    move-object v2, v4

    move-object v4, v6

    move-object v6, v0

    .line 457
    :goto_1d
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v13

    if-eqz v13, :cond_2e

    new-instance v14, Landroidx/compose/material3/ButtonKt$TextButton$1;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v10, p9

    move/from16 v11, p11

    move/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Landroidx/compose/material3/ButtonKt$TextButton$1;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;II)V

    invoke-interface {v13, v14}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_2e
    return-void
.end method
