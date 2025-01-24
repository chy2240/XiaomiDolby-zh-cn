.class public final Landroidx/compose/material3/tokens/SmallIconButtonTokens;
.super Ljava/lang/Object;
.source "SmallIconButtonTokens.kt"


# static fields
.field private static final ContainerHeight:F

.field private static final ContainerShapeRound:Landroidx/compose/material3/tokens/ShapeKeyTokens;

.field private static final ContainerShapeSquare:Landroidx/compose/material3/tokens/ShapeKeyTokens;

.field public static final INSTANCE:Landroidx/compose/material3/tokens/SmallIconButtonTokens;

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

    new-instance v0, Landroidx/compose/material3/tokens/SmallIconButtonTokens;

    invoke-direct {v0}, Landroidx/compose/material3/tokens/SmallIconButtonTokens;-><init>()V

    sput-object v0, Landroidx/compose/material3/tokens/SmallIconButtonTokens;->INSTANCE:Landroidx/compose/material3/tokens/SmallIconButtonTokens;

    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    double-to-float v0, v0

    .line 40
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 24
    sput v0, Landroidx/compose/material3/tokens/SmallIconButtonTokens;->ContainerHeight:F

    .line 25
    sget-object v0, Landroidx/compose/material3/tokens/ShapeKeyTokens;->CornerFull:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    sput-object v0, Landroidx/compose/material3/tokens/SmallIconButtonTokens;->ContainerShapeRound:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    .line 26
    sget-object v1, Landroidx/compose/material3/tokens/ShapeKeyTokens;->CornerMedium:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    sput-object v1, Landroidx/compose/material3/tokens/SmallIconButtonTokens;->ContainerShapeSquare:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    const-wide/high16 v2, 0x4038000000000000L    # 24.0

    double-to-float v2, v2

    .line 41
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    .line 27
    sput v2, Landroidx/compose/material3/tokens/SmallIconButtonTokens;->IconSize:F

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    double-to-float v2, v2

    .line 42
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 28
    sput v3, Landroidx/compose/material3/tokens/SmallIconButtonTokens;->NarrowLeadingSpace:F

    .line 43
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    .line 29
    sput v2, Landroidx/compose/material3/tokens/SmallIconButtonTokens;->NarrowTrailingSpace:F

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    double-to-float v2, v2

    .line 44
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    .line 30
    sput v2, Landroidx/compose/material3/tokens/SmallIconButtonTokens;->OutlinedOutlineWidth:F

    .line 31
    sget-object v2, Landroidx/compose/material3/tokens/ShapeKeyTokens;->CornerSmall:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    sput-object v2, Landroidx/compose/material3/tokens/SmallIconButtonTokens;->PressedContainerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    .line 32
    sput-object v1, Landroidx/compose/material3/tokens/SmallIconButtonTokens;->SelectedContainerShapeRound:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    .line 33
    sput-object v0, Landroidx/compose/material3/tokens/SmallIconButtonTokens;->SelectedContainerShapeSquare:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    const-wide/high16 v0, 0x4020000000000000L    # 8.0

    double-to-float v0, v0

    .line 45
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 34
    sput v1, Landroidx/compose/material3/tokens/SmallIconButtonTokens;->UniformLeadingSpace:F

    .line 46
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 35
    sput v0, Landroidx/compose/material3/tokens/SmallIconButtonTokens;->UniformTrailingSpace:F

    const-wide/high16 v0, 0x402c000000000000L    # 14.0

    double-to-float v0, v0

    .line 47
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 36
    sput v1, Landroidx/compose/material3/tokens/SmallIconButtonTokens;->WideLeadingSpace:F

    .line 48
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 37
    sput v0, Landroidx/compose/material3/tokens/SmallIconButtonTokens;->WideTrailingSpace:F

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

    .line 24
    sget p0, Landroidx/compose/material3/tokens/SmallIconButtonTokens;->ContainerHeight:F

    return p0
.end method

.method public final getContainerShapeRound()Landroidx/compose/material3/tokens/ShapeKeyTokens;
    .locals 0

    .line 25
    sget-object p0, Landroidx/compose/material3/tokens/SmallIconButtonTokens;->ContainerShapeRound:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    return-object p0
.end method

.method public final getIconSize-D9Ej5fM()F
    .locals 0

    .line 27
    sget p0, Landroidx/compose/material3/tokens/SmallIconButtonTokens;->IconSize:F

    return p0
.end method

.method public final getNarrowLeadingSpace-D9Ej5fM()F
    .locals 0

    .line 28
    sget p0, Landroidx/compose/material3/tokens/SmallIconButtonTokens;->NarrowLeadingSpace:F

    return p0
.end method

.method public final getNarrowTrailingSpace-D9Ej5fM()F
    .locals 0

    .line 29
    sget p0, Landroidx/compose/material3/tokens/SmallIconButtonTokens;->NarrowTrailingSpace:F

    return p0
.end method

.method public final getUniformLeadingSpace-D9Ej5fM()F
    .locals 0

    .line 34
    sget p0, Landroidx/compose/material3/tokens/SmallIconButtonTokens;->UniformLeadingSpace:F

    return p0
.end method

.method public final getWideLeadingSpace-D9Ej5fM()F
    .locals 0

    .line 36
    sget p0, Landroidx/compose/material3/tokens/SmallIconButtonTokens;->WideLeadingSpace:F

    return p0
.end method

.method public final getWideTrailingSpace-D9Ej5fM()F
    .locals 0

    .line 37
    sget p0, Landroidx/compose/material3/tokens/SmallIconButtonTokens;->WideTrailingSpace:F

    return p0
.end method
