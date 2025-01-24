.class final Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;
.super Ljava/lang/Object;
.source "LazyLayoutItemAnimator.kt"


# instance fields
.field private animations:[Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

.field private constraints:Landroidx/compose/ui/unit/Constraints;

.field private crossAxisOffset:I

.field private lane:I

.field private layoutMaxOffset:I

.field private layoutMinOffset:I

.field private span:I

.field final synthetic this$0:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;)V
    .locals 0

    .line 461
    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->this$0:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 466
    invoke-static {}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimatorKt;->access$getEmptyArray$p()[Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->animations:[Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    const/4 p1, 0x1

    .line 472
    iput p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->span:I

    return-void
.end method

.method private final isRunningPlacement()Z
    .locals 4

    .line 475
    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->animations:[Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    .line 584
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static synthetic updateAnimation$default(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;IIIILjava/lang/Object;)V
    .locals 7

    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_0

    .line 489
    iget-object p6, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->this$0:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    invoke-static {p6, p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->access$getCrossAxisOffset(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;)I

    move-result p6

    :cond_0
    move v6, p6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 483
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->updateAnimation(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;III)V

    return-void
.end method


# virtual methods
.method public final getAnimations()[Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;
    .locals 0

    .line 466
    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->animations:[Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    return-object p0
.end method

.method public final getConstraints-DWUhwKw()Landroidx/compose/ui/unit/Constraints;
    .locals 0

    .line 469
    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->constraints:Landroidx/compose/ui/unit/Constraints;

    return-object p0
.end method

.method public final getCrossAxisOffset()I
    .locals 0

    .line 470
    iget p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->crossAxisOffset:I

    return p0
.end method

.method public final getLane()I
    .locals 0

    .line 471
    iget p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->lane:I

    return p0
.end method

.method public final getLayoutMaxOffset()I
    .locals 0

    .line 480
    iget p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->layoutMaxOffset:I

    return p0
.end method

.method public final getLayoutMinOffset()I
    .locals 0

    .line 477
    iget p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->layoutMinOffset:I

    return p0
.end method

.method public final getSpan()I
    .locals 0

    .line 472
    iget p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->span:I

    return p0
.end method

.method public final setLane(I)V
    .locals 0

    .line 471
    iput p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->lane:I

    return-void
.end method

.method public final setSpan(I)V
    .locals 0

    .line 472
    iput p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->span:I

    return-void
.end method

.method public final updateAnimation(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;III)V
    .locals 0

    .line 491
    invoke-direct {p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->isRunningPlacement()Z

    move-result p2

    if-nez p2, :cond_0

    .line 492
    iput p4, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->layoutMinOffset:I

    .line 493
    iput p5, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->layoutMaxOffset:I

    .line 495
    :cond_0
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getPlaceablesCount()I

    move-result p2

    iget-object p3, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->animations:[Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    array-length p3, p3

    :goto_0
    if-ge p2, p3, :cond_1

    .line 496
    iget-object p4, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->animations:[Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    aget-object p4, p4, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 498
    :cond_1
    iget-object p2, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->animations:[Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    array-length p2, p2

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getPlaceablesCount()I

    move-result p3

    if-eq p2, p3, :cond_2

    .line 499
    iget-object p2, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->animations:[Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getPlaceablesCount()I

    move-result p3

    invoke-static {p2, p3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    const-string p3, "copyOf(this, newSize)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, [Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    iput-object p2, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->animations:[Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    .line 501
    :cond_2
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getConstraints-msEJaDk()J

    move-result-wide p2

    invoke-static {p2, p3}, Landroidx/compose/ui/unit/Constraints;->box-impl(J)Landroidx/compose/ui/unit/Constraints;

    move-result-object p2

    iput-object p2, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->constraints:Landroidx/compose/ui/unit/Constraints;

    .line 502
    iput p6, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->crossAxisOffset:I

    .line 503
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getLane()I

    move-result p2

    iput p2, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->lane:I

    .line 504
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getSpan()I

    move-result p2

    iput p2, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->span:I

    .line 505
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getPlaceablesCount()I

    move-result p2

    const/4 p3, 0x0

    :goto_1
    if-ge p3, p2, :cond_3

    .line 506
    invoke-interface {p1, p3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getParentData(I)Ljava/lang/Object;

    move-result-object p4

    invoke-static {p4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimatorKt;->access$getSpecs(Ljava/lang/Object;)Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimationSpecsNode;

    .line 508
    iget-object p4, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->animations:[Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    aget-object p4, p4, p3

    .line 509
    iget-object p4, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->animations:[Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    const/4 p5, 0x0

    aput-object p5, p4, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method
