.class public final Landroidx/compose/material3/MenuDefaults;
.super Ljava/lang/Object;
.source "Menu.kt"


# static fields
.field private static final DropdownMenuItemContentPadding:Landroidx/compose/foundation/layout/PaddingValues;

.field public static final INSTANCE:Landroidx/compose/material3/MenuDefaults;

.field private static final ShadowElevation:F

.field private static final TonalElevation:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/material3/MenuDefaults;

    invoke-direct {v0}, Landroidx/compose/material3/MenuDefaults;-><init>()V

    sput-object v0, Landroidx/compose/material3/MenuDefaults;->INSTANCE:Landroidx/compose/material3/MenuDefaults;

    .line 185
    sget-object v0, Landroidx/compose/material3/tokens/ElevationTokens;->INSTANCE:Landroidx/compose/material3/tokens/ElevationTokens;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/ElevationTokens;->getLevel0-D9Ej5fM()F

    move-result v0

    sput v0, Landroidx/compose/material3/MenuDefaults;->TonalElevation:F

    .line 188
    sget-object v0, Landroidx/compose/material3/tokens/MenuTokens;->INSTANCE:Landroidx/compose/material3/tokens/MenuTokens;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/MenuTokens;->getContainerElevation-D9Ej5fM()F

    move-result v0

    sput v0, Landroidx/compose/material3/MenuDefaults;->ShadowElevation:F

    .line 258
    invoke-static {}, Landroidx/compose/material3/MenuKt;->access$getDropdownMenuItemHorizontalPadding$p()F

    move-result v0

    const/4 v1, 0x0

    int-to-float v1, v1

    .line 539
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 258
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-YgX7TsA(FF)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/MenuDefaults;->DropdownMenuItemContentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getContainerColor(Landroidx/compose/runtime/Composer;I)J
    .locals 2

    .line 196
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, -0x1

    const-string v0, "androidx.compose.material3.MenuDefaults.<get-containerColor> (Menu.kt:195)"

    const v1, -0x6a89fc59

    invoke-static {v1, p2, p0, v0}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    sget-object p0, Landroidx/compose/material3/tokens/MenuTokens;->INSTANCE:Landroidx/compose/material3/tokens/MenuTokens;

    invoke-virtual {p0}, Landroidx/compose/material3/tokens/MenuTokens;->getContainerColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object p0

    const/4 p2, 0x6

    invoke-static {p0, p1, p2}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J

    move-result-wide p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1
    return-wide p0
.end method

.method public final getDefaultMenuItemColors$material3_release(Landroidx/compose/material3/ColorScheme;)Landroidx/compose/material3/MenuItemColors;
    .locals 22

    move-object/from16 v0, p1

    .line 238
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/material3/ColorScheme;->getDefaultMenuItemColorsCached$material3_release()Landroidx/compose/material3/MenuItemColors;

    move-result-object v1

    if-nez v1, :cond_0

    .line 239
    new-instance v1, Landroidx/compose/material3/MenuItemColors;

    .line 240
    sget-object v2, Landroidx/compose/material3/tokens/ListTokens;->INSTANCE:Landroidx/compose/material3/tokens/ListTokens;

    invoke-virtual {v2}, Landroidx/compose/material3/tokens/ListTokens;->getListItemLabelTextColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v3

    invoke-static {v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v3

    .line 241
    invoke-virtual {v2}, Landroidx/compose/material3/tokens/ListTokens;->getListItemLeadingIconColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v5

    invoke-static {v0, v5}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v5

    .line 242
    invoke-virtual {v2}, Landroidx/compose/material3/tokens/ListTokens;->getListItemTrailingIconColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v7

    invoke-static {v0, v7}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v7

    .line 244
    invoke-virtual {v2}, Landroidx/compose/material3/tokens/ListTokens;->getListItemDisabledLabelTextColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v9

    invoke-static {v0, v9}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v10

    .line 245
    invoke-virtual {v2}, Landroidx/compose/material3/tokens/ListTokens;->getListItemDisabledLabelTextOpacity()F

    move-result v12

    const/16 v16, 0xe

    const/16 v17, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v10 .. v17}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v9

    .line 247
    invoke-virtual {v2}, Landroidx/compose/material3/tokens/ListTokens;->getListItemDisabledLeadingIconColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v11

    invoke-static {v0, v11}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v12

    .line 248
    invoke-virtual {v2}, Landroidx/compose/material3/tokens/ListTokens;->getListItemDisabledLeadingIconOpacity()F

    move-result v14

    const/16 v18, 0xe

    const/16 v19, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v12 .. v19}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v11

    .line 250
    invoke-virtual {v2}, Landroidx/compose/material3/tokens/ListTokens;->getListItemDisabledTrailingIconColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v13

    invoke-static {v0, v13}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v14

    .line 251
    invoke-virtual {v2}, Landroidx/compose/material3/tokens/ListTokens;->getListItemDisabledTrailingIconOpacity()F

    move-result v16

    const/16 v20, 0xe

    const/16 v21, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v14 .. v21}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v13

    const/4 v15, 0x0

    move-object v2, v1

    .line 239
    invoke-direct/range {v2 .. v15}, Landroidx/compose/material3/MenuItemColors;-><init>(JJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 253
    invoke-virtual {v0, v1}, Landroidx/compose/material3/ColorScheme;->setDefaultMenuItemColorsCached$material3_release(Landroidx/compose/material3/MenuItemColors;)V

    :cond_0
    return-object v1
.end method

.method public final getDropdownMenuItemContentPadding()Landroidx/compose/foundation/layout/PaddingValues;
    .locals 0

    .line 257
    sget-object p0, Landroidx/compose/material3/MenuDefaults;->DropdownMenuItemContentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    return-object p0
.end method

.method public final getShadowElevation-D9Ej5fM()F
    .locals 0

    .line 188
    sget p0, Landroidx/compose/material3/MenuDefaults;->ShadowElevation:F

    return p0
.end method

.method public final getShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;
    .locals 2

    .line 192
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, -0x1

    const-string v0, "androidx.compose.material3.MenuDefaults.<get-shape> (Menu.kt:191)"

    const v1, 0xd092393

    invoke-static {v1, p2, p0, v0}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    sget-object p0, Landroidx/compose/material3/tokens/MenuTokens;->INSTANCE:Landroidx/compose/material3/tokens/MenuTokens;

    invoke-virtual {p0}, Landroidx/compose/material3/tokens/MenuTokens;->getContainerShape()Landroidx/compose/material3/tokens/ShapeKeyTokens;

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

.method public final getTonalElevation-D9Ej5fM()F
    .locals 0

    .line 185
    sget p0, Landroidx/compose/material3/MenuDefaults;->TonalElevation:F

    return p0
.end method

.method public final itemColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/MenuItemColors;
    .locals 3

    .line 202
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "androidx.compose.material3.MenuDefaults.itemColors (Menu.kt:201)"

    const v2, 0x4f1143bc    # 2.43713536E9f

    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    sget-object p2, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    const/4 v0, 0x6

    invoke-virtual {p2, p1, v0}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/material3/MenuDefaults;->getDefaultMenuItemColors$material3_release(Landroidx/compose/material3/ColorScheme;)Landroidx/compose/material3/MenuItemColors;

    move-result-object p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1
    return-object p0
.end method
