.class public final Landroidx/compose/material3/tokens/MotionTokens;
.super Ljava/lang/Object;
.source "MotionTokens.kt"


# static fields
.field private static final EasingEmphasizedAccelerateCubicBezier:Landroidx/compose/animation/core/CubicBezierEasing;

.field private static final EasingEmphasizedCubicBezier:Landroidx/compose/animation/core/CubicBezierEasing;

.field private static final EasingEmphasizedDecelerateCubicBezier:Landroidx/compose/animation/core/CubicBezierEasing;

.field private static final EasingLegacyAccelerateCubicBezier:Landroidx/compose/animation/core/CubicBezierEasing;

.field private static final EasingLegacyCubicBezier:Landroidx/compose/animation/core/CubicBezierEasing;

.field private static final EasingLegacyDecelerateCubicBezier:Landroidx/compose/animation/core/CubicBezierEasing;

.field private static final EasingLinearCubicBezier:Landroidx/compose/animation/core/CubicBezierEasing;

.field private static final EasingStandardAccelerateCubicBezier:Landroidx/compose/animation/core/CubicBezierEasing;

.field private static final EasingStandardCubicBezier:Landroidx/compose/animation/core/CubicBezierEasing;

.field private static final EasingStandardDecelerateCubicBezier:Landroidx/compose/animation/core/CubicBezierEasing;

.field public static final INSTANCE:Landroidx/compose/material3/tokens/MotionTokens;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Landroidx/compose/material3/tokens/MotionTokens;

    invoke-direct {v0}, Landroidx/compose/material3/tokens/MotionTokens;-><init>()V

    sput-object v0, Landroidx/compose/material3/tokens/MotionTokens;->INSTANCE:Landroidx/compose/material3/tokens/MotionTokens;

    .line 40
    new-instance v0, Landroidx/compose/animation/core/CubicBezierEasing;

    const v1, 0x3e4ccccd    # 0.2f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v2, v3}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFFF)V

    sput-object v0, Landroidx/compose/material3/tokens/MotionTokens;->EasingEmphasizedCubicBezier:Landroidx/compose/animation/core/CubicBezierEasing;

    .line 41
    new-instance v0, Landroidx/compose/animation/core/CubicBezierEasing;

    const v4, 0x3f4ccccd    # 0.8f

    const v5, 0x3e19999a    # 0.15f

    const v6, 0x3e99999a    # 0.3f

    invoke-direct {v0, v6, v2, v4, v5}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFFF)V

    sput-object v0, Landroidx/compose/material3/tokens/MotionTokens;->EasingEmphasizedAccelerateCubicBezier:Landroidx/compose/animation/core/CubicBezierEasing;

    .line 42
    new-instance v0, Landroidx/compose/animation/core/CubicBezierEasing;

    const v4, 0x3f333333    # 0.7f

    const v5, 0x3dcccccd    # 0.1f

    const v7, 0x3d4ccccd    # 0.05f

    invoke-direct {v0, v7, v4, v5, v3}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFFF)V

    sput-object v0, Landroidx/compose/material3/tokens/MotionTokens;->EasingEmphasizedDecelerateCubicBezier:Landroidx/compose/animation/core/CubicBezierEasing;

    .line 43
    new-instance v0, Landroidx/compose/animation/core/CubicBezierEasing;

    const v4, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v4, v2, v1, v3}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFFF)V

    sput-object v0, Landroidx/compose/material3/tokens/MotionTokens;->EasingLegacyCubicBezier:Landroidx/compose/animation/core/CubicBezierEasing;

    .line 44
    new-instance v0, Landroidx/compose/animation/core/CubicBezierEasing;

    invoke-direct {v0, v4, v2, v3, v3}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFFF)V

    sput-object v0, Landroidx/compose/material3/tokens/MotionTokens;->EasingLegacyAccelerateCubicBezier:Landroidx/compose/animation/core/CubicBezierEasing;

    .line 45
    new-instance v0, Landroidx/compose/animation/core/CubicBezierEasing;

    invoke-direct {v0, v2, v2, v1, v3}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFFF)V

    sput-object v0, Landroidx/compose/material3/tokens/MotionTokens;->EasingLegacyDecelerateCubicBezier:Landroidx/compose/animation/core/CubicBezierEasing;

    .line 46
    new-instance v0, Landroidx/compose/animation/core/CubicBezierEasing;

    invoke-direct {v0, v2, v2, v3, v3}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFFF)V

    sput-object v0, Landroidx/compose/material3/tokens/MotionTokens;->EasingLinearCubicBezier:Landroidx/compose/animation/core/CubicBezierEasing;

    .line 47
    new-instance v0, Landroidx/compose/animation/core/CubicBezierEasing;

    invoke-direct {v0, v1, v2, v2, v3}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFFF)V

    sput-object v0, Landroidx/compose/material3/tokens/MotionTokens;->EasingStandardCubicBezier:Landroidx/compose/animation/core/CubicBezierEasing;

    .line 48
    new-instance v0, Landroidx/compose/animation/core/CubicBezierEasing;

    invoke-direct {v0, v6, v2, v3, v3}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFFF)V

    sput-object v0, Landroidx/compose/material3/tokens/MotionTokens;->EasingStandardAccelerateCubicBezier:Landroidx/compose/animation/core/CubicBezierEasing;

    .line 49
    new-instance v0, Landroidx/compose/animation/core/CubicBezierEasing;

    invoke-direct {v0, v2, v2, v2, v3}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFFF)V

    sput-object v0, Landroidx/compose/material3/tokens/MotionTokens;->EasingStandardDecelerateCubicBezier:Landroidx/compose/animation/core/CubicBezierEasing;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getEasingEmphasizedAccelerateCubicBezier()Landroidx/compose/animation/core/CubicBezierEasing;
    .locals 0

    .line 41
    sget-object p0, Landroidx/compose/material3/tokens/MotionTokens;->EasingEmphasizedAccelerateCubicBezier:Landroidx/compose/animation/core/CubicBezierEasing;

    return-object p0
.end method
