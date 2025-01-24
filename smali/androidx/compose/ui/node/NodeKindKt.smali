.class public abstract Landroidx/compose/ui/node/NodeKindKt;
.super Ljava/lang/Object;
.source "NodeKind.kt"


# static fields
.field private static final classToKindSetMap:Landroidx/collection/MutableObjectIntMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 185
    invoke-static {}, Landroidx/collection/ObjectIntMapKt;->mutableObjectIntMapOf()Landroidx/collection/MutableObjectIntMap;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/node/NodeKindKt;->classToKindSetMap:Landroidx/collection/MutableObjectIntMap;

    return-void
.end method

.method public static final autoInvalidateInsertedNode(Landroidx/compose/ui/Modifier$Node;)V
    .locals 2

    .line 259
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "autoInvalidateInsertedNode called on unattached node"

    .line 44
    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x1

    .line 260
    invoke-static {p0, v0, v1}, Landroidx/compose/ui/node/NodeKindKt;->autoInvalidateNodeIncludingDelegates(Landroidx/compose/ui/Modifier$Node;II)V

    return-void
.end method

.method public static final autoInvalidateNodeIncludingDelegates(Landroidx/compose/ui/Modifier$Node;II)V
    .locals 2

    .line 273
    instance-of v0, p0, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v0, :cond_0

    .line 274
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/node/DelegatingNode;

    invoke-virtual {v0}, Landroidx/compose/ui/node/DelegatingNode;->getSelfKindSet$ui_release()I

    move-result v1

    and-int/2addr v1, p1

    invoke-static {p0, v1, p2}, Landroidx/compose/ui/node/NodeKindKt;->autoInvalidateNodeSelf(Landroidx/compose/ui/Modifier$Node;II)V

    .line 275
    invoke-virtual {v0}, Landroidx/compose/ui/node/DelegatingNode;->getSelfKindSet$ui_release()I

    move-result p0

    not-int p0, p0

    and-int/2addr p0, p1

    .line 240
    invoke-virtual {v0}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    .line 277
    invoke-static {p1, p0, p2}, Landroidx/compose/ui/node/NodeKindKt;->autoInvalidateNodeIncludingDelegates(Landroidx/compose/ui/Modifier$Node;II)V

    .line 243
    invoke-virtual {p1}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object p1

    goto :goto_0

    .line 280
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v0

    and-int/2addr p1, v0

    invoke-static {p0, p1, p2}, Landroidx/compose/ui/node/NodeKindKt;->autoInvalidateNodeSelf(Landroidx/compose/ui/Modifier$Node;II)V

    :cond_1
    return-void
.end method

