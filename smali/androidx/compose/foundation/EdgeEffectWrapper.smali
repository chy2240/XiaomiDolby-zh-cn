.class final Landroidx/compose/foundation/EdgeEffectWrapper;
.super Ljava/lang/Object;
.source "AndroidOverscroll.android.kt"


# instance fields
.field private bottomEffect:Landroid/widget/EdgeEffect;

.field private bottomEffectNegation:Landroid/widget/EdgeEffect;

.field private final context:Landroid/content/Context;

.field private final glowColor:I

.field private leftEffect:Landroid/widget/EdgeEffect;

.field private leftEffectNegation:Landroid/widget/EdgeEffect;

.field private rightEffect:Landroid/widget/EdgeEffect;

.field private rightEffectNegation:Landroid/widget/EdgeEffect;

.field private size:J

.field private topEffect:Landroid/widget/EdgeEffect;

.field private topEffectNegation:Landroid/widget/EdgeEffect;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 848
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 849
    iput-object p1, p0, Landroidx/compose/foundation/EdgeEffectWrapper;->context:Landroid/content/Context;

    .line 850
    iput p2, p0, Landroidx/compose/foundation/EdgeEffectWrapper;->glowColor:I

    .line 852
    sget-object p1, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntSize$Companion;->getZero-YbymL2g()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/compose/foundation/EdgeEffectWrapper;->size:J

    return-void
.end method

.method public static final synthetic access$getBottomEffect$p(Landroidx/compose/foundation/EdgeEffectWrapper;)Landroid/widget/EdgeEffect;
    .locals 0

    .line 848
    iget-object p0, p0, Landroidx/compose/foundation/EdgeEffectWrapper;->bottomEffect:Landroid/widget/EdgeEffect;

    return-object p0
.end method

.method public static final synthetic access$getLeftEffect$p(Landroidx/compose/foundation/EdgeEffectWrapper;)Landroid/widget/EdgeEffect;
    .locals 0

    .line 848
    iget-object p0, p0, Landroidx/compose/foundation/EdgeEffectWrapper;->leftEffect:Landroid/widget/EdgeEffect;

    return-object p0
.end method

.method public static final synthetic access$getRightEffect$p(Landroidx/compose/foundation/EdgeEffectWrapper;)Landroid/widget/EdgeEffect;
    .locals 0

    .line 848
    iget-object p0, p0, Landroidx/compose/foundation/EdgeEffectWrapper;->rightEffect:Landroid/widget/EdgeEffect;

    return-object p0
.end method

.method public static final synthetic access$getTopEffect$p(Landroidx/compose/foundation/EdgeEffectWrapper;)Landroid/widget/EdgeEffect;
    .locals 0

    .line 848
    iget-object p0, p0, Landroidx/compose/foundation/EdgeEffectWrapper;->topEffect:Landroid/widget/EdgeEffect;

    return-object p0
.end method

