.class public final Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;
.super Ljava/lang/Object;
.source "AndroidOverscroll.android.kt"

# interfaces
.implements Landroidx/compose/foundation/OverscrollEffect;


# instance fields
.field private containerSize:J

.field private final density:Landroidx/compose/ui/unit/Density;

.field private final edgeEffectWrapper:Landroidx/compose/foundation/EdgeEffectWrapper;

.field private final effectModifier:Landroidx/compose/ui/Modifier;

.field private invalidationEnabled:Z

.field private pointerId:J

.field private pointerPosition:J

.field private final redrawSignal:Landroidx/compose/runtime/MutableState;

.field private scrollCycleInProgress:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/compose/ui/unit/Density;Landroidx/compose/foundation/OverscrollConfiguration;)V
    .locals 2

    .line 430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 432
    iput-object p2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->density:Landroidx/compose/ui/unit/Density;

    .line 435
    sget-object p2, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->pointerPosition:J

    .line 438
    new-instance p2, Landroidx/compose/foundation/EdgeEffectWrapper;

    invoke-virtual {p3}, Landroidx/compose/foundation/OverscrollConfiguration;->getGlowColor-0d7_KjU()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->toArgb-8_81llA(J)I

    move-result p3

    invoke-direct {p2, p1, p3}, Landroidx/compose/foundation/EdgeEffectWrapper;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->edgeEffectWrapper:Landroidx/compose/foundation/EdgeEffectWrapper;

    .line 440
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->neverEqualPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object p3

    invoke-static {p1, p3}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/MutableState;

    move-result-object p3

    iput-object p3, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->redrawSignal:Landroidx/compose/runtime/MutableState;

    const/4 p3, 0x1

    .line 442
    iput-boolean p3, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->invalidationEnabled:Z

    .line 663
    sget-object p3, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    invoke-virtual {p3}, Landroidx/compose/ui/geometry/Size$Companion;->getZero-NH-jbRc()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    const-wide/16 v0, -0x1

    .line 683
    invoke-static {v0, v1}, Landroidx/compose/ui/input/pointer/PointerId;->constructor-impl(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->pointerId:J

    .line 694
    sget-object p3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    new-instance v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$effectModifier$1;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$effectModifier$1;-><init>(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;)V

    invoke-static {p3, p1, v0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    .line 719
    new-instance p3, Landroidx/compose/foundation/DrawStretchOverscrollModifier;

    .line 110
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$special$$inlined$debugInspectorInfo$1;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$special$$inlined$debugInspectorInfo$1;-><init>(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    .line 719
    :goto_0
    invoke-direct {p3, p0, p2, v0}, Landroidx/compose/foundation/DrawStretchOverscrollModifier;-><init>(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/foundation/EdgeEffectWrapper;Lkotlin/jvm/functions/Function1;)V

    .line 717
    invoke-interface {p1, p3}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->effectModifier:Landroidx/compose/ui/Modifier;

    return-void
.end method

.method public static final synthetic access$getPointerId$p(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;)J
    .locals 2

    .line 430
    iget-wide v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->pointerId:J

    return-wide v0
.end method

.method public static final synthetic access$setPointerId$p(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;J)V
    .locals 0

    .line 430
    iput-wide p1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->pointerId:J

    return-void
.end method

.method public static final synthetic access$setPointerPosition$p(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;J)V
    .locals 0

    .line 430
    iput-wide p1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->pointerPosition:J

    return-void
.end method

.method private final animateToReleaseIfNeeded()V
    .locals 5

    .line 752
    iget-object v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->edgeEffectWrapper:Landroidx/compose/foundation/EdgeEffectWrapper;

    .line 866
    invoke-static {v0}, Landroidx/compose/foundation/EdgeEffectWrapper;->access$getTopEffect$p(Landroidx/compose/foundation/EdgeEffectWrapper;)Landroid/widget/EdgeEffect;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 753
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 754
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    xor-int/2addr v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 867
    :goto_0
    invoke-static {v0}, Landroidx/compose/foundation/EdgeEffectWrapper;->access$getBottomEffect$p(Landroidx/compose/foundation/EdgeEffectWrapper;)Landroid/widget/EdgeEffect;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 753
    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 754
    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    goto :goto_2

    :cond_2
    :goto_1
    move v1, v2

    .line 868
    :cond_3
    :goto_2
    invoke-static {v0}, Landroidx/compose/foundation/EdgeEffectWrapper;->access$getLeftEffect$p(Landroidx/compose/foundation/EdgeEffectWrapper;)Landroid/widget/EdgeEffect;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 753
    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 754
    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    move v1, v3

    goto :goto_4

    :cond_5
    :goto_3
    move v1, v2

    .line 869
    :cond_6
    :goto_4
    invoke-static {v0}, Landroidx/compose/foundation/EdgeEffectWrapper;->access$getRightEffect$p(Landroidx/compose/foundation/EdgeEffectWrapper;)Landroid/widget/EdgeEffect;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 753
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 754
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz v1, :cond_7

    goto :goto_5

    :cond_7
    move v2, v3

    :cond_8
    :goto_5
    move v1, v2

    :cond_9
    if-eqz v1, :cond_a

    .line 756
    invoke-virtual {p0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->invalidateOverscroll$foundation_release()V

    :cond_a
    return-void
.end method

.method private final pullBottom-k-4lQ0M(J)F
    .locals 7

    .line 802
    invoke-virtual {p0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->displacement-F1C5BW0$foundation_release()J

    move-result-wide v0

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    .line 22
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    const-wide v1, 0xffffffffL

    and-long/2addr p1, v1

    long-to-int p1, p1

    .line 22
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    .line 803
    iget-wide v3, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    and-long/2addr v3, v1

    long-to-int v3, v3

    .line 22
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    div-float/2addr p2, v3

    .line 804
    iget-object v3, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->edgeEffectWrapper:Landroidx/compose/foundation/EdgeEffectWrapper;

    invoke-virtual {v3}, Landroidx/compose/foundation/EdgeEffectWrapper;->getOrCreateBottomEffect()Landroid/widget/EdgeEffect;

    move-result-object v3

    .line 806
    sget-object v4, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    neg-float p2, p2

    const/4 v5, 0x1

    int-to-float v5, v5

    sub-float/2addr v5, v0

    invoke-virtual {v4, v3, p2, v5}, Landroidx/compose/foundation/EdgeEffectCompat;->onPullDistanceCompat(Landroid/widget/EdgeEffect;FF)F

    move-result p2

    neg-float p2, p2

    iget-wide v5, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    and-long v0, v5, v1

    long-to-int p0, v0

    .line 22
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    mul-float/2addr p2, p0

    .line 809
    invoke-virtual {v4, v3}, Landroidx/compose/foundation/EdgeEffectCompat;->getDistanceCompat(Landroid/widget/EdgeEffect;)F

    move-result p0

    const/4 v0, 0x0

    cmpg-float p0, p0, v0

    if-nez p0, :cond_0

    goto :goto_0

    .line 22
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    :goto_0
    return p2
.end method

.method private final pullLeft-k-4lQ0M(J)F
    .locals 6

    .line 817
    invoke-virtual {p0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->displacement-F1C5BW0$foundation_release()J

    move-result-wide v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    long-to-int v0, v0

    .line 22
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    const/16 v1, 0x20

    shr-long/2addr p1, v1

    long-to-int p1, p1

    .line 22
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    .line 818
    iget-wide v2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    shr-long/2addr v2, v1

    long-to-int v2, v2

    .line 22
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    div-float/2addr p2, v2

    .line 819
    iget-object v2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->edgeEffectWrapper:Landroidx/compose/foundation/EdgeEffectWrapper;

    invoke-virtual {v2}, Landroidx/compose/foundation/EdgeEffectWrapper;->getOrCreateLeftEffect()Landroid/widget/EdgeEffect;

    move-result-object v2

    .line 821
    sget-object v3, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    const/4 v4, 0x1

    int-to-float v4, v4

    sub-float/2addr v4, v0

    invoke-virtual {v3, v2, p2, v4}, Landroidx/compose/foundation/EdgeEffectCompat;->onPullDistanceCompat(Landroid/widget/EdgeEffect;FF)F

    move-result p2

    iget-wide v4, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    shr-long v0, v4, v1

    long-to-int p0, v0

    .line 22
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    mul-float/2addr p2, p0

    .line 824
    invoke-virtual {v3, v2}, Landroidx/compose/foundation/EdgeEffectCompat;->getDistanceCompat(Landroid/widget/EdgeEffect;)F

    move-result p0

    const/4 v0, 0x0

    cmpg-float p0, p0, v0

    if-nez p0, :cond_0

    goto :goto_0

    .line 22
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    :goto_0
    return p2
.end method

.method private final pullRight-k-4lQ0M(J)F
    .locals 6

    .line 832
    invoke-virtual {p0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->displacement-F1C5BW0$foundation_release()J

    move-result-wide v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    long-to-int v0, v0

    .line 22
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    const/16 v1, 0x20

    shr-long/2addr p1, v1

    long-to-int p1, p1

    .line 22
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    .line 833
    iget-wide v2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    shr-long/2addr v2, v1

    long-to-int v2, v2

    .line 22
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    div-float/2addr p2, v2

    .line 834
    iget-object v2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->edgeEffectWrapper:Landroidx/compose/foundation/EdgeEffectWrapper;

    invoke-virtual {v2}, Landroidx/compose/foundation/EdgeEffectWrapper;->getOrCreateRightEffect()Landroid/widget/EdgeEffect;

    move-result-object v2

    .line 836
    sget-object v3, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    neg-float p2, p2

    invoke-virtual {v3, v2, p2, v0}, Landroidx/compose/foundation/EdgeEffectCompat;->onPullDistanceCompat(Landroid/widget/EdgeEffect;FF)F

    move-result p2

    neg-float p2, p2

    iget-wide v4, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    shr-long v0, v4, v1

    long-to-int p0, v0

    .line 22
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    mul-float/2addr p2, p0

    .line 839
    invoke-virtual {v3, v2}, Landroidx/compose/foundation/EdgeEffectCompat;->getDistanceCompat(Landroid/widget/EdgeEffect;)F

    move-result p0

    const/4 v0, 0x0

    cmpg-float p0, p0, v0

    if-nez p0, :cond_0

    goto :goto_0

    .line 22
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    :goto_0
    return p2
.end method

.method private final pullTop-k-4lQ0M(J)F
    .locals 7

    .line 788
    invoke-virtual {p0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->displacement-F1C5BW0$foundation_release()J

    move-result-wide v0

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    .line 22
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    const-wide v1, 0xffffffffL

    and-long/2addr p1, v1

    long-to-int p1, p1

    .line 22
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    .line 789
    iget-wide v3, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    and-long/2addr v3, v1

    long-to-int v3, v3

    .line 22
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    div-float/2addr p2, v3

    .line 790
    iget-object v3, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->edgeEffectWrapper:Landroidx/compose/foundation/EdgeEffectWrapper;

    invoke-virtual {v3}, Landroidx/compose/foundation/EdgeEffectWrapper;->getOrCreateTopEffect()Landroid/widget/EdgeEffect;

    move-result-object v3

    .line 791
    sget-object v4, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    invoke-virtual {v4, v3, p2, v0}, Landroidx/compose/foundation/EdgeEffectCompat;->onPullDistanceCompat(Landroid/widget/EdgeEffect;FF)F

    move-result p2

    iget-wide v5, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    and-long v0, v5, v1

    long-to-int p0, v0

    .line 22
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    mul-float/2addr p2, p0

    .line 794
    invoke-virtual {v4, v3}, Landroidx/compose/foundation/EdgeEffectCompat;->getDistanceCompat(Landroid/widget/EdgeEffect;)F

    move-result p0

    const/4 v0, 0x0

    cmpg-float p0, p0, v0

    if-nez p0, :cond_0

    goto :goto_0

    .line 22
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    :goto_0
    return p2
.end method

.method private final releaseOppositeOverscroll-k-4lQ0M(J)Z
    .locals 10

    .line 768
    iget-object v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->edgeEffectWrapper:Landroidx/compose/foundation/EdgeEffectWrapper;

    invoke-virtual {v0}, Landroidx/compose/foundation/EdgeEffectWrapper;->isLeftAnimating()Z

    move-result v0

    const/16 v1, 0x20

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    shr-long v4, p1, v1

    long-to-int v0, v4

    .line 22
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    cmpg-float v4, v4, v2

    if-gez v4, :cond_0

    .line 769
    sget-object v4, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    iget-object v5, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->edgeEffectWrapper:Landroidx/compose/foundation/EdgeEffectWrapper;

    invoke-virtual {v5}, Landroidx/compose/foundation/EdgeEffectWrapper;->getOrCreateLeftEffect()Landroid/widget/EdgeEffect;

    move-result-object v5

    .line 22
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 769
    invoke-virtual {v4, v5, v0}, Landroidx/compose/foundation/EdgeEffectCompat;->onReleaseWithOppositeDelta(Landroid/widget/EdgeEffect;F)V

    .line 770
    iget-object v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->edgeEffectWrapper:Landroidx/compose/foundation/EdgeEffectWrapper;

    invoke-virtual {v0}, Landroidx/compose/foundation/EdgeEffectWrapper;->isLeftAnimating()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v3

    .line 772
    :goto_0
    iget-object v4, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->edgeEffectWrapper:Landroidx/compose/foundation/EdgeEffectWrapper;

    invoke-virtual {v4}, Landroidx/compose/foundation/EdgeEffectWrapper;->isRightAnimating()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    shr-long v6, p1, v1

    long-to-int v1, v6

    .line 22
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    cmpl-float v4, v4, v2

    if-lez v4, :cond_3

    .line 773
    sget-object v4, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    iget-object v6, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->edgeEffectWrapper:Landroidx/compose/foundation/EdgeEffectWrapper;

    invoke-virtual {v6}, Landroidx/compose/foundation/EdgeEffectWrapper;->getOrCreateRightEffect()Landroid/widget/EdgeEffect;

    move-result-object v6

    .line 22
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    .line 773
    invoke-virtual {v4, v6, v1}, Landroidx/compose/foundation/EdgeEffectCompat;->onReleaseWithOppositeDelta(Landroid/widget/EdgeEffect;F)V

    if-nez v0, :cond_2

    .line 774
    iget-object v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->edgeEffectWrapper:Landroidx/compose/foundation/EdgeEffectWrapper;

    invoke-virtual {v0}, Landroidx/compose/foundation/EdgeEffectWrapper;->isRightAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v3

    goto :goto_2

    :cond_2
    :goto_1
    move v0, v5

    .line 776
    :cond_3
    :goto_2
    iget-object v1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->edgeEffectWrapper:Landroidx/compose/foundation/EdgeEffectWrapper;

    invoke-virtual {v1}, Landroidx/compose/foundation/EdgeEffectWrapper;->isTopAnimating()Z

    move-result v1

    const-wide v6, 0xffffffffL

    if-eqz v1, :cond_6

    and-long v8, p1, v6

    long-to-int v1, v8

    .line 22
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    cmpg-float v4, v4, v2

    if-gez v4, :cond_6

    .line 777
    sget-object v4, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    iget-object v8, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->edgeEffectWrapper:Landroidx/compose/foundation/EdgeEffectWrapper;

    invoke-virtual {v8}, Landroidx/compose/foundation/EdgeEffectWrapper;->getOrCreateTopEffect()Landroid/widget/EdgeEffect;

    move-result-object v8

    .line 22
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    .line 777
    invoke-virtual {v4, v8, v1}, Landroidx/compose/foundation/EdgeEffectCompat;->onReleaseWithOppositeDelta(Landroid/widget/EdgeEffect;F)V

    if-nez v0, :cond_5

    .line 778
    iget-object v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->edgeEffectWrapper:Landroidx/compose/foundation/EdgeEffectWrapper;

    invoke-virtual {v0}, Landroidx/compose/foundation/EdgeEffectWrapper;->isTopAnimating()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    move v0, v3

    goto :goto_4

    :cond_5
    :goto_3
    move v0, v5

    .line 780
    :cond_6
    :goto_4
    iget-object v1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->edgeEffectWrapper:Landroidx/compose/foundation/EdgeEffectWrapper;

    invoke-virtual {v1}, Landroidx/compose/foundation/EdgeEffectWrapper;->isBottomAnimating()Z

    move-result v1

    if-eqz v1, :cond_9

    and-long/2addr p1, v6

    long-to-int p1, p1

    .line 22
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    cmpl-float p2, p2, v2

    if-lez p2, :cond_9

    .line 781
    sget-object p2, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    iget-object v1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->edgeEffectWrapper:Landroidx/compose/foundation/EdgeEffectWrapper;

    invoke-virtual {v1}, Landroidx/compose/foundation/EdgeEffectWrapper;->getOrCreateBottomEffect()Landroid/widget/EdgeEffect;

    move-result-object v1

    .line 22
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    .line 781
    invoke-virtual {p2, v1, p1}, Landroidx/compose/foundation/EdgeEffectCompat;->onReleaseWithOppositeDelta(Landroid/widget/EdgeEffect;F)V

    if-nez v0, :cond_7

    .line 782
    iget-object p0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->edgeEffectWrapper:Landroidx/compose/foundation/EdgeEffectWrapper;

    invoke-virtual {p0}, Landroidx/compose/foundation/EdgeEffectWrapper;->isBottomAnimating()Z

    move-result p0

    if-eqz p0, :cond_8

    :cond_7
    move v3, v5

    :cond_8
    move v0, v3

    :cond_9
    return v0
.end method


# virtual methods
.method public applyToFling-BMRW4eQ(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 14

    move-object v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    instance-of v3, v2, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$applyToFling$1;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$applyToFling$1;

    iget v4, v3, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$applyToFling$1;->label:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$applyToFling$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v3, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$applyToFling$1;

    invoke-direct {v3, p0, v2}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$applyToFling$1;-><init>(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v2, v3, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$applyToFling$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 594
    iget v5, v3, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$applyToFling$1;->label:I

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v5, :cond_3

    if-eq v5, v7, :cond_2

    if-ne v5, v6, :cond_1

    iget-wide v0, v3, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$applyToFling$1;->J$0:J

    iget-object v3, v3, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$applyToFling$1;->L$0:Ljava/lang/Object;

    check-cast v3, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-wide v9, v0

    move-object v0, v3

    goto/16 :goto_4

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 599
    iget-wide v9, v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    invoke-static {v9, v10}, Landroidx/compose/ui/geometry/Size;->isEmpty-impl(J)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 600
    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/unit/Velocity;->box-impl(J)Landroidx/compose/ui/unit/Velocity;

    move-result-object v0

    iput v7, v3, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$applyToFling$1;->label:I

    invoke-interface {v1, v0, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_4

    return-object v4

    .line 601
    :cond_4
    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 605
    :cond_5
    iget-object v2, v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->edgeEffectWrapper:Landroidx/compose/foundation/EdgeEffectWrapper;

    invoke-virtual {v2}, Landroidx/compose/foundation/EdgeEffectWrapper;->isLeftStretched()Z

    move-result v2

    const/16 v5, 0x20

    if-eqz v2, :cond_6

    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/unit/Velocity;->getX-impl(J)F

    move-result v2

    cmpg-float v2, v2, v8

    if-gez v2, :cond_6

    .line 608
    sget-object v2, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    .line 606
    iget-object v7, v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->edgeEffectWrapper:Landroidx/compose/foundation/EdgeEffectWrapper;

    .line 607
    invoke-virtual {v7}, Landroidx/compose/foundation/EdgeEffectWrapper;->getOrCreateLeftEffect()Landroid/widget/EdgeEffect;

    move-result-object v7

    .line 608
    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/unit/Velocity;->getX-impl(J)F

    move-result v9

    iget-wide v10, v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    shr-long/2addr v10, v5

    long-to-int v5, v10

    .line 22
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    .line 608
    iget-object v10, v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->density:Landroidx/compose/ui/unit/Density;

    invoke-virtual {v2, v7, v9, v5, v10}, Landroidx/compose/foundation/EdgeEffectCompat;->absorbToRelaxIfNeeded(Landroid/widget/EdgeEffect;FFLandroidx/compose/ui/unit/Density;)F

    move-result v2

    goto :goto_2

    .line 609
    :cond_6
    iget-object v2, v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->edgeEffectWrapper:Landroidx/compose/foundation/EdgeEffectWrapper;

    invoke-virtual {v2}, Landroidx/compose/foundation/EdgeEffectWrapper;->isRightStretched()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/unit/Velocity;->getX-impl(J)F

    move-result v2

    cmpl-float v2, v2, v8

    if-lez v2, :cond_7

    .line 612
    sget-object v2, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    .line 610
    iget-object v7, v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->edgeEffectWrapper:Landroidx/compose/foundation/EdgeEffectWrapper;

    .line 611
    invoke-virtual {v7}, Landroidx/compose/foundation/EdgeEffectWrapper;->getOrCreateRightEffect()Landroid/widget/EdgeEffect;

    move-result-object v7

    .line 612
    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/unit/Velocity;->getX-impl(J)F

    move-result v9

    neg-float v9, v9

    iget-wide v10, v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    shr-long/2addr v10, v5

    long-to-int v5, v10

    .line 22
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    .line 612
    iget-object v10, v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->density:Landroidx/compose/ui/unit/Density;

    invoke-virtual {v2, v7, v9, v5, v10}, Landroidx/compose/foundation/EdgeEffectCompat;->absorbToRelaxIfNeeded(Landroid/widget/EdgeEffect;FFLandroidx/compose/ui/unit/Density;)F

    move-result v2

    neg-float v2, v2

    goto :goto_2

    :cond_7
    move v2, v8

    .line 617
    :goto_2
    iget-object v5, v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->edgeEffectWrapper:Landroidx/compose/foundation/EdgeEffectWrapper;

    invoke-virtual {v5}, Landroidx/compose/foundation/EdgeEffectWrapper;->isTopStretched()Z

    move-result v5

    const-wide v9, 0xffffffffL

    if-eqz v5, :cond_8

    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/unit/Velocity;->getY-impl(J)F

    move-result v5

    cmpg-float v5, v5, v8

    if-gez v5, :cond_8

    .line 620
    sget-object v5, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    .line 618
    iget-object v7, v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->edgeEffectWrapper:Landroidx/compose/foundation/EdgeEffectWrapper;

    .line 619
    invoke-virtual {v7}, Landroidx/compose/foundation/EdgeEffectWrapper;->getOrCreateTopEffect()Landroid/widget/EdgeEffect;

    move-result-object v7

    .line 620
    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/unit/Velocity;->getY-impl(J)F

    move-result v11

    iget-wide v12, v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    and-long/2addr v9, v12

    long-to-int v9, v9

    .line 22
    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v9

    .line 620
    iget-object v10, v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->density:Landroidx/compose/ui/unit/Density;

    invoke-virtual {v5, v7, v11, v9, v10}, Landroidx/compose/foundation/EdgeEffectCompat;->absorbToRelaxIfNeeded(Landroid/widget/EdgeEffect;FFLandroidx/compose/ui/unit/Density;)F

    move-result v5

    goto :goto_3

    .line 621
    :cond_8
    iget-object v5, v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->edgeEffectWrapper:Landroidx/compose/foundation/EdgeEffectWrapper;

    invoke-virtual {v5}, Landroidx/compose/foundation/EdgeEffectWrapper;->isBottomStretched()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/unit/Velocity;->getY-impl(J)F

    move-result v5

    cmpl-float v5, v5, v8

    if-lez v5, :cond_9

    .line 624
    sget-object v5, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    .line 622
    iget-object v7, v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->edgeEffectWrapper:Landroidx/compose/foundation/EdgeEffectWrapper;

    .line 623
    invoke-virtual {v7}, Landroidx/compose/foundation/EdgeEffectWrapper;->getOrCreateBottomEffect()Landroid/widget/EdgeEffect;

    move-result-object v7

    .line 624
    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/unit/Velocity;->getY-impl(J)F

    move-result v11

    neg-float v11, v11

    iget-wide v12, v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    and-long/2addr v9, v12

    long-to-int v9, v9

    .line 22
    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v9

    .line 624
    iget-object v10, v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->density:Landroidx/compose/ui/unit/Density;

    invoke-virtual {v5, v7, v11, v9, v10}, Landroidx/compose/foundation/EdgeEffectCompat;->absorbToRelaxIfNeeded(Landroid/widget/EdgeEffect;FFLandroidx/compose/ui/unit/Density;)F

    move-result v5

    neg-float v5, v5

    goto :goto_3

    :cond_9
    move v5, v8

    .line 628
    :goto_3
    invoke-static {v2, v5}, Landroidx/compose/ui/unit/VelocityKt;->Velocity(FF)J

    move-result-wide v9

    .line 629
    sget-object v2, Landroidx/compose/ui/unit/Velocity;->Companion:Landroidx/compose/ui/unit/Velocity$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/unit/Velocity$Companion;->getZero-9UxMQ8M()J

    move-result-wide v11

    invoke-static {v9, v10, v11, v12}, Landroidx/compose/ui/unit/Velocity;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {p0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->invalidateOverscroll$foundation_release()V

    :cond_a
    move-wide v11, p1

    .line 631
    invoke-static {v11, v12, v9, v10}, Landroidx/compose/ui/unit/Velocity;->minus-AH228Gc(JJ)J

    move-result-wide v9

    .line 632
    invoke-static {v9, v10}, Landroidx/compose/ui/unit/Velocity;->box-impl(J)Landroidx/compose/ui/unit/Velocity;

    move-result-object v2

    iput-object v0, v3, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$applyToFling$1;->L$0:Ljava/lang/Object;

    iput-wide v9, v3, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$applyToFling$1;->J$0:J

    iput v6, v3, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$applyToFling$1;->label:I

    invoke-interface {v1, v2, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_b

    return-object v4

    :cond_b
    :goto_4
    check-cast v2, Landroidx/compose/ui/unit/Velocity;

    invoke-virtual {v2}, Landroidx/compose/ui/unit/Velocity;->unbox-impl()J

    move-result-wide v1

    .line 633
    invoke-static {v9, v10, v1, v2}, Landroidx/compose/ui/unit/Velocity;->minus-AH228Gc(JJ)J

    move-result-wide v1

    const/4 v3, 0x0

    .line 635
    iput-boolean v3, v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->scrollCycleInProgress:Z

    .line 637
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Velocity;->getX-impl(J)F

    move-result v3

    cmpl-float v3, v3, v8

    if-lez v3, :cond_c

    .line 640
    sget-object v3, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    .line 638
    iget-object v4, v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->edgeEffectWrapper:Landroidx/compose/foundation/EdgeEffectWrapper;

    .line 639
    invoke-virtual {v4}, Landroidx/compose/foundation/EdgeEffectWrapper;->getOrCreateLeftEffect()Landroid/widget/EdgeEffect;

    move-result-object v4

    .line 640
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Velocity;->getX-impl(J)F

    move-result v5

    invoke-static {v5}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroidx/compose/foundation/EdgeEffectCompat;->onAbsorbCompat(Landroid/widget/EdgeEffect;I)V

    goto :goto_5

    .line 641
    :cond_c
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Velocity;->getX-impl(J)F

    move-result v3

    cmpg-float v3, v3, v8

    if-gez v3, :cond_d

    .line 644
    sget-object v3, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    .line 642
    iget-object v4, v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->edgeEffectWrapper:Landroidx/compose/foundation/EdgeEffectWrapper;

    .line 643
    invoke-virtual {v4}, Landroidx/compose/foundation/EdgeEffectWrapper;->getOrCreateRightEffect()Landroid/widget/EdgeEffect;

    move-result-object v4

    .line 644
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Velocity;->getX-impl(J)F

    move-result v5

    invoke-static {v5}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v5

    neg-int v5, v5

    invoke-virtual {v3, v4, v5}, Landroidx/compose/foundation/EdgeEffectCompat;->onAbsorbCompat(Landroid/widget/EdgeEffect;I)V

    .line 646
    :cond_d
    :goto_5
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Velocity;->getY-impl(J)F

    move-result v3

    cmpl-float v3, v3, v8

    if-lez v3, :cond_e

    .line 649
    sget-object v3, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    .line 647
    iget-object v4, v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->edgeEffectWrapper:Landroidx/compose/foundation/EdgeEffectWrapper;

    .line 648
    invoke-virtual {v4}, Landroidx/compose/foundation/EdgeEffectWrapper;->getOrCreateTopEffect()Landroid/widget/EdgeEffect;

    move-result-object v4

    .line 649
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Velocity;->getY-impl(J)F

    move-result v1

    invoke-static {v1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v1

    invoke-virtual {v3, v4, v1}, Landroidx/compose/foundation/EdgeEffectCompat;->onAbsorbCompat(Landroid/widget/EdgeEffect;I)V

    goto :goto_6

    .line 650
    :cond_e
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Velocity;->getY-impl(J)F

    move-result v3

    cmpg-float v3, v3, v8

    if-gez v3, :cond_f

    .line 653
    sget-object v3, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    .line 651
    iget-object v4, v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->edgeEffectWrapper:Landroidx/compose/foundation/EdgeEffectWrapper;

    .line 652
    invoke-virtual {v4}, Landroidx/compose/foundation/EdgeEffectWrapper;->getOrCreateBottomEffect()Landroid/widget/EdgeEffect;

    move-result-object v4

    .line 653
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Velocity;->getY-impl(J)F

    move-result v1

    invoke-static {v1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v3, v4, v1}, Landroidx/compose/foundation/EdgeEffectCompat;->onAbsorbCompat(Landroid/widget/EdgeEffect;I)V

    .line 660
    :cond_f
    :goto_6
    invoke-direct {v0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->animateToReleaseIfNeeded()V

    .line 661
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public applyToScroll-Rhakbz0(JILkotlin/jvm/functions/Function1;)J
    .locals 17

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p4

    .line 452
    iget-wide v4, v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Size;->isEmpty-impl(J)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 453
    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v0

    invoke-interface {v3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/geometry/Offset;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v0

    return-wide v0

    .line 456
    :cond_0
    iget-boolean v4, v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->scrollCycleInProgress:Z

    const/4 v5, 0x1

    if-nez v4, :cond_5

    .line 462
    iget-object v4, v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->edgeEffectWrapper:Landroidx/compose/foundation/EdgeEffectWrapper;

    invoke-virtual {v4}, Landroidx/compose/foundation/EdgeEffectWrapper;->isLeftStretched()Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v6

    invoke-direct {v0, v6, v7}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->pullLeft-k-4lQ0M(J)F

    .line 463
    :cond_1
    iget-object v4, v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->edgeEffectWrapper:Landroidx/compose/foundation/EdgeEffectWrapper;

    invoke-virtual {v4}, Landroidx/compose/foundation/EdgeEffectWrapper;->isRightStretched()Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v6

    invoke-direct {v0, v6, v7}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->pullRight-k-4lQ0M(J)F

    .line 464
    :cond_2
    iget-object v4, v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->edgeEffectWrapper:Landroidx/compose/foundation/EdgeEffectWrapper;

    invoke-virtual {v4}, Landroidx/compose/foundation/EdgeEffectWrapper;->isTopStretched()Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v6

    invoke-direct {v0, v6, v7}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->pullTop-k-4lQ0M(J)F

    .line 465
    :cond_3
    iget-object v4, v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->edgeEffectWrapper:Landroidx/compose/foundation/EdgeEffectWrapper;

    invoke-virtual {v4}, Landroidx/compose/foundation/EdgeEffectWrapper;->isBottomStretched()Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v6

    invoke-direct {v0, v6, v7}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->pullBottom-k-4lQ0M(J)F

    .line 466
    :cond_4
    iput-boolean v5, v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->scrollCycleInProgress:Z

    .line 470
    :cond_5
    invoke-static/range {p3 .. p3}, Landroidx/compose/foundation/AndroidOverscroll_androidKt;->access$destretchMultiplier-GyEprt8(I)F

    move-result v4

    .line 471
    invoke-static {v1, v2, v4}, Landroidx/compose/ui/geometry/Offset;->times-tuRUvjQ(JF)J

    move-result-wide v6

    const-wide v8, 0xffffffffL

    and-long v10, v1, v8

    long-to-int v10, v10

    .line 22
    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v11

    const/4 v12, 0x0

    cmpg-float v11, v11, v12

    if-nez v11, :cond_7

    :cond_6
    move v10, v12

    goto :goto_0

    .line 475
    :cond_7
    iget-object v11, v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->edgeEffectWrapper:Landroidx/compose/foundation/EdgeEffectWrapper;

    invoke-virtual {v11}, Landroidx/compose/foundation/EdgeEffectWrapper;->isTopStretched()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 22
    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v11

    cmpg-float v11, v11, v12

    if-gez v11, :cond_a

    .line 477
    invoke-direct {v0, v6, v7}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->pullTop-k-4lQ0M(J)F

    move-result v11

    .line 479
    iget-object v13, v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->edgeEffectWrapper:Landroidx/compose/foundation/EdgeEffectWrapper;

    invoke-virtual {v13}, Landroidx/compose/foundation/EdgeEffectWrapper;->isTopStretched()Z

    move-result v13

    if-nez v13, :cond_8

    .line 480
    iget-object v13, v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->edgeEffectWrapper:Landroidx/compose/foundation/EdgeEffectWrapper;

    invoke-virtual {v13}, Landroidx/compose/foundation/EdgeEffectWrapper;->getOrCreateTopEffect()Landroid/widget/EdgeEffect;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/EdgeEffect;->finish()V

    :cond_8
    and-long v13, v6, v8

    long-to-int v13, v13

    .line 22
    invoke-static {v13}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v13

    cmpg-float v13, v11, v13

    if-nez v13, :cond_9

    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v10

    goto :goto_0

    :cond_9
    div-float v10, v11, v4

    goto :goto_0

    .line 486
    :cond_a
    iget-object v11, v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->edgeEffectWrapper:Landroidx/compose/foundation/EdgeEffectWrapper;

    invoke-virtual {v11}, Landroidx/compose/foundation/EdgeEffectWrapper;->isBottomStretched()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 22
    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v11

    cmpl-float v11, v11, v12

    if-lez v11, :cond_6

    .line 488
    invoke-direct {v0, v6, v7}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->pullBottom-k-4lQ0M(J)F

    move-result v11

    .line 490
    iget-object v13, v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->edgeEffectWrapper:Landroidx/compose/foundation/EdgeEffectWrapper;

    invoke-virtual {v13}, Landroidx/compose/foundation/EdgeEffectWrapper;->isBottomStretched()Z

    move-result v13

    if-nez v13, :cond_b

    .line 491
    iget-object v13, v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->edgeEffectWrapper:Landroidx/compose/foundation/EdgeEffectWrapper;

    invoke-virtual {v13}, Landroidx/compose/foundation/EdgeEffectWrapper;->getOrCreateBottomEffect()Landroid/widget/EdgeEffect;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/EdgeEffect;->finish()V

    :cond_b
    and-long v13, v6, v8

    long-to-int v13, v13

    .line 22
    invoke-static {v13}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v13

    cmpg-float v13, v11, v13

    if-nez v13, :cond_9

    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v10

    :goto_0
    const/16 v11, 0x20

    shr-long v13, v1, v11

    long-to-int v13, v13

    .line 22
    invoke-static {v13}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v14

    cmpg-float v14, v14, v12

    if-nez v14, :cond_d

    :cond_c
    move v4, v12

    goto :goto_1

    .line 502
    :cond_d
    iget-object v14, v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->edgeEffectWrapper:Landroidx/compose/foundation/EdgeEffectWrapper;

    invoke-virtual {v14}, Landroidx/compose/foundation/EdgeEffectWrapper;->isLeftStretched()Z

    move-result v14

    if-eqz v14, :cond_10

    .line 22
    invoke-static {v13}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v14

    cmpg-float v14, v14, v12

    if-gez v14, :cond_10

    .line 504
    invoke-direct {v0, v6, v7}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->pullLeft-k-4lQ0M(J)F

    move-result v14

    .line 506
    iget-object v15, v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->edgeEffectWrapper:Landroidx/compose/foundation/EdgeEffectWrapper;

    invoke-virtual {v15}, Landroidx/compose/foundation/EdgeEffectWrapper;->isLeftStretched()Z

    move-result v15

    if-nez v15, :cond_e

    .line 507
    iget-object v15, v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->edgeEffectWrapper:Landroidx/compose/foundation/EdgeEffectWrapper;

    invoke-virtual {v15}, Landroidx/compose/foundation/EdgeEffectWrapper;->getOrCreateLeftEffect()Landroid/widget/EdgeEffect;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/EdgeEffect;->finish()V

    :cond_e
    shr-long/2addr v6, v11

    long-to-int v6, v6

    .line 22
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    cmpg-float v6, v14, v6

    if-nez v6, :cond_f

    invoke-static {v13}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    goto :goto_1

    :cond_f
    div-float v4, v14, v4

    goto :goto_1

    .line 513
    :cond_10
    iget-object v14, v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->edgeEffectWrapper:Landroidx/compose/foundation/EdgeEffectWrapper;

    invoke-virtual {v14}, Landroidx/compose/foundation/EdgeEffectWrapper;->isRightStretched()Z

    move-result v14

    if-eqz v14, :cond_c

    .line 22
    invoke-static {v13}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v14

    cmpl-float v14, v14, v12

    if-lez v14, :cond_c

    .line 515
    invoke-direct {v0, v6, v7}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->pullRight-k-4lQ0M(J)F

    move-result v14

    .line 517
    iget-object v15, v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->edgeEffectWrapper:Landroidx/compose/foundation/EdgeEffectWrapper;

    invoke-virtual {v15}, Landroidx/compose/foundation/EdgeEffectWrapper;->isRightStretched()Z

    move-result v15

    if-nez v15, :cond_11

    .line 518
    iget-object v15, v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->edgeEffectWrapper:Landroidx/compose/foundation/EdgeEffectWrapper;

    invoke-virtual {v15}, Landroidx/compose/foundation/EdgeEffectWrapper;->getOrCreateRightEffect()Landroid/widget/EdgeEffect;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/EdgeEffect;->finish()V

    :cond_11
    shr-long/2addr v6, v11

    long-to-int v6, v6

    .line 22
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    cmpg-float v6, v14, v6

    if-nez v6, :cond_f

    invoke-static {v13}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    .line 53
    :goto_1
    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    int-to-long v6, v4

    .line 54
    invoke-static {v10}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    int-to-long v13, v4

    shl-long/2addr v6, v11

    and-long/2addr v13, v8

    or-long/2addr v6, v13

    .line 30
    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v6

    .line 527
    sget-object v4, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v13

    invoke-static {v6, v7, v13, v14}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    move-result v10

    if-nez v10, :cond_12

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->invalidateOverscroll$foundation_release()V

    .line 529
    :cond_12
    invoke-static {v1, v2, v6, v7}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v13

    .line 530
    invoke-static {v13, v14}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v10

    invoke-interface {v3, v10}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/geometry/Offset;

    move-wide v15, v6

    invoke-virtual {v3}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v5

    .line 531
    invoke-static {v13, v14, v5, v6}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v8

    shr-long v1, v13, v11

    long-to-int v1, v1

    .line 22
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    cmpg-float v1, v1, v12

    if-nez v1, :cond_14

    const-wide v1, 0xffffffffL

    and-long v10, v13, v1

    long-to-int v1, v10

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    cmpg-float v1, v1, v12

    if-nez v1, :cond_13

    goto :goto_3

    :cond_13
    const/16 v1, 0x20

    goto :goto_2

    :cond_14
    move v1, v11

    :goto_2
    shr-long v10, v5, v1

    long-to-int v1, v10

    .line 22
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    cmpg-float v1, v1, v12

    if-nez v1, :cond_15

    const-wide v1, 0xffffffffL

    and-long v10, v5, v1

    long-to-int v1, v10

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    cmpg-float v1, v1, v12

    if-nez v1, :cond_15

    goto :goto_3

    .line 543
    :cond_15
    iget-object v1, v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->edgeEffectWrapper:Landroidx/compose/foundation/EdgeEffectWrapper;

    .line 545
    invoke-virtual {v1}, Landroidx/compose/foundation/EdgeEffectWrapper;->isLeftStretched()Z

    move-result v2

    if-nez v2, :cond_16

    .line 546
    invoke-virtual {v1}, Landroidx/compose/foundation/EdgeEffectWrapper;->isTopStretched()Z

    move-result v2

    if-nez v2, :cond_16

    .line 547
    invoke-virtual {v1}, Landroidx/compose/foundation/EdgeEffectWrapper;->isRightStretched()Z

    move-result v2

    if-nez v2, :cond_16

    .line 548
    invoke-virtual {v1}, Landroidx/compose/foundation/EdgeEffectWrapper;->isBottomStretched()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 550
    :cond_16
    invoke-direct/range {p0 .. p0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->animateToReleaseIfNeeded()V

    .line 556
    :cond_17
    :goto_3
    sget-object v1, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;->Companion:Landroidx/compose/ui/input/nestedscroll/NestedScrollSource$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource$Companion;->getUserInput-WNlRxjI()I

    move-result v1

    move/from16 v2, p3

    invoke-static {v2, v1}, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;->equals-impl0(II)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1d

    const/16 v1, 0x20

    shr-long v10, v8, v1

    long-to-int v1, v10

    .line 22
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    const/high16 v7, 0x3f000000    # 0.5f

    cmpl-float v3, v3, v7

    const/high16 v10, -0x41000000    # -0.5f

    if-lez v3, :cond_18

    .line 561
    invoke-direct {v0, v8, v9}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->pullLeft-k-4lQ0M(J)F

    :goto_4
    const/4 v1, 0x1

    :goto_5
    const-wide v11, 0xffffffffL

    goto :goto_6

    .line 22
    :cond_18
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    cmpg-float v1, v1, v10

    if-gez v1, :cond_19

    .line 564
    invoke-direct {v0, v8, v9}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->pullRight-k-4lQ0M(J)F

    goto :goto_4

    :cond_19
    move v1, v2

    goto :goto_5

    :goto_6
    and-long/2addr v11, v8

    long-to-int v3, v11

    .line 22
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v11

    cmpl-float v7, v11, v7

    if-lez v7, :cond_1a

    .line 571
    invoke-direct {v0, v8, v9}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->pullTop-k-4lQ0M(J)F

    :goto_7
    const/4 v3, 0x1

    goto :goto_8

    .line 22
    :cond_1a
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    cmpg-float v3, v3, v10

    if-gez v3, :cond_1b

    .line 574
    invoke-direct {v0, v8, v9}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->pullBottom-k-4lQ0M(J)F

    goto :goto_7

    :cond_1b
    move v3, v2

    :goto_8
    if-nez v1, :cond_1c

    if-eqz v3, :cond_1d

    :cond_1c
    const/4 v1, 0x1

    goto :goto_9

    :cond_1d
    move v1, v2

    .line 586
    :goto_9
    invoke-virtual {v4}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v3

    invoke-static {v13, v14, v3, v4}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    move-result v3

    if-nez v3, :cond_20

    .line 587
    invoke-direct/range {p0 .. p2}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->releaseOppositeOverscroll-k-4lQ0M(J)Z

    move-result v3

    if-nez v3, :cond_1e

    if-eqz v1, :cond_1f

    :cond_1e
    const/4 v2, 0x1

    :cond_1f
    move v1, v2

    :cond_20
    if-eqz v1, :cond_21

    .line 589
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->invalidateOverscroll$foundation_release()V

    :cond_21
    move-wide v0, v15

    .line 591
    invoke-static {v0, v1, v5, v6}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final displacement-F1C5BW0$foundation_release()J
    .locals 8

    .line 687
    iget-wide v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->pointerPosition:J

    const-wide v2, 0x7fffffff7fffffffL

    and-long/2addr v2, v0

    const-wide v4, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/SizeKt;->getCenter-uvyYCjk(J)J

    move-result-wide v0

    :goto_0
    const/16 v2, 0x20

    shr-long v3, v0, v2

    long-to-int v3, v3

    .line 22
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    .line 688
    iget-wide v4, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    shr-long/2addr v4, v2

    long-to-int v4, v4

    .line 22
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    div-float/2addr v3, v4

    const-wide v4, 0xffffffffL

    and-long/2addr v0, v4

    long-to-int v0, v0

    .line 22
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 689
    iget-wide v6, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    and-long/2addr v6, v4

    long-to-int p0, v6

    .line 22
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    div-float/2addr v0, p0

    .line 53
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v6, p0

    .line 54
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v0, p0

    shl-long v2, v6, v2

    and-long/2addr v0, v4

    or-long/2addr v0, v2

    .line 30
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getEffectModifier()Landroidx/compose/ui/Modifier;
    .locals 0

    .line 693
    iget-object p0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->effectModifier:Landroidx/compose/ui/Modifier;

    return-object p0
.end method

.method public final getRedrawSignal$foundation_release()Landroidx/compose/runtime/MutableState;
    .locals 0

    .line 440
    iget-object p0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->redrawSignal:Landroidx/compose/runtime/MutableState;

    return-object p0
.end method

.method public final invalidateOverscroll$foundation_release()V
    .locals 1

    .line 741
    iget-boolean v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->invalidationEnabled:Z

    if-eqz v0, :cond_0

    .line 742
    iget-object p0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->redrawSignal:Landroidx/compose/runtime/MutableState;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {p0, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public isInProgress()Z
    .locals 4

    .line 667
    iget-object p0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->edgeEffectWrapper:Landroidx/compose/foundation/EdgeEffectWrapper;

    .line 866
    invoke-static {p0}, Landroidx/compose/foundation/EdgeEffectWrapper;->access$getTopEffect$p(Landroidx/compose/foundation/EdgeEffectWrapper;)Landroid/widget/EdgeEffect;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 667
    sget-object v3, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    invoke-virtual {v3, v0}, Landroidx/compose/foundation/EdgeEffectCompat;->getDistanceCompat(Landroid/widget/EdgeEffect;)F

    move-result v0

    cmpg-float v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    .line 867
    :cond_1
    :goto_0
    invoke-static {p0}, Landroidx/compose/foundation/EdgeEffectWrapper;->access$getBottomEffect$p(Landroidx/compose/foundation/EdgeEffectWrapper;)Landroid/widget/EdgeEffect;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 667
    sget-object v3, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    invoke-virtual {v3, v0}, Landroidx/compose/foundation/EdgeEffectCompat;->getDistanceCompat(Landroid/widget/EdgeEffect;)F

    move-result v0

    cmpg-float v0, v0, v2

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    return v1

    .line 868
    :cond_3
    :goto_1
    invoke-static {p0}, Landroidx/compose/foundation/EdgeEffectWrapper;->access$getLeftEffect$p(Landroidx/compose/foundation/EdgeEffectWrapper;)Landroid/widget/EdgeEffect;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 667
    sget-object v3, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    invoke-virtual {v3, v0}, Landroidx/compose/foundation/EdgeEffectCompat;->getDistanceCompat(Landroid/widget/EdgeEffect;)F

    move-result v0

    cmpg-float v0, v0, v2

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    return v1

    .line 869
    :cond_5
    :goto_2
    invoke-static {p0}, Landroidx/compose/foundation/EdgeEffectWrapper;->access$getRightEffect$p(Landroidx/compose/foundation/EdgeEffectWrapper;)Landroid/widget/EdgeEffect;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 667
    sget-object v0, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    invoke-virtual {v0, p0}, Landroidx/compose/foundation/EdgeEffectCompat;->getDistanceCompat(Landroid/widget/EdgeEffect;)F

    move-result p0

    cmpg-float p0, p0, v2

    if-nez p0, :cond_6

    goto :goto_3

    :cond_6
    return v1

    :cond_7
    :goto_3
    const/4 p0, 0x0

    return p0
.end method

.method public final updateSize-uvyYCjk$foundation_release(J)V
    .locals 9

    .line 672
    iget-wide v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    sget-object v2, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Size$Companion;->getZero-NH-jbRc()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/geometry/Size;->equals-impl0(JJ)Z

    move-result v0

    .line 673
    iget-wide v1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    invoke-static {p1, p2, v1, v2}, Landroidx/compose/ui/geometry/Size;->equals-impl0(JJ)Z

    move-result v1

    .line 674
    iput-wide p1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    if-nez v1, :cond_0

    .line 676
    iget-object v2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->edgeEffectWrapper:Landroidx/compose/foundation/EdgeEffectWrapper;

    const/16 v3, 0x20

    shr-long v4, p1, v3

    long-to-int v4, v4

    .line 22
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    .line 676
    invoke-static {v4}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v4

    const-wide v5, 0xffffffffL

    and-long/2addr p1, v5

    long-to-int p1, p1

    .line 22
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    .line 676
    invoke-static {p1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p1

    int-to-long v7, v4

    shl-long v3, v7, v3

    int-to-long p1, p1

    and-long/2addr p1, v5

    or-long/2addr p1, v3

    .line 30
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntSize;->constructor-impl(J)J

    move-result-wide p1

    .line 676
    invoke-virtual {v2, p1, p2}, Landroidx/compose/foundation/EdgeEffectWrapper;->updateSize-ozmzZPI(J)V

    :cond_0
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 679
    invoke-direct {p0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->animateToReleaseIfNeeded()V

    :cond_1
    return-void
.end method
