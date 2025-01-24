.class public final Landroidx/compose/foundation/gestures/ContentInViewNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "ContentInViewNode.kt"

# interfaces
.implements Landroidx/compose/foundation/relocation/BringIntoViewResponder;
.implements Landroidx/compose/ui/node/LayoutAwareModifierNode;
.implements Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;


# instance fields
.field private final bringIntoViewRequests:Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;

.field private bringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

.field private focusedChild:Landroidx/compose/ui/layout/LayoutCoordinates;

.field private focusedChildBoundsFromPreviousRemeasure:Landroidx/compose/ui/geometry/Rect;

.field private isAnimationRunning:Z

.field private orientation:Landroidx/compose/foundation/gestures/Orientation;

.field private reverseDirection:Z

.field private final scrollingLogic:Landroidx/compose/foundation/gestures/ScrollingLogic;

.field private final shouldAutoInvalidate:Z

.field private trackingFocusedChild:Z

.field private viewportSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/gestures/ScrollingLogic;ZLandroidx/compose/foundation/gestures/BringIntoViewSpec;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    .line 67
    iput-object p1, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 68
    iput-object p2, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->scrollingLogic:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 69
    iput-boolean p3, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->reverseDirection:Z

    .line 70
    iput-object p4, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->bringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    .line 92
    new-instance p1, Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;

    invoke-direct {p1}, Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->bringIntoViewRequests:Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;

    .line 109
    sget-object p1, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntSize$Companion;->getZero-YbymL2g()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->viewportSize:J

    return-void
.end method

.method public static final synthetic access$calculateScrollDelta(Landroidx/compose/foundation/gestures/ContentInViewNode;Landroidx/compose/foundation/gestures/BringIntoViewSpec;)F
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Landroidx/compose/foundation/gestures/ContentInViewNode;->calculateScrollDelta(Landroidx/compose/foundation/gestures/BringIntoViewSpec;)F

    move-result p0

    return p0
.end method

.method public static final synthetic access$getBringIntoViewRequests$p(Landroidx/compose/foundation/gestures/ContentInViewNode;)Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;
    .locals 0

    .line 65
    iget-object p0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->bringIntoViewRequests:Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;

    return-object p0
.end method

.method public static final synthetic access$getFocusedChildBounds(Landroidx/compose/foundation/gestures/ContentInViewNode;)Landroidx/compose/ui/geometry/Rect;
    .locals 0

    .line 65
    invoke-direct {p0}, Landroidx/compose/foundation/gestures/ContentInViewNode;->getFocusedChildBounds()Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getReverseDirection$p(Landroidx/compose/foundation/gestures/ContentInViewNode;)Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->reverseDirection:Z

    return p0
.end method

.method public static final synthetic access$getScrollingLogic$p(Landroidx/compose/foundation/gestures/ContentInViewNode;)Landroidx/compose/foundation/gestures/ScrollingLogic;
    .locals 0

    .line 65
    iget-object p0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->scrollingLogic:Landroidx/compose/foundation/gestures/ScrollingLogic;

    return-object p0
.end method

.method public static final synthetic access$getTrackingFocusedChild$p(Landroidx/compose/foundation/gestures/ContentInViewNode;)Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->trackingFocusedChild:Z

    return p0
.end method

.method public static final synthetic access$isAnimationRunning$p(Landroidx/compose/foundation/gestures/ContentInViewNode;)Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->isAnimationRunning:Z

    return p0
.end method

