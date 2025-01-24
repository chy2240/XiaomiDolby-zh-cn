.class final Landroidx/compose/foundation/FocusableNode$retrievePinnableContainer$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Focusable.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $container:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic this$0:Landroidx/compose/foundation/FocusableNode;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/compose/foundation/FocusableNode;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/foundation/FocusableNode$retrievePinnableContainer$1;->$container:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Landroidx/compose/foundation/FocusableNode$retrievePinnableContainer$1;->this$0:Landroidx/compose/foundation/FocusableNode;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 272
    invoke-virtual {p0}, Landroidx/compose/foundation/FocusableNode$retrievePinnableContainer$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 2

    .line 272
    iget-object v0, p0, Landroidx/compose/foundation/FocusableNode$retrievePinnableContainer$1;->$container:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p0, p0, Landroidx/compose/foundation/FocusableNode$retrievePinnableContainer$1;->this$0:Landroidx/compose/foundation/FocusableNode;

    invoke-static {}, Landroidx/compose/ui/layout/PinnableContainerKt;->getLocalPinnableContainer()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v1

    invoke-static {p0, v1}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-void
.end method
