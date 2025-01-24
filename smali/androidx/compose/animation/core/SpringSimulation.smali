.class public final Landroidx/compose/animation/core/SpringSimulation;
.super Ljava/lang/Object;
.source "SpringSimulation.kt"


# instance fields
.field private dampingRatio:F

.field private finalPosition:F

.field private naturalFreq:D


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(F)V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/animation/core/SpringSimulation;->finalPosition:F

    const-wide/high16 v0, 0x4049000000000000L    # 50.0

    .line 57
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/animation/core/SpringSimulation;->naturalFreq:D

    const/high16 p1, 0x3f800000    # 1.0f

    .line 76
    iput p1, p0, Landroidx/compose/animation/core/SpringSimulation;->dampingRatio:F

    return-void
.end method


# virtual methods
.method public final getDampingRatio()F
    .locals 0

    .line 76
    iget p0, p0, Landroidx/compose/animation/core/SpringSimulation;->dampingRatio:F

    return p0
.end method

.method public final getStiffness()F
    .locals 2

    .line 68
    iget-wide v0, p0, Landroidx/compose/animation/core/SpringSimulation;->naturalFreq:D

    mul-double/2addr v0, v0

    double-to-float p0, v0

    return p0
.end method

.method public final setDampingRatio(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 79
    const-string v0, "Damping ratio must be non-negative"

    invoke-static {v0}, Landroidx/compose/animation/core/PreconditionsKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 81
    :cond_0
    iput p1, p0, Landroidx/compose/animation/core/SpringSimulation;->dampingRatio:F

    return-void
.end method

.method public final setFinalPosition(F)V
    .locals 0

    .line 55
    iput p1, p0, Landroidx/compose/animation/core/SpringSimulation;->finalPosition:F

    return-void
.end method

.method public final setStiffness(F)V
    .locals 2

    .line 62
    invoke-virtual {p0}, Landroidx/compose/animation/core/SpringSimulation;->getStiffness()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 63
    const-string v0, "Spring stiffness constant must be positive."

    invoke-static {v0}, Landroidx/compose/animation/core/PreconditionsKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :cond_0
    float-to-double v0, p1

    .line 65
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/animation/core/SpringSimulation;->naturalFreq:D

    return-void
.end method

.method public final updateValues-IJZedt4$animation_core_release(FFJ)J
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 103
    iget v2, v0, Landroidx/compose/animation/core/SpringSimulation;->finalPosition:F

    sub-float v2, p1, v2

    move-wide/from16 v3, p3

    long-to-double v3, v3

    const-wide v5, 0x408f400000000000L    # 1000.0

    div-double/2addr v3, v5

    .line 105
    iget v5, v0, Landroidx/compose/animation/core/SpringSimulation;->dampingRatio:F

    float-to-double v6, v5

    float-to-double v8, v5

    mul-double/2addr v6, v8

    neg-float v8, v5

    float-to-double v8, v8

    .line 106
    iget-wide v10, v0, Landroidx/compose/animation/core/SpringSimulation;->naturalFreq:D

    mul-double/2addr v8, v10

    const/high16 v12, 0x3f800000    # 1.0f

    cmpl-float v13, v5, v12

    const/4 v14, 0x1

    if-lez v13, :cond_0

    int-to-double v12, v14

    sub-double/2addr v6, v12

    .line 113
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    mul-double/2addr v10, v5

    add-double v5, v8, v10

    sub-double/2addr v8, v10

    float-to-double v10, v2

    mul-double v12, v8, v10

    float-to-double v1, v1

    sub-double/2addr v12, v1

    sub-double v1, v8, v5

    div-double/2addr v12, v1

    sub-double/2addr v10, v12

    mul-double v1, v8, v3

    .line 121
    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v14

    mul-double/2addr v14, v10

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->exp(D)D

    move-result-wide v16

    mul-double v16, v16, v12

    add-double v14, v14, v16

    mul-double/2addr v10, v8

    .line 123
    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    mul-double/2addr v10, v1

    mul-double/2addr v12, v5

    .line 124
    invoke-static {v3, v4}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    mul-double/2addr v12, v1

    add-double/2addr v10, v12

    goto :goto_0

    :cond_0
    cmpg-float v5, v5, v12

    if-nez v5, :cond_1

    float-to-double v5, v1

    float-to-double v1, v2

    mul-double v7, v10, v1

    add-double/2addr v5, v7

    neg-double v7, v10

    mul-double/2addr v7, v3

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    .line 130
    invoke-static {v7, v8}, Ljava/lang/Math;->exp(D)D

    move-result-wide v3

    mul-double v14, v1, v3

    .line 132
    invoke-static {v7, v8}, Ljava/lang/Math;->exp(D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    iget-wide v3, v0, Landroidx/compose/animation/core/SpringSimulation;->naturalFreq:D

    neg-double v3, v3

    mul-double/2addr v1, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->exp(D)D

    move-result-wide v3

    mul-double/2addr v5, v3

    add-double v10, v1, v5

    goto :goto_0

    :cond_1
    int-to-double v12, v14

    sub-double v5, v12, v6

    .line 134
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    mul-double/2addr v10, v5

    div-double/2addr v12, v10

    neg-double v5, v8

    float-to-double v14, v2

    mul-double/2addr v5, v14

    float-to-double v1, v1

    add-double/2addr v5, v1

    mul-double/2addr v12, v5

    mul-double v1, v10, v3

    mul-double/2addr v3, v8

    .line 139
    invoke-static {v3, v4}, Ljava/lang/Math;->exp(D)D

    move-result-wide v5

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v16, v16, v14

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    mul-double v18, v18, v12

    add-double v16, v16, v18

    mul-double v5, v5, v16

    mul-double/2addr v8, v5

    .line 142
    invoke-static {v3, v4}, Ljava/lang/Math;->exp(D)D

    move-result-wide v3

    move-wide/from16 p1, v5

    neg-double v5, v10

    mul-double/2addr v5, v14

    .line 143
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v5, v14

    mul-double/2addr v10, v12

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    mul-double/2addr v10, v1

    add-double/2addr v5, v10

    mul-double/2addr v3, v5

    add-double v10, v8, v3

    move-wide/from16 v14, p1

    .line 146
    :goto_0
    iget v0, v0, Landroidx/compose/animation/core/SpringSimulation;->finalPosition:F

    float-to-double v0, v0

    add-double/2addr v14, v0

    double-to-float v0, v14

    double-to-float v1, v10

    .line 53
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v2, v0

    .line 54
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    const-wide v4, 0xffffffffL

    and-long/2addr v0, v4

    or-long/2addr v0, v2

    .line 38
    invoke-static {v0, v1}, Landroidx/compose/animation/core/Motion;->constructor-impl(J)J

    move-result-wide v0

    return-wide v0
.end method