.method private final createEdgeEffect(Landroidx/compose/foundation/gestures/Orientation;)Landroid/widget/EdgeEffect;
    .locals 6

    .line 936
    sget-object v0, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    iget-object v1, p0, Landroidx/compose/foundation/EdgeEffectWrapper;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroidx/compose/foundation/EdgeEffectCompat;->create(Landroid/content/Context;)Landroid/widget/EdgeEffect;

    move-result-object v0

    .line 937
    iget v1, p0, Landroidx/compose/foundation/EdgeEffectWrapper;->glowColor:I

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->setColor(I)V

    .line 938
    iget-wide v1, p0, Landroidx/compose/foundation/EdgeEffectWrapper;->size:J

    sget-object v3, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/unit/IntSize$Companion;->getZero-YbymL2g()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_1

    .line 939
    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    const-wide v2, 0xffffffffL

    const/16 v4, 0x20

    if-ne p1, v1, :cond_0

    .line 940
    iget-wide p0, p0, Landroidx/compose/foundation/EdgeEffectWrapper;->size:J

    shr-long v4, p0, v4

    long-to-int v1, v4

    and-long/2addr p0, v2

    long-to-int p0, p0

    invoke-virtual {v0, v1, p0}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0

    .line 942
    :cond_0
    iget-wide p0, p0, Landroidx/compose/foundation/EdgeEffectWrapper;->size:J

    and-long v1, p0, v2

    long-to-int v1, v1

    shr-long/2addr p0, v4

    long-to-int p0, p0

    invoke-virtual {v0, v1, p0}, Landroid/widget/EdgeEffect;->setSize(II)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method private final isAnimating(Landroid/widget/EdgeEffect;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 905
    :cond_0
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private final isStretched(Landroid/widget/EdgeEffect;)Z
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 891
    :cond_0
    sget-object v0, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    invoke-virtual {v0, p1}, Landroidx/compose/foundation/EdgeEffectCompat;->getDistanceCompat(Landroid/widget/EdgeEffect;)F

    move-result p1

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    const/4 v0, 0x1

    if-nez p1, :cond_1

    move p0, v0

    :cond_1
    xor-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public final getOrCreateBottomEffect()Landroid/widget/EdgeEffect;
    .locals 1

    .line 912
    iget-object v0, p0, Landroidx/compose/foundation/EdgeEffectWrapper;->bottomEffect:Landroid/widget/EdgeEffect;

    if-nez v0, :cond_0

    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    invoke-direct {p0, v0}, Landroidx/compose/foundation/EdgeEffectWrapper;->createEdgeEffect(Landroidx/compose/foundation/gestures/Orientation;)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/EdgeEffectWrapper;->bottomEffect:Landroid/widget/EdgeEffect;

    :cond_0
    return-object v0
.end method

.method public final getOrCreateBottomEffectNegation()Landroid/widget/EdgeEffect;
    .locals 1

    .line 924
    iget-object v0, p0, Landroidx/compose/foundation/EdgeEffectWrapper;->bottomEffectNegation:Landroid/widget/EdgeEffect;

    if-nez v0, :cond_0

    .line 925
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    invoke-direct {p0, v0}, Landroidx/compose/foundation/EdgeEffectWrapper;->createEdgeEffect(Landroidx/compose/foundation/gestures/Orientation;)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/EdgeEffectWrapper;->bottomEffectNegation:Landroid/widget/EdgeEffect;

    :cond_0
    return-object v0
.end method

.method public final getOrCreateLeftEffect()Landroid/widget/EdgeEffect;
    .locals 1

    .line 915
    iget-object v0, p0, Landroidx/compose/foundation/EdgeEffectWrapper;->leftEffect:Landroid/widget/EdgeEffect;

    if-nez v0, :cond_0

    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    invoke-direct {p0, v0}, Landroidx/compose/foundation/EdgeEffectWrapper;->createEdgeEffect(Landroidx/compose/foundation/gestures/Orientation;)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/EdgeEffectWrapper;->leftEffect:Landroid/widget/EdgeEffect;

    :cond_0
    return-object v0
.end method

.method public final getOrCreateLeftEffectNegation()Landroid/widget/EdgeEffect;
    .locals 1

    .line 928
    iget-object v0, p0, Landroidx/compose/foundation/EdgeEffectWrapper;->leftEffectNegation:Landroid/widget/EdgeEffect;

    if-nez v0, :cond_0

    .line 929
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    invoke-direct {p0, v0}, Landroidx/compose/foundation/EdgeEffectWrapper;->createEdgeEffect(Landroidx/compose/foundation/gestures/Orientation;)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/EdgeEffectWrapper;->leftEffectNegation:Landroid/widget/EdgeEffect;

    :cond_0
    return-object v0
.end method

.method public final getOrCreateRightEffect()Landroid/widget/EdgeEffect;
    .locals 1

    .line 918
    iget-object v0, p0, Landroidx/compose/foundation/EdgeEffectWrapper;->rightEffect:Landroid/widget/EdgeEffect;

    if-nez v0, :cond_0

    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    invoke-direct {p0, v0}, Landroidx/compose/foundation/EdgeEffectWrapper;->createEdgeEffect(Landroidx/compose/foundation/gestures/Orientation;)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/EdgeEffectWrapper;->rightEffect:Landroid/widget/EdgeEffect;

    :cond_0
    return-object v0
.end method

.method public final getOrCreateRightEffectNegation()Landroid/widget/EdgeEffect;
    .locals 1

    .line 932
    iget-object v0, p0, Landroidx/compose/foundation/EdgeEffectWrapper;->rightEffectNegation:Landroid/widget/EdgeEffect;

    if-nez v0, :cond_0

    .line 933
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    invoke-direct {p0, v0}, Landroidx/compose/foundation/EdgeEffectWrapper;->createEdgeEffect(Landroidx/compose/foundation/gestures/Orientation;)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/EdgeEffectWrapper;->rightEffectNegation:Landroid/widget/EdgeEffect;

    :cond_0
    return-object v0
.end method

.method public final getOrCreateTopEffect()Landroid/widget/EdgeEffect;
    .locals 1

    .line 909
    iget-object v0, p0, Landroidx/compose/foundation/EdgeEffectWrapper;->topEffect:Landroid/widget/EdgeEffect;

    if-nez v0, :cond_0

    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    invoke-direct {p0, v0}, Landroidx/compose/foundation/EdgeEffectWrapper;->createEdgeEffect(Landroidx/compose/foundation/gestures/Orientation;)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/EdgeEffectWrapper;->topEffect:Landroid/widget/EdgeEffect;

    :cond_0
    return-object v0
.end method

.method public final getOrCreateTopEffectNegation()Landroid/widget/EdgeEffect;
    .locals 1

    .line 921
    iget-object v0, p0, Landroidx/compose/foundation/EdgeEffectWrapper;->topEffectNegation:Landroid/widget/EdgeEffect;

    if-nez v0, :cond_0

    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    invoke-direct {p0, v0}, Landroidx/compose/foundation/EdgeEffectWrapper;->createEdgeEffect(Landroidx/compose/foundation/gestures/Orientation;)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/EdgeEffectWrapper;->topEffectNegation:Landroid/widget/EdgeEffect;

    :cond_0
    return-object v0
.end method

.method public final isBottomAnimating()Z
    .locals 1

    .line 896
    iget-object v0, p0, Landroidx/compose/foundation/EdgeEffectWrapper;->bottomEffect:Landroid/widget/EdgeEffect;

    invoke-direct {p0, v0}, Landroidx/compose/foundation/EdgeEffectWrapper;->isAnimating(Landroid/widget/EdgeEffect;)Z

    move-result p0

    return p0
.end method

.method public final isBottomNegationStretched()Z
    .locals 1

    .line 882
    iget-object v0, p0, Landroidx/compose/foundation/EdgeEffectWrapper;->bottomEffectNegation:Landroid/widget/EdgeEffect;

    invoke-direct {p0, v0}, Landroidx/compose/foundation/EdgeEffectWrapper;->isStretched(Landroid/widget/EdgeEffect;)Z

    move-result p0

    return p0
.end method

.method public final isBottomStretched()Z
    .locals 1

    .line 874
    iget-object v0, p0, Landroidx/compose/foundation/EdgeEffectWrapper;->bottomEffect:Landroid/widget/EdgeEffect;

    invoke-direct {p0, v0}, Landroidx/compose/foundation/EdgeEffectWrapper;->isStretched(Landroid/widget/EdgeEffect;)Z

    move-result p0

    return p0
.end method

.method public final isLeftAnimating()Z
    .locals 1

    .line 898
    iget-object v0, p0, Landroidx/compose/foundation/EdgeEffectWrapper;->leftEffect:Landroid/widget/EdgeEffect;

    invoke-direct {p0, v0}, Landroidx/compose/foundation/EdgeEffectWrapper;->isAnimating(Landroid/widget/EdgeEffect;)Z

    move-result p0

    return p0
.end method

.method public final isLeftNegationStretched()Z
    .locals 1

    .line 884
    iget-object v0, p0, Landroidx/compose/foundation/EdgeEffectWrapper;->leftEffectNegation:Landroid/widget/EdgeEffect;

    invoke-direct {p0, v0}, Landroidx/compose/foundation/EdgeEffectWrapper;->isStretched(Landroid/widget/EdgeEffect;)Z

    move-result p0

    return p0
.end method

.method public final isLeftStretched()Z
    .locals 1

    .line 876
    iget-object v0, p0, Landroidx/compose/foundation/EdgeEffectWrapper;->leftEffect:Landroid/widget/EdgeEffect;

    invoke-direct {p0, v0}, Landroidx/compose/foundation/EdgeEffectWrapper;->isStretched(Landroid/widget/EdgeEffect;)Z

    move-result p0

    return p0
.end method

.method public final isRightAnimating()Z
    .locals 1

    .line 900
    iget-object v0, p0, Landroidx/compose/foundation/EdgeEffectWrapper;->rightEffect:Landroid/widget/EdgeEffect;

    invoke-direct {p0, v0}, Landroidx/compose/foundation/EdgeEffectWrapper;->isAnimating(Landroid/widget/EdgeEffect;)Z

    move-result p0

    return p0
.end method

.method public final isRightNegationStretched()Z
    .locals 1

    .line 886
    iget-object v0, p0, Landroidx/compose/foundation/EdgeEffectWrapper;->rightEffectNegation:Landroid/widget/EdgeEffect;

    invoke-direct {p0, v0}, Landroidx/compose/foundation/EdgeEffectWrapper;->isStretched(Landroid/widget/EdgeEffect;)Z

    move-result p0

    return p0
.end method

.method public final isRightStretched()Z
    .locals 1

    .line 878
    iget-object v0, p0, Landroidx/compose/foundation/EdgeEffectWrapper;->rightEffect:Landroid/widget/EdgeEffect;

    invoke-direct {p0, v0}, Landroidx/compose/foundation/EdgeEffectWrapper;->isStretched(Landroid/widget/EdgeEffect;)Z

    move-result p0

    return p0
.end method

.method public final isTopAnimating()Z
    .locals 1

    .line 894
    iget-object v0, p0, Landroidx/compose/foundation/EdgeEffectWrapper;->topEffect:Landroid/widget/EdgeEffect;

    invoke-direct {p0, v0}, Landroidx/compose/foundation/EdgeEffectWrapper;->isAnimating(Landroid/widget/EdgeEffect;)Z

    move-result p0

    return p0
.end method

.method public final isTopNegationStretched()Z
    .locals 1

    .line 880
    iget-object v0, p0, Landroidx/compose/foundation/EdgeEffectWrapper;->topEffectNegation:Landroid/widget/EdgeEffect;

    invoke-direct {p0, v0}, Landroidx/compose/foundation/EdgeEffectWrapper;->isStretched(Landroid/widget/EdgeEffect;)Z

    move-result p0

    return p0
.end method

.method public final isTopStretched()Z
    .locals 1

    .line 872
    iget-object v0, p0, Landroidx/compose/foundation/EdgeEffectWrapper;->topEffect:Landroid/widget/EdgeEffect;

    invoke-direct {p0, v0}, Landroidx/compose/foundation/EdgeEffectWrapper;->isStretched(Landroid/widget/EdgeEffect;)Z

    move-result p0

    return p0
.end method

.method public final updateSize-ozmzZPI(J)V
    .locals 7

    .line 948
    iput-wide p1, p0, Landroidx/compose/foundation/EdgeEffectWrapper;->size:J

    .line 949
    iget-object v0, p0, Landroidx/compose/foundation/EdgeEffectWrapper;->topEffect:Landroid/widget/EdgeEffect;

    const-wide v1, 0xffffffffL

    const/16 v3, 0x20

    if-eqz v0, :cond_0

    shr-long v4, p1, v3

    long-to-int v4, v4

    and-long v5, p1, v1

    long-to-int v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 950
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/EdgeEffectWrapper;->bottomEffect:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_1

    shr-long v4, p1, v3

    long-to-int v4, v4

    and-long v5, p1, v1

    long-to-int v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 951
    :cond_1
    iget-object v0, p0, Landroidx/compose/foundation/EdgeEffectWrapper;->leftEffect:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_2

    and-long v4, p1, v1

    long-to-int v4, v4

    shr-long v5, p1, v3

    long-to-int v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 952
    :cond_2
    iget-object v0, p0, Landroidx/compose/foundation/EdgeEffectWrapper;->rightEffect:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_3

    and-long v4, p1, v1

    long-to-int v4, v4

    shr-long v5, p1, v3

    long-to-int v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 954
    :cond_3
    iget-object v0, p0, Landroidx/compose/foundation/EdgeEffectWrapper;->topEffectNegation:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_4

    shr-long v4, p1, v3

    long-to-int v4, v4

    and-long v5, p1, v1

    long-to-int v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 955
    :cond_4
    iget-object v0, p0, Landroidx/compose/foundation/EdgeEffectWrapper;->bottomEffectNegation:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_5

    shr-long v4, p1, v3

    long-to-int v4, v4

    and-long v5, p1, v1

    long-to-int v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 956
    :cond_5
    iget-object v0, p0, Landroidx/compose/foundation/EdgeEffectWrapper;->leftEffectNegation:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_6

    and-long v4, p1, v1

    long-to-int v4, v4

    shr-long v5, p1, v3

    long-to-int v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 957
    :cond_6
    iget-object p0, p0, Landroidx/compose/foundation/EdgeEffectWrapper;->rightEffectNegation:Landroid/widget/EdgeEffect;

    if-eqz p0, :cond_7

    and-long v0, p1, v1

    long-to-int v0, v0

    shr-long/2addr p1, v3

    long-to-int p1, p1

    invoke-virtual {p0, v0, p1}, Landroid/widget/EdgeEffect;->setSize(II)V

    :cond_7
    return-void
.end method
