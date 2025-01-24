.class final Landroidx/compose/foundation/ScrollKt$scroll$2;
.super Lkotlin/jvm/internal/Lambda;
.source "Scroll.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field final synthetic $flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

.field final synthetic $isScrollable:Z

.field final synthetic $isVertical:Z

.field final synthetic $reverseScrolling:Z

.field final synthetic $state:Landroidx/compose/foundation/ScrollState;


# direct methods
.method constructor <init>(ZZLandroidx/compose/foundation/ScrollState;ZLandroidx/compose/foundation/gestures/FlingBehavior;)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Landroidx/compose/foundation/ScrollKt$scroll$2;->$isVertical:Z

    iput-boolean p2, p0, Landroidx/compose/foundation/ScrollKt$scroll$2;->$reverseScrolling:Z

    iput-object p3, p0, Landroidx/compose/foundation/ScrollKt$scroll$2;->$state:Landroidx/compose/foundation/ScrollState;

    iput-boolean p4, p0, Landroidx/compose/foundation/ScrollKt$scroll$2;->$isScrollable:Z

    iput-object p5, p0, Landroidx/compose/foundation/ScrollKt$scroll$2;->$flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
    .locals 11

    const p1, 0x581dd9c4

    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "androidx.compose.foundation.scroll.<anonymous> (Scroll.kt:265)"

    .line 266
    invoke-static {p1, p3, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    iget-boolean p1, p0, Landroidx/compose/foundation/ScrollKt$scroll$2;->$isVertical:Z

    if-eqz p1, :cond_1

    sget-object p1, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    :goto_0
    move-object v2, p1

    goto :goto_1

    :cond_1
    sget-object p1, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_0

    .line 268
    :goto_1
    sget-object p1, Landroidx/compose/foundation/gestures/ScrollableDefaults;->INSTANCE:Landroidx/compose/foundation/gestures/ScrollableDefaults;

    .line 269
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object p3

    .line 75
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/compose/ui/unit/LayoutDirection;

    .line 271
    iget-boolean v0, p0, Landroidx/compose/foundation/ScrollKt$scroll$2;->$reverseScrolling:Z

    .line 268
    invoke-virtual {p1, p3, v2, v0}, Landroidx/compose/foundation/gestures/ScrollableDefaults;->reverseDirection(Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/foundation/gestures/Orientation;Z)Z

    move-result v4

    .line 273
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 274
    iget-object v1, p0, Landroidx/compose/foundation/ScrollKt$scroll$2;->$state:Landroidx/compose/foundation/ScrollState;

    .line 276
    iget-boolean v3, p0, Landroidx/compose/foundation/ScrollKt$scroll$2;->$isScrollable:Z

    .line 278
    iget-object v5, p0, Landroidx/compose/foundation/ScrollKt$scroll$2;->$flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

    .line 279
    invoke-virtual {v1}, Landroidx/compose/foundation/ScrollState;->getInternalInteractionSource$foundation_release()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v6

    const/4 p3, 0x6

    .line 280
    invoke-virtual {p1, p2, p3}, Landroidx/compose/foundation/gestures/ScrollableDefaults;->overscrollEffect(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/OverscrollEffect;

    move-result-object v8

    const/16 v9, 0x40

    const/4 v10, 0x0

    const/4 v7, 0x0

    .line 273
    invoke-static/range {v0 .. v10}, Landroidx/compose/foundation/ScrollingContainerKt;->scrollingContainer$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/gestures/Orientation;ZZLandroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/gestures/BringIntoViewSpec;Landroidx/compose/foundation/OverscrollEffect;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    .line 282
    new-instance p3, Landroidx/compose/foundation/ScrollingLayoutElement;

    iget-object v0, p0, Landroidx/compose/foundation/ScrollKt$scroll$2;->$state:Landroidx/compose/foundation/ScrollState;

    iget-boolean v1, p0, Landroidx/compose/foundation/ScrollKt$scroll$2;->$reverseScrolling:Z

    iget-boolean p0, p0, Landroidx/compose/foundation/ScrollKt$scroll$2;->$isVertical:Z

    invoke-direct {p3, v0, v1, p0}, Landroidx/compose/foundation/ScrollingLayoutElement;-><init>(Landroidx/compose/foundation/ScrollState;ZZ)V

    invoke-interface {p1, p3}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_2
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 264
    check-cast p1, Landroidx/compose/ui/Modifier;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/ScrollKt$scroll$2;->invoke(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method
