.class Landroidx/transition/Transition$SeekController;
.super Landroidx/transition/TransitionListenerAdapter;
.source "Transition.java"

# interfaces
.implements Landroidx/transition/TransitionSeekController;
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;


# instance fields
.field private mCurrentPlayTime:J

.field private mIsCanceled:Z

.field private mIsReady:Z

.field private mListenerCache:[Landroidx/core/util/Consumer;

.field private mOnProgressListeners:Ljava/util/ArrayList;

.field private mOnReady:I

.field private mOnReadyListeners:Ljava/util/ArrayList;

.field private mResetToStartState:Ljava/lang/Runnable;

.field private mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private final mVelocityTracker:Landroidx/transition/VelocityTracker1D;

.field final synthetic this$0:Landroidx/transition/Transition;


# direct methods
.method public static synthetic $r8$lambda$nZMnxj1GJ10-geefUwzLdAYk8oI(Landroidx/transition/Transition$SeekController;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/transition/Transition$SeekController;->lambda$ensureAnimation$0(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method constructor <init>(Landroidx/transition/Transition;)V
    .locals 2

    .line 2726
    iput-object p1, p0, Landroidx/transition/Transition$SeekController;->this$0:Landroidx/transition/Transition;

    invoke-direct {p0}, Landroidx/transition/TransitionListenerAdapter;-><init>()V

    const-wide/16 v0, -0x1

    .line 2732
    iput-wide v0, p0, Landroidx/transition/Transition$SeekController;->mCurrentPlayTime:J

    const/4 p1, 0x0

    .line 2733
    iput-object p1, p0, Landroidx/transition/Transition$SeekController;->mOnReadyListeners:Ljava/util/ArrayList;

    .line 2734
    iput-object p1, p0, Landroidx/transition/Transition$SeekController;->mOnProgressListeners:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 2737
    iput v0, p0, Landroidx/transition/Transition$SeekController;->mOnReady:I

    .line 2740
    iput-object p1, p0, Landroidx/transition/Transition$SeekController;->mListenerCache:[Landroidx/core/util/Consumer;

    .line 2741
    new-instance p1, Landroidx/transition/VelocityTracker1D;

    invoke-direct {p1}, Landroidx/transition/VelocityTracker1D;-><init>()V

    iput-object p1, p0, Landroidx/transition/Transition$SeekController;->mVelocityTracker:Landroidx/transition/VelocityTracker1D;

    return-void
.end method

.method private callProgressListeners()V
    .locals 5

    .line 2954
    iget-object v0, p0, Landroidx/transition/Transition$SeekController;->mOnProgressListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2957
    :cond_0
    iget-object v0, p0, Landroidx/transition/Transition$SeekController;->mOnProgressListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2958
    iget-object v1, p0, Landroidx/transition/Transition$SeekController;->mListenerCache:[Landroidx/core/util/Consumer;

    if-nez v1, :cond_1

    .line 2959
    new-array v1, v0, [Landroidx/core/util/Consumer;

    iput-object v1, p0, Landroidx/transition/Transition$SeekController;->mListenerCache:[Landroidx/core/util/Consumer;

    .line 2961
    :cond_1
    iget-object v1, p0, Landroidx/transition/Transition$SeekController;->mOnProgressListeners:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/transition/Transition$SeekController;->mListenerCache:[Landroidx/core/util/Consumer;

    .line 2962
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/core/util/Consumer;

    const/4 v2, 0x0

    .line 2963
    iput-object v2, p0, Landroidx/transition/Transition$SeekController;->mListenerCache:[Landroidx/core/util/Consumer;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 2965
    aget-object v4, v1, v3

    invoke-interface {v4, p0}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 2966
    aput-object v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2968
    :cond_2
    iput-object v1, p0, Landroidx/transition/Transition$SeekController;->mListenerCache:[Landroidx/core/util/Consumer;

    :cond_3
    :goto_1
    return-void
.end method

.method private ensureAnimation()V
    .locals 5

    .line 2870
    iget-object v0, p0, Landroidx/transition/Transition$SeekController;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_0

    return-void

    .line 2873
    :cond_0
    iget-object v0, p0, Landroidx/transition/Transition$SeekController;->mVelocityTracker:Landroidx/transition/VelocityTracker1D;

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Landroidx/transition/Transition$SeekController;->mCurrentPlayTime:J

    long-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Landroidx/transition/VelocityTracker1D;->addDataPoint(JF)V

    .line 2875
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>()V

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    iput-object v0, p0, Landroidx/transition/Transition$SeekController;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 2876
    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 2877
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 v1, 0x43480000    # 200.0f

    .line 2878
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 2879
    iget-object v1, p0, Landroidx/transition/Transition$SeekController;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v1, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 2880
    iget-object v0, p0, Landroidx/transition/Transition$SeekController;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-wide v1, p0, Landroidx/transition/Transition$SeekController;->mCurrentPlayTime:J

    long-to-float v1, v1

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 2881
    iget-object v0, p0, Landroidx/transition/Transition$SeekController;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 2882
    iget-object v0, p0, Landroidx/transition/Transition$SeekController;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, Landroidx/transition/Transition$SeekController;->mVelocityTracker:Landroidx/transition/VelocityTracker1D;

    invoke-virtual {v1}, Landroidx/transition/VelocityTracker1D;->calculateVelocity()F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 2883
    iget-object v0, p0, Landroidx/transition/Transition$SeekController;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0}, Landroidx/transition/Transition$SeekController;->getDurationMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    long-to-float v1, v1

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMaxValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 2884
    iget-object v0, p0, Landroidx/transition/Transition$SeekController;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 2885
    iget-object v0, p0, Landroidx/transition/Transition$SeekController;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 2886
    iget-object v0, p0, Landroidx/transition/Transition$SeekController;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Landroidx/transition/Transition$SeekController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroidx/transition/Transition$SeekController$$ExternalSyntheticLambda0;-><init>(Landroidx/transition/Transition$SeekController;)V

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    return-void
.end method

.method private synthetic lambda$ensureAnimation$0(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 4

    if-nez p2, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    cmpg-float p1, p3, p1

    const/4 p2, 0x0

    if-gez p1, :cond_1

    .line 2891
    invoke-virtual {p0}, Landroidx/transition/Transition$SeekController;->getDurationMillis()J

    move-result-wide p3

    .line 2893
    iget-object p1, p0, Landroidx/transition/Transition$SeekController;->this$0:Landroidx/transition/Transition;

    check-cast p1, Landroidx/transition/TransitionSet;

    invoke-virtual {p1, p2}, Landroidx/transition/TransitionSet;->getTransitionAt(I)Landroidx/transition/Transition;

    move-result-object p1

    .line 2894
    invoke-static {p1}, Landroidx/transition/Transition;->access$000(Landroidx/transition/Transition;)Landroidx/transition/Transition;

    move-result-object p2

    const/4 v0, 0x0

    .line 2895
    invoke-static {p1, v0}, Landroidx/transition/Transition;->access$002(Landroidx/transition/Transition;Landroidx/transition/Transition;)Landroidx/transition/Transition;

    .line 2896
    iget-object p1, p0, Landroidx/transition/Transition$SeekController;->this$0:Landroidx/transition/Transition;

    iget-wide v0, p0, Landroidx/transition/Transition$SeekController;->mCurrentPlayTime:J

    const-wide/16 v2, -0x1

    invoke-virtual {p1, v2, v3, v0, v1}, Landroidx/transition/Transition;->setCurrentPlayTimeMillis(JJ)V

    .line 2897
    iget-object p1, p0, Landroidx/transition/Transition$SeekController;->this$0:Landroidx/transition/Transition;

    invoke-virtual {p1, p3, p4, v2, v3}, Landroidx/transition/Transition;->setCurrentPlayTimeMillis(JJ)V

    .line 2898
    iput-wide p3, p0, Landroidx/transition/Transition$SeekController;->mCurrentPlayTime:J

    .line 2899
    iget-object p1, p0, Landroidx/transition/Transition$SeekController;->mResetToStartState:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 2900
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 2902
    :cond_0
    iget-object p0, p0, Landroidx/transition/Transition$SeekController;->this$0:Landroidx/transition/Transition;

    iget-object p0, p0, Landroidx/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    if-eqz p2, :cond_2

    .line 2904
    sget-object p0, Landroidx/transition/Transition$TransitionNotification;->ON_END:Landroidx/transition/Transition$TransitionNotification;

    const/4 p1, 0x1

    invoke-virtual {p2, p0, p1}, Landroidx/transition/Transition;->notifyListeners(Landroidx/transition/Transition$TransitionNotification;Z)V

    goto :goto_0

    .line 2907
    :cond_1
    iget-object p0, p0, Landroidx/transition/Transition$SeekController;->this$0:Landroidx/transition/Transition;

    sget-object p1, Landroidx/transition/Transition$TransitionNotification;->ON_END:Landroidx/transition/Transition$TransitionNotification;

    invoke-virtual {p0, p1, p2}, Landroidx/transition/Transition;->notifyListeners(Landroidx/transition/Transition$TransitionNotification;Z)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public animateToEnd()V
    .locals 5

    .line 2915
    iget-boolean v0, p0, Landroidx/transition/Transition$SeekController;->mIsReady:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2916
    iput v0, p0, Landroidx/transition/Transition$SeekController;->mOnReady:I

    const/4 v0, 0x0

    .line 2917
    iput-object v0, p0, Landroidx/transition/Transition$SeekController;->mResetToStartState:Ljava/lang/Runnable;

    return-void

    .line 2920
    :cond_0
    invoke-direct {p0}, Landroidx/transition/Transition$SeekController;->ensureAnimation()V

    .line 2921
    iget-object v0, p0, Landroidx/transition/Transition$SeekController;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0}, Landroidx/transition/Transition$SeekController;->getDurationMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    long-to-float p0, v1

    invoke-virtual {v0, p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method

.method public animateToStart(Ljava/lang/Runnable;)V
    .locals 0

    .line 2926
    iput-object p1, p0, Landroidx/transition/Transition$SeekController;->mResetToStartState:Ljava/lang/Runnable;

    .line 2927
    iget-boolean p1, p0, Landroidx/transition/Transition$SeekController;->mIsReady:Z

    if-nez p1, :cond_0

    const/4 p1, 0x2

    .line 2928
    iput p1, p0, Landroidx/transition/Transition$SeekController;->mOnReady:I

    return-void

    .line 2931
    :cond_0
    invoke-direct {p0}, Landroidx/transition/Transition$SeekController;->ensureAnimation()V

    .line 2932
    iget-object p0, p0, Landroidx/transition/Transition$SeekController;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method

.method public getDurationMillis()J
    .locals 2

    .line 2746
    iget-object p0, p0, Landroidx/transition/Transition$SeekController;->this$0:Landroidx/transition/Transition;

    invoke-virtual {p0}, Landroidx/transition/Transition;->getTotalDurationMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method initPlayTime()V
    .locals 6

    .line 2816
    invoke-virtual {p0}, Landroidx/transition/Transition$SeekController;->getDurationMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v2, 0x1

    .line 2817
    :cond_0
    iget-object v0, p0, Landroidx/transition/Transition$SeekController;->this$0:Landroidx/transition/Transition;

    iget-wide v4, p0, Landroidx/transition/Transition$SeekController;->mCurrentPlayTime:J

    invoke-virtual {v0, v2, v3, v4, v5}, Landroidx/transition/Transition;->setCurrentPlayTimeMillis(JJ)V

    .line 2818
    iput-wide v2, p0, Landroidx/transition/Transition$SeekController;->mCurrentPlayTime:J

    return-void
.end method

.method public isReady()Z
    .locals 0

    .line 2761
    iget-boolean p0, p0, Landroidx/transition/Transition$SeekController;->mIsReady:Z

    return p0
.end method

.method public onAnimationUpdate(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 4

    .line 2863
    invoke-virtual {p0}, Landroidx/transition/Transition$SeekController;->getDurationMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    float-to-double p1, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    const-wide/16 v0, -0x1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 2864
    iget-object p3, p0, Landroidx/transition/Transition$SeekController;->this$0:Landroidx/transition/Transition;

    iget-wide v0, p0, Landroidx/transition/Transition$SeekController;->mCurrentPlayTime:J

    invoke-virtual {p3, p1, p2, v0, v1}, Landroidx/transition/Transition;->setCurrentPlayTimeMillis(JJ)V

    .line 2865
    iput-wide p1, p0, Landroidx/transition/Transition$SeekController;->mCurrentPlayTime:J

    .line 2866
    invoke-direct {p0}, Landroidx/transition/Transition$SeekController;->callProgressListeners()V

    return-void
.end method

.method public onTransitionCancel(Landroidx/transition/Transition;)V
    .locals 0

    const/4 p1, 0x1

    .line 2858
    iput-boolean p1, p0, Landroidx/transition/Transition$SeekController;->mIsCanceled:Z

    return-void
.end method

.method public ready()V
    .locals 5

    const/4 v0, 0x1

    .line 2765
    iput-boolean v0, p0, Landroidx/transition/Transition$SeekController;->mIsReady:Z

    .line 2766
    iget-object v1, p0, Landroidx/transition/Transition$SeekController;->mOnReadyListeners:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v3, 0x0

    .line 2768
    iput-object v3, p0, Landroidx/transition/Transition$SeekController;->mOnReadyListeners:Ljava/util/ArrayList;

    move v3, v2

    .line 2769
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 2770
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/core/util/Consumer;

    invoke-interface {v4, p0}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2773
    :cond_0
    invoke-direct {p0}, Landroidx/transition/Transition$SeekController;->callProgressListeners()V

    .line 2774
    iget v1, p0, Landroidx/transition/Transition$SeekController;->mOnReady:I

    if-ne v1, v0, :cond_1

    .line 2775
    iput v2, p0, Landroidx/transition/Transition$SeekController;->mOnReady:I

    .line 2776
    invoke-virtual {p0}, Landroidx/transition/Transition$SeekController;->animateToEnd()V

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    if-ne v1, v0, :cond_2

    .line 2778
    iput v2, p0, Landroidx/transition/Transition$SeekController;->mOnReady:I

    .line 2779
    iget-object v0, p0, Landroidx/transition/Transition$SeekController;->mResetToStartState:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroidx/transition/Transition$SeekController;->animateToStart(Ljava/lang/Runnable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setCurrentPlayTimeMillis(J)V
    .locals 4

    .line 2785
    iget-object v0, p0, Landroidx/transition/Transition$SeekController;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v0, :cond_5

    .line 2789
    iget-wide v0, p0, Landroidx/transition/Transition$SeekController;->mCurrentPlayTime:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroidx/transition/Transition$SeekController;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2794
    :cond_0
    iget-boolean v0, p0, Landroidx/transition/Transition$SeekController;->mIsCanceled:Z

    if-nez v0, :cond_3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    .line 2795
    iget-wide v2, p0, Landroidx/transition/Transition$SeekController;->mCurrentPlayTime:J

    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    const-wide/16 p1, -0x1

    goto :goto_0

    .line 2799
    :cond_1
    invoke-virtual {p0}, Landroidx/transition/Transition$SeekController;->getDurationMillis()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-nez v2, :cond_2

    .line 2801
    iget-wide v2, p0, Landroidx/transition/Transition$SeekController;->mCurrentPlayTime:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_2

    const-wide/16 p1, 0x1

    add-long/2addr p1, v0

    .line 2805
    :cond_2
    :goto_0
    iget-wide v0, p0, Landroidx/transition/Transition$SeekController;->mCurrentPlayTime:J

    cmp-long v2, p1, v0

    if-eqz v2, :cond_3

    .line 2806
    iget-object v2, p0, Landroidx/transition/Transition$SeekController;->this$0:Landroidx/transition/Transition;

    invoke-virtual {v2, p1, p2, v0, v1}, Landroidx/transition/Transition;->setCurrentPlayTimeMillis(JJ)V

    .line 2807
    iput-wide p1, p0, Landroidx/transition/Transition$SeekController;->mCurrentPlayTime:J

    .line 2810
    :cond_3
    invoke-direct {p0}, Landroidx/transition/Transition$SeekController;->callProgressListeners()V

    .line 2811
    iget-object p0, p0, Landroidx/transition/Transition$SeekController;->mVelocityTracker:Landroidx/transition/VelocityTracker1D;

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    long-to-float p1, p1

    invoke-virtual {p0, v0, v1, p1}, Landroidx/transition/VelocityTracker1D;->addDataPoint(JF)V

    :cond_4
    :goto_1
    return-void

    .line 2786
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "setCurrentPlayTimeMillis() called after animation has been started"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
