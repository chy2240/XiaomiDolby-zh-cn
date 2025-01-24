.class public final Landroidx/compose/material3/tokens/ListTokens;
.super Ljava/lang/Object;
.source "ListTokens.kt"


# static fields
.field private static final DividerLeadingSpace:F

.field private static final DividerTrailingSpace:F

.field private static final FocusIndicatorColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field public static final INSTANCE:Landroidx/compose/material3/tokens/ListTokens;

.field private static final ListItemContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final ListItemContainerElevation:F

.field private static final ListItemContainerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

.field private static final ListItemDisabledLabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final ListItemDisabledLabelTextOpacity:F

.field private static final ListItemDisabledLeadingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final ListItemDisabledLeadingIconOpacity:F

.field private static final ListItemDisabledTrailingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final ListItemDisabledTrailingIconOpacity:F

.field private static final ListItemDraggedContainerElevation:F

.field private static final ListItemDraggedLabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final ListItemDraggedLeadingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final ListItemDraggedTrailingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final ListItemFocusLabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final ListItemFocusLeadingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final ListItemFocusTrailingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final ListItemHoverLabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final ListItemHoverLeadingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final ListItemHoverTrailingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final ListItemLabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final ListItemLabelTextFont:Landroidx/compose/material3/tokens/TypographyKeyTokens;

.field private static final ListItemLargeLeadingVideoHeight:F

.field private static final ListItemLeadingAvatarColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final ListItemLeadingAvatarLabelColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final ListItemLeadingAvatarLabelFont:Landroidx/compose/material3/tokens/TypographyKeyTokens;

.field private static final ListItemLeadingAvatarShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

.field private static final ListItemLeadingAvatarSize:F

.field private static final ListItemLeadingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final ListItemLeadingIconSize:F

.field private static final ListItemLeadingImageHeight:F

.field private static final ListItemLeadingImageShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

.field private static final ListItemLeadingImageWidth:F

.field private static final ListItemLeadingSpace:F

.field private static final ListItemLeadingVideoShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

.field private static final ListItemLeadingVideoWidth:F

.field private static final ListItemOneLineContainerHeight:F

.field private static final ListItemOverlineColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final ListItemOverlineFont:Landroidx/compose/material3/tokens/TypographyKeyTokens;

.field private static final ListItemPressedLabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final ListItemPressedLeadingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final ListItemPressedTrailingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final ListItemSelectedTrailingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final ListItemSmallLeadingVideoHeight:F

.field private static final ListItemSupportingTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final ListItemSupportingTextFont:Landroidx/compose/material3/tokens/TypographyKeyTokens;

.field private static final ListItemThreeLineContainerHeight:F

.field private static final ListItemTrailingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final ListItemTrailingIconSize:F

.field private static final ListItemTrailingSpace:F

.field private static final ListItemTrailingSupportingTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final ListItemTrailingSupportingTextFont:Landroidx/compose/material3/tokens/TypographyKeyTokens;

.field private static final ListItemTwoLineContainerHeight:F

.field private static final ListItemUnselectedTrailingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Landroidx/compose/material3/tokens/ListTokens;

    invoke-direct {v0}, Landroidx/compose/material3/tokens/ListTokens;-><init>()V

    sput-object v0, Landroidx/compose/material3/tokens/ListTokens;->INSTANCE:Landroidx/compose/material3/tokens/ListTokens;

    const-wide/high16 v0, 0x4030000000000000L    # 16.0

    double-to-float v0, v0

    .line 82
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 24
    sput v1, Landroidx/compose/material3/tokens/ListTokens;->DividerLeadingSpace:F

    .line 83
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 25
    sput v1, Landroidx/compose/material3/tokens/ListTokens;->DividerTrailingSpace:F

    .line 26
    sget-object v1, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->Secondary:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v1, Landroidx/compose/material3/tokens/ListTokens;->FocusIndicatorColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 27
    sget-object v1, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->Surface:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v1, Landroidx/compose/material3/tokens/ListTokens;->ListItemContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 28
    sget-object v1, Landroidx/compose/material3/tokens/ElevationTokens;->INSTANCE:Landroidx/compose/material3/tokens/ElevationTokens;

    invoke-virtual {v1}, Landroidx/compose/material3/tokens/ElevationTokens;->getLevel0-D9Ej5fM()F

    move-result v2

    sput v2, Landroidx/compose/material3/tokens/ListTokens;->ListItemContainerElevation:F

    .line 29
    sget-object v2, Landroidx/compose/material3/tokens/ShapeKeyTokens;->CornerNone:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    sput-object v2, Landroidx/compose/material3/tokens/ListTokens;->ListItemContainerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    .line 30
    sget-object v3, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->OnSurface:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v3, Landroidx/compose/material3/tokens/ListTokens;->ListItemDisabledLabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    const v4, 0x3ec28f5c    # 0.38f

    .line 31
    sput v4, Landroidx/compose/material3/tokens/ListTokens;->ListItemDisabledLabelTextOpacity:F

    .line 32
    sput-object v3, Landroidx/compose/material3/tokens/ListTokens;->ListItemDisabledLeadingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 33
    sput v4, Landroidx/compose/material3/tokens/ListTokens;->ListItemDisabledLeadingIconOpacity:F

    .line 34
    sput-object v3, Landroidx/compose/material3/tokens/ListTokens;->ListItemDisabledTrailingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 35
    sput v4, Landroidx/compose/material3/tokens/ListTokens;->ListItemDisabledTrailingIconOpacity:F

    .line 36
    invoke-virtual {v1}, Landroidx/compose/material3/tokens/ElevationTokens;->getLevel4-D9Ej5fM()F

    move-result v1

    sput v1, Landroidx/compose/material3/tokens/ListTokens;->ListItemDraggedContainerElevation:F

    .line 37
    sput-object v3, Landroidx/compose/material3/tokens/ListTokens;->ListItemDraggedLabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 38
    sget-object v1, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->OnSurfaceVariant:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v1, Landroidx/compose/material3/tokens/ListTokens;->ListItemDraggedLeadingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 39
    sput-object v1, Landroidx/compose/material3/tokens/ListTokens;->ListItemDraggedTrailingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 40
    sput-object v3, Landroidx/compose/material3/tokens/ListTokens;->ListItemFocusLabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 41
    sput-object v1, Landroidx/compose/material3/tokens/ListTokens;->ListItemFocusLeadingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 42
    sput-object v1, Landroidx/compose/material3/tokens/ListTokens;->ListItemFocusTrailingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 43
    sput-object v3, Landroidx/compose/material3/tokens/ListTokens;->ListItemHoverLabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 44
    sput-object v1, Landroidx/compose/material3/tokens/ListTokens;->ListItemHoverLeadingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 45
    sput-object v1, Landroidx/compose/material3/tokens/ListTokens;->ListItemHoverTrailingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 46
    sput-object v3, Landroidx/compose/material3/tokens/ListTokens;->ListItemLabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 47
    sget-object v4, Landroidx/compose/material3/tokens/TypographyKeyTokens;->BodyLarge:Landroidx/compose/material3/tokens/TypographyKeyTokens;

    sput-object v4, Landroidx/compose/material3/tokens/ListTokens;->ListItemLabelTextFont:Landroidx/compose/material3/tokens/TypographyKeyTokens;

    const-wide v4, 0x4051400000000000L    # 69.0

    double-to-float v4, v4

    .line 84
    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 48
    sput v4, Landroidx/compose/material3/tokens/ListTokens;->ListItemLargeLeadingVideoHeight:F

    .line 49
    sget-object v4, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->PrimaryContainer:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v4, Landroidx/compose/material3/tokens/ListTokens;->ListItemLeadingAvatarColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 50
    sget-object v4, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->OnPrimaryContainer:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v4, Landroidx/compose/material3/tokens/ListTokens;->ListItemLeadingAvatarLabelColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 51
    sget-object v4, Landroidx/compose/material3/tokens/TypographyKeyTokens;->TitleMedium:Landroidx/compose/material3/tokens/TypographyKeyTokens;

    sput-object v4, Landroidx/compose/material3/tokens/ListTokens;->ListItemLeadingAvatarLabelFont:Landroidx/compose/material3/tokens/TypographyKeyTokens;

    .line 52
    sget-object v4, Landroidx/compose/material3/tokens/ShapeKeyTokens;->CornerFull:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    sput-object v4, Landroidx/compose/material3/tokens/ListTokens;->ListItemLeadingAvatarShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    const-wide/high16 v4, 0x4044000000000000L    # 40.0

    double-to-float v4, v4

    .line 85
    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 53
    sput v4, Landroidx/compose/material3/tokens/ListTokens;->ListItemLeadingAvatarSize:F

    .line 54
    sput-object v1, Landroidx/compose/material3/tokens/ListTokens;->ListItemLeadingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    const-wide/high16 v4, 0x4038000000000000L    # 24.0

    double-to-float v4, v4

    .line 86
    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    .line 55
    sput v5, Landroidx/compose/material3/tokens/ListTokens;->ListItemLeadingIconSize:F

    const-wide/high16 v5, 0x404c000000000000L    # 56.0

    double-to-float v5, v5

    .line 87
    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v6

    .line 56
    sput v6, Landroidx/compose/material3/tokens/ListTokens;->ListItemLeadingImageHeight:F

    .line 57
    sput-object v2, Landroidx/compose/material3/tokens/ListTokens;->ListItemLeadingImageShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    .line 88
    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v6

    .line 58
    sput v6, Landroidx/compose/material3/tokens/ListTokens;->ListItemLeadingImageWidth:F

    .line 89
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v6

    .line 59
    sput v6, Landroidx/compose/material3/tokens/ListTokens;->ListItemLeadingSpace:F

    .line 60
    sput-object v2, Landroidx/compose/material3/tokens/ListTokens;->ListItemLeadingVideoShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    double-to-float v2, v6

    .line 90
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    .line 61
    sput v2, Landroidx/compose/material3/tokens/ListTokens;->ListItemLeadingVideoWidth:F

    .line 91
    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    .line 62
    sput v2, Landroidx/compose/material3/tokens/ListTokens;->ListItemOneLineContainerHeight:F

    .line 63
    sput-object v1, Landroidx/compose/material3/tokens/ListTokens;->ListItemOverlineColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 64
    sget-object v2, Landroidx/compose/material3/tokens/TypographyKeyTokens;->LabelSmall:Landroidx/compose/material3/tokens/TypographyKeyTokens;

    sput-object v2, Landroidx/compose/material3/tokens/ListTokens;->ListItemOverlineFont:Landroidx/compose/material3/tokens/TypographyKeyTokens;

    .line 65
    sput-object v3, Landroidx/compose/material3/tokens/ListTokens;->ListItemPressedLabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 66
    sput-object v1, Landroidx/compose/material3/tokens/ListTokens;->ListItemPressedLeadingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 67
    sput-object v1, Landroidx/compose/material3/tokens/ListTokens;->ListItemPressedTrailingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 68
    sget-object v6, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->Primary:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v6, Landroidx/compose/material3/tokens/ListTokens;->ListItemSelectedTrailingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 92
    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    .line 69
    sput v5, Landroidx/compose/material3/tokens/ListTokens;->ListItemSmallLeadingVideoHeight:F

    .line 70
    sput-object v1, Landroidx/compose/material3/tokens/ListTokens;->ListItemSupportingTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 71
    sget-object v5, Landroidx/compose/material3/tokens/TypographyKeyTokens;->BodyMedium:Landroidx/compose/material3/tokens/TypographyKeyTokens;

    sput-object v5, Landroidx/compose/material3/tokens/ListTokens;->ListItemSupportingTextFont:Landroidx/compose/material3/tokens/TypographyKeyTokens;

    const-wide/high16 v5, 0x4056000000000000L    # 88.0

    double-to-float v5, v5

    .line 93
    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    .line 72
    sput v5, Landroidx/compose/material3/tokens/ListTokens;->ListItemThreeLineContainerHeight:F

    .line 73
    sput-object v1, Landroidx/compose/material3/tokens/ListTokens;->ListItemTrailingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 94
    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 74
    sput v4, Landroidx/compose/material3/tokens/ListTokens;->ListItemTrailingIconSize:F

    .line 95
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 75
    sput v0, Landroidx/compose/material3/tokens/ListTokens;->ListItemTrailingSpace:F

    .line 76
    sput-object v1, Landroidx/compose/material3/tokens/ListTokens;->ListItemTrailingSupportingTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 77
    sput-object v2, Landroidx/compose/material3/tokens/ListTokens;->ListItemTrailingSupportingTextFont:Landroidx/compose/material3/tokens/TypographyKeyTokens;

    const-wide/high16 v0, 0x4052000000000000L    # 72.0

    double-to-float v0, v0

    .line 96
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 78
    sput v0, Landroidx/compose/material3/tokens/ListTokens;->ListItemTwoLineContainerHeight:F

    .line 79
    sput-object v3, Landroidx/compose/material3/tokens/ListTokens;->ListItemUnselectedTrailingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getListItemDisabledLabelTextColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;
    .locals 0

    .line 30
    sget-object p0, Landroidx/compose/material3/tokens/ListTokens;->ListItemDisabledLabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-object p0
