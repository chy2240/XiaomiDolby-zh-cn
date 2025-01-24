.class public final Landroidx/compose/material3/tokens/BaselineButtonTokens;
.super Ljava/lang/Object;
.source "BaselineButtonTokens.kt"


# static fields
.field private static final ContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final ContainerElevation:F

.field private static final ContainerHeight:F

.field private static final ContainerShapeRound:Landroidx/compose/material3/tokens/ShapeKeyTokens;

.field private static final ContainerShapeSquare:Landroidx/compose/material3/tokens/ShapeKeyTokens;

.field private static final DisabledContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final DisabledContainerElevation:F

.field private static final DisabledContainerOpacity:F

.field private static final DisabledIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final DisabledIconOpacity:F

.field private static final DisabledLabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final DisabledLabelTextOpacity:F

.field private static final FocusedContainerElevation:F

.field private static final FocusedIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final FocusedLabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final HoveredContainerElevation:F

.field private static final HoveredIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final HoveredLabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field public static final INSTANCE:Landroidx/compose/material3/tokens/BaselineButtonTokens;

.field private static final IconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final IconLabelSpace:F

.field private static final IconSize:F

.field private static final LabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final LabelTextSelectedColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final LabelTextUnselectedColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final LeadingSpace:F

.field private static final PressedContainerElevation:F

.field private static final PressedContainerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

.field private static final PressedIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final PressedLabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final SelectedContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final SelectedContainerShapeRound:Landroidx/compose/material3/tokens/ShapeKeyTokens;

.field private static final SelectedContainerShapeSquare:Landroidx/compose/material3/tokens/ShapeKeyTokens;

.field private static final SelectedFocusedIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final SelectedFocusedLabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final SelectedHoveredIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final SelectedHoveredLabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final SelectedIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final SelectedPressedIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final SelectedPressedLabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final TrailingSpace:F

