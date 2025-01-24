.class public abstract Landroidx/compose/material3/internal/TextFieldImplKt;
.super Ljava/lang/Object;
.source "TextFieldImpl.kt"


# static fields
.field private static final AboveLabelBottomPadding:F

.field private static final AboveLabelHorizontalPadding:F

.field private static final MinFocusedLabelLineHeight:F

.field private static final MinSupportingTextLineHeight:F

.field private static final MinTextLineHeight:F

.field private static final PrefixSuffixTextPadding:F

.field private static final SupportingTopPadding:F

.field private static final TextFieldPadding:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x10

    int-to-float v0, v0

    .line 1040
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 503
    sput v1, Landroidx/compose/material3/internal/TextFieldImplKt;->TextFieldPadding:F

    const/4 v1, 0x4

    int-to-float v1, v1

    .line 1041
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    .line 504
    sput v2, Landroidx/compose/material3/internal/TextFieldImplKt;->AboveLabelHorizontalPadding:F

    .line 1042
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    .line 505
    sput v2, Landroidx/compose/material3/internal/TextFieldImplKt;->AboveLabelBottomPadding:F

    .line 1043
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 506
    sput v1, Landroidx/compose/material3/internal/TextFieldImplKt;->SupportingTopPadding:F

    const/4 v1, 0x2

    int-to-float v1, v1

    .line 1044
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 507
    sput v1, Landroidx/compose/material3/internal/TextFieldImplKt;->PrefixSuffixTextPadding:F

    const/16 v1, 0x18

    int-to-float v1, v1

    .line 1045
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 508
    sput v1, Landroidx/compose/material3/internal/TextFieldImplKt;->MinTextLineHeight:F

    .line 1046
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 509
    sput v1, Landroidx/compose/material3/internal/TextFieldImplKt;->MinFocusedLabelLineHeight:F

    .line 1047
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 510
    sput v0, Landroidx/compose/material3/internal/TextFieldImplKt;->MinSupportingTextLineHeight:F

    return-void
.end method

