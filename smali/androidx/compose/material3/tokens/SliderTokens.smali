.class public final Landroidx/compose/material3/tokens/SliderTokens;
.super Ljava/lang/Object;
.source "SliderTokens.kt"


# static fields
.field private static final ActiveContainerOpacity:F

.field private static final ActiveHandleHeight:F

.field private static final ActiveHandleLeadingSpace:F

.field private static final ActiveHandlePadding:F

.field private static final ActiveHandleShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

.field private static final ActiveHandleTrailingSpace:F

.field private static final ActiveHandleWidth:F

.field private static final ActiveTrackColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final ActiveTrackHeight:F

.field private static final ActiveTrackShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

.field private static final ActiveTrackShapeLeading:Landroidx/compose/material3/tokens/ShapeKeyTokens;

.field private static final DisabledActiveTrackColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final DisabledActiveTrackOpacity:F

.field private static final DisabledHandleColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final DisabledHandleOpacity:F

.field private static final DisabledHandleWidth:F

.field private static final DisabledInactiveTrackColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final DisabledInactiveTrackOpacity:F

.field private static final DisabledStopColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final FocusActiveTrackColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final FocusHandleWidth:F

.field private static final FocusInactiveTrackColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final FocusStopColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final HandleColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final HandleHeight:F

.field private static final HandleShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

.field private static final HandleWidth:F

.field private static final HoverHandleColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final HoverHandleWidth:F

.field private static final HoverStopColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field public static final INSTANCE:Landroidx/compose/material3/tokens/SliderTokens;

.field private static final InactiveContainerOpacity:F

.field private static final InactiveTrackColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final InactiveTrackHeight:F

.field private static final InactiveTrackShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

.field private static final LabelContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final LabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final PressedActiveTrackColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final PressedHandleColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final PressedHandleWidth:F

.field private static final PressedInactiveTrackColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final PressedStopColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final SliderActiveHandleColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final StopIndicatorColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final StopIndicatorColorSelected:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final StopIndicatorShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

.field private static final StopIndicatorSize:F

.field private static final StopIndicatorTrailingSpace:F

.field private static final ValueIndicatorActiveBottomSpace:F

