.class public abstract Landroidx/compose/material3/TypographyKt;
.super Ljava/lang/Object;
.source "Typography.kt"


# static fields
.field private static final LocalTypography:Landroidx/compose/runtime/ProvidableCompositionLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 589
    sget-object v0, Landroidx/compose/material3/TypographyKt$LocalTypography$1;->INSTANCE:Landroidx/compose/material3/TypographyKt$LocalTypography$1;

    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->staticCompositionLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-void
.end method

.method private static final fromToken(Landroidx/compose/material3/Typography;Landroidx/compose/material3/tokens/TypographyKeyTokens;)Landroidx/compose/ui/text/TextStyle;
    .locals 1

    .line 552
    sget-object v0, Landroidx/compose/material3/TypographyKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 582
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :pswitch_0
    invoke-virtual {p0}, Landroidx/compose/material3/Typography;->getLabelSmallEmphasized()Landroidx/compose/ui/text/TextStyle;

    move-result-object p0

    goto/16 :goto_0

    .line 581
    :pswitch_1
    invoke-virtual {p0}, Landroidx/compose/material3/Typography;->getLabelMediumEmphasized()Landroidx/compose/ui/text/TextStyle;

    move-result-object p0

    goto/16 :goto_0

    .line 580
    :pswitch_2
    invoke-virtual {p0}, Landroidx/compose/material3/Typography;->getLabelLargeEmphasized()Landroidx/compose/ui/text/TextStyle;

    move-result-object p0

    goto/16 :goto_0

    .line 579
    :pswitch_3
    invoke-virtual {p0}, Landroidx/compose/material3/Typography;->getBodySmallEmphasized()Landroidx/compose/ui/text/TextStyle;

    move-result-object p0

    goto/16 :goto_0

    .line 578
    :pswitch_4
    invoke-virtual {p0}, Landroidx/compose/material3/Typography;->getBodyMediumEmphasized()Landroidx/compose/ui/text/TextStyle;

    move-result-object p0

    goto/16 :goto_0

    .line 577
    :pswitch_5
    invoke-virtual {p0}, Landroidx/compose/material3/Typography;->getBodyLargeEmphasized()Landroidx/compose/ui/text/TextStyle;

    move-result-object p0

    goto/16 :goto_0

    .line 576
    :pswitch_6
    invoke-virtual {p0}, Landroidx/compose/material3/Typography;->getTitleSmallEmphasized()Landroidx/compose/ui/text/TextStyle;

    move-result-object p0

    goto/16 :goto_0

    .line 575
    :pswitch_7
    invoke-virtual {p0}, Landroidx/compose/material3/Typography;->getTitleMediumEmphasized()Landroidx/compose/ui/text/TextStyle;

    move-result-object p0

    goto/16 :goto_0

    .line 574
    :pswitch_8
    invoke-virtual {p0}, Landroidx/compose/material3/Typography;->getTitleLargeEmphasized()Landroidx/compose/ui/text/TextStyle;

    move-result-object p0

    goto/16 :goto_0

    .line 573
    :pswitch_9
    invoke-virtual {p0}, Landroidx/compose/material3/Typography;->getHeadlineSmallEmphasized()Landroidx/compose/ui/text/TextStyle;

    move-result-object p0

    goto/16 :goto_0

    .line 572
    :pswitch_a
    invoke-virtual {p0}, Landroidx/compose/material3/Typography;->getHeadlineMediumEmphasized()Landroidx/compose/ui/text/TextStyle;

    move-result-object p0

    goto/16 :goto_0

    .line 571
    :pswitch_b
    invoke-virtual {p0}, Landroidx/compose/material3/Typography;->getHeadlineLargeEmphasized()Landroidx/compose/ui/text/TextStyle;

    move-result-object p0

    goto :goto_0

    .line 570
    :pswitch_c
    invoke-virtual {p0}, Landroidx/compose/material3/Typography;->getDisplaySmallEmphasized()Landroidx/compose/ui/text/TextStyle;

    move-result-object p0

    goto :goto_0

    .line 569
    :pswitch_d
    invoke-virtual {p0}, Landroidx/compose/material3/Typography;->getDisplayMediumEmphasized()Landroidx/compose/ui/text/TextStyle;

    move-result-object p0

    goto :goto_0

    .line 568
    :pswitch_e
    invoke-virtual {p0}, Landroidx/compose/material3/Typography;->getDisplayLargeEmphasized()Landroidx/compose/ui/text/TextStyle;

    move-result-object p0

    goto :goto_0

    .line 567
    :pswitch_f
    invoke-virtual {p0}, Landroidx/compose/material3/Typography;->getLabelSmall()Landroidx/compose/ui/text/TextStyle;

    move-result-object p0

    goto :goto_0

    .line 566
    :pswitch_10
    invoke-virtual {p0}, Landroidx/compose/material3/Typography;->getLabelMedium()Landroidx/compose/ui/text/TextStyle;

    move-result-object p0

    goto :goto_0

    .line 565
    :pswitch_11
    invoke-virtual {p0}, Landroidx/compose/material3/Typography;->getLabelLarge()Landroidx/compose/ui/text/TextStyle;

    move-result-object p0

    goto :goto_0

    .line 564
    :pswitch_12
    invoke-virtual {p0}, Landroidx/compose/material3/Typography;->getBodySmall()Landroidx/compose/ui/text/TextStyle;

    move-result-object p0

    goto :goto_0

    .line 563
    :pswitch_13
    invoke-virtual {p0}, Landroidx/compose/material3/Typography;->getBodyMedium()Landroidx/compose/ui/text/TextStyle;

    move-result-object p0

    goto :goto_0

    .line 562
    :pswitch_14
    invoke-virtual {p0}, Landroidx/compose/material3/Typography;->getBodyLarge()Landroidx/compose/ui/text/TextStyle;

    move-result-object p0

    goto :goto_0

    .line 561
    :pswitch_15
    invoke-virtual {p0}, Landroidx/compose/material3/Typography;->getTitleSmall()Landroidx/compose/ui/text/TextStyle;

    move-result-object p0

    goto :goto_0

    .line 560
    :pswitch_16
    invoke-virtual {p0}, Landroidx/compose/material3/Typography;->getTitleMedium()Landroidx/compose/ui/text/TextStyle;

    move-result-object p0

    goto :goto_0

    .line 559
    :pswitch_17
    invoke-virtual {p0}, Landroidx/compose/material3/Typography;->getTitleLarge()Landroidx/compose/ui/text/TextStyle;

    move-result-object p0

    goto :goto_0

    .line 558
    :pswitch_18
    invoke-virtual {p0}, Landroidx/compose/material3/Typography;->getHeadlineSmall()Landroidx/compose/ui/text/TextStyle;

    move-result-object p0

    goto :goto_0

    .line 557
    :pswitch_19
    invoke-virtual {p0}, Landroidx/compose/material3/Typography;->getHeadlineMedium()Landroidx/compose/ui/text/TextStyle;

    move-result-object p0

    goto :goto_0

    .line 556
    :pswitch_1a
    invoke-virtual {p0}, Landroidx/compose/material3/Typography;->getHeadlineLarge()Landroidx/compose/ui/text/TextStyle;

    move-result-object p0

    goto :goto_0

    .line 555
    :pswitch_1b
    invoke-virtual {p0}, Landroidx/compose/material3/Typography;->getDisplaySmall()Landroidx/compose/ui/text/TextStyle;

    move-result-object p0

    goto :goto_0

    .line 554
    :pswitch_1c
    invoke-virtual {p0}, Landroidx/compose/material3/Typography;->getDisplayMedium()Landroidx/compose/ui/text/TextStyle;

    move-result-object p0

    goto :goto_0

    .line 553
    :pswitch_1d
    invoke-virtual {p0}, Landroidx/compose/material3/Typography;->getDisplayLarge()Landroidx/compose/ui/text/TextStyle;

    move-result-object p0

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final getLocalTypography()Landroidx/compose/runtime/ProvidableCompositionLocal;
    .locals 1

    .line 589
    sget-object v0, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-object v0
.end method

.method public static final getValue(Landroidx/compose/material3/tokens/TypographyKeyTokens;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/text/TextStyle;
    .locals 3

    .line 587
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "androidx.compose.material3.<get-value> (Typography.kt:586)"

    const v2, -0x3e879211

    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    sget-object p2, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    const/4 v0, 0x6

    invoke-virtual {p2, p1, v0}, Landroidx/compose/material3/MaterialTheme;->getTypography(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/Typography;

    move-result-object p1

    invoke-static {p1, p0}, Landroidx/compose/material3/TypographyKt;->fromToken(Landroidx/compose/material3/Typography;Landroidx/compose/material3/tokens/TypographyKeyTokens;)Landroidx/compose/ui/text/TextStyle;

    move-result-object p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1
    return-object p0
.end method
