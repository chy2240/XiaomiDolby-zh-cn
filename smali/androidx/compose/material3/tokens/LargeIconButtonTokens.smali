.class public final Landroidx/compose/material3/tokens/LargeIconButtonTokens;
.super Ljava/lang/Object;
.source "LargeIconButtonTokens.kt"


# static fields
.field private static final ContainerHeight:F

.field private static final ContainerShapeRound:Landroidx/compose/material3/tokens/ShapeKeyTokens;

.field private static final ContainerShapeSquare:Landroidx/compose/material3/tokens/ShapeKeyTokens;

.field public static final INSTANCE:Landroidx/compose/material3/tokens/LargeIconButtonTokens;

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

    new-instance v0, Landroidx/compose/material3/tokens/LargeIconButtonTokens;

    invoke-direct {v0}, Landroidx/compose/material3/tokens/LargeIconButtonTokens;-><init>()V

    sput-object v0, Landroidx/compose/material3/tokens/LargeIconButtonTokens;->INSTANCE:Landroidx/compose/material3/tokens/LargeIconButtonTokens;

    const-wide/high16 v0, 0x4058000000000000L    # 96.0

    double-to-float v0, v0

    .line 40
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 24
    sput v0, Landroidx/compose/material3/tokens/LargeIconButtonTokens;->ContainerHeight:F

    .line 25
    sget-object v0, Landroidx/compose/material3/tokens/ShapeKeyTokens;->CornerFull:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    sput-object v0, Landroidx/compose/material3/tokens/LargeIconButtonTokens;->ContainerShapeRound:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    .line 26
    sget-object v1, Landroidx/compose/material3/tokens/ShapeKeyTokens;->CornerExtraLarge:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    sput-object v1, Landroidx/compose/material3/tokens/LargeIconButtonTokens;->ContainerShapeSquare:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    const-wide/high16 v2, 0x4040000000000000L    # 32.0

    double-to-float v2, v2

    .line 41
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 27
    sput v3, Landroidx/compose/material3/tokens/LargeIconButtonTokens;->IconSize:F

    const-wide/high16 v3, 0x4030000000000000L    # 16.0

    double-to-float v3, v3

    .line 42
    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 28
    sput v4, Landroidx/compose/material3/tokens/LargeIconButtonTokens;->NarrowLeadingSpace:F

    .line 43
    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 29
    sput v3, Landroidx/compose/material3/tokens/LargeIconButtonTokens;->NarrowTrailingSpace:F

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    double-to-float v3, v3

    .line 44
    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 30
    sput v3, Landroidx/compose/material3/tokens/LargeIconButtonTokens;->OutlinedOutlineWidth:F

    .line 31
    sget-object v3, Landroidx/compose/material3/tokens/ShapeKeyTokens;->CornerLarge:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    sput-object v3, Landroidx/compose/material3/tokens/LargeIconButtonTokens;->PressedContainerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    .line 32
    sput-object v1, Landroidx/compose/material3/tokens/LargeIconButtonTokens;->SelectedContainerShapeRound:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    .line 33
    sput-object v0, Landroidx/compose/material3/tokens/LargeIconButtonTokens;->SelectedContainerShapeSquare:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    .line 45
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 34
    sput v0, Landroidx/compose/material3/tokens/LargeIconButtonTokens;->UniformLeadingSpace:F

    .line 46
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 35
    sput v0, Landroidx/compose/material3/tokens/LargeIconButtonTokens;->UniformTrailingSpace:F

    const-wide/high16 v0, 0x4048000000000000L    # 48.0

    double-to-float v0, v0

    .line 47
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 36
    sput v1, Landroidx/compose/material3/tokens/LargeIconButtonTokens;->WideLeadingSpace:F

    .line 48
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 37
    sput v0, Landroidx/compose/material3/tokens/LargeIconButtonTokens;->WideTrailingSpace:F

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
    sget p0, Landroidx/compose/material3/tokens/LargeIconButtonTokens;->IconSize:F

    return p0
.end method
