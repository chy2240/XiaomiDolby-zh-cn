.class public interface abstract Landroidx/compose/ui/unit/FontScaling;
.super Ljava/lang/Object;
.source "FontScaling.android.kt"


# virtual methods
.method public abstract getFontScale()F
.end method

.method public toDp-GaN1DYA(J)F
    .locals 4

    .line 55
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/TextUnit;->getType-UIouoOA(J)J

    move-result-wide v0

    sget-object v2, Landroidx/compose/ui/unit/TextUnitType;->Companion:Landroidx/compose/ui/unit/TextUnitType$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/unit/TextUnitType$Companion;->getSp-UIouoOA()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Only Sp can convert to Px"

    .line 54
    invoke-static {v0}, Landroidx/compose/ui/unit/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 56
    :cond_0
    sget-object v0, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->INSTANCE:Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;

    invoke-interface {p0}, Landroidx/compose/ui/unit/FontScaling;->getFontScale()F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->isNonLinearFontScalingActive(F)Z

    move-result v1

    if-nez v1, :cond_1

    .line 57
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    move-result p1

    invoke-interface {p0}, Landroidx/compose/ui/unit/FontScaling;->getFontScale()F

    move-result p0

    mul-float/2addr p1, p0

    invoke-static {p1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p0

    return p0

    .line 60
    :cond_1
    invoke-interface {p0}, Landroidx/compose/ui/unit/FontScaling;->getFontScale()F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->forScale(F)Landroidx/compose/ui/unit/fontscaling/FontScaleConverter;

    move-result-object v0

    if-nez v0, :cond_2

    .line 61
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    move-result p1

    invoke-interface {p0}, Landroidx/compose/ui/unit/FontScaling;->getFontScale()F

    move-result p0

    mul-float/2addr p1, p0

    invoke-static {p1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p0

    goto :goto_0

    :cond_2
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    move-result p0

    invoke-interface {v0, p0}, Landroidx/compose/ui/unit/fontscaling/FontScaleConverter;->convertSpToDp(F)F

    move-result p0

    invoke-static {p0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p0

    :goto_0
    return p0
.end method

.method public toSp-0xMU5do(F)J
    .locals 2

    .line 40
    sget-object v0, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->INSTANCE:Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;

    invoke-interface {p0}, Landroidx/compose/ui/unit/FontScaling;->getFontScale()F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->isNonLinearFontScalingActive(F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 41
    invoke-interface {p0}, Landroidx/compose/ui/unit/FontScaling;->getFontScale()F

    move-result p0

    div-float/2addr p1, p0

    invoke-static {p1}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(F)J

    move-result-wide p0

    return-wide p0

    .line 44
    :cond_0
    invoke-interface {p0}, Landroidx/compose/ui/unit/FontScaling;->getFontScale()F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->forScale(F)Landroidx/compose/ui/unit/fontscaling/FontScaleConverter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 45
    invoke-interface {v0, p1}, Landroidx/compose/ui/unit/fontscaling/FontScaleConverter;->convertDpToSp(F)F

    move-result p0

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Landroidx/compose/ui/unit/FontScaling;->getFontScale()F

    move-result p0

    div-float p0, p1, p0

    :goto_0
    invoke-static {p0}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(F)J

    move-result-wide p0

    return-wide p0
.end method
