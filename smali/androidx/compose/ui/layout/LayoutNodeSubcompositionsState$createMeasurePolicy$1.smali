.class public final Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1;
.super Landroidx/compose/ui/node/LayoutNode$NoIntrinsicsMeasurePolicy;
.source "SubcomposeLayout.kt"


# instance fields
.field final synthetic $block:Lkotlin/jvm/functions/Function2;

.field final synthetic this$0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;


# direct methods
.method constructor <init>(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;Lkotlin/jvm/functions/Function2;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1;->this$0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    iput-object p2, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1;->$block:Lkotlin/jvm/functions/Function2;

    .line 720
    invoke-direct {p0, p3}, Landroidx/compose/ui/node/LayoutNode$NoIntrinsicsMeasurePolicy;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 1

    .line 725
    iget-object p2, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1;->this$0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    invoke-static {p2}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->access$getScope$p(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;

    move-result-object p2

    invoke-interface {p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;->setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 726
    iget-object p2, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1;->this$0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    invoke-static {p2}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->access$getScope$p(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;

    move-result-object p2

    invoke-interface {p1}, Landroidx/compose/ui/unit/Density;->getDensity()F

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;->setDensity(F)V

    .line 727
    iget-object p2, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1;->this$0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    invoke-static {p2}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->access$getScope$p(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;

    move-result-object p2

    invoke-interface {p1}, Landroidx/compose/ui/unit/FontScaling;->getFontScale()F

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;->setFontScale(F)V

    .line 728
    invoke-interface {p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->isLookingAhead()Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1;->this$0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    invoke-static {p1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->access$getRoot$p(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getLookaheadRoot$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 729
    iget-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1;->this$0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    invoke-static {p1, p2}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->access$setCurrentPostLookaheadIndex$p(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;I)V

    .line 730
    iget-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1;->$block:Lkotlin/jvm/functions/Function2;

    iget-object p2, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1;->this$0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    invoke-static {p2}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->access$getPostLookaheadMeasureScope$p(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$PostLookaheadMeasureScopeImpl;

    move-result-object p2

    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->box-impl(J)Landroidx/compose/ui/unit/Constraints;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/layout/MeasureResult;

    .line 731
    iget-object p2, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1;->this$0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    invoke-static {p2}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->access$getCurrentPostLookaheadIndex$p(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)I

    move-result p2

    .line 732
    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1;->this$0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    .line 769
    new-instance p3, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1$measure-3p2s80s$$inlined$createMeasureResult$1;

    invoke-direct {p3, p1, p0, p2, p1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1$measure-3p2s80s$$inlined$createMeasureResult$1;-><init>(Landroidx/compose/ui/layout/MeasureResult;Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;ILandroidx/compose/ui/layout/MeasureResult;)V

    return-object p3

    .line 739
    :cond_0
    iget-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1;->this$0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    invoke-static {p1, p2}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->access$setCurrentIndex$p(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;I)V

    .line 740
    iget-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1;->$block:Lkotlin/jvm/functions/Function2;

    iget-object p2, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1;->this$0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    invoke-static {p2}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->access$getScope$p(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;

    move-result-object p2

    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->box-impl(J)Landroidx/compose/ui/unit/Constraints;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/layout/MeasureResult;

    .line 741
    iget-object p2, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1;->this$0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    invoke-static {p2}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->access$getCurrentIndex$p(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)I

    move-result p2

    .line 742
    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1;->this$0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    .line 769
    new-instance p3, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1$measure-3p2s80s$$inlined$createMeasureResult$2;

    invoke-direct {p3, p1, p0, p2, p1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1$measure-3p2s80s$$inlined$createMeasureResult$2;-><init>(Landroidx/compose/ui/layout/MeasureResult;Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;ILandroidx/compose/ui/layout/MeasureResult;)V

    return-object p3
.end method
