.class final Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache$FontSizeSearchScopeImpl;
.super Ljava/lang/Object;
.source "ParagraphLayoutCache.kt"

# interfaces
.implements Landroidx/compose/ui/unit/Density;


# instance fields
.field private finalConstraints:J

.field private layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

.field private originalFontSize:J

.field private overflow:I

.field final synthetic this$0:Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;)V
    .locals 2

    .line 413
    iput-object p1, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache$FontSizeSearchScopeImpl;->this$0:Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 414
    sget-object p1, Landroidx/compose/ui/unit/Constraints;->Companion:Landroidx/compose/ui/unit/Constraints$Companion;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroidx/compose/ui/unit/Constraints$Companion;->fixed-JhjzzOo(II)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache$FontSizeSearchScopeImpl;->finalConstraints:J

    .line 415
    sget-object p1, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    iput-object p1, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache$FontSizeSearchScopeImpl;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 416
    sget-object p1, Landroidx/compose/ui/unit/TextUnit;->Companion:Landroidx/compose/ui/unit/TextUnit$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/unit/TextUnit$Companion;->getUnspecified-XSAIIZE()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache$FontSizeSearchScopeImpl;->originalFontSize:J

    .line 417
    sget-object p1, Landroidx/compose/ui/text/style/TextOverflow;->Companion:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/text/style/TextOverflow$Companion;->getClip-gIe3tQ8()I

    move-result p1

    iput p1, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache$FontSizeSearchScopeImpl;->overflow:I

    return-void
.end method


# virtual methods
.method public getDensity()F
    .locals 0

    .line 420
    iget-object p0, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache$FontSizeSearchScopeImpl;->this$0:Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;

    invoke-virtual {p0}, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->getDensity$foundation_release()Landroidx/compose/ui/unit/Density;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0}, Landroidx/compose/ui/unit/Density;->getDensity()F

    move-result p0

    return p0
.end method

.method public getFontScale()F
    .locals 0

    .line 423
    iget-object p0, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache$FontSizeSearchScopeImpl;->this$0:Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;

    invoke-virtual {p0}, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->getDensity$foundation_release()Landroidx/compose/ui/unit/Density;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0}, Landroidx/compose/ui/unit/FontScaling;->getFontScale()F

    move-result p0

    return p0
.end method

.method public toPx--R2X_6o(J)F
    .locals 4

    .line 476
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/TextUnit;->isEm-impl(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 477
    iget-wide v0, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache$FontSizeSearchScopeImpl;->originalFontSize:J

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/TextUnit;->isEm-impl(J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 481
    iget-wide v0, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache$FontSizeSearchScopeImpl;->originalFontSize:J

    sget-object v2, Landroidx/compose/ui/unit/TextUnit;->Companion:Landroidx/compose/ui/unit/TextUnit$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/unit/TextUnit$Companion;->getUnspecified-XSAIIZE()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/TextUnit;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    sget-object v0, Landroidx/compose/ui/text/TextStyle;->Companion:Landroidx/compose/ui/text/TextStyle$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/TextStyle$Companion;->getDefault()Landroidx/compose/ui/text/TextStyle;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache$FontSizeSearchScopeImpl;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextStyleKt;->resolveDefaults(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/text/TextStyle;->getFontSize-XSAIIZE()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache$FontSizeSearchScopeImpl;->originalFontSize:J

    .line 486
    :cond_0
    iget-wide v0, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache$FontSizeSearchScopeImpl;->originalFontSize:J

    invoke-virtual {p0, v0, v1}, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache$FontSizeSearchScopeImpl;->toPx--R2X_6o(J)F

    move-result p0

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    move-result p1

    mul-float/2addr p0, p1

    return p0

    .line 477
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "AutoSize -> toPx(): Cannot convert Em to Px when style.fontSize is Em\nDeclare the composable\'s style.fontSize with Sp units instead."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 488
    :cond_2
    invoke-interface {p0, p1, p2}, Landroidx/compose/ui/unit/FontScaling;->toDp-GaN1DYA(J)F

    move-result p1

    invoke-interface {p0, p1}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result p0

    return p0
.end method
