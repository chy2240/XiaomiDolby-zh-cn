.class public abstract Landroidx/compose/ui/platform/SemanticsUtils_androidKt;
.super Ljava/lang/Object;
.source "SemanticsUtils.android.kt"


# static fields
.field private static final DefaultFakeNodeBounds:Landroidx/compose/ui/geometry/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 140
    new-instance v0, Landroidx/compose/ui/geometry/Rect;

    const/4 v1, 0x0

    const/high16 v2, 0x41200000    # 10.0f

    invoke-direct {v0, v1, v1, v2, v2}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    sput-object v0, Landroidx/compose/ui/platform/SemanticsUtils_androidKt;->DefaultFakeNodeBounds:Landroidx/compose/ui/geometry/Rect;

    return-void
.end method

.method public static final findById(Ljava/util/List;I)Landroidx/compose/ui/platform/ScrollObservationScope;
    .locals 3

    .line 111
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 112
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/platform/ScrollObservationScope;

    invoke-virtual {v2}, Landroidx/compose/ui/platform/ScrollObservationScope;->getSemanticsNodeId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 113
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/platform/ScrollObservationScope;

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final getAllUncoveredSemanticsNodesToIntObjectMap(Landroidx/compose/ui/semantics/SemanticsOwner;)Landroidx/collection/IntObjectMap;
    .locals 6

    .line 158
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsOwner;->getUnmergedRootSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object p0

    .line 159
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->getLayoutNode$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->isPlaced()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->getLayoutNode$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->isAttached()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 164
    :cond_0
    new-instance v0, Landroidx/collection/MutableIntObjectMap;

    const/16 v1, 0x30

    invoke-direct {v0, v1}, Landroidx/collection/MutableIntObjectMap;-><init>(I)V

    .line 167
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->getBoundsInRoot()Landroidx/compose/ui/geometry/Rect;

    move-result-object v1

    .line 168
    new-instance v2, Landroid/graphics/Region;

    .line 169
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v3

    .line 26
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 170
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v4

    .line 26
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 171
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v5

    .line 26
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 172
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result v1

    .line 26
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 168
    invoke-direct {v2, v3, v4, v5, v1}, Landroid/graphics/Region;-><init>(IIII)V

    .line 249
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    invoke-static {v2, p0, v0, p0, v1}, Landroidx/compose/ui/platform/SemanticsUtils_androidKt;->getAllUncoveredSemanticsNodesToIntObjectMap$findAllSemanticNodesRecursive(Landroid/graphics/Region;Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/collection/MutableIntObjectMap;Landroidx/compose/ui/semantics/SemanticsNode;Landroid/graphics/Region;)V

    return-object v0

    .line 160
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/collection/IntObjectMapKt;->emptyIntObjectMap()Landroidx/collection/IntObjectMap;

    move-result-object p0

    return-object p0
.end method