.method public static final synthetic access$launchAnimation(Landroidx/compose/foundation/gestures/ContentInViewNode;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Landroidx/compose/foundation/gestures/ContentInViewNode;->launchAnimation()V

    return-void
.end method

.method public static final synthetic access$setAnimationRunning$p(Landroidx/compose/foundation/gestures/ContentInViewNode;Z)V
    .locals 0

    .line 65
    iput-boolean p1, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->isAnimationRunning:Z

    return-void
.end method

.method public static final synthetic access$setTrackingFocusedChild$p(Landroidx/compose/foundation/gestures/ContentInViewNode;Z)V
    .locals 0

    .line 65
    iput-boolean p1, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->trackingFocusedChild:Z

    return-void
.end method

.method private final calculateScrollDelta(Landroidx/compose/foundation/gestures/BringIntoViewSpec;)F
    .locals 6

    .line 320
    iget-wide v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->viewportSize:J

    sget-object v2, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/unit/IntSize$Companion;->getZero-YbymL2g()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 323
    :cond_0
    invoke-direct {p0}, Landroidx/compose/foundation/gestures/ContentInViewNode;->findBringIntoViewRequest()Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    if-nez v0, :cond_2

    .line 324
    iget-boolean v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->trackingFocusedChild:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroidx/compose/foundation/gestures/ContentInViewNode;->getFocusedChildBounds()Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    return v1

    .line 327
    :cond_2
    iget-wide v1, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->viewportSize:J

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntSizeKt;->toSize-ozmzZPI(J)J

    move-result-wide v1

    .line 328
    iget-object p0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v3, Landroidx/compose/foundation/gestures/ContentInViewNode$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v3, p0

    const/4 v3, 0x1

    if-eq p0, v3, :cond_4

    const/4 v3, 0x2

    if-ne p0, v3, :cond_3

    .line 337
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result p0

    .line 338
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v3

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v0

    sub-float/2addr v3, v0

    const/16 v0, 0x20

    shr-long v0, v1, v0

    long-to-int v0, v0

    .line 22
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 336
    invoke-interface {p1, p0, v3, v0}, Landroidx/compose/foundation/gestures/BringIntoViewSpec;->calculateScrollDistance(FFF)F

    move-result p0

    goto :goto_1

    :cond_3
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 331
    :cond_4
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result p0

    .line 332
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result v3

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v0

    sub-float/2addr v3, v0

    const-wide v4, 0xffffffffL

    and-long v0, v1, v4

    long-to-int v0, v0

    .line 22
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 330
    invoke-interface {p1, p0, v3, v0}, Landroidx/compose/foundation/gestures/BringIntoViewSpec;->calculateScrollDistance(FFF)F

    move-result p0

    :goto_1
    return p0
.end method

.method private final compareTo-TemP2vQ(JJ)I
    .locals 2

    .line 416
    iget-object p0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v0, Landroidx/compose/foundation/gestures/ContentInViewNode$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/16 p0, 0x20

    shr-long/2addr p1, p0

    long-to-int p1, p1

    shr-long p2, p3, p0

    long-to-int p0, p2

    .line 417
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result p0

    goto :goto_0

    .line 418
    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    const-wide v0, 0xffffffffL

    and-long p0, p1, v0

    long-to-int p0, p0

    and-long p1, p3, v0

    long-to-int p1, p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result p0

    :goto_0
    return p0
.end method

.method private final compareTo-iLBOSCw(JJ)I
    .locals 2

    .line 422
    iget-object p0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v0, Landroidx/compose/foundation/gestures/ContentInViewNode$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/16 p0, 0x20

    shr-long/2addr p1, p0

    long-to-int p1, p1

    .line 22
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    shr-long p2, p3, p0

    long-to-int p0, p2

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    .line 423
    invoke-static {p1, p0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    goto :goto_0

    .line 424
    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    const-wide v0, 0xffffffffL

    and-long p0, p1, v0

    long-to-int p0, p0

    .line 22
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    and-long p1, p3, v0

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    .line 424
    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    :goto_0
    return p0
.end method

.method private final computeDestination-O0kMr_c(Landroidx/compose/ui/geometry/Rect;J)Landroidx/compose/ui/geometry/Rect;
    .locals 2

    .line 373
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/gestures/ContentInViewNode;->relocationOffset-BMxPBkI(Landroidx/compose/ui/geometry/Rect;J)J

    move-result-wide p2

    const-wide v0, -0x7fffffff80000000L    # -1.0609978955E-314

    xor-long/2addr p2, v0

    .line 150
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide p2

    .line 373
    invoke-virtual {p1, p2, p3}, Landroidx/compose/ui/geometry/Rect;->translate-k-4lQ0M(J)Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    return-object p0
.end method

.method private final findBringIntoViewRequest()Landroidx/compose/ui/geometry/Rect;
    .locals 8

    .line 347
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->bringIntoViewRequests:Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;

    .line 108
    invoke-static {v0}, Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;->access$getRequests$p(Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;)Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v0

    .line 462
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_4

    add-int/lit8 v1, v1, -0x1

    .line 465
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v0

    .line 467
    :cond_0
    aget-object v3, v0, v1

    check-cast v3, Landroidx/compose/foundation/gestures/ContentInViewNode$Request;

    .line 108
    invoke-virtual {v3}, Landroidx/compose/foundation/gestures/ContentInViewNode$Request;->getCurrentBounds()Lkotlin/jvm/functions/Function0;

    move-result-object v3

    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/geometry/Rect;

    if-eqz v3, :cond_3

    .line 350
    invoke-virtual {v3}, Landroidx/compose/ui/geometry/Rect;->getSize-NH-jbRc()J

    move-result-wide v4

    iget-wide v6, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->viewportSize:J

    invoke-static {v6, v7}, Landroidx/compose/ui/unit/IntSizeKt;->toSize-ozmzZPI(J)J

    move-result-wide v6

    invoke-direct {p0, v4, v5, v6, v7}, Landroidx/compose/foundation/gestures/ContentInViewNode;->compareTo-iLBOSCw(JJ)I

    move-result v4

    if-gtz v4, :cond_1

    move-object v2, v3

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    move-object v2, v3

    :cond_2
    return-object v2

    :cond_3
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_0

    :cond_4
    return-object v2
.end method

.method private final getFocusedChildBounds()Landroidx/compose/ui/geometry/Rect;
    .locals 3

    .line 183
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 184
    :cond_0
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutCoordinates(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v0

    .line 185
    iget-object p0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->focusedChild:Landroidx/compose/ui/layout/LayoutCoordinates;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Landroidx/compose/ui/layout/LayoutCoordinates;->isAttached()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move-object p0, v1

    :goto_0
    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 186
    invoke-interface {v0, p0, v1}, Landroidx/compose/ui/layout/LayoutCoordinates;->localBoundingBoxOf(Landroidx/compose/ui/layout/LayoutCoordinates;Z)Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    return-object v1
.end method

.method private final isMaxVisible-O0kMr_c(Landroidx/compose/ui/geometry/Rect;J)Z
    .locals 2

    .line 382
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/gestures/ContentInViewNode;->relocationOffset-BMxPBkI(Landroidx/compose/ui/geometry/Rect;J)J

    move-result-wide p0

    const/16 p2, 0x20

    shr-long p2, p0, p2

    long-to-int p2, p2

    .line 22
    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    .line 383
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const/high16 p3, 0x3f000000    # 0.5f

    cmpg-float p2, p2, p3

    if-gtz p2, :cond_0

    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    long-to-int p0, p0

    .line 22
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    .line 384
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, p3

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic isMaxVisible-O0kMr_c$default(Landroidx/compose/foundation/gestures/ContentInViewNode;Landroidx/compose/ui/geometry/Rect;JILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_0

    .line 381
    iget-wide p2, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->viewportSize:J

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/gestures/ContentInViewNode;->isMaxVisible-O0kMr_c(Landroidx/compose/ui/geometry/Rect;J)Z

    move-result p0

    return p0
.end method

.method private final launchAnimation()V
    .locals 9

    .line 190
    invoke-direct {p0}, Landroidx/compose/foundation/gestures/ContentInViewNode;->requireBringIntoViewSpec()Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    move-result-object v0

    .line 191
    iget-boolean v1, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->isAnimationRunning:Z

    if-eqz v1, :cond_0

    .line 192
    const-string v1, "launchAnimation called when previous animation was running"

    .line 52
    invoke-static {v1}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 196
    :cond_0
    new-instance v1, Landroidx/compose/foundation/gestures/UpdatableAnimationState;

    sget-object v2, Landroidx/compose/foundation/gestures/BringIntoViewSpec;->Companion:Landroidx/compose/foundation/gestures/BringIntoViewSpec$Companion;

    invoke-virtual {v2}, Landroidx/compose/foundation/gestures/BringIntoViewSpec$Companion;->getDefaultScrollAnimationSpec$foundation_release()Landroidx/compose/animation/core/AnimationSpec;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/compose/foundation/gestures/UpdatableAnimationState;-><init>(Landroidx/compose/animation/core/AnimationSpec;)V

    .line 197
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v3

    sget-object v5, Lkotlinx/coroutines/CoroutineStart;->UNDISPATCHED:Lkotlinx/coroutines/CoroutineStart;

    new-instance v6, Landroidx/compose/foundation/gestures/ContentInViewNode$launchAnimation$2;

    const/4 v2, 0x0

    invoke-direct {v6, p0, v1, v0, v2}, Landroidx/compose/foundation/gestures/ContentInViewNode$launchAnimation$2;-><init>(Landroidx/compose/foundation/gestures/ContentInViewNode;Landroidx/compose/foundation/gestures/UpdatableAnimationState;Landroidx/compose/foundation/gestures/BringIntoViewSpec;Lkotlin/coroutines/Continuation;)V

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v4, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final relocationOffset-BMxPBkI(Landroidx/compose/ui/geometry/Rect;J)J
    .locals 6

    .line 388
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntSizeKt;->toSize-ozmzZPI(J)J

    move-result-wide p2

    .line 389
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v1, Landroidx/compose/foundation/gestures/ContentInViewNode$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide v3, 0xffffffffL

    const/16 v5, 0x20

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 404
    invoke-direct {p0}, Landroidx/compose/foundation/gestures/ContentInViewNode;->requireBringIntoViewSpec()Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    move-result-object p0

    .line 406
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v0

    .line 407
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v1

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result p1

    sub-float/2addr v1, p1

    shr-long p1, p2, v5

    long-to-int p1, p1

    .line 22
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    .line 405
    invoke-interface {p0, v0, v1, p1}, Landroidx/compose/foundation/gestures/BringIntoViewSpec;->calculateScrollDistance(FFF)F

    move-result p0

    .line 53
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long p0, p0

    .line 54
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    int-to-long p2, p2

    shl-long/2addr p0, v5

    and-long/2addr p2, v3

    or-long/2addr p0, p2

    .line 30
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide p0

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 394
    :cond_1
    invoke-direct {p0}, Landroidx/compose/foundation/gestures/ContentInViewNode;->requireBringIntoViewSpec()Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    move-result-object p0

    .line 396
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v0

    .line 397
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result v1

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result p1

    sub-float/2addr v1, p1

    and-long p1, p2, v3

    long-to-int p1, p1

    .line 22
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    .line 395
    invoke-interface {p0, v0, v1, p1}, Landroidx/compose/foundation/gestures/BringIntoViewSpec;->calculateScrollDistance(FFF)F

    move-result p0

    .line 53
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long p1, p1

    .line 54
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v0, p0

    shl-long p0, p1, v5

    and-long p2, v0, v3

    or-long/2addr p0, p2

    .line 30
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method private final requireBringIntoViewSpec()Landroidx/compose/foundation/gestures/BringIntoViewSpec;
    .locals 1

    .line 123
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->bringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    if-nez v0, :cond_0

    invoke-static {}, Landroidx/compose/foundation/gestures/BringIntoViewSpec_androidKt;->getLocalBringIntoViewSpec()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public bringChildIntoView(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    .line 129
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/compose/ui/geometry/Rect;

    if-eqz v2, :cond_3

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-wide/16 v3, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Landroidx/compose/foundation/gestures/ContentInViewNode;->isMaxVisible-O0kMr_c$default(Landroidx/compose/foundation/gestures/ContentInViewNode;Landroidx/compose/ui/geometry/Rect;JILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 315
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 321
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 132
    new-instance v1, Landroidx/compose/foundation/gestures/ContentInViewNode$Request;

    invoke-direct {v1, p1, v0}, Landroidx/compose/foundation/gestures/ContentInViewNode$Request;-><init>(Lkotlin/jvm/functions/Function0;Lkotlinx/coroutines/CancellableContinuation;)V

    .line 136
    invoke-static {p0}, Landroidx/compose/foundation/gestures/ContentInViewNode;->access$getBringIntoViewRequests$p(Landroidx/compose/foundation/gestures/ContentInViewNode;)Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;->enqueue(Landroidx/compose/foundation/gestures/ContentInViewNode$Request;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Landroidx/compose/foundation/gestures/ContentInViewNode;->access$isAnimationRunning$p(Landroidx/compose/foundation/gestures/ContentInViewNode;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 137
    invoke-static {p0}, Landroidx/compose/foundation/gestures/ContentInViewNode;->access$launchAnimation(Landroidx/compose/foundation/gestures/ContentInViewNode;)V

    .line 323
    :cond_0
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    .line 314
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_1

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_2

    return-object p0

    .line 324
    :cond_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 129
    :cond_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public calculateRectForParent(Landroidx/compose/ui/geometry/Rect;)Landroidx/compose/ui/geometry/Rect;
    .locals 4

    .line 115
    iget-wide v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->viewportSize:J

    sget-object v2, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/unit/IntSize$Companion;->getZero-YbymL2g()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    const-string v0, "Expected BringIntoViewRequester to not be used before parents are placed."

    .line 52
    invoke-static {v0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 119
    :cond_0
    iget-wide v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->viewportSize:J

    invoke-direct {p0, p1, v0, v1}, Landroidx/compose/foundation/gestures/ContentInViewNode;->computeDestination-O0kMr_c(Landroidx/compose/ui/geometry/Rect;J)Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getShouldAutoInvalidate()Z
    .locals 0

    .line 77
    iget-boolean p0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->shouldAutoInvalidate:Z

    return p0
.end method

.method public final getViewportSize-YbymL2g$foundation_release()J
    .locals 2

    .line 109
    iget-wide v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->viewportSize:J

    return-wide v0
.end method

.method public final onFocusBoundsChanged(Landroidx/compose/ui/layout/LayoutCoordinates;)V
    .locals 0

    .line 143
    iput-object p1, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->focusedChild:Landroidx/compose/ui/layout/LayoutCoordinates;

    return-void
.end method

.method public onRemeasured-ozmzZPI(J)V
    .locals 5

    .line 147
    iget-wide v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->viewportSize:J

    .line 148
    iput-wide p1, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->viewportSize:J

    .line 151
    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/compose/foundation/gestures/ContentInViewNode;->compareTo-TemP2vQ(JJ)I

    move-result v2

    if-ltz v2, :cond_0

    return-void

    .line 155
    :cond_0
    invoke-direct {p0}, Landroidx/compose/foundation/gestures/ContentInViewNode;->getFocusedChildBounds()Landroidx/compose/ui/geometry/Rect;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 157
    iget-object v3, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->focusedChildBoundsFromPreviousRemeasure:Landroidx/compose/ui/geometry/Rect;

    if-nez v3, :cond_1

    move-object v3, v2

    .line 159
    :cond_1
    iget-boolean v4, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->isAnimationRunning:Z

    if-nez v4, :cond_2

    .line 160
    iget-boolean v4, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->trackingFocusedChild:Z

    if-nez v4, :cond_2

    .line 169
    invoke-direct {p0, v3, v0, v1}, Landroidx/compose/foundation/gestures/ContentInViewNode;->isMaxVisible-O0kMr_c(Landroidx/compose/ui/geometry/Rect;J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 170
    invoke-direct {p0, v2, p1, p2}, Landroidx/compose/foundation/gestures/ContentInViewNode;->isMaxVisible-O0kMr_c(Landroidx/compose/ui/geometry/Rect;J)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 174
    iput-boolean p1, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->trackingFocusedChild:Z

    .line 175
    invoke-direct {p0}, Landroidx/compose/foundation/gestures/ContentInViewNode;->launchAnimation()V

    .line 178
    :cond_2
    iput-object v2, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->focusedChildBoundsFromPreviousRemeasure:Landroidx/compose/ui/geometry/Rect;

    :cond_3
    return-void
.end method

.method public final update(Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/gestures/BringIntoViewSpec;)V
    .locals 0

    .line 432
    iput-object p1, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 433
    iput-boolean p2, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->reverseDirection:Z

    .line 434
    iput-object p3, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->bringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    return-void
.end method
