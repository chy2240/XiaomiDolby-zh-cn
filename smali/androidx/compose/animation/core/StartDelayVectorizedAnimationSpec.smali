.class final Landroidx/compose/animation/core/StartDelayVectorizedAnimationSpec;
.super Ljava/lang/Object;
.source "AnimationSpec.kt"

# interfaces
.implements Landroidx/compose/animation/core/VectorizedAnimationSpec;


# instance fields
.field private final startDelayNanos:J

.field private final vectorizedAnimationSpec:Landroidx/compose/animation/core/VectorizedAnimationSpec;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/VectorizedAnimationSpec;J)V
    .locals 0

    .line 987
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 989
    iput-object p1, p0, Landroidx/compose/animation/core/StartDelayVectorizedAnimationSpec;->vectorizedAnimationSpec:Landroidx/compose/animation/core/VectorizedAnimationSpec;

    .line 990
    iput-wide p2, p0, Landroidx/compose/animation/core/StartDelayVectorizedAnimationSpec;->startDelayNanos:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1041
    instance-of v0, p1, Landroidx/compose/animation/core/StartDelayVectorizedAnimationSpec;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1044
    :cond_0
    check-cast p1, Landroidx/compose/animation/core/StartDelayVectorizedAnimationSpec;

    iget-wide v2, p1, Landroidx/compose/animation/core/StartDelayVectorizedAnimationSpec;->startDelayNanos:J

    iget-wide v4, p0, Landroidx/compose/animation/core/StartDelayVectorizedAnimationSpec;->startDelayNanos:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 1045
    iget-object p1, p1, Landroidx/compose/animation/core/StartDelayVectorizedAnimationSpec;->vectorizedAnimationSpec:Landroidx/compose/animation/core/VectorizedAnimationSpec;

    iget-object p0, p0, Landroidx/compose/animation/core/StartDelayVectorizedAnimationSpec;->vectorizedAnimationSpec:Landroidx/compose/animation/core/VectorizedAnimationSpec;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getDurationNanos(Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)J
    .locals 2

    .line 996
    iget-object v0, p0, Landroidx/compose/animation/core/StartDelayVectorizedAnimationSpec;->vectorizedAnimationSpec:Landroidx/compose/animation/core/VectorizedAnimationSpec;

    invoke-interface {v0, p1, p2, p3}, Landroidx/compose/animation/core/VectorizedAnimationSpec;->getDurationNanos(Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)J

    move-result-wide p1

    .line 1000
    iget-wide v0, p0, Landroidx/compose/animation/core/StartDelayVectorizedAnimationSpec;->startDelayNanos:J

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public getValueFromNanos(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;
    .locals 9

    .line 1025
    iget-wide v0, p0, Landroidx/compose/animation/core/StartDelayVectorizedAnimationSpec;->startDelayNanos:J

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    goto :goto_0

    .line 1028
    :cond_0
    iget-object v3, p0, Landroidx/compose/animation/core/StartDelayVectorizedAnimationSpec;->vectorizedAnimationSpec:Landroidx/compose/animation/core/VectorizedAnimationSpec;

    sub-long v4, p1, v0

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-interface/range {v3 .. v8}, Landroidx/compose/animation/core/VectorizedAnimationSpec;->getValueFromNanos(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    move-result-object p3

    :goto_0
    return-object p3
.end method

.method public getVelocityFromNanos(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;
    .locals 9

    .line 1008
    iget-wide v0, p0, Landroidx/compose/animation/core/StartDelayVectorizedAnimationSpec;->startDelayNanos:J

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    goto :goto_0

    .line 1011
    :cond_0
    iget-object v3, p0, Landroidx/compose/animation/core/StartDelayVectorizedAnimationSpec;->vectorizedAnimationSpec:Landroidx/compose/animation/core/VectorizedAnimationSpec;

    sub-long v4, p1, v0

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-interface/range {v3 .. v8}, Landroidx/compose/animation/core/VectorizedAnimationSpec;->getVelocityFromNanos(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    move-result-object p5

    :goto_0
    return-object p5
.end method

.method public hashCode()I
    .locals 3

    .line 1037
    iget-object v0, p0, Landroidx/compose/animation/core/StartDelayVectorizedAnimationSpec;->vectorizedAnimationSpec:Landroidx/compose/animation/core/VectorizedAnimationSpec;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/compose/animation/core/StartDelayVectorizedAnimationSpec;->startDelayNanos:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public isInfinite()Z
    .locals 0

    .line 993
    iget-object p0, p0, Landroidx/compose/animation/core/StartDelayVectorizedAnimationSpec;->vectorizedAnimationSpec:Landroidx/compose/animation/core/VectorizedAnimationSpec;

    invoke-interface {p0}, Landroidx/compose/animation/core/VectorizedAnimationSpec;->isInfinite()Z

    move-result p0

    return p0
.end method