.method private static final getAllUncoveredSemanticsNodesToIntObjectMap$findAllSemanticNodesRecursive(Landroid/graphics/Region;Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/collection/MutableIntObjectMap;Landroidx/compose/ui/semantics/SemanticsNode;Landroid/graphics/Region;)V
    .locals 9

    .line 178
    invoke-virtual {p3}, Landroidx/compose/ui/semantics/SemanticsNode;->getLayoutNode$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->isPlaced()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Landroidx/compose/ui/semantics/SemanticsNode;->getLayoutNode$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->isAttached()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    .line 180
    :goto_1
    invoke-virtual {p0}, Landroid/graphics/Region;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p3}, Landroidx/compose/ui/semantics/SemanticsNode;->getId()I

    move-result v2

    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getId()I

    move-result v3

    if-ne v2, v3, :cond_3

    :cond_2
    if-eqz v0, :cond_4

    .line 181
    invoke-virtual {p3}, Landroidx/compose/ui/semantics/SemanticsNode;->isFake$ui_release()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    return-void

    .line 185
    :cond_4
    invoke-virtual {p3}, Landroidx/compose/ui/semantics/SemanticsNode;->getTouchBoundsInRoot()Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    .line 186
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v2

    .line 26
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 187
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v2

    .line 26
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 188
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v2

    .line 26
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 189
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result v0

    .line 26
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 191
    invoke-virtual {p4, v4, v5, v6, v7}, Landroid/graphics/Region;->set(IIII)Z

    .line 194
    invoke-virtual {p3}, Landroidx/compose/ui/semantics/SemanticsNode;->getId()I

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getId()I

    move-result v2

    const/4 v3, -0x1

    if-ne v0, v2, :cond_5

    move v0, v3

    goto :goto_2

    .line 197
    :cond_5
    invoke-virtual {p3}, Landroidx/compose/ui/semantics/SemanticsNode;->getId()I

    move-result v0

    .line 199
    :goto_2
    sget-object v2, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p4, p0, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 200
    new-instance v2, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;

    invoke-virtual {p4}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-direct {v2, p3, v8}, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;-><init>(Landroidx/compose/ui/semantics/SemanticsNode;Landroid/graphics/Rect;)V

    invoke-virtual {p2, v0, v2}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    .line 205
    invoke-virtual {p3}, Landroidx/compose/ui/semantics/SemanticsNode;->getReplacedChildren$ui_release()Ljava/util/List;

    move-result-object v0

    .line 206
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_3
    if-ge v3, v2, :cond_7

    .line 210
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/semantics/SemanticsNode;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v1

    sget-object v8, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v8}, Landroidx/compose/ui/semantics/SemanticsProperties;->getLinkTestMarker()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_4

    .line 213
    :cond_6
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/semantics/SemanticsNode;

    invoke-static {p0, p1, p2, v1, p4}, Landroidx/compose/ui/platform/SemanticsUtils_androidKt;->getAllUncoveredSemanticsNodesToIntObjectMap$findAllSemanticNodesRecursive(Landroid/graphics/Region;Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/collection/MutableIntObjectMap;Landroidx/compose/ui/semantics/SemanticsNode;Landroid/graphics/Region;)V

    :goto_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 215
    :cond_7
    invoke-static {p3}, Landroidx/compose/ui/platform/SemanticsUtils_androidKt;->isImportantForAccessibility(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 216
    sget-object v8, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    goto :goto_6

    .line 219
    :cond_8
    invoke-virtual {p3}, Landroidx/compose/ui/semantics/SemanticsNode;->isFake$ui_release()Z

    move-result p0

    if-eqz p0, :cond_a

    .line 220
    invoke-virtual {p3}, Landroidx/compose/ui/semantics/SemanticsNode;->getParent()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 223
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->getLayoutInfo()Landroidx/compose/ui/layout/LayoutInfo;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-interface {p1}, Landroidx/compose/ui/layout/LayoutInfo;->isPlaced()Z

    move-result p1

    if-ne p1, v1, :cond_9

    .line 224
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->getBoundsInRoot()Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    goto :goto_5

    .line 226
    :cond_9
    sget-object p0, Landroidx/compose/ui/platform/SemanticsUtils_androidKt;->DefaultFakeNodeBounds:Landroidx/compose/ui/geometry/Rect;

    .line 229
    :goto_5
    new-instance p1, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;

    .line 231
    new-instance p4, Landroid/graphics/Rect;

    .line 232
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v1

    .line 26
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 233
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v2

    .line 26
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 234
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v3

    .line 26
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 235
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result p0

    .line 26
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 231
    invoke-direct {p4, v1, v2, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 229
    invoke-direct {p1, p3, p4}, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;-><init>(Landroidx/compose/ui/semantics/SemanticsNode;Landroid/graphics/Rect;)V

    .line 228
    invoke-virtual {p2, v0, p1}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    goto :goto_6

    :cond_a
    if-ne v0, v3, :cond_b

    .line 244
    new-instance p0, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;

    invoke-virtual {p4}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;-><init>(Landroidx/compose/ui/semantics/SemanticsNode;Landroid/graphics/Rect;)V

    invoke-virtual {p2, v0, p0}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    :cond_b
    :goto_6
    return-void
.end method

.method public static final getScrollViewportLength(Landroidx/compose/ui/semantics/SemanticsConfiguration;)Ljava/lang/Float;
    .locals 2

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsActions;->getGetScrollViewportLength()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {p0, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/semantics/AccessibilityAction;

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 84
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/AccessibilityAction;->getAction()Lkotlin/Function;

    move-result-object p0

    check-cast p0, Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_0

    .line 85
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 87
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/lang/Float;

    :cond_0
    return-object v1
.end method

.method public static final getTextLayoutResult(Landroidx/compose/ui/semantics/SemanticsConfiguration;)Landroidx/compose/ui/text/TextLayoutResult;
    .locals 2

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsActions;->getGetTextLayoutResult()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {p0, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/semantics/AccessibilityAction;

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 69
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/AccessibilityAction;->getAction()Lkotlin/Function;

    move-result-object p0

    check-cast p0, Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_0

    .line 70
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 72
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/text/TextLayoutResult;

    :cond_0
    return-object v1
.end method

.method public static final isImportantForAccessibility(Landroidx/compose/ui/semantics/SemanticsNode;)Z
    .locals 1

    .line 131
    invoke-static {p0}, Landroidx/compose/ui/platform/SemanticsUtils_androidKt;->isVisible(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->isMergingSemanticsOfDescendants()Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->containsImportantForAccessibility$ui_release()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isVisible(Landroidx/compose/ui/semantics/SemanticsNode;)Z
    .locals 1

    .line 138
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->isTransparent$ui_release()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object p0

    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->getInvisibleToUser()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final semanticsIdToView(Landroidx/compose/ui/platform/AndroidViewsHandler;I)Landroid/view/View;
    .locals 3

    .line 150
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidViewsHandler;->getLayoutNodeToHolder()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 288
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/Map$Entry;

    .line 150
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->getSemanticsId()I

    move-result v2

    if-ne v2, p1, :cond_0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    check-cast v0, Ljava/util/Map$Entry;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    :cond_2
    return-object v1
.end method

.method public static final toLegacyClassName-V4PA4sw(I)Ljava/lang/String;
    .locals 2

    .line 121
    sget-object v0, Landroidx/compose/ui/semantics/Role;->Companion:Landroidx/compose/ui/semantics/Role$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/Role$Companion;->getButton-o7Vup1c()I

    move-result v1

    invoke-static {p0, v1}, Landroidx/compose/ui/semantics/Role;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "android.widget.Button"

    goto :goto_0

    .line 122
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/Role$Companion;->getCheckbox-o7Vup1c()I

    move-result v1

    invoke-static {p0, v1}, Landroidx/compose/ui/semantics/Role;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "android.widget.CheckBox"

    goto :goto_0

    .line 123
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/Role$Companion;->getRadioButton-o7Vup1c()I

    move-result v1

    invoke-static {p0, v1}, Landroidx/compose/ui/semantics/Role;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p0, "android.widget.RadioButton"

    goto :goto_0

    .line 124
    :cond_2
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/Role$Companion;->getImage-o7Vup1c()I

    move-result v1

    invoke-static {p0, v1}, Landroidx/compose/ui/semantics/Role;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p0, "android.widget.ImageView"

    goto :goto_0

    .line 125
    :cond_3
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/Role$Companion;->getDropdownList-o7Vup1c()I

    move-result v1

    invoke-static {p0, v1}, Landroidx/compose/ui/semantics/Role;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string p0, "android.widget.Spinner"

    goto :goto_0

    .line 126
    :cond_4
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/Role$Companion;->getValuePicker-o7Vup1c()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/ui/semantics/Role;->equals-impl0(II)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "android.widget.NumberPicker"

    goto :goto_0

    :cond_5
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
