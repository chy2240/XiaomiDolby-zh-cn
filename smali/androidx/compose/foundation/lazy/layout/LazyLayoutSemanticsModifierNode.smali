.class final Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "LazyLayoutSemantics.kt"

# interfaces
.implements Landroidx/compose/ui/node/SemanticsModifierNode;


# instance fields
.field private final indexForKeyMapping:Lkotlin/jvm/functions/Function1;

.field private itemProviderLambda:Lkotlin/jvm/functions/Function0;

.field private orientation:Landroidx/compose/foundation/gestures/Orientation;

.field private reverseScrolling:Z

.field private scrollAxisRange:Landroidx/compose/ui/semantics/ScrollAxisRange;

.field private scrollToIndexAction:Lkotlin/jvm/functions/Function1;

.field private state:Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;

.field private userScrollEnabled:Z


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;Landroidx/compose/foundation/gestures/Orientation;ZZ)V
    .locals 0

    .line 119
    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    .line 114
    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode;->itemProviderLambda:Lkotlin/jvm/functions/Function0;

    .line 115
    iput-object p2, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode;->state:Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;

    .line 116
    iput-object p3, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 117
    iput-boolean p4, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode;->userScrollEnabled:Z

    .line 118
    iput-boolean p5, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode;->reverseScrolling:Z

    .line 132
    new-instance p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode$indexForKeyMapping$1;

    invoke-direct {p1, p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode$indexForKeyMapping$1;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode;)V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode;->indexForKeyMapping:Lkotlin/jvm/functions/Function1;

    .line 147
    invoke-direct {p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode;->updateCachedSemanticsValues()V

    return-void
.end method

.method public static final synthetic access$getItemProviderLambda$p(Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode;)Lkotlin/jvm/functions/Function0;
    .locals 0

    .line 112
    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode;->itemProviderLambda:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public static final synthetic access$getState$p(Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode;)Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;
    .locals 0

    .line 112
    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode;->state:Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;

    return-object p0
.end method

.method private final getCollectionInfo()Landroidx/compose/ui/semantics/CollectionInfo;
    .locals 0

    .line 128
    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode;->state:Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;

    invoke-interface {p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;->collectionInfo()Landroidx/compose/ui/semantics/CollectionInfo;

    move-result-object p0

    return-object p0
.end method

.method private final isVertical()Z
    .locals 1

    .line 125
    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final updateCachedSemanticsValues()V
    .locals 4

    .line 199
    new-instance v0, Landroidx/compose/ui/semantics/ScrollAxisRange;

    .line 198
    new-instance v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode$updateCachedSemanticsValues$1;

    invoke-direct {v1, p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode$updateCachedSemanticsValues$1;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode;)V

    new-instance v2, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode$updateCachedSemanticsValues$2;

    invoke-direct {v2, p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode$updateCachedSemanticsValues$2;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode;)V

    .line 202
    iget-boolean v3, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode;->reverseScrolling:Z

    .line 199
    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/ui/semantics/ScrollAxisRange;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Z)V

    .line 198
    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode;->scrollAxisRange:Landroidx/compose/ui/semantics/ScrollAxisRange;

    .line 206
    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode;->userScrollEnabled:Z

    if-eqz v0, :cond_0

    .line 205
    new-instance v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode$updateCachedSemanticsValues$3;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode$updateCachedSemanticsValues$3;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode;->scrollToIndexAction:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public applySemantics(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V
    .locals 4

    const/4 v0, 0x1

    .line 181
    invoke-static {p1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setTraversalGroup(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Z)V

    .line 182
    iget-object v1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode;->indexForKeyMapping:Lkotlin/jvm/functions/Function1;

    invoke-static {p1, v1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->indexForKey(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Lkotlin/jvm/functions/Function1;)V

    .line 184
    invoke-direct {p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode;->isVertical()Z

    move-result v1

    const-string v2, "scrollAxisRange"

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 185
    iget-object v1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode;->scrollAxisRange:Landroidx/compose/ui/semantics/ScrollAxisRange;

    if-nez v1, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_0
    invoke-static {p1, v1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setVerticalScrollAxisRange(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Landroidx/compose/ui/semantics/ScrollAxisRange;)V

    goto :goto_0

    .line 187
    :cond_1
    iget-object v1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode;->scrollAxisRange:Landroidx/compose/ui/semantics/ScrollAxisRange;

    if-nez v1, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_2
    invoke-static {p1, v1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setHorizontalScrollAxisRange(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Landroidx/compose/ui/semantics/ScrollAxisRange;)V

    .line 190
    :goto_0
    iget-object v1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode;->scrollToIndexAction:Lkotlin/jvm/functions/Function1;

    if-eqz v1, :cond_3

    invoke-static {p1, v3, v1, v0, v3}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->scrollToIndex$default(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 192
    :cond_3
    new-instance v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode$applySemantics$2;

    invoke-direct {v1, p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode$applySemantics$2;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode;)V

    invoke-static {p1, v3, v1, v0, v3}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->getScrollViewportLength$default(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 194
    invoke-direct {p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode;->getCollectionInfo()Landroidx/compose/ui/semantics/CollectionInfo;

    move-result-object p0

    invoke-static {p1, p0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setCollectionInfo(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Landroidx/compose/ui/semantics/CollectionInfo;)V

    return-void
.end method

.method public getShouldAutoInvalidate()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public final update(Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;Landroidx/compose/foundation/gestures/Orientation;ZZ)V
    .locals 0

    .line 159
    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode;->itemProviderLambda:Lkotlin/jvm/functions/Function0;

    .line 160
    iput-object p2, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode;->state:Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;

    .line 163
    iget-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    if-eq p1, p3, :cond_0

    .line 164
    iput-object p3, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 165
    invoke-static {p0}, Landroidx/compose/ui/node/SemanticsModifierNodeKt;->invalidateSemantics(Landroidx/compose/ui/node/SemanticsModifierNode;)V

    .line 171
    :cond_0
    iget-boolean p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode;->userScrollEnabled:Z

    if-ne p1, p4, :cond_1

    iget-boolean p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode;->reverseScrolling:Z

    if-eq p1, p5, :cond_2

    .line 173
    :cond_1
    iput-boolean p4, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode;->userScrollEnabled:Z

    .line 174
    iput-boolean p5, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode;->reverseScrolling:Z

    .line 175
    invoke-direct {p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode;->updateCachedSemanticsValues()V

    .line 176
    invoke-static {p0}, Landroidx/compose/ui/node/SemanticsModifierNodeKt;->invalidateSemantics(Landroidx/compose/ui/node/SemanticsModifierNode;)V

    :cond_2
    return-void
.end method
