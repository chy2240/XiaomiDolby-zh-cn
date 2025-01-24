.class public final Landroidx/compose/foundation/text/TextDelegate;
.super Ljava/lang/Object;
.source "TextDelegate.kt"


# static fields
.field public static final Companion:Landroidx/compose/foundation/text/TextDelegate$Companion;


# instance fields
.field private final density:Landroidx/compose/ui/unit/Density;

.field private final fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

.field private intrinsicsLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

.field private final maxLines:I

.field private final minLines:I

.field private final overflow:I

.field private paragraphIntrinsics:Landroidx/compose/ui/text/MultiParagraphIntrinsics;

.field private final placeholders:Ljava/util/List;

.field private final softWrap:Z

.field private final style:Landroidx/compose/ui/text/TextStyle;

.field private final text:Landroidx/compose/ui/text/AnnotatedString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Landroidx/compose/foundation/text/TextDelegate$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/foundation/text/TextDelegate$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/foundation/text/TextDelegate;->Companion:Landroidx/compose/foundation/text/TextDelegate$Companion;

    return-void
.end method

.method private constructor <init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;IIZILandroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Landroidx/compose/foundation/text/TextDelegate;->text:Landroidx/compose/ui/text/AnnotatedString;

    .line 78
    iput-object p2, p0, Landroidx/compose/foundation/text/TextDelegate;->style:Landroidx/compose/ui/text/TextStyle;

    .line 79
    iput p3, p0, Landroidx/compose/foundation/text/TextDelegate;->maxLines:I

    .line 80
    iput p4, p0, Landroidx/compose/foundation/text/TextDelegate;->minLines:I

    .line 81
    iput-boolean p5, p0, Landroidx/compose/foundation/text/TextDelegate;->softWrap:Z

    .line 82
    iput p6, p0, Landroidx/compose/foundation/text/TextDelegate;->overflow:I

    .line 83
    iput-object p7, p0, Landroidx/compose/foundation/text/TextDelegate;->density:Landroidx/compose/ui/unit/Density;

    .line 84
    iput-object p8, p0, Landroidx/compose/foundation/text/TextDelegate;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 85
    iput-object p9, p0, Landroidx/compose/foundation/text/TextDelegate;->placeholders:Ljava/util/List;

    const/4 p0, 0x0

    const/4 p1, 0x1

    if-lez p3, :cond_0

    move p2, p1

    goto :goto_0

    :cond_0
    move p2, p0

    :goto_0
    if-nez p2, :cond_1

    .line 116
    const-string p2, "no maxLines"

    .line 98
    invoke-static {p2}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :cond_1
    if-lez p4, :cond_2

    move p2, p1

    goto :goto_1

    :cond_2
    move p2, p0

    :goto_1
    if-nez p2, :cond_3

    .line 117
    const-string p2, "no minLines"

    .line 98
    invoke-static {p2}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :cond_3
    if-gt p4, p3, :cond_4

    move p0, p1

    :cond_4
    if-nez p0, :cond_5

    .line 118
    const-string p0, "minLines greater than maxLines"

    .line 98
    invoke-static {p0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;IIZILandroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 13

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    const v1, 0x7fffffff

    move v5, v1

    goto :goto_0

    :cond_0
    move/from16 v5, p3

    :goto_0
    and-int/lit8 v1, v0, 0x8

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    move v6, v2

    goto :goto_1

    :cond_1
    move/from16 v6, p4

    :goto_1
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_2

    move v7, v2

    goto :goto_2

    :cond_2
    move/from16 v7, p5

    :goto_2
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    .line 82
    sget-object v1, Landroidx/compose/ui/text/style/TextOverflow;->Companion:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/text/style/TextOverflow$Companion;->getClip-gIe3tQ8()I

    move-result v1

    move v8, v1

    goto :goto_3

    :cond_3
    move/from16 v8, p6

    :goto_3
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_4

    .line 85
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    move-object v11, v0

    goto :goto_4

    :cond_4
    move-object/from16 v11, p9

    :goto_4
    const/4 v12, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    .line 76
    invoke-direct/range {v2 .. v12}, Landroidx/compose/foundation/text/TextDelegate;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;IIZILandroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;IIZILandroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p9}, Landroidx/compose/foundation/text/TextDelegate;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;IIZILandroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;)V

    return-void
