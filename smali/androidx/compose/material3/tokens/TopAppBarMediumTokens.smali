.class public final Landroidx/compose/material3/tokens/TopAppBarMediumTokens;
.super Ljava/lang/Object;
.source "TopAppBarMediumTokens.kt"


# static fields
.field private static final ContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final ContainerElevation:F

.field private static final ContainerHeight:F

.field private static final ContainerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

.field private static final ContainerSurfaceTintLayerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final HeadlineColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final HeadlineFont:Landroidx/compose/material3/tokens/TypographyKeyTokens;

.field public static final INSTANCE:Landroidx/compose/material3/tokens/TopAppBarMediumTokens;

.field private static final LeadingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final LeadingIconSize:F

.field private static final TrailingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final TrailingIconSize:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/material3/tokens/TopAppBarMediumTokens;

    invoke-direct {v0}, Landroidx/compose/material3/tokens/TopAppBarMediumTokens;-><init>()V

    sput-object v0, Landroidx/compose/material3/tokens/TopAppBarMediumTokens;->INSTANCE:Landroidx/compose/material3/tokens/TopAppBarMediumTokens;

    .line 24
    sget-object v0, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->Surface:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v0, Landroidx/compose/material3/tokens/TopAppBarMediumTokens;->ContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 25
    sget-object v0, Landroidx/compose/material3/tokens/ElevationTokens;->INSTANCE:Landroidx/compose/material3/tokens/ElevationTokens;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/ElevationTokens;->getLevel0-D9Ej5fM()F

    move-result v0

    sput v0, Landroidx/compose/material3/tokens/TopAppBarMediumTokens;->ContainerElevation:F

    const-wide/high16 v0, 0x405c000000000000L    # 112.0

    double-to-float v0, v0

    .line 37
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 26
    sput v0, Landroidx/compose/material3/tokens/TopAppBarMediumTokens;->ContainerHeight:F

    .line 27
    sget-object v0, Landroidx/compose/material3/tokens/ShapeKeyTokens;->CornerNone:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    sput-object v0, Landroidx/compose/material3/tokens/TopAppBarMediumTokens;->ContainerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    .line 28
    sget-object v0, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->SurfaceTint:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v0, Landroidx/compose/material3/tokens/TopAppBarMediumTokens;->ContainerSurfaceTintLayerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 29
    sget-object v0, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->OnSurface:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v0, Landroidx/compose/material3/tokens/TopAppBarMediumTokens;->HeadlineColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 30
    sget-object v1, Landroidx/compose/material3/tokens/TypographyKeyTokens;->HeadlineSmall:Landroidx/compose/material3/tokens/TypographyKeyTokens;

    sput-object v1, Landroidx/compose/material3/tokens/TopAppBarMediumTokens;->HeadlineFont:Landroidx/compose/material3/tokens/TypographyKeyTokens;

    .line 31
    sput-object v0, Landroidx/compose/material3/tokens/TopAppBarMediumTokens;->LeadingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    const-wide/high16 v0, 0x4038000000000000L    # 24.0

    double-to-float v0, v0

    .line 38
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 32
    sput v1, Landroidx/compose/material3/tokens/TopAppBarMediumTokens;->LeadingIconSize:F

    .line 33
    sget-object v1, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->OnSurfaceVariant:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v1, Landroidx/compose/material3/tokens/TopAppBarMediumTokens;->TrailingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 39
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 34
    sput v0, Landroidx/compose/material3/tokens/TopAppBarMediumTokens;->TrailingIconSize:F

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getContainerHeight-D9Ej5fM()F
    .locals 0

    .line 26
    sget p0, Landroidx/compose/material3/tokens/TopAppBarMediumTokens;->ContainerHeight:F

    return p0
.end method
