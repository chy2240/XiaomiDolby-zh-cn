.class public final Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;
.super Ljava/lang/Object;
.source "MultiParagraphLayoutCache.kt"


# instance fields
.field private cachedIntrinsicHeight:I

.field private cachedIntrinsicHeightInputWidth:I

.field private density:Landroidx/compose/ui/unit/Density;

.field private fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

.field private intrinsicsLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

.field private lastDensity:J

.field private layoutCache:Landroidx/compose/ui/text/TextLayoutResult;

.field private mMinLinesConstrainer:Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;

.field private maxLines:I

.field private minLines:I

.field private overflow:I

.field private paragraphIntrinsics:Landroidx/compose/ui/text/MultiParagraphIntrinsics;

.field private placeholders:Ljava/util/List;

.field private softWrap:Z

.field private style:Landroidx/compose/ui/text/TextStyle;

.field private text:Landroidx/compose/ui/text/AnnotatedString;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method private constructor <init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;IZIILjava/util/List;Landroidx/compose/foundation/text/AutoSize;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->text:Landroidx/compose/ui/text/AnnotatedString;

    .line 52
    iput-object p2, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->style:Landroidx/compose/ui/text/TextStyle;

    .line 53
    iput-object p3, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 54
    iput p4, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->overflow:I

    .line 55
    iput-boolean p5, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->softWrap:Z

    .line 56
    iput p6, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->maxLines:I

    .line 57
    iput p7, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->minLines:I

    .line 58
    iput-object p8, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->placeholders:Ljava/util/List;

    .line 70
    sget-object p1, Landroidx/compose/foundation/text/modifiers/InlineDensity;->Companion:Landroidx/compose/foundation/text/modifiers/InlineDensity$Companion;

    invoke-virtual {p1}, Landroidx/compose/foundation/text/modifiers/InlineDensity$Companion;->getUnspecified-L26CHvs()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->lastDensity:J

    const/4 p1, -0x1

    .line 100
    iput p1, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->cachedIntrinsicHeightInputWidth:I

    .line 103
    iput p1, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->cachedIntrinsicHeight:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;IZIILjava/util/List;Landroidx/compose/foundation/text/AutoSize;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p9}, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;IZIILjava/util/List;Landroidx/compose/foundation/text/AutoSize;)V

    return-void
.end method

