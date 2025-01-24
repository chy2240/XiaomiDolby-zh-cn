.class public abstract Landroidx/compose/ui/text/android/TextLayout_androidKt;
.super Ljava/lang/Object;
.source "TextLayout.android.kt"


# static fields
.field private static final SharedTextAndroidCanvas:Landroidx/compose/ui/text/android/TextAndroidCanvas;

.field private static final ZeroVerticalPadding:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 81
    new-instance v0, Landroidx/compose/ui/text/android/TextAndroidCanvas;

    invoke-direct {v0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/android/TextLayout_androidKt;->SharedTextAndroidCanvas:Landroidx/compose/ui/text/android/TextAndroidCanvas;

    const/4 v0, 0x0

    .line 1010
    invoke-static {v0, v0}, Landroidx/compose/ui/text/android/TextLayout_androidKt;->VerticalPaddings(II)J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/ui/text/android/TextLayout_androidKt;->ZeroVerticalPadding:J

    return-void
.end method

.method public static final VerticalPaddings(II)J
    .locals 4

    int-to-long v0, p0

    const/16 p0, 0x20

    shl-long/2addr v0, p0

    int-to-long p0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    .line 952
    invoke-static {p0, p1}, Landroidx/compose/ui/text/android/VerticalPaddings;->constructor-impl(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$getLastLineMetrics(Landroidx/compose/ui/text/android/TextLayout;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;[Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;)Landroid/graphics/Paint$FontMetricsInt;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/text/android/TextLayout_androidKt;->getLastLineMetrics(Landroidx/compose/ui/text/android/TextLayout;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;[Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;)Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getLineHeightPaddings([Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;)J
    .locals 2

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/text/android/TextLayout_androidKt;->getLineHeightPaddings([Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$getLineHeightSpans(Landroidx/compose/ui/text/android/TextLayout;)[Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/text/android/TextLayout_androidKt;->getLineHeightSpans(Landroidx/compose/ui/text/android/TextLayout;)[Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSharedTextAndroidCanvas$p()Landroidx/compose/ui/text/android/TextAndroidCanvas;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/text/android/TextLayout_androidKt;->SharedTextAndroidCanvas:Landroidx/compose/ui/text/android/TextAndroidCanvas;

    return-object v0
.end method

.method public static final synthetic access$getVerticalPaddings(Landroidx/compose/ui/text/android/TextLayout;)J
    .locals 2

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/text/android/TextLayout_androidKt;->getVerticalPaddings(Landroidx/compose/ui/text/android/TextLayout;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$getZeroVerticalPadding$p()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/ui/text/android/TextLayout_androidKt;->ZeroVerticalPadding:J

    return-wide v0
.end method

.method private static final getLastLineMetrics(Landroidx/compose/ui/text/android/TextLayout;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;[Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;)Landroid/graphics/Paint$FontMetricsInt;
    .locals 27

    move-object/from16 v0, p3

    .line 1039
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/android/TextLayout;->getLineCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 1042
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/android/TextLayout;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/android/TextLayout;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v3

    if-ne v2, v3, :cond_2

    if-eqz v0, :cond_2

    .line 1043
    array-length v2, v0

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 1045
    :cond_0
    new-instance v4, Landroid/text/SpannableString;

    const-string v2, "\u200b"

    invoke-direct {v4, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1046
    invoke-static/range {p3 .. p3}, Lkotlin/collections/ArraysKt;->first([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

    .line 1050
    invoke-virtual {v4}, Landroid/text/SpannableString;->length()I

    move-result v2

    const/4 v9, 0x0

    if-eqz v1, :cond_1

    .line 1052
    invoke-virtual {v0}, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->getTrimLastLineBottom()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v9

    goto :goto_0

    .line 1055
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->getTrimLastLineBottom()Z

    move-result v1

    .line 1048
    :goto_0
    invoke-virtual {v0, v9, v2, v1}, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->copy$ui_text_release(IIZ)Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

    move-result-object v0

    .line 1059
    invoke-virtual {v4}, Landroid/text/SpannableString;->length()I

    move-result v1

    const/16 v2, 0x21

    invoke-virtual {v4, v0, v9, v1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1062
    sget-object v3, Landroidx/compose/ui/text/android/StaticLayoutFactory;->INSTANCE:Landroidx/compose/ui/text/android/StaticLayoutFactory;

    .line 1067
    invoke-virtual {v4}, Landroid/text/SpannableString;->length()I

    move-result v8

    .line 1069
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/android/TextLayout;->getIncludePadding()Z

    move-result v17

    .line 1070
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/android/TextLayout;->getFallbackLineSpacing()Z

    move-result v18

    const v25, 0x1f9fc0

    const/16 v26, 0x0

    const v6, 0x7fffffff

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v5, p1

    move v0, v9

    move-object/from16 v9, p2

    .line 1062
    invoke-static/range {v3 .. v26}, Landroidx/compose/ui/text/android/StaticLayoutFactory;->create$default(Landroidx/compose/ui/text/android/StaticLayoutFactory;Ljava/lang/CharSequence;Landroid/text/TextPaint;IIILandroid/text/TextDirectionHeuristic;Landroid/text/Layout$Alignment;ILandroid/text/TextUtils$TruncateAt;IFFIZZIIII[I[IILjava/lang/Object;)Landroid/text/StaticLayout;

    move-result-object v1

    .line 1074
    new-instance v2, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v2}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    .line 1075
    invoke-virtual {v1, v0}, Landroid/text/StaticLayout;->getLineAscent(I)I

    move-result v3

    iput v3, v2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 1076
    invoke-virtual {v1, v0}, Landroid/text/StaticLayout;->getLineDescent(I)I

    move-result v3

    iput v3, v2, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 1077
    invoke-virtual {v1, v0}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v3

    iput v3, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 1078
    invoke-virtual {v1, v0}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v0

    iput v0, v2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    return-object v2

    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static final getLineHeightPaddings([Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;)J
    .locals 6

    .line 1017
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v4, p0, v1

    .line 1018
    invoke-virtual {v4}, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->getFirstAscentDiff()I

    move-result v5

    if-gez v5, :cond_0

    .line 1019
    invoke-virtual {v4}, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->getFirstAscentDiff()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1021
    :cond_0
    invoke-virtual {v4}, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->getLastDescentDiff()I

    move-result v5

    if-gez v5, :cond_1

    .line 1022
    invoke-virtual {v4}, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->getLastDescentDiff()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    if-nez v3, :cond_3

    .line 1027
    sget-wide v0, Landroidx/compose/ui/text/android/TextLayout_androidKt;->ZeroVerticalPadding:J

    goto :goto_1

    .line 1029
    :cond_3
    invoke-static {v2, v3}, Landroidx/compose/ui/text/android/TextLayout_androidKt;->VerticalPaddings(II)J

    move-result-wide v0

    :goto_1
    return-wide v0
.end method

.method private static final getLineHeightSpans(Landroidx/compose/ui/text/android/TextLayout;)[Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;
    .locals 4

    .line 1088
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spanned;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1091
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type android.text.Spanned"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/text/Spanned;

    const-class v3, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

    invoke-static {v0, v3}, Landroidx/compose/ui/text/android/SpannedExtensions_androidKt;->hasSpan(Landroid/text/Spanned;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    return-object v1

    .line 1095
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/text/Spanned;

    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    const-class v1, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

    const/4 v2, 0x0

    invoke-interface {v0, v2, p0, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

    return-object p0
.end method

.method public static final getTextDirectionHeuristic(I)Landroid/text/TextDirectionHeuristic;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    .line 910
    sget-object p0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    .line 905
    :cond_0
    sget-object p0, Landroid/text/TextDirectionHeuristics;->LOCALE:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    .line 908
    :cond_1
    sget-object p0, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    .line 907
    :cond_2
    sget-object p0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    .line 909
    :cond_3
    sget-object p0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    .line 906
    :cond_4
    sget-object p0, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    .line 904
    :cond_5
    sget-object p0, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    :goto_0
    return-object p0
.end method

.method private static final getVerticalPaddings(Landroidx/compose/ui/text/android/TextLayout;)J
    .locals 7

    .line 966
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getIncludePadding()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->isFallbackLinespacingApplied$ui_text_release()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 968
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 969
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 972
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getLayout()Landroid/text/Layout;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getLayout()Landroid/text/Layout;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    invoke-static {v0, v1, v2, v4}, Landroidx/compose/ui/text/android/PaintExtensions_androidKt;->getCharSequenceBounds(Landroid/text/TextPaint;Ljava/lang/CharSequence;II)Landroid/graphics/Rect;

    move-result-object v2

    .line 973
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getLayout()Landroid/text/Layout;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/text/Layout;->getLineAscent(I)I

    move-result v3

    .line 978
    iget v4, v2, Landroid/graphics/Rect;->top:I

    if-ge v4, v3, :cond_1

    sub-int/2addr v3, v4

    goto :goto_0

    .line 981
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/Layout;->getTopPadding()I

    move-result v3

    .line 985
    :goto_0
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getLineCount()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    goto :goto_1

    .line 989
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getLineCount()I

    move-result v2

    sub-int/2addr v2, v5

    .line 990
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getLayout()Landroid/text/Layout;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getLayout()Landroid/text/Layout;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v2

    invoke-static {v0, v1, v4, v2}, Landroidx/compose/ui/text/android/PaintExtensions_androidKt;->getCharSequenceBounds(Landroid/text/TextPaint;Ljava/lang/CharSequence;II)Landroid/graphics/Rect;

    move-result-object v2

    .line 992
    :goto_1
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getLineCount()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v0

    .line 997
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    if-le v1, v0, :cond_3

    sub-int/2addr v1, v0

    goto :goto_2

    .line 1000
    :cond_3
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getLayout()Landroid/text/Layout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/text/Layout;->getBottomPadding()I

    move-result v1

    :goto_2
    if-nez v3, :cond_4

    if-nez v1, :cond_4

    .line 1004
    sget-wide v0, Landroidx/compose/ui/text/android/TextLayout_androidKt;->ZeroVerticalPadding:J

    goto :goto_3

    .line 1006
    :cond_4
    invoke-static {v3, v1}, Landroidx/compose/ui/text/android/TextLayout_androidKt;->VerticalPaddings(II)J

    move-result-wide v0

    :goto_3
    return-wide v0

    .line 966
    :cond_5
    :goto_4
    sget-wide v0, Landroidx/compose/ui/text/android/TextLayout_androidKt;->ZeroVerticalPadding:J

    return-wide v0
.end method

.method public static final isLineEllipsized(Landroid/text/Layout;I)Z
    .locals 0

    .line 1099
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
