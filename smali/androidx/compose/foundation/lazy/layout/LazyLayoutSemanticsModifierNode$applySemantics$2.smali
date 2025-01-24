.class final Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode$applySemantics$2;
.super Lkotlin/jvm/internal/Lambda;
.source "LazyLayoutSemantics.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode$applySemantics$2;->this$0:Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Float;
    .locals 1

    .line 192
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode$applySemantics$2;->this$0:Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode;

    invoke-static {v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode;->access$getState$p(Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode;)Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;->getViewport()I

    move-result v0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode$applySemantics$2;->this$0:Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode;

    invoke-static {p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode;->access$getState$p(Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode;)Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;->getContentPadding()I

    move-result p0

    sub-int/2addr v0, p0

    int-to-float p0, v0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 192
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode$applySemantics$2;->invoke()Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
