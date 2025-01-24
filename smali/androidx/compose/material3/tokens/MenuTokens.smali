.class public final Landroidx/compose/material3/tokens/MenuTokens;
.super Ljava/lang/Object;
.source "MenuTokens.kt"


# static fields
.field private static final ContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final ContainerElevation:F

.field private static final ContainerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

.field private static final FocusIndicatorColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field public static final INSTANCE:Landroidx/compose/material3/tokens/MenuTokens;

.field private static final ListItemSelectedContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final ListItemSelectedLabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final ListItemSelectedLeadingTrailingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final MenuListItemLeadingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/material3/tokens/MenuTokens;

    invoke-direct {v0}, Landroidx/compose/material3/tokens/MenuTokens;-><init>()V

    sput-object v0, Landroidx/compose/material3/tokens/MenuTokens;->INSTANCE:Landroidx/compose/material3/tokens/MenuTokens;

    .line 22
    sget-object v0, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->SurfaceContainer:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v0, Landroidx/compose/material3/tokens/MenuTokens;->ContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 23
    sget-object v0, Landroidx/compose/material3/tokens/ElevationTokens;->INSTANCE:Landroidx/compose/material3/tokens/ElevationTokens;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/ElevationTokens;->getLevel2-D9Ej5fM()F

    move-result v0

    sput v0, Landroidx/compose/material3/tokens/MenuTokens;->ContainerElevation:F

    .line 24
    sget-object v0, Landroidx/compose/material3/tokens/ShapeKeyTokens;->CornerExtraSmall:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    sput-object v0, Landroidx/compose/material3/tokens/MenuTokens;->ContainerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    .line 25
    sget-object v0, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->Secondary:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v0, Landroidx/compose/material3/tokens/MenuTokens;->FocusIndicatorColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 26
    sget-object v0, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->SecondaryContainer:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v0, Landroidx/compose/material3/tokens/MenuTokens;->ListItemSelectedContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 27
    sget-object v0, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->OnSecondaryContainer:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v0, Landroidx/compose/material3/tokens/MenuTokens;->ListItemSelectedLabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 28
    sput-object v0, Landroidx/compose/material3/tokens/MenuTokens;->ListItemSelectedLeadingTrailingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 29
    sput-object v0, Landroidx/compose/material3/tokens/MenuTokens;->MenuListItemLeadingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getContainerColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;
    .locals 0

    .line 22
    sget-object p0, Landroidx/compose/material3/tokens/MenuTokens;->ContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-object p0
.end method

.method public final getContainerElevation-D9Ej5fM()F
    .locals 0

    .line 23
    sget p0, Landroidx/compose/material3/tokens/MenuTokens;->ContainerElevation:F

    return p0
.end method

.method public final getContainerShape()Landroidx/compose/material3/tokens/ShapeKeyTokens;
    .locals 0

    .line 24
    sget-object p0, Landroidx/compose/material3/tokens/MenuTokens;->ContainerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    return-object p0
.end method
