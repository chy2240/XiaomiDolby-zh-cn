.class public Lcom/airbnb/lottie/model/animatable/AnimatableSplitDimensionPathValue;
.super Ljava/lang/Object;
.source "AnimatableSplitDimensionPathValue.java"

# interfaces
.implements Lcom/airbnb/lottie/model/animatable/AnimatableValue;


# instance fields
.field private final animatableXDimension:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

.field private final animatableYDimension:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/airbnb/lottie/model/animatable/AnimatableSplitDimensionPathValue;->animatableXDimension:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 19
    iput-object p2, p0, Lcom/airbnb/lottie/model/animatable/AnimatableSplitDimensionPathValue;->animatableYDimension:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    return-void
.end method


# virtual methods
.method public createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .locals 2

    .line 33
    new-instance v0, Lcom/airbnb/lottie/animation/keyframe/SplitDimensionPathKeyframeAnimation;

    iget-object v1, p0, Lcom/airbnb/lottie/model/animatable/AnimatableSplitDimensionPathValue;->animatableXDimension:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 34
    invoke-virtual {v1}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v1

    iget-object p0, p0, Lcom/airbnb/lottie/model/animatable/AnimatableSplitDimensionPathValue;->animatableYDimension:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    invoke-virtual {p0}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/airbnb/lottie/animation/keyframe/SplitDimensionPathKeyframeAnimation;-><init>(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    return-object v0
.end method

.method public getKeyframes()Ljava/util/List;
    .locals 1

    .line 24
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Cannot call getKeyframes on AnimatableSplitDimensionPathValue."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isStatic()Z
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/airbnb/lottie/model/animatable/AnimatableSplitDimensionPathValue;->animatableXDimension:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/airbnb/lottie/model/animatable/AnimatableSplitDimensionPathValue;->animatableYDimension:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    invoke-virtual {p0}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->isStatic()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
