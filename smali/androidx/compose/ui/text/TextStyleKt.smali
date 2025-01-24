.class public abstract Landroidx/compose/ui/text/TextStyleKt;
.super Ljava/lang/Object;
.source "TextStyle.kt"


# direct methods
.method public static final synthetic access$createPlatformTextStyleInternal(Landroidx/compose/ui/text/PlatformSpanStyle;Landroidx/compose/ui/text/PlatformParagraphStyle;)Landroidx/compose/ui/text/PlatformTextStyle;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/text/TextStyleKt;->createPlatformTextStyleInternal(Landroidx/compose/ui/text/PlatformSpanStyle;Landroidx/compose/ui/text/PlatformParagraphStyle;)Landroidx/compose/ui/text/PlatformTextStyle;

    move-result-object p0

    return-object p0
.end method

.method private static final createPlatformTextStyleInternal(Landroidx/compose/ui/text/PlatformSpanStyle;Landroidx/compose/ui/text/PlatformParagraphStyle;)Landroidx/compose/ui/text/PlatformTextStyle;
    .locals 0

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1622
    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/ui/text/AndroidTextStyle_androidKt;->createPlatformTextStyle(Landroidx/compose/ui/text/PlatformSpanStyle;Landroidx/compose/ui/text/PlatformParagraphStyle;)Landroidx/compose/ui/text/PlatformTextStyle;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final lerp(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;F)Landroidx/compose/ui/text/TextStyle;
    .locals 3

    .line 1573
    new-instance v0, Landroidx/compose/ui/text/TextStyle;

    .line 1574
    invoke-virtual {p0}, Landroidx/compose/ui/text/TextStyle;->toSpanStyle()Landroidx/compose/ui/text/SpanStyle;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/compose/ui/text/TextStyle;->toSpanStyle()Landroidx/compose/ui/text/SpanStyle;

    move-result-object v2

    invoke-static {v1, v2, p2}, Landroidx/compose/ui/text/SpanStyleKt;->lerp(Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/SpanStyle;F)Landroidx/compose/ui/text/SpanStyle;

    move-result-object v1

    .line 1575
    invoke-virtual {p0}, Landroidx/compose/ui/text/TextStyle;->toParagraphStyle()Landroidx/compose/ui/text/ParagraphStyle;

    move-result-object p0

    invoke-virtual {p1}, Landroidx/compose/ui/text/TextStyle;->toParagraphStyle()Landroidx/compose/ui/text/ParagraphStyle;

    move-result-object p1

    invoke-static {p0, p1, p2}, Landroidx/compose/ui/text/ParagraphStyleKt;->lerp(Landroidx/compose/ui/text/ParagraphStyle;Landroidx/compose/ui/text/ParagraphStyle;F)Landroidx/compose/ui/text/ParagraphStyle;

    move-result-object p0

    .line 1573
    invoke-direct {v0, v1, p0}, Landroidx/compose/ui/text/TextStyle;-><init>(Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/ParagraphStyle;)V

    return-object v0
.end method

.method public static final resolveDefaults(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/TextStyle;
    .locals 3

    .line 1589
    new-instance v0, Landroidx/compose/ui/text/TextStyle;

    .line 1590
    invoke-virtual {p0}, Landroidx/compose/ui/text/TextStyle;->getSpanStyle$ui_text_release()Landroidx/compose/ui/text/SpanStyle;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/ui/text/SpanStyleKt;->resolveSpanStyleDefaults(Landroidx/compose/ui/text/SpanStyle;)Landroidx/compose/ui/text/SpanStyle;

    move-result-object v1

    .line 1591
    invoke-virtual {p0}, Landroidx/compose/ui/text/TextStyle;->getParagraphStyle$ui_text_release()Landroidx/compose/ui/text/ParagraphStyle;

    move-result-object v2

    invoke-static {v2, p1}, Landroidx/compose/ui/text/ParagraphStyleKt;->resolveParagraphStyleDefaults(Landroidx/compose/ui/text/ParagraphStyle;Landroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/ParagraphStyle;

    move-result-object p1

    .line 1592
    invoke-virtual {p0}, Landroidx/compose/ui/text/TextStyle;->getPlatformStyle()Landroidx/compose/ui/text/PlatformTextStyle;

    move-result-object p0

    .line 1589
    invoke-direct {v0, v1, p1, p0}, Landroidx/compose/ui/text/TextStyle;-><init>(Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/ParagraphStyle;Landroidx/compose/ui/text/PlatformTextStyle;)V

    return-object v0
.end method

.method public static final resolveTextDirection-IhaHGbI(Landroidx/compose/ui/unit/LayoutDirection;I)I
    .locals 4

    .line 1601
    sget-object v0, Landroidx/compose/ui/text/style/TextDirection;->Companion:Landroidx/compose/ui/text/style/TextDirection$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextDirection$Companion;->getContent-s_7X-co()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/compose/ui/text/style/TextDirection;->equals-impl0(II)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 1602
    sget-object p1, Landroidx/compose/ui/text/TextStyleKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, p1, p0

    if-eq p0, v3, :cond_1

    if-ne p0, v2, :cond_0

    .line 1604
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextDirection$Companion;->getContentOrRtl-s_7X-co()I

    move-result p1

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 1603
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextDirection$Companion;->getContentOrLtr-s_7X-co()I

    move-result p1

    goto :goto_0

    .line 1606
    :cond_2
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextDirection$Companion;->getUnspecified-s_7X-co()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/compose/ui/text/style/TextDirection;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1607
    sget-object p1, Landroidx/compose/ui/text/TextStyleKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, p1, p0

    if-eq p0, v3, :cond_4

    if-ne p0, v2, :cond_3

    .line 1609
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextDirection$Companion;->getRtl-s_7X-co()I

    move-result p1

    goto :goto_0

    :cond_3
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 1608
    :cond_4
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextDirection$Companion;->getLtr-s_7X-co()I

    move-result p1

    :cond_5
    :goto_0
    return p1
.end method
