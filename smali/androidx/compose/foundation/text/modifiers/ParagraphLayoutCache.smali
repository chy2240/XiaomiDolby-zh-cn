.class public final Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;
.super Ljava/lang/Object;
.source "ParagraphLayoutCache.kt"


# instance fields
.field private cachedIntrinsicHeight:I

.field private cachedIntrinsicHeightInputWidth:I

.field private density:Landroidx/compose/ui/unit/Density;

.field private didOverflow:Z

.field private fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

.field private final fontSizeSearchScope:Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache$FontSizeSearchScopeImpl;

.field private intrinsicsLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

.field private lastDensity:J

.field private layoutSize:J

.field private mMinLinesConstrainer:Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;

.field private maxLines:I

.field private minLines:I

.field private overflow:I

.field private paragraph:Landroidx/compose/ui/text/Paragraph;

.field private paragraphIntrinsics:Landroidx/compose/ui/text/ParagraphIntrinsics;

.field private prevConstraints:J

.field private softWrap:Z

.field private style:Landroidx/compose/ui/text/TextStyle;

.field private text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;IZIILandroidx/compose/foundation/text/AutoSize;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->text:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->style:Landroidx/compose/ui/text/TextStyle;

    .line 53
    iput-object p3, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 54
    iput p4, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->overflow:I

    .line 55
    iput-boolean p5, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->softWrap:Z

    .line 56
    iput p6, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->maxLines:I

    .line 57
    iput p7, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->minLines:I

    .line 67
    sget-object p1, Landroidx/compose/foundation/text/modifiers/InlineDensity;->Companion:Landroidx/compose/foundation/text/modifiers/InlineDensity$Companion;

    invoke-virtual {p1}, Landroidx/compose/foundation/text/modifiers/InlineDensity$Companion;->getUnspecified-L26CHvs()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->lastDensity:J

    const/4 p1, 0x0

    int-to-long p2, p1

    const/16 p4, 0x20

    shl-long p4, p2, p4

    const-wide p6, 0xffffffffL

    and-long/2addr p2, p6

    or-long/2addr p2, p4

    .line 30
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntSize;->constructor-impl(J)J

    move-result-wide p2

    .line 100
    iput-wide p2, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->layoutSize:J

    .line 112
    sget-object p2, Landroidx/compose/ui/unit/Constraints;->Companion:Landroidx/compose/ui/unit/Constraints$Companion;

    invoke-virtual {p2, p1, p1}, Landroidx/compose/ui/unit/Constraints$Companion;->fixed-JhjzzOo(II)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->prevConstraints:J

    const/4 p1, -0x1

    .line 115
    iput p1, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->cachedIntrinsicHeightInputWidth:I

    .line 118
    iput p1, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->cachedIntrinsicHeight:I

    .line 121
    new-instance p1, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache$FontSizeSearchScopeImpl;

    invoke-direct {p1, p0}, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache$FontSizeSearchScopeImpl;-><init>(Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;)V

    iput-object p1, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->fontSizeSearchScope:Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache$FontSizeSearchScopeImpl;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;IZIILandroidx/compose/foundation/text/AutoSize;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p8}, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;-><init>(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;IZIILandroidx/compose/foundation/text/AutoSize;)V

    return-void
.end method