.field private static final ValueIndicatorContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final ValueIndicatorLabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final ValueIndicatorLabelTextFont:Landroidx/compose/material3/tokens/TypographyKeyTokens;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Landroidx/compose/material3/tokens/SliderTokens;

    invoke-direct {v0}, Landroidx/compose/material3/tokens/SliderTokens;-><init>()V

    sput-object v0, Landroidx/compose/material3/tokens/SliderTokens;->INSTANCE:Landroidx/compose/material3/tokens/SliderTokens;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 24
    sput v0, Landroidx/compose/material3/tokens/SliderTokens;->ActiveContainerOpacity:F

    const-wide/high16 v1, 0x4046000000000000L    # 44.0

    double-to-float v1, v1

    .line 77
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    .line 25
    sput v2, Landroidx/compose/material3/tokens/SliderTokens;->ActiveHandleHeight:F

    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    double-to-float v2, v2

    .line 78
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 26
    sput v3, Landroidx/compose/material3/tokens/SliderTokens;->ActiveHandleLeadingSpace:F

    .line 79
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 27
    sput v3, Landroidx/compose/material3/tokens/SliderTokens;->ActiveHandlePadding:F

    .line 28
    sget-object v3, Landroidx/compose/material3/tokens/ShapeKeyTokens;->CornerFull:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    sput-object v3, Landroidx/compose/material3/tokens/SliderTokens;->ActiveHandleShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    .line 80
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 29
    sput v4, Landroidx/compose/material3/tokens/SliderTokens;->ActiveHandleTrailingSpace:F

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    double-to-float v4, v4

    .line 81
    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    .line 30
    sput v5, Landroidx/compose/material3/tokens/SliderTokens;->ActiveHandleWidth:F

    .line 31
    sget-object v5, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->Primary:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v5, Landroidx/compose/material3/tokens/SliderTokens;->ActiveTrackColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    const-wide/high16 v6, 0x4030000000000000L    # 16.0

    double-to-float v6, v6

    .line 82
    invoke-static {v6}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v7

    .line 32
    sput v7, Landroidx/compose/material3/tokens/SliderTokens;->ActiveTrackHeight:F

    .line 33
    sput-object v3, Landroidx/compose/material3/tokens/SliderTokens;->ActiveTrackShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    .line 34
    sput-object v3, Landroidx/compose/material3/tokens/SliderTokens;->ActiveTrackShapeLeading:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    .line 35
    sget-object v7, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->OnSurface:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v7, Landroidx/compose/material3/tokens/SliderTokens;->DisabledActiveTrackColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    const v8, 0x3ec28f5c    # 0.38f

    .line 36
    sput v8, Landroidx/compose/material3/tokens/SliderTokens;->DisabledActiveTrackOpacity:F

    .line 37
    sput-object v7, Landroidx/compose/material3/tokens/SliderTokens;->DisabledHandleColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 38
    sput v8, Landroidx/compose/material3/tokens/SliderTokens;->DisabledHandleOpacity:F

    .line 83
    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v8

    .line 39
    sput v8, Landroidx/compose/material3/tokens/SliderTokens;->DisabledHandleWidth:F

    .line 40
    sput-object v7, Landroidx/compose/material3/tokens/SliderTokens;->DisabledInactiveTrackColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    const v8, 0x3df5c28f    # 0.12f

    .line 41
    sput v8, Landroidx/compose/material3/tokens/SliderTokens;->DisabledInactiveTrackOpacity:F

    .line 42
    sput-object v7, Landroidx/compose/material3/tokens/SliderTokens;->DisabledStopColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 43
    sput-object v5, Landroidx/compose/material3/tokens/SliderTokens;->FocusActiveTrackColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    double-to-float v7, v7

    .line 84
    invoke-static {v7}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v8

    .line 44
    sput v8, Landroidx/compose/material3/tokens/SliderTokens;->FocusHandleWidth:F

    .line 45
    sget-object v8, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->SecondaryContainer:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v8, Landroidx/compose/material3/tokens/SliderTokens;->FocusInactiveTrackColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 46
    sput-object v5, Landroidx/compose/material3/tokens/SliderTokens;->FocusStopColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 47
    sput-object v5, Landroidx/compose/material3/tokens/SliderTokens;->HandleColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 85
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 48
    sput v1, Landroidx/compose/material3/tokens/SliderTokens;->HandleHeight:F

    .line 49
    sput-object v3, Landroidx/compose/material3/tokens/SliderTokens;->HandleShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    .line 86
    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 50
    sput v1, Landroidx/compose/material3/tokens/SliderTokens;->HandleWidth:F

    .line 51
    sput-object v5, Landroidx/compose/material3/tokens/SliderTokens;->HoverHandleColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 87
    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 52
    sput v1, Landroidx/compose/material3/tokens/SliderTokens;->HoverHandleWidth:F

    .line 53
    sput-object v5, Landroidx/compose/material3/tokens/SliderTokens;->HoverStopColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 54
    sput v0, Landroidx/compose/material3/tokens/SliderTokens;->InactiveContainerOpacity:F

    .line 55
    sput-object v8, Landroidx/compose/material3/tokens/SliderTokens;->InactiveTrackColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 88
    invoke-static {v6}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 56
    sput v0, Landroidx/compose/material3/tokens/SliderTokens;->InactiveTrackHeight:F

    .line 57
    sput-object v3, Landroidx/compose/material3/tokens/SliderTokens;->InactiveTrackShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    .line 58
    sput-object v5, Landroidx/compose/material3/tokens/SliderTokens;->LabelContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 59
    sget-object v0, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->InverseOnSurface:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v0, Landroidx/compose/material3/tokens/SliderTokens;->LabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 60
    sput-object v5, Landroidx/compose/material3/tokens/SliderTokens;->PressedActiveTrackColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 61
    sput-object v5, Landroidx/compose/material3/tokens/SliderTokens;->PressedHandleColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 89
    invoke-static {v7}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 62
    sput v1, Landroidx/compose/material3/tokens/SliderTokens;->PressedHandleWidth:F

    .line 63
    sput-object v8, Landroidx/compose/material3/tokens/SliderTokens;->PressedInactiveTrackColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 64
    sput-object v5, Landroidx/compose/material3/tokens/SliderTokens;->PressedStopColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 65
    sput-object v5, Landroidx/compose/material3/tokens/SliderTokens;->SliderActiveHandleColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 66
    sput-object v8, Landroidx/compose/material3/tokens/SliderTokens;->StopIndicatorColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 67
    sput-object v8, Landroidx/compose/material3/tokens/SliderTokens;->StopIndicatorColorSelected:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 68
    sput-object v3, Landroidx/compose/material3/tokens/SliderTokens;->StopIndicatorShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    .line 90
    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 69
    sput v1, Landroidx/compose/material3/tokens/SliderTokens;->StopIndicatorSize:F

    .line 91
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 70
    sput v1, Landroidx/compose/material3/tokens/SliderTokens;->StopIndicatorTrailingSpace:F

    const-wide/high16 v1, 0x4028000000000000L    # 12.0

    double-to-float v1, v1

    .line 92
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 71
    sput v1, Landroidx/compose/material3/tokens/SliderTokens;->ValueIndicatorActiveBottomSpace:F

    .line 72
    sget-object v1, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->InverseSurface:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v1, Landroidx/compose/material3/tokens/SliderTokens;->ValueIndicatorContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 73
    sput-object v0, Landroidx/compose/material3/tokens/SliderTokens;->ValueIndicatorLabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 74
    sget-object v0, Landroidx/compose/material3/tokens/TypographyKeyTokens;->LabelLarge:Landroidx/compose/material3/tokens/TypographyKeyTokens;

    sput-object v0, Landroidx/compose/material3/tokens/SliderTokens;->ValueIndicatorLabelTextFont:Landroidx/compose/material3/tokens/TypographyKeyTokens;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getActiveHandleLeadingSpace-D9Ej5fM()F
    .locals 0

    .line 26
    sget p0, Landroidx/compose/material3/tokens/SliderTokens;->ActiveHandleLeadingSpace:F

    return p0
