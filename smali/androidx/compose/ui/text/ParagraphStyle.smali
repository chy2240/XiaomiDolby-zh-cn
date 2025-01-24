.class public final Landroidx/compose/ui/text/ParagraphStyle;
.super Ljava/lang/Object;
.source "ParagraphStyle.kt"

# interfaces
.implements Landroidx/compose/ui/text/AnnotatedString$Annotation;


# instance fields
.field private final hyphens:I

.field private final lineBreak:I

.field private final lineHeight:J

.field private final lineHeightStyle:Landroidx/compose/ui/text/style/LineHeightStyle;

.field private final platformStyle:Landroidx/compose/ui/text/PlatformParagraphStyle;

.field private final textAlign:I

.field private final textDirection:I

.field private final textIndent:Landroidx/compose/ui/text/style/TextIndent;

.field private final textMotion:Landroidx/compose/ui/text/style/TextMotion;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method private constructor <init>(IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformParagraphStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput p1, p0, Landroidx/compose/ui/text/ParagraphStyle;->textAlign:I

    .line 67
    iput p2, p0, Landroidx/compose/ui/text/ParagraphStyle;->textDirection:I

    .line 68
    iput-wide p3, p0, Landroidx/compose/ui/text/ParagraphStyle;->lineHeight:J

    .line 69
    iput-object p5, p0, Landroidx/compose/ui/text/ParagraphStyle;->textIndent:Landroidx/compose/ui/text/style/TextIndent;

    .line 70
    iput-object p6, p0, Landroidx/compose/ui/text/ParagraphStyle;->platformStyle:Landroidx/compose/ui/text/PlatformParagraphStyle;

    .line 71
    iput-object p7, p0, Landroidx/compose/ui/text/ParagraphStyle;->lineHeightStyle:Landroidx/compose/ui/text/style/LineHeightStyle;

    .line 72
    iput p8, p0, Landroidx/compose/ui/text/ParagraphStyle;->lineBreak:I

    .line 73
    iput p9, p0, Landroidx/compose/ui/text/ParagraphStyle;->hyphens:I

    .line 74
    iput-object p10, p0, Landroidx/compose/ui/text/ParagraphStyle;->textMotion:Landroidx/compose/ui/text/style/TextMotion;

    .line 205
    sget-object p0, Landroidx/compose/ui/unit/TextUnit;->Companion:Landroidx/compose/ui/unit/TextUnit$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/unit/TextUnit$Companion;->getUnspecified-XSAIIZE()J

    move-result-wide p0

    invoke-static {p3, p4, p0, p1}, Landroidx/compose/ui/unit/TextUnit;->equals-impl0(JJ)Z

    move-result p0

    if-nez p0, :cond_1

    .line 207
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    move-result p0

    const/4 p1, 0x0

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "lineHeight can\'t be negative ("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3, p4}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic constructor <init>(IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformParagraphStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p10}, Landroidx/compose/ui/text/ParagraphStyle;-><init>(IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformParagraphStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;)V

    return-void
.end method

