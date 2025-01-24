.class public final Landroidx/compose/material3/SliderState;
.super Ljava/lang/Object;
.source "Slider.kt"

# interfaces
.implements Landroidx/compose/foundation/gestures/DraggableState;


# instance fields
.field private final dragScope:Landroidx/compose/foundation/gestures/DragScope;

.field private final gestureEndAction:Lkotlin/jvm/functions/Function0;

.field private final isDragging$delegate:Landroidx/compose/runtime/MutableState;

.field private isRtl:Z

.field private onValueChange:Lkotlin/jvm/functions/Function1;

.field private onValueChangeFinished:Lkotlin/jvm/functions/Function0;

.field private final pressOffset$delegate:Landroidx/compose/runtime/MutableFloatState;

.field private final rawOffset$delegate:Landroidx/compose/runtime/MutableFloatState;

.field private final scrollMutex:Landroidx/compose/foundation/MutatorMutex;

.field private final steps:I

.field private final thumbWidth$delegate:Landroidx/compose/runtime/MutableFloatState;

.field private final tickFractions:[F

.field private final totalWidth$delegate:Landroidx/compose/runtime/MutableIntState;

.field private final trackHeight$delegate:Landroidx/compose/runtime/MutableFloatState;

.field private final valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

.field private final valueState$delegate:Landroidx/compose/runtime/MutableFloatState;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(FILkotlin/jvm/functions/Function0;Lkotlin/ranges/ClosedFloatingPointRange;)V
    .locals 1

    .line 1935
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1938
    iput p2, p0, Landroidx/compose/material3/SliderState;->steps:I

    .line 1939
    iput-object p3, p0, Landroidx/compose/material3/SliderState;->onValueChangeFinished:Lkotlin/jvm/functions/Function0;

    .line 1940
    iput-object p4, p0, Landroidx/compose/material3/SliderState;->valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    .line 1943
    invoke-static {p1}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->mutableFloatStateOf(F)Landroidx/compose/runtime/MutableFloatState;

    move-result-object p3

    iput-object p3, p0, Landroidx/compose/material3/SliderState;->valueState$delegate:Landroidx/compose/runtime/MutableFloatState;

    .line 1990
    invoke-static {p2}, Landroidx/compose/material3/SliderKt;->access$stepsToTickFractions(I)[F

    move-result-object p2

    iput-object p2, p0, Landroidx/compose/material3/SliderState;->tickFractions:[F

    const/4 p2, 0x0

    .line 1991
    invoke-static {p2}, Landroidx/compose/runtime/SnapshotIntStateKt;->mutableIntStateOf(I)Landroidx/compose/runtime/MutableIntState;

    move-result-object p2

    iput-object p2, p0, Landroidx/compose/material3/SliderState;->totalWidth$delegate:Landroidx/compose/runtime/MutableIntState;

    const/4 p2, 0x0

    .line 1993
    invoke-static {p2}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->mutableFloatStateOf(F)Landroidx/compose/runtime/MutableFloatState;

    move-result-object p3

    iput-object p3, p0, Landroidx/compose/material3/SliderState;->trackHeight$delegate:Landroidx/compose/runtime/MutableFloatState;

    .line 1994
    invoke-static {p2}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->mutableFloatStateOf(F)Landroidx/compose/runtime/MutableFloatState;

    move-result-object p3

    iput-object p3, p0, Landroidx/compose/material3/SliderState;->thumbWidth$delegate:Landroidx/compose/runtime/MutableFloatState;

    .line 2004
    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 p4, 0x0

    const/4 v0, 0x2

    invoke-static {p3, p4, v0, p4}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p3

    iput-object p3, p0, Landroidx/compose/material3/SliderState;->isDragging$delegate:Landroidx/compose/runtime/MutableState;

    .line 2012
    new-instance p3, Landroidx/compose/material3/SliderState$gestureEndAction$1;

    invoke-direct {p3, p0}, Landroidx/compose/material3/SliderState$gestureEndAction$1;-><init>(Landroidx/compose/material3/SliderState;)V

    iput-object p3, p0, Landroidx/compose/material3/SliderState;->gestureEndAction:Lkotlin/jvm/functions/Function0;

    .line 2024
    invoke-direct {p0, p2, p2, p1}, Landroidx/compose/material3/SliderState;->scaleToOffset(FFF)F

    move-result p1

    invoke-static {p1}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->mutableFloatStateOf(F)Landroidx/compose/runtime/MutableFloatState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material3/SliderState;->rawOffset$delegate:Landroidx/compose/runtime/MutableFloatState;

    .line 2025
    invoke-static {p2}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->mutableFloatStateOf(F)Landroidx/compose/runtime/MutableFloatState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material3/SliderState;->pressOffset$delegate:Landroidx/compose/runtime/MutableFloatState;

    .line 2027
    new-instance p1, Landroidx/compose/material3/SliderState$dragScope$1;

    invoke-direct {p1, p0}, Landroidx/compose/material3/SliderState$dragScope$1;-><init>(Landroidx/compose/material3/SliderState;)V

    iput-object p1, p0, Landroidx/compose/material3/SliderState;->dragScope:Landroidx/compose/foundation/gestures/DragScope;

    .line 2031
    new-instance p1, Landroidx/compose/foundation/MutatorMutex;

    invoke-direct {p1}, Landroidx/compose/foundation/MutatorMutex;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/SliderState;->scrollMutex:Landroidx/compose/foundation/MutatorMutex;

    return-void
.end method

.method public static final synthetic access$getDragScope$p(Landroidx/compose/material3/SliderState;)Landroidx/compose/foundation/gestures/DragScope;
    .locals 0

    .line 1935
    iget-object p0, p0, Landroidx/compose/material3/SliderState;->dragScope:Landroidx/compose/foundation/gestures/DragScope;

    return-object p0
.end method

.method public static final synthetic access$getScrollMutex$p(Landroidx/compose/material3/SliderState;)Landroidx/compose/foundation/MutatorMutex;
    .locals 0

    .line 1935
    iget-object p0, p0, Landroidx/compose/material3/SliderState;->scrollMutex:Landroidx/compose/foundation/MutatorMutex;

    return-object p0
.end method

.method public static final synthetic access$setDragging(Landroidx/compose/material3/SliderState;Z)V
    .locals 0

    .line 1935
    invoke-direct {p0, p1}, Landroidx/compose/material3/SliderState;->setDragging(Z)V

    return-void
.end method

.method private final getPressOffset()F
    .locals 0

    .line 2025
    iget-object p0, p0, Landroidx/compose/material3/SliderState;->pressOffset$delegate:Landroidx/compose/runtime/MutableFloatState;

    .line 75
    invoke-interface {p0}, Landroidx/compose/runtime/FloatState;->getFloatValue()F

    move-result p0

    return p0
.end method

.method private final getRawOffset()F
    .locals 0

    .line 2024
    iget-object p0, p0, Landroidx/compose/material3/SliderState;->rawOffset$delegate:Landroidx/compose/runtime/MutableFloatState;

    .line 75
    invoke-interface {p0}, Landroidx/compose/runtime/FloatState;->getFloatValue()F

    move-result p0

    return p0
.end method

.method private final getTotalWidth()I
    .locals 0

    .line 1991
    iget-object p0, p0, Landroidx/compose/material3/SliderState;->totalWidth$delegate:Landroidx/compose/runtime/MutableIntState;

    .line 74
    invoke-interface {p0}, Landroidx/compose/runtime/IntState;->getIntValue()I

    move-result p0

    return p0
.end method

.method private final getValueState()F
    .locals 0

    .line 1943
    iget-object p0, p0, Landroidx/compose/material3/SliderState;->valueState$delegate:Landroidx/compose/runtime/MutableFloatState;

    .line 75
    invoke-interface {p0}, Landroidx/compose/runtime/FloatState;->getFloatValue()F

    move-result p0

    return p0
.end method

.method private final scaleToOffset(FFF)F
    .locals 1

    .line 2037
    iget-object v0, p0, Landroidx/compose/material3/SliderState;->valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    invoke-interface {v0}, Lkotlin/ranges/ClosedRange;->getStart()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iget-object p0, p0, Landroidx/compose/material3/SliderState;->valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    invoke-interface {p0}, Lkotlin/ranges/ClosedRange;->getEndInclusive()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-static {v0, p0, p3, p1, p2}, Landroidx/compose/material3/SliderKt;->access$scale(FFFFF)F

    move-result p0

    return p0
.end method

.method private final scaleToUserValue(FFF)F
    .locals 1

    .line 2034
    iget-object v0, p0, Landroidx/compose/material3/SliderState;->valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    invoke-interface {v0}, Lkotlin/ranges/ClosedRange;->getStart()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iget-object p0, p0, Landroidx/compose/material3/SliderState;->valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    invoke-interface {p0}, Lkotlin/ranges/ClosedRange;->getEndInclusive()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-static {p1, p2, p3, v0, p0}, Landroidx/compose/material3/SliderKt;->access$scale(FFFFF)F

    move-result p0

    return p0
.end method

.method private final setDragging(Z)V
    .locals 0

    .line 2004
    iget-object p0, p0, Landroidx/compose/material3/SliderState;->isDragging$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 109
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final setPressOffset(F)V
    .locals 0

    .line 2025
    iget-object p0, p0, Landroidx/compose/material3/SliderState;->pressOffset$delegate:Landroidx/compose/runtime/MutableFloatState;

    .line 108
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableFloatState;->setFloatValue(F)V

    return-void
.end method

.method private final setRawOffset(F)V
    .locals 0

    .line 2024
    iget-object p0, p0, Landroidx/compose/material3/SliderState;->rawOffset$delegate:Landroidx/compose/runtime/MutableFloatState;

    .line 108
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableFloatState;->setFloatValue(F)V

    return-void
.end method

.method private final setTotalWidth(I)V
    .locals 0

    .line 1991
    iget-object p0, p0, Landroidx/compose/material3/SliderState;->totalWidth$delegate:Landroidx/compose/runtime/MutableIntState;

    .line 103
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableIntState;->setIntValue(I)V

    return-void
.end method

.method private final setValueState(F)V
    .locals 0

    .line 1943
    iget-object p0, p0, Landroidx/compose/material3/SliderState;->valueState$delegate:Landroidx/compose/runtime/MutableFloatState;

    .line 108
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableFloatState;->setFloatValue(F)V

    return-void
.end method


# virtual methods
.method public dispatchRawDelta(F)V
    .locals 4

    .line 1972
    invoke-direct {p0}, Landroidx/compose/material3/SliderState;->getTotalWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroidx/compose/material3/SliderState;->getThumbWidth$material3_release()F

    move-result v1

    const/4 v2, 0x2

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 1973
    invoke-virtual {p0}, Landroidx/compose/material3/SliderState;->getThumbWidth$material3_release()F

    move-result v3

    div-float/2addr v3, v2

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 1974
    invoke-direct {p0}, Landroidx/compose/material3/SliderState;->getRawOffset()F

    move-result v3

    add-float/2addr v3, p1

    invoke-direct {p0}, Landroidx/compose/material3/SliderState;->getPressOffset()F

    move-result p1

    add-float/2addr v3, p1

    invoke-direct {p0, v3}, Landroidx/compose/material3/SliderState;->setRawOffset(F)V

    .line 1975
    invoke-direct {p0, v1}, Landroidx/compose/material3/SliderState;->setPressOffset(F)V

    .line 1976
    invoke-direct {p0}, Landroidx/compose/material3/SliderState;->getRawOffset()F

    move-result p1

    iget-object v1, p0, Landroidx/compose/material3/SliderState;->tickFractions:[F

    invoke-static {p1, v1, v2, v0}, Landroidx/compose/material3/SliderKt;->access$snapValueToTick(F[FFF)F

    move-result p1

    .line 1977
    invoke-direct {p0, v2, v0, p1}, Landroidx/compose/material3/SliderState;->scaleToUserValue(FFF)F

    move-result p1

    .line 1978
    invoke-virtual {p0}, Landroidx/compose/material3/SliderState;->getValue()F

    move-result v0

    cmpg-float v0, p1, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1979
    :cond_0
    iget-object v0, p0, Landroidx/compose/material3/SliderState;->onValueChange:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_2

    .line 1980
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1982
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/compose/material3/SliderState;->setValue(F)V

    :cond_2
    :goto_0
    return-void
.end method

.method public drag(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    .line 1965
    new-instance v0, Landroidx/compose/material3/SliderState$drag$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Landroidx/compose/material3/SliderState$drag$2;-><init>(Landroidx/compose/material3/SliderState;Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, p3}, Lkotlinx/coroutines/CoroutineScopeKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final getCoercedValueAsFraction$material3_release()F
    .locals 4

    .line 1999
    iget-object v0, p0, Landroidx/compose/material3/SliderState;->valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    invoke-interface {v0}, Lkotlin/ranges/ClosedRange;->getStart()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 2000
    iget-object v1, p0, Landroidx/compose/material3/SliderState;->valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    invoke-interface {v1}, Lkotlin/ranges/ClosedRange;->getEndInclusive()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    .line 2001
    invoke-virtual {p0}, Landroidx/compose/material3/SliderState;->getValue()F

    move-result v2

    iget-object v3, p0, Landroidx/compose/material3/SliderState;->valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    invoke-interface {v3}, Lkotlin/ranges/ClosedRange;->getStart()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    iget-object p0, p0, Landroidx/compose/material3/SliderState;->valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    invoke-interface {p0}, Lkotlin/ranges/ClosedRange;->getEndInclusive()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-static {v2, v3, p0}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p0

    .line 1998
    invoke-static {v0, v1, p0}, Landroidx/compose/material3/SliderKt;->access$calcFraction(FFF)F

    move-result p0

    return p0
.end method

.method public final getGestureEndAction$material3_release()Lkotlin/jvm/functions/Function0;
    .locals 0

    .line 2012
    iget-object p0, p0, Landroidx/compose/material3/SliderState;->gestureEndAction:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final getOnValueChange$material3_release()Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 1988
    iget-object p0, p0, Landroidx/compose/material3/SliderState;->onValueChange:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final getOnValueChangeFinished()Lkotlin/jvm/functions/Function0;
    .locals 0

    .line 1939
    iget-object p0, p0, Landroidx/compose/material3/SliderState;->onValueChangeFinished:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final getSteps()I
    .locals 0

    .line 1938
    iget p0, p0, Landroidx/compose/material3/SliderState;->steps:I

    return p0
.end method

.method public final getThumbWidth$material3_release()F
    .locals 0

    .line 1994
    iget-object p0, p0, Landroidx/compose/material3/SliderState;->thumbWidth$delegate:Landroidx/compose/runtime/MutableFloatState;

    .line 75
    invoke-interface {p0}, Landroidx/compose/runtime/FloatState;->getFloatValue()F

    move-result p0

    return p0
.end method

.method public final getTickFractions$material3_release()[F
    .locals 0

    .line 1990
    iget-object p0, p0, Landroidx/compose/material3/SliderState;->tickFractions:[F

    return-object p0
.end method

.method public final getTrackHeight$material3_release()F
    .locals 0

    .line 1993
    iget-object p0, p0, Landroidx/compose/material3/SliderState;->trackHeight$delegate:Landroidx/compose/runtime/MutableFloatState;

    .line 75
    invoke-interface {p0}, Landroidx/compose/runtime/FloatState;->getFloatValue()F

    move-result p0

    return p0
.end method

.method public final getValue()F
    .locals 0

    .line 1960
    invoke-direct {p0}, Landroidx/compose/material3/SliderState;->getValueState()F

    move-result p0

    return p0
.end method

.method public final getValueRange()Lkotlin/ranges/ClosedFloatingPointRange;
    .locals 0

    .line 1940
    iget-object p0, p0, Landroidx/compose/material3/SliderState;->valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    return-object p0
.end method

.method public final isDragging$material3_release()Z
    .locals 0

    .line 2004
    iget-object p0, p0, Landroidx/compose/material3/SliderState;->isDragging$delegate:Landroidx/compose/runtime/MutableState;

    .line 81
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final isRtl$material3_release()Z
    .locals 0

    .line 1992
    iget-boolean p0, p0, Landroidx/compose/material3/SliderState;->isRtl:Z

    return p0
.end method

.method public final onPress-k-4lQ0M$material3_release(J)V
    .locals 1

    .line 2020
    iget-boolean v0, p0, Landroidx/compose/material3/SliderState;->isRtl:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/compose/material3/SliderState;->getTotalWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result p1

    sub-float/2addr v0, p1

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v0

    .line 2021
    :goto_0
    invoke-direct {p0}, Landroidx/compose/material3/SliderState;->getRawOffset()F

    move-result p1

    sub-float/2addr v0, p1

    invoke-direct {p0, v0}, Landroidx/compose/material3/SliderState;->setPressOffset(F)V

    return-void
.end method

.method public final setOnValueChange$material3_release(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1988
    iput-object p1, p0, Landroidx/compose/material3/SliderState;->onValueChange:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setOnValueChangeFinished(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1939
    iput-object p1, p0, Landroidx/compose/material3/SliderState;->onValueChangeFinished:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setRtl$material3_release(Z)V
    .locals 0

    .line 1992
    iput-boolean p1, p0, Landroidx/compose/material3/SliderState;->isRtl:Z

    return-void
.end method

.method public final setThumbWidth$material3_release(F)V
    .locals 0

    .line 1994
    iget-object p0, p0, Landroidx/compose/material3/SliderState;->thumbWidth$delegate:Landroidx/compose/runtime/MutableFloatState;

    .line 108
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableFloatState;->setFloatValue(F)V

    return-void
.end method

.method public final setTrackHeight$material3_release(F)V
    .locals 0

    .line 1993
    iget-object p0, p0, Landroidx/compose/material3/SliderState;->trackHeight$delegate:Landroidx/compose/runtime/MutableFloatState;

    .line 108
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableFloatState;->setFloatValue(F)V

    return-void
.end method

.method public final setValue(F)V
    .locals 3

    .line 1950
    iget-object v0, p0, Landroidx/compose/material3/SliderState;->valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    invoke-interface {v0}, Lkotlin/ranges/ClosedRange;->getStart()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iget-object v1, p0, Landroidx/compose/material3/SliderState;->valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    invoke-interface {v1}, Lkotlin/ranges/ClosedRange;->getEndInclusive()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-static {p1, v0, v1}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p1

    .line 1954
    iget-object v0, p0, Landroidx/compose/material3/SliderState;->tickFractions:[F

    .line 1955
    iget-object v1, p0, Landroidx/compose/material3/SliderState;->valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    invoke-interface {v1}, Lkotlin/ranges/ClosedRange;->getStart()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    .line 1956
    iget-object v2, p0, Landroidx/compose/material3/SliderState;->valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    invoke-interface {v2}, Lkotlin/ranges/ClosedRange;->getEndInclusive()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    .line 1952
    invoke-static {p1, v0, v1, v2}, Landroidx/compose/material3/SliderKt;->access$snapValueToTick(F[FFF)F

    move-result p1

    .line 1958
    invoke-direct {p0, p1}, Landroidx/compose/material3/SliderState;->setValueState(F)V

    return-void
.end method

.method public final updateDimensions$material3_release(FI)V
    .locals 0

    .line 2008
    invoke-virtual {p0, p1}, Landroidx/compose/material3/SliderState;->setTrackHeight$material3_release(F)V

    .line 2009
    invoke-direct {p0, p2}, Landroidx/compose/material3/SliderState;->setTotalWidth(I)V

    return-void
.end method
