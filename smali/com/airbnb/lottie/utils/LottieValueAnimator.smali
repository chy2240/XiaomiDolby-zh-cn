.class public Lcom/airbnb/lottie/utils/LottieValueAnimator;
.super Lcom/airbnb/lottie/utils/BaseLottieAnimator;
.source "LottieValueAnimator.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field private composition:Lcom/airbnb/lottie/LottieComposition;

.field private frame:F

.field private frameRaw:F

.field private lastFrameTimeNs:J

.field private maxFrame:F

.field private minFrame:F

.field private repeatCount:I

.field protected running:Z

.field private speed:F

.field private speedReversedForRepeatMode:Z

.field private useCompositionFrameRate:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 33
    invoke-direct {p0}, Lcom/airbnb/lottie/utils/BaseLottieAnimator;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 21
    iput v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->speed:F

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->speedReversedForRepeatMode:Z

    const-wide/16 v1, 0x0

    .line 23
    iput-wide v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->lastFrameTimeNs:J

    const/4 v1, 0x0

    .line 24
    iput v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frameRaw:F

    .line 25
    iput v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    .line 26
    iput v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->repeatCount:I

    const/high16 v1, -0x31000000

    .line 27
    iput v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->minFrame:F

    const/high16 v1, 0x4f000000

    .line 28
    iput v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->maxFrame:F

    .line 30
    iput-boolean v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->running:Z

    .line 31
    iput-boolean v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->useCompositionFrameRate:Z

    return-void
.end method

.method private getFrameDurationNs()F
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v0, :cond_0

    const p0, 0x7f7fffff    # Float.MAX_VALUE

    return p0

    :cond_0
    const v1, 0x4e6e6b28    # 1.0E9f

    .line 137
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getFrameRate()F

    move-result v0

    div-float/2addr v1, v0

    iget p0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->speed:F

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    div-float/2addr v1, p0

    return v1
.end method

.method private isReversed()Z
    .locals 1

    .line 264
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getSpeed()F

    move-result p0

    const/4 v0, 0x0

    cmpg-float p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private verifyFrame()V
    .locals 3

    .line 307
    iget-object v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v0, :cond_0

    return-void

    .line 310
    :cond_0
    iget v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    iget v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->minFrame:F

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->maxFrame:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    return-void

    .line 311
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    iget v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->minFrame:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v2, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->maxFrame:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget p0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "Frame must be [%f,%f]. It is %f"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .line 259
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->notifyCancel()V

    .line 260
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->removeFrameCallback()V

    return-void
.end method

.method public clearComposition()V
    .locals 1

    const/4 v0, 0x0

    .line 141
    iput-object v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    const/high16 v0, -0x31000000

    .line 142
    iput v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->minFrame:F

    const/high16 v0, 0x4f000000

    .line 143
    iput v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->maxFrame:F

    return-void
.end method

