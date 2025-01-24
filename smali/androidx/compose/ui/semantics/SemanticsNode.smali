.class public final Landroidx/compose/ui/semantics/SemanticsNode;
.super Ljava/lang/Object;
.source "SemanticsNode.kt"


# instance fields
.field private fakeNodeParent:Landroidx/compose/ui/semantics/SemanticsNode;

.field private final id:I

.field private isFake:Z

.field private final layoutNode:Landroidx/compose/ui/node/LayoutNode;

.field private final mergingEnabled:Z

.field private final outerSemanticsNode:Landroidx/compose/ui/Modifier$Node;

.field private final unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/Modifier$Node;ZLandroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/semantics/SemanticsConfiguration;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Landroidx/compose/ui/semantics/SemanticsNode;->outerSemanticsNode:Landroidx/compose/ui/Modifier$Node;

    .line 87
    iput-boolean p2, p0, Landroidx/compose/ui/semantics/SemanticsNode;->mergingEnabled:Z

    .line 88
    iput-object p3, p0, Landroidx/compose/ui/semantics/SemanticsNode;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 89
    iput-object p4, p0, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 117
    invoke-virtual {p3}, Landroidx/compose/ui/node/LayoutNode;->getSemanticsId()I

    move-result p1

    iput p1, p0, Landroidx/compose/ui/semantics/SemanticsNode;->id:I

    return-void
.end method