.method private static final autoInvalidateNodeSelf(Landroidx/compose/ui/Modifier$Node;II)V
    .locals 3

    if-nez p2, :cond_0

    .line 288
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getShouldAutoInvalidate()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 80
    invoke-static {v0}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    and-int/2addr v1, p1

    if-eqz v1, :cond_1

    .line 289
    instance-of v1, p0, Landroidx/compose/ui/node/LayoutModifierNode;

    if-eqz v1, :cond_1

    .line 290
    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/node/LayoutModifierNode;

    invoke-static {v1}, Landroidx/compose/ui/node/LayoutModifierNodeKt;->invalidateMeasurement(Landroidx/compose/ui/node/LayoutModifierNode;)V

    if-ne p2, v0, :cond_1

    .line 80
    invoke-static {v0}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    .line 292
    invoke-static {p0, v1}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireCoordinator-64DMado(Landroidx/compose/ui/node/DelegatableNode;I)Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v1

    .line 293
    invoke-virtual {v1}, Landroidx/compose/ui/node/NodeCoordinator;->onRelease()V

    :cond_1
    const/16 v1, 0x80

    .line 104
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    and-int/2addr v1, p1

    if-eqz v1, :cond_2

    .line 296
    instance-of v1, p0, Landroidx/compose/ui/node/LayoutAwareModifierNode;

    if-eqz v1, :cond_2

    if-eq p2, v0, :cond_2

    .line 300
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->invalidateMeasurements$ui_release()V

    :cond_2
    const/16 v1, 0x100

    .line 108
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    and-int/2addr v1, p1

    if-eqz v1, :cond_3

    .line 303
    instance-of v1, p0, Landroidx/compose/ui/node/GlobalPositionAwareModifierNode;

    if-eqz v1, :cond_3

    if-eq p2, v0, :cond_3

    .line 307
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->invalidateOnPositioned$ui_release()V

    :cond_3
    const/4 v1, 0x4

    .line 84
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    and-int/2addr v1, p1

    if-eqz v1, :cond_4

    .line 310
    instance-of v1, p0, Landroidx/compose/ui/node/DrawModifierNode;

    if-eqz v1, :cond_4

    .line 311
    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/node/DrawModifierNode;

    invoke-static {v1}, Landroidx/compose/ui/node/DrawModifierNodeKt;->invalidateDraw(Landroidx/compose/ui/node/DrawModifierNode;)V

    :cond_4
    const/16 v1, 0x8

    .line 88
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    and-int/2addr v1, p1

    if-eqz v1, :cond_5

    .line 313
    instance-of v1, p0, Landroidx/compose/ui/node/SemanticsModifierNode;

    if-eqz v1, :cond_5

    .line 314
    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/node/SemanticsModifierNode;

    invoke-static {v1}, Landroidx/compose/ui/node/SemanticsModifierNodeKt;->invalidateSemantics(Landroidx/compose/ui/node/SemanticsModifierNode;)V

    :cond_5
    const/16 v1, 0x40

    .line 100
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    and-int/2addr v1, p1

    if-eqz v1, :cond_6

    .line 316
    instance-of v1, p0, Landroidx/compose/ui/node/ParentDataModifierNode;

    if-eqz v1, :cond_6

    .line 317
    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/node/ParentDataModifierNode;

    invoke-static {v1}, Landroidx/compose/ui/node/ParentDataModifierNodeKt;->invalidateParentData(Landroidx/compose/ui/node/ParentDataModifierNode;)V

    :cond_6
    const/16 v1, 0x800

    .line 120
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    and-int/2addr v1, p1

    if-eqz v1, :cond_8

    .line 321
    instance-of v1, p0, Landroidx/compose/ui/focus/FocusPropertiesModifierNode;

    if-eqz v1, :cond_8

    .line 322
    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/focus/FocusPropertiesModifierNode;

    invoke-static {v1}, Landroidx/compose/ui/node/NodeKindKt;->specifiesCanFocusProperty(Landroidx/compose/ui/focus/FocusPropertiesModifierNode;)Z

    move-result v2

    if-eqz v2, :cond_8

    if-ne p2, v0, :cond_7

    .line 325
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKindKt;->scheduleInvalidationOfAssociatedFocusTargets(Landroidx/compose/ui/focus/FocusPropertiesModifierNode;)V

    goto :goto_0

    .line 326
    :cond_7
    invoke-static {v1}, Landroidx/compose/ui/focus/FocusPropertiesModifierNodeKt;->invalidateFocusProperties(Landroidx/compose/ui/focus/FocusPropertiesModifierNode;)V

    :cond_8
    :goto_0
    const/16 p2, 0x1000

    .line 124
    invoke-static {p2}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result p2

    and-int/2addr p1, p2

    if-eqz p1, :cond_9

    .line 329
    instance-of p1, p0, Landroidx/compose/ui/focus/FocusEventModifierNode;

    if-eqz p1, :cond_9

    .line 330
    check-cast p0, Landroidx/compose/ui/focus/FocusEventModifierNode;

    invoke-static {p0}, Landroidx/compose/ui/focus/FocusEventModifierNodeKt;->invalidateFocusEvent(Landroidx/compose/ui/focus/FocusEventModifierNode;)V

    :cond_9
    return-void
.end method

.method public static final autoInvalidateRemovedNode(Landroidx/compose/ui/Modifier$Node;)V
    .locals 2

    .line 254
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "autoInvalidateRemovedNode called on unattached node"

    .line 44
    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x2

    .line 255
    invoke-static {p0, v0, v1}, Landroidx/compose/ui/node/NodeKindKt;->autoInvalidateNodeIncludingDelegates(Landroidx/compose/ui/Modifier$Node;II)V

    return-void