.method private final layoutText-K40F9xA(JLandroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/Paragraph;
    .locals 3

    .line 286
    invoke-direct {p0, p3}, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/ParagraphIntrinsics;

    move-result-object p3

    .line 293
    iget-boolean v0, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->softWrap:Z

    .line 294
    iget v1, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->overflow:I

    .line 295
    invoke-interface {p3}, Landroidx/compose/ui/text/ParagraphIntrinsics;->getMaxIntrinsicWidth()F

    move-result v2

    .line 291
    invoke-static {p1, p2, v0, v1, v2}, Landroidx/compose/foundation/text/modifiers/LayoutUtilsKt;->finalConstraints-tfFHcEY(JZIF)J

    move-result-wide p1

    .line 297
    iget-boolean v0, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->softWrap:Z

    iget v1, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->overflow:I

    iget v2, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->maxLines:I

    invoke-static {v0, v1, v2}, Landroidx/compose/foundation/text/modifiers/LayoutUtilsKt;->finalMaxLines-xdlQI24(ZII)I

    move-result v0

    .line 298
    iget p0, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->overflow:I

    .line 288
    invoke-static {p3, p1, p2, v0, p0}, Landroidx/compose/ui/text/ParagraphKt;->Paragraph-czeN-Hc(Landroidx/compose/ui/text/ParagraphIntrinsics;JII)Landroidx/compose/ui/text/Paragraph;

    move-result-object p0

    return-object p0
.end method

.method private final markDirty()V
    .locals 8

    const/4 v0, 0x0

    .line 337
    iput-object v0, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->paragraph:Landroidx/compose/ui/text/Paragraph;

    .line 338
    iput-object v0, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->paragraphIntrinsics:Landroidx/compose/ui/text/ParagraphIntrinsics;

    .line 339
    iput-object v0, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->intrinsicsLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    const/4 v0, -0x1

    .line 340
    iput v0, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->cachedIntrinsicHeightInputWidth:I

    .line 341
    iput v0, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->cachedIntrinsicHeight:I

    .line 342
    sget-object v0, Landroidx/compose/ui/unit/Constraints;->Companion:Landroidx/compose/ui/unit/Constraints$Companion;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroidx/compose/ui/unit/Constraints$Companion;->fixed-JhjzzOo(II)J

    move-result-wide v2

    iput-wide v2, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->prevConstraints:J

    int-to-long v2, v1

    const/16 v0, 0x20

    shl-long v4, v2, v0

    const-wide v6, 0xffffffffL

    and-long/2addr v2, v6

    or-long/2addr v2, v4

    .line 30
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntSize;->constructor-impl(J)J

    move-result-wide v2

    .line 343
    iput-wide v2, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->layoutSize:J

    .line 344
    iput-boolean v1, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->didOverflow:Z

    return-void
.end method

.method private final newLayoutWillBeDifferent-K40F9xA(JLandroidx/compose/ui/unit/LayoutDirection;)Z
    .locals 5

    .line 311
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->paragraph:Landroidx/compose/ui/text/Paragraph;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 312
    :cond_0
    iget-object v2, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->paragraphIntrinsics:Landroidx/compose/ui/text/ParagraphIntrinsics;

    if-nez v2, :cond_1

    return v1

    .line 316
    :cond_1
    invoke-interface {v2}, Landroidx/compose/ui/text/ParagraphIntrinsics;->getHasStaleResolvedFonts()Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    .line 319
    :cond_2
    iget-object v2, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->intrinsicsLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    if-eq p3, v2, :cond_3

    return v1

    .line 322
    :cond_3
    iget-wide v2, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->prevConstraints:J

    invoke-static {p1, p2, v2, v3}, Landroidx/compose/ui/unit/Constraints;->equals-impl0(JJ)Z

    move-result p3

    const/4 v2, 0x0

    if-eqz p3, :cond_4

    return v2

    .line 324
    :cond_4
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result p3

    iget-wide v3, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->prevConstraints:J

    invoke-static {v3, v4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result p0

    if-eq p3, p0, :cond_5

    return v1

    .line 327
    :cond_5
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result p0

    int-to-float p0, p0

    invoke-interface {v0}, Landroidx/compose/ui/text/Paragraph;->getHeight()F

    move-result p1

    cmpg-float p0, p0, p1

    if-ltz p0, :cond_7

    invoke-interface {v0}, Landroidx/compose/ui/text/Paragraph;->getDidExceedMaxLines()Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_0

    :cond_6
    return v2

    :cond_7
    :goto_0
    return v1
.end method

.method private final setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/ParagraphIntrinsics;
    .locals 10

    .line 258
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->paragraphIntrinsics:Landroidx/compose/ui/text/ParagraphIntrinsics;

    if-eqz v0, :cond_0

    .line 262
    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->intrinsicsLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne p1, v1, :cond_0

    .line 263
    invoke-interface {v0}, Landroidx/compose/ui/text/ParagraphIntrinsics;->getHasStaleResolvedFonts()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 265
    :cond_0
    iput-object p1, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->intrinsicsLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 267
    iget-object v2, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->text:Ljava/lang/String;

    .line 268
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->style:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v0, p1}, Landroidx/compose/ui/text/TextStyleKt;->resolveDefaults(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v3

    .line 269
    iget-object v6, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->density:Landroidx/compose/ui/unit/Density;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 270
    iget-object v7, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    const/16 v8, 0xc

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 266
    invoke-static/range {v2 .. v9}, Landroidx/compose/ui/text/ParagraphIntrinsicsKt;->ParagraphIntrinsics$default(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Ljava/util/List;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;ILjava/lang/Object;)Landroidx/compose/ui/text/ParagraphIntrinsics;

    move-result-object v0

    .line 275
    :cond_1
    iput-object v0, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->paragraphIntrinsics:Landroidx/compose/ui/text/ParagraphIntrinsics;

    return-object v0
.end method

.method private final useMinLinesConstrainer-euUD3Qg(JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/TextStyle;)J
    .locals 6

    .line 182
    sget-object v0, Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;->Companion:Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer$Companion;

    .line 183
    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->mMinLinesConstrainer:Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;

    .line 186
    iget-object v4, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->density:Landroidx/compose/ui/unit/Density;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 187
    iget-object v5, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    move-object v2, p3

    move-object v3, p4

    .line 182
    invoke-virtual/range {v0 .. v5}, Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer$Companion;->from(Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;)Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;

    move-result-object p3

    .line 189
    iput-object p3, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->mMinLinesConstrainer:Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;

    .line 190
    iget p0, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->minLines:I

    invoke-virtual {p3, p1, p2, p0}, Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;->coerceMinLines-Oh53vG4$foundation_release(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic useMinLinesConstrainer-euUD3Qg$default(Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/TextStyle;ILjava/lang/Object;)J
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    .line 179
    iget-object p4, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->style:Landroidx/compose/ui/text/TextStyle;

    .line 176
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->useMinLinesConstrainer-euUD3Qg(JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/TextStyle;)J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public final getDensity$foundation_release()Landroidx/compose/ui/unit/Density;
    .locals 0

    .line 70
    iget-object p0, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->density:Landroidx/compose/ui/unit/Density;

    return-object p0
.end method

.method public final getDidOverflow$foundation_release()Z
    .locals 0

    .line 97
    iget-boolean p0, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->didOverflow:Z

    return p0
.end method

.method public final getLayoutSize-YbymL2g$foundation_release()J
    .locals 2

    .line 100
    iget-wide v0, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->layoutSize:J

    return-wide v0
.end method

.method public final getObserveFontChanges$foundation_release()Lkotlin/Unit;
    .locals 0

    .line 90
    iget-object p0, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->paragraphIntrinsics:Landroidx/compose/ui/text/ParagraphIntrinsics;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroidx/compose/ui/text/ParagraphIntrinsics;->getHasStaleResolvedFonts()Z

    .line 91
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final getParagraph$foundation_release()Landroidx/compose/ui/text/Paragraph;
    .locals 0

    .line 94
    iget-object p0, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->paragraph:Landroidx/compose/ui/text/Paragraph;

    return-object p0
.end method

.method public final intrinsicHeight(ILandroidx/compose/ui/unit/LayoutDirection;)I
    .locals 3

    .line 217
    iget v0, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->cachedIntrinsicHeightInputWidth:I

    .line 218
    iget v1, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->cachedIntrinsicHeight:I

    if-ne p1, v0, :cond_0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    const v0, 0x7fffffff

    const/4 v1, 0x0

    .line 221
    invoke-static {v1, p1, v1, v0}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints(IIII)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->layoutText-K40F9xA(JLandroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/Paragraph;

    move-result-object p2

    .line 222
    invoke-interface {p2}, Landroidx/compose/ui/text/Paragraph;->getHeight()F

    move-result p2

    .line 223
    invoke-static {p2}, Landroidx/compose/foundation/text/TextDelegateKt;->ceilToIntPx(F)I

    move-result p2

    .line 225
    iput p1, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->cachedIntrinsicHeightInputWidth:I

    .line 226
    iput p2, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->cachedIntrinsicHeight:I

    return p2
.end method

.method public final layoutWithConstraints-K40F9xA(JLandroidx/compose/ui/unit/LayoutDirection;)Z
    .locals 11

    .line 130
    iget v0, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->minLines:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    .line 131
    invoke-static/range {v2 .. v8}, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->useMinLinesConstrainer-euUD3Qg$default(Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/TextStyle;ILjava/lang/Object;)J

    move-result-wide p1

    .line 136
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->newLayoutWillBeDifferent-K40F9xA(JLandroidx/compose/ui/unit/LayoutDirection;)Z

    move-result v0

    const/4 v2, 0x0

    const-wide v3, 0xffffffffL

    const/16 v5, 0x20

    if-nez v0, :cond_4

    .line 137
    iget-wide v6, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->prevConstraints:J

    invoke-static {p1, p2, v6, v7}, Landroidx/compose/ui/unit/Constraints;->equals-impl0(JJ)Z

    move-result p3

    if-nez p3, :cond_3

    .line 139
    iget-object p3, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->paragraph:Landroidx/compose/ui/text/Paragraph;

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 140
    invoke-interface {p3}, Landroidx/compose/ui/text/Paragraph;->getMaxIntrinsicWidth()F

    move-result v0

    invoke-interface {p3}, Landroidx/compose/ui/text/Paragraph;->getWidth()F

    move-result v6

    invoke-static {v0, v6}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 143
    invoke-static {v0}, Landroidx/compose/foundation/text/TextDelegateKt;->ceilToIntPx(F)I

    move-result v0

    invoke-interface {p3}, Landroidx/compose/ui/text/Paragraph;->getHeight()F

    move-result v6

    invoke-static {v6}, Landroidx/compose/foundation/text/TextDelegateKt;->ceilToIntPx(F)I

    move-result v6

    int-to-long v7, v0

    shl-long/2addr v7, v5

    int-to-long v9, v6

    and-long/2addr v9, v3

    or-long v6, v7, v9

    .line 30
    invoke-static {v6, v7}, Landroidx/compose/ui/unit/IntSize;->constructor-impl(J)J

    move-result-wide v6

    .line 142
    invoke-static {p1, p2, v6, v7}, Landroidx/compose/ui/unit/ConstraintsKt;->constrain-4WqzIAM(JJ)J

    move-result-wide v6

    .line 145
    iput-wide v6, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->layoutSize:J

    .line 147
    iget v0, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->overflow:I

    sget-object v8, Landroidx/compose/ui/text/style/TextOverflow;->Companion:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/text/style/TextOverflow$Companion;->getVisible-gIe3tQ8()I

    move-result v8

    invoke-static {v0, v8}, Landroidx/compose/ui/text/style/TextOverflow;->equals-impl0(II)Z

    move-result v0

    if-nez v0, :cond_1

    shr-long v8, v6, v5

    long-to-int v0, v8

    int-to-float v0, v0

    .line 148
    invoke-interface {p3}, Landroidx/compose/ui/text/Paragraph;->getWidth()F

    move-result v5

    cmpg-float v0, v0, v5

    if-ltz v0, :cond_2

    and-long/2addr v3, v6

    long-to-int v0, v3

    int-to-float v0, v0

    .line 149
    invoke-interface {p3}, Landroidx/compose/ui/text/Paragraph;->getHeight()F

    move-result p3

    cmpg-float p3, v0, p3

    if-gez p3, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 146
    :cond_2
    :goto_0
    iput-boolean v1, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->didOverflow:Z

    .line 150
    iput-wide p1, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->prevConstraints:J

    :cond_3
    return v2

    .line 162
    :cond_4
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->layoutText-K40F9xA(JLandroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/Paragraph;

    move-result-object p3

    .line 163
    iput-wide p1, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->prevConstraints:J

    .line 166
    invoke-interface {p3}, Landroidx/compose/ui/text/Paragraph;->getWidth()F

    move-result v0

    invoke-static {v0}, Landroidx/compose/foundation/text/TextDelegateKt;->ceilToIntPx(F)I

    move-result v0

    invoke-interface {p3}, Landroidx/compose/ui/text/Paragraph;->getHeight()F

    move-result v6

    invoke-static {v6}, Landroidx/compose/foundation/text/TextDelegateKt;->ceilToIntPx(F)I

    move-result v6

    int-to-long v7, v0

    shl-long/2addr v7, v5

    int-to-long v9, v6

    and-long/2addr v9, v3

    or-long v6, v7, v9

    .line 30
    invoke-static {v6, v7}, Landroidx/compose/ui/unit/IntSize;->constructor-impl(J)J

    move-result-wide v6

    .line 165
    invoke-static {p1, p2, v6, v7}, Landroidx/compose/ui/unit/ConstraintsKt;->constrain-4WqzIAM(JJ)J

    move-result-wide p1

    .line 168
    iput-wide p1, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->layoutSize:J

    .line 170
    iget v0, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->overflow:I

    sget-object v6, Landroidx/compose/ui/text/style/TextOverflow;->Companion:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/text/style/TextOverflow$Companion;->getVisible-gIe3tQ8()I

    move-result v6

    invoke-static {v0, v6}, Landroidx/compose/ui/text/style/TextOverflow;->equals-impl0(II)Z

    move-result v0

    if-nez v0, :cond_6

    shr-long v5, p1, v5

    long-to-int v0, v5

    int-to-float v0, v0

    .line 171
    invoke-interface {p3}, Landroidx/compose/ui/text/Paragraph;->getWidth()F

    move-result v5

    cmpg-float v0, v0, v5

    if-ltz v0, :cond_5

    and-long/2addr p1, v3

    long-to-int p1, p1

    int-to-float p1, p1

    invoke-interface {p3}, Landroidx/compose/ui/text/Paragraph;->getHeight()F

    move-result p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_6

    :cond_5
    move v2, v1

    .line 169
    :cond_6
    iput-boolean v2, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->didOverflow:Z

    .line 161
    iput-object p3, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->paragraph:Landroidx/compose/ui/text/Paragraph;

    return v1
.end method

.method public final maxIntrinsicWidth(Landroidx/compose/ui/unit/LayoutDirection;)I
    .locals 0

    .line 400
    invoke-direct {p0, p1}, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/ParagraphIntrinsics;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/ui/text/ParagraphIntrinsics;->getMaxIntrinsicWidth()F

    move-result p0

    invoke-static {p0}, Landroidx/compose/foundation/text/TextDelegateKt;->ceilToIntPx(F)I

    move-result p0

    return p0
.end method

.method public final minIntrinsicWidth(Landroidx/compose/ui/unit/LayoutDirection;)I
    .locals 0

    .line 395
    invoke-direct {p0, p1}, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/ParagraphIntrinsics;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/ui/text/ParagraphIntrinsics;->getMinIntrinsicWidth()F

    move-result p0

    invoke-static {p0}, Landroidx/compose/foundation/text/TextDelegateKt;->ceilToIntPx(F)I

    move-result p0

    return p0
.end method

.method public final setDensity$foundation_release(Landroidx/compose/ui/unit/Density;)V
    .locals 5

    .line 72
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->density:Landroidx/compose/ui/unit/Density;

    if-eqz p1, :cond_0

    .line 73
    invoke-static {p1}, Landroidx/compose/foundation/text/modifiers/InlineDensity;->constructor-impl(Landroidx/compose/ui/unit/Density;)J

    move-result-wide v1

    goto :goto_0

    :cond_0
    sget-object v1, Landroidx/compose/foundation/text/modifiers/InlineDensity;->Companion:Landroidx/compose/foundation/text/modifiers/InlineDensity$Companion;

    invoke-virtual {v1}, Landroidx/compose/foundation/text/modifiers/InlineDensity$Companion;->getUnspecified-L26CHvs()J

    move-result-wide v1

    :goto_0
    if-nez v0, :cond_1

    .line 75
    iput-object p1, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->density:Landroidx/compose/ui/unit/Density;

    .line 76
    iput-wide v1, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->lastDensity:J

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 80
    iget-wide v3, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->lastDensity:J

    invoke-static {v3, v4, v1, v2}, Landroidx/compose/foundation/text/modifiers/InlineDensity;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_3

    .line 81
    :cond_2
    iput-object p1, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->density:Landroidx/compose/ui/unit/Density;

    .line 82
    iput-wide v1, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->lastDensity:J

    .line 83
    invoke-direct {p0}, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->markDirty()V

    :cond_3
    return-void
.end method

.method public final slowCreateTextLayoutResultOrNull(Landroidx/compose/ui/text/TextStyle;)Landroidx/compose/ui/text/TextLayoutResult;
    .locals 25

    move-object/from16 v0, p0

    .line 356
    iget-object v9, v0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->intrinsicsLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    const/4 v1, 0x0

    if-nez v9, :cond_0

    return-object v1

    .line 357
    :cond_0
    iget-object v14, v0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->density:Landroidx/compose/ui/unit/Density;

    if-nez v14, :cond_1

    return-object v1

    .line 358
    :cond_1
    new-instance v15, Landroidx/compose/ui/text/AnnotatedString;

    iget-object v2, v0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->text:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-direct {v15, v2, v1, v3, v1}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 359
    iget-object v2, v0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->paragraph:Landroidx/compose/ui/text/Paragraph;

    if-nez v2, :cond_2

    return-object v1

    .line 360
    :cond_2
    iget-object v2, v0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->paragraphIntrinsics:Landroidx/compose/ui/text/ParagraphIntrinsics;

    if-nez v2, :cond_3

    return-object v1

    .line 361
    :cond_3
    iget-wide v1, v0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->prevConstraints:J

    const-wide v3, -0x1fffffffdL

    and-long/2addr v1, v3

    .line 203
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Constraints;->constructor-impl(J)J

    move-result-wide v18

    .line 364
    new-instance v23, Landroidx/compose/ui/text/TextLayoutResult;

    .line 365
    new-instance v24, Landroidx/compose/ui/text/TextLayoutInput;

    .line 368
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 369
    iget v5, v0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->maxLines:I

    .line 370
    iget-boolean v6, v0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->softWrap:Z

    .line 371
    iget v7, v0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->overflow:I

    .line 374
    iget-object v10, v0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    const/4 v13, 0x0

    move-object/from16 v1, v24

    move-object v2, v15

    move-object/from16 v3, p1

    move-object v8, v14

    move-wide/from16 v11, v18

    .line 365
    invoke-direct/range {v1 .. v13}, Landroidx/compose/ui/text/TextLayoutInput;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;IZILandroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/font/FontFamily$Resolver;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 377
    new-instance v8, Landroidx/compose/ui/text/MultiParagraph;

    .line 378
    new-instance v17, Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    .line 381
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 383
    iget-object v7, v0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    move-object/from16 v2, v17

    move-object v3, v15

    move-object/from16 v4, p1

    move-object v6, v14

    .line 378
    invoke-direct/range {v2 .. v7}, Landroidx/compose/ui/text/MultiParagraphIntrinsics;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;)V

    .line 386
    iget v1, v0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->maxLines:I

    .line 387
    iget v2, v0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->overflow:I

    const/16 v22, 0x0

    move-object/from16 v16, v8

    move/from16 v20, v1

    move/from16 v21, v2

    .line 377
    invoke-direct/range {v16 .. v22}, Landroidx/compose/ui/text/MultiParagraph;-><init>(Landroidx/compose/ui/text/MultiParagraphIntrinsics;JIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 389
    iget-wide v3, v0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->layoutSize:J

    const/4 v5, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object v2, v8

    .line 364
    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/text/TextLayoutResult;-><init>(Landroidx/compose/ui/text/TextLayoutInput;Landroidx/compose/ui/text/MultiParagraph;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v23
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ParagraphLayoutCache(paragraph="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->paragraph:Landroidx/compose/ui/text/Paragraph;

    if-eqz v1, :cond_0

    const-string v1, "<paragraph>"

    goto :goto_0

    :cond_0
    const-string v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", lastDensity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    iget-wide v1, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->lastDensity:J

    .line 404
    invoke-static {v1, v2}, Landroidx/compose/foundation/text/modifiers/InlineDensity;->toString-impl(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final update-ZNqEYIc(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;IZIILandroidx/compose/foundation/text/AutoSize;)V
    .locals 0

    .line 241
    iput-object p1, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->text:Ljava/lang/String;

    .line 242
    iput-object p2, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->style:Landroidx/compose/ui/text/TextStyle;

    .line 243
    iput-object p3, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 244
    iput p4, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->overflow:I

    .line 245
    iput-boolean p5, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->softWrap:Z

    .line 246
    iput p6, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->maxLines:I

    .line 247
    iput p7, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->minLines:I

    .line 249
    invoke-direct {p0}, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->markDirty()V

    return-void
.end method
