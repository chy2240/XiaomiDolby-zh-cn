.class public final Landroidx/compose/animation/core/CubicBezierEasing;
.super Ljava/lang/Object;
.source "Easing.kt"

# interfaces
.implements Landroidx/compose/animation/core/Easing;


# instance fields
.field private final a:F

.field private final b:F

.field private final c:F

.field private final d:F

.field private final max:F

.field private final min:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 6

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput p1, p0, Landroidx/compose/animation/core/CubicBezierEasing;->a:F

    .line 101
    iput p2, p0, Landroidx/compose/animation/core/CubicBezierEasing;->b:F

    .line 102
    iput p3, p0, Landroidx/compose/animation/core/CubicBezierEasing;->c:F

    .line 103
    iput p4, p0, Landroidx/compose/animation/core/CubicBezierEasing;->d:F

    .line 109
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Parameters to CubicBezierEasing cannot be NaN. Actual parameters are: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 35
    invoke-static {p1}, Landroidx/compose/animation/core/PreconditionsKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x5

    .line 112
    new-array v4, p1, [F

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v0, 0x0

    move v1, p2

    move v2, p4

    .line 113
    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/graphics/BezierKt;->computeCubicVerticalBounds(FFFF[FI)J

    move-result-wide p1

    const/16 p3, 0x20

    shr-long p3, p1, p3

    long-to-int p3, p3

    .line 22
    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p3

    .line 114
    iput p3, p0, Landroidx/compose/animation/core/CubicBezierEasing;->min:F

    const-wide p3, 0xffffffffL

    and-long/2addr p1, p3

    long-to-int p1, p1

    .line 22
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    .line 115
    iput p1, p0, Landroidx/compose/animation/core/CubicBezierEasing;->max:F

    return-void
.end method

.method private final throwNoSolution(F)V
    .locals 4

    .line 151
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The cubic curve with parameters ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/compose/animation/core/CubicBezierEasing;->a:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroidx/compose/animation/core/CubicBezierEasing;->b:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroidx/compose/animation/core/CubicBezierEasing;->c:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/compose/animation/core/CubicBezierEasing;->d:F

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ") has no solution at "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 151
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 157
    instance-of v0, p1, Landroidx/compose/animation/core/CubicBezierEasing;

    if-eqz v0, :cond_0

    .line 158
    iget v0, p0, Landroidx/compose/animation/core/CubicBezierEasing;->a:F

    check-cast p1, Landroidx/compose/animation/core/CubicBezierEasing;

    iget v1, p1, Landroidx/compose/animation/core/CubicBezierEasing;->a:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    .line 159
    iget v0, p0, Landroidx/compose/animation/core/CubicBezierEasing;->b:F

    iget v1, p1, Landroidx/compose/animation/core/CubicBezierEasing;->b:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    .line 160
    iget v0, p0, Landroidx/compose/animation/core/CubicBezierEasing;->c:F

    iget v1, p1, Landroidx/compose/animation/core/CubicBezierEasing;->c:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    .line 161
    iget p0, p0, Landroidx/compose/animation/core/CubicBezierEasing;->d:F

    iget p1, p1, Landroidx/compose/animation/core/CubicBezierEasing;->d:F

    cmpg-float p0, p0, p1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hashCode()I
    .locals 2

    .line 165
    iget v0, p0, Landroidx/compose/animation/core/CubicBezierEasing;->a:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/animation/core/CubicBezierEasing;->b:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/animation/core/CubicBezierEasing;->c:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Landroidx/compose/animation/core/CubicBezierEasing;->d:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CubicBezierEasing(a="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/animation/core/CubicBezierEasing;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", b="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/animation/core/CubicBezierEasing;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", c="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/animation/core/CubicBezierEasing;->c:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", d="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/compose/animation/core/CubicBezierEasing;->d:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public transform(F)F
    .locals 4

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, p1, v1

    if-gez v2, :cond_2

    sub-float/2addr v0, p1

    .line 131
    iget v2, p0, Landroidx/compose/animation/core/CubicBezierEasing;->a:F

    sub-float/2addr v2, p1

    .line 132
    iget v3, p0, Landroidx/compose/animation/core/CubicBezierEasing;->c:F

    sub-float/2addr v3, p1

    sub-float/2addr v1, p1

    .line 129
    invoke-static {v0, v2, v3, v1}, Landroidx/compose/ui/graphics/BezierKt;->findFirstCubicRoot(FFFF)F

    move-result v0

    .line 137
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    invoke-direct {p0, p1}, Landroidx/compose/animation/core/CubicBezierEasing;->throwNoSolution(F)V

    .line 144
    :cond_0
    iget p1, p0, Landroidx/compose/animation/core/CubicBezierEasing;->b:F

    iget v1, p0, Landroidx/compose/animation/core/CubicBezierEasing;->d:F

    invoke-static {p1, v1, v0}, Landroidx/compose/ui/graphics/BezierKt;->evaluateCubic(FFF)F

    move-result p1

    iget v0, p0, Landroidx/compose/animation/core/CubicBezierEasing;->min:F

    iget p0, p0, Landroidx/compose/animation/core/CubicBezierEasing;->max:F

    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    move p1, v0

    :cond_1
    cmpl-float v0, p1, p0

    if-lez v0, :cond_2

    move p1, p0

    :cond_2
    return p1
.end method
