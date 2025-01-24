.class public final Landroidx/compose/material3/tokens/XSmallIconButtonTokens;
.super Ljava/lang/Object;
.source "XSmallIconButtonTokens.kt"


# static fields
.field private static final ContainerHeight:F

.field private static final ContainerShapeRound:Landroidx/compose/material3/tokens/ShapeKeyTokens;

.field private static final ContainerShapeSquare:Landroidx/compose/material3/tokens/ShapeKeyTokens;

.field public static final INSTANCE:Landroidx/compose/material3/tokens/XSmallIconButtonTokens;

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
    .locals 4

    new-instance v0, Landroidx/compose/material3/tokens/XSmallIconButtonTokens;

    invoke-direct {v0}, Landroidx/compose/material3/tokens/XSmallIconButtonTokens;-><init>()V

    sput-object v0, Landroidx/compose/material3/tokens/XSmallIconButtonTokens;->INSTANCE:Landroidx/compose/material3/tokens/XSmallIconButtonTokens;

    const-wide/high16 v0, 0x4040000000000000L    # 32.0

    double-to-float v0, v0

    .line 40
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 24
    sput v0, Landroidx/compose/material3/tokens/XSmallIconButtonTokens;->ContainerHeight:F

    .line 25
    sget-object v0, Landroidx/compose/material3/tokens/ShapeKeyTokens;->CornerFull:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    sput-object v0, Landroidx/compose/material3/tokens/XSmallIconButtonTokens;->ContainerShapeRound:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    .line 26
    sget-object v1, Landroidx/compose/material3/tokens/ShapeKeyTokens;->CornerMedium:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    sput-object v1, Landroidx/compose/material3/tokens/XSmallIconButtonTokens;->ContainerShapeSquare:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    double-to-float v2, v2

    .line 41
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    .line 27
    sput v2, Landroidx/compose/material3/tokens/XSmallIconButtonTokens;->IconSize:F

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    double-to-float v2, v2

    .line 42
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 28
    sput v3, Landroidx/compose/material3/tokens/XSmallIconButtonTokens;->NarrowLeadingSpace:F

    .line 43
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    .line 29
    sput v2, Landroidx/compose/material3/tokens/XSmallIconButtonTokens;->NarrowTrailingSpace:F

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    double-to-float v2, v2

    .line 44
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    .line 30
    sput v2, Landroidx/compose/material3/tokens/XSmallIconButtonTokens;->OutlinedOutlineWidth:F

    .line 31
    sget-object v2, Landroidx/compose/material3/tokens/ShapeKeyTokens;->CornerSmall:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    sput-object v2, Landroidx/compose/material3/tokens/XSmallIconButtonTokens;->PressedContainerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    .line 32
    sput-object v1, Landroidx/compose/material3/tokens/XSmallIconButtonTokens;->SelectedContainerShapeRound:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    .line 33
    sput-object v0, Landroidx/compose/material3/tokens/XSmallIconButtonTokens;->SelectedContainerShapeSquare:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    const-wide/high16 v0, 0x4018000000000000L    # 6.0

    double-to-float v0, v0

    .line 45
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 34
    sput v1, Landroidx/compose/material3/tokens/XSmallIconButtonTokens;->UniformLeadingSpace:F

    .line 46
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 35
    sput v0, Landroidx/compose/material3/tokens/XSmallIconButtonTokens;->UniformTrailingSpace:F

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    double-to-float v0, v0

    .line 47
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 36
    sput v1, Landroidx/compose/material3/tokens/XSmallIconButtonTokens;->WideLeadingSpace:F

    .line 48
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 37
    sput v0, Landroidx/compose/material3/tokens/XSmallIconButtonTokens;->WideTrailingSpace:F

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
    sget p0, Landroidx/compose/material3/tokens/XSmallIconButtonTokens;->IconSize:F

    return p0
.end method
