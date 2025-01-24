.class public final Landroidx/compose/material3/OutlinedTextFieldDefaults;
.super Ljava/lang/Object;
.source "TextFieldDefaults.kt"


# static fields
.field private static final FocusedBorderThickness:F

.field public static final INSTANCE:Landroidx/compose/material3/OutlinedTextFieldDefaults;

.field private static final MinHeight:F

.field private static final MinWidth:F

.field private static final UnfocusedBorderThickness:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/material3/OutlinedTextFieldDefaults;

    invoke-direct {v0}, Landroidx/compose/material3/OutlinedTextFieldDefaults;-><init>()V

    sput-object v0, Landroidx/compose/material3/OutlinedTextFieldDefaults;->INSTANCE:Landroidx/compose/material3/OutlinedTextFieldDefaults;

    const/16 v0, 0x38

    int-to-float v0, v0

    .line 2141
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 896
    sput v0, Landroidx/compose/material3/OutlinedTextFieldDefaults;->MinHeight:F

    const/16 v0, 0x118

    int-to-float v0, v0

    .line 2142
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 902
    sput v0, Landroidx/compose/material3/OutlinedTextFieldDefaults;->MinWidth:F

    const/4 v0, 0x1

    int-to-float v0, v0

    .line 2143
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 905
    sput v0, Landroidx/compose/material3/OutlinedTextFieldDefaults;->UnfocusedBorderThickness:F

    const/4 v0, 0x2

    int-to-float v0, v0

    .line 2144
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 908
    sput v0, Landroidx/compose/material3/OutlinedTextFieldDefaults;->FocusedBorderThickness:F

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 886
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic contentPadding-a9UjIt4$default(Landroidx/compose/material3/OutlinedTextFieldDefaults;FFFFILjava/lang/Object;)Landroidx/compose/foundation/layout/PaddingValues;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    .line 1207
    invoke-static {}, Landroidx/compose/material3/internal/TextFieldImplKt;->getTextFieldPadding()F

    move-result p1

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    .line 1208
    invoke-static {}, Landroidx/compose/material3/internal/TextFieldImplKt;->getTextFieldPadding()F

    move-result p2

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    .line 1209
    invoke-static {}, Landroidx/compose/material3/internal/TextFieldImplKt;->getTextFieldPadding()F

    move-result p3

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    .line 1210
    invoke-static {}, Landroidx/compose/material3/internal/TextFieldImplKt;->getTextFieldPadding()F

    move-result p4

    .line 1206
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/material3/OutlinedTextFieldDefaults;->contentPadding-a9UjIt4(FFFF)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final Container-4EFweAY(ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/ui/graphics/Shape;FFLandroidx/compose/runtime/Composer;II)V
    .locals 20

    move-object/from16 v1, p0

    move/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v12, p3

    move/from16 v13, p10

    move/from16 v14, p11

    const v0, 0x3db82288

    move-object/from16 v2, p9

    .line 1057
    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v15

    and-int/lit8 v2, v14, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v2, v13, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v13, 0x6

    if-nez v2, :cond_2

    invoke-interface {v15, v10}, Landroidx/compose/runtime/Composer;->changed(Z)Z

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

    if-eqz v3, :cond_3

    or-int/lit8 v2, v2, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v3, v13, 0x30

    if-nez v3, :cond_5

    invoke-interface {v15, v11}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x20

    goto :goto_2

    :cond_4
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v2, v3

    :cond_5
    :goto_3
    and-int/lit8 v3, v14, 0x4

    if-eqz v3, :cond_6

    or-int/lit16 v2, v2, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v3, v13, 0x180

    if-nez v3, :cond_8

    invoke-interface {v15, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/16 v3, 0x100

    goto :goto_4

    :cond_7
    const/16 v3, 0x80

    :goto_4
    or-int/2addr v2, v3

    :cond_8
    :goto_5
    and-int/lit8 v3, v14, 0x8

    if-eqz v3, :cond_a

    or-int/lit16 v2, v2, 0xc00

    :cond_9
    move-object/from16 v4, p4

    goto :goto_7

    :cond_a
    and-int/lit16 v4, v13, 0xc00

    if-nez v4, :cond_9

    move-object/from16 v4, p4

    invoke-interface {v15, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    const/16 v5, 0x800

    goto :goto_6

    :cond_b
    const/16 v5, 0x400

    :goto_6
    or-int/2addr v2, v5

    :goto_7
    and-int/lit16 v5, v13, 0x6000

    if-nez v5, :cond_e

    and-int/lit8 v5, v14, 0x10

    if-nez v5, :cond_c

    move-object/from16 v5, p5

    invoke-interface {v15, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/16 v6, 0x4000

    goto :goto_8

    :cond_c
    move-object/from16 v5, p5

    :cond_d
    const/16 v6, 0x2000

    :goto_8
    or-int/2addr v2, v6

    goto :goto_9

    :cond_e
    move-object/from16 v5, p5

    :goto_9
    const/high16 v6, 0x30000

    and-int/2addr v6, v13

    if-nez v6, :cond_11

    and-int/lit8 v6, v14, 0x20

    if-nez v6, :cond_f

    move-object/from16 v6, p6

    invoke-interface {v15, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    const/high16 v7, 0x20000

    goto :goto_a

    :cond_f
    move-object/from16 v6, p6

    :cond_10
    const/high16 v7, 0x10000

    :goto_a
    or-int/2addr v2, v7

    goto :goto_b

    :cond_11
    move-object/from16 v6, p6

    :goto_b
    const/high16 v7, 0x180000

    and-int/2addr v7, v13

    if-nez v7, :cond_14

    and-int/lit8 v7, v14, 0x40

    if-nez v7, :cond_12

    move/from16 v7, p7

    invoke-interface {v15, v7}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v8

    if-eqz v8, :cond_13

    const/high16 v8, 0x100000

    goto :goto_c

    :cond_12
    move/from16 v7, p7

    :cond_13
    const/high16 v8, 0x80000

    :goto_c
    or-int/2addr v2, v8

    goto :goto_d

    :cond_14
    move/from16 v7, p7

    :goto_d
    const/high16 v8, 0xc00000

    and-int/2addr v8, v13

    if-nez v8, :cond_17

    and-int/lit16 v8, v14, 0x80

    if-nez v8, :cond_15

    move/from16 v8, p8

    invoke-interface {v15, v8}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v9

    if-eqz v9, :cond_16

    const/high16 v9, 0x800000

    goto :goto_e

    :cond_15
    move/from16 v8, p8

    :cond_16
    const/high16 v9, 0x400000

    :goto_e
    or-int/2addr v2, v9

    goto :goto_f

    :cond_17
    move/from16 v8, p8

    :goto_f
    and-int/lit16 v9, v14, 0x100

    const/high16 v16, 0x6000000

    if-eqz v9, :cond_18

    or-int v2, v2, v16

    goto :goto_11

    :cond_18
    and-int v9, v13, v16

    if-nez v9, :cond_1a

    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_19

    const/high16 v9, 0x4000000

    goto :goto_10

    :cond_19
    const/high16 v9, 0x2000000

    :goto_10
    or-int/2addr v2, v9

    :cond_1a
    :goto_11
    const v9, 0x2492493

    and-int/2addr v9, v2

    const v0, 0x2492492

    if-ne v9, v0, :cond_1c

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_12

    .line 1079
    :cond_1b
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move v9, v8

    move v8, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    goto/16 :goto_18

    .line 1057
    :cond_1c
    :goto_12
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, v13, 0x1

    const v17, -0x380001

    const v18, -0x70001

    const v19, -0xe001

    const/4 v9, 0x6

    if-eqz v0, :cond_22

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_14

    .line 1056
    :cond_1d
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v14, 0x10

    if-eqz v0, :cond_1e

    and-int v2, v2, v19

    :cond_1e
    and-int/lit8 v0, v14, 0x20

    if-eqz v0, :cond_1f

    and-int v2, v2, v18

    :cond_1f
    and-int/lit8 v0, v14, 0x40

    if-eqz v0, :cond_20

    and-int v2, v2, v17

    :cond_20
    and-int/lit16 v0, v14, 0x80

    if-eqz v0, :cond_21

    const v0, -0x1c00001

    and-int/2addr v2, v0

    :cond_21
    move-object v0, v4

    move/from16 v17, v7

    move/from16 v18, v8

    move-object v8, v5

    :goto_13
    move-object v7, v6

    goto :goto_15

    :cond_22
    :goto_14
    if-eqz v3, :cond_23

    .line 1052
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v4, v0

    :cond_23
    and-int/lit8 v0, v14, 0x10

    if-eqz v0, :cond_24

    shr-int/lit8 v0, v2, 0x18

    and-int/lit8 v0, v0, 0xe

    .line 1053
    invoke-virtual {v1, v15, v0}, Landroidx/compose/material3/OutlinedTextFieldDefaults;->colors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/TextFieldColors;

    move-result-object v0

    and-int v2, v2, v19

    move-object v5, v0

    :cond_24
    and-int/lit8 v0, v14, 0x20

    if-eqz v0, :cond_25

    .line 1054
    sget-object v0, Landroidx/compose/material3/OutlinedTextFieldDefaults;->INSTANCE:Landroidx/compose/material3/OutlinedTextFieldDefaults;

    invoke-virtual {v0, v15, v9}, Landroidx/compose/material3/OutlinedTextFieldDefaults;->getShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v0

    and-int v2, v2, v18

    move-object v6, v0

    :cond_25
    and-int/lit8 v0, v14, 0x40

    if-eqz v0, :cond_26

    .line 1055
    sget v0, Landroidx/compose/material3/OutlinedTextFieldDefaults;->FocusedBorderThickness:F

    and-int v2, v2, v17

    move v7, v0

    :cond_26
    and-int/lit16 v0, v14, 0x80

    if-eqz v0, :cond_21

    .line 1056
    sget v0, Landroidx/compose/material3/OutlinedTextFieldDefaults;->UnfocusedBorderThickness:F

    const v3, -0x1c00001

    and-int/2addr v2, v3

    move/from16 v18, v0

    move-object v0, v4

    move-object v8, v5

    move/from16 v17, v7

    goto :goto_13

    :goto_15
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_27

    const/4 v3, -0x1

    const-string v4, "androidx.compose.material3.OutlinedTextFieldDefaults.Container (TextFieldDefaults.kt:1056)"

    const v5, 0x3db82288

    .line 1057
    invoke-static {v5, v2, v3, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_27
    shr-int/lit8 v3, v2, 0x6

    and-int/lit8 v4, v3, 0xe

    .line 1058
    invoke-static {v12, v15, v4}, Landroidx/compose/foundation/interaction/FocusInteractionKt;->collectIsFocusedAsState(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v4

    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    and-int/lit8 v4, v2, 0x7e

    shr-int/lit8 v2, v2, 0x3

    and-int/lit16 v2, v2, 0x1c00

    or-int/2addr v2, v4

    const v4, 0xe000

    and-int/2addr v4, v3

    or-int/2addr v2, v4

    const/high16 v4, 0x70000

    and-int/2addr v3, v4

    or-int v16, v2, v3

    move/from16 v2, p1

    move/from16 v3, p2

    move v4, v6

    move-object v5, v8

    move v1, v6

    move/from16 v6, v17

    move-object v12, v7

    move/from16 v7, v18

    move-object v13, v8

    move-object v8, v15

    move v14, v9

    move/from16 v9, v16

    .line 1060
    invoke-static/range {v2 .. v9}, Landroidx/compose/material3/internal/TextFieldImplKt;->animateBorderStrokeAsState-NuRrP5Q(ZZZLandroidx/compose/material3/TextFieldColors;FFLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v16

    .line 1071
    invoke-virtual {v13, v10, v11, v1}, Landroidx/compose/material3/TextFieldColors;->containerColor-XeAY9LY$material3_release(ZZZ)J

    move-result-wide v2

    .line 1072
    sget-object v1, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->FastEffects:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    .line 362
    sget-object v4, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    invoke-virtual {v4, v15, v14}, Landroidx/compose/material3/MaterialTheme;->getMotionScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/MotionScheme;

    move-result-object v4

    .line 345
    sget-object v5, Landroidx/compose/material3/MotionSchemeKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v5, v1

    const-class v5, Landroidx/compose/ui/graphics/Color;

    const/4 v14, 0x0

    packed-switch v1, :pswitch_data_0

    const v0, -0x5cefed14

    .line 351
    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    const v1, -0x5ce9351b

    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 219
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {v15, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v1, v5

    .line 1166
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v1, :cond_28

    .line 1167
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v5, v1, :cond_29

    .line 220
    :cond_28
    invoke-interface {v4}, Landroidx/compose/material3/MotionScheme;->slowEffectsSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v5

    .line 1169
    invoke-interface {v15, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 219
    :cond_29
    check-cast v5, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 351
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    :goto_16
    move-object v4, v5

    goto/16 :goto_17

    :pswitch_1
    const v1, -0x5ce93dfb

    .line 350
    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 204
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {v15, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v1, v5

    .line 1166
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v1, :cond_2a

    .line 1167
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v5, v1, :cond_2b

    .line 205
    :cond_2a
    invoke-interface {v4}, Landroidx/compose/material3/MotionScheme;->fastEffectsSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v5

    .line 1169
    invoke-interface {v15, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 204
    :cond_2b
    check-cast v5, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 350
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_16

    :pswitch_2
    const v1, -0x5ce94738

    .line 349
    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 189
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {v15, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v1, v5

    .line 1166
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v1, :cond_2c

    .line 1167
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v5, v1, :cond_2d

    .line 190
    :cond_2c
    invoke-interface {v4}, Landroidx/compose/material3/MotionScheme;->defaultEffectsSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v5

    .line 1169
    invoke-interface {v15, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 189
    :cond_2d
    check-cast v5, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 349
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_16

    :pswitch_3
    const v1, -0x5ce9507b    # -8.168684E-18f

    .line 348
    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 174
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {v15, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v1, v5

    .line 1166
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v1, :cond_2e

    .line 1167
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v5, v1, :cond_2f

    .line 175
    :cond_2e
    invoke-interface {v4}, Landroidx/compose/material3/MotionScheme;->slowSpatialSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v5

    .line 1169
    invoke-interface {v15, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 174
    :cond_2f
    check-cast v5, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 348
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto/16 :goto_16

    :pswitch_4
    const v1, -0x5ce9595b

    .line 347
    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 159
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {v15, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v1, v5

    .line 1166
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v1, :cond_30

    .line 1167
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v5, v1, :cond_31

    .line 160
    :cond_30
    invoke-interface {v4}, Landroidx/compose/material3/MotionScheme;->fastSpatialSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v5

    .line 1169
    invoke-interface {v15, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 159
    :cond_31
    check-cast v5, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 347
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto/16 :goto_16

    :pswitch_5
    const v1, -0x5ce96298

    .line 346
    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 144
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {v15, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v1, v5

    .line 1166
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v1, :cond_32

    .line 1167
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v5, v1, :cond_33

    .line 145
    :cond_32
    invoke-interface {v4}, Landroidx/compose/material3/MotionScheme;->defaultSpatialSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v5

    .line 1169
    invoke-interface {v15, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 144
    :cond_33
    check-cast v5, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 346
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto/16 :goto_16

    :goto_17
    const/4 v8, 0x0

    const/16 v9, 0xc

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, v15

    .line 1070
    invoke-static/range {v2 .. v9}, Landroidx/compose/animation/SingleValueAnimationKt;->animateColorAsState-euL9pac(JLandroidx/compose/animation/core/AnimationSpec;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v1

    .line 1076
    invoke-interface/range {v16 .. v16}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/BorderStroke;

    invoke-static {v0, v2, v12}, Landroidx/compose/foundation/BorderKt;->border(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 1077
    new-instance v3, Landroidx/compose/material3/OutlinedTextFieldDefaults$Container$1;

    invoke-direct {v3, v1}, Landroidx/compose/material3/OutlinedTextFieldDefaults$Container$1;-><init>(Ljava/lang/Object;)V

    new-instance v1, Landroidx/compose/material3/TextFieldDefaults$sam$androidx_compose_ui_graphics_ColorProducer$0;

    invoke-direct {v1, v3}, Landroidx/compose/material3/TextFieldDefaults$sam$androidx_compose_ui_graphics_ColorProducer$0;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-static {v2, v1, v12}, Landroidx/compose/material3/internal/TextFieldImplKt;->textFieldBackground(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 1074
    invoke-static {v1, v15, v14}, Landroidx/compose/foundation/layout/BoxKt;->Box(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_34
    move-object v5, v0

    move-object v7, v12

    move-object v6, v13

    move/from16 v8, v17

    move/from16 v9, v18

    .line 1079
    :goto_18
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v12

    if-eqz v12, :cond_35

    new-instance v13, Landroidx/compose/material3/OutlinedTextFieldDefaults$Container$2;

    move-object v0, v13

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Landroidx/compose/material3/OutlinedTextFieldDefaults$Container$2;-><init>(Landroidx/compose/material3/OutlinedTextFieldDefaults;ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/ui/graphics/Shape;FFII)V

    invoke-interface {v12, v13}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_35
    return-void

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

.method public final DecorationBox(Ljava/lang/String;Lkotlin/jvm/functions/Function2;ZZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/interaction/InteractionSource;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;III)V
    .locals 36

    move-object/from16 v1, p0

    move/from16 v0, p3

    move-object/from16 v15, p5

    move-object/from16 v14, p6

    move/from16 v13, p19

    move/from16 v12, p20

    move/from16 v11, p21

    const v2, -0x14e35297

    move-object/from16 v3, p18

    .line 1170
    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v10

    and-int/lit8 v2, v11, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v2, v13, 0x6

    move-object/from16 v9, p1

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v13, 0x6

    move-object/from16 v9, p1

    if-nez v2, :cond_2

    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    and-int/lit8 v5, v11, 0x2

    if-eqz v5, :cond_3

    or-int/lit8 v2, v2, 0x30

    move-object/from16 v8, p2

    goto :goto_3

    :cond_3
    and-int/lit8 v5, v13, 0x30

    move-object/from16 v8, p2

    if-nez v5, :cond_5

    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x20

    goto :goto_2

    :cond_4
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v2, v5

    :cond_5
    :goto_3
    and-int/lit8 v5, v11, 0x4

    const/16 v16, 0x80

    const/16 v17, 0x100

    if-eqz v5, :cond_6

    or-int/lit16 v2, v2, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v5, v13, 0x180

    if-nez v5, :cond_8

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v5

    if-eqz v5, :cond_7

    move/from16 v5, v17

    goto :goto_4

    :cond_7
    move/from16 v5, v16

    :goto_4
    or-int/2addr v2, v5

    :cond_8
    :goto_5
    and-int/lit8 v5, v11, 0x8

    const/16 v18, 0x400

    const/16 v19, 0x800

    if-eqz v5, :cond_a

    or-int/lit16 v2, v2, 0xc00

    :cond_9
    move/from16 v5, p4

    goto :goto_7

    :cond_a
    and-int/lit16 v5, v13, 0xc00

    if-nez v5, :cond_9

    move/from16 v5, p4

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v20

    if-eqz v20, :cond_b

    move/from16 v20, v19

    goto :goto_6

    :cond_b
    move/from16 v20, v18

    :goto_6
    or-int v2, v2, v20

    :goto_7
    and-int/lit8 v20, v11, 0x10

    const/16 v21, 0x2000

    if-eqz v20, :cond_c

    or-int/lit16 v2, v2, 0x6000

    goto :goto_9

    :cond_c
    and-int/lit16 v6, v13, 0x6000

    if-nez v6, :cond_e

    invoke-interface {v10, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/16 v6, 0x4000

    goto :goto_8

    :cond_d
    move/from16 v6, v21

    :goto_8
    or-int/2addr v2, v6

    :cond_e
    :goto_9
    and-int/lit8 v6, v11, 0x20

    const/high16 v22, 0x10000

    const/high16 v23, 0x20000

    const/high16 v24, 0x30000

    if-eqz v6, :cond_f

    or-int v2, v2, v24

    goto :goto_b

    :cond_f
    and-int v6, v13, v24

    if-nez v6, :cond_11

    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    move/from16 v6, v23

    goto :goto_a

    :cond_10
    move/from16 v6, v22

    :goto_a
    or-int/2addr v2, v6

    :cond_11
    :goto_b
    and-int/lit8 v6, v11, 0x40

    const/high16 v25, 0x180000

    if-eqz v6, :cond_12

    or-int v2, v2, v25

    move/from16 v7, p7

    goto :goto_d

    :cond_12
    and-int v26, v13, v25

    move/from16 v7, p7

    if-nez v26, :cond_14

    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v27

    if-eqz v27, :cond_13

    const/high16 v27, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v27, 0x80000

    :goto_c
    or-int v2, v2, v27

    :cond_14
    :goto_d
    and-int/lit16 v3, v11, 0x80

    const/high16 v28, 0xc00000

    if-eqz v3, :cond_15

    or-int v2, v2, v28

    move-object/from16 v4, p8

    goto :goto_f

    :cond_15
    and-int v29, v13, v28

    move-object/from16 v4, p8

    if-nez v29, :cond_17

    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_16

    const/high16 v30, 0x800000

    goto :goto_e

    :cond_16
    const/high16 v30, 0x400000

    :goto_e
    or-int v2, v2, v30

    :cond_17
    :goto_f
    and-int/lit16 v4, v11, 0x100

    const/high16 v30, 0x6000000

    if-eqz v4, :cond_18

    or-int v2, v2, v30

    move-object/from16 v5, p9

    goto :goto_11

    :cond_18
    and-int v30, v13, v30

    move-object/from16 v5, p9

    if-nez v30, :cond_1a

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_19

    const/high16 v30, 0x4000000

    goto :goto_10

    :cond_19
    const/high16 v30, 0x2000000

    :goto_10
    or-int v2, v2, v30

    :cond_1a
    :goto_11
    and-int/lit16 v5, v11, 0x200

    const/high16 v30, 0x30000000

    if-eqz v5, :cond_1b

    or-int v2, v2, v30

    move-object/from16 v7, p10

    goto :goto_13

    :cond_1b
    and-int v30, v13, v30

    move-object/from16 v7, p10

    if-nez v30, :cond_1d

    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_1c

    const/high16 v30, 0x20000000

    goto :goto_12

    :cond_1c
    const/high16 v30, 0x10000000

    :goto_12
    or-int v2, v2, v30

    :cond_1d
    :goto_13
    and-int/lit16 v7, v11, 0x400

    if-eqz v7, :cond_1e

    or-int/lit8 v30, v12, 0x6

    move-object/from16 v8, p11

    goto :goto_15

    :cond_1e
    and-int/lit8 v30, v12, 0x6

    move-object/from16 v8, p11

    if-nez v30, :cond_20

    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_1f

    const/16 v30, 0x4

    goto :goto_14

    :cond_1f
    const/16 v30, 0x2

    :goto_14
    or-int v30, v12, v30

    goto :goto_15

    :cond_20
    move/from16 v30, v12

    :goto_15
    and-int/lit16 v8, v11, 0x800

    if-eqz v8, :cond_22

    or-int/lit8 v30, v30, 0x30

    :cond_21
    :goto_16
    move/from16 v9, v30

    goto :goto_18

    :cond_22
    and-int/lit8 v31, v12, 0x30

    move-object/from16 v9, p12

    if-nez v31, :cond_21

    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_23

    const/16 v26, 0x20

    goto :goto_17

    :cond_23
    const/16 v26, 0x10

    :goto_17
    or-int v30, v30, v26

    goto :goto_16

    :goto_18
    and-int/lit16 v15, v11, 0x1000

    if-eqz v15, :cond_25

    or-int/lit16 v9, v9, 0x180

    :cond_24
    move-object/from16 v0, p13

    goto :goto_19

    :cond_25
    and-int/lit16 v0, v12, 0x180

    if-nez v0, :cond_24

    move-object/from16 v0, p13

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_26

    move/from16 v16, v17

    :cond_26
    or-int v9, v9, v16

    :goto_19
    and-int/lit16 v0, v11, 0x2000

    if-eqz v0, :cond_28

    or-int/lit16 v9, v9, 0xc00

    :cond_27
    move-object/from16 v14, p14

    goto :goto_1a

    :cond_28
    and-int/lit16 v14, v12, 0xc00

    if-nez v14, :cond_27

    move-object/from16 v14, p14

    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_29

    move/from16 v18, v19

    :cond_29
    or-int v9, v9, v18

    :goto_1a
    and-int/lit16 v14, v12, 0x6000

    if-nez v14, :cond_2c

    and-int/lit16 v14, v11, 0x4000

    if-nez v14, :cond_2a

    move-object/from16 v14, p15

    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2b

    const/16 v21, 0x4000

    goto :goto_1b

    :cond_2a
    move-object/from16 v14, p15

    :cond_2b
    :goto_1b
    or-int v9, v9, v21

    goto :goto_1c

    :cond_2c
    move-object/from16 v14, p15

    :goto_1c
    and-int v16, v12, v24

    if-nez v16, :cond_2e

    const v16, 0x8000

    and-int v16, v11, v16

    move-object/from16 v14, p16

    if-nez v16, :cond_2d

    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2d

    move/from16 v16, v23

    goto :goto_1d

    :cond_2d
    move/from16 v16, v22

    :goto_1d
    or-int v9, v9, v16

    goto :goto_1e

    :cond_2e
    move-object/from16 v14, p16

    :goto_1e
    and-int v16, v11, v22

    if-eqz v16, :cond_2f

    or-int v9, v9, v25

    move-object/from16 v14, p17

    goto :goto_20

    :cond_2f
    and-int v17, v12, v25

    move-object/from16 v14, p17

    if-nez v17, :cond_31

    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_30

    const/high16 v17, 0x100000

    goto :goto_1f

    :cond_30
    const/high16 v17, 0x80000

    :goto_1f
    or-int v9, v9, v17

    :cond_31
    :goto_20
    and-int v17, v11, v23

    if-eqz v17, :cond_32

    or-int v9, v9, v28

    goto :goto_22

    :cond_32
    and-int v17, v12, v28

    if-nez v17, :cond_34

    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_33

    const/high16 v17, 0x800000

    goto :goto_21

    :cond_33
    const/high16 v17, 0x400000

    :goto_21
    or-int v9, v9, v17

    :cond_34
    :goto_22
    const v17, 0x12492493

    and-int v12, v2, v17

    const v14, 0x12492492

    if-ne v12, v14, :cond_36

    const v12, 0x492493

    and-int/2addr v12, v9

    const v14, 0x492492

    if-ne v12, v14, :cond_36

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v12

    if-nez v12, :cond_35

    goto :goto_23

    .line 1198
    :cond_35
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v27, v10

    move-object/from16 v10, p9

    goto/16 :goto_36

    .line 1170
    :cond_36
    :goto_23
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v12, v13, 0x1

    if-eqz v12, :cond_3a

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v12

    if-eqz v12, :cond_37

    goto :goto_24

    .line 1158
    :cond_37
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit16 v0, v11, 0x4000

    if-eqz v0, :cond_38

    const v0, -0xe001

    and-int/2addr v9, v0

    :cond_38
    const v0, 0x8000

    and-int/2addr v0, v11

    if-eqz v0, :cond_39

    const v0, -0x70001

    and-int/2addr v9, v0

    :cond_39
    move/from16 v0, p7

    move-object/from16 v1, p8

    move-object/from16 v23, p9

    move-object/from16 v24, p10

    move-object/from16 v25, p11

    move-object/from16 v26, p12

    move-object/from16 v28, p13

    move-object/from16 v30, p14

    move-object/from16 v31, p15

    move-object/from16 v32, p16

    move-object/from16 v33, p17

    goto/16 :goto_30

    :cond_3a
    :goto_24
    if-eqz v6, :cond_3b

    const/4 v6, 0x0

    goto :goto_25

    :cond_3b
    move/from16 v6, p7

    :goto_25
    if-eqz v3, :cond_3c

    const/4 v3, 0x0

    goto :goto_26

    :cond_3c
    move-object/from16 v3, p8

    :goto_26
    if-eqz v4, :cond_3d

    const/4 v4, 0x0

    goto :goto_27

    :cond_3d
    move-object/from16 v4, p9

    :goto_27
    if-eqz v5, :cond_3e

    const/4 v5, 0x0

    goto :goto_28

    :cond_3e
    move-object/from16 v5, p10

    :goto_28
    if-eqz v7, :cond_3f

    const/4 v7, 0x0

    goto :goto_29

    :cond_3f
    move-object/from16 v7, p11

    :goto_29
    if-eqz v8, :cond_40

    const/4 v8, 0x0

    goto :goto_2a

    :cond_40
    move-object/from16 v8, p12

    :goto_2a
    if-eqz v15, :cond_41

    const/4 v12, 0x0

    goto :goto_2b

    :cond_41
    move-object/from16 v12, p13

    :goto_2b
    if-eqz v0, :cond_42

    const/4 v0, 0x0

    goto :goto_2c

    :cond_42
    move-object/from16 v0, p14

    :goto_2c
    and-int/lit16 v15, v11, 0x4000

    if-eqz v15, :cond_43

    shr-int/lit8 v15, v9, 0x15

    and-int/lit8 v15, v15, 0xe

    .line 1156
    invoke-virtual {v1, v10, v15}, Landroidx/compose/material3/OutlinedTextFieldDefaults;->colors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/TextFieldColors;

    move-result-object v15

    const v17, -0xe001

    and-int v9, v9, v17

    goto :goto_2d

    :cond_43
    move-object/from16 v15, p15

    :goto_2d
    const v17, 0x8000

    and-int v17, v11, v17

    if-eqz v17, :cond_44

    const/16 v17, 0xf

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 p7, p0

    move/from16 p8, v19

    move/from16 p9, v20

    move/from16 p10, v21

    move/from16 p11, v22

    move/from16 p12, v17

    move-object/from16 p13, v18

    .line 1157
    invoke-static/range {p7 .. p13}, Landroidx/compose/material3/OutlinedTextFieldDefaults;->contentPadding-a9UjIt4$default(Landroidx/compose/material3/OutlinedTextFieldDefaults;FFFFILjava/lang/Object;)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v17

    const v18, -0x70001

    and-int v9, v9, v18

    goto :goto_2e

    :cond_44
    move-object/from16 v17, p16

    :goto_2e
    if-eqz v16, :cond_45

    .line 1158
    new-instance v14, Landroidx/compose/material3/OutlinedTextFieldDefaults$DecorationBox$1;

    move-object/from16 v1, p6

    move-object/from16 p7, v0

    move/from16 v0, p3

    invoke-direct {v14, v0, v6, v1, v15}, Landroidx/compose/material3/OutlinedTextFieldDefaults$DecorationBox$1;-><init>(ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/material3/TextFieldColors;)V

    const/16 v0, 0x36

    const v1, -0x56576ca2

    move-object/from16 p8, v3

    const/4 v3, 0x1

    invoke-static {v1, v3, v14, v10, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object/from16 v30, p7

    move-object/from16 v1, p8

    move-object/from16 v33, v0

    :goto_2f
    move-object/from16 v23, v4

    move-object/from16 v24, v5

    move v0, v6

    move-object/from16 v25, v7

    move-object/from16 v26, v8

    move-object/from16 v28, v12

    move-object/from16 v31, v15

    move-object/from16 v32, v17

    goto :goto_30

    :cond_45
    move-object/from16 p7, v0

    move-object/from16 p8, v3

    move-object/from16 v30, p7

    move-object/from16 v1, p8

    move-object/from16 v33, p17

    goto :goto_2f

    :goto_30
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_46

    const v3, -0x14e35297

    const-string v4, "androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox (TextFieldDefaults.kt:1169)"

    .line 1170
    invoke-static {v3, v2, v9, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_46
    and-int/lit8 v3, v2, 0xe

    const/4 v4, 0x4

    if-ne v3, v4, :cond_47

    const/4 v3, 0x1

    goto :goto_31

    :cond_47
    const/4 v3, 0x0

    :goto_31
    const v4, 0xe000

    and-int/2addr v4, v2

    const/16 v5, 0x4000

    if-ne v4, v5, :cond_48

    const/4 v4, 0x1

    goto :goto_32

    :cond_48
    const/4 v4, 0x0

    :goto_32
    or-int/2addr v3, v4

    .line 1166
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_4a

    .line 1167
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v4, v3, :cond_49

    goto :goto_33

    :cond_49
    move-object/from16 v15, p5

    goto :goto_34

    .line 1173
    :cond_4a
    :goto_33
    new-instance v3, Landroidx/compose/ui/text/AnnotatedString;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 p7, v3

    move-object/from16 p8, p1

    move-object/from16 p9, v6

    move-object/from16 p10, v7

    move/from16 p11, v4

    move-object/from16 p12, v5

    invoke-direct/range {p7 .. p12}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v15, p5

    invoke-interface {v15, v3}, Landroidx/compose/ui/text/input/VisualTransformation;->filter(Landroidx/compose/ui/text/AnnotatedString;)Landroidx/compose/ui/text/input/TransformedText;

    move-result-object v4

    .line 1169
    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1172
    :goto_34
    check-cast v4, Landroidx/compose/ui/text/input/TransformedText;

    .line 1175
    invoke-virtual {v4}, Landroidx/compose/ui/text/input/TransformedText;->getText()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v3

    .line 1176
    invoke-virtual {v3}, Landroidx/compose/ui/text/AnnotatedString;->getText()Ljava/lang/String;

    move-result-object v3

    .line 1179
    sget-object v4, Landroidx/compose/material3/internal/TextFieldType;->Outlined:Landroidx/compose/material3/internal/TextFieldType;

    .line 1183
    new-instance v5, Landroidx/compose/material3/TextFieldLabelPosition$Default;

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object/from16 p7, v5

    move/from16 p8, v8

    move-object/from16 p9, v12

    move-object/from16 p10, v14

    move/from16 p11, v6

    move-object/from16 p12, v7

    invoke-direct/range {p7 .. p12}, Landroidx/compose/material3/TextFieldLabelPosition$Default;-><init>(ZLandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Horizontal;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const v6, -0x4ce69302

    .line 1184
    invoke-interface {v10, v6}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    if-nez v1, :cond_4b

    const/4 v6, 0x0

    goto :goto_35

    :cond_4b
    new-instance v6, Landroidx/compose/material3/OutlinedTextFieldDefaults$DecorationBox$2$1;

    invoke-direct {v6, v1}, Landroidx/compose/material3/OutlinedTextFieldDefaults$DecorationBox$2$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    const/16 v7, 0x36

    const v8, 0x2f1f5203

    const/4 v12, 0x1

    invoke-static {v8, v12, v6, v10, v7}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v6

    :goto_35
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    shl-int/lit8 v7, v2, 0x3

    and-int/lit16 v7, v7, 0x380

    or-int/lit8 v7, v7, 0x6

    shr-int/lit8 v8, v2, 0x9

    const/high16 v12, 0x70000

    and-int/2addr v12, v8

    or-int/2addr v7, v12

    const/high16 v12, 0x380000

    and-int/2addr v12, v8

    or-int/2addr v7, v12

    shl-int/lit8 v12, v9, 0x15

    const/high16 v14, 0x1c00000

    and-int/2addr v14, v12

    or-int/2addr v7, v14

    const/high16 v14, 0xe000000

    and-int/2addr v14, v12

    or-int/2addr v7, v14

    const/high16 v14, 0x70000000

    and-int/2addr v12, v14

    or-int v21, v7, v12

    shr-int/lit8 v7, v9, 0x9

    and-int/lit8 v7, v7, 0xe

    shr-int/lit8 v12, v2, 0x6

    and-int/lit8 v12, v12, 0x70

    or-int/2addr v7, v12

    and-int/lit16 v12, v2, 0x380

    or-int/2addr v7, v12

    and-int/lit16 v8, v8, 0x1c00

    or-int/2addr v7, v8

    shr-int/lit8 v2, v2, 0x3

    const v8, 0xe000

    and-int/2addr v2, v8

    or-int/2addr v2, v7

    const/high16 v7, 0x70000

    and-int/2addr v7, v9

    or-int/2addr v2, v7

    shl-int/lit8 v7, v9, 0x6

    const/high16 v8, 0x380000

    and-int/2addr v7, v8

    or-int/2addr v2, v7

    shl-int/lit8 v7, v9, 0x3

    const/high16 v8, 0x1c00000

    and-int/2addr v7, v8

    or-int v22, v2, v7

    move-object v2, v4

    move-object/from16 v4, p2

    move-object/from16 v7, v23

    move-object/from16 v8, v24

    move-object/from16 v9, v25

    move-object/from16 v27, v10

    move-object/from16 v10, v26

    move-object/from16 v11, v28

    move-object/from16 v12, v30

    move/from16 v13, p4

    move/from16 v14, p3

    move v15, v0

    move-object/from16 v16, p6

    move-object/from16 v17, v32

    move-object/from16 v18, v31

    move-object/from16 v19, v33

    move-object/from16 v20, v27

    .line 1178
    invoke-static/range {v2 .. v22}, Landroidx/compose/material3/internal/TextFieldImplKt;->CommonDecorationBox(Landroidx/compose/material3/internal/TextFieldType;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/TextFieldLabelPosition;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/material3/TextFieldColors;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_4c
    move v8, v0

    move-object v9, v1

    move-object/from16 v10, v23

    move-object/from16 v11, v24

    move-object/from16 v12, v25

    move-object/from16 v13, v26

    move-object/from16 v14, v28

    move-object/from16 v15, v30

    move-object/from16 v16, v31

    move-object/from16 v17, v32

    move-object/from16 v18, v33

    .line 1198
    :goto_36
    invoke-interface/range {v27 .. v27}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v7

    if-eqz v7, :cond_4d

    new-instance v6, Landroidx/compose/material3/OutlinedTextFieldDefaults$DecorationBox$3;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v34, v6

    move-object/from16 v6, p5

    move-object/from16 v35, v7

    move-object/from16 v7, p6

    move/from16 v19, p19

    move/from16 v20, p20

    move/from16 v21, p21

    invoke-direct/range {v0 .. v21}, Landroidx/compose/material3/OutlinedTextFieldDefaults$DecorationBox$3;-><init>(Landroidx/compose/material3/OutlinedTextFieldDefaults;Ljava/lang/String;Lkotlin/jvm/functions/Function2;ZZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/interaction/InteractionSource;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function2;III)V

    move-object/from16 v1, v34

    move-object/from16 v0, v35

    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_4d
    return-void
.end method

.method public final colors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/TextFieldColors;
    .locals 3

    .line 1217
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "androidx.compose.material3.OutlinedTextFieldDefaults.colors (TextFieldDefaults.kt:1216)"

    const v2, -0x1c1cd5e2

    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    sget-object v0, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    const/4 v1, 0x6

    invoke-virtual {v0, p1, v1}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v0

    shl-int/lit8 p2, p2, 0x3

    and-int/lit8 p2, p2, 0x70

    invoke-virtual {p0, v0, p1, p2}, Landroidx/compose/material3/OutlinedTextFieldDefaults;->getDefaultOutlinedTextFieldColors(Landroidx/compose/material3/ColorScheme;Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/TextFieldColors;

    move-result-object p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1
    return-object p0
.end method

.method public final contentPadding-a9UjIt4(FFFF)Landroidx/compose/foundation/layout/PaddingValues;
    .locals 0

    .line 1211
    invoke-static {p1, p2, p3, p4}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-a9UjIt4(FFFF)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object p0

    return-object p0
.end method

.method public final getDefaultOutlinedTextFieldColors(Landroidx/compose/material3/ColorScheme;Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/TextFieldColors;
    .locals 94

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 1367
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, -0x1

    const-string v3, "androidx.compose.material3.OutlinedTextFieldDefaults.<get-defaultOutlinedTextFieldColors> (TextFieldDefaults.kt:1366)"

    const v4, -0x116d1d39

    move/from16 v5, p3

    invoke-static {v4, v5, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 1368
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/material3/ColorScheme;->getDefaultOutlinedTextFieldColorsCached$material3_release()Landroidx/compose/material3/TextFieldColors;

    move-result-object v5

    const v2, 0x5bd86d6d

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    if-nez v5, :cond_1

    const/4 v2, 0x0

    goto/16 :goto_1

    .line 1369
    :cond_1
    invoke-static {}, Landroidx/compose/foundation/text/selection/TextSelectionColorsKt;->getLocalTextSelectionColors()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v2

    .line 75
    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    .line 1369
    check-cast v2, Landroidx/compose/foundation/text/selection/TextSelectionColors;

    .line 1370
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

    .line 1373
    invoke-static/range {v5 .. v93}, Landroidx/compose/material3/TextFieldColors;->copy-ejIjP34$default(Landroidx/compose/material3/TextFieldColors;JJJJJJJJJJLandroidx/compose/foundation/text/selection/TextSelectionColors;JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJIILjava/lang/Object;)Landroidx/compose/material3/TextFieldColors;

    move-result-object v5

    .line 1374
    invoke-virtual {v0, v5}, Landroidx/compose/material3/ColorScheme;->setDefaultOutlinedTextFieldColorsCached$material3_release(Landroidx/compose/material3/TextFieldColors;)V

    :goto_0
    move-object v2, v5

    .line 1368
    :goto_1
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const v3, 0x5bd87f90

    invoke-interface {v1, v3}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    if-nez v2, :cond_3

    .line 1378
    new-instance v2, Landroidx/compose/material3/TextFieldColors;

    move-object v4, v2

    .line 1379
    sget-object v3, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->INSTANCE:Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;

    invoke-virtual {v3}, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->getFocusInputColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v5

    invoke-static {v0, v5}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v5

    .line 1380
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->getInputColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v7

    invoke-static {v0, v7}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v7

    .line 1382
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->getDisabledInputColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v9

    invoke-static {v0, v9}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v10

    const/16 v16, 0xe

    const/16 v17, 0x0

    const v12, 0x3ec28f5c    # 0.38f

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 1383
    invoke-static/range {v10 .. v17}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v9

    .line 1384
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->getErrorInputColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v11

    invoke-static {v0, v11}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v11

    .line 1385
    sget-object v19, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/graphics/Color$Companion;->getTransparent-0d7_KjU()J

    move-result-wide v13

    .line 1386
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/graphics/Color$Companion;->getTransparent-0d7_KjU()J

    move-result-wide v15

    .line 1387
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/graphics/Color$Companion;->getTransparent-0d7_KjU()J

    move-result-wide v17

    .line 1388
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/graphics/Color$Companion;->getTransparent-0d7_KjU()J

    move-result-wide v19

    move-object/from16 p0, v2

    .line 1389
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->getCaretColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v21

    .line 1390
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->getErrorFocusCaretColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v23

    .line 1391
    invoke-static {}, Landroidx/compose/foundation/text/selection/TextSelectionColorsKt;->getLocalTextSelectionColors()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v2

    .line 75
    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v25, v2

    check-cast v25, Landroidx/compose/foundation/text/selection/TextSelectionColors;

    .line 1393
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->getFocusOutlineColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v26

    .line 1394
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->getOutlineColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v28

    .line 1396
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->getDisabledOutlineColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v30

    const/16 v36, 0xe

    const/16 v37, 0x0

    const v32, 0x3df5c28f    # 0.12f

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    .line 1397
    invoke-static/range {v30 .. v37}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v30

    .line 1398
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->getErrorOutlineColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v32

    .line 1400
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->getFocusLeadingIconColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v34

    .line 1402
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->getLeadingIconColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v36

    .line 1404
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->getDisabledLeadingIconColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v38

    const/16 v44, 0xe

    const/16 v45, 0x0

    const v40, 0x3ec28f5c    # 0.38f

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    .line 1405
    invoke-static/range {v38 .. v45}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v38

    .line 1407
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->getErrorLeadingIconColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v40

    .line 1409
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->getFocusTrailingIconColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v42

    .line 1411
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->getTrailingIconColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v44

    .line 1413
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->getDisabledTrailingIconColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v46

    const/16 v52, 0xe

    const/16 v53, 0x0

    const v48, 0x3ec28f5c    # 0.38f

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    .line 1414
    invoke-static/range {v46 .. v53}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v46

    .line 1416
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->getErrorTrailingIconColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v48

    .line 1417
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->getFocusLabelColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v50

    .line 1418
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->getLabelColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v52

    .line 1420
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->getDisabledLabelColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v54

    const/16 v60, 0xe

    const/16 v61, 0x0

    const v56, 0x3ec28f5c    # 0.38f

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    .line 1421
    invoke-static/range {v54 .. v61}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v54

    .line 1422
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->getErrorLabelColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v56

    .line 1424
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->getInputPlaceholderColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v58

    .line 1426
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->getInputPlaceholderColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v60

    .line 1428
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->getDisabledInputColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v62

    const/16 v68, 0xe

    const/16 v69, 0x0

    const v64, 0x3ec28f5c    # 0.38f

    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    .line 1429
    invoke-static/range {v62 .. v69}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v62

    .line 1431
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->getInputPlaceholderColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v64

    .line 1433
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->getFocusSupportingColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v66

    .line 1435
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->getSupportingColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v68

    .line 1437
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->getDisabledSupportingColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v70

    const/16 v76, 0xe

    const/16 v77, 0x0

    const v72, 0x3ec28f5c    # 0.38f

    const/16 v73, 0x0

    const/16 v74, 0x0

    const/16 v75, 0x0

    .line 1438
    invoke-static/range {v70 .. v77}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v70

    .line 1440
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->getErrorSupportingColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v72

    .line 1441
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->getInputPrefixColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v74

    .line 1442
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->getInputPrefixColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v76

    .line 1444
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->getInputPrefixColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v78

    const/16 v84, 0xe

    const/16 v85, 0x0

    const v80, 0x3ec28f5c    # 0.38f

    const/16 v81, 0x0

    const/16 v82, 0x0

    const/16 v83, 0x0

    .line 1445
    invoke-static/range {v78 .. v85}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v78

    .line 1446
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->getInputPrefixColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v80

    .line 1447
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->getInputSuffixColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v82

    .line 1448
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->getInputSuffixColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v84

    .line 1450
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->getInputSuffixColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v86

    const/16 v92, 0xe

    const/16 v93, 0x0

    const v88, 0x3ec28f5c    # 0.38f

    const/16 v89, 0x0

    const/16 v90, 0x0

    const/16 v91, 0x0

    .line 1451
    invoke-static/range {v86 .. v93}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v86

    .line 1452
    invoke-virtual {v3}, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->getInputSuffixColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v88

    const/16 v90, 0x0

    .line 1378
    invoke-direct/range {v4 .. v90}, Landroidx/compose/material3/TextFieldColors;-><init>(JJJJJJJJJJLandroidx/compose/foundation/text/selection/TextSelectionColors;JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v2, p0

    .line 1454
    invoke-virtual {v0, v2}, Landroidx/compose/material3/ColorScheme;->setDefaultOutlinedTextFieldColorsCached$material3_release(Landroidx/compose/material3/TextFieldColors;)V

    .line 1368
    :cond_3
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_4
    return-object v2
.end method

.method public final getFocusedBorderThickness-D9Ej5fM()F
    .locals 0

    .line 908
    sget p0, Landroidx/compose/material3/OutlinedTextFieldDefaults;->FocusedBorderThickness:F

    return p0
.end method

.method public final getMinHeight-D9Ej5fM()F
    .locals 0

    .line 896
    sget p0, Landroidx/compose/material3/OutlinedTextFieldDefaults;->MinHeight:F

    return p0
.end method

.method public final getMinWidth-D9Ej5fM()F
    .locals 0

    .line 902
    sget p0, Landroidx/compose/material3/OutlinedTextFieldDefaults;->MinWidth:F

    return p0
.end method

.method public final getShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;
    .locals 2

    .line 890
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, -0x1

    const-string v0, "androidx.compose.material3.OutlinedTextFieldDefaults.<get-shape> (TextFieldDefaults.kt:889)"

    const v1, -0x3f956b61

    invoke-static {v1, p2, p0, v0}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    sget-object p0, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->INSTANCE:Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;

    invoke-virtual {p0}, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->getContainerShape()Landroidx/compose/material3/tokens/ShapeKeyTokens;

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

.method public final getUnfocusedBorderThickness-D9Ej5fM()F
    .locals 0

    .line 905
    sget p0, Landroidx/compose/material3/OutlinedTextFieldDefaults;->UnfocusedBorderThickness:F

    return p0
.end method
