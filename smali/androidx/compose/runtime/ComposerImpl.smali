.class public final Landroidx/compose/runtime/ComposerImpl;
.super Ljava/lang/Object;
.source "Composer.kt"

# interfaces
.implements Landroidx/compose/runtime/Composer;


# instance fields
.field private final abandonSet:Ljava/util/Set;

.field private final applier:Landroidx/compose/runtime/Applier;

.field private final changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

.field private changes:Landroidx/compose/runtime/changelist/ChangeList;

.field private childrenComposing:I

.field private final composition:Landroidx/compose/runtime/ControlledComposition;

.field private compositionToken:I

.field private compoundKeyHash:I

.field private deferredChanges:Landroidx/compose/runtime/changelist/ChangeList;

.field private final derivedStateObserver:Landroidx/compose/runtime/ComposerImpl$derivedStateObserver$1;

.field private final entersStack:Landroidx/compose/runtime/IntStack;

.field private forceRecomposeScopes:Z

.field private forciblyRecompose:Z

.field private groupNodeCount:I

.field private insertAnchor:Landroidx/compose/runtime/Anchor;

.field private insertFixups:Landroidx/compose/runtime/changelist/FixupList;

.field private insertTable:Landroidx/compose/runtime/SlotTable;

.field private inserting:Z

.field private final invalidateStack:Ljava/util/ArrayList;

.field private final invalidations:Ljava/util/List;

.field private isComposing:Z

.field private isDisposed:Z

.field private lateChanges:Landroidx/compose/runtime/changelist/ChangeList;

.field private nodeCountOverrides:[I

.field private nodeCountVirtualOverrides:Landroidx/collection/MutableIntIntMap;

.field private nodeExpected:Z

.field private nodeIndex:I

.field private final parentContext:Landroidx/compose/runtime/CompositionContext;

.field private parentProvider:Landroidx/compose/runtime/PersistentCompositionLocalMap;

.field private final parentStateStack:Landroidx/compose/runtime/IntStack;

.field private pending:Landroidx/compose/runtime/Pending;

.field private final pendingStack:Ljava/util/ArrayList;

.field private providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

.field private providerUpdates:Landroidx/collection/MutableIntObjectMap;

.field private providersInvalid:Z

.field private final providersInvalidStack:Landroidx/compose/runtime/IntStack;

.field private rGroupIndex:I

.field private reader:Landroidx/compose/runtime/SlotReader;

.field private reusing:Z

.field private reusingGroup:I

.field private shouldPauseCallback:Lkotlin/jvm/functions/Function0;

.field private final slotTable:Landroidx/compose/runtime/SlotTable;

.field private sourceMarkersEnabled:Z

.field private writer:Landroidx/compose/runtime/SlotWriter;

.field private writerHasAProvider:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/CompositionContext;Landroidx/compose/runtime/SlotTable;Ljava/util/Set;Landroidx/compose/runtime/changelist/ChangeList;Landroidx/compose/runtime/changelist/ChangeList;Landroidx/compose/runtime/ControlledComposition;)V
    .locals 0

    .line 1285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1288
    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->applier:Landroidx/compose/runtime/Applier;

    .line 1291
    iput-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    .line 1294
    iput-object p3, p0, Landroidx/compose/runtime/ComposerImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    .line 1295
    iput-object p4, p0, Landroidx/compose/runtime/ComposerImpl;->abandonSet:Ljava/util/Set;

    .line 1296
    iput-object p5, p0, Landroidx/compose/runtime/ComposerImpl;->changes:Landroidx/compose/runtime/changelist/ChangeList;

    .line 1297
    iput-object p6, p0, Landroidx/compose/runtime/ComposerImpl;->lateChanges:Landroidx/compose/runtime/changelist/ChangeList;

    .line 1300
    iput-object p7, p0, Landroidx/compose/runtime/ComposerImpl;->composition:Landroidx/compose/runtime/ControlledComposition;

    const/4 p1, 0x0

    const/4 p4, 0x1

    .line 1302
    invoke-static {p1, p4, p1}, Landroidx/compose/runtime/Stack;->constructor-impl$default(Ljava/util/ArrayList;ILkotlin/jvm/internal/DefaultConstructorMarker;)Ljava/util/ArrayList;

    move-result-object p5

    iput-object p5, p0, Landroidx/compose/runtime/ComposerImpl;->pendingStack:Ljava/util/ArrayList;

    .line 1307
    new-instance p5, Landroidx/compose/runtime/IntStack;

    invoke-direct {p5}, Landroidx/compose/runtime/IntStack;-><init>()V

    iput-object p5, p0, Landroidx/compose/runtime/ComposerImpl;->parentStateStack:Landroidx/compose/runtime/IntStack;

    .line 1313
    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    iput-object p5, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    .line 1314
    new-instance p5, Landroidx/compose/runtime/IntStack;

    invoke-direct {p5}, Landroidx/compose/runtime/IntStack;-><init>()V

    iput-object p5, p0, Landroidx/compose/runtime/ComposerImpl;->entersStack:Landroidx/compose/runtime/IntStack;

    .line 1316
    invoke-static {}, Landroidx/compose/runtime/internal/PersistentCompositionLocalMapKt;->persistentCompositionLocalHashMapOf()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    move-result-object p5

    iput-object p5, p0, Landroidx/compose/runtime/ComposerImpl;->parentProvider:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 1319
    new-instance p5, Landroidx/compose/runtime/IntStack;

    invoke-direct {p5}, Landroidx/compose/runtime/IntStack;-><init>()V

    iput-object p5, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalidStack:Landroidx/compose/runtime/IntStack;

    const/4 p5, -0x1

    .line 1321
    iput p5, p0, Landroidx/compose/runtime/ComposerImpl;->reusingGroup:I

    .line 1325
    invoke-virtual {p2}, Landroidx/compose/runtime/CompositionContext;->getCollectingSourceInformation$runtime_release()Z

    move-result p5

    const/4 p6, 0x0

    if-nez p5, :cond_1

    invoke-virtual {p2}, Landroidx/compose/runtime/CompositionContext;->getCollectingCallByInformation$runtime_release()Z

    move-result p5

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_0
    move p5, p6

    goto :goto_1

    :cond_1
    :goto_0
    move p5, p4

    :goto_1
    iput-boolean p5, p0, Landroidx/compose/runtime/ComposerImpl;->sourceMarkersEnabled:Z

    .line 1327
    new-instance p5, Landroidx/compose/runtime/ComposerImpl$derivedStateObserver$1;

    invoke-direct {p5, p0}, Landroidx/compose/runtime/ComposerImpl$derivedStateObserver$1;-><init>(Landroidx/compose/runtime/ComposerImpl;)V

    iput-object p5, p0, Landroidx/compose/runtime/ComposerImpl;->derivedStateObserver:Landroidx/compose/runtime/ComposerImpl$derivedStateObserver$1;

    .line 1337
    invoke-static {p1, p4, p1}, Landroidx/compose/runtime/Stack;->constructor-impl$default(Ljava/util/ArrayList;ILkotlin/jvm/internal/DefaultConstructorMarker;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->invalidateStack:Ljava/util/ArrayList;

    .line 1351
    invoke-virtual {p3}, Landroidx/compose/runtime/SlotTable;->openReader()Landroidx/compose/runtime/SlotReader;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/runtime/SlotReader;->close()V

    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 1354
    new-instance p1, Landroidx/compose/runtime/SlotTable;

    invoke-direct {p1}, Landroidx/compose/runtime/SlotTable;-><init>()V

    .line 1355
    invoke-virtual {p2}, Landroidx/compose/runtime/CompositionContext;->getCollectingSourceInformation$runtime_release()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->collectSourceInformation()V

    .line 1356
    :cond_2
    invoke-virtual {p2}, Landroidx/compose/runtime/CompositionContext;->getCollectingCallByInformation$runtime_release()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->collectCalledByInformation()V

    .line 1354
    :cond_3
    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->insertTable:Landroidx/compose/runtime/SlotTable;

    .line 1359
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->openWriter()Landroidx/compose/runtime/SlotWriter;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroidx/compose/runtime/SlotWriter;->close(Z)V

    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    .line 1364
    new-instance p1, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    iget-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->changes:Landroidx/compose/runtime/changelist/ChangeList;

    invoke-direct {p1, p0, p2}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;-><init>(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/runtime/changelist/ChangeList;)V

    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    .line 1365
    iget-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->insertTable:Landroidx/compose/runtime/SlotTable;

    .line 150
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->openReader()Landroidx/compose/runtime/SlotReader;

    move-result-object p1

    .line 1365
    :try_start_0
    invoke-virtual {p1, p6}, Landroidx/compose/runtime/SlotReader;->anchor(I)Landroidx/compose/runtime/Anchor;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotReader;->close()V

    .line 1365
    iput-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->insertAnchor:Landroidx/compose/runtime/Anchor;

    .line 1366
    new-instance p1, Landroidx/compose/runtime/changelist/FixupList;

    invoke-direct {p1}, Landroidx/compose/runtime/changelist/FixupList;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->insertFixups:Landroidx/compose/runtime/changelist/FixupList;

    return-void

    :catchall_0
    move-exception p0

    .line 154
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotReader;->close()V

    throw p0
.end method

.method private final abortRoot()V
    .locals 1

    .line 1602
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->cleanUpCompose()V

    .line 1603
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->pendingStack:Ljava/util/ArrayList;

    invoke-static {v0}, Landroidx/compose/runtime/Stack;->clear-impl(Ljava/util/ArrayList;)V

    .line 1604
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->parentStateStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v0}, Landroidx/compose/runtime/IntStack;->clear()V

    .line 1605
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->entersStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v0}, Landroidx/compose/runtime/IntStack;->clear()V

    .line 1606
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalidStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v0}, Landroidx/compose/runtime/IntStack;->clear()V

    const/4 v0, 0x0

    .line 1607
    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->providerUpdates:Landroidx/collection/MutableIntObjectMap;

    .line 1608
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->insertFixups:Landroidx/compose/runtime/changelist/FixupList;

    invoke-virtual {v0}, Landroidx/compose/runtime/changelist/FixupList;->clear()V

    const/4 v0, 0x0

    .line 1609
    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    .line 1610
    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->childrenComposing:I

    .line 1611
    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeExpected:Z

    .line 1612
    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    .line 1613
    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    .line 1614
    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    .line 1615
    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->forciblyRecompose:Z

    const/4 v0, -0x1

    .line 1616
    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->reusingGroup:I

    .line 1617
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1618
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->close()V

    .line 1620
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotWriter;->getClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1623
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->forceFreshInsertTable()V

    :cond_1
    return-void
.end method

