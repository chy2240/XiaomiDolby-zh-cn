.class final Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Scrollable.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic $$this$scroll:Landroidx/compose/foundation/gestures/NestedScrollScope;

.field final synthetic $previousValue:Lkotlin/jvm/internal/Ref$FloatRef;

.field final synthetic $this_semanticsScrollBy:Landroidx/compose/foundation/gestures/ScrollingLogic;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$FloatRef;Landroidx/compose/foundation/gestures/ScrollingLogic;Landroidx/compose/foundation/gestures/NestedScrollScope;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2$1;->$previousValue:Lkotlin/jvm/internal/Ref$FloatRef;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2$1;->$this_semanticsScrollBy:Landroidx/compose/foundation/gestures/ScrollingLogic;

    iput-object p3, p0, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2$1;->$$this$scroll:Landroidx/compose/foundation/gestures/NestedScrollScope;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 922
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2$1;->invoke(FF)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(FF)V
    .locals 3

    .line 923
    iget-object p2, p0, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2$1;->$previousValue:Lkotlin/jvm/internal/Ref$FloatRef;

    iget p2, p2, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    sub-float/2addr p1, p2

    .line 927
    iget-object p2, p0, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2$1;->$this_semanticsScrollBy:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 925
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2$1;->$$this$scroll:Landroidx/compose/foundation/gestures/NestedScrollScope;

    invoke-virtual {p2, p1}, Landroidx/compose/foundation/gestures/ScrollingLogic;->reverseIfNeeded(F)F

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/compose/foundation/gestures/ScrollingLogic;->toOffset-tuRUvjQ(F)J

    move-result-wide v1

    sget-object p1, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;->Companion:Landroidx/compose/ui/input/nestedscroll/NestedScrollSource$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource$Companion;->getUserInput-WNlRxjI()I

    move-result p1

    invoke-interface {v0, v1, v2, p1}, Landroidx/compose/foundation/gestures/NestedScrollScope;->scrollBy-OzD1aCk(JI)J

    move-result-wide v0

    .line 926
    invoke-virtual {p2, v0, v1}, Landroidx/compose/foundation/gestures/ScrollingLogic;->toFloat-k-4lQ0M(J)F

    move-result p1

    .line 927
    invoke-virtual {p2, p1}, Landroidx/compose/foundation/gestures/ScrollingLogic;->reverseIfNeeded(F)F

    move-result p1

    .line 928
    iget-object p0, p0, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2$1;->$previousValue:Lkotlin/jvm/internal/Ref$FloatRef;

    iget p2, p0, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    add-float/2addr p2, p1

    iput p2, p0, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    return-void
.end method
