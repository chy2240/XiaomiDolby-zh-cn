.class public final Landroidx/compose/material3/TopAppBarDefaults;
.super Ljava/lang/Object;
.source "AppBar.kt"


# static fields
.field public static final $stable:I

.field public static final INSTANCE:Landroidx/compose/material3/TopAppBarDefaults;

.field private static final LargeAppBarCollapsedHeight:F

.field private static final LargeAppBarExpandedHeight:F

.field private static final LargeAppBarWithSubtitleExpandedHeight:F

.field private static final LargeAppBarWithoutSubtitleExpandedHeight:F

.field private static final MediumAppBarCollapsedHeight:F

.field private static final MediumAppBarExpandedHeight:F

.field private static final MediumAppBarWithSubtitleExpandedHeight:F

.field private static final MediumAppBarWithoutSubtitleExpandedHeight:F

.field private static final TopAppBarExpandedHeight:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/material3/TopAppBarDefaults;

    invoke-direct {v0}, Landroidx/compose/material3/TopAppBarDefaults;-><init>()V

    sput-object v0, Landroidx/compose/material3/TopAppBarDefaults;->INSTANCE:Landroidx/compose/material3/TopAppBarDefaults;

    .line 1645
    sget-object v0, Landroidx/compose/material3/tokens/TopAppBarSmallTokens;->INSTANCE:Landroidx/compose/material3/tokens/TopAppBarSmallTokens;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/TopAppBarSmallTokens;->getContainerHeight-D9Ej5fM()F

    move-result v1

    sput v1, Landroidx/compose/material3/TopAppBarDefaults;->TopAppBarExpandedHeight:F

    .line 1648
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/TopAppBarSmallTokens;->getContainerHeight-D9Ej5fM()F

    move-result v1

    sput v1, Landroidx/compose/material3/TopAppBarDefaults;->MediumAppBarCollapsedHeight:F

    .line 1651
    sget-object v1, Landroidx/compose/material3/tokens/TopAppBarMediumTokens;->INSTANCE:Landroidx/compose/material3/tokens/TopAppBarMediumTokens;

    invoke-virtual {v1}, Landroidx/compose/material3/tokens/TopAppBarMediumTokens;->getContainerHeight-D9Ej5fM()F

    move-result v1

    sput v1, Landroidx/compose/material3/TopAppBarDefaults;->MediumAppBarExpandedHeight:F

    const/16 v1, 0x68

    int-to-float v1, v1

    .line 3088
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 1654
    sput v1, Landroidx/compose/material3/TopAppBarDefaults;->MediumAppBarWithoutSubtitleExpandedHeight:F

    const/16 v1, 0x7c

    int-to-float v1, v1

    .line 3089
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 1657
    sput v1, Landroidx/compose/material3/TopAppBarDefaults;->MediumAppBarWithSubtitleExpandedHeight:F

    .line 1660
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/TopAppBarSmallTokens;->getContainerHeight-D9Ej5fM()F

    move-result v0

    sput v0, Landroidx/compose/material3/TopAppBarDefaults;->LargeAppBarCollapsedHeight:F

    .line 1663
    sget-object v0, Landroidx/compose/material3/tokens/TopAppBarLargeTokens;->INSTANCE:Landroidx/compose/material3/tokens/TopAppBarLargeTokens;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/TopAppBarLargeTokens;->getContainerHeight-D9Ej5fM()F

    move-result v0

    sput v0, Landroidx/compose/material3/TopAppBarDefaults;->LargeAppBarExpandedHeight:F

    const/16 v0, 0x78

    int-to-float v0, v0

    .line 3090
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 1666
    sput v0, Landroidx/compose/material3/TopAppBarDefaults;->LargeAppBarWithoutSubtitleExpandedHeight:F

    const/16 v0, 0x90

    int-to-float v0, v0

    .line 3091
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 1669
    sput v0, Landroidx/compose/material3/TopAppBarDefaults;->LargeAppBarWithSubtitleExpandedHeight:F

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final exitUntilCollapsedScrollBehavior(Landroidx/compose/material3/TopAppBarState;Lkotlin/jvm/functions/Function0;Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/DecayAnimationSpec;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material3/TopAppBarScrollBehavior;
    .locals 6

    and-int/lit8 p0, p7, 0x1

    if-eqz p0, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, p5

    .line 1629
    invoke-static/range {v0 .. v5}, Landroidx/compose/material3/AppBarKt;->rememberTopAppBarState(FFFLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/TopAppBarState;

    move-result-object p1

    :cond_0
    and-int/lit8 p0, p7, 0x2

    if-eqz p0, :cond_1

    .line 1630
    sget-object p2, Landroidx/compose/material3/TopAppBarDefaults$exitUntilCollapsedScrollBehavior$1;->INSTANCE:Landroidx/compose/material3/TopAppBarDefaults$exitUntilCollapsedScrollBehavior$1;

    :cond_1
    and-int/lit8 p0, p7, 0x4

    const/4 v0, 0x6

    if-eqz p0, :cond_e

    .line 1632
    sget-object p0, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->DefaultEffects:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    .line 362
    sget-object p3, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    invoke-virtual {p3, p5, v0}, Landroidx/compose/material3/MaterialTheme;->getMotionScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/MotionScheme;

    move-result-object p3

    .line 345
    sget-object v1, Landroidx/compose/material3/MotionSchemeKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const-class v1, Ljava/lang/Float;

    packed-switch p0, :pswitch_data_0

    const p0, -0x5cefed14

    .line 351
    invoke-interface {p5, p0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :pswitch_0
    const p0, -0x5ce9351b

    invoke-interface {p5, p0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 219
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    invoke-interface {p5, p3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {p5, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result p0

    or-int/2addr p0, v1

    .line 1166
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-nez p0, :cond_2

    .line 1167
    sget-object p0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p0

    if-ne v1, p0, :cond_3

    .line 220
    :cond_2
    invoke-interface {p3}, Landroidx/compose/material3/MotionScheme;->slowEffectsSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v1

    .line 1169
    invoke-interface {p5, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 219
    :cond_3
    check-cast v1, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 351
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    :goto_0
    move-object p3, v1

    goto/16 :goto_1

    :pswitch_1
    const p0, -0x5ce93dfb

    .line 350
    invoke-interface {p5, p0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 204
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    invoke-interface {p5, p3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {p5, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result p0

    or-int/2addr p0, v1

    .line 1166
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-nez p0, :cond_4

    .line 1167
    sget-object p0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p0

    if-ne v1, p0, :cond_5

    .line 205
    :cond_4
    invoke-interface {p3}, Landroidx/compose/material3/MotionScheme;->fastEffectsSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v1

    .line 1169
    invoke-interface {p5, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 204
    :cond_5
    check-cast v1, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 350
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_0

    :pswitch_2
    const p0, -0x5ce94738

    .line 349
    invoke-interface {p5, p0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 189
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    invoke-interface {p5, p3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {p5, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result p0

    or-int/2addr p0, v1

    .line 1166
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-nez p0, :cond_6

    .line 1167
    sget-object p0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p0

    if-ne v1, p0, :cond_7

    .line 190
    :cond_6
    invoke-interface {p3}, Landroidx/compose/material3/MotionScheme;->defaultEffectsSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v1

    .line 1169
    invoke-interface {p5, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 189
    :cond_7
    check-cast v1, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 349
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_0

    :pswitch_3
    const p0, -0x5ce9507b    # -8.168684E-18f

    .line 348
    invoke-interface {p5, p0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 174
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    invoke-interface {p5, p3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {p5, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result p0

    or-int/2addr p0, v1

    .line 1166
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-nez p0, :cond_8

    .line 1167
    sget-object p0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p0

    if-ne v1, p0, :cond_9

    .line 175
    :cond_8
    invoke-interface {p3}, Landroidx/compose/material3/MotionScheme;->slowSpatialSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v1

    .line 1169
    invoke-interface {p5, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 174
    :cond_9
    check-cast v1, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 348
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto/16 :goto_0

    :pswitch_4
    const p0, -0x5ce9595b

    .line 347
    invoke-interface {p5, p0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 159
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    invoke-interface {p5, p3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {p5, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result p0

    or-int/2addr p0, v1

    .line 1166
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-nez p0, :cond_a

    .line 1167
    sget-object p0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p0

    if-ne v1, p0, :cond_b

    .line 160
    :cond_a
    invoke-interface {p3}, Landroidx/compose/material3/MotionScheme;->fastSpatialSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v1

    .line 1169
    invoke-interface {p5, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 159
    :cond_b
    check-cast v1, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 347
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto/16 :goto_0

    :pswitch_5
    const p0, -0x5ce96298

    .line 346
    invoke-interface {p5, p0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 144
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    invoke-interface {p5, p3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {p5, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result p0

    or-int/2addr p0, v1

    .line 1166
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-nez p0, :cond_c

    .line 1167
    sget-object p0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p0

    if-ne v1, p0, :cond_d

    .line 145
    :cond_c
    invoke-interface {p3}, Landroidx/compose/material3/MotionScheme;->defaultSpatialSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v1

    .line 1169
    invoke-interface {p5, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 144
    :cond_d
    check-cast v1, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 346
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto/16 :goto_0

    :cond_e
    :goto_1
    and-int/lit8 p0, p7, 0x8

    const/4 p7, 0x0

    if-eqz p0, :cond_f

    .line 1633
    invoke-static {p5, p7}, Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec_androidKt;->rememberSplineBasedDecay(Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/DecayAnimationSpec;

    move-result-object p4

    :cond_f
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, -0x1

    const-string v1, "androidx.compose.material3.TopAppBarDefaults.exitUntilCollapsedScrollBehavior (AppBar.kt:1634)"

    const v2, -0x68ba0c02

    .line 1635
    invoke-static {v2, p6, p0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_10
    and-int/lit8 p0, p6, 0xe

    xor-int/2addr p0, v0

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-le p0, v0, :cond_11

    invoke-interface {p5, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    :cond_11
    and-int/lit8 p0, p6, 0x6

    if-ne p0, v0, :cond_13

    :cond_12
    move p0, v1

    goto :goto_2

    :cond_13
    move p0, p7

    :goto_2
    and-int/lit8 v0, p6, 0x70

    xor-int/lit8 v0, v0, 0x30

    const/16 v2, 0x20

    if-le v0, v2, :cond_14

    invoke-interface {p5, p2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    :cond_14
    and-int/lit8 p6, p6, 0x30

    if-ne p6, v2, :cond_16

    :cond_15
    move p7, v1

    :cond_16
    or-int/2addr p0, p7

    invoke-interface {p5, p3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result p6

    or-int/2addr p0, p6

    invoke-interface {p5, p4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result p6

    or-int/2addr p0, p6

    .line 1166
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object p6

    if-nez p0, :cond_17

    .line 1167
    sget-object p0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p0

    if-ne p6, p0, :cond_18

    .line 1636
    :cond_17
    new-instance p6, Landroidx/compose/material3/ExitUntilCollapsedScrollBehavior;

    invoke-direct {p6, p1, p3, p4, p2}, Landroidx/compose/material3/ExitUntilCollapsedScrollBehavior;-><init>(Landroidx/compose/material3/TopAppBarState;Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/DecayAnimationSpec;Lkotlin/jvm/functions/Function0;)V

    .line 1169
    invoke-interface {p5, p6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1635
    :cond_18
    check-cast p6, Landroidx/compose/material3/ExitUntilCollapsedScrollBehavior;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_19

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_19
    return-object p6

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
