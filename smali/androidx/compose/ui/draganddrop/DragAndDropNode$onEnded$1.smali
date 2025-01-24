.class final Landroidx/compose/ui/draganddrop/DragAndDropNode$onEnded$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DragAndDropNode.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $event:Landroidx/compose/ui/draganddrop/DragAndDropEvent;


# direct methods
.method constructor <init>(Landroidx/compose/ui/draganddrop/DragAndDropEvent;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/ui/draganddrop/DragAndDropNode$onEnded$1;->$event:Landroidx/compose/ui/draganddrop/DragAndDropEvent;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/ui/draganddrop/DragAndDropNode;)Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;
    .locals 1

    .line 436
    invoke-virtual {p1}, Landroidx/compose/ui/Modifier$Node;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 437
    sget-object p0, Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;->SkipSubtreeAndContinueTraversal:Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;

    return-object p0

    .line 439
    :cond_0
    invoke-static {p1}, Landroidx/compose/ui/draganddrop/DragAndDropNode;->access$getThisDragAndDropTarget$p(Landroidx/compose/ui/draganddrop/DragAndDropNode;)Landroidx/compose/ui/draganddrop/DragAndDropTarget;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/compose/ui/draganddrop/DragAndDropNode$onEnded$1;->$event:Landroidx/compose/ui/draganddrop/DragAndDropEvent;

    invoke-interface {v0, p0}, Landroidx/compose/ui/draganddrop/DragAndDropTarget;->onEnded(Landroidx/compose/ui/draganddrop/DragAndDropEvent;)V

    :cond_1
    const/4 p0, 0x0

    .line 440
    invoke-static {p1, p0}, Landroidx/compose/ui/draganddrop/DragAndDropNode;->access$setThisDragAndDropTarget$p(Landroidx/compose/ui/draganddrop/DragAndDropNode;Landroidx/compose/ui/draganddrop/DragAndDropTarget;)V

    .line 441
    invoke-static {p1, p0}, Landroidx/compose/ui/draganddrop/DragAndDropNode;->access$setLastChildDragAndDropModifierNode$p(Landroidx/compose/ui/draganddrop/DragAndDropNode;Landroidx/compose/ui/draganddrop/DragAndDropNode;)V

    .line 442
    sget-object p0, Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;->ContinueTraversal:Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 433
    check-cast p1, Landroidx/compose/ui/draganddrop/DragAndDropNode;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/draganddrop/DragAndDropNode$onEnded$1;->invoke(Landroidx/compose/ui/draganddrop/DragAndDropNode;)Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;

    move-result-object p0

    return-object p0
.end method
