.class public final Landroidx/compose/material3/ButtonDefaults;
.super Ljava/lang/Object;
.source "Button.kt"


# static fields
.field private static final ButtonLeadingSpace:F

.field private static final ButtonTrailingSpace:F

.field private static final ButtonVerticalPadding:F

.field private static final ButtonWithIconContentPadding:Landroidx/compose/foundation/layout/PaddingValues;

.field private static final ButtonWithIconStartpadding:F

.field private static final ContentPadding:Landroidx/compose/foundation/layout/PaddingValues;

.field public static final INSTANCE:Landroidx/compose/material3/ButtonDefaults;

.field private static final IconSize:F

.field private static final IconSpacing:F

.field private static final MinHeight:F

.field private static final MinWidth:F

.field private static final SmallButtonEndPadding:F

.field private static final SmallButtonStartPadding:F

.field private static final TextButtonContentPadding:Landroidx/compose/foundation/layout/PaddingValues;

.field private static final TextButtonHorizontalPadding:F

.field private static final TextButtonWithIconContentPadding:Landroidx/compose/foundation/layout/PaddingValues;

.field private static final TextButtonWithIconHorizontalEndPadding:F


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Landroidx/compose/material3/ButtonDefaults;

    invoke-direct {v0}, Landroidx/compose/material3/ButtonDefaults;-><init>()V

    sput-object v0, Landroidx/compose/material3/ButtonDefaults;->INSTANCE:Landroidx/compose/material3/ButtonDefaults;

    .line 480
    sget-object v0, Landroidx/compose/material3/tokens/BaselineButtonTokens;->INSTANCE:Landroidx/compose/material3/tokens/BaselineButtonTokens;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/BaselineButtonTokens;->getLeadingSpace-D9Ej5fM()F

    move-result v1

    sput v1, Landroidx/compose/material3/ButtonDefaults;->ButtonLeadingSpace:F

    .line 481
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/BaselineButtonTokens;->getTrailingSpace-D9Ej5fM()F

    move-result v0

    sput v0, Landroidx/compose/material3/ButtonDefaults;->ButtonTrailingSpace:F

    const/16 v2, 0x10

    int-to-float v2, v2

    .line 1146
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 482
    sput v3, Landroidx/compose/material3/ButtonDefaults;->ButtonWithIconStartpadding:F

    .line 483
    sget-object v4, Landroidx/compose/material3/tokens/ButtonSmallTokens;->INSTANCE:Landroidx/compose/material3/tokens/ButtonSmallTokens;

    invoke-virtual {v4}, Landroidx/compose/material3/tokens/ButtonSmallTokens;->getLeadingSpace-D9Ej5fM()F

    move-result v5

    sput v5, Landroidx/compose/material3/ButtonDefaults;->SmallButtonStartPadding:F

    .line 484
    invoke-virtual {v4}, Landroidx/compose/material3/tokens/ButtonSmallTokens;->getTrailingSpace-D9Ej5fM()F

    move-result v5

    sput v5, Landroidx/compose/material3/ButtonDefaults;->SmallButtonEndPadding:F

    const/16 v5, 0x8

    int-to-float v5, v5

    .line 1147
    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v6

    .line 485
    sput v6, Landroidx/compose/material3/ButtonDefaults;->ButtonVerticalPadding:F

    .line 496
    invoke-static {v1, v6, v0, v6}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-a9UjIt4(FFFF)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v1

    sput-object v1, Landroidx/compose/material3/ButtonDefaults;->ContentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    .line 505
    invoke-static {v3, v6, v0, v6}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-a9UjIt4(FFFF)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/ButtonDefaults;->ButtonWithIconContentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    const/16 v0, 0xc

    int-to-float v0, v0

    .line 1148
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 523
    sput v0, Landroidx/compose/material3/ButtonDefaults;->TextButtonHorizontalPadding:F

    .line 533
    invoke-interface {v1}, Landroidx/compose/foundation/layout/PaddingValues;->calculateTopPadding-D9Ej5fM()F

    move-result v3

    .line 535
    invoke-interface {v1}, Landroidx/compose/foundation/layout/PaddingValues;->calculateBottomPadding-D9Ej5fM()F

    move-result v6

    .line 531
    invoke-static {v0, v3, v0, v6}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-a9UjIt4(FFFF)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v3

    sput-object v3, Landroidx/compose/material3/ButtonDefaults;->TextButtonContentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    .line 1149
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    .line 538
    sput v2, Landroidx/compose/material3/ButtonDefaults;->TextButtonWithIconHorizontalEndPadding:F

    .line 544
    invoke-interface {v1}, Landroidx/compose/foundation/layout/PaddingValues;->calculateTopPadding-D9Ej5fM()F

    move-result v3

    .line 546
    invoke-interface {v1}, Landroidx/compose/foundation/layout/PaddingValues;->calculateBottomPadding-D9Ej5fM()F

    move-result v1

    .line 542
    invoke-static {v0, v3, v2, v1}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-a9UjIt4(FFFF)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/ButtonDefaults;->TextButtonWithIconContentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    const/16 v0, 0x3a

    int-to-float v0, v0

    .line 1150
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 553
    sput v0, Landroidx/compose/material3/ButtonDefaults;->MinWidth:F

    .line 559
    invoke-virtual {v4}, Landroidx/compose/material3/tokens/ButtonSmallTokens;->getContainerHeight-D9Ej5fM()F

    move-result v0

    sput v0, Landroidx/compose/material3/ButtonDefaults;->MinHeight:F

    const/16 v0, 0x12

    int-to-float v0, v0

    .line 1151
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 563
    sput v0, Landroidx/compose/material3/ButtonDefaults;->IconSize:F

    .line 1152
    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 568
    sput v0, Landroidx/compose/material3/ButtonDefaults;->IconSpacing:F

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final buttonColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ButtonColors;
    .locals 3

    .line 599
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "androidx.compose.material3.ButtonDefaults.buttonColors (Button.kt:598)"

    const v2, 0x5661c77d

    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    sget-object p2, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    const/4 v0, 0x6

    invoke-virtual {p2, p1, v0}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/material3/ButtonDefaults;->getDefaultButtonColors$material3_release(Landroidx/compose/material3/ColorScheme;)Landroidx/compose/material3/ButtonColors;

    move-result-object p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1
    return-object p0
