.class public final Landroidx/compose/material3/tokens/ButtonSmallTokens;
.super Ljava/lang/Object;
.source "ButtonSmallTokens.kt"


# static fields
.field private static final ContainerHeight:F

.field private static final ContainerShapeRound:Landroidx/compose/material3/tokens/ShapeKeyTokens;

.field private static final ContainerShapeSquare:Landroidx/compose/material3/tokens/ShapeKeyTokens;

.field public static final INSTANCE:Landroidx/compose/material3/tokens/ButtonSmallTokens;

.field private static final IconLabelSpace:F

.field private static final IconSize:F

.field private static final LeadingSpace:F

.field private static final OutlinedOutlineWidth:F

.field private static final PressedContainerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

.field private static final SelectedContainerShapeRound:Landroidx/compose/material3/tokens/ShapeKeyTokens;

.field private static final SelectedContainerShapeSquare:Landroidx/compose/material3/tokens/ShapeKeyTokens;

.field private static final TrailingSpace:F


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroidx/compose/material3/tokens/ButtonSmallTokens;

    invoke-direct {v0}, Landroidx/compose/material3/tokens/ButtonSmallTokens;-><init>()V

    sput-object v0, Landroidx/compose/material3/tokens/ButtonSmallTokens;->INSTANCE:Landroidx/compose/material3/tokens/ButtonSmallTokens;

    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    double-to-float v0, v0

    .line 37
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 24
    sput v0, Landroidx/compose/material3/tokens/ButtonSmallTokens;->ContainerHeight:F

    .line 25
    sget-object v0, Landroidx/compose/material3/tokens/ShapeKeyTokens;->CornerFull:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    sput-object v0, Landroidx/compose/material3/tokens/ButtonSmallTokens;->ContainerShapeRound:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    .line 26
    sget-object v1, Landroidx/compose/material3/tokens/ShapeKeyTokens;->CornerMedium:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    sput-object v1, Landroidx/compose/material3/tokens/ButtonSmallTokens;->ContainerShapeSquare:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    double-to-float v2, v2

    .line 38
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    .line 27
    sput v2, Landroidx/compose/material3/tokens/ButtonSmallTokens;->IconLabelSpace:F

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    double-to-float v2, v2

    .line 39
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    .line 28
    sput v2, Landroidx/compose/material3/tokens/ButtonSmallTokens;->IconSize:F

    const-wide/high16 v2, 0x4030000000000000L    # 16.0

    double-to-float v2, v2

    .line 40
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 29
    sput v3, Landroidx/compose/material3/tokens/ButtonSmallTokens;->LeadingSpace:F

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    double-to-float v3, v3

    .line 41
    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 30
    sput v3, Landroidx/compose/material3/tokens/ButtonSmallTokens;->OutlinedOutlineWidth:F

    .line 31
    sget-object v3, Landroidx/compose/material3/tokens/ShapeKeyTokens;->CornerSmall:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    sput-object v3, Landroidx/compose/material3/tokens/ButtonSmallTokens;->PressedContainerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    .line 32
    sput-object v0, Landroidx/compose/material3/tokens/ButtonSmallTokens;->SelectedContainerShapeRound:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    .line 33
    sput-object v1, Landroidx/compose/material3/tokens/ButtonSmallTokens;->SelectedContainerShapeSquare:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    .line 42
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 34
    sput v0, Landroidx/compose/material3/tokens/ButtonSmallTokens;->TrailingSpace:F

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
    sget p0, Landroidx/compose/material3/tokens/ButtonSmallTokens;->ContainerHeight:F

    return p0
.end method

.method public final getContainerShapeRound()Landroidx/compose/material3/tokens/ShapeKeyTokens;
    .locals 0

    .line 25
    sget-object p0, Landroidx/compose/material3/tokens/ButtonSmallTokens;->ContainerShapeRound:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    return-object p0
.end method

.method public final getLeadingSpace-D9Ej5fM()F
    .locals 0

    .line 29
    sget p0, Landroidx/compose/material3/tokens/ButtonSmallTokens;->LeadingSpace:F

    return p0
.end method

.method public final getTrailingSpace-D9Ej5fM()F
    .locals 0

    .line 34
    sget p0, Landroidx/compose/material3/tokens/ButtonSmallTokens;->TrailingSpace:F

    return p0
.end method
