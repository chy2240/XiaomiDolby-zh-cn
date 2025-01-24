.class public abstract Landroidx/compose/ui/draganddrop/DragAndDropNodeKt;
.super Ljava/lang/Object;
.source "DragAndDropNode.kt"


# direct methods
.method public static final synthetic access$contains-Uv8p0NA(Landroidx/compose/ui/draganddrop/DragAndDropNode;J)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/draganddrop/DragAndDropNodeKt;->contains-Uv8p0NA(Landroidx/compose/ui/draganddrop/DragAndDropNode;J)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$dispatchEntered(Landroidx/compose/ui/draganddrop/DragAndDropTarget;Landroidx/compose/ui/draganddrop/DragAndDropEvent;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/draganddrop/DragAndDropNodeKt;->dispatchEntered(Landroidx/compose/ui/draganddrop/DragAndDropTarget;Landroidx/compose/ui/draganddrop/DragAndDropEvent;)V

    return-void
.end method

.method public static final synthetic access$traverseSelfAndDescendants(Landroidx/compose/ui/node/TraversableNode;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/draganddrop/DragAndDropNodeKt;->traverseSelfAndDescendants(Landroidx/compose/ui/node/TraversableNode;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final contains-Uv8p0NA(Landroidx/compose/ui/draganddrop/DragAndDropNode;J)Z
    .locals 9

    .line 456
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 457
    :cond_0
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v0

    .line 458
    invoke-interface {v0}, Landroidx/compose/ui/layout/LayoutCoordinates;->isAttached()Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    .line 460
    :cond_1
    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->positionInRoot(Landroidx/compose/ui/layout/LayoutCoordinates;)J

    move-result-wide v2

    const/16 v0, 0x20

    shr-long v4, v2, v0

    long-to-int v4, v4

    .line 22
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    const-wide v5, 0xffffffffL

    and-long/2addr v2, v5

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    .line 464
    invoke-virtual {p0}, Landroidx/compose/ui/draganddrop/DragAndDropNode;->getSize-YbymL2g$ui_release()J

    move-result-wide v7

    shr-long/2addr v7, v0

    long-to-int v3, v7

    int-to-float v3, v3

    add-float/2addr v3, v4

    .line 465
    invoke-virtual {p0}, Landroidx/compose/ui/draganddrop/DragAndDropNode;->getSize-YbymL2g$ui_release()J

    move-result-wide v7

    and-long/2addr v7, v5

    long-to-int p0, v7

    int-to-float p0, p0

    add-float/2addr p0, v2

    shr-long v7, p1, v0

    long-to-int v0, v7

    .line 22
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    cmpg-float v4, v4, v0

    if-gtz v4, :cond_2

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_2

    and-long/2addr p1, v5

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    cmpg-float p2, v2, p1

    if-gtz p2, :cond_2

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private static final dispatchEntered(Landroidx/compose/ui/draganddrop/DragAndDropTarget;Landroidx/compose/ui/draganddrop/DragAndDropEvent;)V
    .locals 0

    .line 449
    invoke-interface {p0, p1}, Landroidx/compose/ui/draganddrop/DragAndDropTarget;->onEntered(Landroidx/compose/ui/draganddrop/DragAndDropEvent;)V

    .line 451
    invoke-interface {p0, p1}, Landroidx/compose/ui/draganddrop/DragAndDropTarget;->onMoved(Landroidx/compose/ui/draganddrop/DragAndDropEvent;)V

    return-void
.end method

.method private static final traverseSelfAndDescendants(Landroidx/compose/ui/node/TraversableNode;Lkotlin/jvm/functions/Function1;)V
    .locals 2

    .line 473
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;->ContinueTraversal:Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;

    if-eq v0, v1, :cond_0

    return-void

    .line 474
    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/ui/node/TraversableNodeKt;->traverseDescendants(Landroidx/compose/ui/node/TraversableNode;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