.method private final emitFakeNodes(Ljava/util/List;)V
    .locals 3

    .line 407
    invoke-static {p0}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->access$getRole(Landroidx/compose/ui/semantics/SemanticsNode;)Landroidx/compose/ui/semantics/Role;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 410
    iget-object v1, p0, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->isMergingSemanticsOfDescendants()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 411
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 413
    new-instance v1, Landroidx/compose/ui/semantics/SemanticsNode$emitFakeNodes$fakeNode$1;

    invoke-direct {v1, v0}, Landroidx/compose/ui/semantics/SemanticsNode$emitFakeNodes$fakeNode$1;-><init>(Landroidx/compose/ui/semantics/Role;)V

    invoke-direct {p0, v0, v1}, Landroidx/compose/ui/semantics/SemanticsNode;->fakeSemanticsNode-ypyhhiA(Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v0

    .line 414
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->getContentDescription()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 420
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 421
    iget-object v0, p0, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->isMergingSemanticsOfDescendants()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 424
    iget-object v0, p0, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->getContentDescription()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 427
    new-instance v2, Landroidx/compose/ui/semantics/SemanticsNode$emitFakeNodes$fakeNode$2;

    invoke-direct {v2, v0}, Landroidx/compose/ui/semantics/SemanticsNode$emitFakeNodes$fakeNode$2;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1, v2}, Landroidx/compose/ui/semantics/SemanticsNode;->fakeSemanticsNode-ypyhhiA(Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object p0

    const/4 v0, 0x0

    .line 428
    invoke-interface {p1, v0, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private final fakeSemanticsNode-ypyhhiA(Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/semantics/SemanticsNode;
    .locals 5

    .line 438
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsConfiguration;

    invoke-direct {v0}, Landroidx/compose/ui/semantics/SemanticsConfiguration;-><init>()V

    const/4 v1, 0x0

    .line 439
    invoke-virtual {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->setMergingSemanticsOfDescendants(Z)V

    .line 440
    invoke-virtual {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->setClearingSemantics(Z)V

    .line 441
    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    new-instance v2, Landroidx/compose/ui/semantics/SemanticsNode;

    .line 446
    new-instance v3, Landroidx/compose/ui/semantics/SemanticsNode$fakeSemanticsNode$fakeNode$1;

    invoke-direct {v3, p2}, Landroidx/compose/ui/semantics/SemanticsNode$fakeSemanticsNode$fakeNode$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 453
    new-instance p2, Landroidx/compose/ui/node/LayoutNode;

    if-eqz p1, :cond_0

    .line 456
    invoke-static {p0}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->access$roleFakeNodeId(Landroidx/compose/ui/semantics/SemanticsNode;)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->access$contentDescriptionFakeNodeId(Landroidx/compose/ui/semantics/SemanticsNode;)I

    move-result p1

    :goto_0
    const/4 v4, 0x1

    .line 453
    invoke-direct {p2, v4, p1}, Landroidx/compose/ui/node/LayoutNode;-><init>(ZI)V

    .line 444
    invoke-direct {v2, v3, v1, p2, v0}, Landroidx/compose/ui/semantics/SemanticsNode;-><init>(Landroidx/compose/ui/Modifier$Node;ZLandroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/semantics/SemanticsConfiguration;)V

    .line 460
    iput-boolean v4, v2, Landroidx/compose/ui/semantics/SemanticsNode;->isFake:Z

    .line 461
    iput-object p0, v2, Landroidx/compose/ui/semantics/SemanticsNode;->fakeNodeParent:Landroidx/compose/ui/semantics/SemanticsNode;

    return-object v2
.end method

.method private final fillOneLayerOfSemanticsWrappers(Landroidx/compose/ui/node/LayoutNode;Ljava/util/List;Z)V
    .locals 5

    .line 268
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getZSortedChildren()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object p1

    .line 434
    invoke-virtual {p1}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v0

    if-lez v0, :cond_4

    .line 437
    invoke-virtual {p1}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x0

    .line 439
    :cond_0
    aget-object v2, p1, v1

    check-cast v2, Landroidx/compose/ui/node/LayoutNode;

    .line 272
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->isAttached()Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez p3, :cond_1

    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->isDeactivated()Z

    move-result v3

    if-nez v3, :cond_3

    .line 273
    :cond_1
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui_release()Landroidx/compose/ui/node/NodeChain;

    move-result-object v3

    const/16 v4, 0x8

    .line 88
    invoke-static {v4}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v4

    .line 273
    invoke-virtual {v3, v4}, Landroidx/compose/ui/node/NodeChain;->has-H91voCI$ui_release(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 274
    iget-boolean v3, p0, Landroidx/compose/ui/semantics/SemanticsNode;->mergingEnabled:Z

    invoke-static {v2, v3}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->SemanticsNode(Landroidx/compose/ui/node/LayoutNode;Z)Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 276
    :cond_2
    invoke-direct {p0, v2, p2, p3}, Landroidx/compose/ui/semantics/SemanticsNode;->fillOneLayerOfSemanticsWrappers(Landroidx/compose/ui/node/LayoutNode;Ljava/util/List;Z)V

    :cond_3
    :goto_0
    add-int/lit8 v1, v1, 0x1

    if-lt v1, v0, :cond_0

    :cond_4
    return-void
.end method

.method private final findOneLayerOfMergingSemanticsNodes(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 7

    .line 385
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 386
    invoke-static/range {v1 .. v6}, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedChildren$ui_release$default(Landroidx/compose/ui/semantics/SemanticsNode;Ljava/util/List;ZZILjava/lang/Object;)Ljava/util/List;

    .line 387
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    if-ge v0, p0, :cond_2

    .line 389
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/semantics/SemanticsNode;

    .line 366
    invoke-direct {v1}, Landroidx/compose/ui/semantics/SemanticsNode;->isMergingSemanticsOfDescendants()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 367
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 369
    :cond_0
    iget-object v2, v1, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->isClearingSemantics()Z

    move-result v2

    if-nez v2, :cond_1

    .line 370
    invoke-direct {v1, p1, p2}, Landroidx/compose/ui/semantics/SemanticsNode;->findOneLayerOfMergingSemanticsNodes(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p2
.end method

.method static synthetic findOneLayerOfMergingSemanticsNodes$default(Landroidx/compose/ui/semantics/SemanticsNode;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 363
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 361
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/semantics/SemanticsNode;->findOneLayerOfMergingSemanticsNodes(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getChildren$ui_release$default(Landroidx/compose/ui/semantics/SemanticsNode;ZZZILjava/lang/Object;)Ljava/util/List;
    .locals 1

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 316
    iget-boolean p1, p0, Landroidx/compose/ui/semantics/SemanticsNode;->mergingEnabled:Z

    xor-int/lit8 p1, p1, 0x1

    :cond_0
    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move p3, v0

    .line 315
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/ui/semantics/SemanticsNode;->getChildren$ui_release(ZZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final isMergingSemanticsOfDescendants()Z
    .locals 1

    .line 243
    iget-boolean v0, p0, Landroidx/compose/ui/semantics/SemanticsNode;->mergingEnabled:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->isMergingSemanticsOfDescendants()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final mergeConfig(Ljava/util/List;Landroidx/compose/ui/semantics/SemanticsConfiguration;)V
    .locals 7

    .line 230
    iget-object v0, p0, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->isClearingSemantics()Z

    move-result v0

    if-nez v0, :cond_1

    .line 385
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 386
    invoke-static/range {v1 .. v6}, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedChildren$ui_release$default(Landroidx/compose/ui/semantics/SemanticsNode;Ljava/util/List;ZZILjava/lang/Object;)Ljava/util/List;

    .line 387
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    if-ge v0, p0, :cond_1

    .line 389
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/semantics/SemanticsNode;

    .line 234
    invoke-direct {v1}, Landroidx/compose/ui/semantics/SemanticsNode;->isMergingSemanticsOfDescendants()Z

    move-result v2

    if-nez v2, :cond_0

    .line 235
    iget-object v2, v1, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    invoke-virtual {p2, v2}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->mergeChild$ui_release(Landroidx/compose/ui/semantics/SemanticsConfiguration;)V

    .line 236
    invoke-direct {v1, p1, p2}, Landroidx/compose/ui/semantics/SemanticsNode;->mergeConfig(Ljava/util/List;Landroidx/compose/ui/semantics/SemanticsConfiguration;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic unmergedChildren$ui_release$default(Landroidx/compose/ui/semantics/SemanticsNode;Ljava/util/List;ZZILjava/lang/Object;)Ljava/util/List;
    .locals 1

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 246
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move p3, v0

    .line 245
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedChildren$ui_release(Ljava/util/List;ZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copyWithMergingEnabled$ui_release()Landroidx/compose/ui/semantics/SemanticsNode;
    .locals 4

    .line 466
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsNode;

    iget-object v1, p0, Landroidx/compose/ui/semantics/SemanticsNode;->outerSemanticsNode:Landroidx/compose/ui/Modifier$Node;

    iget-object v2, p0, Landroidx/compose/ui/semantics/SemanticsNode;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    iget-object p0, p0, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2, p0}, Landroidx/compose/ui/semantics/SemanticsNode;-><init>(Landroidx/compose/ui/Modifier$Node;ZLandroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/semantics/SemanticsConfiguration;)V

    return-object v0
.end method

.method public final findCoordinatorToGetBounds$ui_release()Landroidx/compose/ui/node/NodeCoordinator;
    .locals 1

    .line 400
    iget-boolean v0, p0, Landroidx/compose/ui/semantics/SemanticsNode;->isFake:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->getParent()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->findCoordinatorToGetBounds$ui_release()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0

    .line 401
    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/semantics/SemanticsNode;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-static {v0}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->getOuterMergingSemantics(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/SemanticsModifierNode;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroidx/compose/ui/semantics/SemanticsNode;->outerSemanticsNode:Landroidx/compose/ui/Modifier$Node;

    :goto_1
    const/16 p0, 0x8

    .line 88
    invoke-static {p0}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result p0

    .line 402
    invoke-static {v0, p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireCoordinator-64DMado(Landroidx/compose/ui/node/DelegatableNode;I)Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object p0

    return-object p0
.end method

.method public final getBoundsInParent$ui_release()Landroidx/compose/ui/geometry/Rect;
    .locals 4

    .line 183
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->getParent()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p0, Landroidx/compose/ui/geometry/Rect;->Companion:Landroidx/compose/ui/geometry/Rect$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect$Companion;->getZero()Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    return-object p0

    .line 185
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->findCoordinatorToGetBounds$ui_release()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->isAttached()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object p0, v2

    :goto_0
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_1

    .line 187
    :cond_2
    iget-object v0, v0, Landroidx/compose/ui/semantics/SemanticsNode;->outerSemanticsNode:Landroidx/compose/ui/Modifier$Node;

    const/16 v1, 0x8

    .line 88
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    .line 188
    invoke-static {v0, v1}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireCoordinator-64DMado(Landroidx/compose/ui/node/DelegatableNode;I)Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x2

    .line 189
    invoke-static {v0, p0, v1, v3, v2}, Landroidx/compose/ui/layout/LayoutCoordinates;->localBoundingBoxOf$default(Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/layout/LayoutCoordinates;ZILjava/lang/Object;)Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    return-object p0

    .line 186
    :cond_3
    :goto_1
    sget-object p0, Landroidx/compose/ui/geometry/Rect;->Companion:Landroidx/compose/ui/geometry/Rect$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect$Companion;->getZero()Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    return-object p0
.end method

.method public final getBoundsInRoot()Landroidx/compose/ui/geometry/Rect;
    .locals 1

    .line 148
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->findCoordinatorToGetBounds$ui_release()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-static {p0}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->boundsInRoot(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    if-nez p0, :cond_2

    :cond_1
    sget-object p0, Landroidx/compose/ui/geometry/Rect;->Companion:Landroidx/compose/ui/geometry/Rect$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect$Companion;->getZero()Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public final getBoundsInWindow()Landroidx/compose/ui/geometry/Rect;
    .locals 1

    .line 164
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->findCoordinatorToGetBounds$ui_release()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-static {p0}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->boundsInWindow(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    if-nez p0, :cond_2

    :cond_1
    sget-object p0, Landroidx/compose/ui/geometry/Rect;->Companion:Landroidx/compose/ui/geometry/Rect$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect$Companion;->getZero()Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public final getChildren()Ljava/util/List;
    .locals 6

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    .line 291
    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/semantics/SemanticsNode;->getChildren$ui_release$default(Landroidx/compose/ui/semantics/SemanticsNode;ZZZILjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getChildren$ui_release(ZZZ)Ljava/util/List;
    .locals 1

    if-nez p1, :cond_0

    .line 320
    iget-object p1, p0, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->isClearingSemantics()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 321
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 324
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 326
    invoke-direct {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->isMergingSemanticsOfDescendants()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p2, 0x2

    const/4 p3, 0x0

    .line 330
    invoke-static {p0, p1, p3, p2, p3}, Landroidx/compose/ui/semantics/SemanticsNode;->findOneLayerOfMergingSemanticsNodes$default(Landroidx/compose/ui/semantics/SemanticsNode;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 333
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedChildren$ui_release(Ljava/util/List;ZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;
    .locals 2

    .line 217
    invoke-direct {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->isMergingSemanticsOfDescendants()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->copy()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    .line 219
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v1, v0}, Landroidx/compose/ui/semantics/SemanticsNode;->mergeConfig(Ljava/util/List;Landroidx/compose/ui/semantics/SemanticsConfiguration;)V

    return-object v0

    .line 222
    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    return-object p0
.end method

.method public final getId()I
    .locals 0

    .line 117
    iget p0, p0, Landroidx/compose/ui/semantics/SemanticsNode;->id:I

    return p0
.end method

.method public final getLayoutInfo()Landroidx/compose/ui/layout/LayoutInfo;
    .locals 0

    .line 107
    iget-object p0, p0, Landroidx/compose/ui/semantics/SemanticsNode;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    return-object p0
.end method

.method public final getLayoutNode$ui_release()Landroidx/compose/ui/node/LayoutNode;
    .locals 0

    .line 88
    iget-object p0, p0, Landroidx/compose/ui/semantics/SemanticsNode;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    return-object p0
.end method

.method public final getParent()Landroidx/compose/ui/semantics/SemanticsNode;
    .locals 3

    .line 343
    iget-object v0, p0, Landroidx/compose/ui/semantics/SemanticsNode;->fakeNodeParent:Landroidx/compose/ui/semantics/SemanticsNode;

    if-eqz v0, :cond_0

    return-object v0

    .line 345
    :cond_0
    iget-boolean v0, p0, Landroidx/compose/ui/semantics/SemanticsNode;->mergingEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 347
    iget-object v0, p0, Landroidx/compose/ui/semantics/SemanticsNode;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    sget-object v2, Landroidx/compose/ui/semantics/SemanticsNode$parent$1;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsNode$parent$1;

    invoke-static {v0, v2}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->findClosestParentNode(Landroidx/compose/ui/node/LayoutNode;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_2

    .line 353
    iget-object v0, p0, Landroidx/compose/ui/semantics/SemanticsNode;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    sget-object v2, Landroidx/compose/ui/semantics/SemanticsNode$parent$2;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsNode$parent$2;

    invoke-static {v0, v2}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->findClosestParentNode(Landroidx/compose/ui/node/LayoutNode;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    return-object v1

    .line 358
    :cond_3
    iget-boolean p0, p0, Landroidx/compose/ui/semantics/SemanticsNode;->mergingEnabled:Z

    invoke-static {v0, p0}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->SemanticsNode(Landroidx/compose/ui/node/LayoutNode;Z)Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object p0

    return-object p0
.end method

.method public final getPositionInRoot-F1C5BW0()J
    .locals 2

    .line 156
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->findCoordinatorToGetBounds$ui_release()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-static {p0}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->positionInRoot(Landroidx/compose/ui/layout/LayoutCoordinates;)J

    move-result-wide v0

    goto :goto_1

    :cond_1
    sget-object p0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v0

    :goto_1
    return-wide v0
.end method

.method public final getReplacedChildren$ui_release()Ljava/util/List;
    .locals 6

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    .line 301
    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/semantics/SemanticsNode;->getChildren$ui_release$default(Landroidx/compose/ui/semantics/SemanticsNode;ZZZILjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getSize-YbymL2g()J
    .locals 2

    .line 140
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->findCoordinatorToGetBounds$ui_release()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getSize-YbymL2g()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    sget-object p0, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/unit/IntSize$Companion;->getZero-YbymL2g()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public final getTouchBoundsInRoot()Landroidx/compose/ui/geometry/Rect;
    .locals 1

    .line 130
    iget-object v0, p0, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->isMergingSemanticsOfDescendants()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Landroidx/compose/ui/semantics/SemanticsNode;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-static {v0}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->getOuterMergingSemantics(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/SemanticsModifierNode;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/semantics/SemanticsNode;->outerSemanticsNode:Landroidx/compose/ui/Modifier$Node;

    goto :goto_0

    .line 133
    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/semantics/SemanticsNode;->outerSemanticsNode:Landroidx/compose/ui/Modifier$Node;

    .line 135
    :goto_0
    invoke-interface {v0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    iget-object p0, p0, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    invoke-static {p0}, Landroidx/compose/ui/node/SemanticsModifierNodeKt;->getUseMinimumTouchTarget(Landroidx/compose/ui/semantics/SemanticsConfiguration;)Z

    move-result p0

    invoke-static {v0, p0}, Landroidx/compose/ui/node/SemanticsModifierNodeKt;->touchBoundsInRoot(Landroidx/compose/ui/Modifier$Node;Z)Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    return-object p0
.end method

.method public final getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;
    .locals 0

    .line 89
    iget-object p0, p0, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    return-object p0
.end method

.method public final isFake$ui_release()Z
    .locals 0

    .line 94
    iget-boolean p0, p0, Landroidx/compose/ui/semantics/SemanticsNode;->isFake:Z

    return p0
.end method

.method public final isRoot()Z
    .locals 0

    .line 338
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->getParent()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isTransparent$ui_release()Z
    .locals 0

    .line 194
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->findCoordinatorToGetBounds$ui_release()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->isTransparent()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isUnmergedLeafNode$ui_release()Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Landroidx/compose/ui/semantics/SemanticsNode;->isFake:Z

    if-nez v0, :cond_0

    .line 100
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->getReplacedChildren$ui_release()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object p0, p0, Landroidx/compose/ui/semantics/SemanticsNode;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    sget-object v0, Landroidx/compose/ui/semantics/SemanticsNode$isUnmergedLeafNode$1;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsNode$isUnmergedLeafNode$1;

    invoke-static {p0, v0}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->findClosestParentNode(Landroidx/compose/ui/node/LayoutNode;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final unmergedChildren$ui_release(Ljava/util/List;ZZ)Ljava/util/List;
    .locals 1

    .line 251
    iget-boolean v0, p0, Landroidx/compose/ui/semantics/SemanticsNode;->isFake:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 253
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/semantics/SemanticsNode;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-direct {p0, v0, p1, p3}, Landroidx/compose/ui/semantics/SemanticsNode;->fillOneLayerOfSemanticsWrappers(Landroidx/compose/ui/node/LayoutNode;Ljava/util/List;Z)V

    if-eqz p2, :cond_1

    .line 256
    invoke-direct {p0, p1}, Landroidx/compose/ui/semantics/SemanticsNode;->emitFakeNodes(Ljava/util/List;)V

    :cond_1
    return-object p1
.end method
