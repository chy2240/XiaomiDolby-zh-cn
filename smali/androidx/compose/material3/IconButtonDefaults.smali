.class public final Landroidx/compose/material3/IconButtonDefaults;
.super Ljava/lang/Object;
.source "IconButton.kt"


# static fields
.field public static final INSTANCE:Landroidx/compose/material3/IconButtonDefaults;

.field private static final largeIconSize:F

.field private static final mediumIconSize:F

.field private static final smallIconSize:F

.field private static final xLargeIconSize:F

.field private static final xSmallIconSize:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/material3/IconButtonDefaults;

    invoke-direct {v0}, Landroidx/compose/material3/IconButtonDefaults;-><init>()V

    sput-object v0, Landroidx/compose/material3/IconButtonDefaults;->INSTANCE:Landroidx/compose/material3/IconButtonDefaults;

    .line 1807
    sget-object v0, Landroidx/compose/material3/tokens/XSmallIconButtonTokens;->INSTANCE:Landroidx/compose/material3/tokens/XSmallIconButtonTokens;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/XSmallIconButtonTokens;->getIconSize-D9Ej5fM()F

    move-result v0

    sput v0, Landroidx/compose/material3/IconButtonDefaults;->xSmallIconSize:F

    .line 1813
    sget-object v0, Landroidx/compose/material3/tokens/SmallIconButtonTokens;->INSTANCE:Landroidx/compose/material3/tokens/SmallIconButtonTokens;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/SmallIconButtonTokens;->getIconSize-D9Ej5fM()F

    move-result v0

    sput v0, Landroidx/compose/material3/IconButtonDefaults;->smallIconSize:F

    .line 1819
    sget-object v0, Landroidx/compose/material3/tokens/MediumIconButtonTokens;->INSTANCE:Landroidx/compose/material3/tokens/MediumIconButtonTokens;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/MediumIconButtonTokens;->getIconSize-D9Ej5fM()F

    move-result v0

    sput v0, Landroidx/compose/material3/IconButtonDefaults;->mediumIconSize:F

    .line 1825
    sget-object v0, Landroidx/compose/material3/tokens/LargeIconButtonTokens;->INSTANCE:Landroidx/compose/material3/tokens/LargeIconButtonTokens;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/LargeIconButtonTokens;->getIconSize-D9Ej5fM()F

    move-result v0

    sput v0, Landroidx/compose/material3/IconButtonDefaults;->largeIconSize:F

    .line 1831
    sget-object v0, Landroidx/compose/material3/tokens/XLargeIconButtonTokens;->INSTANCE:Landroidx/compose/material3/tokens/XLargeIconButtonTokens;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/XLargeIconButtonTokens;->getIconSize-D9Ej5fM()F

    move-result v0

    sput v0, Landroidx/compose/material3/IconButtonDefaults;->xLargeIconSize:F

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1075
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic smallContainerSize-N-wlBFI$default(Landroidx/compose/material3/IconButtonDefaults;IILjava/lang/Object;)J
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 1868
    sget-object p1, Landroidx/compose/material3/IconButtonDefaults$IconButtonWidthOption;->Companion:Landroidx/compose/material3/IconButtonDefaults$IconButtonWidthOption$Companion;

    invoke-virtual {p1}, Landroidx/compose/material3/IconButtonDefaults$IconButtonWidthOption$Companion;->getUniform-rc6NtMs()I

    move-result p1

    .line 1867
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/material3/IconButtonDefaults;->smallContainerSize-N-wlBFI(I)J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public final defaultIconButtonColors-0Yiz4hI$material3_release(Landroidx/compose/material3/ColorScheme;Landroidx/compose/ui/graphics/Color;)Landroidx/compose/material3/IconButtonColors;
    .locals 18

    move-object/from16 v0, p1

    .line 1131
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/material3/ColorScheme;->getDefaultIconButtonColorsCached$material3_release()Landroidx/compose/material3/IconButtonColors;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1133
    new-instance v1, Landroidx/compose/material3/IconButtonColors;

    .line 1134
    sget-object v2, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color$Companion;->getTransparent-0d7_KjU()J

    move-result-wide v3

    if-eqz p2, :cond_0

    .line 1136
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v5

    goto :goto_0

    :cond_0
    sget-object v5, Landroidx/compose/material3/tokens/StandardIconButtonTokens;->INSTANCE:Landroidx/compose/material3/tokens/StandardIconButtonTokens;

    invoke-virtual {v5}, Landroidx/compose/material3/tokens/StandardIconButtonTokens;->getColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v5

    invoke-static {v0, v5}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v5

    .line 1137
    :goto_0
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color$Companion;->getTransparent-0d7_KjU()J

    move-result-wide v7

    if-eqz p2, :cond_1

    .line 1139
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v9

    .line 1140
    sget-object v2, Landroidx/compose/material3/tokens/StandardIconButtonTokens;->INSTANCE:Landroidx/compose/material3/tokens/StandardIconButtonTokens;

    invoke-virtual {v2}, Landroidx/compose/material3/tokens/StandardIconButtonTokens;->getDisabledOpacity()F

    move-result v11

    const/16 v15, 0xe

    const/16 v16, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 1139
    invoke-static/range {v9 .. v16}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v9

    goto :goto_1

    .line 1142
    :cond_1
    sget-object v2, Landroidx/compose/material3/tokens/StandardIconButtonTokens;->INSTANCE:Landroidx/compose/material3/tokens/StandardIconButtonTokens;

    invoke-virtual {v2}, Landroidx/compose/material3/tokens/StandardIconButtonTokens;->getDisabledColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v9

    invoke-static {v0, v9}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v10

    .line 1143
    invoke-virtual {v2}, Landroidx/compose/material3/tokens/StandardIconButtonTokens;->getDisabledOpacity()F

    move-result v12

    const/16 v16, 0xe

    const/16 v17, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v10 .. v17}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v9

    :goto_1
    const/4 v11, 0x0

    move-object v2, v1

    .line 1133
    invoke-direct/range {v2 .. v11}, Landroidx/compose/material3/IconButtonColors;-><init>(JJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1145
    invoke-virtual {v0, v1}, Landroidx/compose/material3/ColorScheme;->setDefaultIconButtonColorsCached$material3_release(Landroidx/compose/material3/IconButtonColors;)V

    :cond_2
    return-object v1
.end method

.method public final getStandardShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;
    .locals 2

    .line 1672
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, -0x1

    const-string v0, "androidx.compose.material3.IconButtonDefaults.<get-standardShape> (IconButton.kt:1671)"

    const v1, -0x65371c73

    invoke-static {v1, p2, p0, v0}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    sget-object p0, Landroidx/compose/material3/tokens/SmallIconButtonTokens;->INSTANCE:Landroidx/compose/material3/tokens/SmallIconButtonTokens;

    invoke-virtual {p0}, Landroidx/compose/material3/tokens/SmallIconButtonTokens;->getContainerShapeRound()Landroidx/compose/material3/tokens/ShapeKeyTokens;

    move-result-object p0

    const/4 p2, 0x6

    invoke-static {p0, p1, p2}, Landroidx/compose/material3/ShapesKt;->getValue(Landroidx/compose/material3/tokens/ShapeKeyTokens;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1
    return-object p0
.end method

.method public final iconButtonLocalContentColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/IconButtonColors;
    .locals 12

    .line 1081
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "androidx.compose.material3.IconButtonDefaults.iconButtonLocalContentColors (IconButton.kt:1080)"

    const v2, -0x2b9dea83

    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 1082
    :cond_0
    invoke-static {}, Landroidx/compose/material3/ContentColorKt;->getLocalContentColor()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object p2

    .line 75
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p2

    .line 1082
    check-cast p2, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {p2}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v8

    .line 1083
    sget-object p2, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    const/4 v0, 0x6

    invoke-virtual {p2, p1, v0}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object p1

    invoke-static {v8, v9}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/IconButtonDefaults;->defaultIconButtonColors-0Yiz4hI$material3_release(Landroidx/compose/material3/ColorScheme;Landroidx/compose/ui/graphics/Color;)Landroidx/compose/material3/IconButtonColors;

    move-result-object p0

    .line 1084
    invoke-virtual {p0}, Landroidx/compose/material3/IconButtonColors;->getContentColor-0d7_KjU()J

    move-result-wide p1

    invoke-static {p1, p2, v8, v9}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 1090
    :cond_1
    sget-object p1, Landroidx/compose/material3/tokens/StandardIconButtonTokens;->INSTANCE:Landroidx/compose/material3/tokens/StandardIconButtonTokens;

    invoke-virtual {p1}, Landroidx/compose/material3/tokens/StandardIconButtonTokens;->getDisabledOpacity()F

    move-result v2

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-wide v0, v8

    invoke-static/range {v0 .. v7}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide p1

    const/4 v10, 0x5

    const/4 v11, 0x0

    const-wide/16 v1, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-wide v3, v8

    move-wide v7, p1

    move v9, v10

    move-object v10, v11

    .line 1087
    invoke-static/range {v0 .. v10}, Landroidx/compose/material3/IconButtonColors;->copy-jRlVdoo$default(Landroidx/compose/material3/IconButtonColors;JJJJILjava/lang/Object;)Landroidx/compose/material3/IconButtonColors;

    move-result-object p0

    .line 1084
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_2
    return-object p0
.end method

.method public final smallContainerSize-N-wlBFI(I)J
    .locals 1

    .line 1872
    sget-object p0, Landroidx/compose/material3/IconButtonDefaults$IconButtonWidthOption;->Companion:Landroidx/compose/material3/IconButtonDefaults$IconButtonWidthOption$Companion;

    invoke-virtual {p0}, Landroidx/compose/material3/IconButtonDefaults$IconButtonWidthOption$Companion;->getNarrow-rc6NtMs()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/material3/IconButtonDefaults$IconButtonWidthOption;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1873
    sget-object p0, Landroidx/compose/material3/tokens/SmallIconButtonTokens;->INSTANCE:Landroidx/compose/material3/tokens/SmallIconButtonTokens;

    invoke-virtual {p0}, Landroidx/compose/material3/tokens/SmallIconButtonTokens;->getNarrowLeadingSpace-D9Ej5fM()F

    move-result p1

    .line 1874
    invoke-virtual {p0}, Landroidx/compose/material3/tokens/SmallIconButtonTokens;->getNarrowTrailingSpace-D9Ej5fM()F

    move-result p0

    add-float/2addr p1, p0

    .line 51
    invoke-static {p1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p0

    goto :goto_0

    .line 1875
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/material3/IconButtonDefaults$IconButtonWidthOption$Companion;->getUniform-rc6NtMs()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/material3/IconButtonDefaults$IconButtonWidthOption;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1876
    sget-object p0, Landroidx/compose/material3/tokens/SmallIconButtonTokens;->INSTANCE:Landroidx/compose/material3/tokens/SmallIconButtonTokens;

    invoke-virtual {p0}, Landroidx/compose/material3/tokens/SmallIconButtonTokens;->getUniformLeadingSpace-D9Ej5fM()F

    move-result p1

    .line 1877
    invoke-virtual {p0}, Landroidx/compose/material3/tokens/SmallIconButtonTokens;->getUniformLeadingSpace-D9Ej5fM()F

    move-result p0

    add-float/2addr p1, p0

    .line 51
    invoke-static {p1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p0

    goto :goto_0

    .line 1878
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/material3/IconButtonDefaults$IconButtonWidthOption$Companion;->getWide-rc6NtMs()I

    move-result p0

    invoke-static {p1, p0}, Landroidx/compose/material3/IconButtonDefaults$IconButtonWidthOption;->equals-impl0(II)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 1879
    sget-object p0, Landroidx/compose/material3/tokens/SmallIconButtonTokens;->INSTANCE:Landroidx/compose/material3/tokens/SmallIconButtonTokens;

    invoke-virtual {p0}, Landroidx/compose/material3/tokens/SmallIconButtonTokens;->getWideLeadingSpace-D9Ej5fM()F

    move-result p1

    invoke-virtual {p0}, Landroidx/compose/material3/tokens/SmallIconButtonTokens;->getWideTrailingSpace-D9Ej5fM()F

    move-result p0

    add-float/2addr p1, p0

    .line 51
    invoke-static {p1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    int-to-float p0, p0

    .line 2280
    invoke-static {p0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p0

    .line 1883
    :goto_0
    sget-object p1, Landroidx/compose/material3/tokens/SmallIconButtonTokens;->INSTANCE:Landroidx/compose/material3/tokens/SmallIconButtonTokens;

    invoke-virtual {p1}, Landroidx/compose/material3/tokens/SmallIconButtonTokens;->getIconSize-D9Ej5fM()F

    move-result v0

    add-float/2addr v0, p0

    .line 51
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p0

    .line 1884
    invoke-virtual {p1}, Landroidx/compose/material3/tokens/SmallIconButtonTokens;->getContainerHeight-D9Ej5fM()F

    move-result p1

    .line 1882
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/DpKt;->DpSize-YgX7TsA(FF)J

    move-result-wide p0

    return-wide p0
.end method
