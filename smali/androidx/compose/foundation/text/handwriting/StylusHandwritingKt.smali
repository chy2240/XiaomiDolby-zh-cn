.class public abstract Landroidx/compose/foundation/text/handwriting/StylusHandwritingKt;
.super Ljava/lang/Object;
.source "StylusHandwriting.kt"


# static fields
.field private static final HandwritingBoundsHorizontalOffset:F

.field private static final HandwritingBoundsVerticalOffset:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    int-to-float v0, v0

    .line 109
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 225
    sput v1, Landroidx/compose/foundation/text/handwriting/StylusHandwritingKt;->HandwritingBoundsVerticalOffset:F

    .line 109
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 226
    sput v0, Landroidx/compose/foundation/text/handwriting/StylusHandwritingKt;->HandwritingBoundsHorizontalOffset:F

    return-void
.end method

.method public static final getHandwritingBoundsHorizontalOffset()F
    .locals 1

    .line 226
    sget v0, Landroidx/compose/foundation/text/handwriting/StylusHandwritingKt;->HandwritingBoundsHorizontalOffset:F

    return v0
.end method

.method public static final getHandwritingBoundsVerticalOffset()F
    .locals 1

    .line 225
    sget v0, Landroidx/compose/foundation/text/handwriting/StylusHandwritingKt;->HandwritingBoundsVerticalOffset:F

    return v0
.end method

.method public static final stylusHandwriting(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function0;)Landroidx/compose/ui/Modifier;
    .locals 0

    if-eqz p1, :cond_0

    .line 61
    invoke-static {}, Landroidx/compose/foundation/text/handwriting/StylusHandwriting_androidKt;->isStylusHandwritingSupported()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 62
    new-instance p1, Landroidx/compose/foundation/text/handwriting/StylusHandwritingElementWithNegativePadding;

    invoke-direct {p1, p2}, Landroidx/compose/foundation/text/handwriting/StylusHandwritingElementWithNegativePadding;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-interface {p0, p1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    .line 64
    sget p1, Landroidx/compose/foundation/text/handwriting/StylusHandwritingKt;->HandwritingBoundsHorizontalOffset:F

    .line 65
    sget p2, Landroidx/compose/foundation/text/handwriting/StylusHandwritingKt;->HandwritingBoundsVerticalOffset:F

    .line 63
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/layout/PaddingKt;->padding-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object p0

    :cond_0
    return-object p0
.end method
