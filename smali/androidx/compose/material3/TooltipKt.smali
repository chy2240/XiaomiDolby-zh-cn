.class public abstract Landroidx/compose/material3/TooltipKt;
.super Ljava/lang/Object;
.source "Tooltip.kt"


# static fields
.field private static final ActionLabelBottomPadding:F

.field private static final ActionLabelMinHeight:F

.field private static final HeightFromSubheadToTextFirstLine:F

.field private static final HeightToSubheadFirstLine:F

.field private static final PlainTooltipContentPadding:Landroidx/compose/foundation/layout/PaddingValues;

.field private static final PlainTooltipHorizontalPadding:F

.field private static final PlainTooltipMaxWidth:F

.field private static final PlainTooltipVerticalPadding:F

.field private static final RichTooltipHorizontalPadding:F

.field private static final RichTooltipMaxWidth:F

.field private static final SpacingBetweenTooltipAndAnchor:F

.field private static final TextBottomPadding:F

.field private static final TooltipMinHeight:F

.field private static final TooltipMinWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    int-to-float v0, v0

    .line 638
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 603
    sput v1, Landroidx/compose/material3/TooltipKt;->SpacingBetweenTooltipAndAnchor:F

    const/16 v1, 0x18

    int-to-float v1, v1

    .line 639
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    .line 604
    sput v2, Landroidx/compose/material3/TooltipKt;->TooltipMinHeight:F

    const/16 v2, 0x28

    int-to-float v2, v2

    .line 640
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    .line 605
    sput v2, Landroidx/compose/material3/TooltipKt;->TooltipMinWidth:F

    const/16 v2, 0xc8

    int-to-float v2, v2

    .line 641
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    .line 606
    sput v2, Landroidx/compose/material3/TooltipKt;->PlainTooltipMaxWidth:F

    .line 642
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 607
    sput v0, Landroidx/compose/material3/TooltipKt;->PlainTooltipVerticalPadding:F

    const/16 v2, 0x8

    int-to-float v2, v2

    .line 643
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 608
    sput v3, Landroidx/compose/material3/TooltipKt;->PlainTooltipHorizontalPadding:F

    .line 610
    invoke-static {v3, v0}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-YgX7TsA(FF)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/TooltipKt;->PlainTooltipContentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    const/16 v0, 0x140

    int-to-float v0, v0

    .line 644
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 611
    sput v0, Landroidx/compose/material3/TooltipKt;->RichTooltipMaxWidth:F

    const/16 v0, 0x10

    int-to-float v0, v0

    .line 645
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 612
    sput v3, Landroidx/compose/material3/TooltipKt;->RichTooltipHorizontalPadding:F

    const/16 v3, 0x1c

    int-to-float v3, v3

    .line 646
    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 613
    sput v3, Landroidx/compose/material3/TooltipKt;->HeightToSubheadFirstLine:F

    .line 647
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 614
    sput v1, Landroidx/compose/material3/TooltipKt;->HeightFromSubheadToTextFirstLine:F

    .line 648
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 615
    sput v0, Landroidx/compose/material3/TooltipKt;->TextBottomPadding:F

    const/16 v0, 0x24

    int-to-float v0, v0

    .line 649
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 616
    sput v0, Landroidx/compose/material3/TooltipKt;->ActionLabelMinHeight:F

    .line 650
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 617
    sput v0, Landroidx/compose/material3/TooltipKt;->ActionLabelBottomPadding:F

    return-void
.end method

