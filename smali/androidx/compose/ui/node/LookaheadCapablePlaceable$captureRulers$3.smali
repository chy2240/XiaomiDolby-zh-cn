.class final Landroidx/compose/ui/node/LookaheadCapablePlaceable$captureRulers$3;
.super Lkotlin/jvm/internal/Lambda;
.source "LookaheadDelegate.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $placeableResult:Landroidx/compose/ui/node/PlaceableResult;

.field final synthetic this$0:Landroidx/compose/ui/node/LookaheadCapablePlaceable;


# direct methods
.method constructor <init>(Landroidx/compose/ui/node/PlaceableResult;Landroidx/compose/ui/node/LookaheadCapablePlaceable;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable$captureRulers$3;->$placeableResult:Landroidx/compose/ui/node/PlaceableResult;

    iput-object p2, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable$captureRulers$3;->this$0:Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 259
    invoke-virtual {p0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable$captureRulers$3;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 1

    .line 263
    iget-object v0, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable$captureRulers$3;->$placeableResult:Landroidx/compose/ui/node/PlaceableResult;

    invoke-virtual {v0}, Landroidx/compose/ui/node/PlaceableResult;->getResult()Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/layout/MeasureResult;->getRulers()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable$captureRulers$3;->this$0:Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    invoke-virtual {p0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->getRulerScope()Landroidx/compose/ui/layout/RulerScope;

    move-result-object p0

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