.method public static final CommonDecorationBox(Landroidx/compose/material3/internal/TextFieldType;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/TextFieldLabelPosition;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/material3/TextFieldColors;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 49

    move-object/from16 v15, p3

    move-object/from16 v14, p4

    move-object/from16 v13, p5

    move-object/from16 v12, p6

    move-object/from16 v10, p7

    move-object/from16 v9, p8

    move-object/from16 v11, p9

    move-object/from16 v8, p10

    move/from16 v7, p12

    move/from16 v6, p13

    move-object/from16 v5, p14

    move-object/from16 v4, p15

    move-object/from16 v3, p16

    move-object/from16 v2, p17

    move/from16 v1, p19

    move/from16 v0, p20

    const/high16 v16, 0x30000

    const/16 v17, 0x2000

    const/16 v18, 0x4000

    const/16 v19, 0x400

    const/16 v20, 0x80

    const/16 v21, 0x100

    const/16 v22, 0x10

    const/16 v23, 0x20

    const/16 v24, 0x4

    .line 96
    const-string v2, "androidx.compose.material3.internal.TextFieldTransitionScope.<anonymous> (TextFieldImpl.kt:420)"

    move-object/from16 v25, v2

    const-string v2, "androidx.compose.material3.internal.TextFieldTransitionScope.<anonymous> (TextFieldImpl.kt:409)"

    move-object/from16 v26, v2

    const v2, -0x52ca6973

    move-object/from16 v3, p18

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v3

    const/4 v2, 0x6

    and-int/lit8 v32, v1, 0x6

    move-object/from16 v2, p0

    if-nez v32, :cond_1

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_0

    move/from16 v32, v24

    goto :goto_0

    :cond_0
    const/16 v32, 0x2

    :goto_0
    or-int v32, v1, v32

    :goto_1
    const/16 v28, 0x30

    goto :goto_2

    :cond_1
    move/from16 v32, v1

    goto :goto_1

    :goto_2
    and-int/lit8 v33, v1, 0x30

    move-object/from16 v2, p1

    if-nez v33, :cond_3

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_2

    move/from16 v33, v23

    goto :goto_3

    :cond_2
    move/from16 v33, v22

    :goto_3
    or-int v32, v32, v33

    :cond_3
    and-int/lit16 v2, v1, 0x180

    if-nez v2, :cond_5

    move-object/from16 v2, p2

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_4

    move/from16 v33, v21

    goto :goto_4

    :cond_4
    move/from16 v33, v20

    :goto_4
    or-int v32, v32, v33

    goto :goto_5

    :cond_5
    move-object/from16 v2, p2

    :goto_5
    and-int/lit16 v2, v1, 0xc00

    if-nez v2, :cond_7

    invoke-interface {v3, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v2, 0x800

    goto :goto_6

    :cond_6
    move/from16 v2, v19

    :goto_6
    or-int v32, v32, v2

    :cond_7
    and-int/lit16 v2, v1, 0x6000

    if-nez v2, :cond_9

    invoke-interface {v3, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    move/from16 v2, v18

    goto :goto_7

    :cond_8
    move/from16 v2, v17

    :goto_7
    or-int v32, v32, v2

    :cond_9
    and-int v2, v1, v16

    if-nez v2, :cond_b

    invoke-interface {v3, v13}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/high16 v2, 0x20000

    goto :goto_8

    :cond_a
    const/high16 v2, 0x10000

    :goto_8
    or-int v32, v32, v2

    :cond_b
    const/high16 v2, 0x180000

    and-int/2addr v2, v1

    if-nez v2, :cond_d

    invoke-interface {v3, v12}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/high16 v2, 0x100000

    goto :goto_9

    :cond_c
    const/high16 v2, 0x80000

    :goto_9
    or-int v32, v32, v2

    :cond_d
    const/high16 v2, 0xc00000

    and-int/2addr v2, v1

    if-nez v2, :cond_f

    invoke-interface {v3, v10}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/high16 v2, 0x800000

    goto :goto_a

    :cond_e
    const/high16 v2, 0x400000

    :goto_a
    or-int v32, v32, v2

    :cond_f
    const/high16 v2, 0x6000000

    and-int/2addr v2, v1

    if-nez v2, :cond_11

    invoke-interface {v3, v9}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/high16 v2, 0x4000000

    goto :goto_b

    :cond_10
    const/high16 v2, 0x2000000

    :goto_b
    or-int v32, v32, v2

    :cond_11
    const/high16 v2, 0x30000000

    and-int/2addr v2, v1

    if-nez v2, :cond_13

    invoke-interface {v3, v11}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/high16 v2, 0x20000000

    goto :goto_c

    :cond_12
    const/high16 v2, 0x10000000

    :goto_c
    or-int v32, v32, v2

    :cond_13
    move/from16 v2, v32

    const/16 v32, 0x6

    and-int/lit8 v33, v0, 0x6

    if-nez v33, :cond_15

    invoke-interface {v3, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_14

    goto :goto_d

    :cond_14
    const/16 v24, 0x2

    :goto_d
    or-int v24, v0, v24

    :goto_e
    const/16 v28, 0x30

    goto :goto_f

    :cond_15
    move/from16 v24, v0

    goto :goto_e

    :goto_f
    and-int/lit8 v32, v0, 0x30

    move/from16 v15, p11

    if-nez v32, :cond_17

    invoke-interface {v3, v15}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v32

    if-eqz v32, :cond_16

    move/from16 v22, v23

    :cond_16
    or-int v24, v24, v22

    :cond_17
    and-int/lit16 v1, v0, 0x180

    if-nez v1, :cond_19

    invoke-interface {v3, v7}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v1

    if-eqz v1, :cond_18

    move/from16 v20, v21

    :cond_18
    or-int v24, v24, v20

    :cond_19
    and-int/lit16 v1, v0, 0xc00

    if-nez v1, :cond_1b

    invoke-interface {v3, v6}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/16 v19, 0x800

    :cond_1a
    or-int v24, v24, v19

    :cond_1b
    and-int/lit16 v1, v0, 0x6000

    if-nez v1, :cond_1d

    invoke-interface {v3, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    move/from16 v17, v18

    :cond_1c
    or-int v24, v24, v17

    :cond_1d
    and-int v1, v0, v16

    if-nez v1, :cond_1f

    invoke-interface {v3, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/high16 v1, 0x20000

    goto :goto_10

    :cond_1e
    const/high16 v1, 0x10000

    :goto_10
    or-int v24, v24, v1

    :cond_1f
    const/high16 v1, 0x180000

    and-int/2addr v1, v0

    if-nez v1, :cond_21

    move-object/from16 v1, p16

    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_20

    const/high16 v16, 0x100000

    goto :goto_11

    :cond_20
    const/high16 v16, 0x80000

    :goto_11
    or-int v24, v24, v16

    goto :goto_12

    :cond_21
    move-object/from16 v1, p16

    :goto_12
    const/high16 v16, 0xc00000

    and-int v16, v0, v16

    move-object/from16 v4, p17

    move-object/from16 v0, v25

    if-nez v16, :cond_23

    invoke-interface {v3, v4}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_22

    const/high16 v16, 0x800000

    goto :goto_13

    :cond_22
    const/high16 v16, 0x400000

    :goto_13
    or-int v24, v24, v16

    :cond_23
    move/from16 v15, v24

    const v16, 0x12492493

    and-int v4, v2, v16

    const v8, 0x12492492

    if-ne v4, v8, :cond_25

    const v4, 0x492493

    and-int/2addr v4, v15

    const v8, 0x492492

    if-ne v4, v8, :cond_25

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v4

    if-nez v4, :cond_24

    goto :goto_14

    .line 301
    :cond_24
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v17, v3

    goto/16 :goto_38

    .line 96
    :cond_25
    :goto_14
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_26

    const-string v4, "androidx.compose.material3.internal.CommonDecorationBox (TextFieldImpl.kt:95)"

    const v8, -0x52ca6973

    invoke-static {v8, v2, v15, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_26
    shr-int/lit8 v4, v15, 0xc

    and-int/lit8 v4, v4, 0xe

    .line 97
    invoke-static {v5, v3, v4}, Landroidx/compose/foundation/interaction/FocusInteractionKt;->collectIsFocusedAsState(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v4

    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_27

    .line 100
    sget-object v4, Landroidx/compose/material3/internal/InputPhase;->Focused:Landroidx/compose/material3/internal/InputPhase;

    goto :goto_15

    .line 101
    :cond_27
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_28

    sget-object v4, Landroidx/compose/material3/internal/InputPhase;->UnfocusedEmpty:Landroidx/compose/material3/internal/InputPhase;

    goto :goto_15

    .line 102
    :cond_28
    sget-object v4, Landroidx/compose/material3/internal/InputPhase;->UnfocusedNotEmpty:Landroidx/compose/material3/internal/InputPhase;

    .line 105
    :goto_15
    invoke-virtual {v1, v7, v6, v8}, Landroidx/compose/material3/TextFieldColors;->labelColor-XeAY9LY$material3_release(ZZZ)J

    move-result-wide v16

    .line 107
    sget-object v1, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    move/from16 v18, v2

    const/4 v2, 0x6

    invoke-virtual {v1, v3, v2}, Landroidx/compose/material3/MaterialTheme;->getTypography(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/Typography;

    move-result-object v19

    .line 108
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/material3/Typography;->getBodyLarge()Landroidx/compose/ui/text/TextStyle;

    move-result-object v20

    .line 109
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/material3/Typography;->getBodySmall()Landroidx/compose/ui/text/TextStyle;

    move-result-object v2

    .line 111
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/text/TextStyle;->getColor-0d7_KjU()J

    move-result-wide v5

    sget-object v19, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    move/from16 v21, v8

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v5

    if-eqz v5, :cond_29

    invoke-virtual {v2}, Landroidx/compose/ui/text/TextStyle;->getColor-0d7_KjU()J

    move-result-wide v5

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 112
    :cond_29
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/text/TextStyle;->getColor-0d7_KjU()J

    move-result-wide v5

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v5

    if-nez v5, :cond_2b

    invoke-virtual {v2}, Landroidx/compose/ui/text/TextStyle;->getColor-0d7_KjU()J

    move-result-wide v5

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v5

    if-eqz v5, :cond_2b

    :cond_2a
    const/4 v5, 0x1

    goto :goto_16

    :cond_2b
    const/4 v5, 0x0

    .line 117
    :goto_16
    invoke-virtual {v2}, Landroidx/compose/ui/text/TextStyle;->getColor-0d7_KjU()J

    move-result-wide v6

    if-eqz v5, :cond_2d

    const-wide/16 v24, 0x10

    cmp-long v8, v6, v24

    if-eqz v8, :cond_2c

    goto :goto_17

    :cond_2c
    move-wide/from16 v6, v16

    .line 121
    :cond_2d
    :goto_17
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/text/TextStyle;->getColor-0d7_KjU()J

    move-result-wide v24

    if-eqz v5, :cond_2f

    const-wide/16 v31, 0x10

    cmp-long v8, v24, v31

    if-eqz v8, :cond_2e

    goto :goto_18

    :cond_2e
    move-wide/from16 v24, v16

    :cond_2f
    :goto_18
    if-eqz v14, :cond_30

    .line 125
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/material3/TextFieldLabelPosition;->getAlwaysMinimize()Z

    move-result v8

    if-nez v8, :cond_30

    move-object/from16 v39, v2

    const/4 v8, 0x1

    goto :goto_19

    :cond_30
    move-object/from16 v39, v2

    const/4 v8, 0x0

    .line 354
    :goto_19
    const-string v2, "TextFieldInputState"

    move-wide/from16 v40, v6

    const/4 v6, 0x0

    const/16 v7, 0x30

    invoke-static {v4, v2, v3, v7, v6}, Landroidx/compose/animation/core/TransitionKt;->updateTransition(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition;

    move-result-object v2

    .line 357
    sget-object v4, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->FastSpatial:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    const/4 v6, 0x6

    .line 362
    invoke-virtual {v1, v3, v6}, Landroidx/compose/material3/MaterialTheme;->getMotionScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/MotionScheme;

    move-result-object v7

    .line 345
    sget-object v6, Landroidx/compose/material3/MotionSchemeKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v6, v4

    move/from16 v42, v15

    const v15, -0x5cefed14

    const-class v43, Ljava/lang/Float;

    packed-switch v4, :pswitch_data_0

    .line 351
    invoke-interface {v3, v15}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    const v4, -0x5ce9351b

    invoke-interface {v3, v4}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 219
    invoke-static/range {v43 .. v43}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-interface {v3, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v31

    invoke-interface {v3, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    or-int v4, v31, v4

    .line 1166
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v15

    if-nez v4, :cond_31

    .line 1167
    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v15, v4, :cond_32

    .line 220
    :cond_31
    invoke-interface {v7}, Landroidx/compose/material3/MotionScheme;->slowEffectsSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v15

    .line 1169
    invoke-interface {v3, v15}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 219
    :cond_32
    check-cast v15, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 351
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto/16 :goto_1a

    :pswitch_1
    const v4, -0x5ce93dfb

    .line 350
    invoke-interface {v3, v4}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 204
    invoke-static/range {v43 .. v43}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-interface {v3, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v15

    invoke-interface {v3, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v4, v15

    .line 1166
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v15

    if-nez v4, :cond_33

    .line 1167
    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v15, v4, :cond_34

    .line 205
    :cond_33
    invoke-interface {v7}, Landroidx/compose/material3/MotionScheme;->fastEffectsSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v15

    .line 1169
    invoke-interface {v3, v15}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 204
    :cond_34
    check-cast v15, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 350
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto/16 :goto_1a

    :pswitch_2
    const v4, -0x5ce94738

    .line 349
    invoke-interface {v3, v4}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 189
    invoke-static/range {v43 .. v43}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-interface {v3, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v15

    invoke-interface {v3, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v4, v15

    .line 1166
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v15

    if-nez v4, :cond_35

    .line 1167
    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v15, v4, :cond_36

    .line 190
    :cond_35
    invoke-interface {v7}, Landroidx/compose/material3/MotionScheme;->defaultEffectsSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v15

    .line 1169
    invoke-interface {v3, v15}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 189
    :cond_36
    check-cast v15, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 349
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto/16 :goto_1a

    :pswitch_3
    const v4, -0x5ce9507b    # -8.168684E-18f

    .line 348
    invoke-interface {v3, v4}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 174
    invoke-static/range {v43 .. v43}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-interface {v3, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v15

    invoke-interface {v3, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v4, v15

    .line 1166
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v15

    if-nez v4, :cond_37

    .line 1167
    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v15, v4, :cond_38

    .line 175
    :cond_37
    invoke-interface {v7}, Landroidx/compose/material3/MotionScheme;->slowSpatialSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v15

    .line 1169
    invoke-interface {v3, v15}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 174
    :cond_38
    check-cast v15, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 348
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_1a

    :pswitch_4
    const v4, -0x5ce9595b

    .line 347
    invoke-interface {v3, v4}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 159
    invoke-static/range {v43 .. v43}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-interface {v3, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v15

    invoke-interface {v3, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v4, v15

    .line 1166
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v15

    if-nez v4, :cond_39

    .line 1167
    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v15, v4, :cond_3a

    .line 160
    :cond_39
    invoke-interface {v7}, Landroidx/compose/material3/MotionScheme;->fastSpatialSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v15

    .line 1169
    invoke-interface {v3, v15}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 159
    :cond_3a
    check-cast v15, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 347
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_1a

    :pswitch_5
    const v4, -0x5ce96298

    .line 346
    invoke-interface {v3, v4}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 144
    invoke-static/range {v43 .. v43}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-interface {v3, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v15

    invoke-interface {v3, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v4, v15

    .line 1166
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v15

    if-nez v4, :cond_3b

    .line 1167
    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v15, v4, :cond_3c

    .line 145
    :cond_3b
    invoke-interface {v7}, Landroidx/compose/material3/MotionScheme;->defaultSpatialSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v15

    .line 1169
    invoke-interface {v3, v15}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 144
    :cond_3c
    check-cast v15, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 346
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 359
    :goto_1a
    new-instance v4, Landroidx/compose/material3/internal/TextFieldImplKt$TextFieldTransitionScope$labelProgress$1;

    invoke-direct {v4, v15}, Landroidx/compose/material3/internal/TextFieldImplKt$TextFieldTransitionScope$labelProgress$1;-><init>(Landroidx/compose/animation/core/FiniteAnimationSpec;)V

    .line 558
    sget-object v7, Lkotlin/jvm/internal/FloatCompanionObject;->INSTANCE:Lkotlin/jvm/internal/FloatCompanionObject;

    invoke-static {v7}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Lkotlin/jvm/internal/FloatCompanionObject;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v35

    .line 561
    invoke-virtual {v2}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/compose/material3/internal/InputPhase;

    const v10, -0x796609df

    invoke-interface {v3, v10}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v30

    const/4 v10, -0x1

    if-eqz v30, :cond_3d

    const-string v12, "androidx.compose.material3.internal.TextFieldTransitionScope.<anonymous> (TextFieldImpl.kt:359)"

    const v9, -0x796609df

    const/4 v11, 0x0

    .line 360
    invoke-static {v9, v11, v10, v12}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_3d
    sget-object v9, Landroidx/compose/material3/internal/TextFieldImplKt$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v11, v9, v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_3e

    const/4 v12, 0x2

    if-eq v11, v12, :cond_40

    const/4 v12, 0x3

    if-ne v11, v12, :cond_3f

    :cond_3e
    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_1b

    .line 363
    :cond_3f
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_40
    if-eqz v8, :cond_3e

    const/4 v11, 0x0

    .line 360
    :goto_1b
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v12

    if-eqz v12, :cond_41

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_41
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v32

    .line 566
    invoke-virtual {v2}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/material3/internal/InputPhase;

    const v12, -0x796609df

    invoke-interface {v3, v12}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v30

    if-eqz v30, :cond_42

    const-string v15, "androidx.compose.material3.internal.TextFieldTransitionScope.<anonymous> (TextFieldImpl.kt:359)"

    const/4 v13, 0x0

    .line 360
    invoke-static {v12, v13, v10, v15}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_42
    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v11, v9, v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_43

    const/4 v12, 0x2

    if-eq v11, v12, :cond_45

    const/4 v12, 0x3

    if-ne v11, v12, :cond_44

    :cond_43
    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_1c

    .line 363
    :cond_44
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_45
    if-eqz v8, :cond_43

    const/4 v11, 0x0

    .line 360
    :goto_1c
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v12

    if-eqz v12, :cond_46

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_46
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v33

    .line 567
    invoke-virtual {v2}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v4, v11, v3, v13}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v34, v4

    check-cast v34, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 569
    const-string v36, "LabelProgress"

    const/high16 v4, 0x30000

    move-object/from16 v31, v2

    move-object/from16 v37, v3

    move/from16 v38, v4

    invoke-static/range {v31 .. v38}, Landroidx/compose/animation/core/TransitionKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v12

    .line 367
    sget-object v11, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->FastEffects:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    const/4 v13, 0x6

    .line 362
    invoke-virtual {v1, v3, v13}, Landroidx/compose/material3/MaterialTheme;->getMotionScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/MotionScheme;

    move-result-object v15

    .line 345
    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    aget v13, v6, v13

    packed-switch v13, :pswitch_data_1

    const v13, -0x5cefed14

    .line 351
    invoke-interface {v3, v13}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_6
    const v13, -0x5ce9351b

    invoke-interface {v3, v13}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 219
    invoke-static/range {v43 .. v43}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v13

    invoke-interface {v3, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v31

    invoke-interface {v3, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v13

    or-int v13, v31, v13

    .line 1166
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v13, :cond_47

    .line 1167
    sget-object v13, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v13}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v13

    if-ne v4, v13, :cond_48

    .line 220
    :cond_47
    invoke-interface {v15}, Landroidx/compose/material3/MotionScheme;->slowEffectsSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v4

    .line 1169
    invoke-interface {v3, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 219
    :cond_48
    check-cast v4, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 351
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto/16 :goto_1d

    :pswitch_7
    const v4, -0x5ce93dfb

    .line 350
    invoke-interface {v3, v4}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 204
    invoke-static/range {v43 .. v43}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-interface {v3, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v13

    invoke-interface {v3, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v4, v13

    .line 1166
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    if-nez v4, :cond_49

    .line 1167
    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v13, v4, :cond_4a

    .line 205
    :cond_49
    invoke-interface {v15}, Landroidx/compose/material3/MotionScheme;->fastEffectsSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v13

    .line 1169
    invoke-interface {v3, v13}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 204
    :cond_4a
    move-object v4, v13

    check-cast v4, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 350
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto/16 :goto_1d

    :pswitch_8
    const v4, -0x5ce94738

    .line 349
    invoke-interface {v3, v4}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 189
    invoke-static/range {v43 .. v43}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-interface {v3, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v13

    invoke-interface {v3, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v4, v13

    .line 1166
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    if-nez v4, :cond_4b

    .line 1167
    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v13, v4, :cond_4c

    .line 190
    :cond_4b
    invoke-interface {v15}, Landroidx/compose/material3/MotionScheme;->defaultEffectsSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v13

    .line 1169
    invoke-interface {v3, v13}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 189
    :cond_4c
    move-object v4, v13

    check-cast v4, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 349
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto/16 :goto_1d

    :pswitch_9
    const v4, -0x5ce9507b    # -8.168684E-18f

    .line 348
    invoke-interface {v3, v4}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 174
    invoke-static/range {v43 .. v43}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-interface {v3, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v13

    invoke-interface {v3, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v4, v13

    .line 1166
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    if-nez v4, :cond_4d

    .line 1167
    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v13, v4, :cond_4e

    .line 175
    :cond_4d
    invoke-interface {v15}, Landroidx/compose/material3/MotionScheme;->slowSpatialSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v13

    .line 1169
    invoke-interface {v3, v13}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 174
    :cond_4e
    move-object v4, v13

    check-cast v4, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 348
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_1d

    :pswitch_a
    const v4, -0x5ce9595b

    .line 347
    invoke-interface {v3, v4}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 159
    invoke-static/range {v43 .. v43}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-interface {v3, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v13

    invoke-interface {v3, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v4, v13

    .line 1166
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    if-nez v4, :cond_4f

    .line 1167
    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v13, v4, :cond_50

    .line 160
    :cond_4f
    invoke-interface {v15}, Landroidx/compose/material3/MotionScheme;->fastSpatialSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v13

    .line 1169
    invoke-interface {v3, v13}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 159
    :cond_50
    move-object v4, v13

    check-cast v4, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 347
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_1d

    :pswitch_b
    const v4, -0x5ce96298

    .line 346
    invoke-interface {v3, v4}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 144
    invoke-static/range {v43 .. v43}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-interface {v3, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v13

    invoke-interface {v3, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v4, v13

    .line 1166
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    if-nez v4, :cond_51

    .line 1167
    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v13, v4, :cond_52

    .line 145
    :cond_51
    invoke-interface {v15}, Landroidx/compose/material3/MotionScheme;->defaultSpatialSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v13

    .line 1169
    invoke-interface {v3, v13}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 144
    :cond_52
    move-object v4, v13

    check-cast v4, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 346
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 368
    :goto_1d
    sget-object v13, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->SlowEffects:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    const/4 v15, 0x6

    .line 362
    invoke-virtual {v1, v3, v15}, Landroidx/compose/material3/MaterialTheme;->getMotionScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/MotionScheme;

    move-result-object v10

    .line 345
    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    aget v13, v6, v13

    packed-switch v13, :pswitch_data_2

    const v13, -0x5cefed14

    .line 351
    invoke-interface {v3, v13}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_c
    const v13, -0x5ce9351b

    invoke-interface {v3, v13}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 219
    invoke-static/range {v43 .. v43}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v13

    invoke-interface {v3, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v15

    invoke-interface {v3, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v13

    or-int/2addr v13, v15

    .line 1166
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v15

    if-nez v13, :cond_53

    .line 1167
    sget-object v13, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v13}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v13

    if-ne v15, v13, :cond_54

    .line 220
    :cond_53
    invoke-interface {v10}, Landroidx/compose/material3/MotionScheme;->slowEffectsSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v15

    .line 1169
    invoke-interface {v3, v15}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 219
    :cond_54
    check-cast v15, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 351
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto/16 :goto_1e

    :pswitch_d
    const v13, -0x5ce93dfb

    .line 350
    invoke-interface {v3, v13}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 204
    invoke-static/range {v43 .. v43}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v13

    invoke-interface {v3, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v15

    invoke-interface {v3, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v13

    or-int/2addr v13, v15

    .line 1166
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v15

    if-nez v13, :cond_55

    .line 1167
    sget-object v13, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v13}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v13

    if-ne v15, v13, :cond_56

    .line 205
    :cond_55
    invoke-interface {v10}, Landroidx/compose/material3/MotionScheme;->fastEffectsSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v15

    .line 1169
    invoke-interface {v3, v15}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 204
    :cond_56
    check-cast v15, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 350
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto/16 :goto_1e

    :pswitch_e
    const v13, -0x5ce94738

    .line 349
    invoke-interface {v3, v13}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 189
    invoke-static/range {v43 .. v43}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v13

    invoke-interface {v3, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v15

    invoke-interface {v3, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v13

    or-int/2addr v13, v15

    .line 1166
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v15

    if-nez v13, :cond_57

    .line 1167
    sget-object v13, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v13}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v13

    if-ne v15, v13, :cond_58

    .line 190
    :cond_57
    invoke-interface {v10}, Landroidx/compose/material3/MotionScheme;->defaultEffectsSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v15

    .line 1169
    invoke-interface {v3, v15}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 189
    :cond_58
    check-cast v15, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 349
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto/16 :goto_1e

    :pswitch_f
    const v13, -0x5ce9507b    # -8.168684E-18f

    .line 348
    invoke-interface {v3, v13}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 174
    invoke-static/range {v43 .. v43}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v13

    invoke-interface {v3, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v15

    invoke-interface {v3, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v13

    or-int/2addr v13, v15

    .line 1166
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v15

    if-nez v13, :cond_59

    .line 1167
    sget-object v13, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v13}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v13

    if-ne v15, v13, :cond_5a

    .line 175
    :cond_59
    invoke-interface {v10}, Landroidx/compose/material3/MotionScheme;->slowSpatialSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v15

    .line 1169
    invoke-interface {v3, v15}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 174
    :cond_5a
    check-cast v15, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 348
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_1e

    :pswitch_10
    const v13, -0x5ce9595b

    .line 347
    invoke-interface {v3, v13}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 159
    invoke-static/range {v43 .. v43}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v13

    invoke-interface {v3, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v15

    invoke-interface {v3, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v13

    or-int/2addr v13, v15

    .line 1166
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v15

    if-nez v13, :cond_5b

    .line 1167
    sget-object v13, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v13}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v13

    if-ne v15, v13, :cond_5c

    .line 160
    :cond_5b
    invoke-interface {v10}, Landroidx/compose/material3/MotionScheme;->fastSpatialSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v15

    .line 1169
    invoke-interface {v3, v15}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 159
    :cond_5c
    check-cast v15, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 347
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_1e

    :pswitch_11
    const v13, -0x5ce96298

    .line 346
    invoke-interface {v3, v13}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 144
    invoke-static/range {v43 .. v43}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v13

    invoke-interface {v3, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v15

    invoke-interface {v3, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v13

    or-int/2addr v13, v15

    .line 1166
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v15

    if-nez v13, :cond_5d

    .line 1167
    sget-object v13, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v13}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v13

    if-ne v15, v13, :cond_5e

    .line 145
    :cond_5d
    invoke-interface {v10}, Landroidx/compose/material3/MotionScheme;->defaultSpatialSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v15

    .line 1169
    invoke-interface {v3, v15}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 144
    :cond_5e
    check-cast v15, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 346
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 370
    :goto_1e
    new-instance v10, Landroidx/compose/material3/internal/TextFieldImplKt$TextFieldTransitionScope$placeholderOpacity$1;

    invoke-direct {v10, v4, v15}, Landroidx/compose/material3/internal/TextFieldImplKt$TextFieldTransitionScope$placeholderOpacity$1;-><init>(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/FiniteAnimationSpec;)V

    .line 558
    invoke-static {v7}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Lkotlin/jvm/internal/FloatCompanionObject;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v35

    .line 637
    invoke-virtual {v2}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/compose/material3/internal/InputPhase;

    const v15, 0x55952420

    invoke-interface {v3, v15}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v29

    move/from16 v43, v5

    if-eqz v29, :cond_5f

    const-string v5, "androidx.compose.material3.internal.TextFieldTransitionScope.<anonymous> (TextFieldImpl.kt:384)"

    move-object/from16 v44, v12

    const/4 v12, -0x1

    const/4 v14, 0x0

    .line 385
    invoke-static {v15, v14, v12, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_1f

    :cond_5f
    move-object/from16 v44, v12

    :goto_1f
    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v9, v5

    const/4 v12, 0x1

    if-eq v5, v12, :cond_62

    const/4 v12, 0x2

    if-eq v5, v12, :cond_61

    const/4 v12, 0x3

    if-ne v5, v12, :cond_60

    :goto_20
    const/4 v5, 0x0

    goto :goto_21

    .line 388
    :cond_60
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_61
    if-eqz v8, :cond_62

    goto :goto_20

    :cond_62
    const/high16 v5, 0x3f800000    # 1.0f

    .line 385
    :goto_21
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v12

    if-eqz v12, :cond_63

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_63
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v32

    .line 642
    invoke-virtual {v2}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/material3/internal/InputPhase;

    const v12, 0x55952420

    invoke-interface {v3, v12}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v13

    if-eqz v13, :cond_64

    const-string v13, "androidx.compose.material3.internal.TextFieldTransitionScope.<anonymous> (TextFieldImpl.kt:384)"

    const/4 v14, 0x0

    const/4 v15, -0x1

    .line 385
    invoke-static {v12, v14, v15, v13}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_64
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v9, v5

    const/4 v12, 0x1

    if-eq v5, v12, :cond_67

    const/4 v12, 0x2

    if-eq v5, v12, :cond_66

    const/4 v12, 0x3

    if-ne v5, v12, :cond_65

    :goto_22
    const/4 v5, 0x0

    goto :goto_23

    .line 388
    :cond_65
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_66
    if-eqz v8, :cond_67

    goto :goto_22

    :cond_67
    const/high16 v5, 0x3f800000    # 1.0f

    .line 385
    :goto_23
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v12

    if-eqz v12, :cond_68

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_68
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v33

    .line 643
    invoke-virtual {v2}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    move-result-object v5

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v10, v5, v3, v13}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v34, v5

    check-cast v34, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 645
    const-string v36, "PlaceholderOpacity"

    move-object/from16 v31, v2

    move-object/from16 v37, v3

    const/high16 v5, 0x30000

    move/from16 v38, v5

    invoke-static/range {v31 .. v38}, Landroidx/compose/animation/core/TransitionKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v10

    .line 393
    new-instance v5, Landroidx/compose/material3/internal/TextFieldImplKt$TextFieldTransitionScope$prefixSuffixOpacity$1;

    invoke-direct {v5, v4}, Landroidx/compose/material3/internal/TextFieldImplKt$TextFieldTransitionScope$prefixSuffixOpacity$1;-><init>(Landroidx/compose/animation/core/FiniteAnimationSpec;)V

    .line 558
    invoke-static {v7}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Lkotlin/jvm/internal/FloatCompanionObject;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v35

    .line 651
    invoke-virtual {v2}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/material3/internal/InputPhase;

    const v7, 0x433c6eba

    invoke-interface {v3, v7}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v12

    if-eqz v12, :cond_69

    const-string v12, "androidx.compose.material3.internal.TextFieldTransitionScope.<anonymous> (TextFieldImpl.kt:396)"

    const/4 v13, 0x0

    const/4 v14, -0x1

    .line 397
    invoke-static {v7, v13, v14, v12}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_69
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v9, v4

    const/4 v7, 0x1

    if-eq v4, v7, :cond_6a

    const/4 v7, 0x2

    if-eq v4, v7, :cond_6c

    const/4 v7, 0x3

    if-ne v4, v7, :cond_6b

    :cond_6a
    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_24

    .line 400
    :cond_6b
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_6c
    if-eqz v8, :cond_6a

    const/4 v4, 0x0

    .line 397
    :goto_24
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v7

    if-eqz v7, :cond_6d

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_6d
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v32

    .line 656
    invoke-virtual {v2}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/material3/internal/InputPhase;

    const v7, 0x433c6eba

    invoke-interface {v3, v7}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v12

    if-eqz v12, :cond_6e

    const-string v12, "androidx.compose.material3.internal.TextFieldTransitionScope.<anonymous> (TextFieldImpl.kt:396)"

    const/4 v13, 0x0

    const/4 v14, -0x1

    .line 397
    invoke-static {v7, v13, v14, v12}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_6e
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v9, v4

    const/4 v7, 0x1

    if-eq v4, v7, :cond_72

    const/4 v7, 0x2

    if-eq v4, v7, :cond_71

    const/4 v12, 0x3

    if-ne v4, v12, :cond_70

    :cond_6f
    :goto_25
    const/high16 v30, 0x3f800000    # 1.0f

    goto :goto_26

    .line 400
    :cond_70
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_71
    const/4 v12, 0x3

    if-eqz v8, :cond_6f

    const/16 v30, 0x0

    goto :goto_26

    :cond_72
    const/4 v7, 0x2

    const/4 v12, 0x3

    goto :goto_25

    .line 397
    :goto_26
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_73

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_73
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v33

    .line 657
    invoke-virtual {v2}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    move-result-object v4

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v5, v4, v3, v13}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v34, v4

    check-cast v34, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 659
    const-string v36, "PrefixSuffixOpacity"

    move-object/from16 v31, v2

    move-object/from16 v37, v3

    const/high16 v4, 0x30000

    move/from16 v38, v4

    invoke-static/range {v31 .. v38}, Landroidx/compose/animation/core/TransitionKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v13

    const/4 v4, 0x6

    .line 362
    invoke-virtual {v1, v3, v4}, Landroidx/compose/material3/MaterialTheme;->getMotionScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/MotionScheme;

    move-result-object v1

    .line 345
    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v6, v5

    const-class v6, Landroidx/compose/ui/graphics/Color;

    packed-switch v5, :pswitch_data_3

    const v5, -0x5cefed14

    .line 351
    invoke-interface {v3, v5}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_12
    const v5, -0x5ce9351b

    invoke-interface {v3, v5}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 219
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    invoke-interface {v3, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v5, v6

    .line 1166
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_74

    .line 1167
    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v6, v5, :cond_75

    .line 220
    :cond_74
    invoke-interface {v1}, Landroidx/compose/material3/MotionScheme;->slowEffectsSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v6

    .line 1169
    invoke-interface {v3, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 219
    :cond_75
    check-cast v6, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 351
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto/16 :goto_27

    :pswitch_13
    const v5, -0x5ce93dfb

    .line 350
    invoke-interface {v3, v5}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 204
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    invoke-interface {v3, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v5, v6

    .line 1166
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_76

    .line 1167
    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v6, v5, :cond_77

    .line 205
    :cond_76
    invoke-interface {v1}, Landroidx/compose/material3/MotionScheme;->fastEffectsSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v6

    .line 1169
    invoke-interface {v3, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 204
    :cond_77
    check-cast v6, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 350
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto/16 :goto_27

    :pswitch_14
    const v5, -0x5ce94738

    .line 349
    invoke-interface {v3, v5}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 189
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    invoke-interface {v3, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v5, v6

    .line 1166
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_78

    .line 1167
    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v6, v5, :cond_79

    .line 190
    :cond_78
    invoke-interface {v1}, Landroidx/compose/material3/MotionScheme;->defaultEffectsSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v6

    .line 1169
    invoke-interface {v3, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 189
    :cond_79
    check-cast v6, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 349
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto/16 :goto_27

    :pswitch_15
    const v5, -0x5ce9507b    # -8.168684E-18f

    .line 348
    invoke-interface {v3, v5}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 174
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    invoke-interface {v3, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v5, v6

    .line 1166
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_7a

    .line 1167
    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v6, v5, :cond_7b

    .line 175
    :cond_7a
    invoke-interface {v1}, Landroidx/compose/material3/MotionScheme;->slowSpatialSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v6

    .line 1169
    invoke-interface {v3, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 174
    :cond_7b
    check-cast v6, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 348
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_27

    :pswitch_16
    const v5, -0x5ce9595b

    .line 347
    invoke-interface {v3, v5}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 159
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    invoke-interface {v3, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v5, v6

    .line 1166
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_7c

    .line 1167
    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v6, v5, :cond_7d

    .line 160
    :cond_7c
    invoke-interface {v1}, Landroidx/compose/material3/MotionScheme;->fastSpatialSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v6

    .line 1169
    invoke-interface {v3, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 159
    :cond_7d
    check-cast v6, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 347
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_27

    :pswitch_17
    const v5, -0x5ce96298

    .line 346
    invoke-interface {v3, v5}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 144
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    invoke-interface {v3, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v5, v6

    .line 1166
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_7e

    .line 1167
    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v6, v5, :cond_7f

    .line 145
    :cond_7e
    invoke-interface {v1}, Landroidx/compose/material3/MotionScheme;->defaultSpatialSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v6

    .line 1169
    invoke-interface {v3, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 144
    :cond_7f
    check-cast v6, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 346
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 406
    :goto_27
    new-instance v1, Landroidx/compose/material3/internal/TextFieldImplKt$TextFieldTransitionScope$labelTextStyleColor$1;

    invoke-direct {v1, v6}, Landroidx/compose/material3/internal/TextFieldImplKt$TextFieldTransitionScope$labelTextStyleColor$1;-><init>(Landroidx/compose/animation/core/FiniteAnimationSpec;)V

    .line 69
    invoke-virtual {v2}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/material3/internal/InputPhase;

    const v8, -0x66748bf

    invoke-interface {v3, v8}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v11

    move-object/from16 v15, v26

    if-eqz v11, :cond_80

    const/4 v11, 0x0

    const/4 v14, -0x1

    .line 410
    invoke-static {v8, v11, v14, v15}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_80
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v9, v5

    const/4 v11, 0x1

    if-ne v5, v11, :cond_81

    move-wide/from16 v26, v40

    goto :goto_28

    :cond_81
    move-wide/from16 v26, v24

    :goto_28
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_82

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_82
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 69
    invoke-static/range {v26 .. v27}, Landroidx/compose/ui/graphics/Color;->getColorSpace-impl(J)Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    move-result-object v5

    .line 696
    invoke-interface {v3, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v11

    .line 697
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    if-nez v11, :cond_83

    .line 698
    sget-object v11, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v11}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v11

    if-ne v14, v11, :cond_84

    .line 71
    :cond_83
    invoke-static/range {v19 .. v19}, Landroidx/compose/animation/ColorVectorConverterKt;->getVectorConverter(Landroidx/compose/ui/graphics/Color$Companion;)Lkotlin/jvm/functions/Function1;

    move-result-object v11

    invoke-interface {v11, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v14, v5

    check-cast v14, Landroidx/compose/animation/core/TwoWayConverter;

    .line 701
    invoke-interface {v3, v14}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 696
    :cond_84
    move-object/from16 v35, v14

    check-cast v35, Landroidx/compose/animation/core/TwoWayConverter;

    .line 707
    invoke-virtual {v2}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/material3/internal/InputPhase;

    invoke-interface {v3, v8}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v11

    if-eqz v11, :cond_85

    const/4 v11, 0x0

    const/4 v14, -0x1

    .line 410
    invoke-static {v8, v11, v14, v15}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_85
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v9, v5

    const/4 v11, 0x1

    if-ne v5, v11, :cond_86

    move-wide/from16 v26, v40

    goto :goto_29

    :cond_86
    move-wide/from16 v26, v24

    :goto_29
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_87

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_87
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    invoke-static/range {v26 .. v27}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v32

    .line 708
    invoke-virtual {v2}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/material3/internal/InputPhase;

    invoke-interface {v3, v8}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v11

    if-eqz v11, :cond_88

    const/4 v11, 0x0

    const/4 v14, -0x1

    .line 410
    invoke-static {v8, v11, v14, v15}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_88
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v9, v5

    const/4 v8, 0x1

    if-ne v5, v8, :cond_89

    goto :goto_2a

    :cond_89
    move-wide/from16 v40, v24

    :goto_2a
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_8a

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_8a
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    invoke-static/range {v40 .. v41}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v33

    .line 709
    invoke-virtual {v2}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    move-result-object v5

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v5, v3, v11}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v34, v1

    check-cast v34, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 711
    const-string v36, "LabelTextStyleColor"

    move-object/from16 v31, v2

    move-object/from16 v37, v3

    const/high16 v1, 0x30000

    move/from16 v38, v1

    invoke-static/range {v31 .. v38}, Landroidx/compose/animation/core/TransitionKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v9

    .line 418
    new-instance v1, Landroidx/compose/material3/internal/TextFieldImplKt$TextFieldTransitionScope$labelContentColor$1;

    invoke-direct {v1, v6}, Landroidx/compose/material3/internal/TextFieldImplKt$TextFieldTransitionScope$labelContentColor$1;-><init>(Landroidx/compose/animation/core/FiniteAnimationSpec;)V

    .line 69
    invoke-virtual {v2}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/material3/internal/InputPhase;

    const v5, 0x3cff1b76

    invoke-interface {v3, v5}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v6

    if-eqz v6, :cond_8b

    const/4 v6, 0x0

    const/4 v11, -0x1

    .line 421
    invoke-static {v5, v6, v11, v0}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_8b
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v6

    if-eqz v6, :cond_8c

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_8c
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 69
    invoke-static/range {v16 .. v17}, Landroidx/compose/ui/graphics/Color;->getColorSpace-impl(J)Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    move-result-object v6

    .line 717
    invoke-interface {v3, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v11

    .line 718
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    if-nez v11, :cond_8d

    .line 719
    sget-object v11, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v11}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v11

    if-ne v14, v11, :cond_8e

    .line 71
    :cond_8d
    invoke-static/range {v19 .. v19}, Landroidx/compose/animation/ColorVectorConverterKt;->getVectorConverter(Landroidx/compose/ui/graphics/Color$Companion;)Lkotlin/jvm/functions/Function1;

    move-result-object v11

    invoke-interface {v11, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v14, v6

    check-cast v14, Landroidx/compose/animation/core/TwoWayConverter;

    .line 722
    invoke-interface {v3, v14}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 717
    :cond_8e
    move-object/from16 v35, v14

    check-cast v35, Landroidx/compose/animation/core/TwoWayConverter;

    .line 707
    invoke-virtual {v2}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/material3/internal/InputPhase;

    invoke-interface {v3, v5}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v6

    if-eqz v6, :cond_8f

    const/4 v6, 0x0

    const/4 v11, -0x1

    .line 421
    invoke-static {v5, v6, v11, v0}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_8f
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v6

    if-eqz v6, :cond_90

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_90
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    invoke-static/range {v16 .. v17}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v32

    .line 708
    invoke-virtual {v2}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/material3/internal/InputPhase;

    invoke-interface {v3, v5}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v6

    if-eqz v6, :cond_91

    const/4 v6, -0x1

    const/4 v11, 0x0

    .line 421
    invoke-static {v5, v11, v6, v0}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_2b

    :cond_91
    const/4 v11, 0x0

    :goto_2b
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_92

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_92
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    invoke-static/range {v16 .. v17}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v33

    .line 709
    invoke-virtual {v2}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    move-result-object v0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v0, v3, v5}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v34, v0

    check-cast v34, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 711
    const-string v36, "LabelContentColor"

    move-object/from16 v31, v2

    move-object/from16 v37, v3

    const/high16 v0, 0x30000

    move/from16 v38, v0

    invoke-static/range {v31 .. v38}, Landroidx/compose/animation/core/TransitionKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v5

    .line 1166
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .line 1167
    sget-object v14, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v14}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_93

    .line 129
    new-instance v0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$labelScope$1$1;

    move-object/from16 v15, v44

    invoke-direct {v0, v15}, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$labelScope$1$1;-><init>(Landroidx/compose/runtime/State;)V

    .line 1169
    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    goto :goto_2c

    :cond_93
    move-object/from16 v15, v44

    .line 128
    :goto_2c
    move-object/from16 v16, v0

    check-cast v16, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$labelScope$1$1;

    const v0, -0x95ba2f8

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const/16 v6, 0x36

    const/4 v2, 0x0

    if-nez p4, :cond_94

    move/from16 v9, p12

    move/from16 v17, v4

    move-object/from16 v24, v10

    move/from16 v19, v12

    move-object/from16 p18, v13

    move-object/from16 v25, v14

    move-object/from16 v44, v15

    move/from16 v45, v18

    move/from16 v46, v21

    const/16 v18, 0x30

    move/from16 v15, p13

    move-object/from16 v12, p16

    move-object v13, v3

    move v10, v6

    move v14, v8

    move/from16 v21, v11

    move-object v6, v2

    goto :goto_2d

    .line 136
    :cond_94
    new-instance v1, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1;

    move-object v0, v1

    move-object v11, v1

    move-object/from16 v1, v20

    move/from16 v17, v4

    move/from16 v19, v12

    move/from16 v4, v18

    const/16 v18, 0x30

    move-object v12, v2

    move-object/from16 v2, v39

    move-object/from16 v12, p16

    move-object/from16 p18, v13

    move-object v13, v3

    move-object v3, v15

    move/from16 v45, v4

    move-object/from16 v44, v15

    move-object/from16 v15, p15

    move-object v4, v5

    move/from16 v5, v43

    move/from16 v15, p13

    move-object/from16 v24, v10

    move v10, v6

    move-object v6, v9

    move/from16 v9, p12

    move-object/from16 v25, v14

    move v14, v8

    move v8, v7

    move-object/from16 v7, p4

    move/from16 v46, v21

    const/16 v21, 0x0

    move-object/from16 v8, v16

    invoke-direct/range {v0 .. v8}, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1;-><init>(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;ZLandroidx/compose/runtime/State;Lkotlin/jvm/functions/Function3;Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$labelScope$1$1;)V

    const v0, 0x29ab02bf

    invoke-static {v0, v14, v11, v13, v10}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object v6, v0

    .line 135
    :goto_2d
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    move/from16 v7, v46

    .line 152
    invoke-virtual {v12, v9, v15, v7}, Landroidx/compose/material3/TextFieldColors;->placeholderColor-XeAY9LY$material3_release(ZZZ)J

    move-result-wide v2

    .line 1166
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .line 1167
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_95

    .line 154
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->structuralEqualityPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v0

    new-instance v1, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$showPlaceholder$2$1;

    move-object/from16 v4, v24

    invoke-direct {v1, v4}, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$showPlaceholder$2$1;-><init>(Landroidx/compose/runtime/State;)V

    invoke-static {v0, v1}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Landroidx/compose/runtime/SnapshotMutationPolicy;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object v0

    .line 1169
    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    goto :goto_2e

    :cond_95
    move-object/from16 v4, v24

    .line 153
    :goto_2e
    check-cast v0, Landroidx/compose/runtime/State;

    const v1, -0x95b1f3b

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    if-eqz p5, :cond_96

    .line 157
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_96

    invoke-static {v0}, Landroidx/compose/material3/internal/TextFieldImplKt;->CommonDecorationBox$lambda$15$lambda$7(Landroidx/compose/runtime/State;)Z

    move-result v0

    if-eqz v0, :cond_96

    .line 158
    new-instance v8, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedPlaceholder$1;

    move-object v0, v8

    move-object v1, v4

    move-object/from16 v4, v20

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedPlaceholder$1;-><init>(Landroidx/compose/runtime/State;JLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;)V

    const v0, 0x18a9a66a

    invoke-static {v0, v14, v8, v13, v10}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object v8, v0

    goto :goto_2f

    :cond_96
    const/4 v8, 0x0

    .line 157
    :goto_2f
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 169
    invoke-virtual {v12, v9, v15, v7}, Landroidx/compose/material3/TextFieldColors;->prefixColor-XeAY9LY$material3_release(ZZZ)J

    move-result-wide v2

    .line 1166
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .line 1167
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_97

    .line 171
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->structuralEqualityPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v0

    new-instance v1, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$showPrefixSuffix$2$1;

    move-object/from16 v11, p18

    invoke-direct {v1, v11}, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$showPrefixSuffix$2$1;-><init>(Landroidx/compose/runtime/State;)V

    invoke-static {v0, v1}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Landroidx/compose/runtime/SnapshotMutationPolicy;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object v0

    .line 1169
    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    goto :goto_30

    :cond_97
    move-object/from16 v11, p18

    .line 170
    :goto_30
    move-object/from16 v16, v0

    check-cast v16, Landroidx/compose/runtime/State;

    const v0, -0x95abf2c

    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    if-eqz p8, :cond_98

    .line 174
    invoke-static/range {v16 .. v16}, Landroidx/compose/material3/internal/TextFieldImplKt;->CommonDecorationBox$lambda$15$lambda$9(Landroidx/compose/runtime/State;)Z

    move-result v0

    if-eqz v0, :cond_98

    .line 175
    new-instance v5, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedPrefix$1;

    move-object v0, v5

    move-object v1, v11

    move-object/from16 v4, v20

    move-object/from16 p18, v6

    move-object v6, v5

    move-object/from16 v5, p8

    invoke-direct/range {v0 .. v5}, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedPrefix$1;-><init>(Landroidx/compose/runtime/State;JLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;)V

    const v0, -0x6a13497c

    invoke-static {v0, v14, v6, v13, v10}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object v6, v0

    goto :goto_31

    :cond_98
    move-object/from16 p18, v6

    const/4 v6, 0x0

    .line 174
    :goto_31
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 186
    invoke-virtual {v12, v9, v15, v7}, Landroidx/compose/material3/TextFieldColors;->suffixColor-XeAY9LY$material3_release(ZZZ)J

    move-result-wide v2

    const v0, -0x95a76ac

    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    if-eqz p9, :cond_99

    .line 188
    invoke-static/range {v16 .. v16}, Landroidx/compose/material3/internal/TextFieldImplKt;->CommonDecorationBox$lambda$15$lambda$9(Landroidx/compose/runtime/State;)Z

    move-result v0

    if-eqz v0, :cond_99

    .line 189
    new-instance v5, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedSuffix$1;

    move-object v0, v5

    move-object v1, v11

    move-object/from16 v4, v20

    move-object v11, v5

    move-object/from16 v5, p9

    invoke-direct/range {v0 .. v5}, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedSuffix$1;-><init>(Landroidx/compose/runtime/State;JLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;)V

    const v0, -0x118b9ffd

    invoke-static {v0, v14, v11, v13, v10}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object/from16 v20, v0

    goto :goto_32

    :cond_99
    const/16 v20, 0x0

    .line 188
    :goto_32
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 200
    invoke-virtual {v12, v9, v15, v7}, Landroidx/compose/material3/TextFieldColors;->leadingIconColor-XeAY9LY$material3_release(ZZZ)J

    move-result-wide v0

    const v2, -0x95a2c72

    invoke-interface {v13, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    move-object/from16 v5, p6

    if-nez v5, :cond_9a

    const/4 v4, 0x0

    goto :goto_33

    .line 203
    :cond_9a
    new-instance v2, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedLeading$1$1;

    invoke-direct {v2, v0, v1, v5}, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedLeading$1$1;-><init>(JLkotlin/jvm/functions/Function2;)V

    const v0, -0x69545b70

    invoke-static {v0, v14, v2, v13, v10}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object v4, v0

    .line 202
    :goto_33
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 206
    invoke-virtual {v12, v9, v15, v7}, Landroidx/compose/material3/TextFieldColors;->trailingIconColor-XeAY9LY$material3_release(ZZZ)J

    move-result-wide v0

    const v2, -0x95a0931

    invoke-interface {v13, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    move-object/from16 v3, p7

    if-nez v3, :cond_9b

    const/16 v22, 0x0

    goto :goto_34

    .line 209
    :cond_9b
    new-instance v2, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedTrailing$1$1;

    invoke-direct {v2, v0, v1, v3}, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedTrailing$1$1;-><init>(JLkotlin/jvm/functions/Function2;)V

    const v0, 0x542b3484

    invoke-static {v0, v14, v2, v13, v10}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object/from16 v22, v0

    .line 208
    :goto_34
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 212
    invoke-virtual {v12, v9, v15, v7}, Landroidx/compose/material3/TextFieldColors;->supportingTextColor-XeAY9LY$material3_release(ZZZ)J

    move-result-wide v0

    const v2, -0x959e436

    invoke-interface {v13, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    move-object/from16 v7, p10

    if-nez v7, :cond_9c

    const/16 v24, 0x0

    goto :goto_35

    .line 215
    :cond_9c
    new-instance v2, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedSupporting$1$1;

    move-object/from16 v11, v39

    invoke-direct {v2, v0, v1, v11, v7}, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedSupporting$1$1;-><init>(JLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;)V

    const v0, 0x79ccd51b

    invoke-static {v0, v14, v2, v13, v10}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object/from16 v24, v0

    .line 214
    :goto_35
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 224
    sget-object v0, Landroidx/compose/material3/internal/TextFieldImplKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v14, :cond_a2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9d

    const v0, -0x21aa777f

    .line 299
    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v17, v13

    goto/16 :goto_37

    :cond_9d
    const v0, -0x21cbd4d8

    .line 250
    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 1166
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .line 1167
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v0, v2, :cond_9e

    .line 252
    sget-object v0, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Size$Companion;->getZero-NH-jbRc()J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Landroidx/compose/ui/geometry/Size;->box-impl(J)Landroidx/compose/ui/geometry/Size;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    .line 1169
    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 252
    :cond_9e
    check-cast v0, Landroidx/compose/runtime/MutableState;

    .line 253
    new-instance v1, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$borderContainerWithId$1;

    move-object/from16 v15, p3

    move-object/from16 v2, p15

    move-object/from16 v11, p17

    invoke-direct {v1, v0, v15, v2, v11}, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$borderContainerWithId$1;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/material3/TextFieldLabelPosition;Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function2;)V

    const v2, 0x58712a77

    invoke-static {v2, v14, v1, v13, v10}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v18

    .line 268
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 294
    invoke-interface/range {v44 .. v44}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v10

    move/from16 v2, v45

    and-int/lit16 v14, v2, 0x1c00

    const/16 v3, 0x800

    if-ne v14, v3, :cond_9f

    move-object/from16 v3, v44

    const/16 v21, 0x1

    goto :goto_36

    :cond_9f
    move-object/from16 v3, v44

    .line 278
    :goto_36
    invoke-interface {v13, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v14

    or-int v14, v21, v14

    .line 1166
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v14, :cond_a0

    .line 1167
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v14

    if-ne v5, v14, :cond_a1

    .line 278
    :cond_a0
    new-instance v5, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$1$1;

    invoke-direct {v5, v15, v3, v0}, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$1$1;-><init>(Landroidx/compose/material3/TextFieldLabelPosition;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;)V

    .line 1169
    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 278
    :cond_a1
    move-object v0, v5

    check-cast v0, Lkotlin/jvm/functions/Function1;

    move-object v11, v0

    shr-int/lit8 v0, v2, 0x3

    and-int/lit8 v0, v0, 0x70

    or-int/lit8 v0, v0, 0x6

    shl-int/lit8 v3, v42, 0x15

    const/high16 v5, 0xe000000

    and-int/2addr v3, v5

    or-int/2addr v0, v3

    shl-int/lit8 v2, v2, 0x12

    const/high16 v3, 0x70000000

    and-int/2addr v2, v3

    or-int v16, v0, v2

    const v0, 0xe000

    shr-int/lit8 v2, v42, 0x3

    and-int/2addr v0, v2

    or-int/lit16 v0, v0, 0x180

    move/from16 v17, v0

    move-object v0, v1

    move-object/from16 v1, p2

    move-object v2, v8

    move-object/from16 v3, p18

    move-object/from16 v5, v22

    move-object/from16 v7, v20

    move/from16 v8, p11

    move-object/from16 v9, p3

    move-object/from16 v14, p17

    move-object/from16 v12, v18

    move-object/from16 v21, v13

    move-object/from16 v13, v24

    move-object/from16 v14, p15

    move-object/from16 v15, v21

    .line 267
    invoke-static/range {v0 .. v17}, Landroidx/compose/material3/OutlinedTextFieldKt;->OutlinedTextFieldLayout(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/TextFieldLabelPosition;FLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;II)V

    .line 250
    invoke-interface/range {v21 .. v21}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v17, v21

    goto :goto_37

    :cond_a2
    move-object/from16 v21, v13

    move-object/from16 v3, v44

    move/from16 v2, v45

    const v0, -0x21dd5477

    move-object/from16 v14, v21

    .line 225
    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 226
    new-instance v0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$containerWithId$1;

    move-object/from16 v13, p17

    invoke-direct {v0, v13}, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$containerWithId$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    const v1, 0x48daa51a

    const/4 v5, 0x1

    invoke-static {v1, v5, v0, v14, v10}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v11

    .line 233
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 246
    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v10

    shr-int/lit8 v1, v2, 0x3

    and-int/lit8 v1, v1, 0x70

    or-int/lit8 v1, v1, 0x6

    shl-int/lit8 v3, v42, 0x15

    const/high16 v5, 0xe000000

    and-int/2addr v3, v5

    or-int/2addr v1, v3

    shl-int/lit8 v2, v2, 0x12

    const/high16 v3, 0x70000000

    and-int/2addr v2, v3

    or-int v15, v1, v2

    move/from16 v1, v42

    shr-int/lit8 v1, v1, 0x6

    and-int/lit16 v1, v1, 0x1c00

    or-int/lit8 v16, v1, 0x30

    move-object/from16 v1, p2

    move-object/from16 v2, p18

    move-object v3, v8

    move-object/from16 v5, v22

    move-object/from16 v7, v20

    move/from16 v8, p11

    move-object/from16 v9, p3

    move-object/from16 v12, v24

    move-object/from16 v13, p15

    move-object/from16 v17, v14

    .line 232
    invoke-static/range {v0 .. v16}, Landroidx/compose/material3/TextFieldKt;->TextFieldLayout(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/TextFieldLabelPosition;FLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;II)V

    .line 225
    invoke-interface/range {v17 .. v17}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 431
    :goto_37
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_a3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 301
    :cond_a3
    :goto_38
    invoke-interface/range {v17 .. v17}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v15

    if-eqz v15, :cond_a4

    new-instance v14, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$4;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move-object/from16 v47, v14

    move/from16 v14, p13

    move-object/from16 v48, v15

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move/from16 v19, p19

    move/from16 v20, p20

    invoke-direct/range {v0 .. v20}, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$4;-><init>(Landroidx/compose/material3/internal/TextFieldType;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/TextFieldLabelPosition;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/material3/TextFieldColors;Lkotlin/jvm/functions/Function2;II)V

    move-object/from16 v1, v47

    move-object/from16 v0, v48

    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_a4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method

.method private static final CommonDecorationBox$lambda$15$lambda$7(Landroidx/compose/runtime/State;)Z
    .locals 0

    .line 81
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final CommonDecorationBox$lambda$15$lambda$9(Landroidx/compose/runtime/State;)Z
    .locals 0

    .line 81
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final Decoration-3J-VO9M(JLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 7

    const v0, 0x480b140c

    .line 306
    invoke-interface {p4, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p4

    and-int/lit8 v1, p5, 0x6

    if-nez v1, :cond_1

    invoke-interface {p4, p0, p1}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, p5

    goto :goto_1

    :cond_1
    move v1, p5

    :goto_1
    and-int/lit8 v2, p5, 0x30

    if-nez v2, :cond_3

    invoke-interface {p4, p2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x20

    goto :goto_2

    :cond_2
    const/16 v2, 0x10

    :goto_2
    or-int/2addr v1, v2

    :cond_3
    and-int/lit16 v2, p5, 0x180

    if-nez v2, :cond_5

    invoke-interface {p4, p3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x100

    goto :goto_3

    :cond_4
    const/16 v2, 0x80

    :goto_3
    or-int/2addr v1, v2

    :cond_5
    and-int/lit16 v2, v1, 0x93

    const/16 v3, 0x92

    if-ne v2, v3, :cond_7

    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_4

    :cond_6
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_5

    :cond_7
    :goto_4
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, -0x1

    const-string v3, "androidx.compose.material3.internal.Decoration (TextFieldImpl.kt:305)"

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_8
    and-int/lit16 v6, v1, 0x3fe

    move-wide v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v1 .. v6}, Landroidx/compose/material3/internal/ProvideContentColorTextStyleKt;->ProvideContentColorTextStyle-3J-VO9M(JLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_9
    :goto_5
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object p4

    if-eqz p4, :cond_a

    new-instance v6, Landroidx/compose/material3/internal/TextFieldImplKt$Decoration$1;

    move-object v0, v6

    move-wide v1, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroidx/compose/material3/internal/TextFieldImplKt$Decoration$1;-><init>(JLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;I)V

    invoke-interface {p4, v6}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_a
    return-void
.end method

.method private static final Decoration-Iv8Zu3U(JLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 4

    const v0, 0x2758fb84

    .line 311
    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p3

    and-int/lit8 v1, p4, 0x6

    if-nez v1, :cond_1

    invoke-interface {p3, p0, p1}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, p4

    goto :goto_1

    :cond_1
    move v1, p4

    :goto_1
    and-int/lit8 v2, p4, 0x30

    if-nez v2, :cond_3

    invoke-interface {p3, p2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x20

    goto :goto_2

    :cond_2
    const/16 v2, 0x10

    :goto_2
    or-int/2addr v1, v2

    :cond_3
    and-int/lit8 v2, v1, 0x13

    const/16 v3, 0x12

    if-ne v2, v3, :cond_5

    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_4

    :cond_5
    :goto_3
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, -0x1

    const-string v3, "androidx.compose.material3.internal.Decoration (TextFieldImpl.kt:310)"

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_6
    invoke-static {}, Landroidx/compose/material3/ContentColorKt;->getLocalContentColor()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v0

    sget v2, Landroidx/compose/runtime/ProvidedValue;->$stable:I

    and-int/lit8 v1, v1, 0x70

    or-int/2addr v1, v2

    invoke-static {v0, p2, p3, v1}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_7
    :goto_4
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object p3

    if-eqz p3, :cond_8

    new-instance v0, Landroidx/compose/material3/internal/TextFieldImplKt$Decoration$2;

    invoke-direct {v0, p0, p1, p2, p4}, Landroidx/compose/material3/internal/TextFieldImplKt$Decoration$2;-><init>(JLkotlin/jvm/functions/Function2;I)V

    invoke-interface {p3, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_8
    return-void
.end method

.method public static final synthetic access$Decoration-3J-VO9M(JLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Landroidx/compose/material3/internal/TextFieldImplKt;->Decoration-3J-VO9M(JLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    return-void
.end method

.method public static final synthetic access$Decoration-Iv8Zu3U(JLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/material3/internal/TextFieldImplKt;->Decoration-Iv8Zu3U(JLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    return-void
.end method

.method public static final animateBorderStrokeAsState-NuRrP5Q(ZZZLandroidx/compose/material3/TextFieldColors;FFLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 18

    move/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v10, p6

    move/from16 v11, p7

    .line 441
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, -0x1

    const-string v3, "androidx.compose.material3.internal.animateBorderStrokeAsState (TextFieldImpl.kt:440)"

    const v4, 0x7a02f0b5

    invoke-static {v4, v11, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    move/from16 v2, p1

    move-object/from16 v3, p3

    .line 443
    invoke-virtual {v3, v0, v2, v1}, Landroidx/compose/material3/TextFieldColors;->indicatorColor-XeAY9LY$material3_release(ZZZ)J

    move-result-wide v2

    .line 444
    sget-object v4, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->FastEffects:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    .line 362
    sget-object v12, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    const/4 v13, 0x6

    invoke-virtual {v12, v10, v13}, Landroidx/compose/material3/MaterialTheme;->getMotionScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/MotionScheme;

    move-result-object v5

    .line 345
    sget-object v14, Landroidx/compose/material3/MotionSchemeKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v14, v4

    const v8, -0x5ce9507b    # -8.168684E-18f

    const v7, -0x5ce94738

    const v6, -0x5ce93dfb

    const v13, -0x5ce9351b

    const v15, -0x5cefed14

    const-class v16, Landroidx/compose/ui/graphics/Color;

    packed-switch v4, :pswitch_data_0

    .line 351
    invoke-interface {v10, v15}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface/range {p6 .. p6}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    invoke-interface {v10, v13}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 219
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    or-int v4, v16, v4

    .line 1166
    invoke-interface/range {p6 .. p6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    if-nez v4, :cond_1

    .line 1167
    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v9, v4, :cond_2

    .line 220
    :cond_1
    invoke-interface {v5}, Landroidx/compose/material3/MotionScheme;->slowEffectsSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v9

    .line 1169
    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 219
    :cond_2
    check-cast v9, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 351
    invoke-interface/range {p6 .. p6}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    :goto_0
    move-object v4, v9

    const v9, -0x5ce9595b

    goto/16 :goto_2

    .line 350
    :pswitch_1
    invoke-interface {v10, v6}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 204
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v4, v9

    .line 1166
    invoke-interface/range {p6 .. p6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    if-nez v4, :cond_3

    .line 1167
    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v9, v4, :cond_4

    .line 205
    :cond_3
    invoke-interface {v5}, Landroidx/compose/material3/MotionScheme;->fastEffectsSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v9

    .line 1169
    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 204
    :cond_4
    check-cast v9, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 350
    invoke-interface/range {p6 .. p6}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_0

    .line 349
    :pswitch_2
    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 189
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v4, v9

    .line 1166
    invoke-interface/range {p6 .. p6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    if-nez v4, :cond_5

    .line 1167
    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v9, v4, :cond_6

    .line 190
    :cond_5
    invoke-interface {v5}, Landroidx/compose/material3/MotionScheme;->defaultEffectsSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v9

    .line 1169
    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 189
    :cond_6
    check-cast v9, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 349
    invoke-interface/range {p6 .. p6}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_0

    .line 348
    :pswitch_3
    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 174
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v4, v9

    .line 1166
    invoke-interface/range {p6 .. p6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    if-nez v4, :cond_7

    .line 1167
    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v9, v4, :cond_8

    .line 175
    :cond_7
    invoke-interface {v5}, Landroidx/compose/material3/MotionScheme;->slowSpatialSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v9

    .line 1169
    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 174
    :cond_8
    check-cast v9, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 348
    invoke-interface/range {p6 .. p6}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto/16 :goto_0

    :pswitch_4
    const v9, -0x5ce9595b

    .line 347
    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 159
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    or-int v4, v16, v4

    .line 1166
    invoke-interface/range {p6 .. p6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v4, :cond_9

    .line 1167
    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v6, v4, :cond_a

    .line 160
    :cond_9
    invoke-interface {v5}, Landroidx/compose/material3/MotionScheme;->fastSpatialSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v6

    .line 1169
    invoke-interface {v10, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 159
    :cond_a
    check-cast v6, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 347
    invoke-interface/range {p6 .. p6}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    :goto_1
    move-object v4, v6

    goto :goto_2

    :pswitch_5
    const v4, -0x5ce96298

    const v9, -0x5ce9595b

    .line 346
    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 144
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v4, v6

    .line 1166
    invoke-interface/range {p6 .. p6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v4, :cond_b

    .line 1167
    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v6, v4, :cond_c

    .line 145
    :cond_b
    invoke-interface {v5}, Landroidx/compose/material3/MotionScheme;->defaultSpatialSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v6

    .line 1169
    invoke-interface {v10, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 144
    :cond_c
    check-cast v6, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 346
    invoke-interface/range {p6 .. p6}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_1

    :goto_2
    if-eqz v0, :cond_d

    const v5, 0x3d01ccee

    .line 446
    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const/16 v16, 0x0

    const/16 v17, 0xc

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v7, p6

    move/from16 v8, v16

    const/4 v13, 0x0

    move/from16 v9, v17

    .line 447
    invoke-static/range {v2 .. v9}, Landroidx/compose/animation/SingleValueAnimationKt;->animateColorAsState-euL9pac(JLandroidx/compose/animation/core/AnimationSpec;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v2

    .line 446
    invoke-interface/range {p6 .. p6}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    :goto_3
    move-object v7, v2

    goto :goto_4

    :cond_d
    const/4 v13, 0x0

    const v4, 0x3d030861

    .line 448
    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 449
    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v2

    invoke-static {v2, v10, v13}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v2

    .line 448
    invoke-interface/range {p6 .. p6}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_3

    .line 452
    :goto_4
    sget-object v2, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->FastSpatial:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    const/4 v3, 0x6

    .line 362
    invoke-virtual {v12, v10, v3}, Landroidx/compose/material3/MaterialTheme;->getMotionScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/MotionScheme;

    move-result-object v3

    .line 345
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v14, v2

    packed-switch v2, :pswitch_data_1

    .line 351
    invoke-interface {v10, v15}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface/range {p6 .. p6}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_6
    const v2, -0x5ce9351b

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 219
    const-class v2, Landroidx/compose/ui/unit/Dp;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v2, v4

    .line 1166
    invoke-interface/range {p6 .. p6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v2, :cond_e

    .line 1167
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v4, v2, :cond_f

    .line 220
    :cond_e
    invoke-interface {v3}, Landroidx/compose/material3/MotionScheme;->slowEffectsSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v4

    .line 1169
    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 219
    :cond_f
    check-cast v4, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 351
    invoke-interface/range {p6 .. p6}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto/16 :goto_5

    :pswitch_7
    const v2, -0x5ce93dfb

    .line 350
    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 204
    const-class v2, Landroidx/compose/ui/unit/Dp;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v2, v4

    .line 1166
    invoke-interface/range {p6 .. p6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v2, :cond_10

    .line 1167
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v4, v2, :cond_11

    .line 205
    :cond_10
    invoke-interface {v3}, Landroidx/compose/material3/MotionScheme;->fastEffectsSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v4

    .line 1169
    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 204
    :cond_11
    check-cast v4, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 350
    invoke-interface/range {p6 .. p6}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto/16 :goto_5

    :pswitch_8
    const v2, -0x5ce94738

    .line 349
    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 189
    const-class v2, Landroidx/compose/ui/unit/Dp;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v2, v4

    .line 1166
    invoke-interface/range {p6 .. p6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v2, :cond_12

    .line 1167
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v4, v2, :cond_13

    .line 190
    :cond_12
    invoke-interface {v3}, Landroidx/compose/material3/MotionScheme;->defaultEffectsSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v4

    .line 1169
    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 189
    :cond_13
    check-cast v4, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 349
    invoke-interface/range {p6 .. p6}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto/16 :goto_5

    :pswitch_9
    const v2, -0x5ce9507b    # -8.168684E-18f

    .line 348
    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 174
    const-class v2, Landroidx/compose/ui/unit/Dp;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v2, v4

    .line 1166
    invoke-interface/range {p6 .. p6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v2, :cond_14

    .line 1167
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v4, v2, :cond_15

    .line 175
    :cond_14
    invoke-interface {v3}, Landroidx/compose/material3/MotionScheme;->slowSpatialSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v4

    .line 1169
    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 174
    :cond_15
    check-cast v4, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 348
    invoke-interface/range {p6 .. p6}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_5

    :pswitch_a
    const v2, -0x5ce9595b

    .line 347
    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 159
    const-class v2, Landroidx/compose/ui/unit/Dp;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v2, v4

    .line 1166
    invoke-interface/range {p6 .. p6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v2, :cond_16

    .line 1167
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v4, v2, :cond_17

    .line 160
    :cond_16
    invoke-interface {v3}, Landroidx/compose/material3/MotionScheme;->fastSpatialSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v4

    .line 1169
    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 159
    :cond_17
    check-cast v4, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 347
    invoke-interface/range {p6 .. p6}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_5

    :pswitch_b
    const v2, -0x5ce96298

    .line 346
    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 144
    const-class v2, Landroidx/compose/ui/unit/Dp;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v2, v4

    .line 1166
    invoke-interface/range {p6 .. p6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v2, :cond_18

    .line 1167
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v4, v2, :cond_19

    .line 145
    :cond_18
    invoke-interface {v3}, Landroidx/compose/material3/MotionScheme;->defaultSpatialSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v4

    .line 1169
    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 144
    :cond_19
    check-cast v4, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 346
    invoke-interface/range {p6 .. p6}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    :goto_5
    if-eqz v0, :cond_1b

    const v0, 0x3d05cd05

    .line 454
    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    if-eqz v1, :cond_1a

    move/from16 v0, p4

    goto :goto_6

    :cond_1a
    move/from16 v0, p5

    :goto_6
    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, v4

    move-object/from16 v4, p6

    .line 456
    invoke-static/range {v0 .. v6}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateDpAsState-AjpBEmI(FLandroidx/compose/animation/core/AnimationSpec;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v0

    .line 454
    invoke-interface/range {p6 .. p6}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_7

    :cond_1b
    const v0, 0x3d089434

    .line 457
    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 458
    invoke-static/range {p5 .. p5}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object v0

    shr-int/lit8 v1, v11, 0xf

    and-int/lit8 v1, v1, 0xe

    invoke-static {v0, v10, v1}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v0

    .line 457
    invoke-interface/range {p6 .. p6}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 461
    :goto_7
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/unit/Dp;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/Dp;->unbox-impl()F

    move-result v0

    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroidx/compose/foundation/BorderStrokeKt;->BorderStroke-cXLIe8U(FJ)Landroidx/compose/foundation/BorderStroke;

    move-result-object v0

    invoke-static {v0, v10, v13}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1c
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public static final defaultErrorSemantics(Landroidx/compose/ui/Modifier;ZLjava/lang/String;)Landroidx/compose/ui/Modifier;
    .locals 2

    if-eqz p1, :cond_0

    .line 318
    new-instance p1, Landroidx/compose/material3/internal/TextFieldImplKt$defaultErrorSemantics$1;

    invoke-direct {p1, p2}, Landroidx/compose/material3/internal/TextFieldImplKt$defaultErrorSemantics$1;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, p2, v0}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static final getMinFocusedLabelLineHeight()F
    .locals 1

    .line 509
    sget v0, Landroidx/compose/material3/internal/TextFieldImplKt;->MinFocusedLabelLineHeight:F

    return v0
.end method

.method public static final getMinSupportingTextLineHeight()F
    .locals 1

    .line 510
    sget v0, Landroidx/compose/material3/internal/TextFieldImplKt;->MinSupportingTextLineHeight:F

    return v0
.end method

.method public static final getMinTextLineHeight()F
    .locals 1

    .line 508
    sget v0, Landroidx/compose/material3/internal/TextFieldImplKt;->MinTextLineHeight:F

    return v0
.end method

.method public static final getPrefixSuffixTextPadding()F
    .locals 1

    .line 507
    sget v0, Landroidx/compose/material3/internal/TextFieldImplKt;->PrefixSuffixTextPadding:F

    return v0
.end method

.method public static final getSupportingTopPadding()F
    .locals 1

    .line 506
    sget v0, Landroidx/compose/material3/internal/TextFieldImplKt;->SupportingTopPadding:F

    return v0
.end method

.method public static final getTextFieldPadding()F
    .locals 1

    .line 503
    sget v0, Landroidx/compose/material3/internal/TextFieldImplKt;->TextFieldPadding:F

    return v0
.end method

.method public static final minimizedLabelHalfHeight(Landroidx/compose/runtime/Composer;I)F
    .locals 4

    .line 496
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "androidx.compose.material3.internal.minimizedLabelHalfHeight (TextFieldImpl.kt:495)"

    const v2, 0x4a99107f    # 5015615.5f

    invoke-static {v2, p1, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 497
    :cond_0
    sget-object p1, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    const/4 v0, 0x6

    invoke-virtual {p1, p0, v0}, Landroidx/compose/material3/MaterialTheme;->getTypography(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/Typography;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/material3/Typography;->getBodySmall()Landroidx/compose/ui/text/TextStyle;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/ui/text/TextStyle;->getLineHeight-XSAIIZE()J

    move-result-wide v0

    .line 498
    sget-object p1, Landroidx/compose/material3/tokens/TypeScaleTokens;->INSTANCE:Landroidx/compose/material3/tokens/TypeScaleTokens;

    invoke-virtual {p1}, Landroidx/compose/material3/tokens/TypeScaleTokens;->getBodySmallLineHeight-XSAIIZE()J

    move-result-wide v2

    .line 499
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/TextUnit;->isSp-impl(J)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move-wide v0, v2

    .line 500
    :goto_0
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object p1

    .line 75
    invoke-interface {p0, p1}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p0

    .line 500
    check-cast p0, Landroidx/compose/ui/unit/Density;

    invoke-interface {p0, v0, v1}, Landroidx/compose/ui/unit/FontScaling;->toDp-GaN1DYA(J)F

    move-result p0

    const/4 p1, 0x2

    int-to-float p1, p1

    div-float/2addr p0, p1

    .line 1037
    invoke-static {p0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p0

    .line 500
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_2
    return p0
.end method

.method public static final textFieldBackground(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;
    .locals 1

    .line 328
    new-instance v0, Landroidx/compose/material3/internal/TextFieldImplKt$textFieldBackground$1;

    invoke-direct {v0, p2, p1}, Landroidx/compose/material3/internal/TextFieldImplKt$textFieldBackground$1;-><init>(Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/ColorProducer;)V

    invoke-static {p0, v0}, Landroidx/compose/ui/draw/DrawModifierKt;->drawWithCache(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final textFieldHorizontalIconPadding(Landroidx/compose/runtime/Composer;I)F
    .locals 3

    .line 489
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "androidx.compose.material3.internal.textFieldHorizontalIconPadding (TextFieldImpl.kt:488)"

    const v2, 0x7666d41e

    invoke-static {v2, p1, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 490
    :cond_0
    invoke-static {}, Landroidx/compose/material3/InteractiveComponentSizeKt;->getLocalMinimumInteractiveComponentSize()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object p1

    .line 75
    invoke-interface {p0, p1}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p0

    .line 490
    check-cast p0, Landroidx/compose/ui/unit/Dp;

    invoke-virtual {p0}, Landroidx/compose/ui/unit/Dp;->unbox-impl()F

    move-result p0

    .line 1029
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    int-to-float p0, v0

    .line 1030
    invoke-static {p0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p0

    .line 492
    :cond_1
    sget-object p1, Landroidx/compose/material3/tokens/SmallIconButtonTokens;->INSTANCE:Landroidx/compose/material3/tokens/SmallIconButtonTokens;

    invoke-virtual {p1}, Landroidx/compose/material3/tokens/SmallIconButtonTokens;->getIconSize-D9Ej5fM()F

    move-result p1

    sub-float/2addr p0, p1

    .line 57
    invoke-static {p0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p0

    const/4 p1, 0x2

    int-to-float p1, p1

    div-float/2addr p0, p1

    .line 1032
    invoke-static {p0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p0

    int-to-float p1, v0

    .line 1033
    invoke-static {p1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p1

    .line 1034
    invoke-static {p0, p1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result p0

    invoke-static {p0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p0

    .line 492
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_2
    return p0
.end method
