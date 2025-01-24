.class public final Landroidx/compose/material3/TextFieldDefaults;
.super Ljava/lang/Object;
.source "TextFieldDefaults.kt"


# static fields
.field private static final FocusedBorderThickness:F

.field private static final FocusedIndicatorThickness:F

.field public static final INSTANCE:Landroidx/compose/material3/TextFieldDefaults;

.field private static final MinHeight:F

.field private static final MinWidth:F

.field private static final UnfocusedBorderThickness:F

.field private static final UnfocusedIndicatorThickness:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/material3/TextFieldDefaults;

    invoke-direct {v0}, Landroidx/compose/material3/TextFieldDefaults;-><init>()V

    sput-object v0, Landroidx/compose/material3/TextFieldDefaults;->INSTANCE:Landroidx/compose/material3/TextFieldDefaults;

    const/16 v0, 0x38

    int-to-float v0, v0

    .line 2143
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 77
    sput v0, Landroidx/compose/material3/TextFieldDefaults;->MinHeight:F

    const/16 v0, 0x118

    int-to-float v0, v0

    .line 2144
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 83
    sput v0, Landroidx/compose/material3/TextFieldDefaults;->MinWidth:F

    const/4 v0, 0x1

    int-to-float v0, v0

    .line 2145
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 86
    sput v0, Landroidx/compose/material3/TextFieldDefaults;->UnfocusedIndicatorThickness:F

    const/4 v1, 0x2

    int-to-float v1, v1

    .line 2146
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 89
    sput v1, Landroidx/compose/material3/TextFieldDefaults;->FocusedIndicatorThickness:F

    .line 791
    sput v0, Landroidx/compose/material3/TextFieldDefaults;->UnfocusedBorderThickness:F

    .line 800
    sput v1, Landroidx/compose/material3/TextFieldDefaults;->FocusedBorderThickness:F

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic contentPaddingWithLabel-a9UjIt4$default(Landroidx/compose/material3/TextFieldDefaults;FFFFILjava/lang/Object;)Landroidx/compose/foundation/layout/PaddingValues;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    .line 452
    invoke-static {}, Landroidx/compose/material3/internal/TextFieldImplKt;->getTextFieldPadding()F

    move-result p1

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    .line 453
    invoke-static {}, Landroidx/compose/material3/internal/TextFieldImplKt;->getTextFieldPadding()F

    move-result p2

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    .line 454
    invoke-static {}, Landroidx/compose/material3/TextFieldKt;->getTextFieldWithLabelVerticalPadding()F

    move-result p3

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    .line 455
    invoke-static {}, Landroidx/compose/material3/TextFieldKt;->getTextFieldWithLabelVerticalPadding()F

    move-result p4

    .line 451
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/material3/TextFieldDefaults;->contentPaddingWithLabel-a9UjIt4(FFFF)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic contentPaddingWithoutLabel-a9UjIt4$default(Landroidx/compose/material3/TextFieldDefaults;FFFFILjava/lang/Object;)Landroidx/compose/foundation/layout/PaddingValues;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    .line 466
    invoke-static {}, Landroidx/compose/material3/internal/TextFieldImplKt;->getTextFieldPadding()F

    move-result p1

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    .line 467
    invoke-static {}, Landroidx/compose/material3/internal/TextFieldImplKt;->getTextFieldPadding()F

    move-result p2

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    .line 468
    invoke-static {}, Landroidx/compose/material3/internal/TextFieldImplKt;->getTextFieldPadding()F

    move-result p3

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    .line 469
    invoke-static {}, Landroidx/compose/material3/internal/TextFieldImplKt;->getTextFieldPadding()F

    move-result p4

    .line 465
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/material3/TextFieldDefaults;->contentPaddingWithoutLabel-a9UjIt4(FFFF)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic supportingTextPadding-a9UjIt4$material3_release$default(Landroidx/compose/material3/TextFieldDefaults;FFFFILjava/lang/Object;)Landroidx/compose/foundation/layout/PaddingValues;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    .line 478
    invoke-static {}, Landroidx/compose/material3/internal/TextFieldImplKt;->getTextFieldPadding()F

    move-result p1

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    .line 479
    invoke-static {}, Landroidx/compose/material3/internal/TextFieldImplKt;->getSupportingTopPadding()F

    move-result p2

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    .line 480
    invoke-static {}, Landroidx/compose/material3/internal/TextFieldImplKt;->getTextFieldPadding()F

    move-result p3

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    const/4 p4, 0x0

    int-to-float p4, p4

    .line 2140
    invoke-static {p4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p4

    .line 477
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/material3/TextFieldDefaults;->supportingTextPadding-a9UjIt4$material3_release(FFFF)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final Container-4EFweAY(ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/ui/graphics/Shape;FFLandroidx/compose/runtime/Composer;II)V
    .locals 25

    move-object/from16 v8, p0

    move/from16 v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p3

    move/from16 v12, p10

    move/from16 v13, p11

    const v0, -0x30cbc77a    # -3.0236032E9f

    move-object/from16 v1, p9

    .line 244
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v7

    and-int/lit8 v1, v13, 0x1

    if-eqz v1, :cond_0

    or-int/lit8 v1, v12, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v1, v12, 0x6

    if-nez v1, :cond_2

    invoke-interface {v7, v9}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v12

    goto :goto_1

    :cond_2
    move v1, v12

    :goto_1
    and-int/lit8 v2, v13, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v2, v12, 0x30

    if-nez v2, :cond_5

    invoke-interface {v7, v10}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x20

    goto :goto_2

    :cond_4
    const/16 v2, 0x10

    :goto_2
    or-int/2addr v1, v2

    :cond_5
    :goto_3
    and-int/lit8 v2, v13, 0x4

    if-eqz v2, :cond_6

    or-int/lit16 v1, v1, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v2, v12, 0x180

    if-nez v2, :cond_8

    invoke-interface {v7, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v2, 0x100

    goto :goto_4

    :cond_7
    const/16 v2, 0x80

    :goto_4
    or-int/2addr v1, v2

    :cond_8
    :goto_5
    and-int/lit8 v2, v13, 0x8

    if-eqz v2, :cond_a

    or-int/lit16 v1, v1, 0xc00

    :cond_9
    move-object/from16 v3, p4

    goto :goto_7

    :cond_a
    and-int/lit16 v3, v12, 0xc00

    if-nez v3, :cond_9

    move-object/from16 v3, p4

    invoke-interface {v7, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    const/16 v4, 0x800

    goto :goto_6

    :cond_b
    const/16 v4, 0x400

    :goto_6
    or-int/2addr v1, v4

    :goto_7
    and-int/lit16 v4, v12, 0x6000

    if-nez v4, :cond_e

    and-int/lit8 v4, v13, 0x10

    if-nez v4, :cond_c

    move-object/from16 v4, p5

    invoke-interface {v7, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    const/16 v5, 0x4000

    goto :goto_8

    :cond_c
    move-object/from16 v4, p5

    :cond_d
    const/16 v5, 0x2000

    :goto_8
    or-int/2addr v1, v5

    goto :goto_9

    :cond_e
    move-object/from16 v4, p5

    :goto_9
    const/high16 v5, 0x30000

    and-int/2addr v5, v12

    if-nez v5, :cond_11

    and-int/lit8 v5, v13, 0x20

    if-nez v5, :cond_f

    move-object/from16 v5, p6

    invoke-interface {v7, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    const/high16 v6, 0x20000

    goto :goto_a

    :cond_f
    move-object/from16 v5, p6

    :cond_10
    const/high16 v6, 0x10000

    :goto_a
    or-int/2addr v1, v6

    goto :goto_b

    :cond_11
    move-object/from16 v5, p6

    :goto_b
    const/high16 v6, 0x180000

    and-int/2addr v6, v12

    if-nez v6, :cond_14

    and-int/lit8 v6, v13, 0x40

    if-nez v6, :cond_12

    move/from16 v6, p7

    invoke-interface {v7, v6}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v14

    if-eqz v14, :cond_13

    const/high16 v14, 0x100000

    goto :goto_c

    :cond_12
    move/from16 v6, p7

    :cond_13
    const/high16 v14, 0x80000

    :goto_c
    or-int/2addr v1, v14

    goto :goto_d

    :cond_14
    move/from16 v6, p7

    :goto_d
    const/high16 v14, 0xc00000

    and-int/2addr v14, v12

    if-nez v14, :cond_17

    and-int/lit16 v14, v13, 0x80

    if-nez v14, :cond_15

    move/from16 v14, p8

    invoke-interface {v7, v14}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v15

    if-eqz v15, :cond_16

    const/high16 v15, 0x800000

    goto :goto_e

    :cond_15
    move/from16 v14, p8

    :cond_16
    const/high16 v15, 0x400000

    :goto_e
    or-int/2addr v1, v15

    goto :goto_f

    :cond_17
    move/from16 v14, p8

    :goto_f
    and-int/lit16 v15, v13, 0x100

    const/high16 v16, 0x6000000

    if-eqz v15, :cond_18

    or-int v1, v1, v16

    goto :goto_11

    :cond_18
    and-int v15, v12, v16

    if-nez v15, :cond_1a

    invoke-interface {v7, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_19

    const/high16 v15, 0x4000000

    goto :goto_10

    :cond_19
    const/high16 v15, 0x2000000

    :goto_10
    or-int/2addr v1, v15

    :cond_1a
    :goto_11
    const v15, 0x2492493

    and-int/2addr v15, v1

    const v0, 0x2492492

    if-ne v15, v0, :cond_1c

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_12

    .line 264
    :cond_1b
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v22, v6

    move-object v8, v7

    move/from16 v23, v14

    move-object v6, v4

    move-object v7, v5

    move-object v5, v3

    goto/16 :goto_1a

    .line 244
    :cond_1c
    :goto_12
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, v12, 0x1

    const v17, -0x380001

    const v18, -0x70001

    const v19, -0xe001

    const/4 v15, 0x6

    if-eqz v0, :cond_22

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_14

    .line 243
    :cond_1d
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v13, 0x10

    if-eqz v0, :cond_1e

    and-int v1, v1, v19

    :cond_1e
    and-int/lit8 v0, v13, 0x20

    if-eqz v0, :cond_1f

    and-int v1, v1, v18

    :cond_1f
    and-int/lit8 v0, v13, 0x40

    if-eqz v0, :cond_20

    and-int v1, v1, v17

    :cond_20
    and-int/lit16 v0, v13, 0x80

    if-eqz v0, :cond_21

    const v0, -0x1c00001

    and-int/2addr v1, v0

    :cond_21
    move/from16 v22, v6

    move/from16 v23, v14

    move-object v6, v3

    :goto_13
    move-object/from16 v24, v5

    move-object v5, v4

    move-object/from16 v4, v24

    goto :goto_17

    :cond_22
    :goto_14
    if-eqz v2, :cond_23

    .line 239
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_15

    :cond_23
    move-object v0, v3

    :goto_15
    and-int/lit8 v2, v13, 0x10

    if-eqz v2, :cond_24

    shr-int/lit8 v2, v1, 0x18

    and-int/lit8 v2, v2, 0xe

    .line 240
    invoke-virtual {v8, v7, v2}, Landroidx/compose/material3/TextFieldDefaults;->colors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/TextFieldColors;

    move-result-object v2

    and-int v1, v1, v19

    move-object v4, v2

    :cond_24
    and-int/lit8 v2, v13, 0x20

    if-eqz v2, :cond_25

    .line 241
    sget-object v2, Landroidx/compose/material3/TextFieldDefaults;->INSTANCE:Landroidx/compose/material3/TextFieldDefaults;

    invoke-virtual {v2, v7, v15}, Landroidx/compose/material3/TextFieldDefaults;->getShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v2

    and-int v1, v1, v18

    move-object v5, v2

    :cond_25
    and-int/lit8 v2, v13, 0x40

    if-eqz v2, :cond_26

    .line 242
    sget v2, Landroidx/compose/material3/TextFieldDefaults;->FocusedIndicatorThickness:F

    and-int v1, v1, v17

    move v6, v2

    :cond_26
    and-int/lit16 v2, v13, 0x80

    if-eqz v2, :cond_27

    .line 243
    sget v2, Landroidx/compose/material3/TextFieldDefaults;->UnfocusedIndicatorThickness:F

    const v3, -0x1c00001

    and-int/2addr v1, v3

    move/from16 v23, v2

    move/from16 v22, v6

    :goto_16
    move-object v6, v0

    goto :goto_13

    :cond_27
    move/from16 v22, v6

    move/from16 v23, v14

    goto :goto_16

    :goto_17
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_28

    const/4 v0, -0x1

    const-string v2, "androidx.compose.material3.TextFieldDefaults.Container (TextFieldDefaults.kt:243)"

    const v3, -0x30cbc77a    # -3.0236032E9f

    .line 244
    invoke-static {v3, v1, v0, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_28
    shr-int/lit8 v0, v1, 0x6

    and-int/lit8 v0, v0, 0xe

    .line 245
    invoke-static {v11, v7, v0}, Landroidx/compose/foundation/interaction/FocusInteractionKt;->collectIsFocusedAsState(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 249
    invoke-virtual {v5, v9, v10, v0}, Landroidx/compose/material3/TextFieldColors;->containerColor-XeAY9LY$material3_release(ZZZ)J

    move-result-wide v0

    .line 250
    sget-object v2, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->FastEffects:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    .line 362
    sget-object v3, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    invoke-virtual {v3, v7, v15}, Landroidx/compose/material3/MaterialTheme;->getMotionScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/MotionScheme;

    move-result-object v3

    .line 345
    sget-object v14, Landroidx/compose/material3/MotionSchemeKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v14, v2

    const-class v14, Landroidx/compose/ui/graphics/Color;

    const/4 v15, 0x0

    packed-switch v2, :pswitch_data_0

    const v0, -0x5cefed14

    .line 351
    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    const v2, -0x5ce9351b

    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 219
    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-interface {v7, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v14

    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v2, v14

    .line 1166
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    if-nez v2, :cond_29

    .line 1167
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v14, v2, :cond_2a

    .line 220
    :cond_29
    invoke-interface {v3}, Landroidx/compose/material3/MotionScheme;->slowEffectsSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v14

    .line 1169
    invoke-interface {v7, v14}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 219
    :cond_2a
    check-cast v14, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 351
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    :goto_18
    move-object/from16 v16, v14

    goto/16 :goto_19

    :pswitch_1
    const v2, -0x5ce93dfb

    .line 350
    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 204
    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-interface {v7, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v14

    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v2, v14

    .line 1166
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    if-nez v2, :cond_2b

    .line 1167
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v14, v2, :cond_2c

    .line 205
    :cond_2b
    invoke-interface {v3}, Landroidx/compose/material3/MotionScheme;->fastEffectsSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v14

    .line 1169
    invoke-interface {v7, v14}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 204
    :cond_2c
    check-cast v14, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 350
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_18

    :pswitch_2
    const v2, -0x5ce94738

    .line 349
    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 189
    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-interface {v7, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v14

    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v2, v14

    .line 1166
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    if-nez v2, :cond_2d

    .line 1167
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v14, v2, :cond_2e

    .line 190
    :cond_2d
    invoke-interface {v3}, Landroidx/compose/material3/MotionScheme;->defaultEffectsSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v14

    .line 1169
    invoke-interface {v7, v14}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 189
    :cond_2e
    check-cast v14, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 349
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_18

    :pswitch_3
    const v2, -0x5ce9507b    # -8.168684E-18f

    .line 348
    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 174
    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-interface {v7, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v14

    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v2, v14

    .line 1166
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    if-nez v2, :cond_2f

    .line 1167
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v14, v2, :cond_30

    .line 175
    :cond_2f
    invoke-interface {v3}, Landroidx/compose/material3/MotionScheme;->slowSpatialSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v14

    .line 1169
    invoke-interface {v7, v14}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 174
    :cond_30
    check-cast v14, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 348
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto/16 :goto_18

    :pswitch_4
    const v2, -0x5ce9595b

    .line 347
    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 159
    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-interface {v7, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v14

    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v2, v14

    .line 1166
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    if-nez v2, :cond_31

    .line 1167
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v14, v2, :cond_32

    .line 160
    :cond_31
    invoke-interface {v3}, Landroidx/compose/material3/MotionScheme;->fastSpatialSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v14

    .line 1169
    invoke-interface {v7, v14}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 159
    :cond_32
    check-cast v14, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 347
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto/16 :goto_18

    :pswitch_5
    const v2, -0x5ce96298

    .line 346
    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 144
    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-interface {v7, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v14

    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v2, v14

    .line 1166
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    if-nez v2, :cond_33

    .line 1167
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v14, v2, :cond_34

    .line 145
    :cond_33
    invoke-interface {v3}, Landroidx/compose/material3/MotionScheme;->defaultSpatialSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v14

    .line 1169
    invoke-interface {v7, v14}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 144
    :cond_34
    check-cast v14, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 346
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto/16 :goto_18

    :goto_19
    const/16 v20, 0x0

    const/16 v21, 0xc

    const/16 v17, 0x0

    const/16 v18, 0x0

    move v3, v15

    move-wide v14, v0

    move-object/from16 v19, v7

    .line 248
    invoke-static/range {v14 .. v21}, Landroidx/compose/animation/SingleValueAnimationKt;->animateColorAsState-euL9pac(JLandroidx/compose/animation/core/AnimationSpec;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v0

    .line 254
    new-instance v1, Landroidx/compose/material3/TextFieldDefaults$Container$1;

    invoke-direct {v1, v0}, Landroidx/compose/material3/TextFieldDefaults$Container$1;-><init>(Ljava/lang/Object;)V

    new-instance v0, Landroidx/compose/material3/TextFieldDefaults$sam$androidx_compose_ui_graphics_ColorProducer$0;

    invoke-direct {v0, v1}, Landroidx/compose/material3/TextFieldDefaults$sam$androidx_compose_ui_graphics_ColorProducer$0;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-static {v6, v0, v4}, Landroidx/compose/material3/internal/TextFieldImplKt;->textFieldBackground(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v14, v3

    move/from16 v3, p2

    move-object v15, v4

    move-object/from16 v4, p3

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move/from16 v6, v22

    move-object v8, v7

    move/from16 v7, v23

    .line 255
    invoke-virtual/range {v0 .. v7}, Landroidx/compose/material3/TextFieldDefaults;->indicatorLine-gv0btCI(Landroidx/compose/ui/Modifier;ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/material3/TextFieldColors;FF)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 252
    invoke-static {v0, v8, v14}, Landroidx/compose/foundation/layout/BoxKt;->Box(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_35
    move-object v7, v15

    move-object/from16 v6, v16

    move-object/from16 v5, v17

    .line 264
    :goto_1a
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v14

    if-eqz v14, :cond_36

    new-instance v15, Landroidx/compose/material3/TextFieldDefaults$Container$2;

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v8, v22

    move/from16 v9, v23

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Landroidx/compose/material3/TextFieldDefaults$Container$2;-><init>(Landroidx/compose/material3/TextFieldDefaults;ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/ui/graphics/Shape;FFII)V

    invoke-interface {v14, v15}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_36
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
.end method

.method public final DecorationBox(Ljava/lang/String;Lkotlin/jvm/functions/Function2;ZZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/interaction/InteractionSource;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;III)V
    .locals 40

    move-object/from16 v1, p0

    move-object/from16 v6, p5

    move/from16 v15, p20

    move/from16 v14, p21

    move/from16 v13, p22

    const v0, 0x11438ffc

    move-object/from16 v2, p19

    .line 413
    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v0

    and-int/lit8 v2, v13, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v2, v15, 0x6

    move v5, v2

    move-object/from16 v2, p1

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v15, 0x6

    if-nez v2, :cond_2

    move-object/from16 v2, p1

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x4

    goto :goto_0

    :cond_1
    const/4 v5, 0x2

    :goto_0
    or-int/2addr v5, v15

    goto :goto_1

    :cond_2
    move-object/from16 v2, p1

    move v5, v15

    :goto_1
    and-int/lit8 v7, v13, 0x2

    if-eqz v7, :cond_4

    or-int/lit8 v5, v5, 0x30

    :cond_3
    move-object/from16 v7, p2

    goto :goto_3

    :cond_4
    and-int/lit8 v7, v15, 0x30

    if-nez v7, :cond_3

    move-object/from16 v7, p2

    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/16 v10, 0x20

    goto :goto_2

    :cond_5
    const/16 v10, 0x10

    :goto_2
    or-int/2addr v5, v10

    :goto_3
    and-int/lit8 v10, v13, 0x4

    if-eqz v10, :cond_7

    or-int/lit16 v5, v5, 0x180

    :cond_6
    move/from16 v10, p3

    goto :goto_5

    :cond_7
    and-int/lit16 v10, v15, 0x180

    if-nez v10, :cond_6

    move/from16 v10, p3

    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v16

    if-eqz v16, :cond_8

    const/16 v16, 0x100

    goto :goto_4

    :cond_8
    const/16 v16, 0x80

    :goto_4
    or-int v5, v5, v16

    :goto_5
    and-int/lit8 v16, v13, 0x8

    const/16 v17, 0x400

    const/16 v18, 0x800

    if-eqz v16, :cond_a

    or-int/lit16 v5, v5, 0xc00

    :cond_9
    move/from16 v3, p4

    goto :goto_7

    :cond_a
    and-int/lit16 v3, v15, 0xc00

    if-nez v3, :cond_9

    move/from16 v3, p4

    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v16

    if-eqz v16, :cond_b

    move/from16 v16, v18

    goto :goto_6

    :cond_b
    move/from16 v16, v17

    :goto_6
    or-int v5, v5, v16

    :goto_7
    and-int/lit8 v16, v13, 0x10

    const/16 v19, 0x2000

    if-eqz v16, :cond_c

    or-int/lit16 v5, v5, 0x6000

    goto :goto_9

    :cond_c
    and-int/lit16 v9, v15, 0x6000

    if-nez v9, :cond_e

    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    const/16 v9, 0x4000

    goto :goto_8

    :cond_d
    move/from16 v9, v19

    :goto_8
    or-int/2addr v5, v9

    :cond_e
    :goto_9
    and-int/lit8 v9, v13, 0x20

    const/high16 v21, 0x30000

    const/high16 v22, 0x10000

    if-eqz v9, :cond_10

    or-int v5, v5, v21

    :cond_f
    move-object/from16 v9, p6

    goto :goto_b

    :cond_10
    and-int v9, v15, v21

    if-nez v9, :cond_f

    move-object/from16 v9, p6

    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_11

    const/high16 v23, 0x20000

    goto :goto_a

    :cond_11
    move/from16 v23, v22

    :goto_a
    or-int v5, v5, v23

    :goto_b
    and-int/lit8 v23, v13, 0x40

    const/high16 v24, 0x180000

    if-eqz v23, :cond_12

    or-int v5, v5, v24

    move/from16 v11, p7

    goto :goto_d

    :cond_12
    and-int v24, v15, v24

    move/from16 v11, p7

    if-nez v24, :cond_14

    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v25

    if-eqz v25, :cond_13

    const/high16 v25, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v25, 0x80000

    :goto_c
    or-int v5, v5, v25

    :cond_14
    :goto_d
    and-int/lit16 v12, v13, 0x80

    const/high16 v26, 0xc00000

    if-eqz v12, :cond_15

    or-int v5, v5, v26

    move-object/from16 v8, p8

    goto :goto_f

    :cond_15
    and-int v27, v15, v26

    move-object/from16 v8, p8

    if-nez v27, :cond_17

    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_16

    const/high16 v28, 0x800000

    goto :goto_e

    :cond_16
    const/high16 v28, 0x400000

    :goto_e
    or-int v5, v5, v28

    :cond_17
    :goto_f
    and-int/lit16 v4, v13, 0x100

    const/high16 v29, 0x6000000

    if-eqz v4, :cond_18

    or-int v5, v5, v29

    move-object/from16 v2, p9

    goto :goto_11

    :cond_18
    and-int v30, v15, v29

    move-object/from16 v2, p9

    if-nez v30, :cond_1a

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_19

    const/high16 v30, 0x4000000

    goto :goto_10

    :cond_19
    const/high16 v30, 0x2000000

    :goto_10
    or-int v5, v5, v30

    :cond_1a
    :goto_11
    and-int/lit16 v2, v13, 0x200

    const/high16 v30, 0x30000000

    if-eqz v2, :cond_1b

    or-int v5, v5, v30

    move-object/from16 v3, p10

    goto :goto_13

    :cond_1b
    and-int v30, v15, v30

    move-object/from16 v3, p10

    if-nez v30, :cond_1d

    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_1c

    const/high16 v30, 0x20000000

    goto :goto_12

    :cond_1c
    const/high16 v30, 0x10000000

    :goto_12
    or-int v5, v5, v30

    :cond_1d
    :goto_13
    and-int/lit16 v3, v13, 0x400

    if-eqz v3, :cond_1e

    or-int/lit8 v30, v14, 0x6

    move-object/from16 v7, p11

    goto :goto_15

    :cond_1e
    and-int/lit8 v30, v14, 0x6

    move-object/from16 v7, p11

    if-nez v30, :cond_20

    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_1f

    const/16 v30, 0x4

    goto :goto_14

    :cond_1f
    const/16 v30, 0x2

    :goto_14
    or-int v30, v14, v30

    goto :goto_15

    :cond_20
    move/from16 v30, v14

    :goto_15
    and-int/lit16 v7, v13, 0x800

    if-eqz v7, :cond_22

    or-int/lit8 v30, v30, 0x30

    :cond_21
    :goto_16
    move/from16 v8, v30

    goto :goto_18

    :cond_22
    and-int/lit8 v31, v14, 0x30

    move-object/from16 v8, p12

    if-nez v31, :cond_21

    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_23

    const/16 v16, 0x20

    goto :goto_17

    :cond_23
    const/16 v16, 0x10

    :goto_17
    or-int v30, v30, v16

    goto :goto_16

    :goto_18
    and-int/lit16 v9, v13, 0x1000

    if-eqz v9, :cond_25

    or-int/lit16 v8, v8, 0x180

    :cond_24
    move-object/from16 v10, p13

    goto :goto_1a

    :cond_25
    and-int/lit16 v10, v14, 0x180

    if-nez v10, :cond_24

    move-object/from16 v10, p13

    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_26

    const/16 v25, 0x100

    goto :goto_19

    :cond_26
    const/16 v25, 0x80

    :goto_19
    or-int v8, v8, v25

    :goto_1a
    and-int/lit16 v10, v13, 0x2000

    if-eqz v10, :cond_28

    or-int/lit16 v8, v8, 0xc00

    :cond_27
    move-object/from16 v11, p14

    goto :goto_1b

    :cond_28
    and-int/lit16 v11, v14, 0xc00

    if-nez v11, :cond_27

    move-object/from16 v11, p14

    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_29

    move/from16 v17, v18

    :cond_29
    or-int v8, v8, v17

    :goto_1b
    and-int/lit16 v11, v14, 0x6000

    if-nez v11, :cond_2c

    and-int/lit16 v11, v13, 0x4000

    if-nez v11, :cond_2a

    move-object/from16 v11, p15

    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2b

    const/16 v19, 0x4000

    goto :goto_1c

    :cond_2a
    move-object/from16 v11, p15

    :cond_2b
    :goto_1c
    or-int v8, v8, v19

    goto :goto_1d

    :cond_2c
    move-object/from16 v11, p15

    :goto_1d
    and-int v16, v14, v21

    if-nez v16, :cond_2e

    const v16, 0x8000

    and-int v16, v13, v16

    move-object/from16 v11, p16

    if-nez v16, :cond_2d

    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2d

    const/high16 v16, 0x20000

    goto :goto_1e

    :cond_2d
    move/from16 v16, v22

    :goto_1e
    or-int v8, v8, v16

    goto :goto_1f

    :cond_2e
    move-object/from16 v11, p16

    :goto_1f
    const/high16 v16, 0x180000

    and-int v16, v14, v16

    if-nez v16, :cond_30

    and-int v16, v13, v22

    move-object/from16 v11, p17

    if-nez v16, :cond_2f

    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2f

    const/high16 v16, 0x100000

    goto :goto_20

    :cond_2f
    const/high16 v16, 0x80000

    :goto_20
    or-int v8, v8, v16

    goto :goto_21

    :cond_30
    move-object/from16 v11, p17

    :goto_21
    const/high16 v16, 0x20000

    and-int v16, v13, v16

    if-eqz v16, :cond_31

    or-int v8, v8, v26

    move-object/from16 v11, p18

    goto :goto_23

    :cond_31
    and-int v17, v14, v26

    move-object/from16 v11, p18

    if-nez v17, :cond_33

    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_32

    const/high16 v17, 0x800000

    goto :goto_22

    :cond_32
    const/high16 v17, 0x400000

    :goto_22
    or-int v8, v8, v17

    :cond_33
    :goto_23
    const/high16 v17, 0x40000

    and-int v17, v13, v17

    if-eqz v17, :cond_34

    or-int v8, v8, v29

    goto :goto_25

    :cond_34
    and-int v17, v14, v29

    if-nez v17, :cond_36

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_35

    const/high16 v17, 0x4000000

    goto :goto_24

    :cond_35
    const/high16 v17, 0x2000000

    :goto_24
    or-int v8, v8, v17

    :cond_36
    :goto_25
    const v17, 0x12492493

    and-int v11, v5, v17

    const v14, 0x12492492

    if-ne v11, v14, :cond_38

    const v11, 0x2492493

    and-int/2addr v11, v8

    const v14, 0x2492492

    if-ne v11, v14, :cond_38

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v11

    if-nez v11, :cond_37

    goto :goto_26

    .line 441
    :cond_37
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    goto/16 :goto_38

    .line 413
    :cond_38
    :goto_26
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v11, v15, 0x1

    const/16 v17, 0x0

    if-eqz v11, :cond_3d

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v11

    if-eqz v11, :cond_39

    goto :goto_27

    .line 401
    :cond_39
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit16 v2, v13, 0x4000

    if-eqz v2, :cond_3a

    const v2, -0xe001

    and-int/2addr v8, v2

    :cond_3a
    const v2, 0x8000

    and-int/2addr v2, v13

    if-eqz v2, :cond_3b

    const v2, -0x70001

    and-int/2addr v8, v2

    :cond_3b
    and-int v2, v13, v22

    if-eqz v2, :cond_3c

    const v2, -0x380001

    and-int/2addr v8, v2

    :cond_3c
    move/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v1, p9

    move-object/from16 v2, p10

    move-object/from16 v3, p11

    move-object/from16 v7, p12

    move-object/from16 v9, p13

    move-object/from16 v10, p14

    move-object/from16 v14, p15

    move-object/from16 v4, p16

    move-object/from16 v37, p18

    move v13, v8

    move-object/from16 v8, p17

    goto/16 :goto_34

    :cond_3d
    :goto_27
    if-eqz v23, :cond_3e

    const/4 v11, 0x0

    goto :goto_28

    :cond_3e
    move/from16 v11, p7

    :goto_28
    if-eqz v12, :cond_3f

    move-object/from16 v12, v17

    goto :goto_29

    :cond_3f
    move-object/from16 v12, p8

    :goto_29
    if-eqz v4, :cond_40

    move-object/from16 v4, v17

    goto :goto_2a

    :cond_40
    move-object/from16 v4, p9

    :goto_2a
    if-eqz v2, :cond_41

    move-object/from16 v2, v17

    goto :goto_2b

    :cond_41
    move-object/from16 v2, p10

    :goto_2b
    if-eqz v3, :cond_42

    move-object/from16 v3, v17

    goto :goto_2c

    :cond_42
    move-object/from16 v3, p11

    :goto_2c
    if-eqz v7, :cond_43

    move-object/from16 v7, v17

    goto :goto_2d

    :cond_43
    move-object/from16 v7, p12

    :goto_2d
    if-eqz v9, :cond_44

    move-object/from16 v9, v17

    goto :goto_2e

    :cond_44
    move-object/from16 v9, p13

    :goto_2e
    if-eqz v10, :cond_45

    move-object/from16 v10, v17

    goto :goto_2f

    :cond_45
    move-object/from16 v10, p14

    :goto_2f
    and-int/lit16 v14, v13, 0x4000

    if-eqz v14, :cond_46

    .line 393
    sget-object v14, Landroidx/compose/material3/TextFieldDefaults;->INSTANCE:Landroidx/compose/material3/TextFieldDefaults;

    move-object/from16 v19, v2

    const/4 v2, 0x6

    invoke-virtual {v14, v0, v2}, Landroidx/compose/material3/TextFieldDefaults;->getShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v14

    const v2, -0xe001

    and-int/2addr v8, v2

    goto :goto_30

    :cond_46
    move-object/from16 v19, v2

    move-object/from16 v14, p15

    :goto_30
    const v2, 0x8000

    and-int/2addr v2, v13

    if-eqz v2, :cond_47

    shr-int/lit8 v2, v8, 0x18

    and-int/lit8 v2, v2, 0xe

    .line 394
    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/TextFieldDefaults;->colors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/TextFieldColors;

    move-result-object v2

    const v20, -0x70001

    and-int v8, v8, v20

    goto :goto_31

    :cond_47
    move-object/from16 v2, p16

    :goto_31
    and-int v20, v13, v22

    if-eqz v20, :cond_49

    if-nez v12, :cond_48

    const/16 v20, 0xf

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 p7, p0

    move/from16 p8, v22

    move/from16 p9, v23

    move/from16 p10, v24

    move/from16 p11, v25

    move/from16 p12, v20

    move-object/from16 p13, v21

    .line 397
    invoke-static/range {p7 .. p13}, Landroidx/compose/material3/TextFieldDefaults;->contentPaddingWithoutLabel-a9UjIt4$default(Landroidx/compose/material3/TextFieldDefaults;FFFFILjava/lang/Object;)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v20

    goto :goto_32

    :cond_48
    const/16 v20, 0xf

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 p7, p0

    move/from16 p8, v22

    move/from16 p9, v23

    move/from16 p10, v24

    move/from16 p11, v25

    move/from16 p12, v20

    move-object/from16 p13, v21

    .line 399
    invoke-static/range {p7 .. p13}, Landroidx/compose/material3/TextFieldDefaults;->contentPaddingWithLabel-a9UjIt4$default(Landroidx/compose/material3/TextFieldDefaults;FFFFILjava/lang/Object;)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v20

    :goto_32
    const v21, -0x380001

    and-int v8, v8, v21

    goto :goto_33

    :cond_49
    move-object/from16 v20, p17

    :goto_33
    if-eqz v16, :cond_4a

    .line 401
    new-instance v1, Landroidx/compose/material3/TextFieldDefaults$DecorationBox$1;

    move-object/from16 p7, v1

    move/from16 p8, p3

    move/from16 p9, v11

    move-object/from16 p10, p6

    move-object/from16 p11, v2

    move-object/from16 p12, v14

    invoke-direct/range {p7 .. p12}, Landroidx/compose/material3/TextFieldDefaults$DecorationBox$1;-><init>(ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/ui/graphics/Shape;)V

    move-object/from16 p7, v2

    const/16 v2, 0x36

    move-object/from16 p8, v3

    const v3, -0x19f590cf

    move-object/from16 p9, v4

    const/4 v4, 0x1

    invoke-static {v3, v4, v1, v0, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    move-object/from16 v4, p7

    move-object/from16 v3, p8

    move-object/from16 v37, v1

    move v13, v8

    move-object/from16 v2, v19

    move-object/from16 v8, v20

    move-object/from16 v1, p9

    goto :goto_34

    :cond_4a
    move-object/from16 p7, v2

    move-object/from16 p8, v3

    move-object/from16 p9, v4

    move-object/from16 v4, p7

    move-object/from16 v1, p9

    move-object/from16 v37, p18

    move v13, v8

    move-object/from16 v2, v19

    move-object/from16 v8, v20

    :goto_34
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v16

    move-object/from16 p13, v14

    if-eqz v16, :cond_4b

    const v14, 0x11438ffc

    const-string v15, "androidx.compose.material3.TextFieldDefaults.DecorationBox (TextFieldDefaults.kt:412)"

    .line 413
    invoke-static {v14, v5, v13, v15}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_4b
    and-int/lit8 v14, v5, 0xe

    const/4 v15, 0x4

    if-ne v14, v15, :cond_4c

    const/4 v14, 0x1

    goto :goto_35

    :cond_4c
    const/4 v14, 0x0

    :goto_35
    const v15, 0xe000

    and-int/2addr v15, v5

    move-object/from16 p14, v4

    const/16 v4, 0x4000

    if-ne v15, v4, :cond_4d

    const/4 v4, 0x1

    goto :goto_36

    :cond_4d
    const/4 v4, 0x0

    :goto_36
    or-int/2addr v4, v14

    .line 1166
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    if-nez v4, :cond_4e

    .line 1167
    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v14, v4, :cond_4f

    .line 416
    :cond_4e
    new-instance v4, Landroidx/compose/ui/text/AnnotatedString;

    const/4 v14, 0x6

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v19, 0x0

    move-object/from16 p7, v4

    move-object/from16 p8, p1

    move-object/from16 p9, v16

    move-object/from16 p10, v19

    move/from16 p11, v14

    move-object/from16 p12, v15

    invoke-direct/range {p7 .. p12}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v6, v4}, Landroidx/compose/ui/text/input/VisualTransformation;->filter(Landroidx/compose/ui/text/AnnotatedString;)Landroidx/compose/ui/text/input/TransformedText;

    move-result-object v14

    .line 1169
    invoke-interface {v0, v14}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 415
    :cond_4f
    check-cast v14, Landroidx/compose/ui/text/input/TransformedText;

    .line 418
    invoke-virtual {v14}, Landroidx/compose/ui/text/input/TransformedText;->getText()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v4

    .line 419
    invoke-virtual {v4}, Landroidx/compose/ui/text/AnnotatedString;->getText()Ljava/lang/String;

    move-result-object v4

    .line 422
    sget-object v16, Landroidx/compose/material3/internal/TextFieldType;->Filled:Landroidx/compose/material3/internal/TextFieldType;

    .line 426
    new-instance v19, Landroidx/compose/material3/TextFieldLabelPosition$Default;

    const/4 v14, 0x7

    const/4 v15, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 p7, v19

    move/from16 p8, v20

    move-object/from16 p9, v21

    move-object/from16 p10, v22

    move/from16 p11, v14

    move-object/from16 p12, v15

    invoke-direct/range {p7 .. p12}, Landroidx/compose/material3/TextFieldLabelPosition$Default;-><init>(ZLandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Horizontal;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const v14, -0x4d72ad20

    .line 427
    invoke-interface {v0, v14}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    if-nez v12, :cond_50

    move-object/from16 p7, v12

    move-object/from16 v20, v17

    goto :goto_37

    :cond_50
    new-instance v14, Landroidx/compose/material3/TextFieldDefaults$DecorationBox$2$1;

    invoke-direct {v14, v12}, Landroidx/compose/material3/TextFieldDefaults$DecorationBox$2$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    const/16 v15, 0x36

    const v6, -0x19056cea

    move-object/from16 p7, v12

    const/4 v12, 0x1

    invoke-static {v6, v12, v14, v0, v15}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v6

    move-object/from16 v20, v6

    :goto_37
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    shl-int/lit8 v6, v5, 0x3

    and-int/lit16 v6, v6, 0x380

    const/4 v12, 0x6

    or-int/2addr v6, v12

    shr-int/lit8 v12, v5, 0x9

    const/high16 v14, 0x70000

    and-int/2addr v14, v12

    or-int/2addr v6, v14

    const/high16 v14, 0x380000

    and-int/2addr v14, v12

    or-int/2addr v6, v14

    shl-int/lit8 v14, v13, 0x15

    const/high16 v15, 0x1c00000

    and-int/2addr v15, v14

    or-int/2addr v6, v15

    const/high16 v15, 0xe000000

    and-int/2addr v15, v14

    or-int/2addr v6, v15

    const/high16 v15, 0x70000000

    and-int/2addr v14, v15

    or-int v35, v6, v14

    shr-int/lit8 v6, v13, 0x9

    and-int/lit8 v6, v6, 0xe

    shr-int/lit8 v14, v5, 0x6

    and-int/lit8 v14, v14, 0x70

    or-int/2addr v6, v14

    and-int/lit16 v14, v5, 0x380

    or-int/2addr v6, v14

    and-int/lit16 v12, v12, 0x1c00

    or-int/2addr v6, v12

    const v12, 0xe000

    shr-int/lit8 v5, v5, 0x3

    and-int/2addr v5, v12

    or-int/2addr v5, v6

    shr-int/lit8 v6, v13, 0x3

    const/high16 v12, 0x70000

    and-int/2addr v6, v12

    or-int/2addr v5, v6

    shl-int/lit8 v6, v13, 0x3

    const/high16 v12, 0x380000

    and-int/2addr v6, v12

    or-int/2addr v5, v6

    const/high16 v6, 0x1c00000

    and-int/2addr v6, v13

    or-int v36, v5, v6

    move-object/from16 v17, v4

    move-object/from16 v18, p2

    move-object/from16 v21, v1

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v24, v7

    move-object/from16 v25, v9

    move-object/from16 v26, v10

    move/from16 v27, p4

    move/from16 v28, p3

    move/from16 v29, v11

    move-object/from16 v30, p6

    move-object/from16 v31, v8

    move-object/from16 v32, p14

    move-object/from16 v33, v37

    move-object/from16 v34, v0

    .line 421
    invoke-static/range {v16 .. v36}, Landroidx/compose/material3/internal/TextFieldImplKt;->CommonDecorationBox(Landroidx/compose/material3/internal/TextFieldType;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/TextFieldLabelPosition;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/material3/TextFieldColors;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_51

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_51
    move-object/from16 v16, p13

    move-object/from16 v17, p14

    move-object v12, v3

    move-object v13, v7

    move-object/from16 v18, v8

    move-object v14, v9

    move-object v15, v10

    move v8, v11

    move-object/from16 v19, v37

    move-object/from16 v9, p7

    move-object v10, v1

    move-object v11, v2

    .line 441
    :goto_38
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v7

    if-eqz v7, :cond_52

    new-instance v6, Landroidx/compose/material3/TextFieldDefaults$DecorationBox$3;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v38, v6

    move-object/from16 v6, p5

    move-object/from16 v39, v7

    move-object/from16 v7, p6

    move/from16 v20, p20

    move/from16 v21, p21

    move/from16 v22, p22

    invoke-direct/range {v0 .. v22}, Landroidx/compose/material3/TextFieldDefaults$DecorationBox$3;-><init>(Landroidx/compose/material3/TextFieldDefaults;Ljava/lang/String;Lkotlin/jvm/functions/Function2;ZZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/interaction/InteractionSource;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function2;III)V

    move-object/from16 v1, v38

    move-object/from16 v0, v39

    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_52
    return-void
.end method

.method public final colors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/TextFieldColors;
    .locals 3

    .line 488
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "androidx.compose.material3.TextFieldDefaults.colors (TextFieldDefaults.kt:487)"

    const v2, 0x3193361c

    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    sget-object v0, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    const/4 v1, 0x6

    invoke-virtual {v0, p1, v1}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v0

    shl-int/lit8 p2, p2, 0x3

    and-int/lit8 p2, p2, 0x70

    invoke-virtual {p0, v0, p1, p2}, Landroidx/compose/material3/TextFieldDefaults;->getDefaultTextFieldColors(Landroidx/compose/material3/ColorScheme;Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/TextFieldColors;

    move-result-object p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1
    return-object p0
.end method

.method public final colors-0hiis_0(JJJJJJJJJJLandroidx/compose/foundation/text/selection/TextSelectionColors;JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJLandroidx/compose/runtime/Composer;IIIIIII)Landroidx/compose/material3/TextFieldColors;
    .locals 72

    move-object/from16 v0, p86

    move/from16 v1, p92

    move/from16 v2, p93

    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_0

    .line 546
    sget-object v3, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide/from16 v3, p1

    :goto_0
    and-int/lit8 v5, v1, 0x2

    if-eqz v5, :cond_1

    .line 547
    sget-object v5, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v5

    goto :goto_1

    :cond_1
    move-wide/from16 v5, p3

    :goto_1
    and-int/lit8 v7, v1, 0x4

    if-eqz v7, :cond_2

    .line 548
    sget-object v7, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v7

    goto :goto_2

    :cond_2
    move-wide/from16 v7, p5

    :goto_2
    and-int/lit8 v9, v1, 0x8

    if-eqz v9, :cond_3

    .line 549
    sget-object v9, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v9

    goto :goto_3

    :cond_3
    move-wide/from16 v9, p7

    :goto_3
    and-int/lit8 v11, v1, 0x10

    if-eqz v11, :cond_4

    .line 550
    sget-object v11, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v11}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v11

    goto :goto_4

    :cond_4
    move-wide/from16 v11, p9

    :goto_4
    and-int/lit8 v13, v1, 0x20

    if-eqz v13, :cond_5

    .line 551
    sget-object v13, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v13}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v13

    goto :goto_5

    :cond_5
    move-wide/from16 v13, p11

    :goto_5
    and-int/lit8 v15, v1, 0x40

    if-eqz v15, :cond_6

    .line 552
    sget-object v15, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v15}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v15

    goto :goto_6

    :cond_6
    move-wide/from16 v15, p13

    :goto_6
    move-wide/from16 p13, v15

    and-int/lit16 v15, v1, 0x80

    if-eqz v15, :cond_7

    .line 553
    sget-object v15, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v15}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v15

    goto :goto_7

    :cond_7
    move-wide/from16 v15, p15

    :goto_7
    move-wide/from16 p15, v15

    and-int/lit16 v15, v1, 0x100

    if-eqz v15, :cond_8

    .line 554
    sget-object v15, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v15}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v15

    goto :goto_8

    :cond_8
    move-wide/from16 v15, p17

    :goto_8
    move-wide/from16 p17, v15

    and-int/lit16 v15, v1, 0x200

    if-eqz v15, :cond_9

    .line 555
    sget-object v15, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v15}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v15

    goto :goto_9

    :cond_9
    move-wide/from16 v15, p19

    :goto_9
    move-wide/from16 p19, v15

    and-int/lit16 v15, v1, 0x400

    if-eqz v15, :cond_a

    const/4 v15, 0x0

    goto :goto_a

    :cond_a
    move-object/from16 v15, p21

    :goto_a
    move-object/from16 p21, v15

    and-int/lit16 v15, v1, 0x800

    if-eqz v15, :cond_b

    .line 557
    sget-object v15, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v15}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v15

    goto :goto_b

    :cond_b
    move-wide/from16 v15, p22

    :goto_b
    move-wide/from16 p22, v15

    and-int/lit16 v15, v1, 0x1000

    if-eqz v15, :cond_c

    .line 558
    sget-object v15, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v15}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v15

    goto :goto_c

    :cond_c
    move-wide/from16 v15, p24

    :goto_c
    move-wide/from16 p24, v15

    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    .line 559
    sget-object v15, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v15}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v15

    goto :goto_d

    :cond_d
    move-wide/from16 v15, p26

    :goto_d
    move-wide/from16 p26, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    .line 560
    sget-object v15, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v15}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v15

    goto :goto_e

    :cond_e
    move-wide/from16 v15, p28

    :goto_e
    const v17, 0x8000

    and-int v17, v1, v17

    if-eqz v17, :cond_f

    .line 561
    sget-object v17, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v17

    goto :goto_f

    :cond_f
    move-wide/from16 v17, p30

    :goto_f
    const/high16 v19, 0x10000

    and-int v19, v1, v19

    if-eqz v19, :cond_10

    .line 562
    sget-object v19, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v19

    goto :goto_10

    :cond_10
    move-wide/from16 v19, p32

    :goto_10
    const/high16 v21, 0x20000

    and-int v21, v1, v21

    if-eqz v21, :cond_11

    .line 563
    sget-object v21, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v21

    goto :goto_11

    :cond_11
    move-wide/from16 v21, p34

    :goto_11
    const/high16 v23, 0x40000

    and-int v23, v1, v23

    if-eqz v23, :cond_12

    .line 564
    sget-object v23, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v23

    goto :goto_12

    :cond_12
    move-wide/from16 v23, p36

    :goto_12
    const/high16 v25, 0x80000

    and-int v25, v1, v25

    if-eqz v25, :cond_13

    .line 565
    sget-object v25, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual/range {v25 .. v25}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v25

    goto :goto_13

    :cond_13
    move-wide/from16 v25, p38

    :goto_13
    const/high16 v27, 0x100000

    and-int v27, v1, v27

    if-eqz v27, :cond_14

    .line 566
    sget-object v27, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual/range {v27 .. v27}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v27

    goto :goto_14

    :cond_14
    move-wide/from16 v27, p40

    :goto_14
    const/high16 v29, 0x200000

    and-int v29, v1, v29

    if-eqz v29, :cond_15

    .line 567
    sget-object v29, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual/range {v29 .. v29}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v29

    goto :goto_15

    :cond_15
    move-wide/from16 v29, p42

    :goto_15
    const/high16 v31, 0x400000

    and-int v31, v1, v31

    if-eqz v31, :cond_16

    .line 568
    sget-object v31, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual/range {v31 .. v31}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v31

    goto :goto_16

    :cond_16
    move-wide/from16 v31, p44

    :goto_16
    const/high16 v33, 0x800000

    and-int v33, v1, v33

    if-eqz v33, :cond_17

    .line 569
    sget-object v33, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual/range {v33 .. v33}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v33

    goto :goto_17

    :cond_17
    move-wide/from16 v33, p46

    :goto_17
    const/high16 v35, 0x1000000

    and-int v35, v1, v35

    if-eqz v35, :cond_18

    .line 570
    sget-object v35, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual/range {v35 .. v35}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v35

    goto :goto_18

    :cond_18
    move-wide/from16 v35, p48

    :goto_18
    const/high16 v37, 0x2000000

    and-int v37, v1, v37

    if-eqz v37, :cond_19

    .line 571
    sget-object v37, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual/range {v37 .. v37}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v37

    goto :goto_19

    :cond_19
    move-wide/from16 v37, p50

    :goto_19
    const/high16 v39, 0x4000000

    and-int v39, v1, v39

    if-eqz v39, :cond_1a

    .line 572
    sget-object v39, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual/range {v39 .. v39}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v39

    goto :goto_1a

    :cond_1a
    move-wide/from16 v39, p52

    :goto_1a
    const/high16 v41, 0x8000000

    and-int v41, v1, v41

    if-eqz v41, :cond_1b

    .line 573
    sget-object v41, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual/range {v41 .. v41}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v41

    goto :goto_1b

    :cond_1b
    move-wide/from16 v41, p54

    :goto_1b
    const/high16 v43, 0x10000000

    and-int v43, v1, v43

    if-eqz v43, :cond_1c

    .line 574
    sget-object v43, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual/range {v43 .. v43}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v43

    goto :goto_1c

    :cond_1c
    move-wide/from16 v43, p56

    :goto_1c
    const/high16 v45, 0x20000000

    and-int v45, v1, v45

    if-eqz v45, :cond_1d

    .line 575
    sget-object v45, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual/range {v45 .. v45}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v45

    goto :goto_1d

    :cond_1d
    move-wide/from16 v45, p58

    :goto_1d
    const/high16 v47, 0x40000000    # 2.0f

    and-int v1, v1, v47

    if-eqz v1, :cond_1e

    .line 576
    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v47

    goto :goto_1e

    :cond_1e
    move-wide/from16 v47, p60

    :goto_1e
    and-int/lit8 v1, v2, 0x1

    if-eqz v1, :cond_1f

    .line 577
    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v49

    goto :goto_1f

    :cond_1f
    move-wide/from16 v49, p62

    :goto_1f
    and-int/lit8 v1, v2, 0x2

    if-eqz v1, :cond_20

    .line 578
    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v51

    goto :goto_20

    :cond_20
    move-wide/from16 v51, p64

    :goto_20
    and-int/lit8 v1, v2, 0x4

    if-eqz v1, :cond_21

    .line 579
    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v53

    goto :goto_21

    :cond_21
    move-wide/from16 v53, p66

    :goto_21
    and-int/lit8 v1, v2, 0x8

    if-eqz v1, :cond_22

    .line 580
    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v55

    goto :goto_22

    :cond_22
    move-wide/from16 v55, p68

    :goto_22
    and-int/lit8 v1, v2, 0x10

    if-eqz v1, :cond_23

    .line 581
    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v57

    goto :goto_23

    :cond_23
    move-wide/from16 v57, p70

    :goto_23
    and-int/lit8 v1, v2, 0x20

    if-eqz v1, :cond_24

    .line 582
    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v59

    goto :goto_24

    :cond_24
    move-wide/from16 v59, p72

    :goto_24
    and-int/lit8 v1, v2, 0x40

    if-eqz v1, :cond_25

    .line 583
    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v61

    goto :goto_25

    :cond_25
    move-wide/from16 v61, p74

    :goto_25
    and-int/lit16 v1, v2, 0x80

    if-eqz v1, :cond_26

    .line 584
    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v63

    goto :goto_26

    :cond_26
    move-wide/from16 v63, p76

    :goto_26
    and-int/lit16 v1, v2, 0x100

    if-eqz v1, :cond_27

    .line 585
    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v65

    goto :goto_27

    :cond_27
    move-wide/from16 v65, p78

    :goto_27
    and-int/lit16 v1, v2, 0x200

    if-eqz v1, :cond_28

    .line 586
    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v67

    goto :goto_28

    :cond_28
    move-wide/from16 v67, p80

    :goto_28
    and-int/lit16 v1, v2, 0x400

    if-eqz v1, :cond_29

    .line 587
    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v69

    goto :goto_29

    :cond_29
    move-wide/from16 v69, p82

    :goto_29
    and-int/lit16 v1, v2, 0x800

    if-eqz v1, :cond_2a

    .line 588
    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v1

    goto :goto_2a

    :cond_2a
    move-wide/from16 v1, p84

    :goto_2a
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v71

    move-wide/from16 p84, v1

    if-eqz v71, :cond_2b

    const v1, 0x5a33cfbb

    const-string v2, "androidx.compose.material3.TextFieldDefaults.colors (TextFieldDefaults.kt:589)"

    move-wide/from16 p11, v13

    move-wide/from16 p28, v15

    move/from16 v15, p87

    move/from16 v13, p88

    .line 590
    invoke-static {v1, v15, v13, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_2b

    :cond_2b
    move-wide/from16 p11, v13

    move-wide/from16 p28, v15

    :goto_2b
    sget-object v1, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    const/4 v2, 0x6

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v1

    shr-int/lit8 v2, p91, 0x6

    and-int/lit8 v2, v2, 0x70

    move-object/from16 v13, p0

    invoke-virtual {v13, v1, v0, v2}, Landroidx/compose/material3/TextFieldDefaults;->getDefaultTextFieldColors(Landroidx/compose/material3/ColorScheme;Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/TextFieldColors;

    move-result-object v0

    move-object/from16 p0, v0

    move-wide/from16 p1, v3

    move-wide/from16 p3, v5

    move-wide/from16 p5, v7

    move-wide/from16 p7, v9

    move-wide/from16 p9, v11

    move-wide/from16 p30, v17

    move-wide/from16 p32, v19

    move-wide/from16 p34, v21

    move-wide/from16 p36, v23

    move-wide/from16 p38, v25

    move-wide/from16 p40, v27

    move-wide/from16 p42, v29

    move-wide/from16 p44, v31

    move-wide/from16 p46, v33

    move-wide/from16 p48, v35

    move-wide/from16 p50, v37

    move-wide/from16 p52, v39

    move-wide/from16 p54, v41

    move-wide/from16 p56, v43

    move-wide/from16 p58, v45

    move-wide/from16 p60, v47

    move-wide/from16 p62, v49

    move-wide/from16 p64, v51

    move-wide/from16 p66, v53

    move-wide/from16 p68, v55

    move-wide/from16 p70, v57

    move-wide/from16 p72, v59

    move-wide/from16 p74, v61

    move-wide/from16 p76, v63

    move-wide/from16 p78, v65

    move-wide/from16 p80, v67

    move-wide/from16 p82, v69

    invoke-virtual/range {p0 .. p85}, Landroidx/compose/material3/TextFieldColors;->copy-ejIjP34(JJJJJJJJJJLandroidx/compose/foundation/text/selection/TextSelectionColors;JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ)Landroidx/compose/material3/TextFieldColors;

    move-result-object v0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_2c
    return-object v0
.end method

.method public final contentPaddingWithLabel-a9UjIt4(FFFF)Landroidx/compose/foundation/layout/PaddingValues;
    .locals 0

    .line 456
    invoke-static {p1, p3, p2, p4}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-a9UjIt4(FFFF)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object p0

    return-object p0
.end method

.method public final contentPaddingWithoutLabel-a9UjIt4(FFFF)Landroidx/compose/foundation/layout/PaddingValues;
    .locals 0

    .line 470
    invoke-static {p1, p2, p3, p4}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-a9UjIt4(FFFF)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object p0

    return-object p0
.end method

.method public final getDefaultTextFieldColors(Landroidx/compose/material3/ColorScheme;Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/TextFieldColors;
    .locals 94

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 638
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, -0x1

    const-string v3, "androidx.compose.material3.TextFieldDefaults.<get-defaultTextFieldColors> (TextFieldDefaults.kt:637)"

    const v4, 0x4ffcd785    # 8.4839654E9f

    move/from16 v5, p3

    invoke-static {v4, v5, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 639
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/material3/ColorScheme;->getDefaultTextFieldColorsCached$material3_release()Landroidx/compose/material3/TextFieldColors;

    move-result-object v5

    const v2, 0x1a12e61

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    if-nez v5, :cond_1

    const/4 v2, 0x0

    goto/16 :goto_1

    .line 640
    :cond_1
    invoke-static {}, Landroidx/compose/foundation/text/selection/TextSelectionColorsKt;->getLocalTextSelectionColors()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v2

    .line 75
    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    .line 640
    check-cast v2, Landroidx/compose/foundation/text/selection/TextSelectionColors;

    .line 641
    invoke-virtual {v5}, Landroidx/compose/material3/TextFieldColors;->getTextSelectionColors()Landroidx/compose/foundation/text/selection/TextSelectionColors;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/16 v92, 0x7ff

    const/16 v93, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v27, 0x0

    const-wide/16 v29, 0x0

    const-wide/16 v31, 0x0

    const-wide/16 v33, 0x0

    const-wide/16 v35, 0x0

    const-wide/16 v37, 0x0

    const-wide/16 v39, 0x0

    const-wide/16 v41, 0x0

    const-wide/16 v43, 0x0

    const-wide/16 v45, 0x0

    const-wide/16 v47, 0x0

    const-wide/16 v49, 0x0

    const-wide/16 v51, 0x0

    const-wide/16 v53, 0x0

    const-wide/16 v55, 0x0

    const-wide/16 v57, 0x0

    const-wide/16 v59, 0x0

    const-wide/16 v61, 0x0

    const-wide/16 v63, 0x0

    const-wide/16 v65, 0x0

    const-wide/16 v67, 0x0

    const-wide/16 v69, 0x0

    const-wide/16 v71, 0x0

    const-wide/16 v73, 0x0

    const-wide/16 v75, 0x0

    const-wide/16 v77, 0x0

    const-wide/16 v79, 0x0

    const-wide/16 v81, 0x0

    const-wide/16 v83, 0x0

    const-wide/16 v85, 0x0

    const-wide/16 v87, 0x0

    const-wide/16 v89, 0x0

    const/16 v91, -0x401

    move-object/from16 v26, v2

    .line 644
    invoke-static/range {v5 .. v93}, Landroidx/compose/material3/TextFieldColors;->copy-ejIjP34$default(Landroidx/compose/material3/TextFieldColors;JJJJJJJJJJLandroidx/compose/foundation/text/selection/TextSelectionColors;JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJIILjava/lang/Object;)Landroidx/compose/material3/TextFieldColors;

    move-result-object v5

    .line 645
    invoke-virtual {v0, v5}, Landroidx/compose/material3/ColorScheme;->setDefaultTextFieldColorsCached$material3_release(Landroidx/compose/material3/TextFieldColors;)V

    :goto_0
    move-object v2, v5

    .line 639
    :goto_1
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const v3, 0x1a141ef

    invoke-interface {v1, v3}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    if-nez v2, :cond_3

    .line 649
    new-instance v2, Landroidx/compose/material3/TextFieldColors;

    move-object v4, v2

    .line 650
    sget-object v3, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->INSTANCE:Landroidx/compose/material3/tokens/FilledTextFieldTokens;

    invoke-virtual {v3}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getFocusInputColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v5

    invoke-static {v0, v5}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v5

    .line 651
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getInputColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v7

    invoke-static {v0, v7}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v7

    .line 653
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getDisabledInputColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v9

    invoke-static {v0, v9}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v10

    .line 654
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getDisabledInputOpacity()F

    move-result v12

    const/16 v16, 0xe

    const/16 v17, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v10 .. v17}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v9

    .line 655
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getErrorInputColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v11

    invoke-static {v0, v11}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v11

    .line 656
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getContainerColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v13

    invoke-static {v0, v13}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v13

    .line 657
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getContainerColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v15

    invoke-static {v0, v15}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v15

    move-object/from16 p0, v2

    .line 658
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getContainerColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v17

    .line 659
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getContainerColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v19

    .line 660
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getCaretColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v21

    .line 661
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getErrorFocusCaretColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v23

    .line 662
    invoke-static {}, Landroidx/compose/foundation/text/selection/TextSelectionColorsKt;->getLocalTextSelectionColors()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v2

    .line 75
    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v25, v2

    check-cast v25, Landroidx/compose/foundation/text/selection/TextSelectionColors;

    .line 664
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getFocusActiveIndicatorColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v26

    .line 666
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getActiveIndicatorColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v28

    .line 668
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getDisabledActiveIndicatorColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v30

    .line 669
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getDisabledActiveIndicatorOpacity()F

    move-result v32

    const/16 v36, 0xe

    const/16 v37, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    invoke-static/range {v30 .. v37}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v30

    .line 671
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getErrorActiveIndicatorColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v32

    .line 673
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getFocusLeadingIconColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v34

    .line 675
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getLeadingIconColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v36

    .line 677
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getDisabledLeadingIconColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v38

    .line 678
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getDisabledLeadingIconOpacity()F

    move-result v40

    const/16 v44, 0xe

    const/16 v45, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    invoke-static/range {v38 .. v45}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v38

    .line 680
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getErrorLeadingIconColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v40

    .line 682
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getFocusTrailingIconColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v42

    .line 684
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getTrailingIconColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v44

    .line 686
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getDisabledTrailingIconColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v46

    .line 687
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getDisabledTrailingIconOpacity()F

    move-result v48

    const/16 v52, 0xe

    const/16 v53, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    invoke-static/range {v46 .. v53}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v46

    .line 689
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getErrorTrailingIconColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v48

    .line 690
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getFocusLabelColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v50

    .line 691
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getLabelColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v52

    .line 693
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getDisabledLabelColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v54

    .line 694
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getDisabledLabelOpacity()F

    move-result v56

    const/16 v60, 0xe

    const/16 v61, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    invoke-static/range {v54 .. v61}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v54

    .line 695
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getErrorLabelColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v56

    .line 697
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getInputPlaceholderColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v58

    .line 699
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getInputPlaceholderColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v60

    .line 701
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getDisabledInputColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v62

    .line 702
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getDisabledInputOpacity()F

    move-result v64

    const/16 v68, 0xe

    const/16 v69, 0x0

    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    invoke-static/range {v62 .. v69}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v62

    .line 704
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getInputPlaceholderColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v64

    .line 706
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getFocusSupportingColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v66

    .line 708
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getSupportingColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v68

    .line 710
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getDisabledSupportingColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v70

    .line 711
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getDisabledSupportingOpacity()F

    move-result v72

    const/16 v76, 0xe

    const/16 v77, 0x0

    const/16 v73, 0x0

    const/16 v74, 0x0

    const/16 v75, 0x0

    invoke-static/range {v70 .. v77}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v70

    .line 713
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getErrorSupportingColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v72

    .line 714
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getInputPrefixColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v74

    .line 715
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getInputPrefixColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v76

    .line 717
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getInputPrefixColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v78

    .line 718
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getDisabledInputOpacity()F

    move-result v80

    const/16 v84, 0xe

    const/16 v85, 0x0

    const/16 v81, 0x0

    const/16 v82, 0x0

    const/16 v83, 0x0

    invoke-static/range {v78 .. v85}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v78

    .line 719
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getInputPrefixColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v80

    .line 720
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getInputSuffixColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v82

    .line 721
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getInputSuffixColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v84

    .line 723
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getInputSuffixColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v86

    .line 724
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getDisabledInputOpacity()F

    move-result v88

    const/16 v92, 0xe

    const/16 v93, 0x0

    const/16 v89, 0x0

    const/16 v90, 0x0

    const/16 v91, 0x0

    invoke-static/range {v86 .. v93}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v86

    .line 725
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getInputSuffixColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v88

    const/16 v90, 0x0

    .line 649
    invoke-direct/range {v4 .. v90}, Landroidx/compose/material3/TextFieldColors;-><init>(JJJJJJJJJJLandroidx/compose/foundation/text/selection/TextSelectionColors;JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v2, p0

    .line 727
    invoke-virtual {v0, v2}, Landroidx/compose/material3/ColorScheme;->setDefaultTextFieldColorsCached$material3_release(Landroidx/compose/material3/TextFieldColors;)V

    .line 639
    :cond_3
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_4
    return-object v2
.end method

.method public final getFocusedIndicatorThickness-D9Ej5fM()F
    .locals 0

    .line 89
    sget p0, Landroidx/compose/material3/TextFieldDefaults;->FocusedIndicatorThickness:F

    return p0
.end method

.method public final getMinHeight-D9Ej5fM()F
    .locals 0

    .line 77
    sget p0, Landroidx/compose/material3/TextFieldDefaults;->MinHeight:F

    return p0
.end method

.method public final getMinWidth-D9Ej5fM()F
    .locals 0

    .line 83
    sget p0, Landroidx/compose/material3/TextFieldDefaults;->MinWidth:F

    return p0
.end method

.method public final getShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;
    .locals 2

    .line 71
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, -0x1

    const-string v0, "androidx.compose.material3.TextFieldDefaults.<get-shape> (TextFieldDefaults.kt:70)"

    const v1, -0x73b64e63

    invoke-static {v1, p2, p0, v0}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    sget-object p0, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->INSTANCE:Landroidx/compose/material3/tokens/FilledTextFieldTokens;

    invoke-virtual {p0}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getContainerShape()Landroidx/compose/material3/tokens/ShapeKeyTokens;

    move-result-object p0

    const/4 p2, 0x6

    invoke-static {p0, p1, p2}, Landroidx/compose/material3/ShapesKt;->getValue(Landroidx/compose/material3/tokens/ShapeKeyTokens;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1
    return-object p0
.end method

.method public final getUnfocusedIndicatorThickness-D9Ej5fM()F
    .locals 0

    .line 86
    sget p0, Landroidx/compose/material3/TextFieldDefaults;->UnfocusedIndicatorThickness:F

    return p0
.end method

.method public final indicatorLine-gv0btCI(Landroidx/compose/ui/Modifier;ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/material3/TextFieldColors;FF)Landroidx/compose/ui/Modifier;
    .locals 8

    .line 2132
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Landroidx/compose/material3/TextFieldDefaults$indicatorLine-gv0btCI$$inlined$debugInspectorInfo$1;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Landroidx/compose/material3/TextFieldDefaults$indicatorLine-gv0btCI$$inlined$debugInspectorInfo$1;-><init>(ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/material3/TextFieldColors;FF)V

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    .line 293
    :goto_0
    new-instance v7, Landroidx/compose/material3/TextFieldDefaults$indicatorLine$2;

    move-object v0, v7

    move-object v1, p4

    move v2, p2

    move v3, p3

    move-object v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Landroidx/compose/material3/TextFieldDefaults$indicatorLine$2;-><init>(Landroidx/compose/foundation/interaction/InteractionSource;ZZLandroidx/compose/material3/TextFieldColors;FF)V

    invoke-static {p1, p0, v7}, Landroidx/compose/ui/ComposedModifierKt;->composed(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public final supportingTextPadding-a9UjIt4$material3_release(FFFF)Landroidx/compose/foundation/layout/PaddingValues;
    .locals 0

    .line 482
    invoke-static {p1, p2, p3, p4}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-a9UjIt4(FFFF)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object p0

    return-object p0
.end method
