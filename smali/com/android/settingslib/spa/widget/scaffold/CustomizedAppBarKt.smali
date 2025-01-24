.class public abstract Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt;
.super Ljava/lang/Object;
.source "CustomizedAppBar.kt"


# static fields
.field private static final ContainerHeight:F

.field private static final DefaultTitleHeight:F

.field private static final LargeTitleBottomPadding:F

.field private static final MaxHeightWithoutTitle:F

.field private static final TopAppBarHorizontalPadding:F

.field private static final TopAppBarTitleInset:F

.field private static final TopTitleAlphaEasing:Landroidx/compose/animation/core/CubicBezierEasing;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 648
    new-instance v0, Landroidx/compose/animation/core/CubicBezierEasing;

    const/4 v1, 0x0

    const v2, 0x3e19999a    # 0.15f

    const v3, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, v3, v1, v3, v2}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFFF)V

    sput-object v0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt;->TopTitleAlphaEasing:Landroidx/compose/animation/core/CubicBezierEasing;

    const/16 v0, 0x7c

    int-to-float v0, v0

    .line 109
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 650
    sput v0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt;->MaxHeightWithoutTitle:F

    const/16 v0, 0x34

    int-to-float v0, v0

    .line 109
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 651
    sput v0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt;->DefaultTitleHeight:F

    const/16 v0, 0x38

    int-to-float v0, v0

    .line 109
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 652
    sput v0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt;->ContainerHeight:F

    const/16 v0, 0x1c

    int-to-float v0, v0

    .line 109
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 653
    sput v0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt;->LargeTitleBottomPadding:F

    const/4 v0, 0x4

    int-to-float v0, v0

    .line 109
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 654
    sput v0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt;->TopAppBarHorizontalPadding:F

    const/16 v1, 0x10

    int-to-float v1, v1

    .line 109
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    sub-float/2addr v1, v0

    .line 51
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 658
    sput v0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt;->TopAppBarTitleInset:F

    return-void
.end method