.method public static synthetic copy-ykzQM6k$default(Landroidx/compose/ui/text/ParagraphStyle;IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformParagraphStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;ILjava/lang/Object;)Landroidx/compose/ui/text/ParagraphStyle;
    .locals 11

    move-object v0, p0

    move/from16 v1, p11

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    .line 350
    iget v2, v0, Landroidx/compose/ui/text/ParagraphStyle;->textAlign:I

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    .line 351
    iget v3, v0, Landroidx/compose/ui/text/ParagraphStyle;->textDirection:I

    goto :goto_1

    :cond_1
    move v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    .line 352
    iget-wide v4, v0, Landroidx/compose/ui/text/ParagraphStyle;->lineHeight:J

    goto :goto_2

    :cond_2
    move-wide v4, p3

    :goto_2
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_3

    .line 353
    iget-object v6, v0, Landroidx/compose/ui/text/ParagraphStyle;->textIndent:Landroidx/compose/ui/text/style/TextIndent;

    goto :goto_3

    :cond_3
    move-object/from16 v6, p5

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    .line 354
    iget-object v7, v0, Landroidx/compose/ui/text/ParagraphStyle;->platformStyle:Landroidx/compose/ui/text/PlatformParagraphStyle;

    goto :goto_4

    :cond_4
    move-object/from16 v7, p6

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    .line 355
    iget-object v8, v0, Landroidx/compose/ui/text/ParagraphStyle;->lineHeightStyle:Landroidx/compose/ui/text/style/LineHeightStyle;

    goto :goto_5

    :cond_5
    move-object/from16 v8, p7

    :goto_5
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_6

    .line 356
    iget v9, v0, Landroidx/compose/ui/text/ParagraphStyle;->lineBreak:I

    goto :goto_6

    :cond_6
    move/from16 v9, p8

    :goto_6
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_7

    .line 357
    iget v10, v0, Landroidx/compose/ui/text/ParagraphStyle;->hyphens:I

    goto :goto_7

    :cond_7
    move/from16 v10, p9

    :goto_7
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    .line 358
    iget-object v1, v0, Landroidx/compose/ui/text/ParagraphStyle;->textMotion:Landroidx/compose/ui/text/style/TextMotion;

    goto :goto_8

    :cond_8
    move-object/from16 v1, p10

    :goto_8
    move p1, v2

    move p2, v3

    move-wide p3, v4

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move/from16 p8, v9

    move/from16 p9, v10

    move-object/from16 p10, v1

    .line 349
    invoke-virtual/range {p0 .. p10}, Landroidx/compose/ui/text/ParagraphStyle;->copy-ykzQM6k(IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformParagraphStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;)Landroidx/compose/ui/text/ParagraphStyle;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final copy-ykzQM6k(IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformParagraphStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;)Landroidx/compose/ui/text/ParagraphStyle;
    .locals 13

    .line 360
    new-instance v12, Landroidx/compose/ui/text/ParagraphStyle;

    const/4 v11, 0x0

    move-object v0, v12

    move v1, p1

    move v2, p2

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v11}, Landroidx/compose/ui/text/ParagraphStyle;-><init>(IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformParagraphStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v12
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 375
    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/text/ParagraphStyle;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 377
    :cond_1
    iget v1, p0, Landroidx/compose/ui/text/ParagraphStyle;->textAlign:I

    check-cast p1, Landroidx/compose/ui/text/ParagraphStyle;

    iget v3, p1, Landroidx/compose/ui/text/ParagraphStyle;->textAlign:I

    invoke-static {v1, v3}, Landroidx/compose/ui/text/style/TextAlign;->equals-impl0(II)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 378
    :cond_2
    iget v1, p0, Landroidx/compose/ui/text/ParagraphStyle;->textDirection:I

    iget v3, p1, Landroidx/compose/ui/text/ParagraphStyle;->textDirection:I

    invoke-static {v1, v3}, Landroidx/compose/ui/text/style/TextDirection;->equals-impl0(II)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 379
    :cond_3
    iget-wide v3, p0, Landroidx/compose/ui/text/ParagraphStyle;->lineHeight:J

    iget-wide v5, p1, Landroidx/compose/ui/text/ParagraphStyle;->lineHeight:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/unit/TextUnit;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 380
    :cond_4
    iget-object v1, p0, Landroidx/compose/ui/text/ParagraphStyle;->textIndent:Landroidx/compose/ui/text/style/TextIndent;

    iget-object v3, p1, Landroidx/compose/ui/text/ParagraphStyle;->textIndent:Landroidx/compose/ui/text/style/TextIndent;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 381
    :cond_5
    iget-object v1, p0, Landroidx/compose/ui/text/ParagraphStyle;->platformStyle:Landroidx/compose/ui/text/PlatformParagraphStyle;

    iget-object v3, p1, Landroidx/compose/ui/text/ParagraphStyle;->platformStyle:Landroidx/compose/ui/text/PlatformParagraphStyle;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 382
    :cond_6
    iget-object v1, p0, Landroidx/compose/ui/text/ParagraphStyle;->lineHeightStyle:Landroidx/compose/ui/text/style/LineHeightStyle;

    iget-object v3, p1, Landroidx/compose/ui/text/ParagraphStyle;->lineHeightStyle:Landroidx/compose/ui/text/style/LineHeightStyle;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 383
    :cond_7
    iget v1, p0, Landroidx/compose/ui/text/ParagraphStyle;->lineBreak:I

    iget v3, p1, Landroidx/compose/ui/text/ParagraphStyle;->lineBreak:I

    invoke-static {v1, v3}, Landroidx/compose/ui/text/style/LineBreak;->equals-impl0(II)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 384
    :cond_8
    iget v1, p0, Landroidx/compose/ui/text/ParagraphStyle;->hyphens:I

    iget v3, p1, Landroidx/compose/ui/text/ParagraphStyle;->hyphens:I

    invoke-static {v1, v3}, Landroidx/compose/ui/text/style/Hyphens;->equals-impl0(II)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 385
    :cond_9
    iget-object p0, p0, Landroidx/compose/ui/text/ParagraphStyle;->textMotion:Landroidx/compose/ui/text/style/TextMotion;

    iget-object p1, p1, Landroidx/compose/ui/text/ParagraphStyle;->textMotion:Landroidx/compose/ui/text/style/TextMotion;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final getHyphens-vmbZdU8()I
    .locals 0

    .line 73
    iget p0, p0, Landroidx/compose/ui/text/ParagraphStyle;->hyphens:I

    return p0
.end method

.method public final getLineBreak-rAG3T2k()I
    .locals 0

    .line 72
    iget p0, p0, Landroidx/compose/ui/text/ParagraphStyle;->lineBreak:I

    return p0
.end method

.method public final getLineHeight-XSAIIZE()J
    .locals 2

    .line 68
    iget-wide v0, p0, Landroidx/compose/ui/text/ParagraphStyle;->lineHeight:J

    return-wide v0
.end method

.method public final getLineHeightStyle()Landroidx/compose/ui/text/style/LineHeightStyle;
    .locals 0

    .line 71
    iget-object p0, p0, Landroidx/compose/ui/text/ParagraphStyle;->lineHeightStyle:Landroidx/compose/ui/text/style/LineHeightStyle;

    return-object p0
.end method

.method public final getPlatformStyle()Landroidx/compose/ui/text/PlatformParagraphStyle;
    .locals 0

    .line 70
    iget-object p0, p0, Landroidx/compose/ui/text/ParagraphStyle;->platformStyle:Landroidx/compose/ui/text/PlatformParagraphStyle;

    return-object p0
.end method

.method public final getTextAlign-e0LSkKk()I
    .locals 0

    .line 66
    iget p0, p0, Landroidx/compose/ui/text/ParagraphStyle;->textAlign:I

    return p0
.end method

.method public final getTextDirection-s_7X-co()I
    .locals 0

    .line 67
    iget p0, p0, Landroidx/compose/ui/text/ParagraphStyle;->textDirection:I

    return p0
.end method

.method public final getTextIndent()Landroidx/compose/ui/text/style/TextIndent;
    .locals 0

    .line 69
    iget-object p0, p0, Landroidx/compose/ui/text/ParagraphStyle;->textIndent:Landroidx/compose/ui/text/style/TextIndent;

    return-object p0
.end method

.method public final getTextMotion()Landroidx/compose/ui/text/style/TextMotion;
    .locals 0

    .line 74
    iget-object p0, p0, Landroidx/compose/ui/text/ParagraphStyle;->textMotion:Landroidx/compose/ui/text/style/TextMotion;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    .line 391
    iget v0, p0, Landroidx/compose/ui/text/ParagraphStyle;->textAlign:I

    invoke-static {v0}, Landroidx/compose/ui/text/style/TextAlign;->hashCode-impl(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 392
    iget v1, p0, Landroidx/compose/ui/text/ParagraphStyle;->textDirection:I

    invoke-static {v1}, Landroidx/compose/ui/text/style/TextDirection;->hashCode-impl(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 393
    iget-wide v1, p0, Landroidx/compose/ui/text/ParagraphStyle;->lineHeight:J

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/TextUnit;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 394
    iget-object v1, p0, Landroidx/compose/ui/text/ParagraphStyle;->textIndent:Landroidx/compose/ui/text/style/TextIndent;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/compose/ui/text/style/TextIndent;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 395
    iget-object v1, p0, Landroidx/compose/ui/text/ParagraphStyle;->platformStyle:Landroidx/compose/ui/text/PlatformParagraphStyle;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/compose/ui/text/PlatformParagraphStyle;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 396
    iget-object v1, p0, Landroidx/compose/ui/text/ParagraphStyle;->lineHeightStyle:Landroidx/compose/ui/text/style/LineHeightStyle;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroidx/compose/ui/text/style/LineHeightStyle;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 397
    iget v1, p0, Landroidx/compose/ui/text/ParagraphStyle;->lineBreak:I

    invoke-static {v1}, Landroidx/compose/ui/text/style/LineBreak;->hashCode-impl(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 398
    iget v1, p0, Landroidx/compose/ui/text/ParagraphStyle;->hyphens:I

    invoke-static {v1}, Landroidx/compose/ui/text/style/Hyphens;->hashCode-impl(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 399
    iget-object p0, p0, Landroidx/compose/ui/text/ParagraphStyle;->textMotion:Landroidx/compose/ui/text/style/TextMotion;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroidx/compose/ui/text/style/TextMotion;->hashCode()I

    move-result v2

    :cond_3
    add-int/2addr v0, v2

    return v0
.end method

.method public final merge(Landroidx/compose/ui/text/ParagraphStyle;)Landroidx/compose/ui/text/ParagraphStyle;
    .locals 11

    if-nez p1, :cond_0

    return-object p0

    .line 222
    :cond_0
    iget v1, p1, Landroidx/compose/ui/text/ParagraphStyle;->textAlign:I

    .line 223
    iget v2, p1, Landroidx/compose/ui/text/ParagraphStyle;->textDirection:I

    .line 224
    iget-wide v3, p1, Landroidx/compose/ui/text/ParagraphStyle;->lineHeight:J

    .line 225
    iget-object v5, p1, Landroidx/compose/ui/text/ParagraphStyle;->textIndent:Landroidx/compose/ui/text/style/TextIndent;

    .line 226
    iget-object v6, p1, Landroidx/compose/ui/text/ParagraphStyle;->platformStyle:Landroidx/compose/ui/text/PlatformParagraphStyle;

    .line 227
    iget-object v7, p1, Landroidx/compose/ui/text/ParagraphStyle;->lineHeightStyle:Landroidx/compose/ui/text/style/LineHeightStyle;

    .line 228
    iget v8, p1, Landroidx/compose/ui/text/ParagraphStyle;->lineBreak:I

    .line 229
    iget v9, p1, Landroidx/compose/ui/text/ParagraphStyle;->hyphens:I

    .line 230
    iget-object v10, p1, Landroidx/compose/ui/text/ParagraphStyle;->textMotion:Landroidx/compose/ui/text/style/TextMotion;

    move-object v0, p0

    .line 221
    invoke-static/range {v0 .. v10}, Landroidx/compose/ui/text/ParagraphStyleKt;->fastMerge-j5T8yCg(Landroidx/compose/ui/text/ParagraphStyle;IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformParagraphStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;)Landroidx/compose/ui/text/ParagraphStyle;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ParagraphStyle(textAlign="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    iget v1, p0, Landroidx/compose/ui/text/ParagraphStyle;->textAlign:I

    .line 404
    invoke-static {v1}, Landroidx/compose/ui/text/style/TextAlign;->toString-impl(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 405
    const-string v1, ", textDirection="

    .line 404
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    iget v1, p0, Landroidx/compose/ui/text/ParagraphStyle;->textDirection:I

    .line 404
    invoke-static {v1}, Landroidx/compose/ui/text/style/TextDirection;->toString-impl(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 406
    const-string v1, ", lineHeight="

    .line 404
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    iget-wide v1, p0, Landroidx/compose/ui/text/ParagraphStyle;->lineHeight:J

    .line 404
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/TextUnit;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 407
    const-string v1, ", textIndent="

    .line 404
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    iget-object v1, p0, Landroidx/compose/ui/text/ParagraphStyle;->textIndent:Landroidx/compose/ui/text/style/TextIndent;

    .line 404
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 408
    const-string v1, ", platformStyle="

    .line 404
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    iget-object v1, p0, Landroidx/compose/ui/text/ParagraphStyle;->platformStyle:Landroidx/compose/ui/text/PlatformParagraphStyle;

    .line 404
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 409
    const-string v1, ", lineHeightStyle="

    .line 404
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    iget-object v1, p0, Landroidx/compose/ui/text/ParagraphStyle;->lineHeightStyle:Landroidx/compose/ui/text/style/LineHeightStyle;

    .line 404
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 410
    const-string v1, ", lineBreak="

    .line 404
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    iget v1, p0, Landroidx/compose/ui/text/ParagraphStyle;->lineBreak:I

    .line 404
    invoke-static {v1}, Landroidx/compose/ui/text/style/LineBreak;->toString-impl(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 411
    const-string v1, ", hyphens="

    .line 404
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    iget v1, p0, Landroidx/compose/ui/text/ParagraphStyle;->hyphens:I

    .line 404
    invoke-static {v1}, Landroidx/compose/ui/text/style/Hyphens;->toString-impl(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 412
    const-string v1, ", textMotion="

    .line 404
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    iget-object p0, p0, Landroidx/compose/ui/text/ParagraphStyle;->textMotion:Landroidx/compose/ui/text/style/TextMotion;

    .line 404
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
