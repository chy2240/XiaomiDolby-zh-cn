.class public abstract Landroidx/compose/ui/text/platform/AndroidParagraphHelper_androidKt;
.super Ljava/lang/Object;
.source "AndroidParagraphHelper.android.kt"


# static fields
.field private static final NoopSpan:Landroidx/compose/ui/text/platform/AndroidParagraphHelper_androidKt$NoopSpan$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 134
    new-instance v0, Landroidx/compose/ui/text/platform/AndroidParagraphHelper_androidKt$NoopSpan$1;

    invoke-direct {v0}, Landroidx/compose/ui/text/platform/AndroidParagraphHelper_androidKt$NoopSpan$1;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/platform/AndroidParagraphHelper_androidKt;->NoopSpan:Landroidx/compose/ui/text/platform/AndroidParagraphHelper_androidKt$NoopSpan$1;

    return-void
.end method

.method public static final createCharSequence(Ljava/lang/String;FLandroidx/compose/ui/text/TextStyle;Ljava/util/List;Ljava/util/List;Landroidx/compose/ui/unit/Density;Lkotlin/jvm/functions/Function4;Z)Ljava/lang/CharSequence;
    .locals 8

    const/4 v0, 0x0

    if-eqz p7, :cond_2

    .line 62
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->isConfigured()Z

    move-result p7

    if-eqz p7, :cond_2

    .line 64
    invoke-virtual {p2}, Landroidx/compose/ui/text/TextStyle;->getPlatformStyle()Landroidx/compose/ui/text/PlatformTextStyle;

    move-result-object p7

    if-eqz p7, :cond_0

    invoke-virtual {p7}, Landroidx/compose/ui/text/PlatformTextStyle;->getParagraphStyle()Landroidx/compose/ui/text/PlatformParagraphStyle;

    move-result-object p7

    if-eqz p7, :cond_0

    invoke-virtual {p7}, Landroidx/compose/ui/text/PlatformParagraphStyle;->getEmojiSupportMatch-_3YsG6Y()I

    move-result p7

    invoke-static {p7}, Landroidx/compose/ui/text/EmojiSupportMatch;->box-impl(I)Landroidx/compose/ui/text/EmojiSupportMatch;

    move-result-object p7

    goto :goto_0

    :cond_0
    const/4 p7, 0x0

    .line 66
    :goto_0
    sget-object v1, Landroidx/compose/ui/text/EmojiSupportMatch;->Companion:Landroidx/compose/ui/text/EmojiSupportMatch$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/text/EmojiSupportMatch$Companion;->getAll-_3YsG6Y()I

    move-result v1

    if-nez p7, :cond_1

    move v6, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p7}, Landroidx/compose/ui/text/EmojiSupportMatch;->unbox-impl()I

    move-result p7

    invoke-static {p7, v1}, Landroidx/compose/ui/text/EmojiSupportMatch;->equals-impl0(II)Z

    move-result p7

    move v6, p7

    .line 71
    :goto_1
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->get()Landroidx/emoji2/text/EmojiCompat;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const v5, 0x7fffffff

    const/4 v3, 0x0

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Landroidx/emoji2/text/EmojiCompat;->process(Ljava/lang/CharSequence;IIII)Ljava/lang/CharSequence;

    move-result-object p7

    invoke-static {p7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    move-object p7, p0

    .line 77
    :goto_2
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 78
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 79
    invoke-virtual {p2}, Landroidx/compose/ui/text/TextStyle;->getTextIndent()Landroidx/compose/ui/text/style/TextIndent;

    move-result-object v1

    sget-object v2, Landroidx/compose/ui/text/style/TextIndent;->Companion:Landroidx/compose/ui/text/style/TextIndent$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/text/style/TextIndent$Companion;->getNone()Landroidx/compose/ui/text/style/TextIndent;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 80
    invoke-virtual {p2}, Landroidx/compose/ui/text/TextStyle;->getLineHeight-XSAIIZE()J

    move-result-wide v1

    .line 247
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/TextUnit;->getRawType-impl(J)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    return-object p7

    .line 86
    :cond_3
    instance-of v1, p7, Landroid/text/Spannable;

    if-eqz v1, :cond_4

    .line 87
    check-cast p7, Landroid/text/Spannable;

    goto :goto_3

    .line 89
    :cond_4
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object p7, v1

    .line 97
    :goto_3
    invoke-virtual {p2}, Landroidx/compose/ui/text/TextStyle;->getTextDecoration()Landroidx/compose/ui/text/style/TextDecoration;

    move-result-object v1

    sget-object v2, Landroidx/compose/ui/text/style/TextDecoration;->Companion:Landroidx/compose/ui/text/style/TextDecoration$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/text/style/TextDecoration$Companion;->getUnderline()Landroidx/compose/ui/text/style/TextDecoration;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 98
    sget-object v1, Landroidx/compose/ui/text/platform/AndroidParagraphHelper_androidKt;->NoopSpan:Landroidx/compose/ui/text/platform/AndroidParagraphHelper_androidKt$NoopSpan$1;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-static {p7, v1, v0, p0}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->setSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 102
    :cond_5
    invoke-static {p2}, Landroidx/compose/ui/text/platform/AndroidParagraphHelper_androidKt;->isIncludeFontPaddingEnabled(Landroidx/compose/ui/text/TextStyle;)Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {p2}, Landroidx/compose/ui/text/TextStyle;->getLineHeightStyle()Landroidx/compose/ui/text/style/LineHeightStyle;

    move-result-object p0

    if-nez p0, :cond_6

    .line 106
    invoke-virtual {p2}, Landroidx/compose/ui/text/TextStyle;->getLineHeight-XSAIIZE()J

    move-result-wide v0

    .line 105
    invoke-static {p7, v0, v1, p1, p5}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->setLineHeight-r9BaKPg(Landroid/text/Spannable;JFLandroidx/compose/ui/unit/Density;)V

    goto :goto_4

    .line 111
    :cond_6
    invoke-virtual {p2}, Landroidx/compose/ui/text/TextStyle;->getLineHeightStyle()Landroidx/compose/ui/text/style/LineHeightStyle;

    move-result-object p0

    if-nez p0, :cond_7

    sget-object p0, Landroidx/compose/ui/text/style/LineHeightStyle;->Companion:Landroidx/compose/ui/text/style/LineHeightStyle$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/text/style/LineHeightStyle$Companion;->getDefault()Landroidx/compose/ui/text/style/LineHeightStyle;

    move-result-object p0

    :cond_7
    move-object v7, p0

    .line 113
    invoke-virtual {p2}, Landroidx/compose/ui/text/TextStyle;->getLineHeight-XSAIIZE()J

    move-result-wide v3

    move-object v2, p7

    move v5, p1

    move-object v6, p5

    .line 112
    invoke-static/range {v2 .. v7}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->setLineHeight-KmRG4DE(Landroid/text/Spannable;JFLandroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/style/LineHeightStyle;)V

    .line 120
    :goto_4
    invoke-virtual {p2}, Landroidx/compose/ui/text/TextStyle;->getTextIndent()Landroidx/compose/ui/text/style/TextIndent;

    move-result-object p0

    invoke-static {p7, p0, p1, p5}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->setTextIndent(Landroid/text/Spannable;Landroidx/compose/ui/text/style/TextIndent;FLandroidx/compose/ui/unit/Density;)V

    .line 122
    invoke-static {p7, p2, p3, p5, p6}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->setSpanStyles(Landroid/text/Spannable;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Landroidx/compose/ui/unit/Density;Lkotlin/jvm/functions/Function4;)V

    .line 124
    invoke-static {p7, p4, p5}, Landroidx/compose/ui/text/platform/extensions/PlaceholderExtensions_androidKt;->setPlaceholders(Landroid/text/Spannable;Ljava/util/List;Landroidx/compose/ui/unit/Density;)V

    return-object p7
.end method

.method public static final isIncludeFontPaddingEnabled(Landroidx/compose/ui/text/TextStyle;)Z
    .locals 0

    .line 130
    invoke-virtual {p0}, Landroidx/compose/ui/text/TextStyle;->getPlatformStyle()Landroidx/compose/ui/text/PlatformTextStyle;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/text/PlatformTextStyle;->getParagraphStyle()Landroidx/compose/ui/text/PlatformParagraphStyle;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/text/PlatformParagraphStyle;->getIncludeFontPadding()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