.field private static final UnselectedContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final UnselectedFocusedIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final UnselectedFocusedLabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final UnselectedHoveredIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final UnselectedHoveredLabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final UnselectedIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final UnselectedPressedIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final UnselectedPressedLabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Landroidx/compose/material3/tokens/BaselineButtonTokens;

    invoke-direct {v0}, Landroidx/compose/material3/tokens/BaselineButtonTokens;-><init>()V

    sput-object v0, Landroidx/compose/material3/tokens/BaselineButtonTokens;->INSTANCE:Landroidx/compose/material3/tokens/BaselineButtonTokens;

    .line 24
    sget-object v0, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->Primary:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v0, Landroidx/compose/material3/tokens/BaselineButtonTokens;->ContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 25
    sget-object v1, Landroidx/compose/material3/tokens/ElevationTokens;->INSTANCE:Landroidx/compose/material3/tokens/ElevationTokens;

    invoke-virtual {v1}, Landroidx/compose/material3/tokens/ElevationTokens;->getLevel0-D9Ej5fM()F

    move-result v2

    sput v2, Landroidx/compose/material3/tokens/BaselineButtonTokens;->ContainerElevation:F

    const-wide/high16 v2, 0x4044000000000000L    # 40.0

    double-to-float v2, v2

    .line 74
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    .line 26
    sput v2, Landroidx/compose/material3/tokens/BaselineButtonTokens;->ContainerHeight:F

    .line 27
    sget-object v2, Landroidx/compose/material3/tokens/ShapeKeyTokens;->CornerFull:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    sput-object v2, Landroidx/compose/material3/tokens/BaselineButtonTokens;->ContainerShapeRound:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    .line 28
    sget-object v3, Landroidx/compose/material3/tokens/ShapeKeyTokens;->CornerMedium:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    sput-object v3, Landroidx/compose/material3/tokens/BaselineButtonTokens;->ContainerShapeSquare:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    .line 29
    sget-object v4, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->OnSurface:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v4, Landroidx/compose/material3/tokens/BaselineButtonTokens;->DisabledContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 30
    invoke-virtual {v1}, Landroidx/compose/material3/tokens/ElevationTokens;->getLevel0-D9Ej5fM()F

    move-result v4

    sput v4, Landroidx/compose/material3/tokens/BaselineButtonTokens;->DisabledContainerElevation:F

    const v4, 0x3dcccccd    # 0.1f

    .line 31
    sput v4, Landroidx/compose/material3/tokens/BaselineButtonTokens;->DisabledContainerOpacity:F

    .line 32
    sget-object v4, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->OnSurfaceVariant:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v4, Landroidx/compose/material3/tokens/BaselineButtonTokens;->DisabledIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    const v5, 0x3ec28f5c    # 0.38f

    .line 33
    sput v5, Landroidx/compose/material3/tokens/BaselineButtonTokens;->DisabledIconOpacity:F

    .line 34
    sput-object v4, Landroidx/compose/material3/tokens/BaselineButtonTokens;->DisabledLabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 35
    sput v5, Landroidx/compose/material3/tokens/BaselineButtonTokens;->DisabledLabelTextOpacity:F

    .line 36
    invoke-virtual {v1}, Landroidx/compose/material3/tokens/ElevationTokens;->getLevel0-D9Ej5fM()F

    move-result v5

    sput v5, Landroidx/compose/material3/tokens/BaselineButtonTokens;->FocusedContainerElevation:F

    .line 37
    sget-object v5, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->OnPrimary:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v5, Landroidx/compose/material3/tokens/BaselineButtonTokens;->FocusedIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 38
    sput-object v5, Landroidx/compose/material3/tokens/BaselineButtonTokens;->FocusedLabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 39
    invoke-virtual {v1}, Landroidx/compose/material3/tokens/ElevationTokens;->getLevel1-D9Ej5fM()F

    move-result v6

    sput v6, Landroidx/compose/material3/tokens/BaselineButtonTokens;->HoveredContainerElevation:F

    .line 40
    sput-object v5, Landroidx/compose/material3/tokens/BaselineButtonTokens;->HoveredIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 41
    sput-object v5, Landroidx/compose/material3/tokens/BaselineButtonTokens;->HoveredLabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 42
    sput-object v5, Landroidx/compose/material3/tokens/BaselineButtonTokens;->IconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    const-wide/high16 v6, 0x4020000000000000L    # 8.0

    double-to-float v6, v6

    .line 75
    invoke-static {v6}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v6

    .line 43
    sput v6, Landroidx/compose/material3/tokens/BaselineButtonTokens;->IconLabelSpace:F

    const-wide/high16 v6, 0x4034000000000000L    # 20.0

    double-to-float v6, v6

    .line 76
    invoke-static {v6}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v6

    .line 44
    sput v6, Landroidx/compose/material3/tokens/BaselineButtonTokens;->IconSize:F

    .line 45
    sput-object v5, Landroidx/compose/material3/tokens/BaselineButtonTokens;->LabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 46
    sput-object v5, Landroidx/compose/material3/tokens/BaselineButtonTokens;->LabelTextSelectedColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 47
    sput-object v4, Landroidx/compose/material3/tokens/BaselineButtonTokens;->LabelTextUnselectedColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    const-wide/high16 v6, 0x4038000000000000L    # 24.0

    double-to-float v6, v6

    .line 77
    invoke-static {v6}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v7

    .line 48
    sput v7, Landroidx/compose/material3/tokens/BaselineButtonTokens;->LeadingSpace:F

    .line 49
    invoke-virtual {v1}, Landroidx/compose/material3/tokens/ElevationTokens;->getLevel0-D9Ej5fM()F

    move-result v1

    sput v1, Landroidx/compose/material3/tokens/BaselineButtonTokens;->PressedContainerElevation:F

    .line 50
    sget-object v1, Landroidx/compose/material3/tokens/ShapeKeyTokens;->CornerSmall:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    sput-object v1, Landroidx/compose/material3/tokens/BaselineButtonTokens;->PressedContainerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    .line 51
    sput-object v5, Landroidx/compose/material3/tokens/BaselineButtonTokens;->PressedIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 52
    sput-object v5, Landroidx/compose/material3/tokens/BaselineButtonTokens;->PressedLabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 53
    sput-object v0, Landroidx/compose/material3/tokens/BaselineButtonTokens;->SelectedContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 54
    sput-object v2, Landroidx/compose/material3/tokens/BaselineButtonTokens;->SelectedContainerShapeRound:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    .line 55
    sput-object v3, Landroidx/compose/material3/tokens/BaselineButtonTokens;->SelectedContainerShapeSquare:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    .line 56
    sput-object v5, Landroidx/compose/material3/tokens/BaselineButtonTokens;->SelectedFocusedIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 57
    sput-object v5, Landroidx/compose/material3/tokens/BaselineButtonTokens;->SelectedFocusedLabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 58
    sput-object v5, Landroidx/compose/material3/tokens/BaselineButtonTokens;->SelectedHoveredIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 59
    sput-object v5, Landroidx/compose/material3/tokens/BaselineButtonTokens;->SelectedHoveredLabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 60
    sput-object v5, Landroidx/compose/material3/tokens/BaselineButtonTokens;->SelectedIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 61
    sput-object v5, Landroidx/compose/material3/tokens/BaselineButtonTokens;->SelectedPressedIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 62
    sput-object v5, Landroidx/compose/material3/tokens/BaselineButtonTokens;->SelectedPressedLabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 78
    invoke-static {v6}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 63
    sput v0, Landroidx/compose/material3/tokens/BaselineButtonTokens;->TrailingSpace:F

    .line 64
    sget-object v0, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->SurfaceContainer:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v0, Landroidx/compose/material3/tokens/BaselineButtonTokens;->UnselectedContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 65
    sput-object v4, Landroidx/compose/material3/tokens/BaselineButtonTokens;->UnselectedFocusedIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 66
    sput-object v4, Landroidx/compose/material3/tokens/BaselineButtonTokens;->UnselectedFocusedLabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 67
    sput-object v4, Landroidx/compose/material3/tokens/BaselineButtonTokens;->UnselectedHoveredIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 68
    sput-object v4, Landroidx/compose/material3/tokens/BaselineButtonTokens;->UnselectedHoveredLabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 69
    sput-object v4, Landroidx/compose/material3/tokens/BaselineButtonTokens;->UnselectedIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 70
    sput-object v4, Landroidx/compose/material3/tokens/BaselineButtonTokens;->UnselectedPressedIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 71
    sput-object v4, Landroidx/compose/material3/tokens/BaselineButtonTokens;->UnselectedPressedLabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLeadingSpace-D9Ej5fM()F
    .locals 0

    .line 48
    sget p0, Landroidx/compose/material3/tokens/BaselineButtonTokens;->LeadingSpace:F

    return p0
.end method

.method public final getTrailingSpace-D9Ej5fM()F
    .locals 0

    .line 63
    sget p0, Landroidx/compose/material3/tokens/BaselineButtonTokens;->TrailingSpace:F

    return p0
.end method