.method public static final CustomizedLargeTopAppBar(Ljava/lang/String;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Landroidx/compose/material3/TopAppBarScrollBehavior;Landroidx/compose/runtime/Composer;II)V
    .locals 25

    move-object/from16 v1, p0

    move/from16 v6, p6

    const-string v0, "title"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x2afeb81

    move-object/from16 v2, p5

    .line 116
    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v2

    and-int/lit8 v3, p7, 0x1

    if-eqz v3, :cond_0

    or-int/lit8 v3, v6, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v6, 0xe

    if-nez v3, :cond_2

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v6

    goto :goto_1

    :cond_2
    move v3, v6

    :goto_1
    and-int/lit8 v4, p7, 0x2

    if-eqz v4, :cond_4

    or-int/lit8 v3, v3, 0x30

    :cond_3
    move-object/from16 v5, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v5, v6, 0x70

    if-nez v5, :cond_3

    move-object/from16 v5, p1

    invoke-interface {v2, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/16 v7, 0x20

    goto :goto_2

    :cond_5
    const/16 v7, 0x10

    :goto_2
    or-int/2addr v3, v7

    :goto_3
    and-int/lit8 v7, p7, 0x4

    if-eqz v7, :cond_7

    or-int/lit16 v3, v3, 0x180

    :cond_6
    move-object/from16 v8, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v8, v6, 0x380

    if-nez v8, :cond_6

    move-object/from16 v8, p2

    invoke-interface {v2, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/16 v9, 0x100

    goto :goto_4

    :cond_8
    const/16 v9, 0x80

    :goto_4
    or-int/2addr v3, v9

    :goto_5
    and-int/lit8 v9, p7, 0x8

    if-eqz v9, :cond_a

    or-int/lit16 v3, v3, 0xc00

    :cond_9
    move-object/from16 v10, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v10, v6, 0x1c00

    if-nez v10, :cond_9

    move-object/from16 v10, p3

    invoke-interface {v2, v10}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    const/16 v11, 0x800

    goto :goto_6

    :cond_b
    const/16 v11, 0x400

    :goto_6
    or-int/2addr v3, v11

    :goto_7
    and-int/lit8 v11, p7, 0x10

    if-eqz v11, :cond_d

    or-int/lit16 v3, v3, 0x6000

    :cond_c
    move-object/from16 v12, p4

    goto :goto_9

    :cond_d
    const v12, 0xe000

    and-int/2addr v12, v6

    if-nez v12, :cond_c

    move-object/from16 v12, p4

    invoke-interface {v2, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    const/16 v13, 0x4000

    goto :goto_8

    :cond_e
    const/16 v13, 0x2000

    :goto_8
    or-int/2addr v3, v13

    :goto_9
    const v13, 0xb6db

    and-int/2addr v13, v3

    const/16 v14, 0x2492

    if-ne v13, v14, :cond_10

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v13

    if-nez v13, :cond_f

    goto :goto_a

    .line 131
    :cond_f
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object v4, v5

    move-object v3, v8

    move-object v5, v12

    goto/16 :goto_f

    :cond_10
    :goto_a
    if-eqz v4, :cond_11

    .line 112
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_b

    :cond_11
    move-object v4, v5

    :goto_b
    if-eqz v7, :cond_12

    sget-object v5, Lcom/android/settingslib/spa/widget/scaffold/ComposableSingletons$CustomizedAppBarKt;->INSTANCE:Lcom/android/settingslib/spa/widget/scaffold/ComposableSingletons$CustomizedAppBarKt;

    invoke-virtual {v5}, Lcom/android/settingslib/spa/widget/scaffold/ComposableSingletons$CustomizedAppBarKt;->getLambda-3$frameworks__base__packages__SettingsLib__Spa__spa__android_common__SpaLib()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    goto :goto_c

    :cond_12
    move-object v5, v8

    :goto_c
    if-eqz v9, :cond_13

    sget-object v7, Lcom/android/settingslib/spa/widget/scaffold/ComposableSingletons$CustomizedAppBarKt;->INSTANCE:Lcom/android/settingslib/spa/widget/scaffold/ComposableSingletons$CustomizedAppBarKt;

    invoke-virtual {v7}, Lcom/android/settingslib/spa/widget/scaffold/ComposableSingletons$CustomizedAppBarKt;->getLambda-4$frameworks__base__packages__SettingsLib__Spa__spa__android_common__SpaLib()Lkotlin/jvm/functions/Function3;

    move-result-object v7

    move-object/from16 v23, v7

    goto :goto_d

    :cond_13
    move-object/from16 v23, v10

    :goto_d
    if-eqz v11, :cond_14

    const/4 v7, 0x0

    move-object/from16 v24, v7

    goto :goto_e

    :cond_14
    move-object/from16 v24, v12

    .line 115
    :goto_e
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v7

    if-eqz v7, :cond_15

    const/4 v7, -0x1

    const-string v8, "com.android.settingslib.spa.widget.scaffold.CustomizedLargeTopAppBar (CustomizedAppBar.kt:115)"

    .line 116
    invoke-static {v0, v3, v7, v8}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 119
    :cond_15
    sget-object v0, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v7, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v0, v2, v7}, Landroidx/compose/material3/MaterialTheme;->getTypography(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/Typography;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/compose/material3/Typography;->getDisplaySmall()Landroidx/compose/ui/text/TextStyle;

    move-result-object v9

    .line 120
    invoke-virtual {v0, v2, v7}, Landroidx/compose/material3/MaterialTheme;->getTypography(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/Typography;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/material3/Typography;->getTitleMedium()Landroidx/compose/ui/text/TextStyle;

    move-result-object v12

    .line 121
    sget v10, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt;->LargeTitleBottomPadding:F

    const/4 v0, 0x0

    .line 126
    invoke-static {v2, v0}, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt;->topAppBarColors(Landroidx/compose/runtime/Composer;I)Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;

    move-result-object v16

    .line 127
    invoke-static {v2, v0}, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt;->getSafeDrawingWindowInsets(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object v15

    .line 128
    sget v17, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt;->ContainerHeight:F

    .line 118
    new-instance v0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$CustomizedLargeTopAppBar$1;

    invoke-direct {v0, v1}, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$CustomizedLargeTopAppBar$1;-><init>(Ljava/lang/String;)V

    const v7, 0x1c1dbe8f

    const/4 v8, 0x1

    const/16 v11, 0x36

    invoke-static {v7, v8, v0, v2, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    .line 122
    new-instance v7, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$CustomizedLargeTopAppBar$2;

    invoke-direct {v7, v1}, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$CustomizedLargeTopAppBar$2;-><init>(Ljava/lang/String;)V

    const v13, -0xe31c294

    invoke-static {v13, v8, v7, v2, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v11

    shr-int/lit8 v7, v3, 0x3

    and-int/lit8 v7, v7, 0xe

    or-int/lit16 v7, v7, 0x6c30

    shl-int/lit8 v8, v3, 0xc

    const/high16 v13, 0x380000

    and-int/2addr v13, v8

    or-int/2addr v7, v13

    const/high16 v13, 0x1c00000

    and-int/2addr v8, v13

    or-int v20, v7, v8

    shr-int/lit8 v3, v3, 0x9

    and-int/lit8 v3, v3, 0x70

    or-int/lit8 v21, v3, 0x6

    const/16 v22, 0x0

    move-object v7, v4

    move-object v8, v0

    move-object v13, v5

    move-object/from16 v14, v23

    move-object/from16 v18, v24

    move-object/from16 v19, v2

    .line 117
    invoke-static/range {v7 .. v22}, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt;->TwoRowsTopAppBar-T_xyU-w(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;FLkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Landroidx/compose/foundation/layout/WindowInsets;Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;FLandroidx/compose/material3/TopAppBarScrollBehavior;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_16
    move-object v3, v5

    move-object/from16 v10, v23

    move-object/from16 v5, v24

    .line 131
    :goto_f
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v8

    if-eqz v8, :cond_17

    new-instance v9, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$CustomizedLargeTopAppBar$3;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v2, v4

    move-object v4, v10

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$CustomizedLargeTopAppBar$3;-><init>(Ljava/lang/String;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Landroidx/compose/material3/TopAppBarScrollBehavior;II)V

    invoke-interface {v8, v9}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_17
    return-void
.end method

.method private static final Title(Ljava/lang/String;ILandroidx/compose/runtime/Composer;II)V
    .locals 27

    move-object/from16 v0, p0

    move/from16 v13, p3

    move/from16 v14, p4

    const v1, -0x92014e7

    move-object/from16 v2, p2

    .line 134
    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v12

    and-int/lit8 v2, v14, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v2, v13, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v13, 0xe

    if-nez v2, :cond_2

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v2, v13

    goto :goto_1

    :cond_2
    move v2, v13

    :goto_1
    and-int/lit8 v3, v14, 0x2

    if-eqz v3, :cond_4

    or-int/lit8 v2, v2, 0x30

    :cond_3
    move/from16 v4, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v4, v13, 0x70

    if-nez v4, :cond_3

    move/from16 v4, p1

    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v5, 0x20

    goto :goto_2

    :cond_5
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v2, v5

    :goto_3
    and-int/lit8 v5, v2, 0x5b

    const/16 v6, 0x12

    if-ne v5, v6, :cond_7

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_4

    .line 146
    :cond_6
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v26, v12

    goto/16 :goto_6

    :cond_7
    :goto_4
    if-eqz v3, :cond_8

    const v3, 0x7fffffff

    move/from16 v25, v3

    goto :goto_5

    :cond_8
    move/from16 v25, v4

    .line 134
    :goto_5
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, -0x1

    const-string v4, "com.android.settingslib.spa.widget.scaffold.Title (CustomizedAppBar.kt:133)"

    invoke-static {v1, v2, v3, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 138
    :cond_9
    sget-object v5, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 139
    sget-object v1, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->INSTANCE:Lcom/android/settingslib/spa/framework/theme/SettingsDimension;

    invoke-virtual {v1}, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->getItemPaddingAround-D9Ej5fM()F

    move-result v6

    .line 140
    invoke-virtual {v1}, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->getItemPaddingEnd-D9Ej5fM()F

    move-result v8

    const/16 v10, 0xa

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 138
    invoke-static/range {v5 .. v11}, Landroidx/compose/foundation/layout/PaddingKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 142
    sget-object v3, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$Title$1;->INSTANCE:Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$Title$1;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v1, v5, v3, v6, v4}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 143
    sget-object v3, Landroidx/compose/ui/text/style/TextOverflow;->Companion:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/text/style/TextOverflow$Companion;->getEllipsis-gIe3tQ8()I

    move-result v15

    and-int/lit8 v22, v2, 0xe

    shl-int/lit8 v2, v2, 0x6

    and-int/lit16 v2, v2, 0x1c00

    or-int/lit8 v23, v2, 0x30

    const v24, 0x1d7fc

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/16 v16, 0x0

    move-object/from16 v26, v12

    move-object/from16 v12, v16

    const-wide/16 v16, 0x0

    move-wide/from16 v13, v16

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v17, v25

    move-object/from16 v21, v26

    .line 135
    invoke-static/range {v0 .. v24}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_a
    move/from16 v4, v25

    .line 146
    :goto_6
    invoke-interface/range {v26 .. v26}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-eqz v0, :cond_b

    new-instance v1, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$Title$2;

    move-object/from16 v2, p0

    move/from16 v3, p3

    move/from16 v5, p4

    invoke-direct {v1, v2, v4, v3, v5}, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$Title$2;-><init>(Ljava/lang/String;III)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_b
    return-void
.end method

.method private static final TopAppBarLayout-7QJOWzY(Landroidx/compose/ui/Modifier;FJJJLkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/layout/Arrangement$Vertical;IZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/runtime/Composer;III)V
    .locals 37

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-wide/from16 v5, p4

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v7, p15

    move/from16 v8, p18

    move/from16 v3, p19

    move/from16 v4, p20

    const/high16 v16, 0x70000000

    const/high16 v18, 0xe000000

    const/16 v22, 0x10

    const v0, 0x1ec365fb

    move-object/from16 v7, p17

    .line 482
    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v7

    const/4 v0, 0x1

    and-int/lit8 v24, v4, 0x1

    const/16 v25, 0x4

    const/4 v0, 0x2

    if-eqz v24, :cond_0

    or-int/lit8 v24, v8, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v24, v8, 0xe

    if-nez v24, :cond_2

    invoke-interface {v7, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1

    move/from16 v24, v25

    goto :goto_0

    :cond_1
    move/from16 v24, v0

    :goto_0
    or-int v24, v8, v24

    goto :goto_1

    :cond_2
    move/from16 v24, v8

    :goto_1
    and-int/lit8 v26, v4, 0x2

    if-eqz v26, :cond_4

    or-int/lit8 v24, v24, 0x30

    :cond_3
    :goto_2
    move/from16 v0, v24

    goto :goto_4

    :cond_4
    and-int/lit8 v26, v8, 0x70

    if-nez v26, :cond_3

    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v26

    if-eqz v26, :cond_5

    const/16 v26, 0x20

    goto :goto_3

    :cond_5
    move/from16 v26, v22

    :goto_3
    or-int v24, v24, v26

    goto :goto_2

    :goto_4
    and-int/lit8 v24, v4, 0x4

    if-eqz v24, :cond_7

    or-int/lit16 v0, v0, 0x180

    :cond_6
    move-wide/from16 v1, p2

    goto :goto_6

    :cond_7
    and-int/lit16 v1, v8, 0x380

    if-nez v1, :cond_6

    move-wide/from16 v1, p2

    invoke-interface {v7, v1, v2}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v24

    if-eqz v24, :cond_8

    const/16 v24, 0x100

    goto :goto_5

    :cond_8
    const/16 v24, 0x80

    :goto_5
    or-int v0, v0, v24

    :goto_6
    and-int/lit8 v24, v4, 0x8

    if-eqz v24, :cond_9

    or-int/lit16 v0, v0, 0xc00

    goto :goto_8

    :cond_9
    and-int/lit16 v1, v8, 0x1c00

    if-nez v1, :cond_b

    invoke-interface {v7, v5, v6}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 v1, 0x800

    goto :goto_7

    :cond_a
    const/16 v1, 0x400

    :goto_7
    or-int/2addr v0, v1

    :cond_b
    :goto_8
    and-int/lit8 v1, v4, 0x10

    if-eqz v1, :cond_d

    or-int/lit16 v0, v0, 0x6000

    :cond_c
    move-wide/from16 v1, p6

    :goto_9
    const/16 v23, 0x20

    goto :goto_b

    :cond_d
    const v1, 0xe000

    and-int/2addr v1, v8

    if-nez v1, :cond_c

    move-wide/from16 v1, p6

    invoke-interface {v7, v1, v2}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v24

    if-eqz v24, :cond_e

    const/16 v24, 0x4000

    goto :goto_a

    :cond_e
    const/16 v24, 0x2000

    :goto_a
    or-int v0, v0, v24

    goto :goto_9

    :goto_b
    and-int/lit8 v24, v4, 0x20

    if-eqz v24, :cond_f

    const/high16 v24, 0x30000

    :goto_c
    or-int v0, v0, v24

    goto :goto_d

    :cond_f
    const/high16 v24, 0x70000

    and-int v24, v8, v24

    if-nez v24, :cond_11

    invoke-interface {v7, v9}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_10

    const/high16 v24, 0x20000

    goto :goto_c

    :cond_10
    const/high16 v24, 0x10000

    goto :goto_c

    :cond_11
    :goto_d
    and-int/lit8 v24, v4, 0x40

    if-eqz v24, :cond_13

    const/high16 v24, 0x180000

    :goto_e
    or-int v0, v0, v24

    :cond_12
    const/16 v1, 0x80

    goto :goto_f

    :cond_13
    const/high16 v24, 0x380000

    and-int v24, v8, v24

    if-nez v24, :cond_12

    invoke-interface {v7, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_14

    const/high16 v24, 0x100000

    goto :goto_e

    :cond_14
    const/high16 v24, 0x80000

    goto :goto_e

    :goto_f
    and-int/lit16 v2, v4, 0x80

    const/high16 v24, 0x1c00000

    if-eqz v2, :cond_16

    const/high16 v2, 0xc00000

    :goto_10
    or-int/2addr v0, v2

    :cond_15
    const/16 v2, 0x100

    goto :goto_11

    :cond_16
    and-int v2, v8, v24

    if-nez v2, :cond_15

    invoke-interface {v7, v11}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/high16 v2, 0x800000

    goto :goto_10

    :cond_17
    const/high16 v2, 0x400000

    goto :goto_10

    :goto_11
    and-int/lit16 v1, v4, 0x100

    if-eqz v1, :cond_18

    const/high16 v1, 0x6000000

    :goto_12
    or-int/2addr v0, v1

    goto :goto_13

    :cond_18
    and-int v1, v8, v18

    if-nez v1, :cond_1a

    invoke-interface {v7, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/high16 v1, 0x4000000

    goto :goto_12

    :cond_19
    const/high16 v1, 0x2000000

    goto :goto_12

    :cond_1a
    :goto_13
    and-int/lit16 v1, v4, 0x200

    if-eqz v1, :cond_1c

    const/high16 v1, 0x30000000

    :goto_14
    or-int/2addr v0, v1

    :cond_1b
    const/16 v1, 0x400

    goto :goto_15

    :cond_1c
    and-int v1, v8, v16

    if-nez v1, :cond_1b

    invoke-interface {v7, v13}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v1

    if-eqz v1, :cond_1d

    const/high16 v1, 0x20000000

    goto :goto_14

    :cond_1d
    const/high16 v1, 0x10000000

    goto :goto_14

    :goto_15
    and-int/lit16 v2, v4, 0x400

    if-eqz v2, :cond_1e

    or-int/lit8 v2, v3, 0x6

    :goto_16
    const/16 v1, 0x800

    goto :goto_18

    :cond_1e
    and-int/lit8 v2, v3, 0xe

    if-nez v2, :cond_20

    invoke-interface {v7, v14}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v2

    if-eqz v2, :cond_1f

    goto :goto_17

    :cond_1f
    const/16 v25, 0x2

    :goto_17
    or-int v2, v3, v25

    goto :goto_16

    :cond_20
    move v2, v3

    goto :goto_16

    :goto_18
    and-int/lit16 v8, v4, 0x800

    if-eqz v8, :cond_21

    or-int/lit8 v2, v2, 0x30

    goto :goto_19

    :cond_21
    and-int/lit8 v8, v3, 0x70

    if-nez v8, :cond_23

    invoke-interface {v7, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_22

    const/16 v22, 0x20

    :cond_22
    or-int v2, v2, v22

    :cond_23
    :goto_19
    and-int/lit16 v8, v4, 0x1000

    if-eqz v8, :cond_25

    or-int/lit16 v2, v2, 0x180

    :cond_24
    move-object/from16 v8, p15

    :goto_1a
    const/16 v1, 0x2000

    goto :goto_1c

    :cond_25
    and-int/lit16 v8, v3, 0x380

    if-nez v8, :cond_24

    move-object/from16 v8, p15

    invoke-interface {v7, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_26

    const/16 v21, 0x100

    goto :goto_1b

    :cond_26
    const/16 v21, 0x80

    :goto_1b
    or-int v2, v2, v21

    goto :goto_1a

    :goto_1c
    and-int/2addr v1, v4

    if-eqz v1, :cond_28

    or-int/lit16 v2, v2, 0xc00

    :cond_27
    move/from16 v4, p16

    goto :goto_1e

    :cond_28
    and-int/lit16 v4, v3, 0x1c00

    if-nez v4, :cond_27

    move/from16 v4, p16

    invoke-interface {v7, v4}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v21

    if-eqz v21, :cond_29

    const/16 v20, 0x800

    goto :goto_1d

    :cond_29
    const/16 v20, 0x400

    :goto_1d
    or-int v2, v2, v20

    :goto_1e
    const v20, 0x5b6db6db

    and-int v3, v0, v20

    const v4, 0x12492492

    if-ne v3, v4, :cond_2b

    and-int/lit16 v3, v2, 0x16db

    const/16 v4, 0x492

    if-ne v3, v4, :cond_2b

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_2a

    goto :goto_1f

    .line 587
    :cond_2a
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v17, p16

    move-object v13, v10

    move-wide v10, v5

    goto/16 :goto_2c

    :cond_2b
    :goto_1f
    if-eqz v1, :cond_2c

    const/4 v1, 0x1

    goto :goto_20

    :cond_2c
    move/from16 v1, p16

    .line 481
    :goto_20
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_2d

    const-string v3, "com.android.settingslib.spa.widget.scaffold.TopAppBarLayout (CustomizedAppBar.kt:481)"

    const v4, 0x1ec365fb

    .line 482
    invoke-static {v4, v0, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2d
    const v3, 0x4eeb9bdf

    invoke-interface {v7, v3}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    and-int/lit8 v3, v0, 0x70

    const/16 v4, 0x20

    if-ne v3, v4, :cond_2e

    const/4 v3, 0x1

    goto :goto_21

    :cond_2e
    const/4 v3, 0x0

    :goto_21
    and-int v4, v0, v18

    const/high16 v8, 0x4000000

    if-ne v4, v8, :cond_2f

    const/4 v4, 0x1

    goto :goto_22

    :cond_2f
    const/4 v4, 0x0

    :goto_22
    or-int/2addr v3, v4

    and-int v4, v0, v16

    const/high16 v8, 0x20000000

    if-ne v4, v8, :cond_30

    const/4 v4, 0x1

    goto :goto_23

    :cond_30
    const/4 v4, 0x0

    :goto_23
    or-int/2addr v3, v4

    .line 1166
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_32

    .line 1167
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v4, v3, :cond_31

    goto :goto_24

    :cond_31
    move/from16 v3, p1

    goto :goto_25

    .line 519
    :cond_32
    :goto_24
    new-instance v4, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TopAppBarLayout$2$1;

    move/from16 v3, p1

    invoke-direct {v4, v3, v12, v13}, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TopAppBarLayout$2$1;-><init>(FLandroidx/compose/foundation/layout/Arrangement$Vertical;I)V

    .line 1169
    invoke-interface {v7, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 519
    :goto_25
    check-cast v4, Landroidx/compose/ui/layout/MeasurePolicy;

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const/4 v8, 0x0

    .line 79
    invoke-static {v7, v8}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v16

    .line 80
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v8

    move-object/from16 v3, p0

    .line 81
    invoke-static {v7, v3}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    .line 83
    sget-object v17, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v3

    .line 348
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v18

    if-nez v18, :cond_33

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 349
    :cond_33
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 350
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v18

    if-eqz v18, :cond_34

    .line 351
    invoke-interface {v7, v3}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_26

    .line 353
    :cond_34
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 355
    :goto_26
    invoke-static {v7}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v3

    .line 85
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v13

    invoke-static {v3, v4, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 86
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-static {v3, v8, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 87
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    .line 4045
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v8

    if-nez v8, :cond_35

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v8, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_36

    .line 4046
    :cond_35
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v3, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 4047
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v3, v8, v4}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 88
    :cond_36
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-static {v3, v12, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 485
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    const-string v4, "navigationIcon"

    invoke-static {v3, v4}, Landroidx/compose/ui/layout/LayoutIdKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v27

    sget v4, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt;->TopAppBarHorizontalPadding:F

    const/16 v32, 0xe

    const/16 v33, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move/from16 v28, v4

    invoke-static/range {v27 .. v33}, Landroidx/compose/foundation/layout/PaddingKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    .line 67
    sget-object v12, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v12}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v13

    const/4 v10, 0x0

    .line 71
    invoke-static {v13, v10}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v13

    .line 79
    invoke-static {v7, v10}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v16

    .line 80
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v10

    .line 81
    invoke-static {v7, v8}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    move/from16 v18, v1

    .line 83
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v1

    .line 348
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v19

    if-nez v19, :cond_37

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 349
    :cond_37
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 350
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v19

    if-eqz v19, :cond_38

    .line 351
    invoke-interface {v7, v1}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_27

    .line 353
    :cond_38
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 355
    :goto_27
    invoke-static {v7}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v1

    .line 85
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    invoke-static {v1, v13, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 86
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    invoke-static {v1, v10, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 87
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    .line 4045
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v6

    if-nez v6, :cond_39

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3a

    .line 4046
    :cond_39
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 4047
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6, v5}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 88
    :cond_3a
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    invoke-static {v1, v8, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 73
    sget-object v1, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 487
    invoke-static {}, Landroidx/compose/material3/ContentColorKt;->getLocalContentColor()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v1

    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v1

    .line 488
    sget v5, Landroidx/compose/runtime/ProvidedValue;->$stable:I

    and-int/lit8 v6, v2, 0x70

    or-int/2addr v6, v5

    .line 486
    invoke-static {v1, v15, v7, v6}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 357
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 492
    const-string v1, "title"

    invoke-static {v3, v1}, Landroidx/compose/ui/layout/LayoutIdKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x2

    .line 493
    invoke-static {v1, v4, v6, v10, v8}, Landroidx/compose/foundation/layout/PaddingKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    if-eqz v14, :cond_3b

    .line 494
    sget-object v6, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TopAppBarLayout$1$2;->INSTANCE:Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TopAppBarLayout$1$2;

    invoke-static {v3, v6}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->clearAndSetSemantics(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    goto :goto_28

    :cond_3b
    move-object v6, v3

    :goto_28
    invoke-interface {v1, v6}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const v6, -0x56cfac5b

    invoke-interface {v7, v6}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    and-int v6, v0, v24

    const/high16 v8, 0x800000

    if-ne v6, v8, :cond_3c

    const/4 v6, 0x1

    goto :goto_29

    :cond_3c
    const/4 v6, 0x0

    .line 1166
    :goto_29
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    if-nez v6, :cond_3d

    .line 1167
    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v8, v6, :cond_3e

    .line 495
    :cond_3d
    new-instance v8, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TopAppBarLayout$1$3$1;

    invoke-direct {v8, v11}, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TopAppBarLayout$1$3$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 1169
    invoke-interface {v7, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 495
    :cond_3e
    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    invoke-static {v1, v8}, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt;->graphicsLayer(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 67
    invoke-virtual {v12}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v6

    const/4 v8, 0x0

    .line 71
    invoke-static {v6, v8}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v6

    .line 79
    invoke-static {v7, v8}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v10

    .line 80
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v8

    .line 81
    invoke-static {v7, v1}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 83
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v13

    .line 348
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v16

    if-nez v16, :cond_3f

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 349
    :cond_3f
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 350
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v16

    if-eqz v16, :cond_40

    .line 351
    invoke-interface {v7, v13}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_2a

    .line 353
    :cond_40
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 355
    :goto_2a
    invoke-static {v7}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v13

    .line 85
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v11

    invoke-static {v13, v6, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 86
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v6

    invoke-static {v13, v8, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 87
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v6

    .line 4045
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v8

    if-nez v8, :cond_41

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_42

    .line 4046
    :cond_41
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v13, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 4047
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v13, v8, v6}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 88
    :cond_42
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v6

    invoke-static {v13, v1, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 497
    new-instance v1, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TopAppBarLayout$1$4$1;

    move-wide/from16 v10, p4

    move/from16 v6, v18

    invoke-direct {v1, v10, v11, v9, v6}, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TopAppBarLayout$1$4$1;-><init>(JLkotlin/jvm/functions/Function2;Z)V

    const/16 v8, 0x36

    const v13, 0x5cf02aa0

    const/4 v6, 0x1

    invoke-static {v13, v6, v1, v7, v8}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    shr-int/lit8 v0, v0, 0x12

    and-int/lit8 v0, v0, 0xe

    or-int/lit8 v0, v0, 0x30

    move-object/from16 v13, p9

    invoke-static {v13, v1, v7, v0}, Landroidx/compose/material3/TextKt;->ProvideTextStyle(Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 357
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 511
    const-string v0, "actionIcons"

    invoke-static {v3, v0}, Landroidx/compose/ui/layout/LayoutIdKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v28

    const/16 v33, 0xb

    const/16 v34, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v32, 0x0

    move/from16 v31, v4

    invoke-static/range {v28 .. v34}, Landroidx/compose/foundation/layout/PaddingKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 67
    invoke-virtual {v12}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v1

    const/4 v3, 0x0

    .line 71
    invoke-static {v1, v3}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v1

    .line 79
    invoke-static {v7, v3}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v3

    .line 80
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v4

    .line 81
    invoke-static {v7, v0}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 83
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v6

    .line 348
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v8

    if-nez v8, :cond_43

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 349
    :cond_43
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 350
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v8

    if-eqz v8, :cond_44

    .line 351
    invoke-interface {v7, v6}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_2b

    .line 353
    :cond_44
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 355
    :goto_2b
    invoke-static {v7}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v6

    .line 85
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v8

    invoke-static {v6, v1, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 86
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v6, v4, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 87
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    .line 4045
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v4

    if-nez v4, :cond_45

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_46

    .line 4046
    :cond_45
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 4047
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v6, v3, v1}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 88
    :cond_46
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v6, v0, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 513
    invoke-static {}, Landroidx/compose/material3/ContentColorKt;->getLocalContentColor()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    invoke-static/range {p6 .. p7}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v0

    shr-int/lit8 v1, v2, 0x3

    and-int/lit8 v1, v1, 0x70

    or-int/2addr v1, v5

    move-object/from16 v8, p15

    .line 512
    invoke-static {v0, v8, v7, v1}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 357
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 357
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 92
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_47
    move/from16 v17, v18

    .line 587
    :goto_2c
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v12

    if-eqz v12, :cond_48

    new-instance v7, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TopAppBarLayout$3;

    move-object v0, v7

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-object v11, v7

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object v13, v11

    move-object/from16 v11, p10

    move-object/from16 v35, v12

    move-object/from16 v12, p11

    move-object/from16 v36, v13

    move/from16 v13, p12

    move/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move/from16 v18, p18

    move/from16 v19, p19

    move/from16 v20, p20

    invoke-direct/range {v0 .. v20}, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TopAppBarLayout$3;-><init>(Landroidx/compose/ui/Modifier;FJJJLkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/layout/Arrangement$Vertical;IZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZIII)V

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_48
    return-void
.end method

.method private static final TwoRowsTopAppBar-T_xyU-w(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;FLkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Landroidx/compose/foundation/layout/WindowInsets;Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;FLandroidx/compose/material3/TopAppBarScrollBehavior;Landroidx/compose/runtime/Composer;III)V
    .locals 53

    move-object/from16 v2, p1

    move/from16 v4, p3

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p13

    move/from16 v15, p15

    const/16 v6, 0x20

    const/16 v7, 0x10

    const v14, 0x3ee5fd7e

    move-object/from16 v1, p12

    .line 300
    invoke-interface {v1, v14}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v1

    const/4 v14, 0x1

    and-int/lit8 v17, v15, 0x1

    const/16 v18, 0x2

    const/16 v19, 0x4

    if-eqz v17, :cond_0

    or-int/lit8 v20, v13, 0x6

    move-object/from16 v14, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v20, v13, 0xe

    move-object/from16 v14, p0

    if-nez v20, :cond_2

    invoke-interface {v1, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    move/from16 v20, v19

    goto :goto_0

    :cond_1
    move/from16 v20, v18

    :goto_0
    or-int v20, v13, v20

    goto :goto_1

    :cond_2
    move/from16 v20, v13

    :goto_1
    and-int/lit8 v21, v15, 0x2

    if-eqz v21, :cond_4

    or-int/lit8 v20, v20, 0x30

    :cond_3
    :goto_2
    move/from16 v0, v20

    goto :goto_4

    :cond_4
    and-int/lit8 v21, v13, 0x70

    if-nez v21, :cond_3

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    move/from16 v21, v6

    goto :goto_3

    :cond_5
    move/from16 v21, v7

    :goto_3
    or-int v20, v20, v21

    goto :goto_2

    :goto_4
    and-int/lit8 v20, v15, 0x4

    if-eqz v20, :cond_7

    or-int/lit16 v0, v0, 0x180

    :cond_6
    move-object/from16 v5, p2

    goto :goto_6

    :cond_7
    and-int/lit16 v5, v13, 0x380

    if-nez v5, :cond_6

    move-object/from16 v5, p2

    invoke-interface {v1, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_8

    const/16 v22, 0x100

    goto :goto_5

    :cond_8
    const/16 v22, 0x80

    :goto_5
    or-int v0, v0, v22

    :goto_6
    and-int/lit8 v22, v15, 0x8

    if-eqz v22, :cond_9

    or-int/lit16 v0, v0, 0xc00

    goto :goto_8

    :cond_9
    and-int/lit16 v3, v13, 0x1c00

    if-nez v3, :cond_b

    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v3

    if-eqz v3, :cond_a

    const/16 v3, 0x800

    goto :goto_7

    :cond_a
    const/16 v3, 0x400

    :goto_7
    or-int/2addr v0, v3

    :cond_b
    :goto_8
    and-int/lit8 v3, v15, 0x10

    if-eqz v3, :cond_d

    or-int/lit16 v0, v0, 0x6000

    :cond_c
    move-object/from16 v3, p4

    goto :goto_a

    :cond_d
    const v3, 0xe000

    and-int/2addr v3, v13

    if-nez v3, :cond_c

    move-object/from16 v3, p4

    invoke-interface {v1, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_e

    const/16 v23, 0x4000

    goto :goto_9

    :cond_e
    const/16 v23, 0x2000

    :goto_9
    or-int v0, v0, v23

    :goto_a
    and-int/lit8 v23, v15, 0x20

    const/high16 v24, 0x70000

    if-eqz v23, :cond_f

    const/high16 v23, 0x30000

    or-int v0, v0, v23

    move-object/from16 v7, p5

    goto :goto_c

    :cond_f
    and-int v23, v13, v24

    move-object/from16 v7, p5

    if-nez v23, :cond_11

    invoke-interface {v1, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_10

    const/high16 v25, 0x20000

    goto :goto_b

    :cond_10
    const/high16 v25, 0x10000

    :goto_b
    or-int v0, v0, v25

    :cond_11
    :goto_c
    and-int/lit8 v25, v15, 0x40

    const/high16 v37, 0x380000

    if-eqz v25, :cond_13

    const/high16 v25, 0x180000

    or-int v0, v0, v25

    move-object/from16 v6, p6

    :cond_12
    :goto_d
    const/16 v3, 0x80

    goto :goto_f

    :cond_13
    and-int v25, v13, v37

    move-object/from16 v6, p6

    if-nez v25, :cond_12

    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_14

    const/high16 v26, 0x100000

    goto :goto_e

    :cond_14
    const/high16 v26, 0x80000

    :goto_e
    or-int v0, v0, v26

    goto :goto_d

    :goto_f
    and-int/2addr v3, v15

    if-eqz v3, :cond_16

    const/high16 v3, 0xc00000

    :goto_10
    or-int/2addr v0, v3

    :cond_15
    const/16 v3, 0x100

    goto :goto_11

    :cond_16
    const/high16 v3, 0x1c00000

    and-int/2addr v3, v13

    if-nez v3, :cond_15

    invoke-interface {v1, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    const/high16 v3, 0x800000

    goto :goto_10

    :cond_17
    const/high16 v3, 0x400000

    goto :goto_10

    :goto_11
    and-int/2addr v3, v15

    if-eqz v3, :cond_18

    const/high16 v3, 0x6000000

    :goto_12
    or-int/2addr v0, v3

    goto :goto_13

    :cond_18
    const/high16 v3, 0xe000000

    and-int/2addr v3, v13

    if-nez v3, :cond_1a

    invoke-interface {v1, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    const/high16 v3, 0x4000000

    goto :goto_12

    :cond_19
    const/high16 v3, 0x2000000

    goto :goto_12

    :cond_1a
    :goto_13
    and-int/lit16 v3, v15, 0x200

    const/high16 v20, 0x70000000

    if-eqz v3, :cond_1c

    const/high16 v3, 0x30000000

    :goto_14
    or-int/2addr v0, v3

    :cond_1b
    const/16 v3, 0x400

    goto :goto_15

    :cond_1c
    and-int v3, v13, v20

    if-nez v3, :cond_1b

    invoke-interface {v1, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    const/high16 v3, 0x20000000

    goto :goto_14

    :cond_1d
    const/high16 v3, 0x10000000

    goto :goto_14

    :goto_15
    and-int/2addr v3, v15

    if-eqz v3, :cond_1e

    or-int/lit8 v3, p14, 0x6

    :goto_16
    const/16 v5, 0x800

    goto :goto_17

    :cond_1e
    and-int/lit8 v3, p14, 0xe

    if-nez v3, :cond_20

    invoke-interface {v1, v11}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v3

    if-eqz v3, :cond_1f

    move/from16 v18, v19

    :cond_1f
    or-int v3, p14, v18

    goto :goto_16

    :cond_20
    move/from16 v3, p14

    goto :goto_16

    :goto_17
    and-int/2addr v5, v15

    if-eqz v5, :cond_21

    or-int/lit8 v3, v3, 0x30

    goto :goto_19

    :cond_21
    and-int/lit8 v5, p14, 0x70

    if-nez v5, :cond_23

    invoke-interface {v1, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    const/16 v23, 0x20

    goto :goto_18

    :cond_22
    const/16 v23, 0x10

    :goto_18
    or-int v3, v3, v23

    :cond_23
    :goto_19
    const v5, 0x5b6db6db

    and-int/2addr v5, v0

    const v6, 0x12492492

    if-ne v5, v6, :cond_25

    and-int/lit8 v5, v3, 0x5b

    const/16 v6, 0x12

    if-ne v5, v6, :cond_25

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v5

    if-nez v5, :cond_24

    goto :goto_1a

    .line 437
    :cond_24
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object v3, v2

    move-object/from16 v40, v14

    goto/16 :goto_26

    :cond_25
    :goto_1a
    if-eqz v17, :cond_26

    .line 288
    sget-object v5, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_1b

    :cond_26
    move-object v5, v14

    :goto_1b
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v6

    if-eqz v6, :cond_27

    const-string v6, "com.android.settingslib.spa.widget.scaffold.TwoRowsTopAppBar (CustomizedAppBar.kt:299)"

    const v14, 0x3ee5fd7e

    .line 300
    invoke-static {v14, v0, v3, v6}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 301
    :cond_27
    sget v6, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt;->MaxHeightWithoutTitle:F

    invoke-static {v6, v11}, Landroidx/compose/ui/unit/Dp;->compareTo-0680j_4(FF)I

    move-result v14

    if-lez v14, :cond_4c

    .line 308
    new-instance v14, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v14}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    .line 309
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v7

    .line 75
    invoke-interface {v1, v7}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v7

    .line 309
    check-cast v7, Landroidx/compose/ui/unit/Density;

    .line 311
    invoke-interface {v7, v11}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v38

    .line 312
    invoke-interface {v7, v4}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v39

    .line 313
    sget v16, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt;->DefaultTitleHeight:F

    add-float v6, v6, v16

    .line 48
    invoke-static {v6}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v6

    .line 313
    invoke-interface {v7, v6}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v6

    iput v6, v14, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 314
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const v6, -0x2cff9c62

    .line 310
    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 316
    invoke-interface {v1, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    .line 1166
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v6, :cond_28

    .line 1167
    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v4, v6, :cond_29

    .line 316
    :cond_28
    iget v4, v14, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-static {v4}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->mutableFloatStateOf(F)Landroidx/compose/runtime/MutableFloatState;

    move-result-object v4

    .line 1169
    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 316
    :cond_29
    check-cast v4, Landroidx/compose/runtime/MutableFloatState;

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    if-eqz v12, :cond_2a

    .line 320
    invoke-interface/range {p11 .. p11}, Landroidx/compose/material3/TopAppBarScrollBehavior;->getState()Landroidx/compose/material3/TopAppBarState;

    move-result-object v16

    move-object/from16 v6, v16

    goto :goto_1c

    :cond_2a
    const/4 v6, 0x0

    :goto_1c
    if-nez v6, :cond_2b

    goto :goto_1d

    :cond_2b
    invoke-interface {v4}, Landroidx/compose/runtime/MutableFloatState;->getFloatValue()F

    move-result v16

    sub-float v11, v38, v16

    invoke-virtual {v6, v11}, Landroidx/compose/material3/TopAppBarState;->setHeightOffsetLimit(F)V

    :goto_1d
    const v6, -0x2cff99a2

    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    and-int/lit8 v3, v3, 0x70

    const/16 v11, 0x20

    if-ne v3, v11, :cond_2c

    const/4 v11, 0x1

    goto :goto_1e

    :cond_2c
    const/4 v11, 0x0

    .line 1166
    :goto_1e
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v11, :cond_2d

    .line 1167
    sget-object v11, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v11}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v11

    if-ne v6, v11, :cond_2e

    .line 327
    :cond_2d
    new-instance v6, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$colorTransitionFraction$1$1;

    invoke-direct {v6, v12}, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$colorTransitionFraction$1$1;-><init>(Landroidx/compose/material3/TopAppBarScrollBehavior;)V

    .line 1169
    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 327
    :cond_2e
    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const v11, -0x2cff9950

    invoke-interface {v1, v11}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    and-int v11, v0, v20

    const/high16 v13, 0x20000000

    if-ne v11, v13, :cond_2f

    const/4 v11, 0x1

    goto :goto_1f

    :cond_2f
    const/4 v11, 0x0

    :goto_1f
    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v13

    or-int/2addr v11, v13

    .line 1166
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    if-nez v11, :cond_30

    .line 1167
    sget-object v11, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v11}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v11

    if-ne v13, v11, :cond_31

    .line 328
    :cond_30
    new-instance v13, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$appBarContainerColor$1$1;

    invoke-direct {v13, v10, v6}, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$appBarContainerColor$1$1;-><init>(Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;Lkotlin/jvm/functions/Function0;)V

    .line 1169
    invoke-interface {v1, v13}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 328
    :cond_31
    check-cast v13, Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 332
    new-instance v11, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$actionsRow$1;

    invoke-direct {v11, v8}, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$actionsRow$1;-><init>(Lkotlin/jvm/functions/Function3;)V

    const v8, -0x1eedb3b9

    const/16 v10, 0x36

    const/4 v15, 0x1

    invoke-static {v8, v15, v11, v1, v10}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v31

    const v8, -0x2cff97eb

    .line 331
    invoke-interface {v1, v8}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    .line 1166
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    if-nez v8, :cond_32

    .line 1167
    sget-object v8, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v8}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v8

    if-ne v11, v8, :cond_33

    .line 339
    :cond_32
    new-instance v11, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$topTitleAlpha$1$1;

    invoke-direct {v11, v6}, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$topTitleAlpha$1$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 1169
    invoke-interface {v1, v11}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 339
    :cond_33
    move-object/from16 v26, v11

    check-cast v26, Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const v8, -0x2cff9793

    invoke-interface {v1, v8}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    .line 1166
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    if-nez v8, :cond_34

    .line 1167
    sget-object v8, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v8}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v8

    if-ne v11, v8, :cond_35

    .line 340
    :cond_34
    new-instance v11, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$bottomTitleAlpha$1$1;

    invoke-direct {v11, v6}, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$bottomTitleAlpha$1$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 1169
    invoke-interface {v1, v11}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 340
    :cond_35
    move-object v8, v11

    check-cast v8, Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const v11, -0x2cff969e

    invoke-interface {v1, v11}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 344
    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v11

    .line 1166
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v15

    if-nez v11, :cond_36

    .line 1167
    sget-object v11, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v11}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v11

    if-ne v15, v11, :cond_37

    .line 344
    :cond_36
    new-instance v11, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$hideTopRowSemantics$2$1;

    invoke-direct {v11, v6}, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$hideTopRowSemantics$2$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-static {v11}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object v15

    .line 1169
    invoke-interface {v1, v15}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 344
    :cond_37
    check-cast v15, Landroidx/compose/runtime/State;

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 345
    invoke-static {v15}, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt;->TwoRowsTopAppBar_T_xyU_w$lambda$10(Landroidx/compose/runtime/State;)Z

    move-result v6

    const/4 v11, 0x1

    xor-int/2addr v6, v11

    const v11, -0x2cff958c

    invoke-interface {v1, v11}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    if-eqz v12, :cond_3e

    .line 349
    invoke-interface/range {p11 .. p11}, Landroidx/compose/material3/TopAppBarScrollBehavior;->isPinned()Z

    move-result v11

    if-nez v11, :cond_3e

    .line 350
    sget-object v40, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 351
    sget-object v42, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    const v11, -0x2cff94bb

    invoke-interface {v1, v11}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const/16 v11, 0x20

    if-ne v3, v11, :cond_38

    const/4 v11, 0x1

    goto :goto_20

    :cond_38
    const/4 v11, 0x0

    .line 1166
    :goto_20
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    if-nez v11, :cond_39

    .line 1167
    sget-object v11, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v11}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v11

    if-ne v10, v11, :cond_3a

    .line 353
    :cond_39
    new-instance v10, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$appBarDragModifier$1$1;

    invoke-direct {v10, v12}, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$appBarDragModifier$1$1;-><init>(Landroidx/compose/material3/TopAppBarScrollBehavior;)V

    .line 1169
    invoke-interface {v1, v10}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 353
    :cond_3a
    check-cast v10, Lkotlin/jvm/functions/Function1;

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const/4 v11, 0x0

    invoke-static {v10, v1, v11}, Landroidx/compose/foundation/gestures/DraggableKt;->rememberDraggableState(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/gestures/DraggableState;

    move-result-object v41

    const v10, -0x2cff9462

    .line 350
    invoke-interface {v1, v10}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const/16 v10, 0x20

    if-ne v3, v10, :cond_3b

    const/4 v3, 0x1

    goto :goto_21

    :cond_3b
    const/4 v3, 0x0

    .line 1166
    :goto_21
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    if-nez v3, :cond_3c

    .line 1167
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v10, v3, :cond_3d

    .line 354
    :cond_3c
    new-instance v10, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$appBarDragModifier$2$1;

    const/4 v3, 0x0

    invoke-direct {v10, v12, v3}, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$appBarDragModifier$2$1;-><init>(Landroidx/compose/material3/TopAppBarScrollBehavior;Lkotlin/coroutines/Continuation;)V

    .line 1169
    invoke-interface {v1, v10}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 354
    :cond_3d
    move-object/from16 v47, v10

    check-cast v47, Lkotlin/jvm/functions/Function3;

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const/16 v49, 0xbc

    const/16 v50, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v48, 0x0

    .line 350
    invoke-static/range {v40 .. v50}, Landroidx/compose/foundation/gestures/DraggableKt;->draggable$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/DraggableState;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;ZLkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    goto :goto_22

    .line 364
    :cond_3e
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 349
    :goto_22
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 370
    invoke-interface {v5, v3}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    const v10, -0x2cff9290

    invoke-interface {v1, v10}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v1, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v10

    .line 1166
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    if-nez v10, :cond_3f

    .line 1167
    sget-object v10, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v10}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v10

    if-ne v11, v10, :cond_40

    .line 371
    :cond_3f
    new-instance v11, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$2$1;

    invoke-direct {v11, v13}, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$2$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 1169
    invoke-interface {v1, v11}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 371
    :cond_40
    check-cast v11, Lkotlin/jvm/functions/Function1;

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    invoke-static {v3, v11}, Landroidx/compose/ui/draw/DrawModifierKt;->drawBehind(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 372
    sget-object v10, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$3;->INSTANCE:Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$3;

    move-object/from16 v40, v5

    const/4 v5, 0x0

    const/4 v11, 0x1

    const/4 v13, 0x0

    invoke-static {v3, v5, v10, v11, v13}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 373
    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    sget-object v11, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$4;->INSTANCE:Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$4;

    invoke-static {v3, v10, v11}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 67
    sget-object v10, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v10}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v11

    .line 71
    invoke-static {v11, v5}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v11

    .line 79
    invoke-static {v1, v5}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v13

    .line 80
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v5

    .line 81
    invoke-static {v1, v3}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 83
    sget-object v17, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move/from16 p0, v6

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v6

    .line 348
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v18

    if-nez v18, :cond_41

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 349
    :cond_41
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 350
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v18

    if-eqz v18, :cond_42

    .line 351
    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_23

    .line 353
    :cond_42
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 355
    :goto_23
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v6

    move-object/from16 v41, v8

    .line 85
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v8

    invoke-static {v6, v11, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 86
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v8

    invoke-static {v6, v5, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 87
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    .line 4045
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v8

    if-nez v8, :cond_43

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_44

    .line 4046
    :cond_43
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 4047
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8, v5}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 88
    :cond_44
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    invoke-static {v6, v3, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 73
    sget-object v3, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 82
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 83
    sget-object v5, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v5}, Landroidx/compose/foundation/layout/Arrangement;->getTop()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    move-result-object v6

    .line 84
    invoke-virtual {v10}, Landroidx/compose/ui/Alignment$Companion;->getStart()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v8

    const/4 v10, 0x0

    .line 87
    invoke-static {v6, v8, v1, v10}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v6

    .line 79
    invoke-static {v1, v10}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v8

    .line 80
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v10

    .line 81
    invoke-static {v1, v3}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v11

    .line 83
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v13

    .line 348
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v16

    if-nez v16, :cond_45

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 349
    :cond_45
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 350
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v16

    if-eqz v16, :cond_46

    .line 351
    invoke-interface {v1, v13}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_24

    .line 353
    :cond_46
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 355
    :goto_24
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v13

    .line 85
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v13, v6, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 86
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v13, v10, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 87
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    .line 4045
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v6

    if-nez v6, :cond_47

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_48

    .line 4046
    :cond_47
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v13, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 4047
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v13, v6, v2}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 88
    :cond_48
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v13, v11, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 89
    sget-object v2, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    .line 378
    invoke-static {v3, v9}, Landroidx/compose/foundation/layout/WindowInsetsPaddingKt;->windowInsetsPadding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/WindowInsets;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 380
    invoke-static {v2}, Landroidx/compose/ui/draw/ClipKt;->clipToBounds(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v16

    .line 382
    invoke-virtual/range {p9 .. p9}, Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;->getNavigationIconContentColor-0d7_KjU()J

    move-result-wide v18

    .line 383
    invoke-virtual/range {p9 .. p9}, Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;->getTitleContentColor-0d7_KjU()J

    move-result-wide v20

    .line 384
    invoke-virtual/range {p9 .. p9}, Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;->getActionIconContentColor-0d7_KjU()J

    move-result-wide v22

    .line 388
    invoke-virtual {v5}, Landroidx/compose/foundation/layout/Arrangement;->getCenter()Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v27

    .line 390
    invoke-static {v15}, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt;->TwoRowsTopAppBar_T_xyU_w$lambda$10(Landroidx/compose/runtime/State;)Z

    move-result v29

    shl-int/lit8 v2, v0, 0x3

    and-int v6, v2, v24

    const/high16 v8, 0x36000000

    or-int/2addr v6, v8

    and-int v2, v2, v37

    or-int v34, v6, v2

    shr-int/lit8 v2, v0, 0xf

    and-int/lit8 v2, v2, 0x70

    or-int/lit16 v2, v2, 0x180

    move/from16 v35, v2

    const/16 v36, 0x2000

    const/16 v28, 0x0

    const/16 v32, 0x0

    move/from16 v17, v38

    move-object/from16 v24, p4

    move-object/from16 v25, p5

    move-object/from16 v30, p6

    move-object/from16 v33, v1

    .line 376
    invoke-static/range {v16 .. v36}, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt;->TopAppBarLayout-7QJOWzY(Landroidx/compose/ui/Modifier;FJJJLkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/layout/Arrangement$Vertical;IZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/runtime/Composer;III)V

    .line 400
    sget-object v2, Landroidx/compose/foundation/layout/WindowInsetsSides;->Companion:Landroidx/compose/foundation/layout/WindowInsetsSides$Companion;

    invoke-virtual {v2}, Landroidx/compose/foundation/layout/WindowInsetsSides$Companion;->getHorizontal-JoeWqyM()I

    move-result v2

    invoke-static {v9, v2}, Landroidx/compose/foundation/layout/WindowInsetsKt;->only-bOOhFvg(Landroidx/compose/foundation/layout/WindowInsets;I)Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object v2

    invoke-static {v3, v2}, Landroidx/compose/foundation/layout/WindowInsetsPaddingKt;->windowInsetsPadding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/WindowInsets;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 401
    invoke-static {v2}, Landroidx/compose/ui/draw/ClipKt;->clipToBounds(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v16

    .line 403
    invoke-interface {v4}, Landroidx/compose/runtime/MutableFloatState;->getFloatValue()F

    move-result v2

    sub-float v2, v2, v38

    if-eqz v12, :cond_49

    .line 404
    invoke-interface/range {p11 .. p11}, Landroidx/compose/material3/TopAppBarScrollBehavior;->getState()Landroidx/compose/material3/TopAppBarState;

    move-result-object v3

    if-eqz v3, :cond_49

    invoke-virtual {v3}, Landroidx/compose/material3/TopAppBarState;->getHeightOffset()F

    move-result v3

    goto :goto_25

    :cond_49
    const/4 v3, 0x0

    :goto_25
    add-float v17, v2, v3

    .line 405
    invoke-virtual/range {p9 .. p9}, Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;->getNavigationIconContentColor-0d7_KjU()J

    move-result-wide v18

    .line 406
    invoke-virtual/range {p9 .. p9}, Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;->getTitleContentColor-0d7_KjU()J

    move-result-wide v20

    .line 407
    invoke-virtual/range {p9 .. p9}, Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;->getActionIconContentColor-0d7_KjU()J

    move-result-wide v22

    .line 408
    new-instance v2, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$5$1$1;

    move-object/from16 v3, p1

    invoke-direct {v2, v7, v14, v4, v3}, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$5$1$1;-><init>(Landroidx/compose/ui/unit/Density;Lkotlin/jvm/internal/Ref$FloatRef;Landroidx/compose/runtime/MutableFloatState;Lkotlin/jvm/functions/Function2;)V

    const v4, -0x2a352b16

    const/4 v6, 0x1

    const/16 v7, 0x36

    invoke-static {v4, v6, v2, v1, v7}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v24

    .line 429
    invoke-virtual {v5}, Landroidx/compose/foundation/layout/Arrangement;->getBottom()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    move-result-object v27

    .line 431
    sget-object v2, Lcom/android/settingslib/spa/widget/scaffold/ComposableSingletons$CustomizedAppBarKt;->INSTANCE:Lcom/android/settingslib/spa/widget/scaffold/ComposableSingletons$CustomizedAppBarKt;

    invoke-virtual {v2}, Lcom/android/settingslib/spa/widget/scaffold/ComposableSingletons$CustomizedAppBarKt;->getLambda-5$frameworks__base__packages__SettingsLib__Spa__spa__android_common__SpaLib()Lkotlin/jvm/functions/Function2;

    move-result-object v30

    invoke-virtual {v2}, Lcom/android/settingslib/spa/widget/scaffold/ComposableSingletons$CustomizedAppBarKt;->getLambda-6$frameworks__base__packages__SettingsLib__Spa__spa__android_common__SpaLib()Lkotlin/jvm/functions/Function2;

    move-result-object v31

    shl-int/lit8 v0, v0, 0xc

    and-int v0, v0, v37

    const/high16 v2, 0x6030000

    or-int v34, v0, v2

    const/16 v35, 0x1b0

    const/16 v36, 0x2000

    const/16 v32, 0x0

    move-object/from16 v25, p2

    move-object/from16 v26, v41

    move/from16 v28, v39

    move/from16 v29, p0

    move-object/from16 v33, v1

    .line 394
    invoke-static/range {v16 .. v36}, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt;->TopAppBarLayout-7QJOWzY(Landroidx/compose/ui/Modifier;FJJJLkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/layout/Arrangement$Vertical;IZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/runtime/Composer;III)V

    .line 357
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 357
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 77
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 437
    :cond_4a
    :goto_26
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v15

    if-eqz v15, :cond_4b

    new-instance v14, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$6;

    move-object v0, v14

    move-object/from16 v1, v40

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p13

    move-object/from16 v51, v14

    move/from16 v14, p14

    move-object/from16 v52, v15

    move/from16 v15, p15

    invoke-direct/range {v0 .. v15}, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$6;-><init>(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;FLkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Landroidx/compose/foundation/layout/WindowInsets;Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;FLandroidx/compose/material3/TopAppBarScrollBehavior;III)V

    move-object/from16 v1, v51

    move-object/from16 v0, v52

    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_4b
    return-void

    .line 302
    :cond_4c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 303
    const-string v1, "A TwoRowsTopAppBar max height should be greater than its pinned height"

    .line 302
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final TwoRowsTopAppBar_T_xyU_w$lambda$10(Landroidx/compose/runtime/State;)Z
    .locals 0

    .line 81
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$Title(Ljava/lang/String;ILandroidx/compose/runtime/Composer;II)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt;->Title(Ljava/lang/String;ILandroidx/compose/runtime/Composer;II)V

    return-void
.end method

.method public static final synthetic access$TopAppBarLayout-7QJOWzY(Landroidx/compose/ui/Modifier;FJJJLkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/layout/Arrangement$Vertical;IZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/runtime/Composer;III)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p20}, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt;->TopAppBarLayout-7QJOWzY(Landroidx/compose/ui/Modifier;FJJJLkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/layout/Arrangement$Vertical;IZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/runtime/Composer;III)V

    return-void
.end method

.method public static final synthetic access$TwoRowsTopAppBar-T_xyU-w(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;FLkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Landroidx/compose/foundation/layout/WindowInsets;Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;FLandroidx/compose/material3/TopAppBarScrollBehavior;Landroidx/compose/runtime/Composer;III)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p15}, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt;->TwoRowsTopAppBar-T_xyU-w(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;FLkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Landroidx/compose/foundation/layout/WindowInsets;Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;FLandroidx/compose/material3/TopAppBarScrollBehavior;Landroidx/compose/runtime/Composer;III)V

    return-void
.end method

.method public static final synthetic access$getTopAppBarTitleInset$p()F
    .locals 1

    .line 1
    sget v0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt;->TopAppBarTitleInset:F

    return v0
.end method

.method public static final synthetic access$getTopTitleAlphaEasing$p()Landroidx/compose/animation/core/CubicBezierEasing;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt;->TopTitleAlphaEasing:Landroidx/compose/animation/core/CubicBezierEasing;

    return-object v0
.end method

.method public static final synthetic access$settleAppBar(Landroidx/compose/material3/TopAppBarState;FLandroidx/compose/animation/core/DecayAnimationSpec;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt;->settleAppBar(Landroidx/compose/material3/TopAppBarState;FLandroidx/compose/animation/core/DecayAnimationSpec;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final getMaxHeightWithoutTitle()F
    .locals 1

    .line 650
    sget v0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt;->MaxHeightWithoutTitle:F

    return v0
.end method

.method private static final getSafeDrawingWindowInsets(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/WindowInsets;
    .locals 3

    const v0, -0x777b32b0

    invoke-interface {p0, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "com.android.settingslib.spa.widget.scaffold.<get-safeDrawingWindowInsets> (CustomizedAppBar.kt:88)"

    .line 89
    invoke-static {v0, p1, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    sget-object p1, Landroidx/compose/foundation/layout/WindowInsets;->Companion:Landroidx/compose/foundation/layout/WindowInsets$Companion;

    const/16 v0, 0x8

    invoke-static {p1, p0, v0}, Landroidx/compose/foundation/layout/WindowInsets_androidKt;->getSafeDrawing(Landroidx/compose/foundation/layout/WindowInsets$Companion;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object p1

    sget-object v0, Landroidx/compose/foundation/layout/WindowInsetsSides;->Companion:Landroidx/compose/foundation/layout/WindowInsetsSides$Companion;

    invoke-virtual {v0}, Landroidx/compose/foundation/layout/WindowInsetsSides$Companion;->getHorizontal-JoeWqyM()I

    move-result v1

    invoke-virtual {v0}, Landroidx/compose/foundation/layout/WindowInsetsSides$Companion;->getTop-JoeWqyM()I

    move-result v0

    invoke-static {v1, v0}, Landroidx/compose/foundation/layout/WindowInsetsSides;->plus-gK_yJZ4(II)I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/foundation/layout/WindowInsetsKt;->only-bOOhFvg(Landroidx/compose/foundation/layout/WindowInsets;I)Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object p1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    return-object p1
.end method

.method private static final settleAppBar(Landroidx/compose/material3/TopAppBarState;FLandroidx/compose/animation/core/DecayAnimationSpec;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    instance-of v2, v1, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$settleAppBar$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$settleAppBar$1;

    iget v3, v2, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$settleAppBar$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$settleAppBar$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$settleAppBar$1;

    invoke-direct {v2, v1}, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$settleAppBar$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$settleAppBar$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v11

    .line 594
    iget v3, v2, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$settleAppBar$1;->label:I

    const/4 v10, 0x2

    const/4 v4, 0x1

    const/4 v12, 0x0

    if-eqz v3, :cond_3

    if-eq v3, v4, :cond_2

    if-ne v3, v10, :cond_1

    iget-object v0, v2, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$settleAppBar$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, v2, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$settleAppBar$1;->L$2:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/Ref$FloatRef;

    iget-object v3, v2, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$settleAppBar$1;->L$1:Ljava/lang/Object;

    check-cast v3, Landroidx/compose/animation/core/AnimationSpec;

    iget-object v4, v2, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$settleAppBar$1;->L$0:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/material3/TopAppBarState;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, v0

    move-object v13, v3

    move-object v0, v4

    goto :goto_1

    :cond_3
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 604
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/TopAppBarState;->getCollapsedFraction()F

    move-result v1

    const v3, 0x3c23d70a    # 0.01f

    cmpg-float v1, v1, v3

    if-ltz v1, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/TopAppBarState;->getCollapsedFraction()F

    move-result v1

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v3

    if-nez v1, :cond_4

    goto/16 :goto_5

    .line 607
    :cond_4
    new-instance v1, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    move/from16 v5, p1

    iput v5, v1, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    if-eqz p2, :cond_6

    .line 610
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v3, v6, v3

    if-lez v3, :cond_6

    .line 611
    new-instance v3, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    const/16 v20, 0x1c

    const/16 v21, 0x0

    const/4 v13, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    move/from16 v14, p1

    .line 612
    invoke-static/range {v13 .. v21}, Landroidx/compose/animation/core/AnimationStateKt;->AnimationState$default(FFJJZILjava/lang/Object;)Landroidx/compose/animation/core/AnimationState;

    move-result-object v5

    .line 616
    new-instance v6, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$settleAppBar$2;

    invoke-direct {v6, v3, v0, v1}, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$settleAppBar$2;-><init>(Lkotlin/jvm/internal/Ref$FloatRef;Landroidx/compose/material3/TopAppBarState;Lkotlin/jvm/internal/Ref$FloatRef;)V

    iput-object v0, v2, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$settleAppBar$1;->L$0:Ljava/lang/Object;

    move-object/from16 v13, p3

    iput-object v13, v2, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$settleAppBar$1;->L$1:Ljava/lang/Object;

    iput-object v1, v2, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$settleAppBar$1;->L$2:Ljava/lang/Object;

    iput v4, v2, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$settleAppBar$1;->label:I

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    move-object v3, v5

    move-object/from16 v4, p2

    move v5, v7

    move-object v7, v2

    invoke-static/range {v3 .. v9}, Landroidx/compose/animation/core/SuspendAnimationKt;->animateDecay$default(Landroidx/compose/animation/core/AnimationState;Landroidx/compose/animation/core/DecayAnimationSpec;ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v11, :cond_5

    return-object v11

    :cond_5
    :goto_1
    move-object v5, v13

    goto :goto_2

    :cond_6
    move-object/from16 v13, p3

    goto :goto_1

    :goto_2
    if-eqz v5, :cond_9

    .line 629
    invoke-virtual {v0}, Landroidx/compose/material3/TopAppBarState;->getHeightOffset()F

    move-result v3

    cmpg-float v3, v3, v12

    if-gez v3, :cond_9

    invoke-virtual {v0}, Landroidx/compose/material3/TopAppBarState;->getHeightOffset()F

    move-result v3

    invoke-virtual {v0}, Landroidx/compose/material3/TopAppBarState;->getHeightOffsetLimit()F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_9

    .line 630
    invoke-virtual {v0}, Landroidx/compose/material3/TopAppBarState;->getHeightOffset()F

    move-result v13

    const/16 v20, 0x1e

    const/16 v21, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    invoke-static/range {v13 .. v21}, Landroidx/compose/animation/core/AnimationStateKt;->AnimationState$default(FFJJZILjava/lang/Object;)Landroidx/compose/animation/core/AnimationState;

    move-result-object v3

    .line 631
    invoke-virtual {v0}, Landroidx/compose/material3/TopAppBarState;->getCollapsedFraction()F

    move-result v4

    const/high16 v6, 0x3f000000    # 0.5f

    cmpg-float v4, v4, v6

    if-gez v4, :cond_7

    move v4, v12

    goto :goto_3

    .line 634
    :cond_7
    invoke-virtual {v0}, Landroidx/compose/material3/TopAppBarState;->getHeightOffsetLimit()F

    move-result v4

    :goto_3
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v4

    .line 630
    new-instance v7, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$settleAppBar$3;

    invoke-direct {v7, v0}, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$settleAppBar$3;-><init>(Landroidx/compose/material3/TopAppBarState;)V

    iput-object v1, v2, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$settleAppBar$1;->L$0:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, v2, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$settleAppBar$1;->L$1:Ljava/lang/Object;

    iput-object v0, v2, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$settleAppBar$1;->L$2:Ljava/lang/Object;

    iput v10, v2, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$settleAppBar$1;->label:I

    const/4 v6, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    move-object v8, v2

    invoke-static/range {v3 .. v10}, Landroidx/compose/animation/core/SuspendAnimationKt;->animateTo$default(Landroidx/compose/animation/core/AnimationState;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v11, :cond_8

    return-object v11

    :cond_8
    move-object v0, v1

    :goto_4
    move-object v1, v0

    .line 643
    :cond_9
    iget v0, v1, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-static {v12, v0}, Landroidx/compose/ui/unit/VelocityKt;->Velocity(FF)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Velocity;->box-impl(J)Landroidx/compose/ui/unit/Velocity;

    move-result-object v0

    return-object v0

    .line 605
    :cond_a
    :goto_5
    sget-object v0, Landroidx/compose/ui/unit/Velocity;->Companion:Landroidx/compose/ui/unit/Velocity$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/Velocity$Companion;->getZero-9UxMQ8M()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Velocity;->box-impl(J)Landroidx/compose/ui/unit/Velocity;

    move-result-object v0

    return-object v0
.end method

.method private static final topAppBarColors(Landroidx/compose/runtime/Composer;I)Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;
    .locals 16

    move-object/from16 v0, p0

    const v1, -0x6260cb99

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, -0x1

    const-string v3, "com.android.settingslib.spa.widget.scaffold.topAppBarColors (CustomizedAppBar.kt:149)"

    move/from16 v4, p1

    .line 150
    invoke-static {v1, v4, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    new-instance v1, Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;

    .line 151
    sget-object v2, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v3, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v2, v0, v3}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settingslib/spa/framework/theme/MaterialColorsKt;->getSettingsBackground(Landroidx/compose/material3/ColorScheme;)J

    move-result-wide v5

    .line 152
    invoke-virtual {v2, v0, v3}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/material3/ColorScheme;->getSurfaceVariant-0d7_KjU()J

    move-result-wide v7

    .line 153
    invoke-virtual {v2, v0, v3}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/material3/ColorScheme;->getOnSurface-0d7_KjU()J

    move-result-wide v9

    .line 154
    invoke-virtual {v2, v0, v3}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/material3/ColorScheme;->getOnSurface-0d7_KjU()J

    move-result-wide v11

    .line 155
    invoke-virtual {v2, v0, v3}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/material3/ColorScheme;->getOnSurfaceVariant-0d7_KjU()J

    move-result-wide v13

    const/4 v15, 0x0

    move-object v4, v1

    .line 150
    invoke-direct/range {v4 .. v15}, Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;-><init>(JJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1
    invoke-interface/range {p0 .. p0}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    return-object v1
.end method