.end method

.method public static final autoInvalidateUpdatedNode(Landroidx/compose/ui/Modifier$Node;)V
    .locals 2

    .line 264
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "autoInvalidateUpdatedNode called on unattached node"

    .line 44
    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 265
    invoke-static {p0, v0, v1}, Landroidx/compose/ui/node/NodeKindKt;->autoInvalidateNodeIncludingDelegates(Landroidx/compose/ui/Modifier$Node;II)V

    return-void
.end method

.method public static final calculateNodeKindSetFrom(Landroidx/compose/ui/Modifier$Element;)I
    .locals 2

    const/4 v0, 0x1

    .line 76
    invoke-static {v0}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v0

    .line 150
    instance-of v1, p0, Landroidx/compose/ui/layout/LayoutModifier;

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    .line 80
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    or-int/2addr v0, v1

    .line 153
    :cond_0
    instance-of v1, p0, Landroidx/compose/ui/draw/DrawModifier;

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    .line 84
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    or-int/2addr v0, v1

    .line 156
    :cond_1
    instance-of v1, p0, Landroidx/compose/ui/semantics/SemanticsModifier;

    if-eqz v1, :cond_2

    const/16 v1, 0x8

    .line 88
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    or-int/2addr v0, v1

    .line 162
    :cond_2
    instance-of v1, p0, Landroidx/compose/ui/modifier/ModifierLocalConsumer;

    if-nez v1, :cond_3

    instance-of v1, p0, Landroidx/compose/ui/modifier/ModifierLocalProvider;

    if-eqz v1, :cond_4

    :cond_3
    const/16 v1, 0x20

    .line 96
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    or-int/2addr v0, v1

    .line 173
    :cond_4
    instance-of p0, p0, Landroidx/compose/ui/layout/OnGloballyPositionedModifier;

    if-eqz p0, :cond_5

    const/16 p0, 0x100

    .line 108
    invoke-static {p0}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result p0

    or-int/2addr v0, p0

    :cond_5
    return v0
.end method