.method public static final TooltipBox(Landroidx/compose/ui/window/PopupPositionProvider;Lkotlin/jvm/functions/Function3;Landroidx/compose/material3/TooltipState;Landroidx/compose/ui/Modifier;ZZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 19

    move-object/from16 v2, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p6

    move/from16 v15, p8

    const v0, 0x6d7a9132

    move-object/from16 v1, p7

    .line 128
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v1

    and-int/lit8 v3, p9, 0x1

    if-eqz v3, :cond_0

    or-int/lit8 v3, v15, 0x6

    move-object/from16 v12, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v15, 0x6

    move-object/from16 v12, p0

    if-nez v3, :cond_2

    invoke-interface {v1, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v15

    goto :goto_1

    :cond_2
    move v3, v15

    :goto_1
    and-int/lit8 v5, p9, 0x2

    if-eqz v5, :cond_3

    or-int/lit8 v3, v3, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v5, v15, 0x30

    if-nez v5, :cond_5

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x20

    goto :goto_2

    :cond_4
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v3, v5

    :cond_5
    :goto_3
    and-int/lit8 v5, p9, 0x4

    if-eqz v5, :cond_6

    or-int/lit16 v3, v3, 0x180

    goto :goto_6

    :cond_6
    and-int/lit16 v5, v15, 0x180

    if-nez v5, :cond_9

    and-int/lit16 v5, v15, 0x200

    if-nez v5, :cond_7

    invoke-interface {v1, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_4

    :cond_7
    invoke-interface {v1, v13}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    :goto_4
    if-eqz v5, :cond_8

    const/16 v5, 0x100

    goto :goto_5

    :cond_8
    const/16 v5, 0x80

    :goto_5
    or-int/2addr v3, v5

    :cond_9
    :goto_6
    and-int/lit8 v5, p9, 0x8

    if-eqz v5, :cond_b

    or-int/lit16 v3, v3, 0xc00

    :cond_a
    move-object/from16 v6, p3

    goto :goto_8

    :cond_b
    and-int/lit16 v6, v15, 0xc00

    if-nez v6, :cond_a

    move-object/from16 v6, p3

    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    const/16 v7, 0x800

    goto :goto_7

    :cond_c
    const/16 v7, 0x400

    :goto_7
    or-int/2addr v3, v7

    :goto_8
    and-int/lit8 v7, p9, 0x10

    if-eqz v7, :cond_e

    or-int/lit16 v3, v3, 0x6000

    :cond_d
    move/from16 v8, p4

    goto :goto_a

    :cond_e
    and-int/lit16 v8, v15, 0x6000

    if-nez v8, :cond_d

    move/from16 v8, p4

    invoke-interface {v1, v8}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v9

    if-eqz v9, :cond_f

    const/16 v9, 0x4000

    goto :goto_9

    :cond_f
    const/16 v9, 0x2000

    :goto_9
    or-int/2addr v3, v9

    :goto_a
    and-int/lit8 v9, p9, 0x20

    const/high16 v10, 0x30000

    if-eqz v9, :cond_11

    or-int/2addr v3, v10

    :cond_10
    move/from16 v10, p5

    goto :goto_c

    :cond_11
    and-int/2addr v10, v15

    if-nez v10, :cond_10

    move/from16 v10, p5

    invoke-interface {v1, v10}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v11

    if-eqz v11, :cond_12

    const/high16 v11, 0x20000

    goto :goto_b

    :cond_12
    const/high16 v11, 0x10000

    :goto_b
    or-int/2addr v3, v11

    :goto_c
    and-int/lit8 v11, p9, 0x40

    const/high16 v16, 0x180000

    if-eqz v11, :cond_13

    or-int v3, v3, v16

    goto :goto_e

    :cond_13
    and-int v11, v15, v16

    if-nez v11, :cond_15

    invoke-interface {v1, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_14

    const/high16 v11, 0x100000

    goto :goto_d

    :cond_14
    const/high16 v11, 0x80000

    :goto_d
    or-int/2addr v3, v11

    :cond_15
    :goto_e
    const v11, 0x92493

    and-int/2addr v11, v3

    const v4, 0x92492

    if-ne v11, v4, :cond_17

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v4

    if-nez v4, :cond_16

    goto :goto_f

    .line 147
    :cond_16
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object v4, v6

    move v5, v8

    move v6, v10

    goto/16 :goto_13

    :cond_17
    :goto_f
    if-eqz v5, :cond_18

    .line 124
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object/from16 v16, v4

    goto :goto_10

    :cond_18
    move-object/from16 v16, v6

    :goto_10
    const/4 v4, 0x1

    if-eqz v7, :cond_19

    move/from16 v17, v4

    goto :goto_11

    :cond_19
    move/from16 v17, v8

    :goto_11
    if-eqz v9, :cond_1a

    move/from16 v18, v4

    goto :goto_12

    :cond_1a
    move/from16 v18, v10

    .line 126
    :goto_12
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_1b

    const/4 v5, -0x1

    const-string v6, "androidx.compose.material3.TooltipBox (Tooltip.kt:127)"

    .line 128
    invoke-static {v0, v3, v5, v6}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 130
    :cond_1b
    invoke-interface/range {p2 .. p2}, Landroidx/compose/material3/TooltipState;->getTransition()Landroidx/compose/animation/core/MutableTransitionState;

    move-result-object v0

    sget v5, Landroidx/compose/animation/core/MutableTransitionState;->$stable:I

    or-int/lit8 v5, v5, 0x30

    const/4 v6, 0x0

    const-string v7, "tooltip transition"

    invoke-static {v0, v7, v1, v5, v6}, Landroidx/compose/animation/core/TransitionKt;->updateTransition(Landroidx/compose/animation/core/MutableTransitionState;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition;

    move-result-object v0

    .line 1166
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .line 1167
    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v5, v7, :cond_1c

    const/4 v5, 0x0

    const/4 v7, 0x2

    .line 131
    invoke-static {v5, v5, v7, v5}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v5

    .line 1169
    invoke-interface {v1, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 131
    :cond_1c
    check-cast v5, Landroidx/compose/runtime/MutableState;

    .line 1166
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    .line 1167
    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v7, v6, :cond_1d

    .line 132
    new-instance v7, Landroidx/compose/material3/TooltipScopeImpl;

    new-instance v6, Landroidx/compose/material3/TooltipKt$TooltipBox$scope$1$1;

    invoke-direct {v6, v5}, Landroidx/compose/material3/TooltipKt$TooltipBox$scope$1$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    invoke-direct {v7, v6}, Landroidx/compose/material3/TooltipScopeImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 1169
    invoke-interface {v1, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 132
    :cond_1d
    check-cast v7, Landroidx/compose/material3/TooltipScopeImpl;

    .line 134
    new-instance v6, Landroidx/compose/material3/TooltipKt$TooltipBox$wrappedContent$1;

    invoke-direct {v6, v5, v14}, Landroidx/compose/material3/TooltipKt$TooltipBox$wrappedContent$1;-><init>(Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function2;)V

    const v5, -0x4366c37c

    const/16 v8, 0x36

    invoke-static {v5, v4, v6, v1, v8}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v9

    .line 140
    new-instance v5, Landroidx/compose/material3/TooltipKt$TooltipBox$1;

    invoke-direct {v5, v0, v2, v7}, Landroidx/compose/material3/TooltipKt$TooltipBox$1;-><init>(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function3;Landroidx/compose/material3/TooltipScopeImpl;)V

    const v0, -0x8eae418    # -3.02429E33f

    invoke-static {v0, v4, v5, v1, v8}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v4

    and-int/lit8 v0, v3, 0xe

    const v5, 0x180030

    or-int/2addr v0, v5

    and-int/lit16 v5, v3, 0x380

    or-int/2addr v0, v5

    and-int/lit16 v5, v3, 0x1c00

    or-int/2addr v0, v5

    const v5, 0xe000

    and-int/2addr v5, v3

    or-int/2addr v0, v5

    const/high16 v5, 0x70000

    and-int/2addr v3, v5

    or-int v11, v0, v3

    const/4 v0, 0x0

    move-object/from16 v3, p0

    move-object/from16 v5, p2

    move-object/from16 v6, v16

    move/from16 v7, v17

    move/from16 v8, v18

    move-object v10, v1

    move v12, v0

    .line 138
    invoke-static/range {v3 .. v12}, Landroidx/compose/material3/internal/BasicTooltip_androidKt;->BasicTooltipBox(Landroidx/compose/ui/window/PopupPositionProvider;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/TooltipState;Landroidx/compose/ui/Modifier;ZZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1e
    move-object/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    .line 147
    :goto_13
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v10

    if-eqz v10, :cond_1f

    new-instance v11, Landroidx/compose/material3/TooltipKt$TooltipBox$2;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v7, p6

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Landroidx/compose/material3/TooltipKt$TooltipBox$2;-><init>(Landroidx/compose/ui/window/PopupPositionProvider;Lkotlin/jvm/functions/Function3;Landroidx/compose/material3/TooltipState;Landroidx/compose/ui/Modifier;ZZLkotlin/jvm/functions/Function2;II)V

    invoke-interface {v10, v11}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_1f
    return-void
.end method

.method public static final animateTooltip(Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/Transition;)Landroidx/compose/ui/Modifier;
    .locals 2

    .line 637
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/compose/material3/TooltipKt$animateTooltip$$inlined$debugInspectorInfo$1;

    invoke-direct {v0, p1}, Landroidx/compose/material3/TooltipKt$animateTooltip$$inlined$debugInspectorInfo$1;-><init>(Landroidx/compose/animation/core/Transition;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    .line 574
    :goto_0
    new-instance v1, Landroidx/compose/material3/TooltipKt$animateTooltip$2;

    invoke-direct {v1, p1}, Landroidx/compose/material3/TooltipKt$animateTooltip$2;-><init>(Landroidx/compose/animation/core/Transition;)V

    invoke-static {p0, v0, v1}, Landroidx/compose/ui/ComposedModifierKt;->composed(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final getSpacingBetweenTooltipAndAnchor()F
    .locals 1

    .line 603
    sget v0, Landroidx/compose/material3/TooltipKt;->SpacingBetweenTooltipAndAnchor:F

    return v0
.end method

.method public static final rememberTooltipState(ZZLandroidx/compose/foundation/MutatorMutex;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material3/TooltipState;
    .locals 4

    and-int/lit8 v0, p5, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p0, v1

    :cond_0
    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_1

    move p1, v1

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    .line 431
    sget-object p2, Landroidx/compose/material3/internal/BasicTooltipDefaults;->INSTANCE:Landroidx/compose/material3/internal/BasicTooltipDefaults;

    invoke-virtual {p2}, Landroidx/compose/material3/internal/BasicTooltipDefaults;->getGlobalMutatorMutex()Landroidx/compose/foundation/MutatorMutex;

    move-result-object p2

    :cond_2
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p5

    if-eqz p5, :cond_3

    const/4 p5, -0x1

    const-string v0, "androidx.compose.material3.rememberTooltipState (Tooltip.kt:432)"

    const v2, -0x543c2fc2

    .line 433
    invoke-static {v2, p4, p5, v0}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_3
    and-int/lit8 p5, p4, 0x70

    xor-int/lit8 p5, p5, 0x30

    const/16 v0, 0x20

    const/4 v2, 0x1

    if-le p5, v0, :cond_4

    invoke-interface {p3, p1}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result p5

    if-nez p5, :cond_5

    :cond_4
    and-int/lit8 p5, p4, 0x30

    if-ne p5, v0, :cond_6

    :cond_5
    move p5, v2

    goto :goto_0

    :cond_6
    move p5, v1

    :goto_0
    and-int/lit16 v0, p4, 0x380

    xor-int/lit16 v0, v0, 0x180

    const/16 v3, 0x100

    if-le v0, v3, :cond_7

    invoke-interface {p3, p2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    and-int/lit16 p4, p4, 0x180

    if-ne p4, v3, :cond_9

    :cond_8
    move v1, v2

    :cond_9
    or-int p4, p5, v1

    .line 1166
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object p5

    if-nez p4, :cond_a

    .line 1167
    sget-object p4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p4

    if-ne p5, p4, :cond_b

    .line 434
    :cond_a
    new-instance p5, Landroidx/compose/material3/TooltipStateImpl;

    invoke-direct {p5, p0, p1, p2}, Landroidx/compose/material3/TooltipStateImpl;-><init>(ZZLandroidx/compose/foundation/MutatorMutex;)V

    .line 1169
    invoke-interface {p3, p5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 433
    :cond_b
    check-cast p5, Landroidx/compose/material3/TooltipStateImpl;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_c

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_c
    return-object p5
.end method
