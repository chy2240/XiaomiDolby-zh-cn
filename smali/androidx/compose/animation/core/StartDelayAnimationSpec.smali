.class final Landroidx/compose/animation/core/StartDelayAnimationSpec;
.super Ljava/lang/Object;
.source "AnimationSpec.kt"

# interfaces
.implements Landroidx/compose/animation/core/AnimationSpec;


# instance fields
.field private final animationSpec:Landroidx/compose/animation/core/AnimationSpec;

.field private final startDelayNanos:J


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/AnimationSpec;J)V
    .locals 0

    .line 1050
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1052
    iput-object p1, p0, Landroidx/compose/animation/core/StartDelayAnimationSpec;->animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    .line 1053
    iput-wide p2, p0, Landroidx/compose/animation/core/StartDelayAnimationSpec;->startDelayNanos:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1067
    instance-of v0, p1, Landroidx/compose/animation/core/StartDelayAnimationSpec;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1070
    :cond_0
    check-cast p1, Landroidx/compose/animation/core/StartDelayAnimationSpec;

    iget-wide v2, p1, Landroidx/compose/animation/core/StartDelayAnimationSpec;->startDelayNanos:J

    iget-wide v4, p0, Landroidx/compose/animation/core/StartDelayAnimationSpec;->startDelayNanos:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    iget-object p1, p1, Landroidx/compose/animation/core/StartDelayAnimationSpec;->animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    iget-object p0, p0, Landroidx/compose/animation/core/StartDelayAnimationSpec;->animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 1063
    iget-object v0, p0, Landroidx/compose/animation/core/StartDelayAnimationSpec;->animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/compose/animation/core/StartDelayAnimationSpec;->startDelayNanos:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public vectorize(Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedAnimationSpec;
    .locals 3

    .line 1058
    iget-object v0, p0, Landroidx/compose/animation/core/StartDelayAnimationSpec;->animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    invoke-interface {v0, p1}, Landroidx/compose/animation/core/AnimationSpec;->vectorize(Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedAnimationSpec;

    move-result-object p1

    .line 1059
    new-instance v0, Landroidx/compose/animation/core/StartDelayVectorizedAnimationSpec;

    iget-wide v1, p0, Landroidx/compose/animation/core/StartDelayAnimationSpec;->startDelayNanos:J

    invoke-direct {v0, p1, v1, v2}, Landroidx/compose/animation/core/StartDelayVectorizedAnimationSpec;-><init>(Landroidx/compose/animation/core/VectorizedAnimationSpec;J)V

    return-object v0
.end method