.method public static final synthetic access$getChangeListWriter$p(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/changelist/ComposerChangeListWriter;
    .locals 0

    .line 1285
    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    return-object p0
.end method

.method public static final synthetic access$getChildrenComposing$p(Landroidx/compose/runtime/ComposerImpl;)I
    .locals 0

    .line 1285
    iget p0, p0, Landroidx/compose/runtime/ComposerImpl;->childrenComposing:I

    return p0
.end method

.method public static final synthetic access$getNodeCountOverrides$p(Landroidx/compose/runtime/ComposerImpl;)[I
    .locals 0

    .line 1285
    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeCountOverrides:[I

    return-object p0
.end method

.method public static final synthetic access$getParentContext$p(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/CompositionContext;
    .locals 0

    .line 1285
    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    return-object p0
.end method

.method public static final synthetic access$getProviderUpdates$p(Landroidx/compose/runtime/ComposerImpl;)Landroidx/collection/MutableIntObjectMap;
    .locals 0

    .line 1285
    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->providerUpdates:Landroidx/collection/MutableIntObjectMap;

    return-object p0
.end method

.method public static final synthetic access$getSlotTable$p(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/SlotTable;
    .locals 0

    .line 1285
    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    return-object p0
.end method

.method public static final synthetic access$invokeMovableContentLambda(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/runtime/MovableContent;Landroidx/compose/runtime/PersistentCompositionLocalMap;Ljava/lang/Object;Z)V
    .locals 0

    .line 1285
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/runtime/ComposerImpl;->invokeMovableContentLambda(Landroidx/compose/runtime/MovableContent;Landroidx/compose/runtime/PersistentCompositionLocalMap;Ljava/lang/Object;Z)V

    return-void
.end method

.method public static final synthetic access$setChildrenComposing$p(Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 0

    .line 1285
    iput p1, p0, Landroidx/compose/runtime/ComposerImpl;->childrenComposing:I

    return-void
.end method

.method public static final synthetic access$setNodeCountOverrides$p(Landroidx/compose/runtime/ComposerImpl;[I)V
    .locals 0

    .line 1285
    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->nodeCountOverrides:[I

    return-void
.end method

.method public static final synthetic access$setProviderUpdates$p(Landroidx/compose/runtime/ComposerImpl;Landroidx/collection/MutableIntObjectMap;)V
    .locals 0

    .line 1285
    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->providerUpdates:Landroidx/collection/MutableIntObjectMap;

    return-void
.end method

.method private final addRecomposeScope()V
    .locals 4

    .line 3139
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v0

    const-string v1, "null cannot be cast to non-null type androidx.compose.runtime.CompositionImpl"

    if-eqz v0, :cond_0

    .line 3140
    new-instance v0, Landroidx/compose/runtime/RecomposeScopeImpl;

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getComposition()Landroidx/compose/runtime/ControlledComposition;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroidx/compose/runtime/CompositionImpl;

    invoke-direct {v0, v2}, Landroidx/compose/runtime/RecomposeScopeImpl;-><init>(Landroidx/compose/runtime/RecomposeScopeOwner;)V

    .line 3141
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->invalidateStack:Ljava/util/ArrayList;

    invoke-static {v1, v0}, Landroidx/compose/runtime/Stack;->push-impl(Ljava/util/ArrayList;Ljava/lang/Object;)Z

    .line 3142
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->updateValue(Ljava/lang/Object;)V

    .line 3143
    iget p0, p0, Landroidx/compose/runtime/ComposerImpl;->compositionToken:I

    invoke-virtual {v0, p0}, Landroidx/compose/runtime/RecomposeScopeImpl;->start(I)V

    goto :goto_3

    .line 3145
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v2}, Landroidx/compose/runtime/SlotReader;->getParent()I

    move-result v2

    invoke-static {v0, v2}, Landroidx/compose/runtime/ComposerKt;->access$removeLocation(Ljava/util/List;I)Landroidx/compose/runtime/Invalidation;

    move-result-object v0

    .line 3146
    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v2}, Landroidx/compose/runtime/SlotReader;->next()Ljava/lang/Object;

    move-result-object v2

    .line 3148
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3151
    new-instance v2, Landroidx/compose/runtime/RecomposeScopeImpl;

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getComposition()Landroidx/compose/runtime/ControlledComposition;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroidx/compose/runtime/CompositionImpl;

    invoke-direct {v2, v3}, Landroidx/compose/runtime/RecomposeScopeImpl;-><init>(Landroidx/compose/runtime/RecomposeScopeOwner;)V

    .line 3152
    invoke-virtual {p0, v2}, Landroidx/compose/runtime/ComposerImpl;->updateValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 3154
    :cond_1
    const-string v1, "null cannot be cast to non-null type androidx.compose.runtime.RecomposeScopeImpl"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroidx/compose/runtime/RecomposeScopeImpl;

    :goto_0
    const/4 v1, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_4

    .line 3157
    invoke-virtual {v2}, Landroidx/compose/runtime/RecomposeScopeImpl;->getForcedRecompose()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3158
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/RecomposeScopeImpl;->setForcedRecompose(Z)V

    :cond_2
    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move v0, v3

    goto :goto_2

    :cond_4
    :goto_1
    move v0, v1

    .line 3155
    :goto_2
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->setRequiresRecompose(Z)V

    .line 3160
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->invalidateStack:Ljava/util/ArrayList;

    invoke-static {v0, v2}, Landroidx/compose/runtime/Stack;->push-impl(Ljava/util/ArrayList;Ljava/lang/Object;)Z

    .line 3161
    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->compositionToken:I

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->start(I)V

    .line 3162
    invoke-virtual {v2}, Landroidx/compose/runtime/RecomposeScopeImpl;->getPaused()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3163
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/RecomposeScopeImpl;->setPaused(Z)V

    .line 3164
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/RecomposeScopeImpl;->setResuming(Z)V

    .line 3165
    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {p0, v2}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->startResumingScope(Landroidx/compose/runtime/RecomposeScopeImpl;)V

    :cond_5
    :goto_3
    return-void
.end method

.method private final cleanUpCompose()V
    .locals 1

    const/4 v0, 0x0

    .line 3782
    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->pending:Landroidx/compose/runtime/Pending;

    const/4 v0, 0x0

    .line 3783
    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    .line 3784
    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    .line 3785
    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    .line 3786
    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeExpected:Z

    .line 3787
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {v0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->resetTransientState()V

    .line 3788
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->invalidateStack:Ljava/util/ArrayList;

    invoke-static {v0}, Landroidx/compose/runtime/Stack;->clear-impl(Ljava/util/ArrayList;)V

    .line 3789
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->clearUpdatedNodeCounts()V

    return-void
.end method

.method private final clearUpdatedNodeCounts()V
    .locals 1

    const/4 v0, 0x0

    .line 2925
    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeCountOverrides:[I

    .line 2926
    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeCountVirtualOverrides:Landroidx/collection/MutableIntIntMap;

    return-void
.end method

.method private final compoundKeyOf(IIII)I
    .locals 3

    if-ne p1, p3, :cond_0

    goto :goto_1

    .line 2969
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-direct {p0, v0, p1}, Landroidx/compose/runtime/ComposerImpl;->groupCompoundKeyPart(Landroidx/compose/runtime/SlotReader;I)I

    move-result v0

    const v1, 0x78cc281

    if-ne v0, v1, :cond_1

    move p4, v0

    goto :goto_1

    .line 2972
    :cond_1
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v1, p1}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    move-result v1

    if-ne v1, p3, :cond_2

    goto :goto_0

    .line 2978
    :cond_2
    invoke-direct {p0, v1}, Landroidx/compose/runtime/ComposerImpl;->rGroupIndexOf(I)I

    move-result v2

    .line 2976
    invoke-direct {p0, v1, v2, p3, p4}, Landroidx/compose/runtime/ComposerImpl;->compoundKeyOf(IIII)I

    move-result p4

    .line 2982
    :goto_0
    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotReader;->hasObjectKey(I)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p2, 0x0

    :cond_3
    const/4 p0, 0x3

    .line 27
    invoke-static {p4, p0}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result p1

    xor-int/2addr p1, v0

    invoke-static {p1, p0}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result p0

    xor-int/2addr p0, p2

    move p4, p0

    :goto_1
    return p4
.end method

.method private final createFreshInsertTable()V
    .locals 1

    .line 2349
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotWriter;->getClosed()Z

    move-result v0

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->runtimeCheck(Z)V

    .line 2350
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->forceFreshInsertTable()V

    return-void
.end method

.method private final currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;
    .locals 1

    .line 2120
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    if-eqz v0, :cond_0

    return-object v0

    .line 2123
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getParent()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope(I)Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object p0

    return-object p0
.end method

.method private final currentCompositionLocalScope(I)Landroidx/compose/runtime/PersistentCompositionLocalMap;
    .locals 5

    .line 2131
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v0

    const-string v1, "null cannot be cast to non-null type androidx.compose.runtime.PersistentCompositionLocalMap"

    const/16 v2, 0xca

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->writerHasAProvider:Z

    if-eqz v0, :cond_1

    .line 2132
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotWriter;->getParent()I

    move-result v0

    :goto_0
    if-lez v0, :cond_1

    .line 2135
    iget-object v3, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/SlotWriter;->groupKey(I)I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 2136
    iget-object v3, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/SlotWriter;->groupObjectKey(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->getCompositionLocalMap()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2138
    iget-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/SlotWriter;->groupAux(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 2139
    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    return-object p1

    .line 2142
    :cond_0
    iget-object v3, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/SlotWriter;->parent(I)I

    move-result v0

    goto :goto_0

    .line 2145
    :cond_1
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getSize()I

    move-result v0

    if-lez v0, :cond_5

    :goto_1
    if-lez p1, :cond_5

    .line 2149
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SlotReader;->groupKey(I)I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 2150
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SlotReader;->groupObjectKey(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->getCompositionLocalMap()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2153
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->providerUpdates:Landroidx/collection/MutableIntObjectMap;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/PersistentCompositionLocalMap;

    if-nez v0, :cond_3

    .line 2154
    :cond_2
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SlotReader;->groupAux(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 2155
    :cond_3
    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    return-object v0

    .line 2158
    :cond_4
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    move-result p1

    goto :goto_1

    .line 2161
    :cond_5
    iget-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->parentProvider:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    return-object p1
.end method

.method private final doCompose-aFTiNEg(Landroidx/collection/MutableScatterMap;Lkotlin/jvm/functions/Function2;)V
    .locals 6

    .line 3557
    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    if-eqz v0, :cond_0

    const-string v0, "Reentrant composition is not supported"

    .line 4531
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 45
    :cond_0
    sget-object v0, Landroidx/compose/runtime/internal/Trace;->INSTANCE:Landroidx/compose/runtime/internal/Trace;

    const-string v1, "Compose:recompose"

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/internal/Trace;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 3559
    :try_start_0
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->currentSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/Snapshot;->getId()I

    move-result v2

    iput v2, p0, Landroidx/compose/runtime/ComposerImpl;->compositionToken:I

    const/4 v2, 0x0

    .line 3560
    iput-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->providerUpdates:Landroidx/collection/MutableIntObjectMap;

    .line 3561
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updateComposerInvalidations-RY85e9Y(Landroidx/collection/MutableScatterMap;)V

    const/4 p1, 0x0

    .line 3562
    iput p1, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    const/4 v2, 0x1

    .line 3564
    iput-boolean v2, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3566
    :try_start_1
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->startRoot()V

    .line 3569
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->nextSlot()Ljava/lang/Object;

    move-result-object v3

    if-eq v3, p2, :cond_1

    if-eqz p2, :cond_1

    .line 3571
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/ComposerImpl;->updateValue(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p2

    goto/16 :goto_3

    .line 3576
    :cond_1
    :goto_0
    iget-object v4, p0, Landroidx/compose/runtime/ComposerImpl;->derivedStateObserver:Landroidx/compose/runtime/ComposerImpl$derivedStateObserver$1;

    .line 386
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateObservers()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 388
    :try_start_2
    invoke-virtual {v5, v4}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    const/16 v4, 0xc8

    if-eqz p2, :cond_2

    .line 3578
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->getInvocation()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v4, v3}, Landroidx/compose/runtime/ComposerImpl;->startGroup(ILjava/lang/Object;)V

    .line 3579
    invoke-static {p0, p2}, Landroidx/compose/runtime/internal/Utils_jvmKt;->invokeComposable(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function2;)V

    .line 3580
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->endGroup()V

    goto :goto_1

    :catchall_1
    move-exception p2

    goto :goto_2

    .line 3582
    :cond_2
    iget-boolean p2, p0, Landroidx/compose/runtime/ComposerImpl;->forciblyRecompose:Z

    if-nez p2, :cond_3

    iget-boolean p2, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalid:Z

    if-eqz p2, :cond_4

    :cond_3
    if-eqz v3, :cond_4

    .line 3584
    sget-object p2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p2

    invoke-static {v3, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 3586
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->getInvocation()Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, v4, p2}, Landroidx/compose/runtime/ComposerImpl;->startGroup(ILjava/lang/Object;)V

    const/4 p2, 0x2

    .line 3588
    invoke-static {v3, p2}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlin/jvm/functions/Function2;

    invoke-static {p0, p2}, Landroidx/compose/runtime/internal/Utils_jvmKt;->invokeComposable(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function2;)V

    .line 3589
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->endGroup()V

    goto :goto_1

    .line 3591
    :cond_4
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->skipCurrentGroup()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 42
    :goto_1
    :try_start_3
    invoke-virtual {v5}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result p2

    sub-int/2addr p2, v2

    .line 391
    invoke-virtual {v5, p2}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    .line 3594
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->endRoot()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3597
    :try_start_4
    iput-boolean p1, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    .line 3598
    iget-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 3600
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->createFreshInsertTable()V

    .line 3602
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 49
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/internal/Trace;->endSection(Ljava/lang/Object;)V

    return-void

    :catchall_2
    move-exception p0

    goto :goto_4

    .line 42
    :goto_2
    :try_start_5
    invoke-virtual {v5}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v0

    sub-int/2addr v0, v2

    .line 391
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3597
    :goto_3
    :try_start_6
    iput-boolean p1, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    .line 3598
    iget-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 3599
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->abortRoot()V

    .line 3600
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->createFreshInsertTable()V

    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 49
    :goto_4
    sget-object p1, Landroidx/compose/runtime/internal/Trace;->INSTANCE:Landroidx/compose/runtime/internal/Trace;

    invoke-virtual {p1, v1}, Landroidx/compose/runtime/internal/Trace;->endSection(Ljava/lang/Object;)V

    throw p0
.end method

.method private final doRecordDownsFor(II)V
    .locals 1

    if-lez p1, :cond_0

    if-eq p1, p2, :cond_0

    .line 2950
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    move-result v0

    invoke-direct {p0, v0, p2}, Landroidx/compose/runtime/ComposerImpl;->doRecordDownsFor(II)V

    .line 2951
    iget-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/SlotReader;->isNode(I)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-direct {p0, v0, p1}, Landroidx/compose/runtime/ComposerImpl;->nodeAt(Landroidx/compose/runtime/SlotReader;I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->moveDown(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private final end(Z)V
    .locals 20

    move-object/from16 v0, p0

    .line 2517
    iget-object v1, v0, Landroidx/compose/runtime/ComposerImpl;->parentStateStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v1}, Landroidx/compose/runtime/IntStack;->peek2()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 2518
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v3

    const/16 v4, 0xcf

    const/4 v5, 0x3

    if-eqz v3, :cond_3

    .line 2519
    iget-object v3, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v3}, Landroidx/compose/runtime/SlotWriter;->getParent()I

    move-result v3

    .line 2521
    iget-object v6, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v6, v3}, Landroidx/compose/runtime/SlotWriter;->groupKey(I)I

    move-result v6

    .line 2523
    iget-object v7, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/SlotWriter;->groupObjectKey(I)Ljava/lang/Object;

    move-result-object v7

    .line 2524
    iget-object v8, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/SlotWriter;->groupAux(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v7, :cond_1

    if-eqz v3, :cond_0

    if-ne v6, v4, :cond_0

    .line 3990
    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3991
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    .line 3999
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->getCompoundKeyHash()I

    move-result v4

    xor-int/2addr v1, v4

    .line 23
    invoke-static {v1, v5}, Ljava/lang/Integer;->rotateRight(II)I

    move-result v1

    .line 3999
    invoke-static {v3}, Ljava/lang/Integer;->hashCode(I)I

    move-result v3

    xor-int/2addr v1, v3

    .line 23
    invoke-static {v1, v5}, Ljava/lang/Integer;->rotateRight(II)I

    move-result v1

    .line 3999
    iput v1, v0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    goto/16 :goto_4

    .line 3999
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->getCompoundKeyHash()I

    move-result v3

    xor-int/2addr v1, v3

    .line 23
    invoke-static {v1, v5}, Ljava/lang/Integer;->rotateRight(II)I

    move-result v1

    .line 3999
    invoke-static {v6}, Ljava/lang/Integer;->hashCode(I)I

    move-result v3

    xor-int/2addr v1, v3

    .line 23
    :goto_0
    invoke-static {v1, v5}, Ljava/lang/Integer;->rotateRight(II)I

    move-result v1

    .line 3999
    iput v1, v0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    goto/16 :goto_4

    .line 3993
    :cond_1
    instance-of v1, v7, Ljava/lang/Enum;

    if-eqz v1, :cond_2

    check-cast v7, Ljava/lang/Enum;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    .line 3999
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->getCompoundKeyHash()I

    move-result v3

    .line 23
    invoke-static {v3, v5}, Ljava/lang/Integer;->rotateRight(II)I

    move-result v3

    .line 3999
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    xor-int/2addr v1, v3

    goto :goto_0

    .line 3994
    :cond_2
    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    .line 2527
    :cond_3
    iget-object v3, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v3}, Landroidx/compose/runtime/SlotReader;->getParent()I

    move-result v3

    .line 2529
    iget-object v6, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v6, v3}, Landroidx/compose/runtime/SlotReader;->groupKey(I)I

    move-result v6

    .line 2531
    iget-object v7, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/SlotReader;->groupObjectKey(I)Ljava/lang/Object;

    move-result-object v7

    .line 2532
    iget-object v8, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/SlotReader;->groupAux(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v7, :cond_5

    if-eqz v3, :cond_4

    if-ne v6, v4, :cond_4

    .line 3990
    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 3991
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    .line 3999
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->getCompoundKeyHash()I

    move-result v4

    xor-int/2addr v1, v4

    .line 23
    invoke-static {v1, v5}, Ljava/lang/Integer;->rotateRight(II)I

    move-result v1

    .line 3999
    invoke-static {v3}, Ljava/lang/Integer;->hashCode(I)I

    move-result v3

    xor-int/2addr v1, v3

    .line 23
    invoke-static {v1, v5}, Ljava/lang/Integer;->rotateRight(II)I

    move-result v1

    .line 3999
    iput v1, v0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    goto :goto_4

    .line 3999
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->getCompoundKeyHash()I

    move-result v3

    xor-int/2addr v1, v3

    .line 23
    invoke-static {v1, v5}, Ljava/lang/Integer;->rotateRight(II)I

    move-result v1

    .line 3999
    invoke-static {v6}, Ljava/lang/Integer;->hashCode(I)I

    move-result v3

    xor-int/2addr v1, v3

    .line 23
    :goto_2
    invoke-static {v1, v5}, Ljava/lang/Integer;->rotateRight(II)I

    move-result v1

    .line 3999
    iput v1, v0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    goto :goto_4

    .line 3993
    :cond_5
    instance-of v1, v7, Ljava/lang/Enum;

    if-eqz v1, :cond_6

    check-cast v7, Ljava/lang/Enum;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    .line 3999
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->getCompoundKeyHash()I

    move-result v3

    .line 23
    invoke-static {v3, v5}, Ljava/lang/Integer;->rotateRight(II)I

    move-result v3

    .line 3999
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    xor-int/2addr v1, v3

    goto :goto_2

    .line 3994
    :cond_6
    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_3

    .line 2535
    :goto_4
    iget v1, v0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    .line 2536
    iget-object v3, v0, Landroidx/compose/runtime/ComposerImpl;->pending:Landroidx/compose/runtime/Pending;

    if-eqz v3, :cond_d

    .line 2537
    invoke-virtual {v3}, Landroidx/compose/runtime/Pending;->getKeyInfos()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_d

    .line 2539
    invoke-virtual {v3}, Landroidx/compose/runtime/Pending;->getKeyInfos()Ljava/util/List;

    move-result-object v5

    .line 2542
    invoke-virtual {v3}, Landroidx/compose/runtime/Pending;->getUsed()Ljava/util/List;

    move-result-object v6

    .line 2546
    invoke-static {v6}, Landroidx/compose/runtime/snapshots/ListUtilsKt;->fastToSet(Ljava/util/List;)Ljava/util/Set;

    move-result-object v7

    .line 2548
    new-instance v8, Ljava/util/LinkedHashSet;

    invoke-direct {v8}, Ljava/util/LinkedHashSet;-><init>()V

    .line 2550
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    .line 2552
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_5
    if-ge v11, v10, :cond_c

    .line 2557
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/compose/runtime/KeyInfo;

    .line 2558
    invoke-interface {v7, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_8

    .line 2561
    invoke-virtual {v3, v14}, Landroidx/compose/runtime/Pending;->nodePositionOf(Landroidx/compose/runtime/KeyInfo;)I

    move-result v15

    .line 2562
    iget-object v2, v0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    .line 2563
    invoke-virtual {v3}, Landroidx/compose/runtime/Pending;->getStartIndex()I

    move-result v16

    add-int v15, v15, v16

    .line 2564
    invoke-virtual {v14}, Landroidx/compose/runtime/KeyInfo;->getNodes()I

    move-result v4

    .line 2562
    invoke-virtual {v2, v15, v4}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->removeNode(II)V

    .line 2566
    invoke-virtual {v14}, Landroidx/compose/runtime/KeyInfo;->getLocation()I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroidx/compose/runtime/Pending;->updateNodeCount(II)Z

    .line 2567
    iget-object v2, v0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {v14}, Landroidx/compose/runtime/KeyInfo;->getLocation()I

    move-result v4

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->moveReaderRelativeTo(I)V

    .line 2568
    iget-object v2, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v14}, Landroidx/compose/runtime/KeyInfo;->getLocation()I

    move-result v4

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/SlotReader;->reposition(I)V

    .line 2569
    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->recordDelete()V

    .line 2570
    iget-object v2, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v2}, Landroidx/compose/runtime/SlotReader;->skipGroup()I

    .line 2575
    iget-object v2, v0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    .line 2576
    invoke-virtual {v14}, Landroidx/compose/runtime/KeyInfo;->getLocation()I

    move-result v4

    .line 2577
    invoke-virtual {v14}, Landroidx/compose/runtime/KeyInfo;->getLocation()I

    move-result v15

    move-object/from16 v17, v7

    iget-object v7, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v14}, Landroidx/compose/runtime/KeyInfo;->getLocation()I

    move-result v14

    invoke-virtual {v7, v14}, Landroidx/compose/runtime/SlotReader;->groupSize(I)I

    move-result v7

    add-int/2addr v15, v7

    .line 2575
    invoke-static {v2, v4, v15}, Landroidx/compose/runtime/ComposerKt;->access$removeRange(Ljava/util/List;II)V

    :goto_6
    add-int/lit8 v11, v11, 0x1

    :cond_7
    move-object/from16 v7, v17

    :goto_7
    const/4 v2, 0x1

    goto :goto_5

    :cond_8
    move-object/from16 v17, v7

    .line 2583
    invoke-interface {v8, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_6

    :cond_9
    if-ge v12, v9, :cond_7

    .line 2592
    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/KeyInfo;

    if-eq v2, v14, :cond_b

    .line 2594
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/Pending;->nodePositionOf(Landroidx/compose/runtime/KeyInfo;)I

    move-result v4

    .line 2595
    invoke-interface {v8, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-eq v4, v13, :cond_a

    .line 2597
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/Pending;->updatedNodeCountOf(Landroidx/compose/runtime/KeyInfo;)I

    move-result v7

    .line 2598
    iget-object v14, v0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    .line 2599
    invoke-virtual {v3}, Landroidx/compose/runtime/Pending;->getStartIndex()I

    move-result v15

    add-int/2addr v15, v4

    .line 2600
    invoke-virtual {v3}, Landroidx/compose/runtime/Pending;->getStartIndex()I

    move-result v18

    move-object/from16 v19, v6

    add-int v6, v13, v18

    .line 2598
    invoke-virtual {v14, v15, v6, v7}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->moveNode(III)V

    .line 2603
    invoke-virtual {v3, v4, v13, v7}, Landroidx/compose/runtime/Pending;->registerMoveNode(III)V

    goto :goto_8

    :cond_a
    move-object/from16 v19, v6

    goto :goto_8

    :cond_b
    move-object/from16 v19, v6

    add-int/lit8 v11, v11, 0x1

    :goto_8
    add-int/lit8 v12, v12, 0x1

    .line 2610
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/Pending;->updatedNodeCountOf(Landroidx/compose/runtime/KeyInfo;)I

    move-result v2

    add-int/2addr v13, v2

    move-object/from16 v7, v17

    move-object/from16 v6, v19

    goto :goto_7

    .line 2616
    :cond_c
    iget-object v2, v0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {v2}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->endNodeMovement()V

    .line 2620
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_d

    .line 2621
    iget-object v2, v0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    iget-object v3, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v3}, Landroidx/compose/runtime/SlotReader;->getGroupEnd()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->moveReaderRelativeTo(I)V

    .line 2622
    iget-object v2, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v2}, Landroidx/compose/runtime/SlotReader;->skipToGroupEnd()V

    .line 2626
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v2

    if-nez v2, :cond_e

    .line 2634
    iget-object v3, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v3}, Landroidx/compose/runtime/SlotReader;->getRemainingSlots()I

    move-result v3

    if-lez v3, :cond_e

    .line 2636
    iget-object v4, v0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {v4, v3}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->trimValues(I)V

    .line 2642
    :cond_e
    iget v3, v0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    .line 2643
    :goto_9
    iget-object v4, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v4}, Landroidx/compose/runtime/SlotReader;->isGroupEnd()Z

    move-result v4

    if-nez v4, :cond_f

    .line 2644
    iget-object v4, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v4}, Landroidx/compose/runtime/SlotReader;->getCurrentGroup()I

    move-result v4

    .line 2645
    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->recordDelete()V

    .line 2646
    iget-object v5, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v5}, Landroidx/compose/runtime/SlotReader;->skipGroup()I

    move-result v5

    .line 2647
    iget-object v6, v0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {v6, v3, v5}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->removeNode(II)V

    .line 2648
    iget-object v5, v0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    iget-object v6, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v6}, Landroidx/compose/runtime/SlotReader;->getCurrentGroup()I

    move-result v6

    invoke-static {v5, v4, v6}, Landroidx/compose/runtime/ComposerKt;->access$removeRange(Ljava/util/List;II)V

    goto :goto_9

    :cond_f
    if-eqz v2, :cond_11

    if-eqz p1, :cond_10

    .line 2653
    iget-object v1, v0, Landroidx/compose/runtime/ComposerImpl;->insertFixups:Landroidx/compose/runtime/changelist/FixupList;

    invoke-virtual {v1}, Landroidx/compose/runtime/changelist/FixupList;->endNodeInsert()V

    const/4 v1, 0x1

    .line 2656
    :cond_10
    iget-object v3, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v3}, Landroidx/compose/runtime/SlotReader;->endEmpty()V

    .line 2657
    iget-object v3, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v3}, Landroidx/compose/runtime/SlotWriter;->getParent()I

    move-result v3

    .line 2658
    iget-object v4, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v4}, Landroidx/compose/runtime/SlotWriter;->endGroup()I

    .line 2659
    iget-object v4, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v4}, Landroidx/compose/runtime/SlotReader;->getInEmpty()Z

    move-result v4

    if-nez v4, :cond_15

    .line 2660
    invoke-direct {v0, v3}, Landroidx/compose/runtime/ComposerImpl;->insertedGroupVirtualIndex(I)I

    move-result v3

    .line 2661
    iget-object v4, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v4}, Landroidx/compose/runtime/SlotWriter;->endInsert()V

    .line 2662
    iget-object v4, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/SlotWriter;->close(Z)V

    .line 2663
    iget-object v4, v0, Landroidx/compose/runtime/ComposerImpl;->insertAnchor:Landroidx/compose/runtime/Anchor;

    invoke-direct {v0, v4}, Landroidx/compose/runtime/ComposerImpl;->recordInsert(Landroidx/compose/runtime/Anchor;)V

    const/4 v4, 0x0

    .line 2664
    iput-boolean v4, v0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    .line 2665
    iget-object v5, v0, Landroidx/compose/runtime/ComposerImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v5}, Landroidx/compose/runtime/SlotTable;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_15

    .line 2666
    invoke-direct {v0, v3, v4}, Landroidx/compose/runtime/ComposerImpl;->updateNodeCount(II)V

    .line 2667
    invoke-direct {v0, v3, v1}, Landroidx/compose/runtime/ComposerImpl;->updateNodeCountOverrides(II)V

    goto :goto_a

    :cond_11
    const/4 v5, 0x1

    if-eqz p1, :cond_12

    .line 2671
    iget-object v3, v0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {v3}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->moveUp()V

    .line 2672
    :cond_12
    iget-object v3, v0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {v3}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->endCurrentGroup()V

    .line 2673
    iget-object v3, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v3}, Landroidx/compose/runtime/SlotReader;->getParent()I

    move-result v3

    .line 2674
    invoke-direct {v0, v3}, Landroidx/compose/runtime/ComposerImpl;->updatedNodeCount(I)I

    move-result v4

    if-eq v1, v4, :cond_13

    .line 2676
    invoke-direct {v0, v3, v1}, Landroidx/compose/runtime/ComposerImpl;->updateNodeCountOverrides(II)V

    :cond_13
    if-eqz p1, :cond_14

    move v1, v5

    .line 2682
    :cond_14
    iget-object v3, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v3}, Landroidx/compose/runtime/SlotReader;->endGroup()V

    .line 2683
    iget-object v3, v0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {v3}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->endNodeMovement()V

    .line 2686
    :cond_15
    :goto_a
    invoke-direct {v0, v1, v2}, Landroidx/compose/runtime/ComposerImpl;->exitGroup(IZ)V

    return-void
