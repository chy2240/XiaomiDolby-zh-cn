.class public final Lcom/android/settingslib/spa/framework/theme/SettingsDimension;
.super Ljava/lang/Object;
.source "SettingsDimension.kt"


# static fields
.field public static final INSTANCE:Lcom/android/settingslib/spa/framework/theme/SettingsDimension;

.field private static final actionIconHeight:F

.field private static final actionIconPadding:F

.field private static final actionIconWidth:F

.field private static final appIconInfoSize:F

.field private static final appIconItemSize:F

.field private static final buttonPadding:Landroidx/compose/foundation/layout/PaddingValues;

.field private static final buttonPaddingVertical:F

.field private static final dialogItemPadding:Landroidx/compose/foundation/layout/PaddingValues;

.field private static final dialogItemPaddingHorizontal:F

.field private static final iconLarge:F

.field private static final illustrationCornerRadius:F

.field private static final illustrationMaxHeight:F

.field private static final illustrationMaxWidth:F

.field private static final illustrationPadding:F

.field private static final introIconSize:F

.field private static final itemDividerHeight:F

.field private static final itemIconContainerSize:F

.field private static final itemIconSize:F

.field private static final itemPadding:Landroidx/compose/foundation/layout/PaddingValues;

.field private static final itemPaddingAround:F

.field private static final itemPaddingEnd:F

.field private static final itemPaddingStart:F

.field private static final itemPaddingVertical:F

.field private static final menuFieldPadding:Landroidx/compose/foundation/layout/PaddingValues;

.field private static final paddingExtraLarge:F

.field private static final paddingExtraSmall:F

.field private static final paddingExtraSmall5:F

.field private static final paddingLarge:F

.field private static final paddingSmall:F

.field private static final paddingTiny:F

.field private static final spinnerHorizontalPadding:F

.field private static final spinnerVerticalPadding:F

