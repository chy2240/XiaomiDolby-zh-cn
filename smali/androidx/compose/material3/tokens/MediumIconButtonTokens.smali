.class public final Landroidx/compose/material3/tokens/MediumIconButtonTokens;
.super Ljava/lang/Object;
.source "MediumIconButtonTokens.kt"


# static fields
.field private static final ContainerHeight:F

.field private static final ContainerShapeRound:Landroidx/compose/material3/tokens/ShapeKeyTokens;

.field private static final ContainerShapeSquare:Landroidx/compose/material3/tokens/ShapeKeyTokens;

.field public static final INSTANCE:Landroidx/compose/material3/tokens/MediumIconButtonTokens;

.field private static final IconSize:F

.field private static final NarrowLeadingSpace:F

.field private static final NarrowTrailingSpace:F

.field private static final OutlinedOutlineWidth:F

.field private static final PressedContainerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

.field private static final SelectedContainerShapeRound:Landroidx/compose/material3/tokens/ShapeKeyTokens;

.field private static final SelectedContainerShapeSquare:Landroidx/compose/material3/tokens/ShapeKeyTokens;

.field private static final UniformLeadingSpace:F

.field private static final UniformTrailingSpace:F

.field private static final WideLeadingSpace:F

.field private static final WideTrailingSpace:F


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroidx/compose/material3/tokens/MediumIconButtonTokens;

    invoke-direct {v0}, Landroidx/compose/material3/tokens/MediumIconButtonTokens;-><init>()V

    sput-object v0, Landroidx/compose/material3/tokens/MediumIconButtonTokens;->INSTANCE:Landroidx/compose/material3/tokens/MediumIconButtonTokens;

    const-wide/high16 v0, 0x404c000000000000L    # 56.0

    double-to-float v0, v0

    .line 40
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 24
    sput v0, Landroidx/compose/material3/tokens/MediumIconButtonTokens;->ContainerHeight:F

    .line 25
    sget-object v0, Landroidx/compose/material3/tokens/ShapeKeyTokens;->CornerFull:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    sput-object v0, Landroidx/compose/material3/tokens/MediumIconButtonTokens;->ContainerShapeRound:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    .line 26
    sget-object v1, Landroidx/compose/material3/tokens/ShapeKeyTokens;->CornerLarge:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    sput-object v1, Landroidx/compose/material3/tokens/MediumIconButtonTokens;->ContainerShapeSquare:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    const-wide/high16 v2, 0x4038000000000000L    # 24.0

    double-to-float v2, v2

    .line 41
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 27
    sput v3, Landroidx/compose/material3/tokens/MediumIconButtonTokens;->IconSize:F

    const-wide/high16 v3, 0x4028000000000000L    # 12.0

    double-to-float v3, v3

    .line 42
    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 28
    sput v4, Landroidx/compose/material3/tokens/MediumIconButtonTokens;->NarrowLeadingSpace:F

    .line 43
    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 29
    sput v3, Landroidx/compose/material3/tokens/MediumIconButtonTokens;->NarrowTrailingSpace:F

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    double-to-float v3, v3

    .line 44
    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 30
    sput v3, Landroidx/compose/material3/tokens/MediumIconButtonTokens;->OutlinedOutlineWidth:F

    .line 31
    sget-object v3, Landroidx/compose/material3/tokens/ShapeKeyTokens;->CornerMedium:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    sput-object v3, Landroidx/compose/material3/tokens/MediumIconButtonTokens;->PressedContainerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    .line 32
    sput-object v1, Landroidx/compose/material3/tokens/MediumIconButtonTokens;->SelectedContainerShapeRound:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    .line 33
    sput-object v0, Landroidx/compose/material3/tokens/MediumIconButtonTokens;->SelectedContainerShapeSquare:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    const-wide/high16 v0, 0x4030000000000000L    # 16.0

    double-to-float v0, v0

    .line 45
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 34
    sput v1, Landroidx/compose/material3/tokens/MediumIconButtonTokens;->UniformLeadingSpace:F

    .line 46
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 35
    sput v0, Landroidx/compose/material3/tokens/MediumIconButtonTokens;->UniformTrailingSpace:F

    .line 47
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 36
    sput v0, Landroidx/compose/material3/tokens/MediumIconButtonTokens;->WideLeadingSpace:F

    .line 48
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 37
    sput v0, Landroidx/compose/material3/tokens/MediumIconButtonTokens;->WideTrailingSpace:F

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getIconSize-D9Ej5fM()F
    .locals 0

    .line 27
    sget p0, Landroidx/compose/material3/tokens/MediumIconButtonTokens;->IconSize:F

    return p0
.end method
