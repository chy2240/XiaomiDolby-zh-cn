.class public final Landroidx/compose/ui/graphics/colorspace/Connector$RgbConnector;
.super Landroidx/compose/ui/graphics/colorspace/Connector;
.source "Connector.kt"


# instance fields
.field private final mDestination:Landroidx/compose/ui/graphics/colorspace/Rgb;

.field private final mSource:Landroidx/compose/ui/graphics/colorspace/Rgb;

.field private final mTransform:[F


# direct methods
.method private constructor <init>(Landroidx/compose/ui/graphics/colorspace/Rgb;Landroidx/compose/ui/graphics/colorspace/Rgb;I)V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    .line 166
    invoke-direct/range {v0 .. v7}, Landroidx/compose/ui/graphics/colorspace/Connector;-><init>(Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/ColorSpace;I[FLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 163
    iput-object p1, p0, Landroidx/compose/ui/graphics/colorspace/Connector$RgbConnector;->mSource:Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 164
    iput-object p2, p0, Landroidx/compose/ui/graphics/colorspace/Connector$RgbConnector;->mDestination:Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 170
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/ui/graphics/colorspace/Connector$RgbConnector;->computeTransform-YBCOT_4(Landroidx/compose/ui/graphics/colorspace/Rgb;Landroidx/compose/ui/graphics/colorspace/Rgb;I)[F

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/graphics/colorspace/Connector$RgbConnector;->mTransform:[F

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/graphics/colorspace/Rgb;Landroidx/compose/ui/graphics/colorspace/Rgb;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/ui/graphics/colorspace/Connector$RgbConnector;-><init>(Landroidx/compose/ui/graphics/colorspace/Rgb;Landroidx/compose/ui/graphics/colorspace/Rgb;I)V

    return-void
.end method

.method private final computeTransform-YBCOT_4(Landroidx/compose/ui/graphics/colorspace/Rgb;Landroidx/compose/ui/graphics/colorspace/Rgb;I)[F
    .locals 10

    const/4 p0, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 217
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/Rgb;->getWhitePoint()Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    move-result-object v2

    invoke-virtual {p2}, Landroidx/compose/ui/graphics/colorspace/Rgb;->getWhitePoint()Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->compare(Landroidx/compose/ui/graphics/colorspace/WhitePoint;Landroidx/compose/ui/graphics/colorspace/WhitePoint;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 219
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/colorspace/Rgb;->getInverseTransform$ui_graphics_release()[F

    move-result-object p0

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/Rgb;->getTransform$ui_graphics_release()[F

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->mul3x3([F[F)[F

    move-result-object p0

    return-object p0

    .line 222
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/Rgb;->getTransform$ui_graphics_release()[F

    move-result-object v2

    .line 223
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/colorspace/Rgb;->getInverseTransform$ui_graphics_release()[F

    move-result-object v3

    .line 225
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/Rgb;->getWhitePoint()Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/colorspace/WhitePoint;->toXyz$ui_graphics_release()[F

    move-result-object v4

    .line 226
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/colorspace/Rgb;->getWhitePoint()Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/colorspace/WhitePoint;->toXyz$ui_graphics_release()[F

    move-result-object v5

    .line 228
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/Rgb;->getWhitePoint()Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    move-result-object v6

    sget-object v7, Landroidx/compose/ui/graphics/colorspace/Illuminant;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/Illuminant;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->getD50()Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    move-result-object v8

    invoke-static {v6, v8}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->compare(Landroidx/compose/ui/graphics/colorspace/WhitePoint;Landroidx/compose/ui/graphics/colorspace/WhitePoint;)Z

    move-result v6

    const-string v8, "copyOf(this, size)"

    if-nez v6, :cond_1

    .line 231
    sget-object v2, Landroidx/compose/ui/graphics/colorspace/Adaptation;->Companion:Landroidx/compose/ui/graphics/colorspace/Adaptation$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/colorspace/Adaptation$Companion;->getBradford()Landroidx/compose/ui/graphics/colorspace/Adaptation;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/colorspace/Adaptation;->getTransform$ui_graphics_release()[F

    move-result-object v2

    .line 233
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->getD50Xyz$ui_graphics_release()[F

    move-result-object v6

    array-length v9, v6

    invoke-static {v6, v9}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v6

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    invoke-static {v2, v4, v6}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->chromaticAdaptation([F[F[F)[F

    move-result-object v2

    .line 235
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/Rgb;->getTransform$ui_graphics_release()[F

    move-result-object p1

    invoke-static {v2, p1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->mul3x3([F[F)[F

    move-result-object v2

    .line 238
    :cond_1
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/colorspace/Rgb;->getWhitePoint()Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    move-result-object p1

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->getD50()Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    move-result-object v6

    invoke-static {p1, v6}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->compare(Landroidx/compose/ui/graphics/colorspace/WhitePoint;Landroidx/compose/ui/graphics/colorspace/WhitePoint;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 241
    sget-object p1, Landroidx/compose/ui/graphics/colorspace/Adaptation;->Companion:Landroidx/compose/ui/graphics/colorspace/Adaptation$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/Adaptation$Companion;->getBradford()Landroidx/compose/ui/graphics/colorspace/Adaptation;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/Adaptation;->getTransform$ui_graphics_release()[F

    move-result-object p1

    .line 243
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->getD50Xyz$ui_graphics_release()[F

    move-result-object v3

    array-length v6, v3

    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v3

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    invoke-static {p1, v5, v3}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->chromaticAdaptation([F[F[F)[F

    move-result-object p1

    .line 245
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/colorspace/Rgb;->getTransform$ui_graphics_release()[F

    move-result-object p2

    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->mul3x3([F[F)[F

    move-result-object p1

    invoke-static {p1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->inverse3x3([F)[F

    move-result-object v3

    .line 248
    :cond_2
    sget-object p1, Landroidx/compose/ui/graphics/colorspace/RenderIntent;->Companion:Landroidx/compose/ui/graphics/colorspace/RenderIntent$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/RenderIntent$Companion;->getAbsolute-uksYyKA()I

    move-result p1

    invoke-static {p3, p1}, Landroidx/compose/ui/graphics/colorspace/RenderIntent;->equals-impl0(II)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 252
    aget p1, v4, v1

    aget p2, v5, v1

    div-float/2addr p1, p2

    .line 253
    aget p2, v4, v0

    aget p3, v5, v0

    div-float/2addr p2, p3

    .line 254
    aget p3, v4, p0

    aget v4, v5, p0

    div-float/2addr p3, v4

    const/4 v4, 0x3

    new-array v4, v4, [F

    aput p1, v4, v1

    aput p2, v4, v0

    aput p3, v4, p0

    .line 250
    invoke-static {v4, v2}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->mul3x3Diag([F[F)[F

    move-result-object v2

    .line 260
    :cond_3
    invoke-static {v3, v2}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->mul3x3([F[F)[F

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public transformToColor-l2rxGTc$ui_graphics_release(J)J
    .locals 6

    .line 219
    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/Color;->getRed-impl(J)F

    move-result v0

    .line 221
    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/Color;->getGreen-impl(J)F

    move-result v1

    .line 223
    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/Color;->getBlue-impl(J)F

    move-result v2

    .line 225
    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/Color;->getAlpha-impl(J)F

    move-result p1

    .line 186
    iget-object p2, p0, Landroidx/compose/ui/graphics/colorspace/Connector$RgbConnector;->mSource:Landroidx/compose/ui/graphics/colorspace/Rgb;

    invoke-virtual {p2}, Landroidx/compose/ui/graphics/colorspace/Rgb;->getEotfFunc$ui_graphics_release()Landroidx/compose/ui/graphics/colorspace/DoubleFunction;

    move-result-object p2

    float-to-double v3, v0

    invoke-interface {p2, v3, v4}, Landroidx/compose/ui/graphics/colorspace/DoubleFunction;->invoke(D)D

    move-result-wide v3

    double-to-float p2, v3

    .line 187
    iget-object v0, p0, Landroidx/compose/ui/graphics/colorspace/Connector$RgbConnector;->mSource:Landroidx/compose/ui/graphics/colorspace/Rgb;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/Rgb;->getEotfFunc$ui_graphics_release()Landroidx/compose/ui/graphics/colorspace/DoubleFunction;

    move-result-object v0

    float-to-double v3, v1

    invoke-interface {v0, v3, v4}, Landroidx/compose/ui/graphics/colorspace/DoubleFunction;->invoke(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 188
    iget-object v1, p0, Landroidx/compose/ui/graphics/colorspace/Connector$RgbConnector;->mSource:Landroidx/compose/ui/graphics/colorspace/Rgb;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/Rgb;->getEotfFunc$ui_graphics_release()Landroidx/compose/ui/graphics/colorspace/DoubleFunction;

    move-result-object v1

    float-to-double v2, v2

    invoke-interface {v1, v2, v3}, Landroidx/compose/ui/graphics/colorspace/DoubleFunction;->invoke(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 189
    iget-object v2, p0, Landroidx/compose/ui/graphics/colorspace/Connector$RgbConnector;->mTransform:[F

    const/4 v3, 0x0

    .line 638
    aget v3, v2, v3

    mul-float/2addr v3, p2

    const/4 v4, 0x3

    aget v4, v2, v4

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    const/4 v4, 0x6

    aget v4, v2, v4

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    const/4 v4, 0x1

    .line 653
    aget v4, v2, v4

    mul-float/2addr v4, p2

    const/4 v5, 0x4

    aget v5, v2, v5

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    const/4 v5, 0x7

    aget v5, v2, v5

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    const/4 v5, 0x2

    .line 668
    aget v5, v2, v5

    mul-float/2addr v5, p2

    const/4 p2, 0x5

    aget p2, v2, p2

    mul-float/2addr p2, v0

    add-float/2addr v5, p2

    const/16 p2, 0x8

    aget p2, v2, p2

    mul-float/2addr p2, v1

    add-float/2addr v5, p2

    .line 192
    iget-object p2, p0, Landroidx/compose/ui/graphics/colorspace/Connector$RgbConnector;->mDestination:Landroidx/compose/ui/graphics/colorspace/Rgb;

    invoke-virtual {p2}, Landroidx/compose/ui/graphics/colorspace/Rgb;->getOetfFunc$ui_graphics_release()Landroidx/compose/ui/graphics/colorspace/DoubleFunction;

    move-result-object p2

    float-to-double v0, v3

    invoke-interface {p2, v0, v1}, Landroidx/compose/ui/graphics/colorspace/DoubleFunction;->invoke(D)D

    move-result-wide v0

    double-to-float p2, v0

    .line 193
    iget-object v0, p0, Landroidx/compose/ui/graphics/colorspace/Connector$RgbConnector;->mDestination:Landroidx/compose/ui/graphics/colorspace/Rgb;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/Rgb;->getOetfFunc$ui_graphics_release()Landroidx/compose/ui/graphics/colorspace/DoubleFunction;

    move-result-object v0

    float-to-double v1, v4

    invoke-interface {v0, v1, v2}, Landroidx/compose/ui/graphics/colorspace/DoubleFunction;->invoke(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 194
    iget-object v1, p0, Landroidx/compose/ui/graphics/colorspace/Connector$RgbConnector;->mDestination:Landroidx/compose/ui/graphics/colorspace/Rgb;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/Rgb;->getOetfFunc$ui_graphics_release()Landroidx/compose/ui/graphics/colorspace/DoubleFunction;

    move-result-object v1

    float-to-double v2, v5

    invoke-interface {v1, v2, v3}, Landroidx/compose/ui/graphics/colorspace/DoubleFunction;->invoke(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 195
    iget-object p0, p0, Landroidx/compose/ui/graphics/colorspace/Connector$RgbConnector;->mDestination:Landroidx/compose/ui/graphics/colorspace/Rgb;

    invoke-static {p2, v0, v1, p1, p0}, Landroidx/compose/ui/graphics/ColorKt;->Color(FFFFLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J

    move-result-wide p0

    return-wide p0
.end method