.method private final layoutText-K40F9xA(JLandroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/MultiParagraph;
    .locals 7

    .line 295
    invoke-direct {p0, p3}, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    move-result-object v1

    .line 297
    new-instance p3, Landroidx/compose/ui/text/MultiParagraph;

    .line 302
    iget-boolean v0, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->softWrap:Z

    .line 303
    iget v2, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->overflow:I

    .line 304
    invoke-virtual {v1}, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->getMaxIntrinsicWidth()F

    move-result v3

    .line 300
    invoke-static {p1, p2, v0, v2, v3}, Landroidx/compose/foundation/text/modifiers/LayoutUtilsKt;->finalConstraints-tfFHcEY(JZIF)J

    move-result-wide v2

    .line 306
    iget-boolean p1, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->softWrap:Z

    iget p2, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->overflow:I

    iget v0, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->maxLines:I

    invoke-static {p1, p2, v0}, Landroidx/compose/foundation/text/modifiers/LayoutUtilsKt;->finalMaxLines-xdlQI24(ZII)I

    move-result v4

    .line 307
    iget v5, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->overflow:I

    const/4 v6, 0x0

    move-object v0, p3

    .line 297
    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/text/MultiParagraph;-><init>(Landroidx/compose/ui/text/MultiParagraphIntrinsics;JIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p3
.end method

.method private final markDirty()V
    .locals 1

    const/4 v0, 0x0

    .line 352
    iput-object v0, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->paragraphIntrinsics:Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    .line 353
    iput-object v0, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->layoutCache:Landroidx/compose/ui/text/TextLayoutResult;

    const/4 v0, -0x1

    .line 354
    iput v0, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->cachedIntrinsicHeight:I

    .line 355
    iput v0, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->cachedIntrinsicHeightInputWidth:I

    return-void
.end method

.method private final newLayoutWillBeDifferent-VKLhPVY(Landroidx/compose/ui/text/TextLayoutResult;JLandroidx/compose/ui/unit/LayoutDirection;)Z
    .locals 3

    const/4 p0, 0x1

    if-nez p1, :cond_0

    return p0

    .line 323
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/text/TextLayoutResult;->getMultiParagraph()Landroidx/compose/ui/text/MultiParagraph;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/text/MultiParagraph;->getIntrinsics()Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->getHasStaleResolvedFonts()Z

    move-result v0

    if-eqz v0, :cond_1

    return p0

    .line 326
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/ui/text/TextLayoutResult;->getLayoutInput()Landroidx/compose/ui/text/TextLayoutInput;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/text/TextLayoutInput;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v0

    if-eq p4, v0, :cond_2

    return p0

    .line 329
    :cond_2
    invoke-virtual {p1}, Landroidx/compose/ui/text/TextLayoutResult;->getLayoutInput()Landroidx/compose/ui/text/TextLayoutInput;

    move-result-object p4

    invoke-virtual {p4}, Landroidx/compose/ui/text/TextLayoutInput;->getConstraints-msEJaDk()J

    move-result-wide v0

    invoke-static {p2, p3, v0, v1}, Landroidx/compose/ui/unit/Constraints;->equals-impl0(JJ)Z

    move-result p4

    const/4 v0, 0x0

    if-eqz p4, :cond_3

    return v0

    .line 331
    :cond_3
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result p4

    invoke-virtual {p1}, Landroidx/compose/ui/text/TextLayoutResult;->getLayoutInput()Landroidx/compose/ui/text/TextLayoutInput;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/text/TextLayoutInput;->getConstraints-msEJaDk()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v1

    if-eq p4, v1, :cond_4

    return p0

    .line 334
    :cond_4
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1}, Landroidx/compose/ui/text/TextLayoutResult;->getMultiParagraph()Landroidx/compose/ui/text/MultiParagraph;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/compose/ui/text/MultiParagraph;->getHeight()F

    move-result p3

    cmpg-float p2, p2, p3

    if-ltz p2, :cond_6

    invoke-virtual {p1}, Landroidx/compose/ui/text/TextLayoutResult;->getMultiParagraph()Landroidx/compose/ui/text/MultiParagraph;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/ui/text/MultiParagraph;->getDidExceedMaxLines()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    return v0

    :cond_6
    :goto_0
    return p0
.end method

.method private final setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/MultiParagraphIntrinsics;
    .locals 8

    .line 262
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->paragraphIntrinsics:Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    if-eqz v0, :cond_0

    .line 266
    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->intrinsicsLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne p1, v1, :cond_0

    .line 267
    invoke-virtual {v0}, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->getHasStaleResolvedFonts()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 269
    :cond_0
    iput-object p1, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->intrinsicsLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 271
    iget-object v3, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->text:Landroidx/compose/ui/text/AnnotatedString;

    .line 272
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->style:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v0, p1}, Landroidx/compose/ui/text/TextStyleKt;->resolveDefaults(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v4

    .line 273
    iget-object v6, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->density:Landroidx/compose/ui/unit/Density;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 274
    iget-object v7, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 275
    iget-object p1, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->placeholders:Ljava/util/List;

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_1
    move-object v5, p1

    .line 270
    new-instance v0, Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroidx/compose/ui/text/MultiParagraphIntrinsics;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;)V

    .line 281
    :cond_2
    iput-object v0, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->paragraphIntrinsics:Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    return-object v0
.end method