.field private static final textFieldPadding:Landroidx/compose/foundation/layout/PaddingValues;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;

    invoke-direct {v0}, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;-><init>()V

    sput-object v0, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->INSTANCE:Lcom/android/settingslib/spa/framework/theme/SettingsDimension;

    const/4 v0, 0x2

    int-to-float v0, v0

    .line 109
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 23
    sput v0, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->paddingTiny:F

    const/4 v0, 0x4

    int-to-float v0, v0

    .line 109
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 24
    sput v1, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->paddingExtraSmall:F

    .line 25
    invoke-static {}, Lcom/android/settingslib/spa/framework/theme/SettingsThemeKt;->isSpaExpressiveEnabled()Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_0

    int-to-float v1, v2

    .line 109
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 25
    :goto_0
    sput v1, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->paddingSmall:F

    const/16 v1, 0xa

    int-to-float v1, v1

    .line 109
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 26
    sput v1, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->paddingExtraSmall5:F

    const/16 v1, 0x10

    int-to-float v1, v1

    .line 109
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 27
    sput v1, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->paddingLarge:F

    const/16 v3, 0x18

    int-to-float v3, v3

    .line 109
    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v9

    .line 28
    sput v9, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->paddingExtraLarge:F

    .line 30
    sput v9, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->spinnerHorizontalPadding:F

    .line 31
    sput v1, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->spinnerVerticalPadding:F

    const/16 v4, 0x20

    int-to-float v10, v4

    .line 109
    invoke-static {v10}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 33
    sput v4, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->actionIconWidth:F

    const/16 v4, 0x28

    int-to-float v11, v4

    .line 109
    invoke-static {v11}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 34
    sput v4, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->actionIconHeight:F

    .line 109
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 35
    sput v0, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->actionIconPadding:F

    .line 109
    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 37
    sput v0, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->itemIconSize:F

    const/16 v0, 0x48

    int-to-float v0, v0

    .line 109
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 38
    sput v0, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->itemIconContainerSize:F

    .line 39
    sput v9, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->itemPaddingStart:F

    .line 40
    sput v1, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->itemPaddingEnd:F

    .line 41
    sput v1, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->itemPaddingVertical:F

    .line 42
    invoke-static {v9, v1, v1, v1}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-a9UjIt4(FFFF)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->itemPadding:Landroidx/compose/foundation/layout/PaddingValues;

    const/16 v7, 0xa

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v3, v9

    move v5, v1

    .line 48
    invoke-static/range {v3 .. v8}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-a9UjIt4$default(FFFFILjava/lang/Object;)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->textFieldPadding:Landroidx/compose/foundation/layout/PaddingValues;

    const/4 v7, 0x2

    move v6, v1

    .line 52
    invoke-static/range {v3 .. v8}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-a9UjIt4$default(FFFFILjava/lang/Object;)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->menuFieldPadding:Landroidx/compose/foundation/layout/PaddingValues;

    int-to-float v0, v2

    .line 109
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 57
    sput v0, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->itemPaddingAround:F

    .line 109
    invoke-static {v10}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 58
    sput v0, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->itemDividerHeight:F

    const/16 v0, 0x30

    int-to-float v0, v0

    .line 109
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 60
    sput v0, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->iconLarge:F

    .line 109
    invoke-static {v11}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    .line 61
    sput v2, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->introIconSize:F

    .line 109
    invoke-static {v10}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    .line 64
    sput v2, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->appIconItemSize:F

    .line 67
    sput v0, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->appIconInfoSize:F

    const/16 v0, 0xc

    int-to-float v0, v0

    .line 109
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 70
    sput v0, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->buttonPaddingVertical:F

    .line 73
    invoke-static {v1, v0}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-YgX7TsA(FF)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v2

    sput-object v2, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->buttonPadding:Landroidx/compose/foundation/layout/PaddingValues;

    .line 76
    sput v9, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->dialogItemPaddingHorizontal:F

    .line 80
    invoke-static {v9, v0}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-YgX7TsA(FF)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->dialogItemPadding:Landroidx/compose/foundation/layout/PaddingValues;

    const/16 v0, 0x19c

    int-to-float v0, v0

    .line 109
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 83
    sput v0, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->illustrationMaxWidth:F

    const/16 v0, 0x12c

    int-to-float v0, v0

    .line 109
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 84
    sput v0, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->illustrationMaxHeight:F

    .line 85
    sput v1, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->illustrationPadding:F

    const/16 v0, 0x1c

    int-to-float v0, v0

    .line 109
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 86
    sput v0, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->illustrationCornerRadius:F

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getActionIconHeight-D9Ej5fM()F
    .locals 0

    .line 34
    sget p0, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->actionIconHeight:F

    return p0
.end method

.method public final getActionIconPadding-D9Ej5fM()F
    .locals 0

    .line 35
    sget p0, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->actionIconPadding:F

    return p0
.end method

.method public final getActionIconWidth-D9Ej5fM()F
    .locals 0

    .line 33
    sget p0, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->actionIconWidth:F

    return p0
.end method

.method public final getItemIconContainerSize-D9Ej5fM()F
    .locals 0

    .line 38
    sget p0, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->itemIconContainerSize:F

    return p0
.end method

.method public final getItemPadding()Landroidx/compose/foundation/layout/PaddingValues;
    .locals 0

    .line 42
    sget-object p0, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->itemPadding:Landroidx/compose/foundation/layout/PaddingValues;

    return-object p0
.end method

.method public final getItemPaddingAround-D9Ej5fM()F
    .locals 0

    .line 57
    sget p0, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->itemPaddingAround:F

    return p0
.end method

.method public final getItemPaddingEnd-D9Ej5fM()F
    .locals 0

    .line 40
    sget p0, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->itemPaddingEnd:F

    return p0
.end method

.method public final getItemPaddingStart-D9Ej5fM()F
    .locals 0

    .line 39
    sget p0, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->itemPaddingStart:F

    return p0
.end method

.method public final getItemPaddingVertical-D9Ej5fM()F
    .locals 0

    .line 41
    sget p0, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->itemPaddingVertical:F

    return p0
.end method

.method public final getPaddingTiny-D9Ej5fM()F
    .locals 0

    .line 23
    sget p0, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->paddingTiny:F

    return p0
.end method
