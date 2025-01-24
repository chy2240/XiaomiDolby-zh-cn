.class final Landroidx/compose/material/ripple/RippleNode$onAttach$1$1;
.super Ljava/lang/Object;
.source "Ripple.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field final synthetic $$this$launch:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic this$0:Landroidx/compose/material/ripple/RippleNode;


# direct methods
.method constructor <init>(Landroidx/compose/material/ripple/RippleNode;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1$1;->this$0:Landroidx/compose/material/ripple/RippleNode;

    iput-object p2, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1$1;->$$this$launch:Lkotlinx/coroutines/CoroutineScope;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 333
    instance-of p2, p1, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    if-eqz p2, :cond_0

    iget-object p0, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1$1;->this$0:Landroidx/compose/material/ripple/RippleNode;

    check-cast p1, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    invoke-virtual {p0, p1}, Landroidx/compose/material/ripple/RippleNode;->addRipple(Landroidx/compose/foundation/interaction/PressInteraction$Press;)V

    goto :goto_0

    .line 334
    :cond_0
    instance-of p2, p1, Landroidx/compose/foundation/interaction/PressInteraction$Release;

    if-eqz p2, :cond_1

    iget-object p0, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1$1;->this$0:Landroidx/compose/material/ripple/RippleNode;

    check-cast p1, Landroidx/compose/foundation/interaction/PressInteraction$Release;

    invoke-virtual {p1}, Landroidx/compose/foundation/interaction/PressInteraction$Release;->getPress()Landroidx/compose/foundation/interaction/PressInteraction$Press;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/material/ripple/RippleNode;->removeRipple(Landroidx/compose/foundation/interaction/PressInteraction$Press;)V

    goto :goto_0

    .line 335
    :cond_1
    instance-of p2, p1, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;

    if-eqz p2, :cond_2

    iget-object p0, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1$1;->this$0:Landroidx/compose/material/ripple/RippleNode;

    check-cast p1, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;

    invoke-virtual {p1}, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;->getPress()Landroidx/compose/foundation/interaction/PressInteraction$Press;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/material/ripple/RippleNode;->removeRipple(Landroidx/compose/foundation/interaction/PressInteraction$Press;)V

    goto :goto_0

    .line 336
    :cond_2
    iget-object p2, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1$1;->this$0:Landroidx/compose/material/ripple/RippleNode;

    iget-object p0, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1$1;->$$this$launch:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p2, p1, p0}, Landroidx/compose/material/ripple/RippleNode;->access$updateStateLayer(Landroidx/compose/material/ripple/RippleNode;Landroidx/compose/foundation/interaction/Interaction;Lkotlinx/coroutines/CoroutineScope;)V

    .line 338
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 331
    check-cast p1, Landroidx/compose/foundation/interaction/Interaction;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/ripple/RippleNode$onAttach$1$1;->emit(Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