.method private final textLayoutResult-VKLhPVY(Landroidx/compose/ui/unit/LayoutDirection;JLandroidx/compose/ui/text/MultiParagraph;)Landroidx/compose/ui/text/TextLayoutResult;
    .locals 22

    move-object/from16 v0, p0

    .line 196
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/ui/text/MultiParagraph;->getIntrinsics()Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->getMaxIntrinsicWidth()F

    move-result v1

    invoke-virtual/range {p4 .. p4}, Landroidx/compose/ui/text/MultiParagraph;->getWidth()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 197
    new-instance v8, Landroidx/compose/ui/text/TextLayoutResult;

    .line 198
    new-instance v3, Landroidx/compose/ui/text/TextLayoutInput;

    .line 199
    iget-object v10, v0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->text:Landroidx/compose/ui/text/AnnotatedString;

    .line 200
    iget-object v11, v0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->style:Landroidx/compose/ui/text/TextStyle;

    .line 201
    iget-object v2, v0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->placeholders:Ljava/util/List;

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    :cond_0
    move-object v12, v2

    .line 202
    iget v13, v0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->maxLines:I

    .line 203
    iget-boolean v14, v0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->softWrap:Z

    .line 204
    iget v15, v0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->overflow:I

    .line 205
    iget-object v2, v0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->density:Landroidx/compose/ui/unit/Density;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 207
    iget-object v0, v0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    const/16 v21, 0x0

    move-object v9, v3

    move-object/from16 v16, v2

    move-object/from16 v17, p1

    move-object/from16 v18, v0

    move-wide/from16 v19, p2

    .line 198
    invoke-direct/range {v9 .. v21}, Landroidx/compose/ui/text/TextLayoutInput;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;IZILandroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/font/FontFamily$Resolver;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 212
    invoke-static {v1}, Landroidx/compose/foundation/text/TextDelegateKt;->ceilToIntPx(F)I

    move-result v0

    invoke-virtual/range {p4 .. p4}, Landroidx/compose/ui/text/MultiParagraph;->getHeight()F

    move-result v1

    invoke-static {v1}, Landroidx/compose/foundation/text/TextDelegateKt;->ceilToIntPx(F)I

    move-result v1

    int-to-long v4, v0

    const/16 v0, 0x20

    shl-long/2addr v4, v0

    int-to-long v0, v1

    const-wide v6, 0xffffffffL

    and-long/2addr v0, v6

    or-long/2addr v0, v4

    .line 30
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSize;->constructor-impl(J)J

    move-result-wide v0

    move-wide/from16 v4, p2

    .line 211
    invoke-static {v4, v5, v0, v1}, Landroidx/compose/ui/unit/ConstraintsKt;->constrain-4WqzIAM(JJ)J

    move-result-wide v5

    const/4 v7, 0x0

    move-object v2, v8

    move-object/from16 v4, p4

    .line 197
    invoke-direct/range {v2 .. v7}, Landroidx/compose/ui/text/TextLayoutResult;-><init>(Landroidx/compose/ui/text/TextLayoutInput;Landroidx/compose/ui/text/MultiParagraph;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v8
.end method

.method private final useMinLinesConstrainer-Oh53vG4(JLandroidx/compose/ui/unit/LayoutDirection;)J
    .locals 6

    .line 164
    sget-object v0, Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;->Companion:Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer$Companion;

    .line 165
    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->mMinLinesConstrainer:Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;

    .line 167
    iget-object v3, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->style:Landroidx/compose/ui/text/TextStyle;

    .line 168
    iget-object v4, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->density:Landroidx/compose/ui/unit/Density;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 169
    iget-object v5, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    move-object v2, p3

    .line 164
    invoke-virtual/range {v0 .. v5}, Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer$Companion;->from(Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;)Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;

    move-result-object p3

    .line 171
    iput-object p3, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->mMinLinesConstrainer:Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;

    .line 172
    iget p0, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->minLines:I

    invoke-virtual {p3, p1, p2, p0}, Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;->coerceMinLines-Oh53vG4$foundation_release(JI)J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public final getDensity$foundation_release()Landroidx/compose/ui/unit/Density;
    .locals 0

    .line 73
    iget-object p0, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->density:Landroidx/compose/ui/unit/Density;

    return-object p0
.end method

.method public final getLayoutOrNull()Landroidx/compose/ui/text/TextLayoutResult;
    .locals 0

    .line 122
    iget-object p0, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->layoutCache:Landroidx/compose/ui/text/TextLayoutResult;

    return-object p0
.end method

.method public final getTextLayoutResult()Landroidx/compose/ui/text/TextLayoutResult;
    .locals 1

    .line 118
    iget-object p0, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->layoutCache:Landroidx/compose/ui/text/TextLayoutResult;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "You must call layoutWithConstraints first"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final intrinsicHeight(ILandroidx/compose/ui/unit/LayoutDirection;)I
    .locals 3

    .line 219
    iget v0, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->cachedIntrinsicHeightInputWidth:I

    .line 220
    iget v1, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->cachedIntrinsicHeight:I

    if-ne p1, v0, :cond_0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    const v0, 0x7fffffff

    const/4 v1, 0x0

    .line 223
    invoke-static {v1, p1, v1, v0}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints(IIII)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->layoutText-K40F9xA(JLandroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/MultiParagraph;

    move-result-object p2

    .line 224
    invoke-virtual {p2}, Landroidx/compose/ui/text/MultiParagraph;->getHeight()F

    move-result p2

    .line 225
    invoke-static {p2}, Landroidx/compose/foundation/text/TextDelegateKt;->ceilToIntPx(F)I

    move-result p2

    .line 227
    iput p1, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->cachedIntrinsicHeightInputWidth:I

    .line 228
    iput p2, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->cachedIntrinsicHeight:I

    return p2
.end method

.method public final layoutWithConstraints-K40F9xA(JLandroidx/compose/ui/unit/LayoutDirection;)Z
    .locals 4

    .line 131
    iget v0, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->minLines:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 132
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->useMinLinesConstrainer-Oh53vG4(JLandroidx/compose/ui/unit/LayoutDirection;)J

    move-result-wide p1

    .line 136
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->layoutCache:Landroidx/compose/ui/text/TextLayoutResult;

    invoke-direct {p0, v0, p1, p2, p3}, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->newLayoutWillBeDifferent-VKLhPVY(Landroidx/compose/ui/text/TextLayoutResult;JLandroidx/compose/ui/unit/LayoutDirection;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 137
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->layoutCache:Landroidx/compose/ui/text/TextLayoutResult;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/compose/ui/text/TextLayoutResult;->getLayoutInput()Landroidx/compose/ui/text/TextLayoutInput;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/text/TextLayoutInput;->getConstraints-msEJaDk()J

    move-result-wide v2

    invoke-static {p1, p2, v2, v3}, Landroidx/compose/ui/unit/Constraints;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 143
    :cond_1
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->layoutCache:Landroidx/compose/ui/text/TextLayoutResult;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/compose/ui/text/TextLayoutResult;->getMultiParagraph()Landroidx/compose/ui/text/MultiParagraph;

    move-result-object v0

    .line 140
    invoke-direct {p0, p3, p1, p2, v0}, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->textLayoutResult-VKLhPVY(Landroidx/compose/ui/unit/LayoutDirection;JLandroidx/compose/ui/text/MultiParagraph;)Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object p1

    .line 139
    iput-object p1, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->layoutCache:Landroidx/compose/ui/text/TextLayoutResult;

    return v1

    .line 153
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->layoutText-K40F9xA(JLandroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/MultiParagraph;

    move-result-object v0

    .line 155
    invoke-direct {p0, p3, p1, p2, v0}, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->textLayoutResult-VKLhPVY(Landroidx/compose/ui/unit/LayoutDirection;JLandroidx/compose/ui/text/MultiParagraph;)Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->layoutCache:Landroidx/compose/ui/text/TextLayoutResult;

    return v1
.end method

.method public final maxIntrinsicWidth(Landroidx/compose/ui/unit/LayoutDirection;)I
    .locals 0

    .line 360
    invoke-direct {p0, p1}, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->getMaxIntrinsicWidth()F

    move-result p0

    invoke-static {p0}, Landroidx/compose/foundation/text/TextDelegateKt;->ceilToIntPx(F)I

    move-result p0

    return p0
.end method

.method public final minIntrinsicWidth(Landroidx/compose/ui/unit/LayoutDirection;)I
    .locals 0

    .line 365
    invoke-direct {p0, p1}, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->getMinIntrinsicWidth()F

    move-result p0

    invoke-static {p0}, Landroidx/compose/foundation/text/TextDelegateKt;->ceilToIntPx(F)I

    move-result p0

    return p0
.end method

.method public final setDensity$foundation_release(Landroidx/compose/ui/unit/Density;)V
    .locals 5

    .line 75
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->density:Landroidx/compose/ui/unit/Density;

    if-eqz p1, :cond_0

    .line 76
    invoke-static {p1}, Landroidx/compose/foundation/text/modifiers/InlineDensity;->constructor-impl(Landroidx/compose/ui/unit/Density;)J

    move-result-wide v1

    goto :goto_0

    :cond_0
    sget-object v1, Landroidx/compose/foundation/text/modifiers/InlineDensity;->Companion:Landroidx/compose/foundation/text/modifiers/InlineDensity$Companion;

    invoke-virtual {v1}, Landroidx/compose/foundation/text/modifiers/InlineDensity$Companion;->getUnspecified-L26CHvs()J

    move-result-wide v1

    :goto_0
    if-nez v0, :cond_1

    .line 78
    iput-object p1, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->density:Landroidx/compose/ui/unit/Density;

    .line 79
    iput-wide v1, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->lastDensity:J

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 83
    iget-wide v3, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->lastDensity:J

    invoke-static {v3, v4, v1, v2}, Landroidx/compose/foundation/text/modifiers/InlineDensity;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_3

    .line 84
    :cond_2
    iput-object p1, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->density:Landroidx/compose/ui/unit/Density;

    .line 85
    iput-wide v1, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->lastDensity:J

    .line 86
    invoke-direct {p0}, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->markDirty()V

    :cond_3
    return-void
.end method

.method public final update-J2qo7bo(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;IZIILjava/util/List;Landroidx/compose/foundation/text/AutoSize;)V
    .locals 0

    .line 244
    iput-object p1, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->text:Landroidx/compose/ui/text/AnnotatedString;

    .line 245
    iput-object p2, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->style:Landroidx/compose/ui/text/TextStyle;

    .line 246
    iput-object p3, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 247
    iput p4, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->overflow:I

    .line 248
    iput-boolean p5, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->softWrap:Z

    .line 249
    iput p6, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->maxLines:I

    .line 250
    iput p7, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->minLines:I

    .line 251
    iput-object p8, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->placeholders:Ljava/util/List;

    .line 253
    invoke-direct {p0}, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->markDirty()V

    return-void
.end method