.end method

.method public final getListItemDisabledLabelTextOpacity()F
    .locals 0

    .line 31
    sget p0, Landroidx/compose/material3/tokens/ListTokens;->ListItemDisabledLabelTextOpacity:F

    return p0
.end method

.method public final getListItemDisabledLeadingIconColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;
    .locals 0

    .line 32
    sget-object p0, Landroidx/compose/material3/tokens/ListTokens;->ListItemDisabledLeadingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-object p0
.end method

.method public final getListItemDisabledLeadingIconOpacity()F
    .locals 0

    .line 33
    sget p0, Landroidx/compose/material3/tokens/ListTokens;->ListItemDisabledLeadingIconOpacity:F

    return p0
.end method

.method public final getListItemDisabledTrailingIconColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;
    .locals 0

    .line 34
    sget-object p0, Landroidx/compose/material3/tokens/ListTokens;->ListItemDisabledTrailingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-object p0
.end method

.method public final getListItemDisabledTrailingIconOpacity()F
    .locals 0

    .line 35
    sget p0, Landroidx/compose/material3/tokens/ListTokens;->ListItemDisabledTrailingIconOpacity:F

    return p0
.end method

.method public final getListItemLabelTextColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;
    .locals 0

    .line 46
    sget-object p0, Landroidx/compose/material3/tokens/ListTokens;->ListItemLabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-object p0
.end method

.method public final getListItemLeadingIconColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;
    .locals 0

    .line 54
    sget-object p0, Landroidx/compose/material3/tokens/ListTokens;->ListItemLeadingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-object p0
.end method

.method public final getListItemLeadingIconSize-D9Ej5fM()F
    .locals 0

    .line 55
    sget p0, Landroidx/compose/material3/tokens/ListTokens;->ListItemLeadingIconSize:F

    return p0
.end method

.method public final getListItemTrailingIconColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;
    .locals 0

    .line 73
    sget-object p0, Landroidx/compose/material3/tokens/ListTokens;->ListItemTrailingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-object p0
.end method

.method public final getListItemTrailingIconSize-D9Ej5fM()F
    .locals 0

    .line 74
    sget p0, Landroidx/compose/material3/tokens/ListTokens;->ListItemTrailingIconSize:F

    return p0
.end method
