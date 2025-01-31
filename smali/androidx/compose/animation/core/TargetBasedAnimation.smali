.class public final Landroidx/compose/animation/core/TargetBasedAnimation;
.super Ljava/lang/Object;
.source "Animation.kt"

# interfaces
.implements Landroidx/compose/animation/core/Animation;


# instance fields
.field private _durationNanos:J

.field private _endVelocity:Landroidx/compose/animation/core/AnimationVector;

.field private final animationSpec:Landroidx/compose/animation/core/VectorizedAnimationSpec;

.field private initialValueVector:Landroidx/compose/animation/core/AnimationVector;

.field private final initialVelocityVector:Landroidx/compose/animation/core/AnimationVector;

.field private mutableInitialValue:Ljava/lang/Object;

.field private mutableTargetValue:Ljava/lang/Object;

.field private targetValueVector:Landroidx/compose/animation/core/AnimationVector;

.field private final typeConverter:Landroidx/compose/animation/core/TwoWayConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;)V
    .locals 6

    .line 247
    invoke-interface {p1, p2}, Landroidx/compose/animation/core/AnimationSpec;->vectorize(Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedAnimationSpec;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 246
    invoke-direct/range {v0 .. v5}, Landroidx/compose/animation/core/TargetBasedAnimation;-><init>(Landroidx/compose/animation/core/VectorizedAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;)V

    return-void
.end method

.method public constructor <init>(Landroidx/compose/animation/core/VectorizedAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;)V
    .locals 0

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput-object p1, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->animationSpec:Landroidx/compose/animation/core/VectorizedAnimationSpec;

    .line 187
    iput-object p2, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->typeConverter:Landroidx/compose/animation/core/TwoWayConverter;

    .line 192
    iput-object p4, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->mutableTargetValue:Ljava/lang/Object;

    .line 202
    iput-object p3, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->mutableInitialValue:Ljava/lang/Object;

    .line 254
    invoke-virtual {p0}, Landroidx/compose/animation/core/TargetBasedAnimation;->getTypeConverter()Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object p1

    invoke-interface {p1}, Landroidx/compose/animation/core/TwoWayConverter;->getConvertToVector()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    invoke-interface {p1, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/animation/core/AnimationVector;

    iput-object p1, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->initialValueVector:Landroidx/compose/animation/core/AnimationVector;

    .line 255
    invoke-virtual {p0}, Landroidx/compose/animation/core/TargetBasedAnimation;->getTypeConverter()Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object p1

    invoke-interface {p1}, Landroidx/compose/animation/core/TwoWayConverter;->getConvertToVector()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    invoke-interface {p1, p4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/animation/core/AnimationVector;

    iput-object p1, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->targetValueVector:Landroidx/compose/animation/core/AnimationVector;

    if-eqz p5, :cond_0

    .line 257
    invoke-static {p5}, Landroidx/compose/animation/core/AnimationVectorsKt;->copy(Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/animation/core/TargetBasedAnimation;->getTypeConverter()Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object p1

    invoke-interface {p1}, Landroidx/compose/animation/core/TwoWayConverter;->getConvertToVector()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    invoke-interface {p1, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/animation/core/AnimationVector;

    invoke-static {p1}, Landroidx/compose/animation/core/AnimationVectorsKt;->newInstance(Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    move-result-object p1

    :cond_1
    iput-object p1, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->initialVelocityVector:Landroidx/compose/animation/core/AnimationVector;

    const-wide/16 p1, -0x1

    .line 286
    iput-wide p1, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->_durationNanos:J

    return-void
.end method

.method private final getEndVelocity()Landroidx/compose/animation/core/AnimationVector;
    .locals 4

    .line 306
    iget-object v0, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->_endVelocity:Landroidx/compose/animation/core/AnimationVector;

    if-nez v0, :cond_0

    .line 307
    iget-object v0, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->animationSpec:Landroidx/compose/animation/core/VectorizedAnimationSpec;

    .line 309
    iget-object v1, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->initialValueVector:Landroidx/compose/animation/core/AnimationVector;

    .line 310
    iget-object v2, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->targetValueVector:Landroidx/compose/animation/core/AnimationVector;

    .line 311
    iget-object v3, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->initialVelocityVector:Landroidx/compose/animation/core/AnimationVector;

    .line 308
    invoke-interface {v0, v1, v2, v3}, Landroidx/compose/animation/core/VectorizedAnimationSpec;->getEndVelocity(Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    move-result-object v0

    .line 313
    iput-object v0, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->_endVelocity:Landroidx/compose/animation/core/AnimationVector;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getDurationNanos()J
    .locals 4

    .line 291
    iget-wide v0, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->_durationNanos:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 293
    iget-object v0, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->animationSpec:Landroidx/compose/animation/core/VectorizedAnimationSpec;

    .line 294
    iget-object v1, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->initialValueVector:Landroidx/compose/animation/core/AnimationVector;

    .line 295
    iget-object v2, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->targetValueVector:Landroidx/compose/animation/core/AnimationVector;

    .line 296
    iget-object v3, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->initialVelocityVector:Landroidx/compose/animation/core/AnimationVector;

    .line 293
    invoke-interface {v0, v1, v2, v3}, Landroidx/compose/animation/core/VectorizedAnimationSpec;->getDurationNanos(Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)J

    move-result-wide v0

    .line 292
    iput-wide v0, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->_durationNanos:J

    .line 299
    :cond_0
    iget-wide v0, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->_durationNanos:J

    return-wide v0
.end method

.method public final getInitialValue()Ljava/lang/Object;
    .locals 0

    .line 213
    iget-object p0, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->mutableInitialValue:Ljava/lang/Object;

    return-object p0
.end method

.method public getTargetValue()Ljava/lang/Object;
    .locals 0

    .line 216
    iget-object p0, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->mutableTargetValue:Ljava/lang/Object;

    return-object p0
.end method

.method public getTypeConverter()Landroidx/compose/animation/core/TwoWayConverter;
    .locals 0

    .line 187
    iget-object p0, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->typeConverter:Landroidx/compose/animation/core/TwoWayConverter;

    return-object p0
.end method

.method public getValueFromNanos(J)Ljava/lang/Object;
    .locals 7

    .line 263
    invoke-interface {p0, p1, p2}, Landroidx/compose/animation/core/Animation;->isFinishedFromNanos(J)Z

    move-result v0

    if-nez v0, :cond_2

    .line 264
    iget-object v1, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->animationSpec:Landroidx/compose/animation/core/VectorizedAnimationSpec;

    .line 267
    iget-object v4, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->initialValueVector:Landroidx/compose/animation/core/AnimationVector;

    .line 268
    iget-object v5, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->targetValueVector:Landroidx/compose/animation/core/AnimationVector;

    .line 269
    iget-object v6, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->initialVelocityVector:Landroidx/compose/animation/core/AnimationVector;

    move-wide v2, p1

    .line 265
    invoke-interface/range {v1 .. v6}, Landroidx/compose/animation/core/VectorizedAnimationSpec;->getValueFromNanos(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    move-result-object v0

    .line 273
    invoke-virtual {v0}, Landroidx/compose/animation/core/AnimationVector;->getSize$animation_core_release()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 274
    invoke-virtual {v0, v2}, Landroidx/compose/animation/core/AnimationVector;->get$animation_core_release(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 275
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AnimationVector cannot contain a NaN. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ". Animation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", playTimeNanos: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 54
    invoke-static {v3}, Landroidx/compose/animation/core/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 279
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/animation/core/TargetBasedAnimation;->getTypeConverter()Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/animation/core/TwoWayConverter;->getConvertFromVector()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    .line 282
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/animation/core/TargetBasedAnimation;->getTargetValue()Ljava/lang/Object;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public getVelocityVectorFromNanos(J)Landroidx/compose/animation/core/AnimationVector;
    .locals 7

    .line 316
    invoke-interface {p0, p1, p2}, Landroidx/compose/animation/core/Animation;->isFinishedFromNanos(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 317
    iget-object v1, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->animationSpec:Landroidx/compose/animation/core/VectorizedAnimationSpec;

    .line 319
    iget-object v4, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->initialValueVector:Landroidx/compose/animation/core/AnimationVector;

    .line 320
    iget-object v5, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->targetValueVector:Landroidx/compose/animation/core/AnimationVector;

    .line 321
    iget-object v6, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->initialVelocityVector:Landroidx/compose/animation/core/AnimationVector;

    move-wide v2, p1

    .line 317
    invoke-interface/range {v1 .. v6}, Landroidx/compose/animation/core/VectorizedAnimationSpec;->getVelocityFromNanos(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    move-result-object p0

    goto :goto_0

    .line 324
    :cond_0
    invoke-direct {p0}, Landroidx/compose/animation/core/TargetBasedAnimation;->getEndVelocity()Landroidx/compose/animation/core/AnimationVector;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public isInfinite()Z
    .locals 0

    .line 260
    iget-object p0, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->animationSpec:Landroidx/compose/animation/core/VectorizedAnimationSpec;

    invoke-interface {p0}, Landroidx/compose/animation/core/VectorizedAnimationSpec;->isInfinite()Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TargetBasedAnimation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/compose/animation/core/TargetBasedAnimation;->getInitialValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/compose/animation/core/TargetBasedAnimation;->getTargetValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",initial velocity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    iget-object v1, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->initialVelocityVector:Landroidx/compose/animation/core/AnimationVector;

    .line 329
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 330
    const-string v1, ", duration: "

    .line 329
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    invoke-static {p0}, Landroidx/compose/animation/core/AnimationKt;->getDurationMillis(Landroidx/compose/animation/core/Animation;)J

    move-result-wide v1

    .line 329
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 330
    const-string v1, " ms,animationSpec: "

    .line 329
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    iget-object p0, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->animationSpec:Landroidx/compose/animation/core/VectorizedAnimationSpec;

    .line 329
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
