.class public final Landroidx/compose/ui/text/AndroidParagraph;
.super Ljava/lang/Object;
.source "AndroidParagraph.android.kt"

# interfaces
.implements Landroidx/compose/ui/text/Paragraph;


# instance fields
.field private final charSequence:Ljava/lang/CharSequence;

.field private final constraints:J

.field private final layout:Landroidx/compose/ui/text/android/TextLayout;

.field private final maxLines:I

.field private final overflow:I

.field private final paragraphIntrinsics:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

.field private final placeholderRects:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method private constructor <init>(Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;IIJ)V
    .locals 29

    move-object/from16 v12, p0

    move/from16 v13, p2

    move/from16 v14, p3

    .line 100
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p1

    .line 102
    iput-object v0, v12, Landroidx/compose/ui/text/AndroidParagraph;->paragraphIntrinsics:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    .line 103
    iput v13, v12, Landroidx/compose/ui/text/AndroidParagraph;->maxLines:I

    .line 104
    iput v14, v12, Landroidx/compose/ui/text/AndroidParagraph;->overflow:I

    move-wide/from16 v10, p4

    .line 105
    iput-wide v10, v12, Landroidx/compose/ui/text/AndroidParagraph;->constraints:J

    .line 137
    invoke-static/range {p4 .. p5}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v1

    if-nez v1, :cond_11

    invoke-static/range {p4 .. p5}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v1

    if-nez v1, :cond_11

    const/4 v15, 0x1

    if-lt v13, v15, :cond_10

    .line 143
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->getStyle()Landroidx/compose/ui/text/TextStyle;

    move-result-object v9

    .line 146
    sget-object v16, Landroidx/compose/ui/text/style/TextOverflow;->Companion:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/text/style/TextOverflow$Companion;->getEllipsis-gIe3tQ8()I

    move-result v1

    invoke-static {v14, v1}, Landroidx/compose/ui/text/style/TextOverflow;->equals-impl0(II)Z

    move-result v1

    invoke-static {v9, v1}, Landroidx/compose/ui/text/AndroidParagraph_androidKt;->access$shouldAttachIndentationFixSpan(Landroidx/compose/ui/text/TextStyle;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->getCharSequence$ui_text_release()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/text/AndroidParagraph_androidKt;->access$attachIndentationFixSpan(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->getCharSequence$ui_text_release()Ljava/lang/CharSequence;

    move-result-object v0

    .line 145
    :goto_0
    iput-object v0, v12, Landroidx/compose/ui/text/AndroidParagraph;->charSequence:Ljava/lang/CharSequence;

    .line 156
    invoke-virtual {v9}, Landroidx/compose/ui/text/TextStyle;->getTextAlign-e0LSkKk()I

    move-result v0

    invoke-static {v0}, Landroidx/compose/ui/text/AndroidParagraph_androidKt;->access$toLayoutAlign-aXe7zB0(I)I

    move-result v17

    .line 159
    invoke-virtual {v9}, Landroidx/compose/ui/text/TextStyle;->getTextAlign-e0LSkKk()I

    move-result v0

    .line 160
    sget-object v1, Landroidx/compose/ui/text/style/TextAlign;->Companion:Landroidx/compose/ui/text/style/TextAlign$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/text/style/TextAlign$Companion;->getJustify-e0LSkKk()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/ui/text/style/TextAlign;->equals-impl0(II)Z

    move-result v18

    .line 164
    invoke-virtual {v9}, Landroidx/compose/ui/text/TextStyle;->getParagraphStyle$ui_text_release()Landroidx/compose/ui/text/ParagraphStyle;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/text/ParagraphStyle;->getHyphens-vmbZdU8()I

    move-result v0

    invoke-static {v0}, Landroidx/compose/ui/text/AndroidParagraph_androidKt;->access$toLayoutHyphenationFrequency--3fSNIE(I)I

    move-result v19

    .line 166
    invoke-virtual {v9}, Landroidx/compose/ui/text/TextStyle;->getLineBreak-rAG3T2k()I

    move-result v0

    invoke-static {v0}, Landroidx/compose/ui/text/style/LineBreak;->getStrategy-fcGXIks(I)I

    move-result v0

    invoke-static {v0}, Landroidx/compose/ui/text/AndroidParagraph_androidKt;->access$toLayoutBreakStrategy-xImikfE(I)I

    move-result v20

    .line 167
    invoke-virtual {v9}, Landroidx/compose/ui/text/TextStyle;->getLineBreak-rAG3T2k()I

    move-result v0

    invoke-static {v0}, Landroidx/compose/ui/text/style/LineBreak;->getStrictness-usljTpc(I)I

    move-result v0

    invoke-static {v0}, Landroidx/compose/ui/text/AndroidParagraph_androidKt;->access$toLayoutLineBreakStyle-hpcqdu8(I)I

    move-result v21

    .line 168
    invoke-virtual {v9}, Landroidx/compose/ui/text/TextStyle;->getLineBreak-rAG3T2k()I

    move-result v0

    invoke-static {v0}, Landroidx/compose/ui/text/style/LineBreak;->getWordBreak-jp8hJ3c(I)I

    move-result v0

    invoke-static {v0}, Landroidx/compose/ui/text/AndroidParagraph_androidKt;->access$toLayoutLineBreakWordStyle-wPN0Rpw(I)I

    move-result v22

    .line 172
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/text/style/TextOverflow$Companion;->getEllipsis-gIe3tQ8()I

    move-result v0

    invoke-static {v14, v0}, Landroidx/compose/ui/text/style/TextOverflow;->equals-impl0(II)Z

    move-result v0

    const/16 v23, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    :goto_1
    move-object/from16 v24, v0

    goto :goto_2

    .line 173
    :cond_1
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/text/style/TextOverflow$Companion;->getMiddleEllipsis-gIe3tQ8()I

    move-result v0

    invoke-static {v14, v0}, Landroidx/compose/ui/text/style/TextOverflow;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    goto :goto_1

    .line 174
    :cond_2
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/text/style/TextOverflow$Companion;->getStartEllipsis-gIe3tQ8()I

    move-result v0

    invoke-static {v14, v0}, Landroidx/compose/ui/text/style/TextOverflow;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    goto :goto_1

    :cond_3
    move-object/from16 v24, v23

    :goto_2
    const/16 v25, 0x100

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v3, v24

    move/from16 v4, p2

    move/from16 v5, v19

    move/from16 v6, v20

    move/from16 v7, v21

    move/from16 v8, v22

    move-object/from16 v28, v9

    move-object/from16 v9, v27

    move/from16 v10, v25

    move-object/from16 v11, v26

    .line 179
    invoke-static/range {v0 .. v11}, Landroidx/compose/ui/text/AndroidParagraph;->constructTextLayout$default(Landroidx/compose/ui/text/AndroidParagraph;IILandroid/text/TextUtils$TruncateAt;IIIIILjava/lang/CharSequence;ILjava/lang/Object;)Landroidx/compose/ui/text/android/TextLayout;

    move-result-object v0

    .line 225
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/text/style/TextOverflow$Companion;->getEllipsis-gIe3tQ8()I

    move-result v1

    invoke-static {v14, v1}, Landroidx/compose/ui/text/style/TextOverflow;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Landroidx/compose/ui/text/android/TextLayout;->getHeight()I

    move-result v1

    invoke-static/range {p4 .. p5}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v2

    if-le v1, v2, :cond_5

    if-le v13, v15, :cond_5

    .line 227
    invoke-static/range {p4 .. p5}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/ui/text/AndroidParagraph_androidKt;->access$numberOfLinesThatFitMaxHeight(Landroidx/compose/ui/text/android/TextLayout;I)I

    move-result v1

    if-ltz v1, :cond_4

    if-eq v1, v13, :cond_4

    .line 238
    invoke-static {v1, v15}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v4

    const/16 v10, 0x100

    const/4 v11, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v3, v24

    move/from16 v5, v19

    move/from16 v6, v20

    move/from16 v7, v21

    move/from16 v8, v22

    .line 230
    invoke-static/range {v0 .. v11}, Landroidx/compose/ui/text/AndroidParagraph;->constructTextLayout$default(Landroidx/compose/ui/text/AndroidParagraph;IILandroid/text/TextUtils$TruncateAt;IIIIILjava/lang/CharSequence;ILjava/lang/Object;)Landroidx/compose/ui/text/android/TextLayout;

    move-result-object v0

    .line 228
    :cond_4
    iput-object v0, v12, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    goto :goto_3

    .line 248
    :cond_5
    iput-object v0, v12, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 253
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/AndroidParagraph;->getTextPaint$ui_text_release()Landroidx/compose/ui/text/platform/AndroidTextPaint;

    move-result-object v0

    invoke-virtual/range {v28 .. v28}, Landroidx/compose/ui/text/TextStyle;->getBrush()Landroidx/compose/ui/graphics/Brush;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/AndroidParagraph;->getWidth()F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/AndroidParagraph;->getHeight()F

    move-result v3

    .line 53
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v4, v2

    .line 54
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v2, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    const-wide v7, 0xffffffffL

    and-long/2addr v2, v7

    or-long/2addr v2, v4

    .line 33
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Size;->constructor-impl(J)J

    move-result-wide v2

    .line 253
    invoke-virtual/range {v28 .. v28}, Landroidx/compose/ui/text/TextStyle;->getAlpha()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setBrush-12SF9DM(Landroidx/compose/ui/graphics/Brush;JF)V

    .line 254
    iget-object v0, v12, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    invoke-direct {v12, v0}, Landroidx/compose/ui/text/AndroidParagraph;->getShaderBrushSpans(Landroidx/compose/ui/text/android/TextLayout;)[Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 256
    invoke-static {v0}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;

    .line 257
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/AndroidParagraph;->getWidth()F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/AndroidParagraph;->getHeight()F

    move-result v3

    .line 53
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v4, v2

    .line 54
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v2, v2

    shl-long/2addr v4, v6

    and-long/2addr v2, v7

    or-long/2addr v2, v4

    .line 33
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Size;->constructor-impl(J)J

    move-result-wide v2

    .line 257
    invoke-virtual {v1, v2, v3}, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;->setSize-uvyYCjk(J)V

    goto :goto_4

    .line 295
    :cond_6
    iget-object v0, v12, Landroidx/compose/ui/text/AndroidParagraph;->charSequence:Ljava/lang/CharSequence;

    .line 296
    instance-of v1, v0, Landroid/text/Spanned;

    if-nez v1, :cond_7

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    goto/16 :goto_f

    .line 297
    :cond_7
    move-object v1, v0

    check-cast v1, Landroid/text/Spanned;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-class v2, Landroidx/compose/ui/text/android/style/PlaceholderSpan;

    const/4 v3, 0x0

    invoke-interface {v1, v3, v0, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 716
    new-instance v2, Ljava/util/ArrayList;

    array-length v4, v0

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 11670
    array-length v4, v0

    move v5, v3

    :goto_5
    if-ge v5, v4, :cond_f

    aget-object v6, v0, v5

    .line 11671
    check-cast v6, Landroidx/compose/ui/text/android/style/PlaceholderSpan;

    .line 298
    invoke-interface {v1, v6}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    .line 299
    invoke-interface {v1, v6}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    .line 302
    iget-object v9, v12, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {v9, v7}, Landroidx/compose/ui/text/android/TextLayout;->getLineForOffset(I)I

    move-result v9

    .line 303
    iget v10, v12, Landroidx/compose/ui/text/AndroidParagraph;->maxLines:I

    if-lt v9, v10, :cond_8

    move v10, v15

    goto :goto_6

    :cond_8
    move v10, v3

    .line 305
    :goto_6
    iget-object v11, v12, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {v11, v9}, Landroidx/compose/ui/text/android/TextLayout;->getLineEllipsisCount(I)I

    move-result v11

    if-lez v11, :cond_9

    .line 306
    iget-object v11, v12, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {v11, v9}, Landroidx/compose/ui/text/android/TextLayout;->getLineEllipsisOffset(I)I

    move-result v11

    if-le v8, v11, :cond_9

    move v11, v15

    goto :goto_7

    :cond_9
    move v11, v3

    .line 307
    :goto_7
    iget-object v13, v12, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {v13, v9}, Landroidx/compose/ui/text/android/TextLayout;->getLineEnd(I)I

    move-result v13

    if-le v8, v13, :cond_a

    move v8, v15

    goto :goto_8

    :cond_a
    move v8, v3

    :goto_8
    if-nez v11, :cond_e

    if-nez v8, :cond_e

    if-eqz v10, :cond_b

    goto/16 :goto_d

    .line 313
    :cond_b
    invoke-virtual {v12, v7}, Landroidx/compose/ui/text/AndroidParagraph;->getBidiRunDirection(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;

    move-result-object v8

    .line 316
    sget-object v10, Landroidx/compose/ui/text/AndroidParagraph$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v8, v10, v8

    const/4 v10, 0x2

    if-eq v8, v15, :cond_d

    if-ne v8, v10, :cond_c

    .line 319
    invoke-virtual {v12, v7, v15}, Landroidx/compose/ui/text/AndroidParagraph;->getHorizontalPosition(IZ)F

    move-result v7

    invoke-virtual {v6}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getWidthPx()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    goto :goto_9

    :cond_c
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 317
    :cond_d
    invoke-virtual {v12, v7, v15}, Landroidx/compose/ui/text/AndroidParagraph;->getHorizontalPosition(IZ)F

    move-result v7

    .line 321
    :goto_9
    invoke-virtual {v6}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getWidthPx()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v7

    .line 324
    iget-object v11, v12, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 325
    invoke-virtual {v6}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getVerticalAlign()I

    move-result v13

    packed-switch v13, :pswitch_data_0

    .line 340
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unexpected verticalAlignment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 337
    :pswitch_0
    invoke-virtual {v6}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getFontMetrics()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v13

    .line 338
    iget v14, v13, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v13, v13, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr v14, v13

    invoke-virtual {v6}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getHeightPx()I

    move-result v13

    sub-int/2addr v14, v13

    div-int/2addr v14, v10

    int-to-float v10, v14

    invoke-virtual {v11, v9}, Landroidx/compose/ui/text/android/TextLayout;->getLineBaseline(I)F

    move-result v9

    :goto_a
    add-float/2addr v10, v9

    goto :goto_c

    .line 335
    :pswitch_1
    invoke-virtual {v6}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getFontMetrics()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    int-to-float v10, v10

    invoke-virtual {v11, v9}, Landroidx/compose/ui/text/android/TextLayout;->getLineBaseline(I)F

    move-result v9

    add-float/2addr v10, v9

    invoke-virtual {v6}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getHeightPx()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v10, v9

    goto :goto_c

    .line 333
    :pswitch_2
    invoke-virtual {v6}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getFontMetrics()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    int-to-float v10, v10

    invoke-virtual {v11, v9}, Landroidx/compose/ui/text/android/TextLayout;->getLineBaseline(I)F

    move-result v9

    goto :goto_a

    .line 331
    :pswitch_3
    invoke-virtual {v11, v9}, Landroidx/compose/ui/text/android/TextLayout;->getLineTop(I)F

    move-result v13

    invoke-virtual {v11, v9}, Landroidx/compose/ui/text/android/TextLayout;->getLineBottom(I)F

    move-result v9

    add-float/2addr v13, v9

    invoke-virtual {v6}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getHeightPx()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v13, v9

    int-to-float v9, v10

    div-float v10, v13, v9

    goto :goto_c

    .line 329
    :pswitch_4
    invoke-virtual {v11, v9}, Landroidx/compose/ui/text/android/TextLayout;->getLineBottom(I)F

    move-result v9

    invoke-virtual {v6}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getHeightPx()I

    move-result v10

    :goto_b
    int-to-float v10, v10

    sub-float v10, v9, v10

    goto :goto_c

    .line 328
    :pswitch_5
    invoke-virtual {v11, v9}, Landroidx/compose/ui/text/android/TextLayout;->getLineTop(I)F

    move-result v10

    goto :goto_c

    .line 327
    :pswitch_6
    invoke-virtual {v11, v9}, Landroidx/compose/ui/text/android/TextLayout;->getLineBaseline(I)F

    move-result v9

    invoke-virtual {v6}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getHeightPx()I

    move-result v10

    goto :goto_b

    .line 344
    :goto_c
    invoke-virtual {v6}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getHeightPx()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v10

    .line 346
    new-instance v9, Landroidx/compose/ui/geometry/Rect;

    invoke-direct {v9, v7, v10, v8, v6}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    goto :goto_e

    :cond_e
    :goto_d
    move-object/from16 v9, v23

    .line 11671
    :goto_e
    invoke-interface {v2, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_5

    :cond_f
    move-object v0, v2

    .line 295
    :goto_f
    iput-object v0, v12, Landroidx/compose/ui/text/AndroidParagraph;->placeholderRects:Ljava/util/List;

    return-void

    .line 141
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxLines should be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Setting Constraints.minWidth and Constraints.minHeight is not supported, these should be the default zero values instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;IIJLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Landroidx/compose/ui/text/AndroidParagraph;-><init>(Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;IIJ)V

    return-void
.end method

.method private final constructTextLayout(IILandroid/text/TextUtils$TruncateAt;IIIIILjava/lang/CharSequence;)Landroidx/compose/ui/text/android/TextLayout;
    .locals 23

    move-object/from16 v0, p0

    move/from16 v5, p1

    move/from16 v17, p2

    move-object/from16 v6, p3

    move/from16 v12, p4

    move/from16 v16, p5

    move/from16 v13, p6

    move/from16 v14, p7

    move/from16 v15, p8

    move-object/from16 v2, p9

    .line 604
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/AndroidParagraph;->getWidth()F

    move-result v3

    .line 605
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/AndroidParagraph;->getTextPaint$ui_text_release()Landroidx/compose/ui/text/platform/AndroidTextPaint;

    move-result-object v4

    .line 608
    iget-object v1, v0, Landroidx/compose/ui/text/AndroidParagraph;->paragraphIntrinsics:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    invoke-virtual {v1}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->getTextDirectionHeuristic$ui_text_release()I

    move-result v7

    .line 612
    iget-object v1, v0, Landroidx/compose/ui/text/AndroidParagraph;->paragraphIntrinsics:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    invoke-virtual {v1}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->getLayoutIntrinsics$ui_text_release()Landroidx/compose/ui/text/android/LayoutIntrinsics;

    move-result-object v20

    .line 613
    iget-object v0, v0, Landroidx/compose/ui/text/AndroidParagraph;->paragraphIntrinsics:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    invoke-virtual {v0}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->getStyle()Landroidx/compose/ui/text/TextStyle;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/text/platform/AndroidParagraphHelper_androidKt;->isIncludeFontPaddingEnabled(Landroidx/compose/ui/text/TextStyle;)Z

    move-result v10

    .line 602
    new-instance v0, Landroidx/compose/ui/text/android/TextLayout;

    move-object v1, v0

    const v21, 0x30080

    const/16 v22, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v11, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v1 .. v22}, Landroidx/compose/ui/text/android/TextLayout;-><init>(Ljava/lang/CharSequence;FLandroid/text/TextPaint;ILandroid/text/TextUtils$TruncateAt;IFFZZIIIIII[I[ILandroidx/compose/ui/text/android/LayoutIntrinsics;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method static synthetic constructTextLayout$default(Landroidx/compose/ui/text/AndroidParagraph;IILandroid/text/TextUtils$TruncateAt;IIIIILjava/lang/CharSequence;ILjava/lang/Object;)Landroidx/compose/ui/text/android/TextLayout;
    .locals 11

    move/from16 v0, p10

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 600
    iget-object v1, v0, Landroidx/compose/ui/text/AndroidParagraph;->charSequence:Ljava/lang/CharSequence;

    move-object v10, v1

    goto :goto_0

    :cond_0
    move-object v0, p0

    move-object/from16 v10, p9

    :goto_0
    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    .line 591
    invoke-direct/range {v1 .. v10}, Landroidx/compose/ui/text/AndroidParagraph;->constructTextLayout(IILandroid/text/TextUtils$TruncateAt;IIIIILjava/lang/CharSequence;)Landroidx/compose/ui/text/android/TextLayout;

    move-result-object v0

    return-object v0
.end method

.method private final getShaderBrushSpans(Landroidx/compose/ui/text/android/TextLayout;)[Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;
    .locals 4

    .line 509
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/TextLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spanned;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 510
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/TextLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type android.text.Spanned"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/text/Spanned;

    const-class v3, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;

    invoke-direct {p0, v0, v3}, Landroidx/compose/ui/text/AndroidParagraph;->hasSpan(Landroid/text/Spanned;Ljava/lang/Class;)Z

    move-result p0

    if-nez p0, :cond_1

    return-object v1

    .line 511
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/TextLayout;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/text/Spanned;

    invoke-virtual {p1}, Landroidx/compose/ui/text/android/TextLayout;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const-class v0, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;

    const/4 v1, 0x0

    invoke-interface {p0, v1, p1, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;

    return-object p0
.end method

.method private final hasSpan(Landroid/text/Spanned;Ljava/lang/Class;)Z
    .locals 1

    .line 516
    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result p0

    const/4 v0, -0x1

    invoke-interface {p1, v0, p0, p2}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result p0

    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result p1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final paint(Landroidx/compose/ui/graphics/Canvas;)V
    .locals 3

    .line 580
    invoke-static {p1}, Landroidx/compose/ui/graphics/AndroidCanvas_androidKt;->getNativeCanvas(Landroidx/compose/ui/graphics/Canvas;)Landroid/graphics/Canvas;

    move-result-object p1

    .line 581
    invoke-virtual {p0}, Landroidx/compose/ui/text/AndroidParagraph;->getDidExceedMaxLines()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 582
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 583
    invoke-virtual {p0}, Landroidx/compose/ui/text/AndroidParagraph;->getWidth()F

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/ui/text/AndroidParagraph;->getHeight()F

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 585
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/TextLayout;->paint(Landroid/graphics/Canvas;)V

    .line 586
    invoke-virtual {p0}, Landroidx/compose/ui/text/AndroidParagraph;->getDidExceedMaxLines()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 587
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    return-void
.end method


# virtual methods
.method public fillBoundingBoxes-8ffj60Q(J[FI)V
    .locals 1

    .line 424
    iget-object p0, p0, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v0

    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result p1

    invoke-virtual {p0, v0, p1, p3, p4}, Landroidx/compose/ui/text/android/TextLayout;->fillBoundingBoxes(II[FI)V

    return-void
.end method

.method public getBidiRunDirection(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;
    .locals 0

    .line 504
    iget-object p0, p0, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/TextLayout;->isRtlCharAt(I)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Landroidx/compose/ui/text/style/ResolvedTextDirection;->Rtl:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    goto :goto_0

    .line 505
    :cond_0
    sget-object p0, Landroidx/compose/ui/text/style/ResolvedTextDirection;->Ltr:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    :goto_0
    return-object p0
.end method

.method public getBoundingBox(I)Landroidx/compose/ui/geometry/Rect;
    .locals 3

    if-ltz p1, :cond_0

    .line 387
    iget-object v0, p0, Landroidx/compose/ui/text/AndroidParagraph;->charSequence:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 390
    iget-object p0, p0, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/TextLayout;->getBoundingBox(I)Landroid/graphics/RectF;

    move-result-object p0

    .line 391
    new-instance p1, Landroidx/compose/ui/geometry/Rect;

    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Landroid/graphics/RectF;->top:F

    iget v2, p0, Landroid/graphics/RectF;->right:F

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p1, v0, v1, v2, p0}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    return-object p1

    .line 388
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "offset("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") is out of bounds [0,"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/compose/ui/text/AndroidParagraph;->charSequence:Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 387
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCursorRect(I)Landroidx/compose/ui/geometry/Rect;
    .locals 4

    if-ltz p1, :cond_0

    .line 438
    iget-object v0, p0, Landroidx/compose/ui/text/AndroidParagraph;->charSequence:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 441
    iget-object v0, p0, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, p1, v3, v1, v2}, Landroidx/compose/ui/text/android/TextLayout;->getPrimaryHorizontal$default(Landroidx/compose/ui/text/android/TextLayout;IZILjava/lang/Object;)F

    move-result v0

    .line 442
    iget-object v1, p0, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {v1, p1}, Landroidx/compose/ui/text/android/TextLayout;->getLineForOffset(I)I

    move-result p1

    .line 446
    new-instance v1, Landroidx/compose/ui/geometry/Rect;

    iget-object v2, p0, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {v2, p1}, Landroidx/compose/ui/text/android/TextLayout;->getLineTop(I)F

    move-result v2

    iget-object p0, p0, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/TextLayout;->getLineBottom(I)F

    move-result p0

    invoke-direct {v1, v0, v2, v0, p0}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    return-object v1

    .line 439
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "offset("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") is out of bounds [0,"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/compose/ui/text/AndroidParagraph;->charSequence:Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 438
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDidExceedMaxLines()Z
    .locals 0

    .line 281
    iget-object p0, p0, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getDidExceedMaxLines()Z

    move-result p0

    return p0
.end method

.method public getFirstBaseline()F
    .locals 1

    const/4 v0, 0x0

    .line 275
    invoke-virtual {p0, v0}, Landroidx/compose/ui/text/AndroidParagraph;->getLineBaseline(I)F

    move-result p0

    return p0
.end method

.method public getHeight()F
    .locals 0

    .line 266
    iget-object p0, p0, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getHeight()I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public getHorizontalPosition(IZ)F
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 492
    iget-object p0, p0, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    invoke-static {p0, p1, v2, v1, v0}, Landroidx/compose/ui/text/android/TextLayout;->getPrimaryHorizontal$default(Landroidx/compose/ui/text/android/TextLayout;IZILjava/lang/Object;)F

    move-result p0

    goto :goto_0

    .line 494
    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    invoke-static {p0, p1, v2, v1, v0}, Landroidx/compose/ui/text/android/TextLayout;->getSecondaryHorizontal$default(Landroidx/compose/ui/text/android/TextLayout;IZILjava/lang/Object;)F

    move-result p0

    :goto_0
    return p0
.end method

.method public getLastBaseline()F
    .locals 1

    .line 278
    invoke-virtual {p0}, Landroidx/compose/ui/text/AndroidParagraph;->getLineCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/compose/ui/text/AndroidParagraph;->getLineBaseline(I)F

    move-result p0

    return p0
.end method

.method public getLineBaseline(I)F
    .locals 0

    .line 462
    iget-object p0, p0, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/TextLayout;->getLineBaseline(I)F

    move-result p0

    return p0
.end method

.method public getLineBottom(I)F
    .locals 0

    .line 466
    iget-object p0, p0, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/TextLayout;->getLineBottom(I)F

    move-result p0

    return p0
.end method

.method public getLineCount()I
    .locals 0

    .line 292
    iget-object p0, p0, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getLineCount()I

    move-result p0

    return p0
.end method

.method public getLineEnd(IZ)I
    .locals 0

    if-eqz p2, :cond_0

    .line 476
    iget-object p0, p0, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/TextLayout;->getLineVisibleEnd(I)I

    move-result p0

    goto :goto_0

    .line 478
    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/TextLayout;->getLineEnd(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public getLineForOffset(I)I
    .locals 0

    .line 488
    iget-object p0, p0, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/TextLayout;->getLineForOffset(I)I

    move-result p0

    return p0
.end method

.method public getLineForVerticalPosition(F)I
    .locals 0

    .line 355
    iget-object p0, p0, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/TextLayout;->getLineForVertical(I)I

    move-result p0

    return p0
.end method

.method public getLineLeft(I)F
    .locals 0

    .line 454
    iget-object p0, p0, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/TextLayout;->getLineLeft(I)F

    move-result p0

    return p0
.end method

.method public getLineRight(I)F
    .locals 0

    .line 456
    iget-object p0, p0, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/TextLayout;->getLineRight(I)F

    move-result p0

    return p0
.end method

.method public getLineStart(I)I
    .locals 0

    .line 472
    iget-object p0, p0, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/TextLayout;->getLineStart(I)I

    move-result p0

    return p0
.end method

.method public getLineTop(I)F
    .locals 0

    .line 458
    iget-object p0, p0, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/TextLayout;->getLineTop(I)F

    move-result p0

    return p0
.end method

.method public getMaxIntrinsicWidth()F
    .locals 0

    .line 269
    iget-object p0, p0, Landroidx/compose/ui/text/AndroidParagraph;->paragraphIntrinsics:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    invoke-virtual {p0}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->getMaxIntrinsicWidth()F

    move-result p0

    return p0
.end method

.method public getMinIntrinsicWidth()F
    .locals 0

    .line 272
    iget-object p0, p0, Landroidx/compose/ui/text/AndroidParagraph;->paragraphIntrinsics:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    invoke-virtual {p0}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->getMinIntrinsicWidth()F

    move-result p0

    return p0
.end method

.method public getOffsetForPosition-k-4lQ0M(J)I
    .locals 3

    .line 359
    iget-object v0, p0, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    const-wide v1, 0xffffffffL

    and-long/2addr v1, p1

    long-to-int v1, v1

    .line 22
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    float-to-int v1, v1

    .line 359
    invoke-virtual {v0, v1}, Landroidx/compose/ui/text/android/TextLayout;->getLineForVertical(I)I

    move-result v0

    .line 360
    iget-object p0, p0, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    const/16 v1, 0x20

    shr-long/2addr p1, v1

    long-to-int p1, p1

    .line 22
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    .line 360
    invoke-virtual {p0, v0, p1}, Landroidx/compose/ui/text/android/TextLayout;->getOffsetForHorizontal(IF)I

    move-result p0

    return p0
.end method

.method public getParagraphDirection(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;
    .locals 1

    .line 498
    iget-object v0, p0, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/TextLayout;->getLineForOffset(I)I

    move-result p1

    .line 499
    iget-object p0, p0, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/TextLayout;->getParagraphDirection(I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    .line 500
    sget-object p0, Landroidx/compose/ui/text/style/ResolvedTextDirection;->Ltr:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    goto :goto_0

    :cond_0
    sget-object p0, Landroidx/compose/ui/text/style/ResolvedTextDirection;->Rtl:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    :goto_0
    return-object p0
.end method

.method public getPathForRange(II)Landroidx/compose/ui/graphics/Path;
    .locals 2

    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    .line 428
    iget-object v0, p0, Landroidx/compose/ui/text/AndroidParagraph;->charSequence:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p2, v0, :cond_0

    .line 432
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 433
    iget-object p0, p0, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {p0, p1, p2, v0}, Landroidx/compose/ui/text/android/TextLayout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 434
    invoke-static {v0}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->asComposePath(Landroid/graphics/Path;)Landroidx/compose/ui/graphics/Path;

    move-result-object p0

    return-object p0

    .line 429
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") or end("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") is out of range [0.."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/compose/ui/text/AndroidParagraph;->charSequence:Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "], or start > end!"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 428
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPlaceholderRects()Ljava/util/List;
    .locals 0

    .line 294
    iget-object p0, p0, Landroidx/compose/ui/text/AndroidParagraph;->placeholderRects:Ljava/util/List;

    return-object p0
.end method

.method public getRangeForRect-8-6BmAI(Landroidx/compose/ui/geometry/Rect;ILandroidx/compose/ui/text/TextInclusionStrategy;)J
    .locals 1

    .line 369
    iget-object p0, p0, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 370
    invoke-static {p1}, Landroidx/compose/ui/graphics/RectHelper_androidKt;->toAndroidRectF(Landroidx/compose/ui/geometry/Rect;)Landroid/graphics/RectF;

    move-result-object p1

    .line 371
    invoke-static {p2}, Landroidx/compose/ui/text/AndroidParagraph_androidKt;->access$toLayoutTextGranularity-duNsdkg(I)I

    move-result p2

    .line 369
    new-instance v0, Landroidx/compose/ui/text/AndroidParagraph$getRangeForRect$range$1;

    invoke-direct {v0, p3}, Landroidx/compose/ui/text/AndroidParagraph$getRangeForRect$range$1;-><init>(Landroidx/compose/ui/text/TextInclusionStrategy;)V

    invoke-virtual {p0, p1, p2, v0}, Landroidx/compose/ui/text/android/TextLayout;->getRangeForRect(Landroid/graphics/RectF;ILkotlin/jvm/functions/Function2;)[I

    move-result-object p0

    if-nez p0, :cond_0

    .line 378
    sget-object p0, Landroidx/compose/ui/text/TextRange;->Companion:Landroidx/compose/ui/text/TextRange$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/text/TextRange$Companion;->getZero-d9O1mEE()J

    move-result-wide p0

    return-wide p0

    :cond_0
    const/4 p1, 0x0

    .line 379
    aget p1, p0, p1

    const/4 p2, 0x1

    aget p0, p0, p2

    invoke-static {p1, p0}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getTextPaint$ui_text_release()Landroidx/compose/ui/text/platform/AndroidTextPaint;
    .locals 0

    .line 352
    iget-object p0, p0, Landroidx/compose/ui/text/AndroidParagraph;->paragraphIntrinsics:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    invoke-virtual {p0}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->getTextPaint$ui_text_release()Landroidx/compose/ui/text/platform/AndroidTextPaint;

    move-result-object p0

    return-object p0
.end method

.method public getWidth()F
    .locals 2

    .line 263
    iget-wide v0, p0, Landroidx/compose/ui/text/AndroidParagraph;->constraints:J

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public getWordBoundary--jx7JFs(I)J
    .locals 1

    .line 450
    iget-object p0, p0, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getWordIterator()Landroidx/compose/ui/text/android/selection/WordIterator;

    move-result-object p0

    .line 451
    invoke-static {p0, p1}, Landroidx/compose/ui/text/android/selection/WordBoundary_androidKt;->getWordStart(Landroidx/compose/ui/text/android/selection/WordIterator;I)I

    move-result v0

    invoke-static {p0, p1}, Landroidx/compose/ui/text/android/selection/WordBoundary_androidKt;->getWordEnd(Landroidx/compose/ui/text/android/selection/WordIterator;I)I

    move-result p0

    invoke-static {v0, p0}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide p0

    return-wide p0
.end method

.method public paint-LG529CI(Landroidx/compose/ui/graphics/Canvas;JLandroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/drawscope/DrawStyle;I)V
    .locals 2

    .line 542
    invoke-virtual {p0}, Landroidx/compose/ui/text/AndroidParagraph;->getTextPaint$ui_text_release()Landroidx/compose/ui/text/platform/AndroidTextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->getBlendMode-0nO6VwU()I

    move-result v0

    .line 543
    invoke-virtual {p0}, Landroidx/compose/ui/text/AndroidParagraph;->getTextPaint$ui_text_release()Landroidx/compose/ui/text/platform/AndroidTextPaint;

    move-result-object v1

    .line 544
    invoke-virtual {v1, p2, p3}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setColor-8_81llA(J)V

    .line 545
    invoke-virtual {v1, p4}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setShadow(Landroidx/compose/ui/graphics/Shadow;)V

    .line 546
    invoke-virtual {v1, p5}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setTextDecoration(Landroidx/compose/ui/text/style/TextDecoration;)V

    .line 547
    invoke-virtual {v1, p6}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setDrawStyle(Landroidx/compose/ui/graphics/drawscope/DrawStyle;)V

    .line 548
    invoke-virtual {v1, p7}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setBlendMode-s9anfk8(I)V

    .line 551
    invoke-direct {p0, p1}, Landroidx/compose/ui/text/AndroidParagraph;->paint(Landroidx/compose/ui/graphics/Canvas;)V

    .line 553
    invoke-virtual {p0}, Landroidx/compose/ui/text/AndroidParagraph;->getTextPaint$ui_text_release()Landroidx/compose/ui/text/platform/AndroidTextPaint;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setBlendMode-s9anfk8(I)V

    return-void
.end method

.method public paint-hn5TExg(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/drawscope/DrawStyle;I)V
    .locals 8

    .line 565
    invoke-virtual {p0}, Landroidx/compose/ui/text/AndroidParagraph;->getTextPaint$ui_text_release()Landroidx/compose/ui/text/platform/AndroidTextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->getBlendMode-0nO6VwU()I

    move-result v0

    .line 566
    invoke-virtual {p0}, Landroidx/compose/ui/text/AndroidParagraph;->getTextPaint$ui_text_release()Landroidx/compose/ui/text/platform/AndroidTextPaint;

    move-result-object v1

    .line 567
    invoke-virtual {p0}, Landroidx/compose/ui/text/AndroidParagraph;->getWidth()F

    move-result v2

    invoke-virtual {p0}, Landroidx/compose/ui/text/AndroidParagraph;->getHeight()F

    move-result v3

    .line 53
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v4, v2

    .line 54
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v2, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    const-wide v6, 0xffffffffL

    and-long/2addr v2, v6

    or-long/2addr v2, v4

    .line 33
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Size;->constructor-impl(J)J

    move-result-wide v2

    .line 567
    invoke-virtual {v1, p2, v2, v3, p3}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setBrush-12SF9DM(Landroidx/compose/ui/graphics/Brush;JF)V

    .line 568
    invoke-virtual {v1, p4}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setShadow(Landroidx/compose/ui/graphics/Shadow;)V

    .line 569
    invoke-virtual {v1, p5}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setTextDecoration(Landroidx/compose/ui/text/style/TextDecoration;)V

    .line 570
    invoke-virtual {v1, p6}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setDrawStyle(Landroidx/compose/ui/graphics/drawscope/DrawStyle;)V

    .line 571
    invoke-virtual {v1, p7}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setBlendMode-s9anfk8(I)V

    .line 574
    invoke-direct {p0, p1}, Landroidx/compose/ui/text/AndroidParagraph;->paint(Landroidx/compose/ui/graphics/Canvas;)V

    .line 576
    invoke-virtual {p0}, Landroidx/compose/ui/text/AndroidParagraph;->getTextPaint$ui_text_release()Landroidx/compose/ui/text/platform/AndroidTextPaint;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setBlendMode-s9anfk8(I)V

    return-void
.end method