.end method

.method public final buttonElevation-R_JCAzs(FFFFFLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/ButtonElevation;
    .locals 3

    and-int/lit8 p0, p8, 0x1

    if-eqz p0, :cond_0

    .line 832
    sget-object p0, Landroidx/compose/material3/tokens/FilledButtonTokens;->INSTANCE:Landroidx/compose/material3/tokens/FilledButtonTokens;

    invoke-virtual {p0}, Landroidx/compose/material3/tokens/FilledButtonTokens;->getContainerElevation-D9Ej5fM()F

    move-result p1

    :cond_0
    and-int/lit8 p0, p8, 0x2

    if-eqz p0, :cond_1

    .line 833
    sget-object p0, Landroidx/compose/material3/tokens/FilledButtonTokens;->INSTANCE:Landroidx/compose/material3/tokens/FilledButtonTokens;

    invoke-virtual {p0}, Landroidx/compose/material3/tokens/FilledButtonTokens;->getPressedContainerElevation-D9Ej5fM()F

    move-result p2

    :cond_1
    move p0, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_2

    .line 834
    sget-object p2, Landroidx/compose/material3/tokens/FilledButtonTokens;->INSTANCE:Landroidx/compose/material3/tokens/FilledButtonTokens;

    invoke-virtual {p2}, Landroidx/compose/material3/tokens/FilledButtonTokens;->getFocusedContainerElevation-D9Ej5fM()F

    move-result p3

    :cond_2
    move p6, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_3

    .line 835
    sget-object p2, Landroidx/compose/material3/tokens/FilledButtonTokens;->INSTANCE:Landroidx/compose/material3/tokens/FilledButtonTokens;

    invoke-virtual {p2}, Landroidx/compose/material3/tokens/FilledButtonTokens;->getHoveredContainerElevation-D9Ej5fM()F

    move-result p4

    :cond_3
    move v0, p4

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_4

    .line 836
    sget-object p2, Landroidx/compose/material3/tokens/FilledButtonTokens;->INSTANCE:Landroidx/compose/material3/tokens/FilledButtonTokens;

    invoke-virtual {p2}, Landroidx/compose/material3/tokens/FilledButtonTokens;->getDisabledContainerElevation-D9Ej5fM()F

    move-result p5

    :cond_4
    move p8, p5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p2

    if-eqz p2, :cond_5

    const/4 p2, -0x1

    const-string p3, "androidx.compose.material3.ButtonDefaults.buttonElevation (Button.kt:837)"

    const p4, 0x6cf1e157

    .line 838
    invoke-static {p4, p7, p2, p3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_5
    new-instance v1, Landroidx/compose/material3/ButtonElevation;

    const/4 v2, 0x0

    move-object p2, v1

    move p3, p1

    move p4, p0

    move p5, p6

    move p6, v0

    move p7, p8

    move-object p8, v2

    invoke-direct/range {p2 .. p8}, Landroidx/compose/material3/ButtonElevation;-><init>(FFFFFLkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_6
    return-object v1
.end method

.method public final getContentPadding()Landroidx/compose/foundation/layout/PaddingValues;
    .locals 0

    .line 495
    sget-object p0, Landroidx/compose/material3/ButtonDefaults;->ContentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    return-object p0
.end method

.method public final getDefaultButtonColors$material3_release(Landroidx/compose/material3/ColorScheme;)Landroidx/compose/material3/ButtonColors;
    .locals 18

    move-object/from16 v0, p1

    .line 626
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/material3/ColorScheme;->getDefaultButtonColorsCached$material3_release()Landroidx/compose/material3/ButtonColors;

    move-result-object v1

    if-nez v1, :cond_0

    .line 627
    new-instance v1, Landroidx/compose/material3/ButtonColors;

    .line 628
    sget-object v2, Landroidx/compose/material3/tokens/FilledButtonTokens;->INSTANCE:Landroidx/compose/material3/tokens/FilledButtonTokens;

    invoke-virtual {v2}, Landroidx/compose/material3/tokens/FilledButtonTokens;->getContainerColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v3

    invoke-static {v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v3

    .line 629
    invoke-virtual {v2}, Landroidx/compose/material3/tokens/FilledButtonTokens;->getLabelTextColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v5

    invoke-static {v0, v5}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v5

    .line 631
    invoke-virtual {v2}, Landroidx/compose/material3/tokens/FilledButtonTokens;->getDisabledContainerColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v7

    invoke-static {v0, v7}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v8

    .line 632
    invoke-virtual {v2}, Landroidx/compose/material3/tokens/FilledButtonTokens;->getDisabledContainerOpacity()F

    move-result v10

    const/16 v14, 0xe

    const/4 v15, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v8 .. v15}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v7

    .line 634
    invoke-virtual {v2}, Landroidx/compose/material3/tokens/FilledButtonTokens;->getDisabledLabelTextColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v9

    invoke-static {v0, v9}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v10

    .line 635
    invoke-virtual {v2}, Landroidx/compose/material3/tokens/FilledButtonTokens;->getDisabledLabelTextOpacity()F

    move-result v12

    const/16 v16, 0xe

    const/16 v17, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v10 .. v17}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v9

    const/4 v11, 0x0

    move-object v2, v1

    .line 627
    invoke-direct/range {v2 .. v11}, Landroidx/compose/material3/ButtonColors;-><init>(JJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 637
    invoke-virtual {v0, v1}, Landroidx/compose/material3/ColorScheme;->setDefaultButtonColorsCached$material3_release(Landroidx/compose/material3/ButtonColors;)V

    :cond_0
    return-object v1
.end method

.method public final getDefaultTextButtonColors$material3_release(Landroidx/compose/material3/ColorScheme;)Landroidx/compose/material3/ButtonColors;
    .locals 18

    move-object/from16 v0, p1

    .line 806
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/material3/ColorScheme;->getDefaultTextButtonColorsCached$material3_release()Landroidx/compose/material3/ButtonColors;

    move-result-object v1

    if-nez v1, :cond_0

    .line 807
    new-instance v1, Landroidx/compose/material3/ButtonColors;

    .line 808
    sget-object v2, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color$Companion;->getTransparent-0d7_KjU()J

    move-result-wide v3

    .line 810
    sget-object v5, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->Primary:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v0, v5}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v5

    .line 811
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color$Companion;->getTransparent-0d7_KjU()J

    move-result-wide v7

    .line 813
    sget-object v2, Landroidx/compose/material3/tokens/TextButtonTokens;->INSTANCE:Landroidx/compose/material3/tokens/TextButtonTokens;

    invoke-virtual {v2}, Landroidx/compose/material3/tokens/TextButtonTokens;->getDisabledLabelColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v9

    invoke-static {v0, v9}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v10

    .line 814
    invoke-virtual {v2}, Landroidx/compose/material3/tokens/TextButtonTokens;->getDisabledLabelOpacity()F

    move-result v12

    const/16 v16, 0xe

    const/16 v17, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v10 .. v17}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v9

    const/4 v11, 0x0

    move-object v2, v1

    .line 807
    invoke-direct/range {v2 .. v11}, Landroidx/compose/material3/ButtonColors;-><init>(JJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 816
    invoke-virtual {v0, v1}, Landroidx/compose/material3/ColorScheme;->setDefaultTextButtonColorsCached$material3_release(Landroidx/compose/material3/ButtonColors;)V

    :cond_0
    return-object v1
.end method

.method public final getMinHeight-D9Ej5fM()F
    .locals 0

    .line 559
    sget p0, Landroidx/compose/material3/ButtonDefaults;->MinHeight:F

    return p0
.end method

.method public final getMinWidth-D9Ej5fM()F
    .locals 0

    .line 553
    sget p0, Landroidx/compose/material3/ButtonDefaults;->MinWidth:F

    return p0
.end method

.method public final getShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;
    .locals 2

    .line 577
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, -0x1

    const-string v0, "androidx.compose.material3.ButtonDefaults.<get-shape> (Button.kt:576)"

    const v1, -0x499b6e0d

    invoke-static {v1, p2, p0, v0}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    sget-object p0, Landroidx/compose/material3/tokens/ButtonSmallTokens;->INSTANCE:Landroidx/compose/material3/tokens/ButtonSmallTokens;

    invoke-virtual {p0}, Landroidx/compose/material3/tokens/ButtonSmallTokens;->getContainerShapeRound()Landroidx/compose/material3/tokens/ShapeKeyTokens;

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

.method public final getTextButtonContentPadding()Landroidx/compose/foundation/layout/PaddingValues;
    .locals 0

    .line 530
    sget-object p0, Landroidx/compose/material3/ButtonDefaults;->TextButtonContentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    return-object p0
.end method

.method public final getTextShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;
    .locals 2

    .line 593
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, -0x1

    const-string v0, "androidx.compose.material3.ButtonDefaults.<get-textShape> (Button.kt:592)"

    const v1, -0x14cf2c33

    invoke-static {v1, p2, p0, v0}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    sget-object p0, Landroidx/compose/material3/tokens/ButtonSmallTokens;->INSTANCE:Landroidx/compose/material3/tokens/ButtonSmallTokens;

    invoke-virtual {p0}, Landroidx/compose/material3/tokens/ButtonSmallTokens;->getContainerShapeRound()Landroidx/compose/material3/tokens/ShapeKeyTokens;

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

.method public final textButtonColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ButtonColors;
    .locals 3

    .line 779
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "androidx.compose.material3.ButtonDefaults.textButtonColors (Button.kt:778)"

    const v2, 0x7013bc50

    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    sget-object p2, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    const/4 v0, 0x6

    invoke-virtual {p2, p1, v0}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/material3/ButtonDefaults;->getDefaultTextButtonColors$material3_release(Landroidx/compose/material3/ColorScheme;)Landroidx/compose/material3/ButtonColors;

    move-result-object p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1
    return-object p0
.end method
