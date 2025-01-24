.class public abstract Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;
.super Ljava/lang/Object;
.source "HandwritingGesture.android.kt"


# direct methods
.method public static final synthetic access$adjustHandwritingDeleteGestureRange-72CqOWE(JLjava/lang/CharSequence;)J
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->adjustHandwritingDeleteGestureRange-72CqOWE(JLjava/lang/CharSequence;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final varargs synthetic access$compoundEditCommand([Landroidx/compose/ui/text/input/EditCommand;)Landroidx/compose/ui/text/input/EditCommand;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->compoundEditCommand([Landroidx/compose/ui/text/input/EditCommand;)Landroidx/compose/ui/text/input/EditCommand;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getOffsetForHandwritingGesture-d-4ec7I(Landroidx/compose/foundation/text/LegacyTextFieldState;JLandroidx/compose/ui/platform/ViewConfiguration;)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->getOffsetForHandwritingGesture-d-4ec7I(Landroidx/compose/foundation/text/LegacyTextFieldState;JLandroidx/compose/ui/platform/ViewConfiguration;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getRangeForRemoveSpaceGesture-5iVPX68(Landroidx/compose/ui/text/TextLayoutResult;JJLandroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/platform/ViewConfiguration;)J
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->getRangeForRemoveSpaceGesture-5iVPX68(Landroidx/compose/ui/text/TextLayoutResult;JJLandroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/platform/ViewConfiguration;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$getRangeForScreenRect-OH9lIzo(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/geometry/Rect;ILandroidx/compose/ui/text/TextInclusionStrategy;)J
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->getRangeForScreenRect-OH9lIzo(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/geometry/Rect;ILandroidx/compose/ui/text/TextInclusionStrategy;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$getRangeForScreenRects-O048IG0(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;ILandroidx/compose/ui/text/TextInclusionStrategy;)J
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->getRangeForScreenRects-O048IG0(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;ILandroidx/compose/ui/text/TextInclusionStrategy;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$isBiDiBoundary(Landroidx/compose/ui/text/TextLayoutResult;I)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->isBiDiBoundary(Landroidx/compose/ui/text/TextLayoutResult;I)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$rangeOfWhitespaces(Ljava/lang/CharSequence;I)J
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->rangeOfWhitespaces(Ljava/lang/CharSequence;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$toOffset(Landroid/graphics/PointF;)J
    .locals 2

    .line 1
    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->toOffset(Landroid/graphics/PointF;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static final adjustHandwritingDeleteGestureRange-72CqOWE(JLjava/lang/CharSequence;)J
    .locals 5

    .line 755
    invoke-static {p0, p1}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v0

    .line 756
    invoke-static {p0, p1}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v1

    const/16 v2, 0xa

    if-lez v0, :cond_0

    .line 762
    invoke-static {p2, v0}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v2

    .line 769
    :goto_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 770
    invoke-static {p2, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 776
    :cond_1
    invoke-static {v3}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->isWhitespaceExceptNewline(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 777
    invoke-static {v2}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->isWhitespace(I)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v2}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->isPunctuation(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 790
    :cond_2
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result p0

    sub-int/2addr v0, p0

    if-eqz v0, :cond_3

    .line 792
    invoke-static {p2, v0}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 793
    invoke-static {v3}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->isWhitespaceExceptNewline(I)Z

    move-result p0

    if-nez p0, :cond_2

    .line 794
    :cond_3
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide p0

    return-wide p0

    .line 798
    :cond_4
    invoke-static {v2}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->isWhitespaceExceptNewline(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 799
    invoke-static {v3}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->isWhitespace(I)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {v3}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->isPunctuation(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 810
    :cond_5
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result p0

    add-int/2addr v1, p0

    .line 811
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-eq v1, p0, :cond_6

    .line 812
    invoke-static {p2, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 813
    invoke-static {v2}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->isWhitespaceExceptNewline(I)Z

    move-result p0

    if-nez p0, :cond_5

    .line 814
    :cond_6
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide p0

    :cond_7
    return-wide p0
.end method

.method private static final varargs compoundEditCommand([Landroidx/compose/ui/text/input/EditCommand;)Landroidx/compose/ui/text/input/EditCommand;
    .locals 1

    .line 1084
    new-instance v0, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt$compoundEditCommand$1;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt$compoundEditCommand$1;-><init>([Landroidx/compose/ui/text/input/EditCommand;)V

    return-object v0
.end method

.method private static final enclosure-pWDy79M(JJ)J
    .locals 1

    .line 1095
    invoke-static {p0, p1}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v0

    invoke-static {p0, p1}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result p1

    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p0, p1}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide p0

    return-wide p0
.end method

.method private static final getLineForHandwritingGesture-d-4ec7I(Landroidx/compose/ui/text/MultiParagraph;JLandroidx/compose/ui/platform/ViewConfiguration;)I
    .locals 4

    if-eqz p3, :cond_0

    .line 1066
    invoke-interface {p3}, Landroidx/compose/ui/platform/ViewConfiguration;->getHandwritingGestureLineMargin()F

    move-result p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    const-wide v0, 0xffffffffL

    and-long/2addr v0, p1

    long-to-int v0, v0

    .line 22
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    .line 1067
    invoke-virtual {p0, v1}, Landroidx/compose/ui/text/MultiParagraph;->getLineForVerticalPosition(F)I

    move-result v1

    .line 22
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    .line 1070
    invoke-virtual {p0, v1}, Landroidx/compose/ui/text/MultiParagraph;->getLineTop(I)F

    move-result v3

    sub-float/2addr v3, p3

    cmpg-float v2, v2, v3

    const/4 v3, -0x1

    if-ltz v2, :cond_3

    .line 22
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 1071
    invoke-virtual {p0, v1}, Landroidx/compose/ui/text/MultiParagraph;->getLineBottom(I)F

    move-result v2

    add-float/2addr v2, p3

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x20

    shr-long/2addr p1, v0

    long-to-int p1, p1

    .line 22
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    neg-float v0, p3

    cmpg-float p2, p2, v0

    if-ltz p2, :cond_3

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    .line 1076
    invoke-virtual {p0}, Landroidx/compose/ui/text/MultiParagraph;->getWidth()F

    move-result p0

    add-float/2addr p0, p3

    cmpl-float p0, p1, p0

    if-lez p0, :cond_2

    goto :goto_1

    :cond_2
    return v1

    :cond_3
    :goto_1
    return v3
.end method

.method private static final getOffsetForHandwritingGesture-d-4ec7I(Landroidx/compose/foundation/text/LegacyTextFieldState;JLandroidx/compose/ui/platform/ViewConfiguration;)I
    .locals 1

    .line 970
    invoke-virtual {p0}, Landroidx/compose/foundation/text/LegacyTextFieldState;->getLayoutResult()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 971
    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextLayoutResultProxy;->getValue()Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 972
    invoke-virtual {v0}, Landroidx/compose/ui/text/TextLayoutResult;->getMultiParagraph()Landroidx/compose/ui/text/MultiParagraph;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 973
    invoke-virtual {p0}, Landroidx/compose/foundation/text/LegacyTextFieldState;->getLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object p0

    invoke-static {v0, p1, p2, p0, p3}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->getOffsetForHandwritingGesture-ubNVwUQ(Landroidx/compose/ui/text/MultiParagraph;JLandroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/platform/ViewConfiguration;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method private static final getOffsetForHandwritingGesture-ubNVwUQ(Landroidx/compose/ui/text/MultiParagraph;JLandroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/platform/ViewConfiguration;)I
    .locals 7

    const/4 v0, -0x1

    if-eqz p3, :cond_1

    .line 1006
    invoke-interface {p3, p1, p2}, Landroidx/compose/ui/layout/LayoutCoordinates;->screenToLocal-MK-Hz9U(J)J

    move-result-wide v1

    .line 1007
    invoke-static {p0, v1, v2, p4}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->getLineForHandwritingGesture-d-4ec7I(Landroidx/compose/ui/text/MultiParagraph;JLandroidx/compose/ui/platform/ViewConfiguration;)I

    move-result p1

    if-ne p1, v0, :cond_0

    return v0

    .line 1010
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/MultiParagraph;->getLineTop(I)F

    move-result p2

    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/MultiParagraph;->getLineBottom(I)F

    move-result p1

    add-float/2addr p2, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float v4, p2, p1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Landroidx/compose/ui/geometry/Offset;->copy-dBAh8RU$default(JFFILjava/lang/Object;)J

    move-result-wide p1

    .line 1011
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/text/MultiParagraph;->getOffsetForPosition-k-4lQ0M(J)I

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method private static final getRangeForRemoveSpaceGesture-5iVPX68(Landroidx/compose/ui/text/TextLayoutResult;JJLandroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/platform/ViewConfiguration;)J
    .locals 1

    if-eqz p0, :cond_4

    if-nez p5, :cond_0

    goto/16 :goto_1

    .line 1023
    :cond_0
    invoke-interface {p5, p1, p2}, Landroidx/compose/ui/layout/LayoutCoordinates;->screenToLocal-MK-Hz9U(J)J

    move-result-wide p1

    .line 1024
    invoke-interface {p5, p3, p4}, Landroidx/compose/ui/layout/LayoutCoordinates;->screenToLocal-MK-Hz9U(J)J

    move-result-wide p3

    .line 1025
    invoke-virtual {p0}, Landroidx/compose/ui/text/TextLayoutResult;->getMultiParagraph()Landroidx/compose/ui/text/MultiParagraph;

    move-result-object p5

    invoke-static {p5, p1, p2, p6}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->getLineForHandwritingGesture-d-4ec7I(Landroidx/compose/ui/text/MultiParagraph;JLandroidx/compose/ui/platform/ViewConfiguration;)I

    move-result p5

    .line 1026
    invoke-virtual {p0}, Landroidx/compose/ui/text/TextLayoutResult;->getMultiParagraph()Landroidx/compose/ui/text/MultiParagraph;

    move-result-object v0

    invoke-static {v0, p3, p4, p6}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->getLineForHandwritingGesture-d-4ec7I(Landroidx/compose/ui/text/MultiParagraph;JLandroidx/compose/ui/platform/ViewConfiguration;)I

    move-result p6

    const/4 v0, -0x1

    if-ne p5, v0, :cond_1

    if-ne p6, v0, :cond_3

    .line 1031
    sget-object p0, Landroidx/compose/ui/text/TextRange;->Companion:Landroidx/compose/ui/text/TextRange$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/text/TextRange$Companion;->getZero-d9O1mEE()J

    move-result-wide p0

    return-wide p0

    :cond_1
    if-ne p6, v0, :cond_2

    goto :goto_0

    .line 1041
    :cond_2
    invoke-static {p5, p6}, Ljava/lang/Math;->min(II)I

    move-result p5

    :goto_0
    move p6, p5

    .line 1045
    :cond_3
    invoke-virtual {p0, p6}, Landroidx/compose/ui/text/TextLayoutResult;->getLineTop(I)F

    move-result p5

    invoke-virtual {p0, p6}, Landroidx/compose/ui/text/TextLayoutResult;->getLineBottom(I)F

    move-result p6

    add-float/2addr p5, p6

    const/4 p6, 0x2

    int-to-float p6, p6

    div-float/2addr p5, p6

    .line 1048
    new-instance p6, Landroidx/compose/ui/geometry/Rect;

    const/16 v0, 0x20

    shr-long/2addr p1, v0

    long-to-int p1, p1

    .line 22
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    shr-long/2addr p3, v0

    long-to-int p3, p3

    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p4

    .line 1049
    invoke-static {p2, p4}, Ljava/lang/Math;->min(FF)F

    move-result p2

    const p4, 0x3dcccccd    # 0.1f

    sub-float v0, p5, p4

    .line 22
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p3

    .line 1051
    invoke-static {p1, p3}, Ljava/lang/Math;->max(FF)F

    move-result p1

    add-float/2addr p5, p4

    .line 1048
    invoke-direct {p6, p2, v0, p1, p5}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    .line 1055
    invoke-virtual {p0}, Landroidx/compose/ui/text/TextLayoutResult;->getMultiParagraph()Landroidx/compose/ui/text/MultiParagraph;

    move-result-object p0

    .line 1057
    sget-object p1, Landroidx/compose/ui/text/TextGranularity;->Companion:Landroidx/compose/ui/text/TextGranularity$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/text/TextGranularity$Companion;->getCharacter-DRrd7Zo()I

    move-result p1

    .line 1058
    sget-object p2, Landroidx/compose/ui/text/TextInclusionStrategy;->Companion:Landroidx/compose/ui/text/TextInclusionStrategy$Companion;

    invoke-virtual {p2}, Landroidx/compose/ui/text/TextInclusionStrategy$Companion;->getAnyOverlap()Landroidx/compose/ui/text/TextInclusionStrategy;

    move-result-object p2

    .line 1055
    invoke-virtual {p0, p6, p1, p2}, Landroidx/compose/ui/text/MultiParagraph;->getRangeForRect-8-6BmAI(Landroidx/compose/ui/geometry/Rect;ILandroidx/compose/ui/text/TextInclusionStrategy;)J

    move-result-wide p0

    return-wide p0

    .line 1021
    :cond_4
    :goto_1
    sget-object p0, Landroidx/compose/ui/text/TextRange;->Companion:Landroidx/compose/ui/text/TextRange$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/text/TextRange$Companion;->getZero-d9O1mEE()J

    move-result-wide p0

    return-wide p0
.end method

.method private static final getRangeForScreenRect-O048IG0(Landroidx/compose/ui/text/MultiParagraph;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/layout/LayoutCoordinates;ILandroidx/compose/ui/text/TextInclusionStrategy;)J
    .locals 2

    if-eqz p0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 996
    :cond_0
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Landroidx/compose/ui/layout/LayoutCoordinates;->screenToLocal-MK-Hz9U(J)J

    move-result-wide v0

    .line 997
    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/geometry/Rect;->translate-k-4lQ0M(J)Landroidx/compose/ui/geometry/Rect;

    move-result-object p1

    .line 998
    invoke-virtual {p0, p1, p3, p4}, Landroidx/compose/ui/text/MultiParagraph;->getRangeForRect-8-6BmAI(Landroidx/compose/ui/geometry/Rect;ILandroidx/compose/ui/text/TextInclusionStrategy;)J

    move-result-wide p0

    return-wide p0

    .line 993
    :cond_1
    :goto_0
    sget-object p0, Landroidx/compose/ui/text/TextRange;->Companion:Landroidx/compose/ui/text/TextRange$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/text/TextRange$Companion;->getZero-d9O1mEE()J

    move-result-wide p0

    return-wide p0
.end method

.method private static final getRangeForScreenRect-OH9lIzo(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/geometry/Rect;ILandroidx/compose/ui/text/TextInclusionStrategy;)J
    .locals 1

    .line 904
    invoke-virtual {p0}, Landroidx/compose/foundation/text/LegacyTextFieldState;->getLayoutResult()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 905
    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextLayoutResultProxy;->getValue()Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 906
    invoke-virtual {v0}, Landroidx/compose/ui/text/TextLayoutResult;->getMultiParagraph()Landroidx/compose/ui/text/MultiParagraph;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 907
    :goto_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text/LegacyTextFieldState;->getLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object p0

    invoke-static {v0, p1, p0, p2, p3}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->getRangeForScreenRect-O048IG0(Landroidx/compose/ui/text/MultiParagraph;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/layout/LayoutCoordinates;ILandroidx/compose/ui/text/TextInclusionStrategy;)J

    move-result-wide p0

    return-wide p0
.end method

.method private static final getRangeForScreenRects-O048IG0(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;ILandroidx/compose/ui/text/TextInclusionStrategy;)J
    .locals 2

    .line 917
    invoke-static {p0, p1, p3, p4}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->getRangeForScreenRect-OH9lIzo(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/geometry/Rect;ILandroidx/compose/ui/text/TextInclusionStrategy;)J

    move-result-wide v0

    .line 918
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p0, Landroidx/compose/ui/text/TextRange;->Companion:Landroidx/compose/ui/text/TextRange$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/text/TextRange$Companion;->getZero-d9O1mEE()J

    move-result-wide p0

    return-wide p0

    .line 922
    :cond_0
    invoke-static {p0, p2, p3, p4}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->getRangeForScreenRect-OH9lIzo(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/geometry/Rect;ILandroidx/compose/ui/text/TextInclusionStrategy;)J

    move-result-wide p0

    .line 923
    invoke-static {p0, p1}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p0, Landroidx/compose/ui/text/TextRange;->Companion:Landroidx/compose/ui/text/TextRange$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/text/TextRange$Companion;->getZero-d9O1mEE()J

    move-result-wide p0

    return-wide p0

    .line 926
    :cond_1
    invoke-static {v0, v1, p0, p1}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->enclosure-pWDy79M(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method private static final isBiDiBoundary(Landroidx/compose/ui/text/TextLayoutResult;I)Z
    .locals 5

    .line 977
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/TextLayoutResult;->getLineForOffset(I)I

    move-result v0

    .line 978
    invoke-virtual {p0, v0}, Landroidx/compose/ui/text/TextLayoutResult;->getLineStart(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    const/4 v4, 0x0

    invoke-static {p0, v0, v3, v1, v4}, Landroidx/compose/ui/text/TextLayoutResult;->getLineEnd$default(Landroidx/compose/ui/text/TextLayoutResult;IZILjava/lang/Object;)I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_1

    .line 983
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/TextLayoutResult;->getBidiRunDirection(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;

    move-result-object v0

    sub-int/2addr p1, v2

    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/TextLayoutResult;->getBidiRunDirection(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;

    move-result-object p0

    if-eq v0, p0, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    return v2

    .line 979
    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/TextLayoutResult;->getParagraphDirection(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;

    move-result-object v0

    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/TextLayoutResult;->getBidiRunDirection(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;

    move-result-object p0

    if-eq v0, p0, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    return v2
.end method

.method private static final isNewline(I)Z
    .locals 2

    .line 826
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    move-result v0

    const/16 v1, 0xe

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    const/16 v0, 0xa

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static final isPunctuation(I)Z
    .locals 1

    .line 853
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    move-result p0

    const/16 v0, 0x17

    if-eq p0, v0, :cond_1

    const/16 v0, 0x14

    if-eq p0, v0, :cond_1

    const/16 v0, 0x16

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x18

    if-eq p0, v0, :cond_1

    const/16 v0, 0x15

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static final isWhitespace(I)Z
    .locals 1

    .line 837
    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0xa0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static final isWhitespaceExceptNewline(I)Z
    .locals 1

    .line 845
    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->isWhitespace(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->isNewline(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static final rangeOfWhitespaces(Ljava/lang/CharSequence;I)J
    .locals 3

    move v0, p1

    :goto_0
    if-lez v0, :cond_1

    .line 934
    invoke-static {p0, v0}, Landroidx/compose/foundation/text/input/internal/CodepointHelpers_jvmKt;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 935
    invoke-static {v1}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->isWhitespace(I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 939
    :cond_0
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    .line 942
    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge p1, v1, :cond_3

    .line 943
    invoke-static {p0, p1}, Landroidx/compose/foundation/text/input/internal/CodepointHelpers_jvmKt;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 944
    invoke-static {v1}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->isWhitespace(I)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    .line 947
    :cond_2
    invoke-static {v1}, Landroidx/compose/foundation/text/input/internal/CodepointHelpers_jvmKt;->charCount(I)I

    move-result v1

    add-int/2addr p1, v1

    goto :goto_1

    .line 950
    :cond_3
    :goto_2
    invoke-static {v0, p1}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide p0

    return-wide p0
.end method

.method private static final toOffset(Landroid/graphics/PointF;)J
    .locals 6

    .line 863
    iget v0, p0, Landroid/graphics/PointF;->x:F

    iget p0, p0, Landroid/graphics/PointF;->y:F

    .line 53
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    .line 54
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v2, p0

    const/16 p0, 0x20

    shl-long/2addr v0, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 30
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v0

    return-wide v0
.end method