.end method

.method private final getNonNullIntrinsics()Landroidx/compose/ui/text/MultiParagraphIntrinsics;
    .locals 1

    .line 96
    iget-object p0, p0, Landroidx/compose/foundation/text/TextDelegate;->paragraphIntrinsics:Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    if-eqz p0, :cond_0

    return-object p0

    .line 97
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "layoutIntrinsics must be called first"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final layoutText-K40F9xA(JLandroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/MultiParagraph;
    .locals 9

    .line 154
    invoke-virtual {p0, p3}, Landroidx/compose/foundation/text/TextDelegate;->layoutIntrinsics(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 156
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result p3

    .line 157
    iget-boolean v0, p0, Landroidx/compose/foundation/text/TextDelegate;->softWrap:Z

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/compose/foundation/text/TextDelegate;->overflow:I

    sget-object v1, Landroidx/compose/ui/text/style/TextOverflow;->Companion:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/text/style/TextOverflow$Companion;->getEllipsis-gIe3tQ8()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/ui/text/style/TextOverflow;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    :cond_0
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->getHasBoundedWidth-impl(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v0

    goto :goto_0

    :cond_1
    const v0, 0x7fffffff

    .line 179
    :goto_0
    iget-boolean v1, p0, Landroidx/compose/foundation/text/TextDelegate;->softWrap:Z

    if-nez v1, :cond_2

    iget v1, p0, Landroidx/compose/foundation/text/TextDelegate;->overflow:I

    sget-object v2, Landroidx/compose/ui/text/style/TextOverflow;->Companion:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/text/style/TextOverflow$Companion;->getEllipsis-gIe3tQ8()I

    move-result v2

    invoke-static {v1, v2}, Landroidx/compose/ui/text/style/TextOverflow;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    move v6, v1

    goto :goto_2

    .line 180
    :cond_2
    iget v1, p0, Landroidx/compose/foundation/text/TextDelegate;->maxLines:I

    goto :goto_1

    :goto_2
    if-ne p3, v0, :cond_3

    goto :goto_3

    .line 195
    :cond_3
    invoke-virtual {p0}, Landroidx/compose/foundation/text/TextDelegate;->getMaxIntrinsicWidth()I

    move-result v1

    invoke-static {v1, p3, v0}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v0

    .line 198
    :goto_3
    new-instance p3, Landroidx/compose/ui/text/MultiParagraph;

    .line 199
    invoke-direct {p0}, Landroidx/compose/foundation/text/TextDelegate;->getNonNullIntrinsics()Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    move-result-object v3

    .line 201
    sget-object v1, Landroidx/compose/ui/unit/Constraints;->Companion:Landroidx/compose/ui/unit/Constraints$Companion;

    .line 205
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result p1

    const/4 p2, 0x0

    .line 201
    invoke-virtual {v1, p2, v0, p2, p1}, Landroidx/compose/ui/unit/Constraints$Companion;->fitPrioritizingWidth-Zbe2FdA(IIII)J

    move-result-wide v4

    .line 209
    iget v7, p0, Landroidx/compose/foundation/text/TextDelegate;->overflow:I

    const/4 v8, 0x0

    move-object v2, p3

    .line 198
    invoke-direct/range {v2 .. v8}, Landroidx/compose/ui/text/MultiParagraph;-><init>(Landroidx/compose/ui/text/MultiParagraphIntrinsics;JIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p3
.end method


# virtual methods
.method public final getDensity()Landroidx/compose/ui/unit/Density;
    .locals 0

    .line 83
    iget-object p0, p0, Landroidx/compose/foundation/text/TextDelegate;->density:Landroidx/compose/ui/unit/Density;

    return-object p0
.end method

.method public final getFontFamilyResolver()Landroidx/compose/ui/text/font/FontFamily$Resolver;
    .locals 0

    .line 84
    iget-object p0, p0, Landroidx/compose/foundation/text/TextDelegate;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    return-object p0
.end method

.method public final getMaxIntrinsicWidth()I
    .locals 0

    .line 113
    invoke-direct {p0}, Landroidx/compose/foundation/text/TextDelegate;->getNonNullIntrinsics()Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->getMaxIntrinsicWidth()F

    move-result p0

    invoke-static {p0}, Landroidx/compose/foundation/text/TextDelegateKt;->ceilToIntPx(F)I

    move-result p0

    return p0
.end method

.method public final getMaxLines()I
    .locals 0

    .line 79
    iget p0, p0, Landroidx/compose/foundation/text/TextDelegate;->maxLines:I

    return p0
.end method

.method public final getMinLines()I
    .locals 0

    .line 80
    iget p0, p0, Landroidx/compose/foundation/text/TextDelegate;->minLines:I

    return p0
.end method

.method public final getOverflow-gIe3tQ8()I
    .locals 0

    .line 82
    iget p0, p0, Landroidx/compose/foundation/text/TextDelegate;->overflow:I

    return p0
.end method

.method public final getPlaceholders()Ljava/util/List;
    .locals 0

    .line 85
    iget-object p0, p0, Landroidx/compose/foundation/text/TextDelegate;->placeholders:Ljava/util/List;

    return-object p0
.end method

.method public final getSoftWrap()Z
    .locals 0

    .line 81
    iget-boolean p0, p0, Landroidx/compose/foundation/text/TextDelegate;->softWrap:Z

    return p0
.end method

.method public final getStyle()Landroidx/compose/ui/text/TextStyle;
    .locals 0

    .line 78
    iget-object p0, p0, Landroidx/compose/foundation/text/TextDelegate;->style:Landroidx/compose/ui/text/TextStyle;

    return-object p0
.end method

.method public final getText()Landroidx/compose/ui/text/AnnotatedString;
    .locals 0

    .line 77
    iget-object p0, p0, Landroidx/compose/foundation/text/TextDelegate;->text:Landroidx/compose/ui/text/AnnotatedString;

    return-object p0
.end method

.method public final layout-NN6Ew-U(JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/TextLayoutResult;)Landroidx/compose/ui/text/TextLayoutResult;
    .locals 21

    move-object/from16 v0, p0

    move-wide/from16 v13, p1

    move-object/from16 v15, p4

    const-wide v16, 0xffffffffL

    const/16 v18, 0x20

    if-eqz v15, :cond_0

    .line 221
    iget-object v2, v0, Landroidx/compose/foundation/text/TextDelegate;->text:Landroidx/compose/ui/text/AnnotatedString;

    .line 222
    iget-object v3, v0, Landroidx/compose/foundation/text/TextDelegate;->style:Landroidx/compose/ui/text/TextStyle;

    .line 223
    iget-object v4, v0, Landroidx/compose/foundation/text/TextDelegate;->placeholders:Ljava/util/List;

    .line 224
    iget v5, v0, Landroidx/compose/foundation/text/TextDelegate;->maxLines:I

    .line 225
    iget-boolean v6, v0, Landroidx/compose/foundation/text/TextDelegate;->softWrap:Z

    .line 226
    iget v7, v0, Landroidx/compose/foundation/text/TextDelegate;->overflow:I

    .line 227
    iget-object v8, v0, Landroidx/compose/foundation/text/TextDelegate;->density:Landroidx/compose/ui/unit/Density;

    .line 229
    iget-object v10, v0, Landroidx/compose/foundation/text/TextDelegate;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    move-object/from16 v1, p4

    move-object/from16 v9, p3

    move-wide/from16 v11, p1

    .line 220
    invoke-static/range {v1 .. v12}, Landroidx/compose/foundation/text/TextLayoutHelperKt;->canReuse-7_7YC6M(Landroidx/compose/ui/text/TextLayoutResult;Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;IZILandroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/font/FontFamily$Resolver;J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    new-instance v12, Landroidx/compose/ui/text/TextLayoutInput;

    .line 239
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/ui/text/TextLayoutResult;->getLayoutInput()Landroidx/compose/ui/text/TextLayoutInput;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/text/TextLayoutInput;->getText()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v1

    .line 240
    iget-object v2, v0, Landroidx/compose/foundation/text/TextDelegate;->style:Landroidx/compose/ui/text/TextStyle;

    .line 241
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/ui/text/TextLayoutResult;->getLayoutInput()Landroidx/compose/ui/text/TextLayoutInput;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/text/TextLayoutInput;->getPlaceholders()Ljava/util/List;

    move-result-object v3

    .line 242
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/ui/text/TextLayoutResult;->getLayoutInput()Landroidx/compose/ui/text/TextLayoutInput;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/text/TextLayoutInput;->getMaxLines()I

    move-result v4

    .line 243
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/ui/text/TextLayoutResult;->getLayoutInput()Landroidx/compose/ui/text/TextLayoutInput;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/text/TextLayoutInput;->getSoftWrap()Z

    move-result v5

    .line 244
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/ui/text/TextLayoutResult;->getLayoutInput()Landroidx/compose/ui/text/TextLayoutInput;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/text/TextLayoutInput;->getOverflow-gIe3tQ8()I

    move-result v6

    .line 245
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/ui/text/TextLayoutResult;->getLayoutInput()Landroidx/compose/ui/text/TextLayoutInput;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/text/TextLayoutInput;->getDensity()Landroidx/compose/ui/unit/Density;

    move-result-object v7

    .line 246
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/ui/text/TextLayoutResult;->getLayoutInput()Landroidx/compose/ui/text/TextLayoutInput;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/text/TextLayoutInput;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v8

    .line 247
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/ui/text/TextLayoutResult;->getLayoutInput()Landroidx/compose/ui/text/TextLayoutInput;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/text/TextLayoutInput;->getFontFamilyResolver()Landroidx/compose/ui/text/font/FontFamily$Resolver;

    move-result-object v9

    const/16 v19, 0x0

    move-object v0, v12

    move-wide/from16 v10, p1

    move-object/from16 v20, v12

    move-object/from16 v12, v19

    .line 238
    invoke-direct/range {v0 .. v12}, Landroidx/compose/ui/text/TextLayoutInput;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;IZILandroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/font/FontFamily$Resolver;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 253
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/ui/text/TextLayoutResult;->getMultiParagraph()Landroidx/compose/ui/text/MultiParagraph;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/text/MultiParagraph;->getWidth()F

    move-result v0

    invoke-static {v0}, Landroidx/compose/foundation/text/TextDelegateKt;->ceilToIntPx(F)I

    move-result v0

    .line 254
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/ui/text/TextLayoutResult;->getMultiParagraph()Landroidx/compose/ui/text/MultiParagraph;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/text/MultiParagraph;->getHeight()F

    move-result v1

    invoke-static {v1}, Landroidx/compose/foundation/text/TextDelegateKt;->ceilToIntPx(F)I

    move-result v1

    int-to-long v2, v0

    shl-long v2, v2, v18

    int-to-long v0, v1

    and-long v0, v0, v16

    or-long/2addr v0, v2

    .line 30
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSize;->constructor-impl(J)J

    move-result-wide v0

    .line 251
    invoke-static {v13, v14, v0, v1}, Landroidx/compose/ui/unit/ConstraintsKt;->constrain-4WqzIAM(JJ)J

    move-result-wide v0

    move-object/from16 v2, v20

    .line 236
    invoke-virtual {v15, v2, v0, v1}, Landroidx/compose/ui/text/TextLayoutResult;->copy-O0kMr_c(Landroidx/compose/ui/text/TextLayoutInput;J)Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object v0

    return-object v0

    .line 261
    :cond_0
    invoke-direct/range {p0 .. p3}, Landroidx/compose/foundation/text/TextDelegate;->layoutText-K40F9xA(JLandroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/MultiParagraph;

    move-result-object v15

    .line 265
    invoke-virtual {v15}, Landroidx/compose/ui/text/MultiParagraph;->getWidth()F

    move-result v1

    invoke-static {v1}, Landroidx/compose/foundation/text/TextDelegateKt;->ceilToIntPx(F)I

    move-result v1

    invoke-virtual {v15}, Landroidx/compose/ui/text/MultiParagraph;->getHeight()F

    move-result v2

    invoke-static {v2}, Landroidx/compose/foundation/text/TextDelegateKt;->ceilToIntPx(F)I

    move-result v2

    int-to-long v3, v1

    shl-long v3, v3, v18

    int-to-long v1, v2

    and-long v1, v1, v16

    or-long/2addr v1, v3

    .line 30
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntSize;->constructor-impl(J)J

    move-result-wide v1

    .line 264
    invoke-static {v13, v14, v1, v2}, Landroidx/compose/ui/unit/ConstraintsKt;->constrain-4WqzIAM(JJ)J

    move-result-wide v16

    .line 272
    new-instance v18, Landroidx/compose/ui/text/TextLayoutResult;

    .line 273
    new-instance v19, Landroidx/compose/ui/text/TextLayoutInput;

    .line 274
    iget-object v1, v0, Landroidx/compose/foundation/text/TextDelegate;->text:Landroidx/compose/ui/text/AnnotatedString;

    .line 275
    iget-object v2, v0, Landroidx/compose/foundation/text/TextDelegate;->style:Landroidx/compose/ui/text/TextStyle;

    .line 276
    iget-object v3, v0, Landroidx/compose/foundation/text/TextDelegate;->placeholders:Ljava/util/List;

    .line 277
    iget v4, v0, Landroidx/compose/foundation/text/TextDelegate;->maxLines:I

    .line 278
    iget-boolean v5, v0, Landroidx/compose/foundation/text/TextDelegate;->softWrap:Z

    .line 279
    iget v6, v0, Landroidx/compose/foundation/text/TextDelegate;->overflow:I

    .line 280
    iget-object v7, v0, Landroidx/compose/foundation/text/TextDelegate;->density:Landroidx/compose/ui/unit/Density;

    .line 282
    iget-object v9, v0, Landroidx/compose/foundation/text/TextDelegate;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    const/4 v12, 0x0

    move-object/from16 v0, v19

    move-object/from16 v8, p3

    move-wide/from16 v10, p1

    .line 273
    invoke-direct/range {v0 .. v12}, Landroidx/compose/ui/text/TextLayoutInput;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;IZILandroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/font/FontFamily$Resolver;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v6, 0x0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object v3, v15

    move-wide/from16 v4, v16

    .line 272
    invoke-direct/range {v1 .. v6}, Landroidx/compose/ui/text/TextLayoutResult;-><init>(Landroidx/compose/ui/text/TextLayoutInput;Landroidx/compose/ui/text/MultiParagraph;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v18
.end method

.method public final layoutIntrinsics(Landroidx/compose/ui/unit/LayoutDirection;)V
    .locals 8

    .line 122
    iget-object v0, p0, Landroidx/compose/foundation/text/TextDelegate;->paragraphIntrinsics:Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    if-eqz v0, :cond_0

    .line 126
    iget-object v1, p0, Landroidx/compose/foundation/text/TextDelegate;->intrinsicsLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne p1, v1, :cond_0

    .line 127
    invoke-virtual {v0}, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->getHasStaleResolvedFonts()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 129
    :cond_0
    iput-object p1, p0, Landroidx/compose/foundation/text/TextDelegate;->intrinsicsLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 131
    iget-object v3, p0, Landroidx/compose/foundation/text/TextDelegate;->text:Landroidx/compose/ui/text/AnnotatedString;

    .line 132
    iget-object v0, p0, Landroidx/compose/foundation/text/TextDelegate;->style:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v0, p1}, Landroidx/compose/ui/text/TextStyleKt;->resolveDefaults(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v4

    .line 133
    iget-object v6, p0, Landroidx/compose/foundation/text/TextDelegate;->density:Landroidx/compose/ui/unit/Density;

    .line 134
    iget-object v7, p0, Landroidx/compose/foundation/text/TextDelegate;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 135
    iget-object v5, p0, Landroidx/compose/foundation/text/TextDelegate;->placeholders:Ljava/util/List;

    .line 130
    new-instance v0, Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroidx/compose/ui/text/MultiParagraphIntrinsics;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;)V

    .line 141
    :cond_1
    iput-object v0, p0, Landroidx/compose/foundation/text/TextDelegate;->paragraphIntrinsics:Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    return-void
.end method
