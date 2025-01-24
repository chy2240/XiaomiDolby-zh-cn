.class public abstract Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
.super Ljava/lang/Object;
.source "TextPreparedSelection.kt"


# static fields
.field public static final $stable:I

.field public static final Companion:Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection$Companion;


# instance fields
.field private annotatedString:Landroidx/compose/ui/text/AnnotatedString;

.field private final layoutResult:Landroidx/compose/ui/text/TextLayoutResult;

.field private final offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

.field private final originalSelection:J

.field private final originalText:Landroidx/compose/ui/text/AnnotatedString;

.field private selection:J

.field private final state:Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->Companion:Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection$Companion;

    const/16 v0, 0x8

    sput v0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->$stable:I

    return-void
.end method

.method private constructor <init>(Landroidx/compose/ui/text/AnnotatedString;JLandroidx/compose/ui/text/TextLayoutResult;Landroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->originalText:Landroidx/compose/ui/text/AnnotatedString;

    .line 61
    iput-wide p2, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->originalSelection:J

    .line 62
    iput-object p4, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->layoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    .line 63
    iput-object p5, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 64
    iput-object p6, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->state:Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    .line 66
    iput-wide p2, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->selection:J

    .line 68
    iput-object p1, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/text/AnnotatedString;JLandroidx/compose/ui/text/TextLayoutResult;Landroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;-><init>(Landroidx/compose/ui/text/AnnotatedString;JLandroidx/compose/ui/text/TextLayoutResult;Landroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;)V

    return-void
.end method

.method private final charOffset(I)I
    .locals 0

    .line 327
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation_release()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-static {p1, p0}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result p0

    return p0
.end method

.method private final getLineEndByOffsetForLayout(Landroidx/compose/ui/text/TextLayoutResult;I)I
    .locals 1

    .line 277
    invoke-virtual {p1, p2}, Landroidx/compose/ui/text/TextLayoutResult;->getLineForOffset(I)I

    move-result p2

    .line 278
    iget-object p0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroidx/compose/ui/text/TextLayoutResult;->getLineEnd(IZ)I

    move-result p1

    invoke-interface {p0, p1}, Landroidx/compose/ui/text/input/OffsetMapping;->transformedToOriginal(I)I

    move-result p0

    return p0
.end method

.method static synthetic getLineEndByOffsetForLayout$default(Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;Landroidx/compose/ui/text/TextLayoutResult;IILjava/lang/Object;)I
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 275
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->transformedMaxOffset()I

    move-result p2

    .line 274
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getLineEndByOffsetForLayout(Landroidx/compose/ui/text/TextLayoutResult;I)I

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getLineEndByOffsetForLayout"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final getLineStartByOffsetForLayout(Landroidx/compose/ui/text/TextLayoutResult;I)I
    .locals 0

    .line 270
    invoke-virtual {p1, p2}, Landroidx/compose/ui/text/TextLayoutResult;->getLineForOffset(I)I

    move-result p2

    .line 271
    iget-object p0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    invoke-virtual {p1, p2}, Landroidx/compose/ui/text/TextLayoutResult;->getLineStart(I)I

    move-result p1

    invoke-interface {p0, p1}, Landroidx/compose/ui/text/input/OffsetMapping;->transformedToOriginal(I)I

    move-result p0

    return p0
.end method

.method static synthetic getLineStartByOffsetForLayout$default(Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;Landroidx/compose/ui/text/TextLayoutResult;IILjava/lang/Object;)I
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 268
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->transformedMinOffset()I

    move-result p2

    .line 267
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getLineStartByOffsetForLayout(Landroidx/compose/ui/text/TextLayoutResult;I)I

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getLineStartByOffsetForLayout"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final getNextWordOffsetForLayout(Landroidx/compose/ui/text/TextLayoutResult;I)I
    .locals 3

    .line 242
    :goto_0
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->originalText:Landroidx/compose/ui/text/AnnotatedString;

    invoke-virtual {v0}, Landroidx/compose/ui/text/AnnotatedString;->length()I

    move-result v0

    if-lt p2, v0, :cond_0

    .line 243
    iget-object p0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->originalText:Landroidx/compose/ui/text/AnnotatedString;

    invoke-virtual {p0}, Landroidx/compose/ui/text/AnnotatedString;->length()I

    move-result p0

    return p0

    .line 245
    :cond_0
    invoke-direct {p0, p2}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->charOffset(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/compose/ui/text/TextLayoutResult;->getWordBoundary--jx7JFs(I)J

    move-result-wide v0

    .line 246
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v2

    if-gt v2, p2, :cond_1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 249
    :cond_1
    iget-object p0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result p1

    invoke-interface {p0, p1}, Landroidx/compose/ui/text/input/OffsetMapping;->transformedToOriginal(I)I

    move-result p0

    return p0
.end method

.method static synthetic getNextWordOffsetForLayout$default(Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;Landroidx/compose/ui/text/TextLayoutResult;IILjava/lang/Object;)I
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 240
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->transformedEndOffset()I

    move-result p2

    .line 239
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getNextWordOffsetForLayout(Landroidx/compose/ui/text/TextLayoutResult;I)I

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getNextWordOffsetForLayout"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final getPrevWordOffset(Landroidx/compose/ui/text/TextLayoutResult;I)I
    .locals 3

    :goto_0
    if-gtz p2, :cond_0

    const/4 p0, 0x0

    return p0

    .line 259
    :cond_0
    invoke-direct {p0, p2}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->charOffset(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/compose/ui/text/TextLayoutResult;->getWordBoundary--jx7JFs(I)J

    move-result-wide v0

    .line 260
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v2

    if-lt v2, p2, :cond_1

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 263
    :cond_1
    iget-object p0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result p1

    invoke-interface {p0, p1}, Landroidx/compose/ui/text/input/OffsetMapping;->transformedToOriginal(I)I

    move-result p0

    return p0
.end method

.method static synthetic getPrevWordOffset$default(Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;Landroidx/compose/ui/text/TextLayoutResult;IILjava/lang/Object;)I
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 254
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->transformedEndOffset()I

    move-result p2

    .line 253
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getPrevWordOffset(Landroidx/compose/ui/text/TextLayoutResult;I)I

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getPrevWordOffset"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final isLtr()Z
    .locals 1

    .line 235
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->layoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->transformedEndOffset()I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/compose/ui/text/TextLayoutResult;->getParagraphDirection(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 236
    :goto_0
    sget-object v0, Landroidx/compose/ui/text/style/ResolvedTextDirection;->Rtl:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    if-eq p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private final jumpByLinesOffset(Landroidx/compose/ui/text/TextLayoutResult;I)I
    .locals 6

    .line 282
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->transformedEndOffset()I

    move-result v0

    .line 284
    iget-object v1, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->state:Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->getCachedX()Ljava/lang/Float;

    move-result-object v1

    if-nez v1, :cond_0

    .line 285
    iget-object v1, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->state:Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    invoke-virtual {p1, v0}, Landroidx/compose/ui/text/TextLayoutResult;->getCursorRect(I)Landroidx/compose/ui/geometry/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->setCachedX(Ljava/lang/Float;)V

    .line 288
    :cond_0
    invoke-virtual {p1, v0}, Landroidx/compose/ui/text/TextLayoutResult;->getLineForOffset(I)I

    move-result v0

    add-int/2addr v0, p2

    if-gez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 293
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/ui/text/TextLayoutResult;->getLineCount()I

    move-result p2

    if-lt v0, p2, :cond_2

    .line 294
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation_release()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0

    .line 298
    :cond_2
    invoke-virtual {p1, v0}, Landroidx/compose/ui/text/TextLayoutResult;->getLineBottom(I)F

    move-result p2

    const/4 v1, 0x1

    int-to-float v2, v1

    sub-float/2addr p2, v2

    .line 300
    iget-object v2, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->state:Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    invoke-virtual {v2}, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->getCachedX()Ljava/lang/Float;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v3

    .line 302
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->isLtr()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p1, v0}, Landroidx/compose/ui/text/TextLayoutResult;->getLineRight(I)F

    move-result v4

    cmpl-float v4, v3, v4

    if-gez v4, :cond_4

    .line 303
    :cond_3
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->isLtr()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {p1, v0}, Landroidx/compose/ui/text/TextLayoutResult;->getLineLeft(I)F

    move-result v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_5

    .line 305
    :cond_4
    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/text/TextLayoutResult;->getLineEnd(IZ)I

    move-result p0

    return p0

    .line 300
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 53
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    .line 54
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    int-to-long v2, p2

    const/16 p2, 0x20

    shl-long/2addr v0, p2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 30
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v0

    .line 310
    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/text/TextLayoutResult;->getOffsetForPosition-k-4lQ0M(J)I

    move-result p1

    iget-object p0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    invoke-interface {p0, p1}, Landroidx/compose/ui/text/input/OffsetMapping;->transformedToOriginal(I)I

    move-result p0

    return p0
.end method

.method private final moveCursorNext()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .locals 2

    .line 75
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getState()Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->resetCachedX()V

    .line 77
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation_release()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 152
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getNextCharacterIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 153
    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->setCursor(I)V

    .line 80
    :cond_0
    const-string v0, "null cannot be cast to non-null type T of androidx.compose.foundation.text.selection.BaseTextPreparedSelection"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final moveCursorNextByWord()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .locals 1

    .line 75
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getState()Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->resetCachedX()V

    .line 77
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation_release()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 178
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getNextWordOffset()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->setCursor(I)V

    .line 80
    :cond_0
    const-string v0, "null cannot be cast to non-null type T of androidx.compose.foundation.text.selection.BaseTextPreparedSelection"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final moveCursorPrev()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .locals 2

    .line 75
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getState()Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->resetCachedX()V

    .line 77
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation_release()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 147
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getPrecedingCharacterIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 148
    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->setCursor(I)V

    .line 80
    :cond_0
    const-string v0, "null cannot be cast to non-null type T of androidx.compose.foundation.text.selection.BaseTextPreparedSelection"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final moveCursorPrevByWord()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .locals 1

    .line 75
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getState()Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->resetCachedX()V

    .line 77
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation_release()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 182
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getPreviousWordOffset()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->setCursor(I)V

    .line 80
    :cond_0
    const-string v0, "null cannot be cast to non-null type T of androidx.compose.foundation.text.selection.BaseTextPreparedSelection"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final transformedEndOffset()I
    .locals 3

    .line 316
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    iget-wide v1, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->selection:J

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result p0

    invoke-interface {v0, p0}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    move-result p0

    return p0
.end method

.method private final transformedMaxOffset()I
    .locals 3

    .line 324
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    iget-wide v1, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->selection:J

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result p0

    invoke-interface {v0, p0}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    move-result p0

    return p0
.end method

.method private final transformedMinOffset()I
    .locals 3

    .line 320
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    iget-wide v1, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->selection:J

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result p0

    invoke-interface {v0, p0}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final collapseLeftOr(Lkotlin/jvm/functions/Function1;)Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .locals 2

    .line 75
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getState()Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->resetCachedX()V

    .line 77
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation_release()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 113
    iget-wide v0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->selection:J

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    const-string v0, "null cannot be cast to non-null type T of androidx.compose.foundation.text.selection.BaseTextPreparedSelection.collapseLeftOr$lambda$4"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 116
    :cond_0
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->isLtr()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 117
    iget-wide v0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->selection:J

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->setCursor(I)V

    goto :goto_0

    .line 119
    :cond_1
    iget-wide v0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->selection:J

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->setCursor(I)V

    .line 80
    :cond_2
    :goto_0
    const-string p1, "null cannot be cast to non-null type T of androidx.compose.foundation.text.selection.BaseTextPreparedSelection"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final collapseRightOr(Lkotlin/jvm/functions/Function1;)Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .locals 2

    .line 75
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getState()Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->resetCachedX()V

    .line 77
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation_release()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 126
    iget-wide v0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->selection:J

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    const-string v0, "null cannot be cast to non-null type T of androidx.compose.foundation.text.selection.BaseTextPreparedSelection.collapseRightOr$lambda$5"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 129
    :cond_0
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->isLtr()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 130
    iget-wide v0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->selection:J

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->setCursor(I)V

    goto :goto_0

    .line 132
    :cond_1
    iget-wide v0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->selection:J

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->setCursor(I)V

    .line 80
    :cond_2
    :goto_0
    const-string p1, "null cannot be cast to non-null type T of androidx.compose.foundation.text.selection.BaseTextPreparedSelection"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final deselect()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .locals 2

    .line 75
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getState()Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->resetCachedX()V

    .line 77
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation_release()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 93
    iget-wide v0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->selection:J

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->setCursor(I)V

    .line 80
    :cond_0
    const-string v0, "null cannot be cast to non-null type T of androidx.compose.foundation.text.selection.BaseTextPreparedSelection"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getAnnotatedString()Landroidx/compose/ui/text/AnnotatedString;
    .locals 0

    .line 68
    iget-object p0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    return-object p0
.end method

.method public final getLineEndByOffset()Ljava/lang/Integer;
    .locals 4

    .line 210
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->layoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p0, v0, v2, v3, v1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getLineEndByOffsetForLayout$default(Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;Landroidx/compose/ui/text/TextLayoutResult;IILjava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public final getLineStartByOffset()Ljava/lang/Integer;
    .locals 4

    .line 206
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->layoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p0, v0, v2, v3, v1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getLineStartByOffsetForLayout$default(Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;Landroidx/compose/ui/text/TextLayoutResult;IILjava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public final getNextCharacterIndex()I
    .locals 3

    .line 144
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    invoke-virtual {v0}, Landroidx/compose/ui/text/AnnotatedString;->getText()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->selection:J

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result p0

    invoke-static {v0, p0}, Landroidx/compose/foundation/text/StringHelpers_androidKt;->findFollowingBreak(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final getNextWordOffset()Ljava/lang/Integer;
    .locals 4

    .line 176
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->layoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p0, v0, v2, v3, v1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getNextWordOffsetForLayout$default(Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;Landroidx/compose/ui/text/TextLayoutResult;IILjava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public final getOffsetMapping()Landroidx/compose/ui/text/input/OffsetMapping;
    .locals 0

    .line 63
    iget-object p0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    return-object p0
.end method

.method public final getPrecedingCharacterIndex()I
    .locals 3

    .line 138
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    invoke-virtual {v0}, Landroidx/compose/ui/text/AnnotatedString;->getText()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->selection:J

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result p0

    invoke-static {v0, p0}, Landroidx/compose/foundation/text/StringHelpers_androidKt;->findPrecedingBreak(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final getPreviousWordOffset()Ljava/lang/Integer;
    .locals 4

    .line 180
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->layoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p0, v0, v2, v3, v1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getPrevWordOffset$default(Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;Landroidx/compose/ui/text/TextLayoutResult;IILjava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public final getSelection-d9O1mEE()J
    .locals 2

    .line 66
    iget-wide v0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->selection:J

    return-wide v0
.end method

.method public final getState()Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;
    .locals 0

    .line 64
    iget-object p0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->state:Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    return-object p0
.end method

.method public final getText$foundation_release()Ljava/lang/String;
    .locals 0

    .line 70
    iget-object p0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    invoke-virtual {p0}, Landroidx/compose/ui/text/AnnotatedString;->getText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final moveCursorDownByLine()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .locals 2

    .line 77
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation_release()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 204
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->layoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->jumpByLinesOffset(Landroidx/compose/ui/text/TextLayoutResult;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->setCursor(I)V

    .line 80
    :cond_0
    const-string v0, "null cannot be cast to non-null type T of androidx.compose.foundation.text.selection.BaseTextPreparedSelection"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final moveCursorLeft()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .locals 1

    .line 75
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getState()Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->resetCachedX()V

    .line 77
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation_release()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 96
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->isLtr()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->moveCursorPrev()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    goto :goto_0

    .line 99
    :cond_0
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->moveCursorNext()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .line 80
    :cond_1
    :goto_0
    const-string v0, "null cannot be cast to non-null type T of androidx.compose.foundation.text.selection.BaseTextPreparedSelection"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final moveCursorLeftByWord()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .locals 1

    .line 75
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getState()Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->resetCachedX()V

    .line 77
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation_release()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 161
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->isLtr()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->moveCursorPrevByWord()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    goto :goto_0

    .line 164
    :cond_0
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->moveCursorNextByWord()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .line 80
    :cond_1
    :goto_0
    const-string v0, "null cannot be cast to non-null type T of androidx.compose.foundation.text.selection.BaseTextPreparedSelection"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final moveCursorNextByParagraph()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .locals 3

    .line 75
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getState()Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->resetCachedX()V

    .line 77
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation_release()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 193
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation_release()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->selection:J

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/foundation/text/StringHelpersKt;->findParagraphEnd(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 194
    iget-wide v1, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->selection:J

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation_release()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 195
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation_release()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, v0}, Landroidx/compose/foundation/text/StringHelpersKt;->findParagraphEnd(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 197
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->setCursor(I)V

    .line 80
    :cond_1
    const-string v0, "null cannot be cast to non-null type T of androidx.compose.foundation.text.selection.BaseTextPreparedSelection"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final moveCursorPrevByParagraph()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .locals 3

    .line 75
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getState()Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->resetCachedX()V

    .line 77
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation_release()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 185
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation_release()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->selection:J

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/foundation/text/StringHelpersKt;->findParagraphStart(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 186
    iget-wide v1, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->selection:J

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v1

    if-ne v0, v1, :cond_0

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation_release()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v0}, Landroidx/compose/foundation/text/StringHelpersKt;->findParagraphStart(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 189
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->setCursor(I)V

    .line 80
    :cond_1
    const-string v0, "null cannot be cast to non-null type T of androidx.compose.foundation.text.selection.BaseTextPreparedSelection"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final moveCursorRight()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .locals 1

    .line 75
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getState()Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->resetCachedX()V

    .line 77
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation_release()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 104
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->isLtr()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->moveCursorNext()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    goto :goto_0

    .line 107
    :cond_0
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->moveCursorPrev()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .line 80
    :cond_1
    :goto_0
    const-string v0, "null cannot be cast to non-null type T of androidx.compose.foundation.text.selection.BaseTextPreparedSelection"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final moveCursorRightByWord()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .locals 1

    .line 75
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getState()Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->resetCachedX()V

    .line 77
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation_release()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 169
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->isLtr()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->moveCursorNextByWord()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    goto :goto_0

    .line 172
    :cond_0
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->moveCursorPrevByWord()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .line 80
    :cond_1
    :goto_0
    const-string v0, "null cannot be cast to non-null type T of androidx.compose.foundation.text.selection.BaseTextPreparedSelection"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final moveCursorToEnd()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .locals 1

    .line 75
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getState()Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->resetCachedX()V

    .line 77
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation_release()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 158
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation_release()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->setCursor(I)V

    .line 80
    :cond_0
    const-string v0, "null cannot be cast to non-null type T of androidx.compose.foundation.text.selection.BaseTextPreparedSelection"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final moveCursorToHome()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .locals 1

    .line 75
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getState()Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->resetCachedX()V

    .line 77
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation_release()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 156
    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->setCursor(I)V

    .line 80
    :cond_0
    const-string v0, "null cannot be cast to non-null type T of androidx.compose.foundation.text.selection.BaseTextPreparedSelection"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final moveCursorToLineEnd()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .locals 1

    .line 75
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getState()Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->resetCachedX()V

    .line 77
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation_release()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 212
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getLineEndByOffset()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->setCursor(I)V

    .line 80
    :cond_0
    const-string v0, "null cannot be cast to non-null type T of androidx.compose.foundation.text.selection.BaseTextPreparedSelection"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final moveCursorToLineLeftSide()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .locals 1

    .line 75
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getState()Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->resetCachedX()V

    .line 77
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation_release()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 215
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->isLtr()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->moveCursorToLineStart()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    goto :goto_0

    .line 218
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->moveCursorToLineEnd()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .line 80
    :cond_1
    :goto_0
    const-string v0, "null cannot be cast to non-null type T of androidx.compose.foundation.text.selection.BaseTextPreparedSelection"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final moveCursorToLineRightSide()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .locals 1

    .line 75
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getState()Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->resetCachedX()V

    .line 77
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation_release()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 223
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->isLtr()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->moveCursorToLineEnd()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    goto :goto_0

    .line 226
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->moveCursorToLineStart()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .line 80
    :cond_1
    :goto_0
    const-string v0, "null cannot be cast to non-null type T of androidx.compose.foundation.text.selection.BaseTextPreparedSelection"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final moveCursorToLineStart()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .locals 1

    .line 75
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getState()Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->resetCachedX()V

    .line 77
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation_release()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 208
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getLineStartByOffset()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->setCursor(I)V

    .line 80
    :cond_0
    const-string v0, "null cannot be cast to non-null type T of androidx.compose.foundation.text.selection.BaseTextPreparedSelection"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final moveCursorUpByLine()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .locals 2

    .line 77
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation_release()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 201
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->layoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->jumpByLinesOffset(Landroidx/compose/ui/text/TextLayoutResult;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->setCursor(I)V

    .line 80
    :cond_0
    const-string v0, "null cannot be cast to non-null type T of androidx.compose.foundation.text.selection.BaseTextPreparedSelection"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final selectAll()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .locals 2

    .line 75
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getState()Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->resetCachedX()V

    .line 77
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation_release()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 91
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation_release()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->setSelection(II)V

    .line 80
    :cond_0
    const-string v0, "null cannot be cast to non-null type T of androidx.compose.foundation.text.selection.BaseTextPreparedSelection"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final selectMovement()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;
    .locals 3

    .line 77
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->getText$foundation_release()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 232
    iget-wide v0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->originalSelection:J

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v0

    iget-wide v1, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->selection:J

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->selection:J

    .line 80
    :cond_0
    const-string v0, "null cannot be cast to non-null type T of androidx.compose.foundation.text.selection.BaseTextPreparedSelection"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method protected final setCursor(I)V
    .locals 0

    .line 84
    invoke-virtual {p0, p1, p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->setSelection(II)V

    return-void
.end method

.method protected final setSelection(II)V
    .locals 0

    .line 88
    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->selection:J

    return-void
.end method