.method public static final calculateNodeKindSetFrom(Landroidx/compose/ui/Modifier$Node;)I
    .locals 4

    .line 191
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result p0

    return p0

    .line 192
    :cond_0
    sget-object v0, Landroidx/compose/ui/node/NodeKindKt;->classToKindSetMap:Landroidx/collection/MutableObjectIntMap;

    invoke-static {p0}, Landroidx/compose/ui/Actual_jvmKt;->classKeyForObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 649
    invoke-virtual {v0, v1}, Landroidx/collection/ObjectIntMap;->findKeyIndex(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_1

    .line 651
    iget-object p0, v0, Landroidx/collection/ObjectIntMap;->values:[I

    aget p0, p0, v2

    goto/16 :goto_1

    :cond_1
    const/4 v2, 0x1

    .line 76
    invoke-static {v2}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v2

    .line 194
    instance-of v3, p0, Landroidx/compose/ui/node/LayoutModifierNode;

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    .line 80
    invoke-static {v3}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v3

    or-int/2addr v2, v3

    .line 197
    :cond_2
    instance-of v3, p0, Landroidx/compose/ui/node/DrawModifierNode;

    if-eqz v3, :cond_3

    const/4 v3, 0x4

    .line 84
    invoke-static {v3}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v3

    or-int/2addr v2, v3

    .line 200
    :cond_3
    instance-of v3, p0, Landroidx/compose/ui/node/SemanticsModifierNode;

    if-eqz v3, :cond_4

    const/16 v3, 0x8

    .line 88
    invoke-static {v3}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v3

    or-int/2addr v2, v3

    .line 203
    :cond_4
    instance-of v3, p0, Landroidx/compose/ui/node/PointerInputModifierNode;

    if-eqz v3, :cond_5

    const/16 v3, 0x10

    .line 92
    invoke-static {v3}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v3

    or-int/2addr v2, v3

    .line 206
    :cond_5
    instance-of v3, p0, Landroidx/compose/ui/modifier/ModifierLocalModifierNode;

    if-eqz v3, :cond_6

    const/16 v3, 0x20

    .line 96
    invoke-static {v3}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v3

    or-int/2addr v2, v3

    .line 209
    :cond_6
    instance-of v3, p0, Landroidx/compose/ui/node/ParentDataModifierNode;

    if-eqz v3, :cond_7

    const/16 v3, 0x40

    .line 100
    invoke-static {v3}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v3

    or-int/2addr v2, v3

    .line 212
    :cond_7
    instance-of v3, p0, Landroidx/compose/ui/node/LayoutAwareModifierNode;

    if-eqz v3, :cond_8

    const/16 v3, 0x80

    .line 104
    invoke-static {v3}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v3

    or-int/2addr v2, v3

    .line 215
    :cond_8
    instance-of v3, p0, Landroidx/compose/ui/node/GlobalPositionAwareModifierNode;

    if-eqz v3, :cond_9

    const/16 v3, 0x100

    .line 108
    invoke-static {v3}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v3

    or-int/2addr v2, v3

    .line 221
    :cond_9
    instance-of v3, p0, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v3, :cond_a

    const/16 v3, 0x400

    .line 116
    invoke-static {v3}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v3

    or-int/2addr v2, v3

    .line 224
    :cond_a
    instance-of v3, p0, Landroidx/compose/ui/focus/FocusPropertiesModifierNode;

    if-eqz v3, :cond_b

    const/16 v3, 0x800

    .line 120
    invoke-static {v3}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v3

    or-int/2addr v2, v3

    .line 227
    :cond_b
    instance-of v3, p0, Landroidx/compose/ui/focus/FocusEventModifierNode;

    if-eqz v3, :cond_c

    const/16 v3, 0x1000

    .line 124
    invoke-static {v3}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v3

    or-int/2addr v2, v3

    .line 230
    :cond_c
    instance-of v3, p0, Landroidx/compose/ui/input/key/KeyInputModifierNode;

    if-eqz v3, :cond_d

    const/16 v3, 0x2000

    .line 128
    invoke-static {v3}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v3

    or-int/2addr v2, v3

    .line 233
    :cond_d
    instance-of v3, p0, Landroidx/compose/ui/input/rotary/RotaryInputModifierNode;

    if-eqz v3, :cond_e

    const/16 v3, 0x4000

    .line 132
    invoke-static {v3}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v3

    or-int/2addr v2, v3

    .line 236
    :cond_e
    instance-of v3, p0, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;

    if-eqz v3, :cond_f

    const v3, 0x8000

    .line 136
    invoke-static {v3}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v3

    or-int/2addr v2, v3

    .line 242
    :cond_f
    instance-of p0, p0, Landroidx/compose/ui/node/TraversableNode;

    if-eqz p0, :cond_10

    const/high16 p0, 0x40000

    .line 144
    invoke-static {p0}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result p0

    or-int/2addr p0, v2

    goto :goto_0

    :cond_10
    move p0, v2

    .line 654
    :goto_0
    invoke-virtual {v0, v1, p0}, Landroidx/collection/MutableObjectIntMap;->set(Ljava/lang/Object;I)V

    :goto_1
    return p0
.end method

.method public static final calculateNodeKindSetFromIncludingDelegates(Landroidx/compose/ui/Modifier$Node;)I
    .locals 2

    .line 373
    instance-of v0, p0, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v0, :cond_0

    .line 374
    check-cast p0, Landroidx/compose/ui/node/DelegatingNode;

    invoke-virtual {p0}, Landroidx/compose/ui/node/DelegatingNode;->getSelfKindSet$ui_release()I

    move-result v0

    .line 240
    invoke-virtual {p0}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    .line 376
    invoke-static {p0}, Landroidx/compose/ui/node/NodeKindKt;->calculateNodeKindSetFromIncludingDelegates(Landroidx/compose/ui/Modifier$Node;)I

    move-result v1

    or-int/2addr v0, v1

    .line 243
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object p0

    goto :goto_0

    .line 380
    :cond_0
    invoke-static {p0}, Landroidx/compose/ui/node/NodeKindKt;->calculateNodeKindSetFrom(Landroidx/compose/ui/Modifier$Node;)I

    move-result v0

    :cond_1
    return v0
.end method

.method public static final getIncludeSelfInTraversal-H91voCI(I)Z
    .locals 1

    const/16 v0, 0x80

    .line 104
    invoke-static {v0}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v0

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static final scheduleInvalidationOfAssociatedFocusTargets(Landroidx/compose/ui/focus/FocusPropertiesModifierNode;)V
    .locals 10

    const/16 v0, 0x400

    .line 116
    invoke-static {v0}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v0

    .line 121
    invoke-interface {p0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1130
    new-instance v1, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v2, 0x10

    new-array v3, v2, [Landroidx/compose/ui/Modifier$Node;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 123
    invoke-interface {p0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v3

    if-nez v3, :cond_0

    .line 124
    invoke-interface {p0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object p0

    invoke-static {v1, p0, v4}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 545
    :cond_1
    :goto_0
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result p0

    if-eqz p0, :cond_b

    .line 42
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result p0

    const/4 v3, 0x1

    sub-int/2addr p0, v3

    .line 126
    invoke-virtual {v1, p0}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/Modifier$Node;

    .line 127
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v5

    and-int/2addr v5, v0

    if-nez v5, :cond_2

    .line 128
    invoke-static {v1, p0, v4}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;Z)V

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz p0, :cond_1

    .line 134
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v5

    and-int/2addr v5, v0

    if-eqz v5, :cond_a

    const/4 v5, 0x0

    move-object v6, v5

    :goto_2
    if-eqz p0, :cond_1

    .line 404
    instance-of v7, p0, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v7, :cond_3

    .line 405
    check-cast p0, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 338
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTargetNodeKt;->invalidateFocusTarget(Landroidx/compose/ui/focus/FocusTargetNode;)V

    goto :goto_5

    .line 246
    :cond_3
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v7

    and-int/2addr v7, v0

    if-eqz v7, :cond_9

    .line 406
    instance-of v7, p0, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v7, :cond_9

    .line 412
    move-object v7, p0

    check-cast v7, Landroidx/compose/ui/node/DelegatingNode;

    .line 240
    invoke-virtual {v7}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    move v8, v4

    :goto_3
    if-eqz v7, :cond_8

    .line 246
    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v9

    and-int/2addr v9, v0

    if-eqz v9, :cond_7

    add-int/lit8 v8, v8, 0x1

    if-ne v8, v3, :cond_4

    move-object p0, v7

    goto :goto_4

    :cond_4
    if-nez v6, :cond_5

    .line 1130
    new-instance v6, Landroidx/compose/runtime/collection/MutableVector;

    new-array v9, v2, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v6, v9, v4}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_5
    if-eqz p0, :cond_6

    .line 423
    invoke-virtual {v6, p0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    move-object p0, v5

    .line 426
    :cond_6
    invoke-virtual {v6, v7}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 243
    :cond_7
    :goto_4
    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    goto :goto_3

    :cond_8
    if-ne v8, v3, :cond_9

    goto :goto_2

    .line 435
    :cond_9
    :goto_5
    invoke-static {v6}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object p0

    goto :goto_2

    .line 138
    :cond_a
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object p0

    goto :goto_1

    :cond_b
    return-void

    .line 121
    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "visitChildren called on an unattached node"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final specifiesCanFocusProperty(Landroidx/compose/ui/focus/FocusPropertiesModifierNode;)Z
    .locals 1

    .line 352
    sget-object v0, Landroidx/compose/ui/node/CanFocusChecker;->INSTANCE:Landroidx/compose/ui/node/CanFocusChecker;

    invoke-virtual {v0}, Landroidx/compose/ui/node/CanFocusChecker;->reset()V

    .line 353
    invoke-interface {p0, v0}, Landroidx/compose/ui/focus/FocusPropertiesModifierNode;->applyFocusProperties(Landroidx/compose/ui/focus/FocusProperties;)V

    .line 354
    invoke-virtual {v0}, Landroidx/compose/ui/node/CanFocusChecker;->isCanFocusSet()Z

    move-result p0

    return p0
.end method
