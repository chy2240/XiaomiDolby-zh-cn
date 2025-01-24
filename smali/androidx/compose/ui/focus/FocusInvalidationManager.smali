.class public final Landroidx/compose/ui/focus/FocusInvalidationManager;
.super Ljava/lang/Object;
.source "FocusInvalidationManager.kt"


# instance fields
.field private final focusEventNodes:Ljava/util/List;

.field private final focusPropertiesNodes:Ljava/util/List;

.field private final focusTargetNodes:Ljava/util/List;

.field private final focusTargetsWithInvalidatedFocusEvents:Ljava/util/List;

.field private final invalidateOwnerFocusState:Lkotlin/jvm/functions/Function0;

.field private final onRequestApplyChangesListener:Lkotlin/jvm/functions/Function1;

.field private final rootFocusStateFetcher:Lkotlin/jvm/functions/Function0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Landroidx/compose/ui/focus/FocusInvalidationManager;->onRequestApplyChangesListener:Lkotlin/jvm/functions/Function1;

    .line 32
    iput-object p2, p0, Landroidx/compose/ui/focus/FocusInvalidationManager;->invalidateOwnerFocusState:Lkotlin/jvm/functions/Function0;

    .line 33
    iput-object p3, p0, Landroidx/compose/ui/focus/FocusInvalidationManager;->rootFocusStateFetcher:Lkotlin/jvm/functions/Function0;

    .line 35
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusTargetNodes:Ljava/util/List;

    .line 36
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusEventNodes:Ljava/util/List;

    .line 37
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusPropertiesNodes:Ljava/util/List;

    .line 38
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusTargetsWithInvalidatedFocusEvents:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$invalidateNodes(Landroidx/compose/ui/focus/FocusInvalidationManager;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroidx/compose/ui/focus/FocusInvalidationManager;->invalidateNodes()V

    return-void
.end method

.method private final invalidateNodes()V
    .locals 19

    move-object/from16 v0, p0

    .line 69
    iget-object v1, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->rootFocusStateFetcher:Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/focus/FocusState;

    invoke-interface {v1}, Landroidx/compose/ui/focus/FocusState;->getHasFocus()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    .line 71
    iget-object v1, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusEventNodes:Ljava/util/List;

    .line 34
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_0

    .line 35
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 36
    check-cast v5, Landroidx/compose/ui/focus/FocusEventModifierNode;

    .line 71
    sget-object v6, Landroidx/compose/ui/focus/FocusStateImpl;->Inactive:Landroidx/compose/ui/focus/FocusStateImpl;

    invoke-interface {v5, v6}, Landroidx/compose/ui/focus/FocusEventModifierNode;->onFocusEvent(Landroidx/compose/ui/focus/FocusState;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 72
    :cond_0
    iget-object v1, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusTargetNodes:Ljava/util/List;

    .line 34
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    :goto_1
    if-ge v2, v3, :cond_2

    .line 35
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 36
    check-cast v4, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 73
    invoke-virtual {v4}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Landroidx/compose/ui/focus/FocusTargetNode;->isInitialized$ui_release()Z

    move-result v5

    if-nez v5, :cond_1

    .line 74
    sget-object v5, Landroidx/compose/ui/focus/FocusStateImpl;->Inactive:Landroidx/compose/ui/focus/FocusStateImpl;

    invoke-virtual {v4, v5}, Landroidx/compose/ui/focus/FocusTargetNode;->initializeFocusState$ui_release(Landroidx/compose/ui/focus/FocusStateImpl;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 77
    :cond_2
    iget-object v1, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusTargetNodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 78
    iget-object v1, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusEventNodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 79
    iget-object v1, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusPropertiesNodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 80
    iget-object v1, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusTargetsWithInvalidatedFocusEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 81
    iget-object v0, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->invalidateOwnerFocusState:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void

    .line 86
    :cond_3
    iget-object v1, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusPropertiesNodes:Ljava/util/List;

    .line 34
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    move v4, v2

    :goto_2
    const-string v5, "visitChildren called on an unattached node"

    const/16 v6, 0x400

    const/16 v7, 0x10

    const/4 v9, 0x1

    if-ge v4, v3, :cond_19

    .line 35
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 36
    check-cast v10, Landroidx/compose/ui/focus/FocusPropertiesModifierNode;

    .line 89
    invoke-interface {v10}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v11

    if-eqz v11, :cond_18

    .line 116
    invoke-static {v6}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v6

    .line 267
    invoke-interface {v10}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    const/4 v12, 0x0

    :goto_3
    if-eqz v11, :cond_b

    .line 404
    instance-of v13, v11, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v13, :cond_4

    .line 405
    check-cast v11, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 92
    iget-object v13, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusTargetNodes:Ljava/util/List;

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 246
    :cond_4
    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v13

    and-int/2addr v13, v6

    if-eqz v13, :cond_a

    .line 406
    instance-of v13, v11, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v13, :cond_a

    .line 412
    move-object v13, v11

    check-cast v13, Landroidx/compose/ui/node/DelegatingNode;

    .line 240
    invoke-virtual {v13}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v13

    move v14, v2

    :goto_4
    if-eqz v13, :cond_9

    .line 246
    invoke-virtual {v13}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v15

    and-int/2addr v15, v6

    if-eqz v15, :cond_8

    add-int/lit8 v14, v14, 0x1

    if-ne v14, v9, :cond_5

    move-object v11, v13

    goto :goto_5

    :cond_5
    if-nez v12, :cond_6

    .line 1130
    new-instance v12, Landroidx/compose/runtime/collection/MutableVector;

    new-array v15, v7, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v12, v15, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_6
    if-eqz v11, :cond_7

    .line 423
    invoke-virtual {v12, v11}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    const/4 v11, 0x0

    .line 426
    :cond_7
    invoke-virtual {v12, v13}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 243
    :cond_8
    :goto_5
    invoke-virtual {v13}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v13

    goto :goto_4

    :cond_9
    if-ne v14, v9, :cond_a

    goto :goto_3

    .line 435
    :cond_a
    :goto_6
    invoke-static {v12}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    goto :goto_3

    .line 121
    :cond_b
    invoke-interface {v10}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v11

    if-eqz v11, :cond_17

    .line 1130
    new-instance v5, Landroidx/compose/runtime/collection/MutableVector;

    new-array v11, v7, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v5, v11, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 123
    invoke-interface {v10}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    if-nez v11, :cond_c

    .line 124
    invoke-interface {v10}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    invoke-static {v5, v10, v2}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;Z)V

    goto :goto_7

    :cond_c
    invoke-virtual {v5, v11}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 545
    :cond_d
    :goto_7
    invoke-virtual {v5}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v10

    if-eqz v10, :cond_18

    .line 42
    invoke-virtual {v5}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v10

    sub-int/2addr v10, v9

    .line 126
    invoke-virtual {v5, v10}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/ui/Modifier$Node;

    .line 127
    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v11

    and-int/2addr v11, v6

    if-nez v11, :cond_e

    .line 128
    invoke-static {v5, v10, v2}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;Z)V

    goto :goto_7

    :cond_e
    :goto_8
    if-eqz v10, :cond_d

    .line 134
    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v11

    and-int/2addr v11, v6

    if-eqz v11, :cond_16

    const/4 v11, 0x0

    :goto_9
    if-eqz v10, :cond_d

    .line 404
    instance-of v12, v10, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v12, :cond_f

    .line 405
    check-cast v10, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 92
    iget-object v12, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusTargetNodes:Ljava/util/List;

    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 246
    :cond_f
    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v12

    and-int/2addr v12, v6

    if-eqz v12, :cond_15

    .line 406
    instance-of v12, v10, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v12, :cond_15

    .line 412
    move-object v12, v10

    check-cast v12, Landroidx/compose/ui/node/DelegatingNode;

    .line 240
    invoke-virtual {v12}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v12

    move v13, v2

    :goto_a
    if-eqz v12, :cond_14

    .line 246
    invoke-virtual {v12}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v14

    and-int/2addr v14, v6

    if-eqz v14, :cond_13

    add-int/lit8 v13, v13, 0x1

    if-ne v13, v9, :cond_10

    move-object v10, v12

    goto :goto_b

    :cond_10
    if-nez v11, :cond_11

    .line 1130
    new-instance v11, Landroidx/compose/runtime/collection/MutableVector;

    new-array v14, v7, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v11, v14, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_11
    if-eqz v10, :cond_12

    .line 423
    invoke-virtual {v11, v10}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    const/4 v10, 0x0

    .line 426
    :cond_12
    invoke-virtual {v11, v12}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 243
    :cond_13
    :goto_b
    invoke-virtual {v12}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v12

    goto :goto_a

    :cond_14
    if-ne v13, v9, :cond_15

    goto :goto_9

    .line 435
    :cond_15
    :goto_c
    invoke-static {v11}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    goto :goto_9

    .line 138
    :cond_16
    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    goto :goto_8

    .line 121
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 95
    :cond_19
    iget-object v1, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusPropertiesNodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 98
    iget-object v1, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusEventNodes:Ljava/util/List;

    .line 34
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    move v4, v2

    :goto_d
    if-ge v4, v3, :cond_3a

    .line 35
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 36
    check-cast v10, Landroidx/compose/ui/focus/FocusEventModifierNode;

    .line 104
    invoke-interface {v10}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v11

    if-nez v11, :cond_1a

    .line 105
    sget-object v11, Landroidx/compose/ui/focus/FocusStateImpl;->Inactive:Landroidx/compose/ui/focus/FocusStateImpl;

    invoke-interface {v10, v11}, Landroidx/compose/ui/focus/FocusEventModifierNode;->onFocusEvent(Landroidx/compose/ui/focus/FocusState;)V

    move v7, v2

    move v2, v9

    goto/16 :goto_1e

    .line 116
    :cond_1a
    invoke-static {v6}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v11

    .line 267
    invoke-interface {v10}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v12

    move/from16 v16, v2

    move v15, v9

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_e
    if-eqz v12, :cond_24

    .line 404
    instance-of v6, v12, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v6, :cond_1d

    .line 405
    check-cast v12, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v13, :cond_1b

    move/from16 v16, v9

    .line 126
    :cond_1b
    iget-object v6, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusTargetNodes:Ljava/util/List;

    invoke-interface {v6, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 128
    iget-object v6, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusTargetsWithInvalidatedFocusEvents:Ljava/util/List;

    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v15, v2

    :cond_1c
    move-object v13, v12

    goto :goto_11

    .line 246
    :cond_1d
    invoke-virtual {v12}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v6

    and-int/2addr v6, v11

    if-eqz v6, :cond_23

    .line 406
    instance-of v6, v12, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v6, :cond_23

    .line 412
    move-object v6, v12

    check-cast v6, Landroidx/compose/ui/node/DelegatingNode;

    .line 240
    invoke-virtual {v6}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    move v8, v2

    :goto_f
    if-eqz v6, :cond_22

    .line 246
    invoke-virtual {v6}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v17

    and-int v17, v17, v11

    if-eqz v17, :cond_21

    add-int/lit8 v8, v8, 0x1

    if-ne v8, v9, :cond_1e

    move-object v12, v6

    goto :goto_10

    :cond_1e
    if-nez v14, :cond_1f

    .line 1130
    new-instance v14, Landroidx/compose/runtime/collection/MutableVector;

    new-array v9, v7, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v14, v9, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_1f
    if-eqz v12, :cond_20

    .line 423
    invoke-virtual {v14, v12}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    const/4 v12, 0x0

    .line 426
    :cond_20
    invoke-virtual {v14, v6}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 243
    :cond_21
    :goto_10
    invoke-virtual {v6}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    const/4 v9, 0x1

    goto :goto_f

    :cond_22
    move v6, v9

    if-ne v8, v6, :cond_23

    move v9, v6

    const/16 v6, 0x400

    goto :goto_e

    .line 435
    :cond_23
    :goto_11
    invoke-static {v14}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v12

    const/16 v6, 0x400

    const/4 v9, 0x1

    goto :goto_e

    .line 121
    :cond_24
    invoke-interface {v10}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v6

    if-eqz v6, :cond_39

    .line 1130
    new-instance v6, Landroidx/compose/runtime/collection/MutableVector;

    new-array v8, v7, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v6, v8, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 123
    invoke-interface {v10}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    if-nez v8, :cond_25

    .line 124
    invoke-interface {v10}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    invoke-static {v6, v8, v2}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;Z)V

    goto :goto_12

    :cond_25
    invoke-virtual {v6, v8}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 545
    :goto_12
    invoke-virtual {v6}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v8

    if-eqz v8, :cond_34

    .line 42
    invoke-virtual {v6}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    .line 126
    invoke-virtual {v6, v8}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/Modifier$Node;

    .line 127
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v9

    and-int/2addr v9, v11

    if-nez v9, :cond_27

    .line 128
    invoke-static {v6, v8, v2}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;Z)V

    :cond_26
    move v7, v2

    const/4 v2, 0x1

    goto/16 :goto_1c

    :cond_27
    :goto_13
    if-eqz v8, :cond_26

    .line 134
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v9

    and-int/2addr v9, v11

    if-eqz v9, :cond_33

    const/4 v9, 0x0

    :goto_14
    if-eqz v8, :cond_32

    .line 404
    instance-of v12, v8, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v12, :cond_2a

    .line 405
    check-cast v8, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v13, :cond_28

    const/16 v16, 0x1

    .line 126
    :cond_28
    iget-object v12, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusTargetNodes:Ljava/util/List;

    invoke-interface {v12, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_29

    .line 128
    iget-object v12, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusTargetsWithInvalidatedFocusEvents:Ljava/util/List;

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v15, v2

    :cond_29
    move v7, v2

    move-object v13, v8

    :goto_15
    const/4 v2, 0x1

    goto :goto_1a

    .line 246
    :cond_2a
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v12

    and-int/2addr v12, v11

    if-eqz v12, :cond_30

    .line 406
    instance-of v12, v8, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v12, :cond_30

    .line 412
    move-object v12, v8

    check-cast v12, Landroidx/compose/ui/node/DelegatingNode;

    .line 240
    invoke-virtual {v12}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v12

    move v14, v2

    :goto_16
    if-eqz v12, :cond_2f

    .line 246
    invoke-virtual {v12}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v18

    and-int v18, v18, v11

    if-eqz v18, :cond_2e

    add-int/lit8 v14, v14, 0x1

    const/4 v2, 0x1

    if-ne v14, v2, :cond_2b

    move-object v8, v12

    const/4 v7, 0x0

    goto :goto_18

    :cond_2b
    if-nez v9, :cond_2c

    .line 1130
    new-instance v9, Landroidx/compose/runtime/collection/MutableVector;

    new-array v2, v7, [Landroidx/compose/ui/Modifier$Node;

    const/4 v7, 0x0

    invoke-direct {v9, v2, v7}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    goto :goto_17

    :cond_2c
    const/4 v7, 0x0

    :goto_17
    if-eqz v8, :cond_2d

    .line 423
    invoke-virtual {v9, v8}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x0

    .line 426
    :cond_2d
    invoke-virtual {v9, v12}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_2e
    move v7, v2

    .line 243
    :goto_18
    invoke-virtual {v12}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v12

    move v2, v7

    const/16 v7, 0x10

    goto :goto_16

    :cond_2f
    move v7, v2

    const/4 v2, 0x1

    if-ne v14, v2, :cond_31

    :goto_19
    move v2, v7

    const/16 v7, 0x10

    goto :goto_14

    :cond_30
    move v7, v2

    goto :goto_15

    .line 435
    :cond_31
    :goto_1a
    invoke-static {v9}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    goto :goto_19

    :cond_32
    move v7, v2

    :goto_1b
    const/16 v7, 0x10

    goto/16 :goto_12

    :cond_33
    move v7, v2

    const/4 v2, 0x1

    .line 138
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    move v2, v7

    const/16 v7, 0x10

    goto/16 :goto_13

    :goto_1c
    move v2, v7

    goto :goto_1b

    :cond_34
    move v7, v2

    const/4 v2, 0x1

    if-eqz v15, :cond_38

    if-eqz v16, :cond_35

    .line 136
    invoke-static {v10}, Landroidx/compose/ui/focus/FocusEventModifierNodeKt;->getFocusState(Landroidx/compose/ui/focus/FocusEventModifierNode;)Landroidx/compose/ui/focus/FocusState;

    move-result-object v6

    goto :goto_1d

    :cond_35
    if-eqz v13, :cond_36

    .line 138
    invoke-virtual {v13}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v6

    if-nez v6, :cond_37

    :cond_36
    sget-object v6, Landroidx/compose/ui/focus/FocusStateImpl;->Inactive:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 134
    :cond_37
    :goto_1d
    invoke-interface {v10, v6}, Landroidx/compose/ui/focus/FocusEventModifierNode;->onFocusEvent(Landroidx/compose/ui/focus/FocusState;)V

    :cond_38
    :goto_1e
    add-int/lit8 v4, v4, 0x1

    move v9, v2

    move v2, v7

    const/16 v6, 0x400

    const/16 v7, 0x10

    goto/16 :goto_d

    .line 121
    :cond_39
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3a
    move v7, v2

    .line 143
    iget-object v1, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusEventNodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 146
    iget-object v1, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusTargetNodes:Ljava/util/List;

    .line 34
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    :goto_1f
    if-ge v7, v2, :cond_3d

    .line 35
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 36
    check-cast v3, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 149
    invoke-virtual {v3}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 151
    invoke-virtual {v3}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v4

    .line 152
    invoke-virtual {v3}, Landroidx/compose/ui/focus/FocusTargetNode;->invalidateFocus$ui_release()V

    .line 154
    invoke-virtual {v3}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v5

    if-ne v4, v5, :cond_3b

    .line 155
    iget-object v4, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusTargetsWithInvalidatedFocusEvents:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 157
    :cond_3b
    invoke-virtual {v3}, Landroidx/compose/ui/focus/FocusTargetNode;->dispatchFocusCallbacks$ui_release()V

    :cond_3c
    add-int/lit8 v7, v7, 0x1

    goto :goto_1f

    .line 160
    :cond_3d
    iget-object v1, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusTargetNodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 162
    iget-object v1, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusTargetsWithInvalidatedFocusEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 164
    iget-object v1, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->invalidateOwnerFocusState:Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 166
    iget-object v1, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusPropertiesNodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3e

    const-string v1, "Unprocessed FocusProperties nodes"

    .line 44
    invoke-static {v1}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 167
    :cond_3e
    iget-object v1, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusEventNodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3f

    const-string v1, "Unprocessed FocusEvent nodes"

    .line 44
    invoke-static {v1}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 168
    :cond_3f
    iget-object v0, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusTargetNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_40

    const-string v0, "Unprocessed FocusTarget nodes"

    .line 44
    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_40
    return-void
.end method

.method private final scheduleInvalidation(Ljava/util/List;Ljava/lang/Object;)V
    .locals 0

    .line 59
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 62
    iget-object p1, p0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusTargetNodes:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object p2, p0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusEventNodes:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/2addr p1, p2

    iget-object p2, p0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusPropertiesNodes:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/2addr p1, p2

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 63
    iget-object p1, p0, Landroidx/compose/ui/focus/FocusInvalidationManager;->onRequestApplyChangesListener:Lkotlin/jvm/functions/Function1;

    new-instance p2, Landroidx/compose/ui/focus/FocusInvalidationManager$scheduleInvalidation$1;

    invoke-direct {p2, p0}, Landroidx/compose/ui/focus/FocusInvalidationManager$scheduleInvalidation$1;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public final hasPendingInvalidation()Z
    .locals 1

    .line 53
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusTargetNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusPropertiesNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    iget-object p0, p0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusEventNodes:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final scheduleInvalidation(Landroidx/compose/ui/focus/FocusEventModifierNode;)V
    .locals 1

    .line 45
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusEventNodes:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Landroidx/compose/ui/focus/FocusInvalidationManager;->scheduleInvalidation(Ljava/util/List;Ljava/lang/Object;)V

    return-void
.end method

.method public final scheduleInvalidation(Landroidx/compose/ui/focus/FocusPropertiesModifierNode;)V
    .locals 1

    .line 49
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusPropertiesNodes:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Landroidx/compose/ui/focus/FocusInvalidationManager;->scheduleInvalidation(Ljava/util/List;Ljava/lang/Object;)V

    return-void
.end method

.method public final scheduleInvalidation(Landroidx/compose/ui/focus/FocusTargetNode;)V
    .locals 1

    .line 41
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusTargetNodes:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Landroidx/compose/ui/focus/FocusInvalidationManager;->scheduleInvalidation(Ljava/util/List;Ljava/lang/Object;)V

    return-void
.end method