.method public doFrame(J)V
    .locals 6

    .line 88
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->postFrameCallback()V

    .line 89
    iget-object v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 93
    :cond_0
    const-string v0, "LottieValueAnimator#doFrame"

    invoke-static {v0}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 94
    iget-wide v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->lastFrameTimeNs:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    sub-long v3, p1, v1

    .line 95
    :goto_0
    invoke-direct {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getFrameDurationNs()F

    move-result v1

    long-to-float v2, v3

    div-float/2addr v2, v1

    .line 98
    iget v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frameRaw:F

    invoke-direct {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isReversed()Z

    move-result v3

    if-eqz v3, :cond_2

    neg-float v2, v2

    :cond_2
    add-float/2addr v1, v2

    .line 99
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    move-result v2

    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/airbnb/lottie/utils/MiscUtils;->contains(FFF)Z

    move-result v2

    .line 100
    iget v3, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frameRaw:F

    .line 101
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    move-result v4

    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    move-result v5

    invoke-static {v1, v4, v5}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    move-result v1

    iput v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frameRaw:F

    .line 102
    iget-boolean v4, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->useCompositionFrameRate:Z

    if-eqz v4, :cond_3

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-float v1, v4

    :cond_3
    iput v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    .line 104
    iput-wide p1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->lastFrameTimeNs:J

    .line 106
    iget-boolean v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->useCompositionFrameRate:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frameRaw:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_5

    .line 107
    :cond_4
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/BaseLottieAnimator;->notifyUpdate()V

    :cond_5
    if-nez v2, :cond_a

    .line 110
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_7

    iget v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->repeatCount:I

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    move-result v2

    if-lt v1, v2, :cond_7

    .line 111
    iget p1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->speed:F

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    if-gez p1, :cond_6

    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    move-result p1

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    move-result p1

    :goto_1
    iput p1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frameRaw:F

    .line 112
    iput p1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    .line 113
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->removeFrameCallback()V

    .line 114
    invoke-direct {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isReversed()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/utils/BaseLottieAnimator;->notifyEnd(Z)V

    goto :goto_4

    .line 116
    :cond_7
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/BaseLottieAnimator;->notifyRepeat()V

    .line 117
    iget v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->repeatCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->repeatCount:I

    .line 118
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_8

    .line 119
    iget-boolean v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->speedReversedForRepeatMode:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->speedReversedForRepeatMode:Z

    .line 120
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->reverseAnimationSpeed()V

    goto :goto_3

    .line 122
    :cond_8
    invoke-direct {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isReversed()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    move-result v1

    goto :goto_2

    :cond_9
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    move-result v1

    :goto_2
    iput v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frameRaw:F

    .line 123
    iput v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    .line 125
    :goto_3
    iput-wide p1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->lastFrameTimeNs:J

    .line 129
    :cond_a
    :goto_4
    invoke-direct {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->verifyFrame()V

    .line 130
    invoke-static {v0}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    :cond_b
    :goto_5
    return-void
.end method

.method public endAnimation()V
    .locals 1

    .line 234
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->removeFrameCallback()V

    .line 235
    invoke-direct {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isReversed()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/utils/BaseLottieAnimator;->notifyEnd(Z)V

    return-void
.end method

.method public getAnimatedFraction()F
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 64
    :cond_0
    invoke-direct {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isReversed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    move-result v0

    iget v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    move-result v1

    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    move-result p0

    :goto_0
    sub-float/2addr v1, p0

    div-float/2addr v0, v1

    return v0

    .line 67
    :cond_1
    iget v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    move-result v1

    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    move-result p0

    goto :goto_0
.end method

.method public getAnimatedValue()Ljava/lang/Object;
    .locals 0

    .line 41
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getAnimatedValueAbsolute()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public getAnimatedValueAbsolute()F
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 52
    :cond_0
    iget v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getStartFrame()F

    move-result v0

    sub-float/2addr v1, v0

    iget-object v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getEndFrame()F

    move-result v0

    iget-object p0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieComposition;->getStartFrame()F

    move-result p0

    sub-float/2addr v0, p0

    div-float/2addr v1, v0

    return v1
.end method

.method public getDuration()J
    .locals 2

    .line 72
    iget-object p0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieComposition;->getDuration()F

    move-result p0

    float-to-long v0, p0

    :goto_0
    return-wide v0
.end method

.method public getFrame()F
    .locals 0

    .line 76
    iget p0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    return p0
.end method

.method public getMaxFrame()F
    .locals 2

    .line 275
    iget-object v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 278
    :cond_0
    iget p0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->maxFrame:F

    const/high16 v1, 0x4f000000

    cmpl-float v1, p0, v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getEndFrame()F

    move-result p0

    :cond_1
    return p0
.end method

.method public getMinFrame()F
    .locals 2

    .line 268
    iget-object v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 271
    :cond_0
    iget p0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->minFrame:F

    const/high16 v1, -0x31000000

    cmpl-float v1, p0, v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getStartFrame()F

    move-result p0

    :cond_1
    return p0
.end method

.method public getSpeed()F
    .locals 0

    .line 211
    iget p0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->speed:F

    return p0
.end method

.method public isRunning()Z
    .locals 0

    .line 80
    iget-boolean p0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->running:Z

    return p0
.end method

.method notifyCancel()V
    .locals 1

    .line 282
    invoke-super {p0}, Lcom/airbnb/lottie/utils/BaseLottieAnimator;->notifyCancel()V

    .line 283
    invoke-direct {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isReversed()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/utils/BaseLottieAnimator;->notifyEnd(Z)V

    return-void
.end method

.method public pauseAnimation()V
    .locals 0

    .line 240
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->removeFrameCallback()V

    .line 241
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/BaseLottieAnimator;->notifyPause()V

    return-void
.end method

.method public playAnimation()V
    .locals 2

    const/4 v0, 0x1

    .line 224
    iput-boolean v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->running:Z

    .line 225
    invoke-direct {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isReversed()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/utils/BaseLottieAnimator;->notifyStart(Z)V

    .line 226
    invoke-direct {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isReversed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    move-result v0

    :goto_0
    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setFrame(F)V

    const-wide/16 v0, 0x0

    .line 227
    iput-wide v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->lastFrameTimeNs:J

    const/4 v0, 0x0

    .line 228
    iput v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->repeatCount:I

    .line 229
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->postFrameCallback()V

    return-void
.end method

.method protected postFrameCallback()V
    .locals 1

    .line 287
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 288
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->removeFrameCallback(Z)V

    .line 289
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_0
    return-void
.end method

.method protected removeFrameCallback()V
    .locals 1

    const/4 v0, 0x1

    .line 295
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->removeFrameCallback(Z)V

    return-void
.end method

.method protected removeFrameCallback(Z)V
    .locals 1

    .line 300
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 302
    iput-boolean p1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->running:Z

    :cond_0
    return-void
.end method

.method public resumeAnimation()V
    .locals 2

    const/4 v0, 0x1

    .line 246
    iput-boolean v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->running:Z

    .line 247
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->postFrameCallback()V

    const-wide/16 v0, 0x0

    .line 248
    iput-wide v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->lastFrameTimeNs:J

    .line 249
    invoke-direct {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isReversed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getFrame()F

    move-result v0

    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setFrame(F)V

    goto :goto_0

    .line 251
    :cond_0
    invoke-direct {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isReversed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getFrame()F

    move-result v0

    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 252
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setFrame(F)V

    .line 254
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/BaseLottieAnimator;->notifyResume()V

    return-void
.end method

.method public reverseAnimationSpeed()V
    .locals 1

    .line 200
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getSpeed()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setSpeed(F)V

    return-void
.end method

.method public setComposition(Lcom/airbnb/lottie/LottieComposition;)V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 149
    :goto_0
    iput-object p1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-eqz v0, :cond_1

    .line 152
    iget v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->minFrame:F

    .line 153
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieComposition;->getStartFrame()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->maxFrame:F

    .line 154
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieComposition;->getEndFrame()F

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 152
    invoke-virtual {p0, v0, p1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setMinAndMaxFrames(FF)V

    goto :goto_1

    .line 157
    :cond_1
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieComposition;->getStartFrame()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieComposition;->getEndFrame()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p0, v0, p1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setMinAndMaxFrames(FF)V

    .line 159
    :goto_1
    iget p1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    const/4 v0, 0x0

    .line 160
    iput v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    .line 161
    iput v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frameRaw:F

    float-to-int p1, p1

    int-to-float p1, p1

    .line 162
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setFrame(F)V

    .line 163
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/BaseLottieAnimator;->notifyUpdate()V

    return-void
.end method

.method public setFrame(F)V
    .locals 2

    .line 167
    iget v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frameRaw:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 170
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    move-result v0

    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    move-result p1

    iput p1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frameRaw:F

    .line 171
    iget-boolean v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->useCompositionFrameRate:Z

    if-eqz v0, :cond_1

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float p1, v0

    :cond_1
    iput p1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    const-wide/16 v0, 0x0

    .line 172
    iput-wide v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->lastFrameTimeNs:J

    .line 173
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/BaseLottieAnimator;->notifyUpdate()V

    return-void
.end method

.method public setMaxFrame(F)V
    .locals 1

    .line 181
    iget v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->minFrame:F

    invoke-virtual {p0, v0, p1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setMinAndMaxFrames(FF)V

    return-void
.end method

.method public setMinAndMaxFrames(FF)V
    .locals 2

    cmpl-float v0, p1, p2

    if-gtz v0, :cond_4

    .line 188
    iget-object v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v0, :cond_0

    const v0, -0x800001

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getStartFrame()F

    move-result v0

    .line 189
    :goto_0
    iget-object v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v1, :cond_1

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieComposition;->getEndFrame()F

    move-result v1

    .line 190
    :goto_1
    invoke-static {p1, v0, v1}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    move-result p1

    .line 191
    invoke-static {p2, v0, v1}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    move-result p2

    .line 192
    iget v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->minFrame:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->maxFrame:F

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_3

    .line 193
    :cond_2
    iput p1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->minFrame:F

    .line 194
    iput p2, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->maxFrame:F

    .line 195
    iget v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    invoke-static {v0, p1, p2}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setFrame(F)V

    :cond_3
    return-void

    .line 186
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "minFrame (%s) must be <= maxFrame (%s)"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMinFrame(I)V
    .locals 1

    int-to-float p1, p1

    .line 177
    iget v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->maxFrame:F

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0, p1, v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setMinAndMaxFrames(FF)V

    return-void
.end method

.method public setRepeatMode(I)V
    .locals 1

    .line 215
    invoke-super {p0, p1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 216
    iget-boolean p1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->speedReversedForRepeatMode:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 217
    iput-boolean p1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->speedReversedForRepeatMode:Z

    .line 218
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->reverseAnimationSpeed()V

    :cond_0
    return-void
.end method

.method public setSpeed(F)V
    .locals 0

    .line 204
    iput p1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->speed:F

    return-void
.end method

.method public setUseCompositionFrameRate(Z)V
    .locals 0

    .line 84
    iput-boolean p1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->useCompositionFrameRate:Z

    return-void
.end method