.end method

.method private final endGroup()V
    .locals 1

    const/4 v0, 0x0

    .line 1714
    invoke-direct {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-void
.end method

.method private final endRoot()V
    .locals 1

    .line 1589
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->endGroup()V

    .line 1590
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionContext;->doneComposing$runtime_release()V

    .line 1591
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->endGroup()V

    .line 1592
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {v0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->endRoot()V

    .line 1593
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->finalizeCompose()V

    .line 1594
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->close()V

    const/4 v0, 0x0

    .line 1595
    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->forciblyRecompose:Z

    .line 1596
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalidStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v0}, Landroidx/compose/runtime/IntStack;->pop()I

    move-result v0

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->access$asBool(I)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalid:Z

    return-void
.end method

.method private final ensureWriter()V
    .locals 1

    .line 2339
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotWriter;->getClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2340
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->insertTable:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->openWriter()Landroidx/compose/runtime/SlotWriter;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    .line 2342
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotWriter;->skipToGroupEnd()V

    const/4 v0, 0x0

    .line 2343
    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->writerHasAProvider:Z

    const/4 v0, 0x0

    .line 2344
    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    :cond_0
    return-void
.end method

.method private final enterGroup(ZLandroidx/compose/runtime/Pending;)V
    .locals 2

    .line 2485
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->pendingStack:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->pending:Landroidx/compose/runtime/Pending;

    invoke-static {v0, v1}, Landroidx/compose/runtime/Stack;->push-impl(Ljava/util/ArrayList;Ljava/lang/Object;)Z

    .line 2486
    iput-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->pending:Landroidx/compose/runtime/Pending;

    .line 2487
    iget-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->parentStateStack:Landroidx/compose/runtime/IntStack;

    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/IntStack;->push(I)V

    .line 2488
    iget-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->parentStateStack:Landroidx/compose/runtime/IntStack;

    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->rGroupIndex:I

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/IntStack;->push(I)V

    .line 2489
    iget-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->parentStateStack:Landroidx/compose/runtime/IntStack;

    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/IntStack;->push(I)V

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 2490
    iput p2, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    .line 2491
    :cond_0
    iput p2, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    .line 2492
    iput p2, p0, Landroidx/compose/runtime/ComposerImpl;->rGroupIndex:I

    return-void
.end method

.method private final exitGroup(IZ)V
    .locals 1

    .line 2500
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->pendingStack:Ljava/util/ArrayList;

    invoke-static {v0}, Landroidx/compose/runtime/Stack;->pop-impl(Ljava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/Pending;

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 2502
    invoke-virtual {v0}, Landroidx/compose/runtime/Pending;->getGroupIndex()I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {v0, p2}, Landroidx/compose/runtime/Pending;->setGroupIndex(I)V

    .line 2504
    :cond_0
    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->pending:Landroidx/compose/runtime/Pending;

    .line 2505
    iget-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->parentStateStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {p2}, Landroidx/compose/runtime/IntStack;->pop()I

    move-result p2

    add-int/2addr p2, p1

    iput p2, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    .line 2506
    iget-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->parentStateStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {p2}, Landroidx/compose/runtime/IntStack;->pop()I

    move-result p2

    iput p2, p0, Landroidx/compose/runtime/ComposerImpl;->rGroupIndex:I

    .line 2507
    iget-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->parentStateStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {p2}, Landroidx/compose/runtime/IntStack;->pop()I

    move-result p2

    add-int/2addr p2, p1

    iput p2, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    return-void
.end method

.method private final finalizeCompose()V
    .locals 1

    .line 3776
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {v0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->finalizeComposition()V

    .line 3777
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->pendingStack:Ljava/util/ArrayList;

    invoke-static {v0}, Landroidx/compose/runtime/Stack;->isEmpty-impl(Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Start/end imbalance"

    .line 4531
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 3778
    :cond_0
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->cleanUpCompose()V

    return-void
.end method

.method private final forceFreshInsertTable()V
    .locals 2

    .line 2355
    new-instance v0, Landroidx/compose/runtime/SlotTable;

    invoke-direct {v0}, Landroidx/compose/runtime/SlotTable;-><init>()V

    .line 2356
    iget-boolean v1, p0, Landroidx/compose/runtime/ComposerImpl;->sourceMarkersEnabled:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->collectSourceInformation()V

    .line 2357
    :cond_0
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {v1}, Landroidx/compose/runtime/CompositionContext;->getCollectingCallByInformation$runtime_release()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->collectCalledByInformation()V

    .line 2354
    :cond_1
    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->insertTable:Landroidx/compose/runtime/SlotTable;

    .line 2359
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->openWriter()Landroidx/compose/runtime/SlotWriter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/SlotWriter;->close(Z)V

    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    return-void
.end method

.method private final getNode(Landroidx/compose/runtime/SlotReader;)Ljava/lang/Object;
    .locals 0

    .line 3609
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotReader;->getParent()I

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/SlotReader;->node(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final groupCompoundKeyPart(Landroidx/compose/runtime/SlotReader;I)I
    .locals 1

    .line 2989
    invoke-virtual {p1, p2}, Landroidx/compose/runtime/SlotReader;->hasObjectKey(I)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 2990
    invoke-virtual {p1, p2}, Landroidx/compose/runtime/SlotReader;->groupObjectKey(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2992
    instance-of p1, p0, Ljava/lang/Enum;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/lang/Enum;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    goto :goto_0

    .line 2994
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0

    .line 2998
    :cond_2
    invoke-virtual {p1, p2}, Landroidx/compose/runtime/SlotReader;->groupKey(I)I

    move-result p0

    const/16 v0, 0xcf

    if-ne p0, v0, :cond_4

    .line 3000
    invoke-virtual {p1, p2}, Landroidx/compose/runtime/SlotReader;->groupAux(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 3001
    sget-object p2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :cond_4
    :goto_0
    return p0
.end method

.method private final insertMovableContentGuarded(Ljava/util/List;)V
    .locals 25

    move-object/from16 v9, p0

    const/4 v0, 0x1

    .line 3305
    iget-object v10, v9, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    iget-object v1, v9, Landroidx/compose/runtime/ComposerImpl;->lateChanges:Landroidx/compose/runtime/changelist/ChangeList;

    .line 173
    invoke-virtual {v10}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->getChangeList()Landroidx/compose/runtime/changelist/ChangeList;

    move-result-object v11

    .line 175
    :try_start_0
    invoke-virtual {v10, v1}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->setChangeList(Landroidx/compose/runtime/changelist/ChangeList;)V

    .line 3306
    iget-object v1, v9, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {v1}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->resetSlots()V

    .line 34
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v13, 0x0

    move v14, v13

    :goto_0
    if-ge v14, v12, :cond_3

    move-object/from16 v15, p1

    .line 35
    :try_start_1
    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 36
    check-cast v1, Lkotlin/Pair;

    .line 3307
    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/MovableContentStateReference;

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/MovableContentStateReference;

    .line 3308
    invoke-virtual {v2}, Landroidx/compose/runtime/MovableContentStateReference;->getAnchor$runtime_release()Landroidx/compose/runtime/Anchor;

    move-result-object v3

    .line 3309
    invoke-virtual {v2}, Landroidx/compose/runtime/MovableContentStateReference;->getSlotTable$runtime_release()Landroidx/compose/runtime/SlotTable;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroidx/compose/runtime/SlotTable;->anchorIndex(Landroidx/compose/runtime/Anchor;)I

    move-result v4

    .line 3310
    new-instance v8, Landroidx/compose/runtime/internal/IntRef;

    const/4 v5, 0x0

    invoke-direct {v8, v13, v0, v5}, Landroidx/compose/runtime/internal/IntRef;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3312
    iget-object v6, v9, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {v6, v8, v3}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->determineMovableContentNodeIndex(Landroidx/compose/runtime/internal/IntRef;Landroidx/compose/runtime/Anchor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_c

    if-nez v1, :cond_1

    .line 3314
    :try_start_2
    invoke-virtual {v2}, Landroidx/compose/runtime/MovableContentStateReference;->getSlotTable$runtime_release()Landroidx/compose/runtime/SlotTable;

    move-result-object v1

    .line 3315
    iget-object v3, v9, Landroidx/compose/runtime/ComposerImpl;->insertTable:Landroidx/compose/runtime/SlotTable;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3326
    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->createFreshInsertTable()V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v10

    move-object v2, v11

    goto/16 :goto_9

    .line 3328
    :cond_0
    :goto_1
    invoke-virtual {v2}, Landroidx/compose/runtime/MovableContentStateReference;->getSlotTable$runtime_release()Landroidx/compose/runtime/SlotTable;

    move-result-object v1

    .line 150
    invoke-virtual {v1}, Landroidx/compose/runtime/SlotTable;->openReader()Landroidx/compose/runtime/SlotReader;

    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3329
    :try_start_3
    invoke-virtual {v7, v4}, Landroidx/compose/runtime/SlotReader;->reposition(I)V

    .line 3330
    iget-object v1, v9, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {v1, v4}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->moveReaderToAbsolute(I)V

    .line 3331
    new-instance v6, Landroidx/compose/runtime/changelist/ChangeList;

    invoke-direct {v6}, Landroidx/compose/runtime/changelist/ChangeList;-><init>()V

    .line 3332
    new-instance v5, Landroidx/compose/runtime/ComposerImpl$insertMovableContentGuarded$1$1$1$1;

    invoke-direct {v5, v9, v6, v7, v2}, Landroidx/compose/runtime/ComposerImpl$insertMovableContentGuarded$1$1$1$1;-><init>(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/runtime/changelist/ChangeList;Landroidx/compose/runtime/SlotReader;Landroidx/compose/runtime/MovableContentStateReference;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/16 v16, 0xf

    const/16 v17, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v18, 0x0

    move-object/from16 v1, p0

    move-object/from16 v19, v5

    move-object/from16 v5, v18

    move-object v0, v6

    move-object/from16 v6, v19

    move-object/from16 v19, v7

    move/from16 v7, v16

    move-object v13, v8

    move-object/from16 v8, v17

    :try_start_4
    invoke-static/range {v1 .. v8}, Landroidx/compose/runtime/ComposerImpl;->recomposeMovableContent$default(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/ControlledComposition;Ljava/lang/Integer;Ljava/util/List;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Object;

    .line 3346
    iget-object v1, v9, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {v1, v0, v13}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->includeOperationsIn(Landroidx/compose/runtime/changelist/ChangeList;Landroidx/compose/runtime/internal/IntRef;)V

    .line 3350
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 154
    :try_start_5
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/SlotReader;->close()V

    move-object/from16 v24, v10

    move-object/from16 v19, v11

    move/from16 v17, v12

    move/from16 v20, v14

    goto/16 :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object/from16 v19, v7

    :goto_2
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/SlotReader;->close()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_1
    move-object v13, v8

    .line 3355
    :try_start_6
    iget-object v0, v9, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/CompositionContext;->movableContentStateResolve$runtime_release(Landroidx/compose/runtime/MovableContentStateReference;)Landroidx/compose/runtime/MovableContentState;

    move-result-object v0

    .line 3356
    invoke-virtual {v1}, Landroidx/compose/runtime/MovableContentStateReference;->getSlotTable$runtime_release()Landroidx/compose/runtime/SlotTable;

    move-result-object v4

    .line 3357
    invoke-virtual {v1}, Landroidx/compose/runtime/MovableContentStateReference;->getAnchor$runtime_release()Landroidx/compose/runtime/Anchor;

    move-result-object v6

    .line 3358
    invoke-static {v4, v6}, Landroidx/compose/runtime/ComposerKt;->access$collectNodesFrom(Landroidx/compose/runtime/SlotTable;Landroidx/compose/runtime/Anchor;)Ljava/util/List;

    move-result-object v7

    .line 3361
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_c

    if-nez v8, :cond_2

    .line 3362
    :try_start_7
    iget-object v8, v9, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {v8, v7, v13}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->copyNodesToNewAnchorLocation(Ljava/util/List;Landroidx/compose/runtime/internal/IntRef;)V

    .line 3366
    invoke-virtual {v2}, Landroidx/compose/runtime/MovableContentStateReference;->getSlotTable$runtime_release()Landroidx/compose/runtime/SlotTable;

    move-result-object v8

    iget-object v5, v9, Landroidx/compose/runtime/ComposerImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3371
    iget-object v5, v9, Landroidx/compose/runtime/ComposerImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v5, v3}, Landroidx/compose/runtime/SlotTable;->anchorIndex(Landroidx/compose/runtime/Anchor;)I

    move-result v3

    .line 3372
    invoke-direct {v9, v3}, Landroidx/compose/runtime/ComposerImpl;->updatedNodeCount(I)I

    move-result v5

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/2addr v5, v7

    invoke-direct {v9, v3, v5}, Landroidx/compose/runtime/ComposerImpl;->updateNodeCount(II)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 3377
    :cond_2
    :try_start_8
    iget-object v3, v9, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    .line 3379
    iget-object v5, v9, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    .line 3377
    invoke-virtual {v3, v0, v5, v1, v2}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->copySlotTableToAnchorLocation(Landroidx/compose/runtime/MovableContentState;Landroidx/compose/runtime/CompositionContext;Landroidx/compose/runtime/MovableContentStateReference;Landroidx/compose/runtime/MovableContentStateReference;)V

    .line 150
    invoke-virtual {v4}, Landroidx/compose/runtime/SlotTable;->openReader()Landroidx/compose/runtime/SlotReader;

    move-result-object v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_c

    .line 3422
    :try_start_9
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->getReader$runtime_release()Landroidx/compose/runtime/SlotReader;

    move-result-object v8

    .line 3423
    invoke-static/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->access$getNodeCountOverrides$p(Landroidx/compose/runtime/ComposerImpl;)[I

    move-result-object v5

    .line 3424
    invoke-static/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->access$getProviderUpdates$p(Landroidx/compose/runtime/ComposerImpl;)Landroidx/collection/MutableIntObjectMap;

    move-result-object v3

    const/4 v0, 0x0

    .line 3425
    invoke-static {v9, v0}, Landroidx/compose/runtime/ComposerImpl;->access$setNodeCountOverrides$p(Landroidx/compose/runtime/ComposerImpl;[I)V

    .line 3426
    invoke-static {v9, v0}, Landroidx/compose/runtime/ComposerImpl;->access$setProviderUpdates$p(Landroidx/compose/runtime/ComposerImpl;Landroidx/collection/MutableIntObjectMap;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_b

    .line 3428
    :try_start_a
    invoke-virtual {v9, v7}, Landroidx/compose/runtime/ComposerImpl;->setReader$runtime_release(Landroidx/compose/runtime/SlotReader;)V

    .line 3386
    invoke-virtual {v4, v6}, Landroidx/compose/runtime/SlotTable;->anchorIndex(Landroidx/compose/runtime/Anchor;)I

    move-result v0

    .line 3387
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/SlotReader;->reposition(I)V

    .line 3388
    iget-object v4, v9, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->moveReaderToAbsolute(I)V

    .line 3389
    new-instance v0, Landroidx/compose/runtime/changelist/ChangeList;

    invoke-direct {v0}, Landroidx/compose/runtime/changelist/ChangeList;-><init>()V

    .line 3390
    iget-object v6, v9, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    .line 173
    invoke-virtual {v6}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->getChangeList()Landroidx/compose/runtime/changelist/ChangeList;

    move-result-object v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    .line 175
    :try_start_b
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->setChangeList(Landroidx/compose/runtime/changelist/ChangeList;)V

    move/from16 v17, v12

    .line 3391
    iget-object v12, v9, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    .line 183
    invoke-virtual {v12}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->getImplicitRootStart()Z

    move-result v15
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    move-object/from16 v19, v3

    const/4 v3, 0x0

    .line 185
    :try_start_c
    invoke-virtual {v12, v3}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->setImplicitRootStart(Z)V

    .line 3393
    invoke-virtual {v1}, Landroidx/compose/runtime/MovableContentStateReference;->getComposition$runtime_release()Landroidx/compose/runtime/ControlledComposition;

    move-result-object v3

    .line 3394
    invoke-virtual {v2}, Landroidx/compose/runtime/MovableContentStateReference;->getComposition$runtime_release()Landroidx/compose/runtime/ControlledComposition;

    move-result-object v20

    .line 3395
    invoke-virtual {v7}, Landroidx/compose/runtime/SlotReader;->getCurrentGroup()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    .line 3396
    invoke-virtual {v1}, Landroidx/compose/runtime/MovableContentStateReference;->getInvalidations$runtime_release()Ljava/util/List;

    move-result-object v22

    .line 3392
    new-instance v1, Landroidx/compose/runtime/ComposerImpl$insertMovableContentGuarded$1$1$2$1$1$1$1;

    invoke-direct {v1, v9, v2}, Landroidx/compose/runtime/ComposerImpl$insertMovableContentGuarded$1$1$2$1$1$1$1;-><init>(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/runtime/MovableContentStateReference;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    move-object/from16 v23, v1

    move-object/from16 v1, p0

    move-object v2, v3

    move-object/from16 v24, v10

    move-object/from16 v10, v19

    move-object/from16 v3, v20

    move-object/from16 v19, v11

    move-object v11, v4

    move-object/from16 v4, v21

    move/from16 v20, v14

    move-object v14, v5

    move-object/from16 v5, v22

    move-object/from16 v21, v7

    move-object v7, v6

    move-object/from16 v6, v23

    :try_start_d
    invoke-direct/range {v1 .. v6}, Landroidx/compose/runtime/ComposerImpl;->recomposeMovableContent(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/ControlledComposition;Ljava/lang/Integer;Ljava/util/List;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 188
    :try_start_e
    invoke-virtual {v12, v15}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->setImplicitRootStart(Z)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 178
    :try_start_f
    invoke-virtual {v7, v11}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->setChangeList(Landroidx/compose/runtime/changelist/ChangeList;)V

    .line 3407
    iget-object v1, v9, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {v1, v0, v13}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->includeOperationsIn(Landroidx/compose/runtime/changelist/ChangeList;Landroidx/compose/runtime/internal/IntRef;)V

    .line 3411
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 3431
    :try_start_10
    invoke-virtual {v9, v8}, Landroidx/compose/runtime/ComposerImpl;->setReader$runtime_release(Landroidx/compose/runtime/SlotReader;)V

    .line 3432
    invoke-static {v9, v14}, Landroidx/compose/runtime/ComposerImpl;->access$setNodeCountOverrides$p(Landroidx/compose/runtime/ComposerImpl;[I)V

    .line 3433
    invoke-static {v9, v10}, Landroidx/compose/runtime/ComposerImpl;->access$setProviderUpdates$p(Landroidx/compose/runtime/ComposerImpl;Landroidx/collection/MutableIntObjectMap;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 154
    :try_start_11
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/SlotReader;->close()V

    .line 3414
    :goto_3
    iget-object v0, v9, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {v0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->skipToEndOfCurrentGroup()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    const/4 v0, 0x1

    add-int/lit8 v14, v20, 0x1

    move/from16 v12, v17

    move-object/from16 v11, v19

    move-object/from16 v10, v24

    const/4 v13, 0x0

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    :goto_4
    move-object/from16 v2, v19

    move-object/from16 v1, v24

    goto/16 :goto_9

    :catchall_4
    move-exception v0

    goto :goto_8

    :catchall_5
    move-exception v0

    goto :goto_7

    :catchall_6
    move-exception v0

    goto :goto_6

    :catchall_7
    move-exception v0

    goto :goto_5

    :catchall_8
    move-exception v0

    move-object v14, v5

    move-object/from16 v21, v7

    move-object/from16 v24, v10

    move-object/from16 v10, v19

    move-object v7, v6

    move-object/from16 v19, v11

    move-object v11, v4

    .line 188
    :goto_5
    :try_start_12
    invoke-virtual {v12, v15}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->setImplicitRootStart(Z)V

    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    :catchall_9
    move-exception v0

    move-object v14, v5

    move-object/from16 v21, v7

    move-object/from16 v24, v10

    move-object/from16 v19, v11

    move-object v10, v3

    move-object v11, v4

    move-object v7, v6

    .line 178
    :goto_6
    :try_start_13
    invoke-virtual {v7, v11}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->setChangeList(Landroidx/compose/runtime/changelist/ChangeList;)V

    throw v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    :catchall_a
    move-exception v0

    move-object v14, v5

    move-object/from16 v21, v7

    move-object/from16 v24, v10

    move-object/from16 v19, v11

    move-object v10, v3

    .line 3431
    :goto_7
    :try_start_14
    invoke-virtual {v9, v8}, Landroidx/compose/runtime/ComposerImpl;->setReader$runtime_release(Landroidx/compose/runtime/SlotReader;)V

    .line 3432
    invoke-static {v9, v14}, Landroidx/compose/runtime/ComposerImpl;->access$setNodeCountOverrides$p(Landroidx/compose/runtime/ComposerImpl;[I)V

    .line 3433
    invoke-static {v9, v10}, Landroidx/compose/runtime/ComposerImpl;->access$setProviderUpdates$p(Landroidx/compose/runtime/ComposerImpl;Landroidx/collection/MutableIntObjectMap;)V

    throw v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    :catchall_b
    move-exception v0

    move-object/from16 v21, v7

    move-object/from16 v24, v10

    move-object/from16 v19, v11

    .line 154
    :goto_8
    :try_start_15
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/SlotReader;->close()V

    throw v0

    :catchall_c
    move-exception v0

    move-object/from16 v24, v10

    move-object/from16 v19, v11

    goto :goto_4

    :cond_3
    move-object/from16 v24, v10

    move-object/from16 v19, v11

    .line 3416
    iget-object v0, v9, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {v0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->endMovableContentPlacement()V

    .line 3417
    iget-object v0, v9, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->moveReaderToAbsolute(I)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    move-object/from16 v2, v19

    move-object/from16 v1, v24

    .line 178
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->setChangeList(Landroidx/compose/runtime/changelist/ChangeList;)V

    return-void

    :goto_9
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->setChangeList(Landroidx/compose/runtime/changelist/ChangeList;)V

    throw v0
.end method

.method private final insertedGroupVirtualIndex(I)I
    .locals 0

    .line 0
    rsub-int/lit8 p0, p1, -0x2

    return p0
.end method

.method private final invokeMovableContentLambda(Landroidx/compose/runtime/MovableContent;Landroidx/compose/runtime/PersistentCompositionLocalMap;Ljava/lang/Object;Z)V
    .locals 11

    const v0, 0x78cc281

    .line 3229
    invoke-virtual {p0, v0, p1}, Landroidx/compose/runtime/ComposerImpl;->startMovableGroup(ILjava/lang/Object;)V

    .line 3230
    invoke-direct {p0, p3}, Landroidx/compose/runtime/ComposerImpl;->updateSlot(Ljava/lang/Object;)V

    .line 3234
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getCompoundKeyHash()I

    move-result v1

    const/4 v2, 0x0

    .line 3237
    :try_start_0
    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    .line 3239
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-static {v0, v3, v4, v2}, Landroidx/compose/runtime/SlotWriter;->markGroup$default(Landroidx/compose/runtime/SlotWriter;IILjava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    .line 3245
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getGroupAux()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v3, v4

    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    .line 3246
    invoke-direct {p0, p2}, Landroidx/compose/runtime/ComposerImpl;->recordProviderUpdate(Landroidx/compose/runtime/PersistentCompositionLocalMap;)V

    .line 3247
    :cond_3
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->getCompositionLocalMap()Ljava/lang/Object;

    move-result-object v0

    sget-object v5, Landroidx/compose/runtime/GroupKind;->Companion:Landroidx/compose/runtime/GroupKind$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/GroupKind$Companion;->getGroup-ULZAiWs()I

    move-result v5

    const/16 v6, 0xca

    invoke-direct {p0, v6, v0, v5, p2}, Landroidx/compose/runtime/ComposerImpl;->start-BaiHCIY(ILjava/lang/Object;ILjava/lang/Object;)V

    .line 3248
    iput-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 3253
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result p2

    if-eqz p2, :cond_4

    if-nez p4, :cond_4

    .line 3254
    iput-boolean v4, p0, Landroidx/compose/runtime/ComposerImpl;->writerHasAProvider:Z

    .line 3257
    iget-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {p2}, Landroidx/compose/runtime/SlotWriter;->getParent()I

    move-result p4

    invoke-virtual {p2, p4}, Landroidx/compose/runtime/SlotWriter;->parent(I)I

    move-result p4

    invoke-virtual {p2, p4}, Landroidx/compose/runtime/SlotWriter;->anchor(I)Landroidx/compose/runtime/Anchor;

    move-result-object v8

    .line 3259
    new-instance p2, Landroidx/compose/runtime/MovableContentStateReference;

    .line 3262
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getComposition()Landroidx/compose/runtime/ControlledComposition;

    move-result-object v6

    .line 3263
    iget-object v7, p0, Landroidx/compose/runtime/ComposerImpl;->insertTable:Landroidx/compose/runtime/SlotTable;

    .line 3265
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v9

    .line 3266
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v10

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    .line 3259
    invoke-direct/range {v3 .. v10}, Landroidx/compose/runtime/MovableContentStateReference;-><init>(Landroidx/compose/runtime/MovableContent;Ljava/lang/Object;Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/SlotTable;Landroidx/compose/runtime/Anchor;Ljava/util/List;Landroidx/compose/runtime/PersistentCompositionLocalMap;)V

    .line 3268
    iget-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {p1, p2}, Landroidx/compose/runtime/CompositionContext;->insertMovableContent$runtime_release(Landroidx/compose/runtime/MovableContentStateReference;)V

    goto :goto_2

    .line 3270
    :cond_4
    iget-boolean p2, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalid:Z

    .line 3271
    iput-boolean v3, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalid:Z

    .line 3272
    new-instance p4, Landroidx/compose/runtime/ComposerImpl$invokeMovableContentLambda$1;

    invoke-direct {p4, p1, p3}, Landroidx/compose/runtime/ComposerImpl$invokeMovableContentLambda$1;-><init>(Landroidx/compose/runtime/MovableContent;Ljava/lang/Object;)V

    const p1, 0x12d6006f

    invoke-static {p1, v4, p4}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/compose/runtime/internal/Utils_jvmKt;->invokeComposable(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function2;)V

    .line 3273
    iput-boolean p2, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalid:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3277
    :goto_2
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->endGroup()V

    .line 3278
    iput-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 3279
    iput v1, p0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    .line 3280
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->endMovableGroup()V

    return-void

    .line 3277
    :goto_3
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->endGroup()V

    .line 3278
    iput-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 3279
    iput v1, p0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    .line 3280
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->endMovableGroup()V

    throw p1
.end method

.method private final nodeAt(Landroidx/compose/runtime/SlotReader;I)Ljava/lang/Object;
    .locals 0

    .line 3611
    invoke-virtual {p1, p2}, Landroidx/compose/runtime/SlotReader;->node(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final nodeIndexOf(IIII)I
    .locals 2

    .line 2849
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0, p2}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    move-result v0

    :goto_0
    if-eq v0, p3, :cond_0

    .line 2851
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/SlotReader;->isNode(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2852
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    move-result v0

    goto :goto_0

    .line 2855
    :cond_0
    iget-object p3, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {p3, v0}, Landroidx/compose/runtime/SlotReader;->isNode(I)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p4, 0x0

    :cond_1
    if-ne v0, p2, :cond_2

    return p4

    .line 2862
    :cond_2
    invoke-direct {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->updatedNodeCount(I)I

    move-result p3

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v1, p2}, Landroidx/compose/runtime/SlotReader;->nodeCount(I)I

    move-result p2

    sub-int/2addr p3, p2

    add-int/2addr p3, p4

    :cond_3
    if-ge p4, p3, :cond_5

    if-eq v0, p1, :cond_5

    add-int/lit8 v0, v0, 0x1

    :goto_1
    if-ge v0, p1, :cond_5

    .line 2867
    iget-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/SlotReader;->groupSize(I)I

    move-result p2

    add-int/2addr p2, v0

    if-lt p1, p2, :cond_3

    .line 2869
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/SlotReader;->isNode(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    invoke-direct {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->updatedNodeCount(I)I

    move-result v0

    :goto_2
    add-int/2addr p4, v0

    move v0, p2

    goto :goto_1

    :cond_5
    return p4
.end method

.method private final rGroupIndexOf(I)I
    .locals 3

    .line 2879
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 2882
    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/SlotReader;->hasObjectKey(I)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 2883
    :cond_0
    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/SlotReader;->groupSize(I)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method private final recomposeMovableContent(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/ControlledComposition;Ljava/lang/Integer;Ljava/util/List;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 6

    .line 3444
    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    .line 3445
    iget v1, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    const/4 v2, 0x1

    .line 3447
    :try_start_0
    iput-boolean v2, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    const/4 v2, 0x0

    .line 3448
    iput v2, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    .line 34
    invoke-interface {p4}, Ljava/util/Collection;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_1

    .line 35
    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 36
    check-cast v4, Lkotlin/Pair;

    .line 3449
    invoke-virtual {v4}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/runtime/RecomposeScopeImpl;

    invoke-virtual {v4}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 3451
    invoke-virtual {p0, v5, v4}, Landroidx/compose/runtime/ComposerImpl;->tryImminentInvalidation$runtime_release(Landroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    const/4 v4, 0x0

    .line 3453
    invoke-virtual {p0, v5, v4}, Landroidx/compose/runtime/ComposerImpl;->tryImminentInvalidation$runtime_release(Landroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    if-eqz p3, :cond_2

    .line 3456
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    goto :goto_2

    :cond_2
    const/4 p3, -0x1

    :goto_2
    invoke-interface {p1, p2, p3, p5}, Landroidx/compose/runtime/ControlledComposition;->delegateInvalidations(Landroidx/compose/runtime/ControlledComposition;ILkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_4

    :cond_3
    invoke-interface {p5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3458
    :cond_4
    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    .line 3459
    iput v1, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    return-object p1

    .line 3458
    :goto_3
    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    .line 3459
    iput v1, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    throw p1
.end method

.method static synthetic recomposeMovableContent$default(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/ControlledComposition;Ljava/lang/Integer;Ljava/util/List;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7

    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    move-object v3, v0

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    move-object v4, v0

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_3

    .line 3441
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p4

    :cond_3
    move-object v5, p4

    move-object v1, p0

    move-object v6, p5

    .line 3437
    invoke-direct/range {v1 .. v6}, Landroidx/compose/runtime/ComposerImpl;->recomposeMovableContent(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/ControlledComposition;Ljava/lang/Integer;Ljava/util/List;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final recomposeToGroupEnd()V
    .locals 14

    .line 2696
    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    const/4 v1, 0x1

    .line 2697
    iput-boolean v1, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    .line 2700
    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v2}, Landroidx/compose/runtime/SlotReader;->getParent()I

    move-result v2

    .line 2701
    iget-object v3, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/SlotReader;->groupSize(I)I

    move-result v3

    add-int/2addr v3, v2

    .line 2702
    iget v4, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    .line 2703
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getCompoundKeyHash()I

    move-result v5

    .line 2704
    iget v6, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    .line 2705
    iget v7, p0, Landroidx/compose/runtime/ComposerImpl;->rGroupIndex:I

    .line 2708
    iget-object v8, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    iget-object v9, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v9}, Landroidx/compose/runtime/SlotReader;->getCurrentGroup()I

    move-result v9

    invoke-static {v8, v9, v3}, Landroidx/compose/runtime/ComposerKt;->access$firstInRange(Ljava/util/List;II)Landroidx/compose/runtime/Invalidation;

    move-result-object v8

    const/4 v9, 0x0

    move v11, v2

    move v10, v9

    :goto_0
    if-eqz v8, :cond_4

    .line 2710
    invoke-virtual {v8}, Landroidx/compose/runtime/Invalidation;->getLocation()I

    move-result v12

    .line 2712
    iget-object v13, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    invoke-static {v13, v12}, Landroidx/compose/runtime/ComposerKt;->access$removeLocation(Ljava/util/List;I)Landroidx/compose/runtime/Invalidation;

    .line 2714
    invoke-virtual {v8}, Landroidx/compose/runtime/Invalidation;->isInvalid()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 2717
    iget-object v10, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v10, v12}, Landroidx/compose/runtime/SlotReader;->reposition(I)V

    .line 2718
    iget-object v10, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v10}, Landroidx/compose/runtime/SlotReader;->getCurrentGroup()I

    move-result v10

    .line 2720
    invoke-direct {p0, v11, v10, v2}, Landroidx/compose/runtime/ComposerImpl;->recordUpsAndDowns(III)V

    .line 2725
    invoke-direct {p0, v12, v10, v2, v4}, Landroidx/compose/runtime/ComposerImpl;->nodeIndexOf(IIII)I

    move-result v11

    iput v11, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    .line 2729
    invoke-direct {p0, v10}, Landroidx/compose/runtime/ComposerImpl;->rGroupIndexOf(I)I

    move-result v11

    iput v11, p0, Landroidx/compose/runtime/ComposerImpl;->rGroupIndex:I

    .line 2733
    iget-object v11, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v11, v10}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    move-result v11

    .line 2735
    invoke-direct {p0, v11}, Landroidx/compose/runtime/ComposerImpl;->rGroupIndexOf(I)I

    move-result v12

    invoke-direct {p0, v11, v12, v2, v5}, Landroidx/compose/runtime/ComposerImpl;->compoundKeyOf(IIII)I

    move-result v11

    .line 2734
    iput v11, p0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    const/4 v11, 0x0

    .line 2738
    iput-object v11, p0, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 2741
    iget-boolean v12, p0, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    if-nez v12, :cond_0

    invoke-virtual {v8}, Landroidx/compose/runtime/Invalidation;->getScope()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v12

    invoke-virtual {v12}, Landroidx/compose/runtime/RecomposeScopeImpl;->getReusing()Z

    move-result v12

    if-eqz v12, :cond_0

    move v12, v1

    goto :goto_1

    :cond_0
    move v12, v9

    :goto_1
    if-eqz v12, :cond_1

    .line 2742
    iput-boolean v1, p0, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    .line 2743
    :cond_1
    invoke-virtual {v8}, Landroidx/compose/runtime/Invalidation;->getScope()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v8

    invoke-virtual {v8, p0}, Landroidx/compose/runtime/RecomposeScopeImpl;->compose(Landroidx/compose/runtime/Composer;)V

    if-eqz v12, :cond_2

    .line 2744
    iput-boolean v9, p0, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    .line 2747
    :cond_2
    iput-object v11, p0, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 2750
    iget-object v8, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/SlotReader;->restoreParent(I)V

    move v11, v10

    move v10, v1

    goto :goto_2

    .line 2755
    :cond_3
    iget-object v12, p0, Landroidx/compose/runtime/ComposerImpl;->invalidateStack:Ljava/util/ArrayList;

    invoke-virtual {v8}, Landroidx/compose/runtime/Invalidation;->getScope()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v13

    invoke-static {v12, v13}, Landroidx/compose/runtime/Stack;->push-impl(Ljava/util/ArrayList;Ljava/lang/Object;)Z

    .line 2756
    invoke-virtual {v8}, Landroidx/compose/runtime/Invalidation;->getScope()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/compose/runtime/RecomposeScopeImpl;->rereadTrackedInstances()V

    .line 2757
    iget-object v8, p0, Landroidx/compose/runtime/ComposerImpl;->invalidateStack:Ljava/util/ArrayList;

    invoke-static {v8}, Landroidx/compose/runtime/Stack;->pop-impl(Ljava/util/ArrayList;)Ljava/lang/Object;

    .line 2766
    :goto_2
    iget-object v8, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    iget-object v12, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v12}, Landroidx/compose/runtime/SlotReader;->getCurrentGroup()I

    move-result v12

    invoke-static {v8, v12, v3}, Landroidx/compose/runtime/ComposerKt;->access$firstInRange(Ljava/util/List;II)Landroidx/compose/runtime/Invalidation;

    move-result-object v8

    goto/16 :goto_0

    :cond_4
    if-eqz v10, :cond_5

    .line 2770
    invoke-direct {p0, v11, v2, v2}, Landroidx/compose/runtime/ComposerImpl;->recordUpsAndDowns(III)V

    .line 2771
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v1}, Landroidx/compose/runtime/SlotReader;->skipToGroupEnd()V

    .line 2772
    invoke-direct {p0, v2}, Landroidx/compose/runtime/ComposerImpl;->updatedNodeCount(I)I

    move-result v1

    add-int/2addr v4, v1

    .line 2773
    iput v4, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    add-int/2addr v6, v1

    .line 2774
    iput v6, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    .line 2775
    iput v7, p0, Landroidx/compose/runtime/ComposerImpl;->rGroupIndex:I

    goto :goto_3

    .line 2778
    :cond_5
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->skipReaderToGroupEnd()V

    .line 2783
    :goto_3
    iput v5, p0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    .line 2785
    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    return-void
.end method

.method private final recordDelete()V
    .locals 1

    .line 3636
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getCurrentGroup()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->reportFreeMovableContent(I)V

    .line 3637
    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {p0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->removeCurrentGroup()V

    return-void
.end method

.method private final recordInsert(Landroidx/compose/runtime/Anchor;)V
    .locals 3

    .line 3625
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->insertFixups:Landroidx/compose/runtime/changelist/FixupList;

    invoke-virtual {v0}, Landroidx/compose/runtime/changelist/FixupList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3626
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->insertTable:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v0, p1, p0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->insertSlots(Landroidx/compose/runtime/Anchor;Landroidx/compose/runtime/SlotTable;)V

    goto :goto_0

    .line 3628
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->insertTable:Landroidx/compose/runtime/SlotTable;

    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->insertFixups:Landroidx/compose/runtime/changelist/FixupList;

    invoke-virtual {v0, p1, v1, v2}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->insertSlots(Landroidx/compose/runtime/Anchor;Landroidx/compose/runtime/SlotTable;Landroidx/compose/runtime/changelist/FixupList;)V

    .line 3629
    new-instance p1, Landroidx/compose/runtime/changelist/FixupList;

    invoke-direct {p1}, Landroidx/compose/runtime/changelist/FixupList;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->insertFixups:Landroidx/compose/runtime/changelist/FixupList;

    :goto_0
    return-void
.end method

.method private final recordProviderUpdate(Landroidx/compose/runtime/PersistentCompositionLocalMap;)V
    .locals 4

    .line 2225
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->providerUpdates:Landroidx/collection/MutableIntObjectMap;

    if-nez v0, :cond_0

    .line 2227
    new-instance v0, Landroidx/collection/MutableIntObjectMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableIntObjectMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 2228
    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->providerUpdates:Landroidx/collection/MutableIntObjectMap;

    .line 2231
    :cond_0
    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {p0}, Landroidx/compose/runtime/SlotReader;->getCurrentGroup()I

    move-result p0

    invoke-virtual {v0, p0, p1}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    return-void
.end method

.method private final recordUpsAndDowns(III)V
    .locals 2

    .line 2934
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 2935
    invoke-static {v0, p1, p2, p3}, Landroidx/compose/runtime/ComposerKt;->access$nearestCommonRootOf(Landroidx/compose/runtime/SlotReader;III)I

    move-result p3

    :goto_0
    if-lez p1, :cond_1

    if-eq p1, p3, :cond_1

    .line 2940
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SlotReader;->isNode(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {v1}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->moveUp()V

    .line 2941
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    move-result p1

    goto :goto_0

    .line 2945
    :cond_1
    invoke-direct {p0, p2, p3}, Landroidx/compose/runtime/ComposerImpl;->doRecordDownsFor(II)V

    return-void
.end method

.method private final rememberObserverAnchor()Landroidx/compose/runtime/Anchor;
    .locals 4

    .line 2089
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2090
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->isAfterFirstChild(Landroidx/compose/runtime/SlotWriter;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2091
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotWriter;->getCurrentGroup()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 2092
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/SlotWriter;->parent(I)I

    move-result v1

    :goto_0
    move v3, v1

    move v1, v0

    move v0, v3

    .line 2093
    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v2}, Landroidx/compose/runtime/SlotWriter;->getParent()I

    move-result v2

    if-eq v0, v2, :cond_0

    if-ltz v0, :cond_0

    .line 2095
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/SlotWriter;->parent(I)I

    move-result v1

    goto :goto_0

    .line 2097
    :cond_0
    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {p0, v1}, Landroidx/compose/runtime/SlotWriter;->anchor(I)Landroidx/compose/runtime/Anchor;

    move-result-object v1

    goto :goto_2

    .line 2100
    :cond_1
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->isAfterFirstChild(Landroidx/compose/runtime/SlotReader;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2101
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getCurrentGroup()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 2102
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    move-result v1

    :goto_1
    move v3, v1

    move v1, v0

    move v0, v3

    .line 2103
    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v2}, Landroidx/compose/runtime/SlotReader;->getParent()I

    move-result v2

    if-eq v0, v2, :cond_2

    if-ltz v0, :cond_2

    .line 2105
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    move-result v1

    goto :goto_1

    .line 2107
    :cond_2
    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {p0, v1}, Landroidx/compose/runtime/SlotReader;->anchor(I)Landroidx/compose/runtime/Anchor;

    move-result-object v1

    :cond_3
    :goto_2
    return-object v1
.end method

.method private final reportAllMovableContent()V
    .locals 4

    .line 3761
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->containsMark()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3762
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getComposition()Landroidx/compose/runtime/ControlledComposition;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type androidx.compose.runtime.CompositionImpl"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/runtime/CompositionImpl;

    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionImpl;->updateMovingInvalidations$runtime_release()V

    .line 3763
    new-instance v0, Landroidx/compose/runtime/changelist/ChangeList;

    invoke-direct {v0}, Landroidx/compose/runtime/changelist/ChangeList;-><init>()V

    .line 3764
    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->deferredChanges:Landroidx/compose/runtime/changelist/ChangeList;

    .line 3765
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    .line 150
    invoke-virtual {v1}, Landroidx/compose/runtime/SlotTable;->openReader()Landroidx/compose/runtime/SlotReader;

    move-result-object v1

    .line 3766
    :try_start_0
    iput-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 3767
    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    .line 173
    invoke-virtual {v2}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->getChangeList()Landroidx/compose/runtime/changelist/ChangeList;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    :try_start_1
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->setChangeList(Landroidx/compose/runtime/changelist/ChangeList;)V

    const/4 v0, 0x0

    .line 3768
    invoke-direct {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->reportFreeMovableContent(I)V

    .line 3769
    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {p0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->releaseMovableContent()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 178
    :try_start_2
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->setChangeList(Landroidx/compose/runtime/changelist/ChangeList;)V

    .line 3771
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 154
    invoke-virtual {v1}, Landroidx/compose/runtime/SlotReader;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    .line 178
    :try_start_3
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->setChangeList(Landroidx/compose/runtime/changelist/ChangeList;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 154
    :goto_0
    invoke-virtual {v1}, Landroidx/compose/runtime/SlotReader;->close()V

    throw p0

    :cond_0
    :goto_1
    return-void
.end method

.method private final reportFreeMovableContent(I)V
    .locals 1

    const/4 v0, 0x0

    .line 3752
    invoke-static {p0, p1, v0, v0}, Landroidx/compose/runtime/ComposerImpl;->reportFreeMovableContent$reportGroup(Landroidx/compose/runtime/ComposerImpl;IZI)I

    .line 3753
    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {p0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->endNodeMovement()V

    return-void
.end method

.method private static final reportFreeMovableContent$reportGroup(Landroidx/compose/runtime/ComposerImpl;IZI)I
    .locals 9

    .line 3653
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 3654
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SlotReader;->hasMark(I)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    .line 3657
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SlotReader;->groupKey(I)I

    move-result p2

    .line 3658
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SlotReader;->groupObjectKey(I)Ljava/lang/Object;

    move-result-object p3

    const/16 v1, 0xce

    if-ne p2, v1, :cond_2

    .line 3695
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->getReference()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 3699
    invoke-virtual {v0, p1, v2}, Landroidx/compose/runtime/SlotReader;->groupGet(II)Ljava/lang/Object;

    move-result-object p2

    instance-of p3, p2, Landroidx/compose/runtime/ComposerImpl$CompositionContextHolder;

    if-eqz p3, :cond_0

    check-cast p2, Landroidx/compose/runtime/ComposerImpl$CompositionContextHolder;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 3705
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl$CompositionContextHolder;->getRef()Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;

    move-result-object p2

    .line 3706
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;->getComposers()Ljava/util/Set;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    .line 1855
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/compose/runtime/ComposerImpl;

    .line 3707
    invoke-direct {p3}, Landroidx/compose/runtime/ComposerImpl;->reportAllMovableContent()V

    .line 3711
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->getComposition()Landroidx/compose/runtime/ControlledComposition;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroidx/compose/runtime/CompositionContext;->reportRemovedComposition$runtime_release(Landroidx/compose/runtime/ControlledComposition;)V

    goto :goto_1

    .line 3714
    :cond_1
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SlotReader;->nodeCount(I)I

    move-result v3

    goto/16 :goto_6

    .line 3715
    :cond_2
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SlotReader;->isNode(I)Z

    move-result p0

    if-eqz p0, :cond_3

    goto/16 :goto_6

    :cond_3
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SlotReader;->nodeCount(I)I

    move-result v3

    goto/16 :goto_6

    .line 3716
    :cond_4
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SlotReader;->containsMark(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 3720
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SlotReader;->groupSize(I)I

    move-result v1

    add-int/2addr v1, p1

    add-int/lit8 v4, p1, 0x1

    move v5, v2

    :goto_2
    if-ge v4, v1, :cond_a

    .line 3732
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/SlotReader;->isNode(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 3734
    iget-object v7, p0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {v7}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->endNodeMovement()V

    .line 3735
    iget-object v7, p0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/SlotReader;->node(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->moveDown(Ljava/lang/Object;)V

    :cond_5
    if-nez v6, :cond_7

    if-eqz p2, :cond_6

    goto :goto_3

    :cond_6
    move v7, v2

    goto :goto_4

    :cond_7
    :goto_3
    move v7, v3

    :goto_4
    if-eqz v6, :cond_8

    move v8, v2

    goto :goto_5

    :cond_8
    add-int v8, p3, v5

    .line 3738
    :goto_5
    invoke-static {p0, v4, v7, v8}, Landroidx/compose/runtime/ComposerImpl;->reportFreeMovableContent$reportGroup(Landroidx/compose/runtime/ComposerImpl;IZI)I

    move-result v7

    add-int/2addr v5, v7

    if-eqz v6, :cond_9

    .line 3744
    iget-object v6, p0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {v6}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->endNodeMovement()V

    .line 3745
    iget-object v6, p0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {v6}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->moveUp()V

    .line 3747
    :cond_9
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/SlotReader;->groupSize(I)I

    move-result v6

    add-int/2addr v4, v6

    goto :goto_2

    .line 3749
    :cond_a
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SlotReader;->isNode(I)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_6

    :cond_b
    move v3, v5

    goto :goto_6

    .line 3750
    :cond_c
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SlotReader;->isNode(I)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_6

    :cond_d
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SlotReader;->nodeCount(I)I

    move-result v3

    :goto_6
    return v3
.end method

.method private final skipGroup()V
    .locals 2

    .line 1718
    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v1}, Landroidx/compose/runtime/SlotReader;->skipGroup()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    return-void
.end method

.method private final skipReaderToGroupEnd()V
    .locals 1

    .line 3051
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getParentNodes()I

    move-result v0

    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    .line 3052
    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {p0}, Landroidx/compose/runtime/SlotReader;->skipToGroupEnd()V

    return-void
.end method

.method private final start-BaiHCIY(ILjava/lang/Object;ILjava/lang/Object;)V
    .locals 13

    move-object v0, p0

    move v2, p1

    move-object v1, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    .line 2375
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->validateNodeNotExpected()V

    .line 2377
    iget v5, v0, Landroidx/compose/runtime/ComposerImpl;->rGroupIndex:I

    const/4 v6, 0x3

    if-nez v1, :cond_1

    if-eqz v4, :cond_0

    const/16 v7, 0xcf

    if-ne v2, v7, :cond_0

    .line 3970
    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 3971
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->hashCode()I

    move-result v7

    .line 3979
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getCompoundKeyHash()I

    move-result v8

    .line 27
    invoke-static {v8, v6}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v8

    xor-int/2addr v7, v8

    invoke-static {v7, v6}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v6

    xor-int/2addr v5, v6

    .line 3979
    iput v5, v0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    goto :goto_2

    .line 3979
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getCompoundKeyHash()I

    move-result v7

    .line 27
    invoke-static {v7, v6}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v7

    xor-int/2addr v7, v2

    invoke-static {v7, v6}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v6

    xor-int/2addr v5, v6

    .line 3979
    :goto_0
    iput v5, v0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    goto :goto_2

    .line 3973
    :cond_1
    instance-of v5, v1, Ljava/lang/Enum;

    if-eqz v5, :cond_2

    move-object v5, v1

    check-cast v5, Ljava/lang/Enum;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    .line 3979
    :goto_1
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getCompoundKeyHash()I

    move-result v7

    .line 27
    invoke-static {v7, v6}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v7

    xor-int/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v5

    goto :goto_0

    .line 3974
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v5

    goto :goto_1

    :goto_2
    const/4 v5, 0x1

    if-nez v1, :cond_3

    .line 2379
    iget v6, v0, Landroidx/compose/runtime/ComposerImpl;->rGroupIndex:I

    add-int/2addr v6, v5

    iput v6, v0, Landroidx/compose/runtime/ComposerImpl;->rGroupIndex:I

    .line 4460
    :cond_3
    sget-object v6, Landroidx/compose/runtime/GroupKind;->Companion:Landroidx/compose/runtime/GroupKind$Companion;

    invoke-virtual {v6}, Landroidx/compose/runtime/GroupKind$Companion;->getGroup-ULZAiWs()I

    move-result v7

    const/4 v8, 0x0

    if-eq v3, v7, :cond_4

    move v7, v5

    goto :goto_3

    :cond_4
    move v7, v8

    .line 2384
    :goto_3
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v9

    const/4 v10, -0x1

    const/4 v11, 0x0

    if-eqz v9, :cond_a

    .line 2385
    iget-object v3, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v3}, Landroidx/compose/runtime/SlotReader;->beginEmpty()V

    .line 2386
    iget-object v3, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v3}, Landroidx/compose/runtime/SlotWriter;->getCurrentGroup()I

    move-result v3

    if-eqz v7, :cond_5

    .line 2388
    iget-object v1, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, p1, v4}, Landroidx/compose/runtime/SlotWriter;->startNode(ILjava/lang/Object;)V

    goto :goto_4

    :cond_5
    if-eqz v4, :cond_7

    .line 2389
    iget-object v5, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    if-nez v1, :cond_6

    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    :cond_6
    invoke-virtual {v5, p1, v1, v4}, Landroidx/compose/runtime/SlotWriter;->startData(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    .line 2390
    :cond_7
    iget-object v4, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    if-nez v1, :cond_8

    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    :cond_8
    invoke-virtual {v4, p1, v1}, Landroidx/compose/runtime/SlotWriter;->startGroup(ILjava/lang/Object;)V

    .line 2392
    :goto_4
    iget-object v8, v0, Landroidx/compose/runtime/ComposerImpl;->pending:Landroidx/compose/runtime/Pending;

    if-eqz v8, :cond_9

    .line 2394
    new-instance v9, Landroidx/compose/runtime/KeyInfo;

    .line 2396
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 2397
    invoke-direct {p0, v3}, Landroidx/compose/runtime/ComposerImpl;->insertedGroupVirtualIndex(I)I

    move-result v5

    const/4 v6, -0x1

    const/4 v10, 0x0

    move-object v1, v9

    move v2, p1

    move-object v3, v4

    move v4, v5

    move v5, v6

    move v6, v10

    .line 2394
    invoke-direct/range {v1 .. v6}, Landroidx/compose/runtime/KeyInfo;-><init>(ILjava/lang/Object;III)V

    .line 2401
    iget v1, v0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    invoke-virtual {v8}, Landroidx/compose/runtime/Pending;->getStartIndex()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v8, v9, v1}, Landroidx/compose/runtime/Pending;->registerInsert(Landroidx/compose/runtime/KeyInfo;I)V

    .line 2402
    invoke-virtual {v8, v9}, Landroidx/compose/runtime/Pending;->recordUsed(Landroidx/compose/runtime/KeyInfo;)Z

    .line 2404
    :cond_9
    invoke-direct {p0, v7, v11}, Landroidx/compose/runtime/ComposerImpl;->enterGroup(ZLandroidx/compose/runtime/Pending;)V

    return-void

    .line 4463
    :cond_a
    invoke-virtual {v6}, Landroidx/compose/runtime/GroupKind$Companion;->getNode-ULZAiWs()I

    move-result v6

    if-eq v3, v6, :cond_b

    goto :goto_5

    .line 2408
    :cond_b
    iget-boolean v3, v0, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    if-eqz v3, :cond_c

    move v3, v5

    goto :goto_6

    :cond_c
    :goto_5
    move v3, v8

    .line 2409
    :goto_6
    iget-object v6, v0, Landroidx/compose/runtime/ComposerImpl;->pending:Landroidx/compose/runtime/Pending;

    if-nez v6, :cond_e

    .line 2410
    iget-object v6, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v6}, Landroidx/compose/runtime/SlotReader;->getGroupKey()I

    move-result v6

    if-nez v3, :cond_d

    if-ne v6, v2, :cond_d

    .line 2411
    iget-object v6, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v6}, Landroidx/compose/runtime/SlotReader;->getGroupObjectKey()Ljava/lang/Object;

    move-result-object v6

    invoke-static {p2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 2413
    invoke-direct {p0, v7, v4}, Landroidx/compose/runtime/ComposerImpl;->startReaderGroup(ZLjava/lang/Object;)V

    goto :goto_7

    .line 2415
    :cond_d
    new-instance v6, Landroidx/compose/runtime/Pending;

    iget-object v9, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v9}, Landroidx/compose/runtime/SlotReader;->extractKeys()Ljava/util/List;

    move-result-object v9

    iget v12, v0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    invoke-direct {v6, v9, v12}, Landroidx/compose/runtime/Pending;-><init>(Ljava/util/List;I)V

    iput-object v6, v0, Landroidx/compose/runtime/ComposerImpl;->pending:Landroidx/compose/runtime/Pending;

    .line 2419
    :cond_e
    :goto_7
    iget-object v9, v0, Landroidx/compose/runtime/ComposerImpl;->pending:Landroidx/compose/runtime/Pending;

    if-eqz v9, :cond_16

    .line 2423
    invoke-virtual {v9, p1, p2}, Landroidx/compose/runtime/Pending;->getNext(ILjava/lang/Object;)Landroidx/compose/runtime/KeyInfo;

    move-result-object v6

    if-nez v3, :cond_10

    if-eqz v6, :cond_10

    .line 2426
    invoke-virtual {v9, v6}, Landroidx/compose/runtime/Pending;->recordUsed(Landroidx/compose/runtime/KeyInfo;)Z

    .line 2431
    invoke-virtual {v6}, Landroidx/compose/runtime/KeyInfo;->getLocation()I

    move-result v1

    .line 2435
    invoke-virtual {v9, v6}, Landroidx/compose/runtime/Pending;->nodePositionOf(Landroidx/compose/runtime/KeyInfo;)I

    move-result v2

    invoke-virtual {v9}, Landroidx/compose/runtime/Pending;->getStartIndex()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    .line 2438
    invoke-virtual {v9, v6}, Landroidx/compose/runtime/Pending;->slotPositionOf(Landroidx/compose/runtime/KeyInfo;)I

    move-result v2

    .line 2439
    invoke-virtual {v9}, Landroidx/compose/runtime/Pending;->getGroupIndex()I

    move-result v3

    sub-int v3, v2, v3

    .line 2440
    invoke-virtual {v9}, Landroidx/compose/runtime/Pending;->getGroupIndex()I

    move-result v5

    invoke-virtual {v9, v2, v5}, Landroidx/compose/runtime/Pending;->registerMoveSlot(II)V

    .line 2441
    iget-object v2, v0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->moveReaderRelativeTo(I)V

    .line 2442
    iget-object v2, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/SlotReader;->reposition(I)V

    if-lez v3, :cond_f

    .line 2445
    iget-object v1, v0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {v1, v3}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->moveCurrentGroup(I)V

    .line 2447
    :cond_f
    invoke-direct {p0, v7, v4}, Landroidx/compose/runtime/ComposerImpl;->startReaderGroup(ZLjava/lang/Object;)V

    goto/16 :goto_a

    .line 2452
    :cond_10
    iget-object v3, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v3}, Landroidx/compose/runtime/SlotReader;->beginEmpty()V

    .line 2453
    iput-boolean v5, v0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    .line 2454
    iput-object v11, v0, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 2455
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->ensureWriter()V

    .line 2456
    iget-object v3, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v3}, Landroidx/compose/runtime/SlotWriter;->beginInsert()V

    .line 2457
    iget-object v3, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v3}, Landroidx/compose/runtime/SlotWriter;->getCurrentGroup()I

    move-result v3

    if-eqz v7, :cond_11

    .line 2459
    iget-object v1, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, p1, v4}, Landroidx/compose/runtime/SlotWriter;->startNode(ILjava/lang/Object;)V

    goto :goto_8

    :cond_11
    if-eqz v4, :cond_13

    .line 2460
    iget-object v5, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    if-nez v1, :cond_12

    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    :cond_12
    invoke-virtual {v5, p1, v1, v4}, Landroidx/compose/runtime/SlotWriter;->startData(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8

    .line 2461
    :cond_13
    iget-object v4, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    if-nez v1, :cond_14

    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    :cond_14
    invoke-virtual {v4, p1, v1}, Landroidx/compose/runtime/SlotWriter;->startGroup(ILjava/lang/Object;)V

    .line 2463
    :goto_8
    iget-object v1, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v1, v3}, Landroidx/compose/runtime/SlotWriter;->anchor(I)Landroidx/compose/runtime/Anchor;

    move-result-object v1

    iput-object v1, v0, Landroidx/compose/runtime/ComposerImpl;->insertAnchor:Landroidx/compose/runtime/Anchor;

    .line 2465
    new-instance v11, Landroidx/compose/runtime/KeyInfo;

    .line 2467
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 2468
    invoke-direct {p0, v3}, Landroidx/compose/runtime/ComposerImpl;->insertedGroupVirtualIndex(I)I

    move-result v5

    const/4 v6, -0x1

    const/4 v10, 0x0

    move-object v1, v11

    move v2, p1

    move-object v3, v4

    move v4, v5

    move v5, v6

    move v6, v10

    .line 2465
    invoke-direct/range {v1 .. v6}, Landroidx/compose/runtime/KeyInfo;-><init>(ILjava/lang/Object;III)V

    .line 2472
    iget v1, v0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    invoke-virtual {v9}, Landroidx/compose/runtime/Pending;->getStartIndex()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v9, v11, v1}, Landroidx/compose/runtime/Pending;->registerInsert(Landroidx/compose/runtime/KeyInfo;I)V

    .line 2473
    invoke-virtual {v9, v11}, Landroidx/compose/runtime/Pending;->recordUsed(Landroidx/compose/runtime/KeyInfo;)Z

    .line 2474
    new-instance v11, Landroidx/compose/runtime/Pending;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v7, :cond_15

    goto :goto_9

    :cond_15
    iget v8, v0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    :goto_9
    invoke-direct {v11, v1, v8}, Landroidx/compose/runtime/Pending;-><init>(Ljava/util/List;I)V

    .line 2478
    :cond_16
    :goto_a
    invoke-direct {p0, v7, v11}, Landroidx/compose/runtime/ComposerImpl;->enterGroup(ZLandroidx/compose/runtime/Pending;)V

    return-void
.end method

.method private final startGroup(I)V
    .locals 2

    .line 1709
    sget-object v0, Landroidx/compose/runtime/GroupKind;->Companion:Landroidx/compose/runtime/GroupKind$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/GroupKind$Companion;->getGroup-ULZAiWs()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, v1}, Landroidx/compose/runtime/ComposerImpl;->start-BaiHCIY(ILjava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method private final startGroup(ILjava/lang/Object;)V
    .locals 2

    .line 1711
    sget-object v0, Landroidx/compose/runtime/GroupKind;->Companion:Landroidx/compose/runtime/GroupKind$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/GroupKind$Companion;->getGroup-ULZAiWs()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/compose/runtime/ComposerImpl;->start-BaiHCIY(ILjava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method private final startReaderGroup(ZLjava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 2365
    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {p0}, Landroidx/compose/runtime/SlotReader;->startNode()V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 2367
    iget-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {p1}, Landroidx/compose/runtime/SlotReader;->getGroupAux()Ljava/lang/Object;

    move-result-object p1

    if-eq p1, p2, :cond_1

    .line 2368
    iget-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {p1, p2}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->updateAuxData(Ljava/lang/Object;)V

    .line 2370
    :cond_1
    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {p0}, Landroidx/compose/runtime/SlotReader;->startGroup()V

    :goto_0
    return-void
.end method

.method private final startRoot()V
    .locals 2

    const/4 v0, 0x0

    .line 1555
    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->rGroupIndex:I

    .line 1556
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->openReader()Landroidx/compose/runtime/SlotReader;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    const/16 v0, 0x64

    .line 1557
    invoke-direct {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->startGroup(I)V

    .line 1560
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionContext;->startComposing$runtime_release()V

    .line 1561
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionContext;->getCompositionLocalScope$runtime_release()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->parentProvider:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 1562
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalidStack:Landroidx/compose/runtime/IntStack;

    iget-boolean v1, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalid:Z

    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->access$asInt(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/IntStack;->push(I)V

    .line 1563
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->parentProvider:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalid:Z

    const/4 v0, 0x0

    .line 1564
    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 1567
    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->forceRecomposeScopes:Z

    if-nez v0, :cond_0

    .line 1568
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionContext;->getCollectingParameterInformation$runtime_release()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->forceRecomposeScopes:Z

    .line 1572
    :cond_0
    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->sourceMarkersEnabled:Z

    if-nez v0, :cond_1

    .line 1573
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionContext;->getCollectingSourceInformation$runtime_release()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->sourceMarkersEnabled:Z

    .line 1576
    :cond_1
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->parentProvider:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    invoke-static {}, Landroidx/compose/runtime/tooling/InspectionTablesKt;->getLocalInspectionTables()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/runtime/CompositionLocalMapKt;->read(Landroidx/compose/runtime/PersistentCompositionLocalMap;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_2

    .line 1577
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1578
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/CompositionContext;->recordInspectionTable$runtime_release(Ljava/util/Set;)V

    .line 1580
    :cond_2
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionContext;->getCompoundHashKey$runtime_release()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->startGroup(I)V

    return-void
.end method

.method private final updateNodeCount(II)V
    .locals 7

    .line 2900
    invoke-direct {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updatedNodeCount(I)I

    move-result v0

    if-eq v0, p2, :cond_3

    if-gez p1, :cond_1

    .line 2903
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeCountVirtualOverrides:Landroidx/collection/MutableIntIntMap;

    if-nez v0, :cond_0

    .line 2905
    new-instance v0, Landroidx/collection/MutableIntIntMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableIntIntMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 2906
    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeCountVirtualOverrides:Landroidx/collection/MutableIntIntMap;

    .line 2909
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroidx/collection/MutableIntIntMap;->set(II)V

    goto :goto_0

    .line 2912
    :cond_1
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeCountOverrides:[I

    if-nez v0, :cond_2

    .line 2914
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getSize()I

    move-result v0

    new-array v0, v0, [I

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v0

    .line 2915
    invoke-static/range {v1 .. v6}, Lkotlin/collections/ArraysKt;->fill$default([IIIIILjava/lang/Object;)V

    .line 2916
    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeCountOverrides:[I

    .line 2919
    :cond_2
    aput p2, v0, p1

    :cond_3
    :goto_0
    return-void
.end method

.method private final updateNodeCountOverrides(II)V
    .locals 5

    .line 2809
    invoke-direct {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updatedNodeCount(I)I

    move-result v0

    if-eq v0, p2, :cond_3

    sub-int/2addr p2, v0

    .line 2815
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->pendingStack:Ljava/util/ArrayList;

    invoke-static {v0}, Landroidx/compose/runtime/Stack;->getSize-impl(Ljava/util/ArrayList;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    const/4 v1, -0x1

    if-eq p1, v1, :cond_3

    .line 2817
    invoke-direct {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updatedNodeCount(I)I

    move-result v2

    add-int/2addr v2, p2

    .line 2818
    invoke-direct {p0, p1, v2}, Landroidx/compose/runtime/ComposerImpl;->updateNodeCount(II)V

    move v3, v0

    :goto_1
    if-ge v1, v3, :cond_1

    .line 2820
    iget-object v4, p0, Landroidx/compose/runtime/ComposerImpl;->pendingStack:Ljava/util/ArrayList;

    invoke-static {v4, v3}, Landroidx/compose/runtime/Stack;->peek-impl(Ljava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/runtime/Pending;

    if-eqz v4, :cond_0

    .line 2821
    invoke-virtual {v4, p1, v2}, Landroidx/compose/runtime/Pending;->updateNodeCount(II)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, -0x1

    move v0, v3

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-gez p1, :cond_2

    .line 2828
    iget-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {p1}, Landroidx/compose/runtime/SlotReader;->getParent()I

    move-result p1

    goto :goto_0

    .line 2830
    :cond_2
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v1, p1}, Landroidx/compose/runtime/SlotReader;->isNode(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2831
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v1, p1}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    move-result p1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private final updateProviderMapGroup(Landroidx/compose/runtime/PersistentCompositionLocalMap;Landroidx/compose/runtime/PersistentCompositionLocalMap;)Landroidx/compose/runtime/PersistentCompositionLocalMap;
    .locals 2

    .line 80
    invoke-interface {p1}, Landroidx/compose/runtime/PersistentCompositionLocalMap;->builder()Landroidx/compose/runtime/PersistentCompositionLocalMap$Builder;

    move-result-object p1

    .line 2174
    invoke-interface {p1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 80
    invoke-interface {p1}, Landroidx/compose/runtime/PersistentCompositionLocalMap$Builder;->build()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object p1

    const/16 v0, 0xcc

    .line 2175
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->getProviderMaps()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroidx/compose/runtime/ComposerImpl;->startGroup(ILjava/lang/Object;)V

    .line 2176
    invoke-direct {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updateSlot(Ljava/lang/Object;)V

    .line 2177
    invoke-direct {p0, p2}, Landroidx/compose/runtime/ComposerImpl;->updateSlot(Ljava/lang/Object;)V

    .line 2178
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->endGroup()V

    return-object p1
.end method

.method private final updateSlot(Ljava/lang/Object;)V
    .locals 0

    .line 2022
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->nextSlot()Ljava/lang/Object;

    .line 2023
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updateValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final updatedNodeCount(I)I
    .locals 2

    if-gez p1, :cond_1

    .line 2890
    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeCountVirtualOverrides:Landroidx/collection/MutableIntIntMap;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/collection/IntIntMap;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Landroidx/collection/IntIntMap;->get(I)I

    move-result v0

    :cond_0
    return v0

    .line 2891
    :cond_1
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeCountOverrides:[I

    if-eqz v0, :cond_2

    .line 2893
    aget v0, v0, p1

    if-ltz v0, :cond_2

    return v0

    .line 2896
    :cond_2
    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotReader;->nodeCount(I)I

    move-result p0

    return p0
.end method

.method private final validateNodeExpected()V
    .locals 1

    .line 3614
    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeExpected:Z

    if-nez v0, :cond_0

    .line 3615
    const-string v0, "A call to createNode(), emitNode() or useNode() expected was not expected"

    .line 4531
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 3617
    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeExpected:Z

    return-void
.end method

.method private final validateNodeNotExpected()V
    .locals 0

    .line 3621
    iget-boolean p0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeExpected:Z

    if-eqz p0, :cond_0

    const-string p0, "A call to createNode(), emitNode() or useNode() expected"

    .line 4531
    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V
    .locals 1

    .line 1846
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1847
    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->insertFixups:Landroidx/compose/runtime/changelist/FixupList;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/changelist/FixupList;->updateNode(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    goto :goto_0

    .line 1849
    :cond_0
    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->updateNode(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    :goto_0
    return-void
.end method

.method public buildContext()Landroidx/compose/runtime/CompositionContext;
    .locals 9

    const/16 v0, 0xce

    .line 2300
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->getReference()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroidx/compose/runtime/ComposerImpl;->startGroup(ILjava/lang/Object;)V

    .line 2301
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Landroidx/compose/runtime/SlotWriter;->markGroup$default(Landroidx/compose/runtime/SlotWriter;IILjava/lang/Object;)V

    .line 2303
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->nextSlot()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Landroidx/compose/runtime/ComposerImpl$CompositionContextHolder;

    if-eqz v2, :cond_1

    check-cast v0, Landroidx/compose/runtime/ComposerImpl$CompositionContextHolder;

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_4

    .line 2306
    new-instance v0, Landroidx/compose/runtime/ComposerImpl$CompositionContextHolder;

    .line 2307
    new-instance v8, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;

    .line 2308
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getCompoundKeyHash()I

    move-result v4

    .line 2309
    iget-boolean v5, p0, Landroidx/compose/runtime/ComposerImpl;->forceRecomposeScopes:Z

    .line 2310
    iget-boolean v6, p0, Landroidx/compose/runtime/ComposerImpl;->sourceMarkersEnabled:Z

    .line 2311
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getComposition()Landroidx/compose/runtime/ControlledComposition;

    move-result-object v2

    instance-of v3, v2, Landroidx/compose/runtime/CompositionImpl;

    if-eqz v3, :cond_2

    check-cast v2, Landroidx/compose/runtime/CompositionImpl;

    goto :goto_1

    :cond_2
    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroidx/compose/runtime/CompositionImpl;->getObserverHolder$runtime_release()Landroidx/compose/runtime/CompositionObserverHolder;

    move-result-object v1

    :cond_3
    move-object v7, v1

    move-object v2, v8

    move-object v3, p0

    .line 2307
    invoke-direct/range {v2 .. v7}, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;-><init>(Landroidx/compose/runtime/ComposerImpl;IZZLandroidx/compose/runtime/CompositionObserverHolder;)V

    .line 2306
    invoke-direct {v0, v8}, Landroidx/compose/runtime/ComposerImpl$CompositionContextHolder;-><init>(Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;)V

    .line 2314
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->updateValue(Ljava/lang/Object;)V

    .line 2316
    :cond_4
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl$CompositionContextHolder;->getRef()Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;

    move-result-object v1

    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;->updateCompositionLocalScope(Landroidx/compose/runtime/PersistentCompositionLocalMap;)V

    .line 2317
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->endGroup()V

    .line 2319
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl$CompositionContextHolder;->getRef()Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;

    move-result-object p0

    return-object p0
.end method

.method public changed(F)Z
    .locals 2

    .line 1961
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->nextSlot()Ljava/lang/Object;

    move-result-object v0

    .line 1962
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_0

    .line 1963
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    cmpg-float v0, p1, v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1966
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updateValue(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public changed(I)Z
    .locals 2

    .line 1994
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->nextSlot()Ljava/lang/Object;

    move-result-object v0

    .line 1995
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 1996
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1999
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updateValue(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public changed(J)Z
    .locals 2

    .line 1972
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->nextSlot()Ljava/lang/Object;

    move-result-object v0

    .line 1973
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 1974
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1977
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updateValue(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public changed(Ljava/lang/Object;)Z
    .locals 1

    .line 1897
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->nextSlot()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1898
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updateValue(Ljava/lang/Object;)V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public changed(Z)Z
    .locals 2

    .line 1950
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->nextSlot()Ljava/lang/Object;

    move-result-object v0

    .line 1951
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 1952
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1955
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updateValue(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public changedInstance(Ljava/lang/Object;)Z
    .locals 1

    .line 1907
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->nextSlot()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 1908
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updateValue(Ljava/lang/Object;)V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final changesApplied$runtime_release()V
    .locals 1

    const/4 v0, 0x0

    .line 1628
    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->providerUpdates:Landroidx/collection/MutableIntObjectMap;

    return-void
.end method

.method public collectParameterInformation()V
    .locals 1

    const/4 v0, 0x1

    .line 1665
    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->forceRecomposeScopes:Z

    .line 1666
    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->sourceMarkersEnabled:Z

    .line 1667
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->collectSourceInformation()V

    .line 1668
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->insertTable:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->collectSourceInformation()V

    .line 1669
    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->updateToTableMaps()V

    return-void
.end method

.method public final composeContent--ZbOJvo$runtime_release(Landroidx/collection/MutableScatterMap;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    .line 3498
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->changes:Landroidx/compose/runtime/changelist/ChangeList;

    invoke-virtual {v0}, Landroidx/compose/runtime/changelist/ChangeList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Expected applyChanges() to have been called"

    .line 4531
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 3499
    :cond_0
    iput-object p3, p0, Landroidx/compose/runtime/ComposerImpl;->shouldPauseCallback:Lkotlin/jvm/functions/Function0;

    const/4 p3, 0x0

    .line 3501
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/ComposerImpl;->doCompose-aFTiNEg(Landroidx/collection/MutableScatterMap;Lkotlin/jvm/functions/Function2;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3503
    iput-object p3, p0, Landroidx/compose/runtime/ComposerImpl;->shouldPauseCallback:Lkotlin/jvm/functions/Function0;

    return-void

    :catchall_0
    move-exception p1

    iput-object p3, p0, Landroidx/compose/runtime/ComposerImpl;->shouldPauseCallback:Lkotlin/jvm/functions/Function0;

    throw p1
.end method

.method public consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;
    .locals 0

    .line 2294
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object p0

    invoke-static {p0, p1}, Landroidx/compose/runtime/CompositionLocalMapKt;->read(Landroidx/compose/runtime/PersistentCompositionLocalMap;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public createNode(Lkotlin/jvm/functions/Function0;)V
    .locals 3

    .line 1744
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->validateNodeExpected()V

    .line 1745
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "createNode() can only be called when inserting"

    .line 4531
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 1746
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->parentStateStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v0}, Landroidx/compose/runtime/IntStack;->peek()I

    move-result v0

    .line 1747
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v1}, Landroidx/compose/runtime/SlotWriter;->getParent()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/SlotWriter;->anchor(I)Landroidx/compose/runtime/Anchor;

    move-result-object v1

    .line 1748
    iget v2, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    .line 1749
    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->insertFixups:Landroidx/compose/runtime/changelist/FixupList;

    invoke-virtual {p0, p1, v0, v1}, Landroidx/compose/runtime/changelist/FixupList;->createAndInsertNode(Lkotlin/jvm/functions/Function0;ILandroidx/compose/runtime/Anchor;)V

    return-void
.end method

.method public final deactivate$runtime_release()V
    .locals 1

    .line 1683
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->invalidateStack:Ljava/util/ArrayList;

    invoke-static {v0}, Landroidx/compose/runtime/Stack;->clear-impl(Ljava/util/ArrayList;)V

    .line 1684
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1685
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->changes:Landroidx/compose/runtime/changelist/ChangeList;

    invoke-virtual {v0}, Landroidx/compose/runtime/changelist/ChangeList;->clear()V

    const/4 v0, 0x0

    .line 1686
    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->providerUpdates:Landroidx/collection/MutableIntObjectMap;

    return-void
.end method

.method public deactivateToEndGroup(Z)V
    .locals 2

    .line 3109
    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 3110
    const-string v0, "No nodes can be emitted before calling dactivateToEndGroup"

    .line 4531
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 3112
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p1, :cond_2

    .line 3114
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->skipReaderToGroupEnd()V

    return-void

    .line 3117
    :cond_2
    iget-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {p1}, Landroidx/compose/runtime/SlotReader;->getCurrentGroup()I

    move-result p1

    .line 3118
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getCurrentEnd()I

    move-result v0

    .line 3119
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {v1}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->deactivateCurrentGroup()V

    .line 3120
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    invoke-static {v1, p1, v0}, Landroidx/compose/runtime/ComposerKt;->access$removeRange(Ljava/util/List;II)V

    .line 3121
    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {p0}, Landroidx/compose/runtime/SlotReader;->skipToGroupEnd()V

    :cond_3
    return-void
.end method

.method public final dispose$runtime_release()V
    .locals 3

    .line 45
    sget-object v0, Landroidx/compose/runtime/internal/Trace;->INSTANCE:Landroidx/compose/runtime/internal/Trace;

    const-string v1, "Compose:Composer.dispose"

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/internal/Trace;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1675
    :try_start_0
    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {v2, p0}, Landroidx/compose/runtime/CompositionContext;->unregisterComposer$runtime_release(Landroidx/compose/runtime/Composer;)V

    .line 1676
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->deactivate$runtime_release()V

    .line 1677
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v2

    invoke-interface {v2}, Landroidx/compose/runtime/Applier;->clear()V

    const/4 v2, 0x1

    .line 1678
    iput-boolean v2, p0, Landroidx/compose/runtime/ComposerImpl;->isDisposed:Z

    .line 1679
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/internal/Trace;->endSection(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p0

    sget-object v0, Landroidx/compose/runtime/internal/Trace;->INSTANCE:Landroidx/compose/runtime/internal/Trace;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/internal/Trace;->endSection(Ljava/lang/Object;)V

    throw p0
.end method

.method public endDefaults()V
    .locals 1

    .line 1489
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->endGroup()V

    .line 1490
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getCurrentRecomposeScope$runtime_release()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1491
    invoke-virtual {p0}, Landroidx/compose/runtime/RecomposeScopeImpl;->getUsed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1492
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->setDefaultsInScope(Z)V

    :cond_0
    return-void
.end method

.method public endMovableGroup()V
    .locals 0

    .line 1547
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->endGroup()V

    return-void
.end method

.method public endNode()V
    .locals 1

    const/4 v0, 0x1

    .line 1766
    invoke-direct {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-void
.end method

.method public endProvider()V
    .locals 1

    .line 2236
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->endGroup()V

    .line 2237
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->endGroup()V

    .line 2238
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalidStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v0}, Landroidx/compose/runtime/IntStack;->pop()I

    move-result v0

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->access$asBool(I)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalid:Z

    const/4 v0, 0x0

    .line 2239
    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    return-void
.end method

.method public endProviders()V
    .locals 1

    .line 2287
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->endGroup()V

    .line 2288
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->endGroup()V

    .line 2289
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalidStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v0}, Landroidx/compose/runtime/IntStack;->pop()I

    move-result v0

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->access$asBool(I)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalid:Z

    const/4 v0, 0x0

    .line 2290
    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    return-void
.end method

.method public endReplaceGroup()V
    .locals 0

    .line 1470
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->endGroup()V

    return-void
.end method

.method public endReplaceableGroup()V
    .locals 0

    .line 1415
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->endGroup()V

    return-void
.end method

.method public endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;
    .locals 6

    .line 3181
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->invalidateStack:Ljava/util/ArrayList;

    invoke-static {v0}, Landroidx/compose/runtime/Stack;->isNotEmpty-impl(Ljava/util/ArrayList;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->invalidateStack:Ljava/util/ArrayList;

    invoke-static {v0}, Landroidx/compose/runtime/Stack;->pop-impl(Ljava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/RecomposeScopeImpl;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 3183
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/RecomposeScopeImpl;->setRequiresRecompose(Z)V

    .line 3184
    iget v3, p0, Landroidx/compose/runtime/ComposerImpl;->compositionToken:I

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/RecomposeScopeImpl;->end(I)Lkotlin/jvm/functions/Function1;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3185
    iget-object v4, p0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getComposition()Landroidx/compose/runtime/ControlledComposition;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->endCompositionScope(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composition;)V

    .line 3187
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->getResuming()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3188
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/RecomposeScopeImpl;->setResuming(Z)V

    .line 3189
    iget-object v3, p0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->endResumingScope(Landroidx/compose/runtime/RecomposeScopeImpl;)V

    :cond_2
    if-eqz v0, :cond_6

    .line 3193
    invoke-virtual {v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->getSkipped$runtime_release()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->getUsed()Z

    move-result v3

    if-nez v3, :cond_3

    iget-boolean v3, p0, Landroidx/compose/runtime/ComposerImpl;->forceRecomposeScopes:Z

    if-eqz v3, :cond_6

    .line 3194
    :cond_3
    invoke-virtual {v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->getAnchor()Landroidx/compose/runtime/Anchor;

    move-result-object v1

    if-nez v1, :cond_5

    .line 3196
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3197
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v1}, Landroidx/compose/runtime/SlotWriter;->getParent()I

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/compose/runtime/SlotWriter;->anchor(I)Landroidx/compose/runtime/Anchor;

    move-result-object v1

    goto :goto_1

    .line 3199
    :cond_4
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v1}, Landroidx/compose/runtime/SlotReader;->getParent()I

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/compose/runtime/SlotReader;->anchor(I)Landroidx/compose/runtime/Anchor;

    move-result-object v1

    .line 3195
    :goto_1
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/RecomposeScopeImpl;->setAnchor(Landroidx/compose/runtime/Anchor;)V

    .line 3202
    :cond_5
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/RecomposeScopeImpl;->setDefaultsInvalid(Z)V

    move-object v1, v0

    .line 3207
    :cond_6
    invoke-direct {p0, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-object v1
.end method

.method public endReusableGroup()V
    .locals 3

    .line 1780
    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getParent()I

    move-result v0

    iget v2, p0, Landroidx/compose/runtime/ComposerImpl;->reusingGroup:I

    if-ne v0, v2, :cond_0

    const/4 v0, -0x1

    .line 1781
    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->reusingGroup:I

    .line 1782
    iput-boolean v1, p0, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    .line 1784
    :cond_0
    invoke-direct {p0, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-void
.end method

.method public final endReuseFromRoot()V
    .locals 3

    .line 1801
    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->reusingGroup:I

    const/16 v2, 0x64

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 1802
    const-string v0, "Cannot disable reuse from root if it was caused by other groups"

    .line 35
    invoke-static {v0}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :cond_1
    const/4 v0, -0x1

    .line 1804
    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->reusingGroup:I

    .line 1805
    iput-boolean v1, p0, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    return-void
.end method

.method public getApplier()Landroidx/compose/runtime/Applier;
    .locals 0

    .line 1288
    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->applier:Landroidx/compose/runtime/Applier;

    return-object p0
.end method

.method public getApplyCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 0

    .line 1372
    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {p0}, Landroidx/compose/runtime/CompositionContext;->getEffectCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    return-object p0
.end method

.method public final getAreChildrenComposing$runtime_release()Z
    .locals 0

    .line 1346
    iget p0, p0, Landroidx/compose/runtime/ComposerImpl;->childrenComposing:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getComposition()Landroidx/compose/runtime/ControlledComposition;
    .locals 0

    .line 1300
    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->composition:Landroidx/compose/runtime/ControlledComposition;

    return-object p0
.end method

.method public getCompositionData()Landroidx/compose/runtime/tooling/CompositionData;
    .locals 0

    .line 2112
    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    return-object p0
.end method

.method public getCompoundKeyHash()I
    .locals 0

    .line 1656
    iget p0, p0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    return p0
.end method

.method public getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;
    .locals 0

    .line 2127
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object p0

    return-object p0
.end method

.method public final getCurrentRecomposeScope$runtime_release()Landroidx/compose/runtime/RecomposeScopeImpl;
    .locals 1

    .line 2334
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->invalidateStack:Ljava/util/ArrayList;

    .line 2335
    iget p0, p0, Landroidx/compose/runtime/ComposerImpl;->childrenComposing:I

    if-nez p0, :cond_0

    invoke-static {v0}, Landroidx/compose/runtime/Stack;->isNotEmpty-impl(Ljava/util/ArrayList;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Landroidx/compose/runtime/Stack;->peek-impl(Ljava/util/ArrayList;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/runtime/RecomposeScopeImpl;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getDefaultsInvalid()Z
    .locals 2

    .line 1500
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalid:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getCurrentRecomposeScope$runtime_release()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/runtime/RecomposeScopeImpl;->getDefaultsInvalid()Z

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public final getDeferredChanges$runtime_release()Landroidx/compose/runtime/changelist/ChangeList;
    .locals 0

    .line 1362
    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->deferredChanges:Landroidx/compose/runtime/changelist/ChangeList;

    return-object p0
.end method

.method public getInserting()Z
    .locals 0

    .line 1637
    iget-boolean p0, p0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    return p0
.end method

.method public final getReader$runtime_release()Landroidx/compose/runtime/SlotReader;
    .locals 0

    .line 1351
    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    return-object p0
.end method

.method public getRecomposeScope()Landroidx/compose/runtime/RecomposeScope;
    .locals 0

    .line 4012
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getCurrentRecomposeScope$runtime_release()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p0

    return-object p0
.end method

.method public getSkipping()Z
    .locals 1

    .line 1644
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1645
    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    if-nez v0, :cond_0

    .line 1646
    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalid:Z

    if-nez v0, :cond_0

    .line 1647
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getCurrentRecomposeScope$runtime_release()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->getRequiresRecompose()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1648
    iget-boolean p0, p0, Landroidx/compose/runtime/ComposerImpl;->forciblyRecompose:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public insertMovableContentReferences(Ljava/util/List;)V
    .locals 0

    .line 3290
    :try_start_0
    invoke-direct {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->insertMovableContentGuarded(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3294
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->cleanUpCompose()V

    return-void

    :catchall_0
    move-exception p1

    .line 3297
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->abortRoot()V

    throw p1
.end method

.method public final isComposing$runtime_release()Z
    .locals 0

    .line 1339
    iget-boolean p0, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    return p0
.end method

.method public final nextSlot()Ljava/lang/Object;
    .locals 1

    .line 1866
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1867
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->validateNodeNotExpected()V

    .line 1868
    sget-object p0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 1870
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1871
    iget-boolean p0, p0, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    if-eqz p0, :cond_1

    instance-of p0, v0, Landroidx/compose/runtime/ReusableRememberObserver;

    if-nez p0, :cond_1

    sget-object p0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_1
    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public final nextSlotForCache()Ljava/lang/Object;
    .locals 1

    .line 1877
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1878
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->validateNodeNotExpected()V

    .line 1879
    sget-object p0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 1881
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1882
    iget-boolean p0, p0, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    if-eqz p0, :cond_1

    instance-of p0, v0, Landroidx/compose/runtime/ReusableRememberObserver;

    if-nez p0, :cond_1

    sget-object p0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 1883
    :cond_1
    instance-of p0, v0, Landroidx/compose/runtime/RememberObserverHolder;

    if-eqz p0, :cond_2

    check-cast v0, Landroidx/compose/runtime/RememberObserverHolder;

    invoke-virtual {v0}, Landroidx/compose/runtime/RememberObserverHolder;->getWrapped()Landroidx/compose/runtime/RememberObserver;

    move-result-object p0

    goto :goto_0

    :cond_2
    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public final prepareCompose$runtime_release(Lkotlin/jvm/functions/Function0;)V
    .locals 1

    .line 3508
    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    if-eqz v0, :cond_0

    const-string v0, "Preparing a composition while composing is not supported"

    .line 4531
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    .line 3509
    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    const/4 v0, 0x0

    .line 3511
    :try_start_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3513
    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    throw p1
.end method

.method public final recompose-aFTiNEg$runtime_release(Landroidx/collection/MutableScatterMap;Lkotlin/jvm/functions/Function0;)Z
    .locals 1

    .line 3525
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->changes:Landroidx/compose/runtime/changelist/ChangeList;

    invoke-virtual {v0}, Landroidx/compose/runtime/changelist/ChangeList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Expected applyChanges() to have been called"

    .line 4531
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 3530
    :cond_0
    invoke-static {p1}, Landroidx/compose/runtime/collection/ScopeMap;->getSize-impl(Landroidx/collection/MutableScatterMap;)I

    move-result v0

    if-gtz v0, :cond_2

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->forciblyRecompose:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    .line 3531
    :cond_2
    :goto_0
    iput-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->shouldPauseCallback:Lkotlin/jvm/functions/Function0;

    const/4 p2, 0x0

    .line 3533
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/ComposerImpl;->doCompose-aFTiNEg(Landroidx/collection/MutableScatterMap;Lkotlin/jvm/functions/Function2;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3535
    iput-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->shouldPauseCallback:Lkotlin/jvm/functions/Function0;

    .line 3537
    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->changes:Landroidx/compose/runtime/changelist/ChangeList;

    invoke-virtual {p0}, Landroidx/compose/runtime/changelist/ChangeList;->isNotEmpty()Z

    move-result p0

    return p0

    :catchall_0
    move-exception p1

    .line 3535
    iput-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->shouldPauseCallback:Lkotlin/jvm/functions/Function0;

    throw p1
.end method

.method public recordSideEffect(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 2116
    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->sideEffect(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public recordUsed(Landroidx/compose/runtime/RecomposeScope;)V
    .locals 0

    .line 4022
    instance-of p0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;

    if-eqz p0, :cond_0

    check-cast p1, Landroidx/compose/runtime/RecomposeScopeImpl;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/RecomposeScopeImpl;->setUsed(Z)V

    :goto_1
    return-void
.end method

.method public rememberedValue()Ljava/lang/Object;
    .locals 0

    .line 4017
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->nextSlotForCache()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final setReader$runtime_release(Landroidx/compose/runtime/SlotReader;)V
    .locals 0

    .line 1351
    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    return-void
.end method

.method public skipCurrentGroup()V
    .locals 9

    .line 3034
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3035
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->skipGroup()V

    goto/16 :goto_5

    .line 3037
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 3038
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getGroupKey()I

    move-result v1

    .line 3039
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getGroupObjectKey()Ljava/lang/Object;

    move-result-object v2

    .line 3040
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getGroupAux()Ljava/lang/Object;

    move-result-object v3

    .line 3041
    iget v4, p0, Landroidx/compose/runtime/ComposerImpl;->rGroupIndex:I

    const/16 v5, 0xcf

    const/4 v6, 0x3

    if-nez v2, :cond_2

    if-eqz v3, :cond_1

    if-ne v1, v5, :cond_1

    .line 3970
    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 3971
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    .line 3979
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getCompoundKeyHash()I

    move-result v8

    .line 27
    invoke-static {v8, v6}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v8

    xor-int/2addr v7, v8

    invoke-static {v7, v6}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v7

    xor-int/2addr v7, v4

    .line 3979
    iput v7, p0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    goto :goto_2

    .line 3979
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getCompoundKeyHash()I

    move-result v7

    .line 27
    invoke-static {v7, v6}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v7

    xor-int/2addr v7, v1

    invoke-static {v7, v6}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v7

    xor-int/2addr v7, v4

    .line 3979
    :goto_0
    iput v7, p0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    goto :goto_2

    .line 3973
    :cond_2
    instance-of v7, v2, Ljava/lang/Enum;

    if-eqz v7, :cond_3

    move-object v7, v2

    check-cast v7, Ljava/lang/Enum;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    .line 3979
    :goto_1
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getCompoundKeyHash()I

    move-result v8

    .line 27
    invoke-static {v8, v6}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v8

    xor-int/2addr v7, v8

    invoke-static {v7, v6}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v7

    goto :goto_0

    .line 3974
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v7

    goto :goto_1

    .line 3043
    :goto_2
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->isNode()Z

    move-result v7

    const/4 v8, 0x0

    invoke-direct {p0, v7, v8}, Landroidx/compose/runtime/ComposerImpl;->startReaderGroup(ZLjava/lang/Object;)V

    .line 3044
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->recomposeToGroupEnd()V

    .line 3045
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->endGroup()V

    if-nez v2, :cond_5

    if-eqz v3, :cond_4

    if-ne v1, v5, :cond_4

    .line 3990
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3991
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 3999
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getCompoundKeyHash()I

    move-result v1

    xor-int/2addr v1, v4

    .line 23
    invoke-static {v1, v6}, Ljava/lang/Integer;->rotateRight(II)I

    move-result v1

    .line 3999
    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    xor-int/2addr v0, v1

    .line 23
    invoke-static {v0, v6}, Ljava/lang/Integer;->rotateRight(II)I

    move-result v0

    .line 3999
    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    goto :goto_5

    .line 3999
    :cond_4
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getCompoundKeyHash()I

    move-result v0

    xor-int/2addr v0, v4

    .line 23
    invoke-static {v0, v6}, Ljava/lang/Integer;->rotateRight(II)I

    move-result v0

    .line 3999
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    xor-int/2addr v0, v1

    .line 23
    :goto_3
    invoke-static {v0, v6}, Ljava/lang/Integer;->rotateRight(II)I

    move-result v0

    .line 3999
    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    goto :goto_5

    .line 3993
    :cond_5
    instance-of v0, v2, Ljava/lang/Enum;

    if-eqz v0, :cond_6

    check-cast v2, Ljava/lang/Enum;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    .line 3999
    :goto_4
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getCompoundKeyHash()I

    move-result v1

    .line 23
    invoke-static {v1, v6}, Ljava/lang/Integer;->rotateRight(II)I

    move-result v1

    .line 3999
    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    xor-int/2addr v0, v1

    goto :goto_3

    .line 3994
    :cond_6
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_4

    :goto_5
    return-void
.end method

.method public skipToGroupEnd()V
    .locals 1

    .line 3090
    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 3091
    const-string v0, "No nodes can be emitted before calling skipAndEndGroup"

    .line 4531
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 3097
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3098
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getCurrentRecomposeScope$runtime_release()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->scopeSkipped()V

    .line 3099
    :cond_2
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3100
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->skipReaderToGroupEnd()V

    goto :goto_1

    .line 3102
    :cond_3
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->recomposeToGroupEnd()V

    :cond_4
    :goto_1
    return-void
.end method

.method public startDefaults()V
    .locals 3

    .line 1478
    sget-object v0, Landroidx/compose/runtime/GroupKind;->Companion:Landroidx/compose/runtime/GroupKind$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/GroupKind$Companion;->getGroup-ULZAiWs()I

    move-result v0

    const/16 v1, -0x7f

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0, v2}, Landroidx/compose/runtime/ComposerImpl;->start-BaiHCIY(ILjava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method public startMovableGroup(ILjava/lang/Object;)V
    .locals 2

    .line 1530
    sget-object v0, Landroidx/compose/runtime/GroupKind;->Companion:Landroidx/compose/runtime/GroupKind$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/GroupKind$Companion;->getGroup-ULZAiWs()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/compose/runtime/ComposerImpl;->start-BaiHCIY(ILjava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method public startProvider(Landroidx/compose/runtime/ProvidedValue;)V
    .locals 8

    .line 2185
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v0

    const/16 v1, 0xc9

    .line 2186
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->getProvider()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroidx/compose/runtime/ComposerImpl;->startGroup(ILjava/lang/Object;)V

    .line 2188
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const-string v2, "null cannot be cast to non-null type androidx.compose.runtime.ValueHolder<kotlin.Any?>"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/compose/runtime/ValueHolder;

    .line 2189
    :goto_0
    invoke-virtual {p1}, Landroidx/compose/runtime/ProvidedValue;->getCompositionLocal()Landroidx/compose/runtime/CompositionLocal;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type androidx.compose.runtime.CompositionLocal<kotlin.Any?>"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2190
    const-string v3, "null cannot be cast to non-null type androidx.compose.runtime.ProvidedValue<kotlin.Any?>"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p1, v1}, Landroidx/compose/runtime/CompositionLocal;->updatedStateOf$runtime_release(Landroidx/compose/runtime/ProvidedValue;Landroidx/compose/runtime/ValueHolder;)Landroidx/compose/runtime/ValueHolder;

    move-result-object v3

    .line 2191
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2193
    invoke-virtual {p0, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 2197
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_4

    .line 2199
    invoke-virtual {p1}, Landroidx/compose/runtime/ProvidedValue;->getCanOverride()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {v0, v2}, Landroidx/compose/runtime/CompositionLocalMapKt;->contains(Landroidx/compose/runtime/PersistentCompositionLocalMap;Landroidx/compose/runtime/CompositionLocal;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 2200
    :cond_2
    invoke-interface {v0, v2, v3}, Landroidx/compose/runtime/PersistentCompositionLocalMap;->putValue(Landroidx/compose/runtime/CompositionLocal;Landroidx/compose/runtime/ValueHolder;)Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v0

    .line 2205
    :cond_3
    iput-boolean v5, p0, Landroidx/compose/runtime/ComposerImpl;->writerHasAProvider:Z

    goto :goto_4

    .line 2207
    :cond_4
    iget-object v4, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v4}, Landroidx/compose/runtime/SlotReader;->getCurrentGroup()I

    move-result v7

    invoke-virtual {v4, v7}, Landroidx/compose/runtime/SlotReader;->groupAux(I)Ljava/lang/Object;

    move-result-object v4

    const-string v7, "null cannot be cast to non-null type androidx.compose.runtime.PersistentCompositionLocalMap"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 2209
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v7

    if-eqz v7, :cond_5

    if-nez v1, :cond_6

    :cond_5
    invoke-virtual {p1}, Landroidx/compose/runtime/ProvidedValue;->getCanOverride()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-static {v0, v2}, Landroidx/compose/runtime/CompositionLocalMapKt;->contains(Landroidx/compose/runtime/PersistentCompositionLocalMap;Landroidx/compose/runtime/CompositionLocal;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    move-object v0, v4

    goto :goto_2

    .line 2210
    :cond_7
    :goto_1
    invoke-interface {v0, v2, v3}, Landroidx/compose/runtime/PersistentCompositionLocalMap;->putValue(Landroidx/compose/runtime/CompositionLocal;Landroidx/compose/runtime/ValueHolder;)Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object p1

    move-object v0, p1

    .line 2212
    :goto_2
    iget-boolean p1, p0, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    if-nez p1, :cond_9

    if-eq v4, v0, :cond_8

    goto :goto_3

    :cond_8
    move v5, v6

    :cond_9
    :goto_3
    move v6, v5

    :goto_4
    if-eqz v6, :cond_a

    .line 2214
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result p1

    if-nez p1, :cond_a

    .line 2215
    invoke-direct {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->recordProviderUpdate(Landroidx/compose/runtime/PersistentCompositionLocalMap;)V

    .line 2217
    :cond_a
    iget-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalidStack:Landroidx/compose/runtime/IntStack;

    iget-boolean v1, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalid:Z

    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->access$asInt(Z)I

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/compose/runtime/IntStack;->push(I)V

    .line 2218
    iput-boolean v6, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalid:Z

    .line 2219
    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 2220
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->getCompositionLocalMap()Ljava/lang/Object;

    move-result-object p1

    sget-object v1, Landroidx/compose/runtime/GroupKind;->Companion:Landroidx/compose/runtime/GroupKind$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/GroupKind$Companion;->getGroup-ULZAiWs()I

    move-result v1

    const/16 v2, 0xca

    invoke-direct {p0, v2, p1, v1, v0}, Landroidx/compose/runtime/ComposerImpl;->start-BaiHCIY(ILjava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method public startProviders([Landroidx/compose/runtime/ProvidedValue;)V
    .locals 6

    .line 2244
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v0

    const/16 v1, 0xc9

    .line 2245
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->getProvider()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroidx/compose/runtime/ComposerImpl;->startGroup(ILjava/lang/Object;)V

    .line 2248
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    const/4 v4, 0x0

    .line 2249
    invoke-static {p1, v0, v4, v1, v4}, Landroidx/compose/runtime/CompositionLocalMapKt;->updateCompositionMap$default([Landroidx/compose/runtime/ProvidedValue;Landroidx/compose/runtime/PersistentCompositionLocalMap;Landroidx/compose/runtime/PersistentCompositionLocalMap;ILjava/lang/Object;)Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object p1

    .line 2250
    invoke-direct {p0, v0, p1}, Landroidx/compose/runtime/ComposerImpl;->updateProviderMapGroup(Landroidx/compose/runtime/PersistentCompositionLocalMap;Landroidx/compose/runtime/PersistentCompositionLocalMap;)Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object p1

    .line 2252
    iput-boolean v2, p0, Landroidx/compose/runtime/ComposerImpl;->writerHasAProvider:Z

    goto :goto_2

    .line 2254
    :cond_0
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v1, v3}, Landroidx/compose/runtime/SlotReader;->groupGet(I)Ljava/lang/Object;

    move-result-object v1

    const-string v4, "null cannot be cast to non-null type androidx.compose.runtime.PersistentCompositionLocalMap"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 2255
    iget-object v5, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v5, v2}, Landroidx/compose/runtime/SlotReader;->groupGet(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 2256
    invoke-static {p1, v0, v5}, Landroidx/compose/runtime/CompositionLocalMapKt;->updateCompositionMap([Landroidx/compose/runtime/ProvidedValue;Landroidx/compose/runtime/PersistentCompositionLocalMap;Landroidx/compose/runtime/PersistentCompositionLocalMap;)Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object p1

    .line 2258
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    if-nez v4, :cond_2

    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 2270
    :cond_1
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->skipGroup()V

    move-object p1, v1

    goto :goto_2

    .line 2259
    :cond_2
    :goto_0
    invoke-direct {p0, v0, p1}, Landroidx/compose/runtime/ComposerImpl;->updateProviderMapGroup(Landroidx/compose/runtime/PersistentCompositionLocalMap;Landroidx/compose/runtime/PersistentCompositionLocalMap;)Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object p1

    .line 2267
    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    if-nez v0, :cond_4

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    :cond_4
    :goto_1
    move v3, v2

    :goto_2
    if-eqz v3, :cond_5

    .line 2276
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2277
    invoke-direct {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->recordProviderUpdate(Landroidx/compose/runtime/PersistentCompositionLocalMap;)V

    .line 2279
    :cond_5
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalidStack:Landroidx/compose/runtime/IntStack;

    iget-boolean v1, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalid:Z

    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->access$asInt(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/IntStack;->push(I)V

    .line 2280
    iput-boolean v3, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalid:Z

    .line 2281
    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 2282
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->getCompositionLocalMap()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidx/compose/runtime/GroupKind;->Companion:Landroidx/compose/runtime/GroupKind$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/GroupKind$Companion;->getGroup-ULZAiWs()I

    move-result v1

    const/16 v2, 0xca

    invoke-direct {p0, v2, v0, v1, p1}, Landroidx/compose/runtime/ComposerImpl;->start-BaiHCIY(ILjava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method public startReplaceGroup(I)V
    .locals 8

    .line 1420
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->pending:Landroidx/compose/runtime/Pending;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1422
    sget-object v0, Landroidx/compose/runtime/GroupKind;->Companion:Landroidx/compose/runtime/GroupKind$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/GroupKind$Companion;->getGroup-ULZAiWs()I

    move-result v0

    invoke-direct {p0, p1, v1, v0, v1}, Landroidx/compose/runtime/ComposerImpl;->start-BaiHCIY(ILjava/lang/Object;ILjava/lang/Object;)V

    return-void

    .line 1425
    :cond_0
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->validateNodeNotExpected()V

    .line 1427
    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->rGroupIndex:I

    .line 3979
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getCompoundKeyHash()I

    move-result v2

    const/4 v3, 0x3

    .line 27
    invoke-static {v2, v3}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v2

    xor-int/2addr v2, p1

    invoke-static {v2, v3}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v2

    xor-int/2addr v0, v2

    .line 3979
    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    .line 1429
    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->rGroupIndex:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->rGroupIndex:I

    .line 1431
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    .line 1432
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 1433
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->beginEmpty()V

    .line 1434
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroidx/compose/runtime/SlotWriter;->startGroup(ILjava/lang/Object;)V

    .line 1435
    invoke-direct {p0, v4, v1}, Landroidx/compose/runtime/ComposerImpl;->enterGroup(ZLandroidx/compose/runtime/Pending;)V

    return-void

    .line 1438
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getGroupKey()I

    move-result v3

    if-ne v3, p1, :cond_2

    .line 1439
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getHasObjectKey()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1440
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->startGroup()V

    .line 1441
    invoke-direct {p0, v4, v1}, Landroidx/compose/runtime/ComposerImpl;->enterGroup(ZLandroidx/compose/runtime/Pending;)V

    return-void

    .line 1445
    :cond_2
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->isGroupEnd()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1447
    iget v3, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    .line 1448
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getCurrentGroup()I

    move-result v5

    .line 1449
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->recordDelete()V

    .line 1450
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->skipGroup()I

    move-result v6

    .line 1451
    iget-object v7, p0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {v7, v3, v6}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->removeNode(II)V

    .line 1453
    iget-object v3, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getCurrentGroup()I

    move-result v6

    invoke-static {v3, v5, v6}, Landroidx/compose/runtime/ComposerKt;->access$removeRange(Ljava/util/List;II)V

    .line 1457
    :cond_3
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->beginEmpty()V

    .line 1458
    iput-boolean v2, p0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    .line 1459
    iput-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 1460
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->ensureWriter()V

    .line 1461
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    .line 1462
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotWriter;->beginInsert()V

    .line 1463
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotWriter;->getCurrentGroup()I

    move-result v2

    .line 1464
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Landroidx/compose/runtime/SlotWriter;->startGroup(ILjava/lang/Object;)V

    .line 1465
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/SlotWriter;->anchor(I)Landroidx/compose/runtime/Anchor;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->insertAnchor:Landroidx/compose/runtime/Anchor;

    .line 1466
    invoke-direct {p0, v4, v1}, Landroidx/compose/runtime/ComposerImpl;->enterGroup(ZLandroidx/compose/runtime/Pending;)V

    return-void
.end method

.method public startReplaceableGroup(I)V
    .locals 2

    .line 1401
    sget-object v0, Landroidx/compose/runtime/GroupKind;->Companion:Landroidx/compose/runtime/GroupKind$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/GroupKind$Companion;->getGroup-ULZAiWs()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, v1}, Landroidx/compose/runtime/ComposerImpl;->start-BaiHCIY(ILjava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method public startRestartGroup(I)Landroidx/compose/runtime/Composer;
    .locals 0

    .line 3133
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    .line 3134
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->addRecomposeScope()V

    return-object p0
.end method

.method public startReusableGroup(ILjava/lang/Object;)V
    .locals 2

    .line 1769
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1770
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getGroupKey()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getGroupAux()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->reusingGroup:I

    if-gez v0, :cond_0

    .line 1772
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getCurrentGroup()I

    move-result v0

    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->reusingGroup:I

    const/4 v0, 0x1

    .line 1773
    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    .line 1776
    :cond_0
    sget-object v0, Landroidx/compose/runtime/GroupKind;->Companion:Landroidx/compose/runtime/GroupKind$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/GroupKind$Companion;->getGroup-ULZAiWs()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, p2}, Landroidx/compose/runtime/ComposerImpl;->start-BaiHCIY(ILjava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method public startReusableNode()V
    .locals 3

    .line 1734
    sget-object v0, Landroidx/compose/runtime/GroupKind;->Companion:Landroidx/compose/runtime/GroupKind$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/GroupKind$Companion;->getReusableNode-ULZAiWs()I

    move-result v0

    const/16 v1, 0x7d

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0, v2}, Landroidx/compose/runtime/ComposerImpl;->start-BaiHCIY(ILjava/lang/Object;ILjava/lang/Object;)V

    const/4 v0, 0x1

    .line 1735
    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeExpected:Z

    return-void
.end method

.method public final startReuseFromRoot()V
    .locals 1

    const/16 v0, 0x64

    .line 1796
    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->reusingGroup:I

    const/4 v0, 0x1

    .line 1797
    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    return-void
.end method

.method public final tryImminentInvalidation$runtime_release(Landroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)Z
    .locals 3

    .line 3007
    invoke-virtual {p1}, Landroidx/compose/runtime/RecomposeScopeImpl;->getAnchor()Landroidx/compose/runtime/Anchor;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3008
    :cond_0
    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v2}, Landroidx/compose/runtime/SlotReader;->getTable$runtime_release()Landroidx/compose/runtime/SlotTable;

    move-result-object v2

    .line 3009
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/Anchor;->toIndexFor(Landroidx/compose/runtime/SlotTable;)I

    move-result v0

    .line 3010
    iget-boolean v2, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v2}, Landroidx/compose/runtime/SlotReader;->getCurrentGroup()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 3013
    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    invoke-static {p0, v0, p1, p2}, Landroidx/compose/runtime/ComposerKt;->access$insertIfMissing(Ljava/util/List;ILandroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public final updateCachedValue(Ljava/lang/Object;)V
    .locals 2

    .line 2078
    instance-of v0, p1, Landroidx/compose/runtime/RememberObserver;

    if-eqz v0, :cond_1

    .line 2079
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2080
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    move-object v1, p1

    check-cast v1, Landroidx/compose/runtime/RememberObserver;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->remember(Landroidx/compose/runtime/RememberObserver;)V

    .line 2082
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->abandonSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2083
    new-instance v0, Landroidx/compose/runtime/RememberObserverHolder;

    check-cast p1, Landroidx/compose/runtime/RememberObserver;

    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->rememberObserverAnchor()Landroidx/compose/runtime/Anchor;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroidx/compose/runtime/RememberObserverHolder;-><init>(Landroidx/compose/runtime/RememberObserver;Landroidx/compose/runtime/Anchor;)V

    move-object p1, v0

    .line 2085
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updateValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final updateComposerInvalidations-RY85e9Y(Landroidx/collection/MutableScatterMap;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 357
    iget-object v2, v1, Landroidx/collection/ScatterMap;->keys:[Ljava/lang/Object;

    .line 358
    iget-object v3, v1, Landroidx/collection/ScatterMap;->values:[Ljava/lang/Object;

    .line 329
    iget-object v1, v1, Landroidx/collection/ScatterMap;->metadata:[J

    .line 330
    array-length v4, v1

    add-int/lit8 v4, v4, -0x2

    if-ltz v4, :cond_4

    const/4 v6, 0x0

    .line 333
    :goto_0
    aget-wide v7, v1, v6

    not-long v9, v7

    const/4 v11, 0x7

    shl-long/2addr v9, v11

    and-long/2addr v9, v7

    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v9, v11

    cmp-long v9, v9, v11

    if-eqz v9, :cond_3

    sub-int v9, v6, v4

    not-int v9, v9

    ushr-int/lit8 v9, v9, 0x1f

    const/16 v10, 0x8

    rsub-int/lit8 v9, v9, 0x8

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v9, :cond_2

    const-wide/16 v12, 0xff

    and-long/2addr v12, v7

    const-wide/16 v14, 0x80

    cmp-long v12, v12, v14

    if-gez v12, :cond_1

    shl-int/lit8 v12, v6, 0x3

    add-int/2addr v12, v11

    .line 360
    aget-object v13, v2, v12

    aget-object v12, v3, v12

    .line 3544
    const-string v14, "null cannot be cast to non-null type androidx.compose.runtime.RecomposeScopeImpl"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v13, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 3545
    invoke-virtual {v13}, Landroidx/compose/runtime/RecomposeScopeImpl;->getAnchor()Landroidx/compose/runtime/Anchor;

    move-result-object v14

    if-eqz v14, :cond_1

    invoke-virtual {v14}, Landroidx/compose/runtime/Anchor;->getLocation$runtime_release()I

    move-result v14

    .line 3546
    iget-object v15, v0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    .line 3547
    sget-object v5, Landroidx/compose/runtime/ScopeInvalidated;->INSTANCE:Landroidx/compose/runtime/ScopeInvalidated;

    if-ne v12, v5, :cond_0

    const/4 v12, 0x0

    :cond_0
    new-instance v5, Landroidx/compose/runtime/Invalidation;

    invoke-direct {v5, v13, v14, v12}, Landroidx/compose/runtime/Invalidation;-><init>(Landroidx/compose/runtime/RecomposeScopeImpl;ILjava/lang/Object;)V

    .line 3546
    invoke-interface {v15, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    shr-long/2addr v7, v10

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_2
    if-ne v9, v10, :cond_4

    :cond_3
    if-eq v6, v4, :cond_4

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 3550
    :cond_4
    iget-object v0, v0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->access$getInvalidationLocationAscending$p()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public updateRememberedValue(Ljava/lang/Object;)V
    .locals 0

    .line 4019
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updateCachedValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final updateValue(Ljava/lang/Object;)V
    .locals 3

    .line 2034
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2035
    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotWriter;->update(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2037
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getHadNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2040
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getGroupSlotIndex()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 2041
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {v1}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->getPastParent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2048
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    .line 2050
    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {p0}, Landroidx/compose/runtime/SlotReader;->getParent()I

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/compose/runtime/SlotReader;->anchor(I)Landroidx/compose/runtime/Anchor;

    move-result-object p0

    .line 2048
    invoke-virtual {v1, p1, p0, v0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->updateAnchoredValue(Ljava/lang/Object;Landroidx/compose/runtime/Anchor;I)V

    goto :goto_0

    .line 2056
    :cond_1
    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {p0, p1, v0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->updateValue(Ljava/lang/Object;I)V

    goto :goto_0

    .line 2064
    :cond_2
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {p0}, Landroidx/compose/runtime/SlotReader;->getParent()I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/compose/runtime/SlotReader;->anchor(I)Landroidx/compose/runtime/Anchor;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->appendValue(Landroidx/compose/runtime/Anchor;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public useNode()V
    .locals 2

    .line 1755
    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl;->validateNodeExpected()V

    .line 1756
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getInserting()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "useNode() called while inserting"

    .line 4531
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 1757
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-direct {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->getNode(Landroidx/compose/runtime/SlotReader;)Ljava/lang/Object;

    move-result-object v0

    .line 1758
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->moveDown(Ljava/lang/Object;)V

    .line 1760
    iget-boolean v1, p0, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    if-eqz v1, :cond_1

    instance-of v1, v0, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    if-eqz v1, :cond_1

    .line 1761
    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->useNode(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