.end method

.method public final getActiveTrackColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;
    .locals 0

    .line 31
    sget-object p0, Landroidx/compose/material3/tokens/SliderTokens;->ActiveTrackColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-object p0
.end method

.method public final getDisabledActiveTrackColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;
    .locals 0

    .line 35
    sget-object p0, Landroidx/compose/material3/tokens/SliderTokens;->DisabledActiveTrackColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-object p0
.end method

.method public final getDisabledActiveTrackOpacity()F
    .locals 0

    .line 36
    sget p0, Landroidx/compose/material3/tokens/SliderTokens;->DisabledActiveTrackOpacity:F

    return p0
.end method

.method public final getDisabledHandleColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;
    .locals 0

    .line 37
    sget-object p0, Landroidx/compose/material3/tokens/SliderTokens;->DisabledHandleColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-object p0
.end method

.method public final getDisabledHandleOpacity()F
    .locals 0

    .line 38
    sget p0, Landroidx/compose/material3/tokens/SliderTokens;->DisabledHandleOpacity:F

    return p0
.end method

.method public final getDisabledInactiveTrackColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;
    .locals 0

    .line 40
    sget-object p0, Landroidx/compose/material3/tokens/SliderTokens;->DisabledInactiveTrackColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-object p0
.end method

.method public final getDisabledInactiveTrackOpacity()F
    .locals 0

    .line 41
    sget p0, Landroidx/compose/material3/tokens/SliderTokens;->DisabledInactiveTrackOpacity:F

    return p0
.end method

.method public final getHandleColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;
    .locals 0

    .line 47
    sget-object p0, Landroidx/compose/material3/tokens/SliderTokens;->HandleColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-object p0
.end method

.method public final getHandleHeight-D9Ej5fM()F
    .locals 0

    .line 48
    sget p0, Landroidx/compose/material3/tokens/SliderTokens;->HandleHeight:F

    return p0
.end method

.method public final getHandleShape()Landroidx/compose/material3/tokens/ShapeKeyTokens;
    .locals 0

    .line 49
    sget-object p0, Landroidx/compose/material3/tokens/SliderTokens;->HandleShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    return-object p0
.end method

.method public final getHandleWidth-D9Ej5fM()F
    .locals 0

    .line 50
    sget p0, Landroidx/compose/material3/tokens/SliderTokens;->HandleWidth:F

    return p0
.end method

.method public final getInactiveTrackColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;
    .locals 0

    .line 55
    sget-object p0, Landroidx/compose/material3/tokens/SliderTokens;->InactiveTrackColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-object p0
.end method

.method public final getInactiveTrackHeight-D9Ej5fM()F
    .locals 0

    .line 56
    sget p0, Landroidx/compose/material3/tokens/SliderTokens;->InactiveTrackHeight:F

    return p0
.end method

.method public final getStopIndicatorSize-D9Ej5fM()F
    .locals 0

    .line 69
    sget p0, Landroidx/compose/material3/tokens/SliderTokens;->StopIndicatorSize:F

    return p0
.end method
