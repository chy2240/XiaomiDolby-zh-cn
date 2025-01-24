.class public final Landroidx/compose/runtime/CompositionImpl;
.super Ljava/lang/Object;
.source "Composition.kt"

# interfaces
.implements Landroidx/compose/runtime/ControlledComposition;
.implements Landroidx/compose/runtime/ReusableComposition;
.implements Landroidx/compose/runtime/RecomposeScopeOwner;


# instance fields
.field private final _recomposeContext:Lkotlin/coroutines/CoroutineContext;

.field private final abandonSet:Ljava/util/Set;

.field private final applier:Landroidx/compose/runtime/Applier;

.field private final changes:Landroidx/compose/runtime/changelist/ChangeList;

.field private composable:Lkotlin/jvm/functions/Function2;

.field private final composer:Landroidx/compose/runtime/ComposerImpl;

.field private final conditionallyInvalidatedScopes:Landroidx/collection/MutableScatterSet;

.field private final derivedStates:Landroidx/collection/MutableScatterMap;

.field private disposed:Z

.field private final invalidatedScopes:Landroidx/collection/MutableScatterSet;

.field private invalidationDelegate:Landroidx/compose/runtime/CompositionImpl;

.field private invalidationDelegateGroup:I

.field private invalidations:Landroidx/collection/MutableScatterMap;

.field private final isRoot:Z

.field private final lateChanges:Landroidx/compose/runtime/changelist/ChangeList;

.field private final lock:Ljava/lang/Object;

.field private final observations:Landroidx/collection/MutableScatterMap;

.field private final observationsProcessed:Landroidx/collection/MutableScatterMap;

.field private final observerHolder:Landroidx/compose/runtime/CompositionObserverHolder;

.field private final parent:Landroidx/compose/runtime/CompositionContext;

.field private pendingInvalidScopes:Z

.field private final pendingModifications:Ljava/util/concurrent/atomic/AtomicReference;

.field private shouldPause:Lkotlin/jvm/functions/Function0;

.field private final slotTable:Landroidx/compose/runtime/SlotTable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroidx/compose/runtime/CompositionContext;Landroidx/compose/runtime/Applier;Lkotlin/coroutines/CoroutineContext;)V
    .locals 12

    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 429
    iput-object p1, p0, Landroidx/compose/runtime/CompositionImpl;->parent:Landroidx/compose/runtime/CompositionContext;

    .line 432
    iput-object p2, p0, Landroidx/compose/runtime/CompositionImpl;->applier:Landroidx/compose/runtime/Applier;

    .line 446
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->pendingModifications:Ljava/util/concurrent/atomic/AtomicReference;

    .line 449
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->lock:Ljava/lang/Object;

    .line 459
    new-instance v0, Landroidx/collection/MutableScatterSet;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Landroidx/collection/MutableScatterSet;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0}, Landroidx/collection/MutableScatterSet;->asMutableSet()Ljava/util/Set;

    move-result-object v8

    iput-object v8, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/Set;

    .line 464
    new-instance v7, Landroidx/compose/runtime/SlotTable;

    invoke-direct {v7}, Landroidx/compose/runtime/SlotTable;-><init>()V

    .line 465
    invoke-virtual {p1}, Landroidx/compose/runtime/CompositionContext;->getCollectingCallByInformation$runtime_release()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v7}, Landroidx/compose/runtime/SlotTable;->collectCalledByInformation()V

    .line 466
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/runtime/CompositionContext;->getCollectingSourceInformation$runtime_release()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v7}, Landroidx/compose/runtime/SlotTable;->collectSourceInformation()V

    .line 464
    :cond_1
    iput-object v7, p0, Landroidx/compose/runtime/CompositionImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    .line 473
    invoke-static {v1, v3, v1}, Landroidx/compose/runtime/collection/ScopeMap;->constructor-impl$default(Landroidx/collection/MutableScatterMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)Landroidx/collection/MutableScatterMap;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->observations:Landroidx/collection/MutableScatterMap;

    .line 483
    new-instance v0, Landroidx/collection/MutableScatterSet;

    invoke-direct {v0, v2, v3, v1}, Landroidx/collection/MutableScatterSet;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->invalidatedScopes:Landroidx/collection/MutableScatterSet;

    .line 491
    new-instance v0, Landroidx/collection/MutableScatterSet;

    invoke-direct {v0, v2, v3, v1}, Landroidx/collection/MutableScatterSet;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->conditionallyInvalidatedScopes:Landroidx/collection/MutableScatterSet;

    .line 494
    invoke-static {v1, v3, v1}, Landroidx/compose/runtime/collection/ScopeMap;->constructor-impl$default(Landroidx/collection/MutableScatterMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)Landroidx/collection/MutableScatterMap;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->derivedStates:Landroidx/collection/MutableScatterMap;

    .line 511
    new-instance v9, Landroidx/compose/runtime/changelist/ChangeList;

    invoke-direct {v9}, Landroidx/compose/runtime/changelist/ChangeList;-><init>()V

    iput-object v9, p0, Landroidx/compose/runtime/CompositionImpl;->changes:Landroidx/compose/runtime/changelist/ChangeList;

    .line 521
    new-instance v10, Landroidx/compose/runtime/changelist/ChangeList;

    invoke-direct {v10}, Landroidx/compose/runtime/changelist/ChangeList;-><init>()V

    iput-object v10, p0, Landroidx/compose/runtime/CompositionImpl;->lateChanges:Landroidx/compose/runtime/changelist/ChangeList;

    .line 530
    invoke-static {v1, v3, v1}, Landroidx/compose/runtime/collection/ScopeMap;->constructor-impl$default(Landroidx/collection/MutableScatterMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)Landroidx/collection/MutableScatterMap;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->observationsProcessed:Landroidx/collection/MutableScatterMap;

    .line 539
    invoke-static {v1, v3, v1}, Landroidx/compose/runtime/collection/ScopeMap;->constructor-impl$default(Landroidx/collection/MutableScatterMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)Landroidx/collection/MutableScatterMap;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->invalidations:Landroidx/collection/MutableScatterMap;

    .line 562
    new-instance v0, Landroidx/compose/runtime/CompositionObserverHolder;

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3, v1}, Landroidx/compose/runtime/CompositionObserverHolder;-><init>(Landroidx/compose/runtime/tooling/CompositionObserver;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->observerHolder:Landroidx/compose/runtime/CompositionObserverHolder;

    .line 566
    new-instance v0, Landroidx/compose/runtime/ComposerImpl;

    move-object v4, v0

    move-object v5, p2

    move-object v6, p1

    move-object v11, p0

    invoke-direct/range {v4 .. v11}, Landroidx/compose/runtime/ComposerImpl;-><init>(Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/CompositionContext;Landroidx/compose/runtime/SlotTable;Ljava/util/Set;Landroidx/compose/runtime/changelist/ChangeList;Landroidx/compose/runtime/changelist/ChangeList;Landroidx/compose/runtime/ControlledComposition;)V

    .line 575
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/CompositionContext;->registerComposer$runtime_release(Landroidx/compose/runtime/Composer;)V

    iput-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    .line 578
    iput-object p3, p0, Landroidx/compose/runtime/CompositionImpl;->_recomposeContext:Lkotlin/coroutines/CoroutineContext;

    .line 585
    instance-of p1, p1, Landroidx/compose/runtime/Recomposer;

    iput-boolean p1, p0, Landroidx/compose/runtime/CompositionImpl;->isRoot:Z

    sget-object p1, Landroidx/compose/runtime/ComposableSingletons$CompositionKt;->INSTANCE:Landroidx/compose/runtime/ComposableSingletons$CompositionKt;

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposableSingletons$CompositionKt;->getLambda-1$runtime_release()Lkotlin/jvm/functions/Function2;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/runtime/CompositionImpl;->composable:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/runtime/CompositionContext;Landroidx/compose/runtime/Applier;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 424
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/runtime/CompositionImpl;-><init>(Landroidx/compose/runtime/CompositionContext;Landroidx/compose/runtime/Applier;Lkotlin/coroutines/CoroutineContext;)V

    return-void
.end method

.method public static final synthetic access$getObservations$p(Landroidx/compose/runtime/CompositionImpl;)Landroidx/collection/MutableScatterMap;
    .locals 0

    .line 423
    iget-object p0, p0, Landroidx/compose/runtime/CompositionImpl;->observations:Landroidx/collection/MutableScatterMap;

    return-object p0
.end method

.method private final addPendingInvalidationsLocked(Ljava/lang/Object;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 891
    iget-object v2, v0, Landroidx/compose/runtime/CompositionImpl;->observations:Landroidx/collection/MutableScatterMap;

    .line 67
    invoke-virtual {v2, v1}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 71
    instance-of v3, v2, Landroidx/collection/MutableScatterSet;

    if-eqz v3, :cond_4

    .line 72
    check-cast v2, Landroidx/collection/MutableScatterSet;

    .line 232
    iget-object v3, v2, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 201
    iget-object v2, v2, Landroidx/collection/ScatterSet;->metadata:[J

    .line 202
    array-length v4, v2

    add-int/lit8 v4, v4, -0x2

    if-ltz v4, :cond_6

    const/4 v5, 0x0

    move v6, v5

    .line 205
    :goto_0
    aget-wide v7, v2, v6

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

    move v11, v5

    :goto_1
    if-ge v11, v9, :cond_2

    const-wide/16 v12, 0xff

    and-long/2addr v12, v7

    const-wide/16 v14, 0x80

    cmp-long v12, v12, v14

    if-gez v12, :cond_1

    shl-int/lit8 v12, v6, 0x3

    add-int/2addr v12, v11

    .line 233
    aget-object v12, v3, v12

    check-cast v12, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 893
    iget-object v13, v0, Landroidx/compose/runtime/CompositionImpl;->observationsProcessed:Landroidx/collection/MutableScatterMap;

    invoke-static {v13, v1, v12}, Landroidx/compose/runtime/collection/ScopeMap;->remove-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 894
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/RecomposeScopeImpl;->invalidateForResult(Ljava/lang/Object;)Landroidx/compose/runtime/InvalidationResult;

    move-result-object v13

    sget-object v14, Landroidx/compose/runtime/InvalidationResult;->IGNORED:Landroidx/compose/runtime/InvalidationResult;

    if-eq v13, v14, :cond_1

    .line 896
    invoke-virtual {v12}, Landroidx/compose/runtime/RecomposeScopeImpl;->isConditional()Z

    move-result v13

    if-eqz v13, :cond_0

    if-nez p2, :cond_0

    .line 897
    iget-object v13, v0, Landroidx/compose/runtime/CompositionImpl;->conditionallyInvalidatedScopes:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v13, v12}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 899
    :cond_0
    iget-object v13, v0, Landroidx/compose/runtime/CompositionImpl;->invalidatedScopes:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v13, v12}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_2
    shr-long/2addr v7, v10

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_2
    if-ne v9, v10, :cond_6

    :cond_3
    if-eq v6, v4, :cond_6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 75
    :cond_4
    check-cast v2, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 893
    iget-object v3, v0, Landroidx/compose/runtime/CompositionImpl;->observationsProcessed:Landroidx/collection/MutableScatterMap;

    invoke-static {v3, v1, v2}, Landroidx/compose/runtime/collection/ScopeMap;->remove-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 894
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/RecomposeScopeImpl;->invalidateForResult(Ljava/lang/Object;)Landroidx/compose/runtime/InvalidationResult;

    move-result-object v1

    sget-object v3, Landroidx/compose/runtime/InvalidationResult;->IGNORED:Landroidx/compose/runtime/InvalidationResult;

    if-eq v1, v3, :cond_6

    .line 896
    invoke-virtual {v2}, Landroidx/compose/runtime/RecomposeScopeImpl;->isConditional()Z

    move-result v1

    if-eqz v1, :cond_5

    if-nez p2, :cond_5

    .line 897
    iget-object v0, v0, Landroidx/compose/runtime/CompositionImpl;->conditionallyInvalidatedScopes:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v0, v2}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 899
    :cond_5
    iget-object v0, v0, Landroidx/compose/runtime/CompositionImpl;->invalidatedScopes:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v0, v2}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_3
    return-void
.end method

.method private final addPendingInvalidationsLocked(Ljava/util/Set;Z)V
    .locals 34

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 42
    instance-of v3, v1, Landroidx/compose/runtime/collection/ScatterSetWrapper;

    const/4 v9, 0x7

    const-wide v10, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/16 v13, 0x8

    if-eqz v3, :cond_a

    .line 43
    check-cast v1, Landroidx/compose/runtime/collection/ScatterSetWrapper;

    invoke-virtual {v1}, Landroidx/compose/runtime/collection/ScatterSetWrapper;->getSet$runtime_release()Landroidx/collection/ScatterSet;

    move-result-object v1

    .line 232
    iget-object v3, v1, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 201
    iget-object v1, v1, Landroidx/collection/ScatterSet;->metadata:[J

    .line 202
    array-length v14, v1

    add-int/lit8 v14, v14, -0x2

    if-ltz v14, :cond_11

    const/4 v15, 0x0

    .line 205
    :goto_0
    aget-wide v4, v1, v15

    not-long v7, v4

    shl-long v6, v7, v9

    and-long/2addr v6, v4

    and-long/2addr v6, v10

    cmp-long v6, v6, v10

    if-eqz v6, :cond_9

    sub-int v6, v15, v14

    not-int v6, v6

    ushr-int/lit8 v6, v6, 0x1f

    rsub-int/lit8 v6, v6, 0x8

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_8

    const-wide/16 v19, 0xff

    and-long v21, v4, v19

    const-wide/16 v17, 0x80

    cmp-long v8, v21, v17

    if-gez v8, :cond_7

    shl-int/lit8 v8, v15, 0x3

    add-int/2addr v8, v7

    .line 233
    aget-object v8, v3, v8

    .line 907
    instance-of v12, v8, Landroidx/compose/runtime/RecomposeScopeImpl;

    if-eqz v12, :cond_1

    .line 908
    check-cast v8, Landroidx/compose/runtime/RecomposeScopeImpl;

    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Landroidx/compose/runtime/RecomposeScopeImpl;->invalidateForResult(Ljava/lang/Object;)Landroidx/compose/runtime/InvalidationResult;

    :cond_0
    move/from16 v25, v6

    move/from16 v26, v7

    move/from16 p1, v14

    move v11, v15

    goto/16 :goto_4

    .line 910
    :cond_1
    invoke-direct {v0, v8, v2}, Landroidx/compose/runtime/CompositionImpl;->addPendingInvalidationsLocked(Ljava/lang/Object;Z)V

    .line 911
    iget-object v12, v0, Landroidx/compose/runtime/CompositionImpl;->derivedStates:Landroidx/collection/MutableScatterMap;

    .line 67
    invoke-virtual {v12, v8}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 71
    instance-of v12, v8, Landroidx/collection/MutableScatterSet;

    if-eqz v12, :cond_5

    .line 72
    check-cast v8, Landroidx/collection/MutableScatterSet;

    .line 232
    iget-object v12, v8, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 201
    iget-object v8, v8, Landroidx/collection/ScatterSet;->metadata:[J

    .line 202
    array-length v13, v8

    add-int/lit8 v13, v13, -0x2

    if-ltz v13, :cond_0

    move/from16 p1, v14

    move v11, v15

    const/4 v10, 0x0

    .line 205
    :goto_2
    aget-wide v14, v8, v10

    move/from16 v25, v6

    move/from16 v26, v7

    not-long v6, v14

    shl-long/2addr v6, v9

    and-long/2addr v6, v14

    const-wide v23, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v6, v6, v23

    cmp-long v6, v6, v23

    if-eqz v6, :cond_4

    sub-int v6, v10, v13

    not-int v6, v6

    ushr-int/lit8 v6, v6, 0x1f

    const/16 v7, 0x8

    rsub-int/lit8 v6, v6, 0x8

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v6, :cond_3

    const-wide/16 v19, 0xff

    and-long v27, v14, v19

    const-wide/16 v17, 0x80

    cmp-long v27, v27, v17

    if-gez v27, :cond_2

    shl-int/lit8 v27, v10, 0x3

    add-int v27, v27, v7

    .line 233
    aget-object v27, v12, v27

    move-object/from16 v9, v27

    check-cast v9, Landroidx/compose/runtime/DerivedState;

    .line 912
    invoke-direct {v0, v9, v2}, Landroidx/compose/runtime/CompositionImpl;->addPendingInvalidationsLocked(Ljava/lang/Object;Z)V

    :cond_2
    const/16 v9, 0x8

    shr-long/2addr v14, v9

    add-int/lit8 v7, v7, 0x1

    const/4 v9, 0x7

    goto :goto_3

    :cond_3
    const/16 v9, 0x8

    if-ne v6, v9, :cond_6

    :cond_4
    if-eq v10, v13, :cond_6

    add-int/lit8 v10, v10, 0x1

    move/from16 v6, v25

    move/from16 v7, v26

    const/4 v9, 0x7

    goto :goto_2

    :cond_5
    move/from16 v25, v6

    move/from16 v26, v7

    move/from16 p1, v14

    move v11, v15

    .line 75
    check-cast v8, Landroidx/compose/runtime/DerivedState;

    .line 912
    invoke-direct {v0, v8, v2}, Landroidx/compose/runtime/CompositionImpl;->addPendingInvalidationsLocked(Ljava/lang/Object;Z)V

    :cond_6
    :goto_4
    const/16 v6, 0x8

    goto :goto_5

    :cond_7
    move/from16 v25, v6

    move/from16 v26, v7

    move/from16 p1, v14

    move v11, v15

    move v6, v13

    :goto_5
    shr-long/2addr v4, v6

    add-int/lit8 v7, v26, 0x1

    move/from16 v14, p1

    move v13, v6

    move v15, v11

    move/from16 v6, v25

    const/4 v9, 0x7

    const-wide v10, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    goto/16 :goto_1

    :cond_8
    move/from16 p1, v14

    move v11, v15

    move/from16 v33, v13

    move v13, v6

    move/from16 v6, v33

    if-ne v13, v6, :cond_11

    move/from16 v14, p1

    goto :goto_6

    :cond_9
    move v11, v15

    :goto_6
    if-eq v11, v14, :cond_11

    add-int/lit8 v15, v11, 0x1

    const/4 v9, 0x7

    const-wide v10, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/16 v13, 0x8

    goto/16 :goto_0

    .line 46
    :cond_a
    check-cast v1, Ljava/lang/Iterable;

    .line 1855
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 907
    instance-of v4, v3, Landroidx/compose/runtime/RecomposeScopeImpl;

    if-eqz v4, :cond_c

    .line 908
    check-cast v3, Landroidx/compose/runtime/RecomposeScopeImpl;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/RecomposeScopeImpl;->invalidateForResult(Ljava/lang/Object;)Landroidx/compose/runtime/InvalidationResult;

    goto :goto_7

    :cond_c
    const/4 v4, 0x0

    .line 910
    invoke-direct {v0, v3, v2}, Landroidx/compose/runtime/CompositionImpl;->addPendingInvalidationsLocked(Ljava/lang/Object;Z)V

    .line 911
    iget-object v5, v0, Landroidx/compose/runtime/CompositionImpl;->derivedStates:Landroidx/collection/MutableScatterMap;

    .line 67
    invoke-virtual {v5, v3}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 71
    instance-of v5, v3, Landroidx/collection/MutableScatterSet;

    if-eqz v5, :cond_10

    .line 72
    check-cast v3, Landroidx/collection/MutableScatterSet;

    .line 232
    iget-object v5, v3, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 201
    iget-object v3, v3, Landroidx/collection/ScatterSet;->metadata:[J

    .line 202
    array-length v6, v3

    add-int/lit8 v6, v6, -0x2

    if-ltz v6, :cond_b

    const/4 v7, 0x0

    .line 205
    :goto_8
    aget-wide v8, v3, v7

    not-long v10, v8

    const/4 v12, 0x7

    shl-long/2addr v10, v12

    and-long/2addr v10, v8

    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v10, v12

    cmp-long v10, v10, v12

    if-eqz v10, :cond_f

    sub-int v10, v7, v6

    not-int v10, v10

    ushr-int/lit8 v10, v10, 0x1f

    const/16 v11, 0x8

    rsub-int/lit8 v13, v10, 0x8

    const/4 v10, 0x0

    :goto_9
    if-ge v10, v13, :cond_e

    const-wide/16 v11, 0xff

    and-long v14, v8, v11

    const-wide/16 v11, 0x80

    cmp-long v14, v14, v11

    if-gez v14, :cond_d

    shl-int/lit8 v11, v7, 0x3

    add-int/2addr v11, v10

    .line 233
    aget-object v11, v5, v11

    check-cast v11, Landroidx/compose/runtime/DerivedState;

    .line 912
    invoke-direct {v0, v11, v2}, Landroidx/compose/runtime/CompositionImpl;->addPendingInvalidationsLocked(Ljava/lang/Object;Z)V

    :cond_d
    const/16 v11, 0x8

    shr-long/2addr v8, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    :cond_e
    const/16 v11, 0x8

    if-ne v13, v11, :cond_b

    :cond_f
    if-eq v7, v6, :cond_b

    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 75
    :cond_10
    check-cast v3, Landroidx/compose/runtime/DerivedState;

    .line 912
    invoke-direct {v0, v3, v2}, Landroidx/compose/runtime/CompositionImpl;->addPendingInvalidationsLocked(Ljava/lang/Object;Z)V

    goto :goto_7

    .line 917
    :cond_11
    iget-object v1, v0, Landroidx/compose/runtime/CompositionImpl;->conditionallyInvalidatedScopes:Landroidx/collection/MutableScatterSet;

    .line 918
    iget-object v3, v0, Landroidx/compose/runtime/CompositionImpl;->invalidatedScopes:Landroidx/collection/MutableScatterSet;

    .line 919
    const-string v4, "null cannot be cast to non-null type Scope of androidx.compose.runtime.collection.ScopeMap.removeScopeIf_impl$lambda$2"

    const-string v5, "null cannot be cast to non-null type androidx.collection.MutableScatterSet<Scope of androidx.compose.runtime.collection.ScopeMap.removeScopeIf_impl$lambda$2>"

    if-eqz v2, :cond_21

    invoke-virtual {v1}, Landroidx/collection/ScatterSet;->isNotEmpty()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 920
    iget-object v2, v0, Landroidx/compose/runtime/CompositionImpl;->observations:Landroidx/collection/MutableScatterMap;

    .line 329
    iget-object v7, v2, Landroidx/collection/ScatterMap;->metadata:[J

    .line 330
    array-length v8, v7

    add-int/lit8 v8, v8, -0x2

    if-ltz v8, :cond_20

    const/4 v9, 0x0

    .line 333
    :goto_a
    aget-wide v10, v7, v9

    not-long v12, v10

    const/4 v14, 0x7

    shl-long/2addr v12, v14

    and-long/2addr v12, v10

    const-wide v14, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v12, v14

    cmp-long v12, v12, v14

    if-eqz v12, :cond_1f

    sub-int v12, v9, v8

    not-int v12, v12

    ushr-int/lit8 v12, v12, 0x1f

    const/16 v13, 0x8

    rsub-int/lit8 v12, v12, 0x8

    const/4 v13, 0x0

    :goto_b
    if-ge v13, v12, :cond_1e

    const-wide/16 v14, 0xff

    and-long v25, v10, v14

    const-wide/16 v14, 0x80

    cmp-long v16, v25, v14

    if-gez v16, :cond_1d

    shl-int/lit8 v14, v9, 0x3

    add-int/2addr v14, v13

    .line 844
    iget-object v15, v2, Landroidx/collection/ScatterMap;->keys:[Ljava/lang/Object;

    aget-object v15, v15, v14

    iget-object v15, v2, Landroidx/collection/ScatterMap;->values:[Ljava/lang/Object;

    aget-object v15, v15, v14

    .line 125
    instance-of v6, v15, Landroidx/collection/MutableScatterSet;

    if-eqz v6, :cond_19

    .line 126
    invoke-static {v15, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v15, Landroidx/collection/MutableScatterSet;

    .line 834
    iget-object v6, v15, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    move-object/from16 v16, v7

    .line 201
    iget-object v7, v15, Landroidx/collection/ScatterSet;->metadata:[J

    move-object/from16 v25, v5

    .line 202
    array-length v5, v7

    add-int/lit8 v5, v5, -0x2

    move/from16 p2, v8

    move/from16 v26, v9

    if-ltz v5, :cond_17

    const/4 v0, 0x0

    .line 205
    :goto_c
    aget-wide v8, v7, v0

    move/from16 v27, v12

    move/from16 v29, v13

    not-long v12, v8

    const/16 v28, 0x7

    shl-long v12, v12, v28

    and-long/2addr v12, v8

    const-wide v23, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v12, v12, v23

    cmp-long v12, v12, v23

    if-eqz v12, :cond_16

    sub-int v12, v0, v5

    not-int v12, v12

    ushr-int/lit8 v12, v12, 0x1f

    const/16 v13, 0x8

    rsub-int/lit8 v12, v12, 0x8

    const/4 v13, 0x0

    :goto_d
    if-ge v13, v12, :cond_15

    const-wide/16 v19, 0xff

    and-long v30, v8, v19

    const-wide/16 v17, 0x80

    cmp-long v30, v30, v17

    if-gez v30, :cond_14

    shl-int/lit8 v30, v0, 0x3

    move-object/from16 v31, v7

    add-int v7, v30, v13

    .line 837
    aget-object v30, v6, v7

    move-object/from16 v32, v6

    move-object/from16 v6, v30

    check-cast v6, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 921
    invoke-virtual {v1, v6}, Landroidx/collection/ScatterSet;->contains(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_12

    invoke-virtual {v3, v6}, Landroidx/collection/ScatterSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 838
    :cond_12
    invoke-virtual {v15, v7}, Landroidx/collection/MutableScatterSet;->removeElementAt(I)V

    :cond_13
    :goto_e
    const/16 v6, 0x8

    goto :goto_f

    :cond_14
    move-object/from16 v32, v6

    move-object/from16 v31, v7

    goto :goto_e

    :goto_f
    shr-long/2addr v8, v6

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v7, v31

    move-object/from16 v6, v32

    goto :goto_d

    :cond_15
    move-object/from16 v32, v6

    move-object/from16 v31, v7

    const/16 v6, 0x8

    if-ne v12, v6, :cond_18

    goto :goto_10

    :cond_16
    move-object/from16 v32, v6

    move-object/from16 v31, v7

    :goto_10
    if-eq v0, v5, :cond_18

    add-int/lit8 v0, v0, 0x1

    move/from16 v12, v27

    move/from16 v13, v29

    move-object/from16 v7, v31

    move-object/from16 v6, v32

    goto :goto_c

    :cond_17
    move/from16 v27, v12

    move/from16 v29, v13

    .line 128
    :cond_18
    invoke-virtual {v15}, Landroidx/collection/ScatterSet;->isEmpty()Z

    move-result v0

    goto :goto_12

    :cond_19
    move-object/from16 v25, v5

    move-object/from16 v16, v7

    move/from16 p2, v8

    move/from16 v26, v9

    move/from16 v27, v12

    move/from16 v29, v13

    .line 131
    invoke-static {v15, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v15, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 921
    invoke-virtual {v1, v15}, Landroidx/collection/ScatterSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-virtual {v3, v15}, Landroidx/collection/ScatterSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_11

    :cond_1a
    const/4 v0, 0x0

    goto :goto_12

    :cond_1b
    :goto_11
    const/4 v0, 0x1

    :goto_12
    if-eqz v0, :cond_1c

    .line 845
    invoke-virtual {v2, v14}, Landroidx/collection/MutableScatterMap;->removeValueAt(I)Ljava/lang/Object;

    :cond_1c
    :goto_13
    const/16 v0, 0x8

    goto :goto_14

    :cond_1d
    move-object/from16 v25, v5

    move-object/from16 v16, v7

    move/from16 p2, v8

    move/from16 v26, v9

    move/from16 v27, v12

    move/from16 v29, v13

    goto :goto_13

    :goto_14
    shr-long/2addr v10, v0

    add-int/lit8 v13, v29, 0x1

    move-object/from16 v0, p0

    move/from16 v8, p2

    move-object/from16 v7, v16

    move-object/from16 v5, v25

    move/from16 v9, v26

    move/from16 v12, v27

    goto/16 :goto_b

    :cond_1e
    move-object/from16 v25, v5

    move-object/from16 v16, v7

    move/from16 p2, v8

    move/from16 v26, v9

    move v13, v12

    const/16 v0, 0x8

    if-ne v13, v0, :cond_20

    move/from16 v8, p2

    move/from16 v0, v26

    goto :goto_15

    :cond_1f
    move-object/from16 v25, v5

    move-object/from16 v16, v7

    move v0, v9

    :goto_15
    if-eq v0, v8, :cond_20

    add-int/lit8 v9, v0, 0x1

    move-object/from16 v0, p0

    move-object/from16 v7, v16

    move-object/from16 v5, v25

    goto/16 :goto_a

    .line 923
    :cond_20
    invoke-virtual {v1}, Landroidx/collection/MutableScatterSet;->clear()V

    .line 924
    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/CompositionImpl;->cleanUpDerivedStateObservations()V

    goto/16 :goto_23

    :cond_21
    move-object/from16 v25, v5

    .line 925
    invoke-virtual {v3}, Landroidx/collection/ScatterSet;->isNotEmpty()Z

    move-result v0

    if-eqz v0, :cond_30

    move-object/from16 v0, p0

    .line 926
    iget-object v1, v0, Landroidx/compose/runtime/CompositionImpl;->observations:Landroidx/collection/MutableScatterMap;

    .line 329
    iget-object v2, v1, Landroidx/collection/ScatterMap;->metadata:[J

    .line 330
    array-length v5, v2

    add-int/lit8 v5, v5, -0x2

    if-ltz v5, :cond_2f

    const/4 v6, 0x0

    .line 333
    :goto_16
    aget-wide v7, v2, v6

    not-long v9, v7

    const/4 v11, 0x7

    shl-long/2addr v9, v11

    and-long/2addr v9, v7

    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v9, v11

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2e

    sub-int v9, v6, v5

    not-int v9, v9

    ushr-int/lit8 v9, v9, 0x1f

    const/16 v10, 0x8

    rsub-int/lit8 v13, v9, 0x8

    const/4 v9, 0x0

    :goto_17
    if-ge v9, v13, :cond_2d

    const-wide/16 v10, 0xff

    and-long v14, v7, v10

    const-wide/16 v10, 0x80

    cmp-long v12, v14, v10

    if-gez v12, :cond_22

    const/4 v10, 0x1

    goto :goto_18

    :cond_22
    const/4 v10, 0x0

    :goto_18
    if-eqz v10, :cond_2c

    shl-int/lit8 v10, v6, 0x3

    add-int/2addr v10, v9

    .line 844
    iget-object v11, v1, Landroidx/collection/ScatterMap;->keys:[Ljava/lang/Object;

    aget-object v11, v11, v10

    iget-object v11, v1, Landroidx/collection/ScatterMap;->values:[Ljava/lang/Object;

    aget-object v11, v11, v10

    .line 125
    instance-of v12, v11, Landroidx/collection/MutableScatterSet;

    if-eqz v12, :cond_2a

    move-object/from16 v12, v25

    .line 126
    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Landroidx/collection/MutableScatterSet;

    .line 834
    iget-object v14, v11, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 201
    iget-object v15, v11, Landroidx/collection/ScatterSet;->metadata:[J

    .line 202
    array-length v0, v15

    add-int/lit8 v0, v0, -0x2

    move-object/from16 v16, v2

    move/from16 p2, v5

    move/from16 v25, v6

    if-ltz v0, :cond_28

    const/4 v2, 0x0

    .line 205
    :goto_19
    aget-wide v5, v15, v2

    move-object/from16 v27, v12

    move/from16 v26, v13

    not-long v12, v5

    const/16 v28, 0x7

    shl-long v12, v12, v28

    and-long/2addr v12, v5

    const-wide v23, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v12, v12, v23

    cmp-long v12, v12, v23

    if-eqz v12, :cond_27

    sub-int v12, v2, v0

    not-int v12, v12

    ushr-int/lit8 v12, v12, 0x1f

    const/16 v13, 0x8

    rsub-int/lit8 v12, v12, 0x8

    const/4 v13, 0x0

    :goto_1a
    if-ge v13, v12, :cond_26

    const-wide/16 v19, 0xff

    and-long v29, v5, v19

    const-wide/16 v17, 0x80

    cmp-long v29, v29, v17

    if-gez v29, :cond_23

    const/16 v29, 0x1

    goto :goto_1b

    :cond_23
    const/16 v29, 0x0

    :goto_1b
    if-eqz v29, :cond_25

    shl-int/lit8 v29, v2, 0x3

    move-object/from16 v30, v15

    add-int v15, v29, v13

    .line 837
    aget-object v29, v14, v15

    move-object/from16 v31, v14

    move-object/from16 v14, v29

    check-cast v14, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 926
    invoke-virtual {v3, v14}, Landroidx/collection/ScatterSet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_24

    .line 838
    invoke-virtual {v11, v15}, Landroidx/collection/MutableScatterSet;->removeElementAt(I)V

    :cond_24
    :goto_1c
    const/16 v14, 0x8

    goto :goto_1d

    :cond_25
    move-object/from16 v31, v14

    move-object/from16 v30, v15

    goto :goto_1c

    :goto_1d
    shr-long/2addr v5, v14

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v15, v30

    move-object/from16 v14, v31

    goto :goto_1a

    :cond_26
    move-object/from16 v31, v14

    move-object/from16 v30, v15

    const/16 v14, 0x8

    const-wide/16 v17, 0x80

    const-wide/16 v19, 0xff

    if-ne v12, v14, :cond_29

    goto :goto_1e

    :cond_27
    move-object/from16 v31, v14

    move-object/from16 v30, v15

    const-wide/16 v17, 0x80

    const-wide/16 v19, 0xff

    :goto_1e
    if-eq v2, v0, :cond_29

    add-int/lit8 v2, v2, 0x1

    move/from16 v13, v26

    move-object/from16 v12, v27

    move-object/from16 v15, v30

    move-object/from16 v14, v31

    goto :goto_19

    :cond_28
    move-object/from16 v27, v12

    move/from16 v26, v13

    const-wide/16 v17, 0x80

    const-wide/16 v19, 0xff

    const-wide v23, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/16 v28, 0x7

    .line 128
    :cond_29
    invoke-virtual {v11}, Landroidx/collection/ScatterSet;->isEmpty()Z

    move-result v0

    goto :goto_1f

    :cond_2a
    move-object/from16 v16, v2

    move/from16 p2, v5

    move/from16 v26, v13

    move-object/from16 v27, v25

    const-wide/16 v17, 0x80

    const-wide/16 v19, 0xff

    const-wide v23, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/16 v28, 0x7

    move/from16 v25, v6

    .line 131
    invoke-static {v11, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 926
    invoke-virtual {v3, v11}, Landroidx/collection/ScatterSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_1f
    if-eqz v0, :cond_2b

    .line 845
    invoke-virtual {v1, v10}, Landroidx/collection/MutableScatterMap;->removeValueAt(I)Ljava/lang/Object;

    :cond_2b
    :goto_20
    const/16 v0, 0x8

    goto :goto_21

    :cond_2c
    move-object/from16 v16, v2

    move/from16 p2, v5

    move/from16 v26, v13

    move-object/from16 v27, v25

    const-wide/16 v17, 0x80

    const-wide/16 v19, 0xff

    const-wide v23, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/16 v28, 0x7

    move/from16 v25, v6

    goto :goto_20

    :goto_21
    shr-long/2addr v7, v0

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    move/from16 v5, p2

    move-object/from16 v2, v16

    move/from16 v6, v25

    move/from16 v13, v26

    move-object/from16 v25, v27

    goto/16 :goto_17

    :cond_2d
    move-object/from16 v16, v2

    move/from16 p2, v5

    move-object/from16 v27, v25

    const/16 v0, 0x8

    const-wide/16 v17, 0x80

    const-wide/16 v19, 0xff

    const-wide v23, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/16 v28, 0x7

    move/from16 v25, v6

    if-ne v13, v0, :cond_2f

    move/from16 v5, p2

    move/from16 v2, v25

    goto :goto_22

    :cond_2e
    move-object/from16 v16, v2

    move-object/from16 v27, v25

    const/16 v0, 0x8

    const-wide/16 v17, 0x80

    const-wide/16 v19, 0xff

    const-wide v23, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/16 v28, 0x7

    move v2, v6

    :goto_22
    if-eq v2, v5, :cond_2f

    add-int/lit8 v6, v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, v16

    move-object/from16 v25, v27

    goto/16 :goto_16

    .line 927
    :cond_2f
    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/CompositionImpl;->cleanUpDerivedStateObservations()V

    .line 928
    invoke-virtual {v3}, Landroidx/collection/MutableScatterSet;->clear()V

    :cond_30
    :goto_23
    return-void
.end method

.method private final applyChangesInLocked(Landroidx/compose/runtime/changelist/ChangeList;)V
    .locals 30

    move-object/from16 v1, p0

    const/4 v0, 0x1

    .line 1023
    new-instance v2, Landroidx/compose/runtime/internal/RememberEventDispatcher;

    iget-object v3, v1, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/Set;

    invoke-direct {v2, v3}, Landroidx/compose/runtime/internal/RememberEventDispatcher;-><init>(Ljava/util/Set;)V

    .line 1025
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/changelist/ChangeList;->isEmpty()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v3, :cond_1

    .line 1055
    iget-object v0, v1, Landroidx/compose/runtime/CompositionImpl;->lateChanges:Landroidx/compose/runtime/changelist/ChangeList;

    invoke-virtual {v0}, Landroidx/compose/runtime/changelist/ChangeList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1056
    invoke-virtual {v2}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->dispatchAbandons()V

    :cond_0
    return-void

    .line 1026
    :cond_1
    :try_start_1
    const-string v3, "Compose:applyChanges"

    .line 45
    sget-object v4, Landroidx/compose/runtime/internal/Trace;->INSTANCE:Landroidx/compose/runtime/internal/Trace;

    invoke-virtual {v4, v3}, Landroidx/compose/runtime/internal/Trace;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 1027
    :try_start_2
    iget-object v5, v1, Landroidx/compose/runtime/CompositionImpl;->applier:Landroidx/compose/runtime/Applier;

    .line 1029
    invoke-interface {v5}, Landroidx/compose/runtime/Applier;->onBeginChanges()V

    .line 1032
    iget-object v6, v1, Landroidx/compose/runtime/CompositionImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    .line 166
    invoke-virtual {v6}, Landroidx/compose/runtime/SlotTable;->openWriter()Landroidx/compose/runtime/SlotWriter;

    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    const/4 v7, 0x0

    move-object/from16 v8, p1

    .line 1033
    :try_start_3
    invoke-virtual {v8, v5, v6, v2}, Landroidx/compose/runtime/changelist/ChangeList;->executeAndFlushAllPendingChanges(Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/RememberManager;)V

    .line 1034
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    .line 171
    :try_start_4
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/SlotWriter;->close(Z)V

    .line 1035
    invoke-interface {v5}, Landroidx/compose/runtime/Applier;->onEndChanges()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 49
    :try_start_5
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/internal/Trace;->endSection(Ljava/lang/Object;)V

    .line 1041
    invoke-virtual {v2}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->dispatchRememberObservers()V

    .line 1042
    invoke-virtual {v2}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->dispatchSideEffects()V

    .line 1044
    iget-boolean v3, v1, Landroidx/compose/runtime/CompositionImpl;->pendingInvalidScopes:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v3, :cond_10

    .line 1045
    :try_start_6
    const-string v3, "Compose:unobserve"

    .line 45
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/internal/Trace;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1046
    :try_start_7
    iput-boolean v7, v1, Landroidx/compose/runtime/CompositionImpl;->pendingInvalidScopes:Z

    .line 1047
    iget-object v4, v1, Landroidx/compose/runtime/CompositionImpl;->observations:Landroidx/collection/MutableScatterMap;

    .line 329
    iget-object v5, v4, Landroidx/collection/ScatterMap;->metadata:[J

    .line 330
    array-length v6, v5

    add-int/lit8 v6, v6, -0x2

    if-ltz v6, :cond_e

    move v8, v7

    .line 333
    :goto_0
    aget-wide v9, v5, v8

    not-long v11, v9

    const/4 v13, 0x7

    shl-long/2addr v11, v13

    and-long/2addr v11, v9

    const-wide v14, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v11, v14

    cmp-long v11, v11, v14

    if-eqz v11, :cond_d

    sub-int v11, v8, v6

    not-int v11, v11

    ushr-int/lit8 v11, v11, 0x1f

    const/16 v12, 0x8

    rsub-int/lit8 v11, v11, 0x8

    :goto_1
    if-ge v7, v11, :cond_c

    const-wide/16 v16, 0xff

    and-long v18, v9, v16

    const-wide/16 v20, 0x80

    cmp-long v18, v18, v20

    if-gez v18, :cond_b

    shl-int/lit8 v18, v8, 0x3

    add-int v0, v18, v7

    .line 844
    iget-object v12, v4, Landroidx/collection/ScatterMap;->keys:[Ljava/lang/Object;

    aget-object v12, v12, v0

    iget-object v12, v4, Landroidx/collection/ScatterMap;->values:[Ljava/lang/Object;

    aget-object v12, v12, v0

    .line 125
    instance-of v14, v12, Landroidx/collection/MutableScatterSet;

    if-eqz v14, :cond_8

    .line 126
    const-string v14, "null cannot be cast to non-null type androidx.collection.MutableScatterSet<Scope of androidx.compose.runtime.collection.ScopeMap.removeScopeIf_impl$lambda$2>"

    invoke-static {v12, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v12, Landroidx/collection/MutableScatterSet;

    .line 834
    iget-object v14, v12, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 201
    iget-object v15, v12, Landroidx/collection/ScatterSet;->metadata:[J

    .line 202
    array-length v13, v15
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    add-int/lit8 v13, v13, -0x2

    move-object/from16 v25, v2

    move-object/from16 v24, v5

    if-ltz v13, :cond_6

    const/4 v5, 0x0

    .line 205
    :goto_2
    :try_start_8
    aget-wide v1, v15, v5

    move/from16 v26, v6

    move/from16 v27, v7

    not-long v6, v1

    const/16 v18, 0x7

    shl-long v6, v6, v18

    and-long/2addr v6, v1

    const-wide v22, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v6, v6, v22

    cmp-long v6, v6, v22

    if-eqz v6, :cond_5

    sub-int v6, v5, v13

    not-int v6, v6

    ushr-int/lit8 v6, v6, 0x1f

    const/16 v7, 0x8

    rsub-int/lit8 v6, v6, 0x8

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v6, :cond_4

    and-long v28, v1, v16

    cmp-long v28, v28, v20

    if-gez v28, :cond_3

    shl-int/lit8 v28, v5, 0x3

    move-object/from16 v29, v15

    add-int v15, v28, v7

    .line 837
    aget-object v28, v14, v15

    check-cast v28, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 1047
    invoke-virtual/range {v28 .. v28}, Landroidx/compose/runtime/RecomposeScopeImpl;->getValid()Z

    move-result v28

    if-nez v28, :cond_2

    .line 838
    invoke-virtual {v12, v15}, Landroidx/collection/MutableScatterSet;->removeElementAt(I)V

    goto :goto_4

    :catchall_0
    move-exception v0

    goto/16 :goto_c

    :cond_2
    :goto_4
    const/16 v15, 0x8

    goto :goto_5

    :cond_3
    move-object/from16 v29, v15

    goto :goto_4

    :goto_5
    shr-long/2addr v1, v15

    const/16 v19, 0x1

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v15, v29

    goto :goto_3

    :cond_4
    move-object/from16 v29, v15

    const/16 v15, 0x8

    const/16 v19, 0x1

    if-ne v6, v15, :cond_7

    goto :goto_6

    :cond_5
    move-object/from16 v29, v15

    const/16 v19, 0x1

    :goto_6
    if-eq v5, v13, :cond_7

    add-int/lit8 v5, v5, 0x1

    move/from16 v6, v26

    move/from16 v7, v27

    move-object/from16 v15, v29

    goto :goto_2

    :cond_6
    move/from16 v26, v6

    move/from16 v27, v7

    const/16 v18, 0x7

    const-wide v22, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 128
    :cond_7
    invoke-virtual {v12}, Landroidx/collection/ScatterSet;->isEmpty()Z

    move-result v1

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object/from16 v25, v2

    goto/16 :goto_c

    :cond_8
    move-object/from16 v25, v2

    move-object/from16 v24, v5

    move/from16 v26, v6

    move/from16 v27, v7

    move/from16 v18, v13

    const-wide v22, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 131
    const-string v1, "null cannot be cast to non-null type Scope of androidx.compose.runtime.collection.ScopeMap.removeScopeIf_impl$lambda$2"

    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v12, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 1047
    invoke-virtual {v12}, Landroidx/compose/runtime/RecomposeScopeImpl;->getValid()Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_7

    :cond_9
    const/4 v1, 0x0

    :goto_7
    if-eqz v1, :cond_a

    .line 845
    invoke-virtual {v4, v0}, Landroidx/collection/MutableScatterMap;->removeValueAt(I)Ljava/lang/Object;

    :cond_a
    const/16 v0, 0x8

    goto :goto_8

    :cond_b
    move-object/from16 v25, v2

    move-object/from16 v24, v5

    move/from16 v26, v6

    move/from16 v27, v7

    move/from16 v18, v13

    move-wide/from16 v22, v14

    move v0, v12

    :goto_8
    shr-long/2addr v9, v0

    const/4 v1, 0x1

    add-int/lit8 v7, v27, 0x1

    move v12, v0

    move v0, v1

    move/from16 v13, v18

    move-wide/from16 v14, v22

    move-object/from16 v5, v24

    move-object/from16 v2, v25

    move/from16 v6, v26

    move-object/from16 v1, p0

    goto/16 :goto_1

    :cond_c
    move v1, v0

    move-object/from16 v25, v2

    move-object/from16 v24, v5

    move/from16 v26, v6

    move v0, v12

    if-ne v11, v0, :cond_f

    move/from16 v6, v26

    goto :goto_9

    :cond_d
    move v1, v0

    move-object/from16 v25, v2

    move-object/from16 v24, v5

    :goto_9
    if-eq v8, v6, :cond_f

    add-int/2addr v8, v1

    move v0, v1

    move-object/from16 v5, v24

    move-object/from16 v2, v25

    const/4 v7, 0x0

    move-object/from16 v1, p0

    goto/16 :goto_0

    :cond_e
    move-object/from16 v25, v2

    .line 1048
    :cond_f
    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/CompositionImpl;->cleanUpDerivedStateObservations()V

    .line 1049
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 49
    :try_start_9
    sget-object v0, Landroidx/compose/runtime/internal/Trace;->INSTANCE:Landroidx/compose/runtime/internal/Trace;

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/internal/Trace;->endSection(Ljava/lang/Object;)V

    :goto_a
    move-object/from16 v1, p0

    goto :goto_d

    :catchall_2
    move-exception v0

    :goto_b
    move-object/from16 v1, p0

    goto :goto_f

    :goto_c
    sget-object v1, Landroidx/compose/runtime/internal/Trace;->INSTANCE:Landroidx/compose/runtime/internal/Trace;

    invoke-virtual {v1, v3}, Landroidx/compose/runtime/internal/Trace;->endSection(Ljava/lang/Object;)V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_3
    move-exception v0

    move-object/from16 v25, v2

    goto :goto_b

    :cond_10
    move-object/from16 v25, v2

    goto :goto_a

    .line 1055
    :goto_d
    iget-object v0, v1, Landroidx/compose/runtime/CompositionImpl;->lateChanges:Landroidx/compose/runtime/changelist/ChangeList;

    invoke-virtual {v0}, Landroidx/compose/runtime/changelist/ChangeList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1056
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->dispatchAbandons()V

    :cond_11
    return-void

    :catchall_4
    move-exception v0

    move-object/from16 v25, v2

    goto :goto_f

    :catchall_5
    move-exception v0

    move-object/from16 v25, v2

    goto :goto_e

    :catchall_6
    move-exception v0

    move-object/from16 v25, v2

    const/4 v2, 0x0

    .line 171
    :try_start_a
    invoke-virtual {v6, v2}, Landroidx/compose/runtime/SlotWriter;->close(Z)V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    :catchall_7
    move-exception v0

    .line 49
    :goto_e
    :try_start_b
    sget-object v2, Landroidx/compose/runtime/internal/Trace;->INSTANCE:Landroidx/compose/runtime/internal/Trace;

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/internal/Trace;->endSection(Ljava/lang/Object;)V

    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    :catchall_8
    move-exception v0

    .line 1055
    :goto_f
    iget-object v1, v1, Landroidx/compose/runtime/CompositionImpl;->lateChanges:Landroidx/compose/runtime/changelist/ChangeList;

    invoke-virtual {v1}, Landroidx/compose/runtime/changelist/ChangeList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1056
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->dispatchAbandons()V

    :cond_12
    throw v0
.end method

.method private final cleanUpDerivedStateObservations()V
    .locals 30

    move-object/from16 v0, p0

    .line 933
    iget-object v1, v0, Landroidx/compose/runtime/CompositionImpl;->derivedStates:Landroidx/collection/MutableScatterMap;

    .line 329
    iget-object v2, v1, Landroidx/collection/ScatterMap;->metadata:[J

    .line 330
    array-length v3, v2

    add-int/lit8 v3, v3, -0x2

    const/4 v8, 0x7

    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/16 v12, 0x8

    if-ltz v3, :cond_c

    const/4 v14, 0x0

    .line 333
    :goto_0
    aget-wide v4, v2, v14

    not-long v6, v4

    shl-long/2addr v6, v8

    and-long/2addr v6, v4

    and-long/2addr v6, v9

    cmp-long v6, v6, v9

    if-eqz v6, :cond_b

    sub-int v6, v14, v3

    not-int v6, v6

    ushr-int/lit8 v6, v6, 0x1f

    rsub-int/lit8 v6, v6, 0x8

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_a

    const-wide/16 v17, 0xff

    and-long v19, v4, v17

    const-wide/16 v15, 0x80

    cmp-long v19, v19, v15

    if-gez v19, :cond_9

    shl-int/lit8 v19, v14, 0x3

    add-int v11, v19, v7

    .line 844
    iget-object v13, v1, Landroidx/collection/ScatterMap;->keys:[Ljava/lang/Object;

    aget-object v13, v13, v11

    iget-object v13, v1, Landroidx/collection/ScatterMap;->values:[Ljava/lang/Object;

    aget-object v13, v13, v11

    .line 125
    instance-of v15, v13, Landroidx/collection/MutableScatterSet;

    if-eqz v15, :cond_6

    .line 126
    const-string v15, "null cannot be cast to non-null type androidx.collection.MutableScatterSet<Scope of androidx.compose.runtime.collection.ScopeMap.removeScopeIf_impl$lambda$2>"

    invoke-static {v13, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v13, Landroidx/collection/MutableScatterSet;

    .line 834
    iget-object v15, v13, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 201
    iget-object v12, v13, Landroidx/collection/ScatterSet;->metadata:[J

    .line 202
    array-length v9, v12

    add-int/lit8 v9, v9, -0x2

    move-object/from16 v25, v2

    move/from16 v26, v3

    if-ltz v9, :cond_4

    const/4 v10, 0x0

    .line 205
    :goto_2
    aget-wide v2, v12, v10

    move/from16 v27, v14

    move-object/from16 v16, v15

    not-long v14, v2

    shl-long/2addr v14, v8

    and-long/2addr v14, v2

    const-wide v23, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v14, v14, v23

    cmp-long v14, v14, v23

    if-eqz v14, :cond_3

    sub-int v14, v10, v9

    not-int v14, v14

    ushr-int/lit8 v14, v14, 0x1f

    const/16 v15, 0x8

    rsub-int/lit8 v14, v14, 0x8

    const/4 v15, 0x0

    :goto_3
    if-ge v15, v14, :cond_2

    const-wide/16 v17, 0xff

    and-long v28, v2, v17

    const-wide/16 v21, 0x80

    cmp-long v28, v28, v21

    move/from16 v22, v15

    move-object/from16 v21, v16

    if-gez v28, :cond_1

    shl-int/lit8 v28, v10, 0x3

    add-int v15, v28, v22

    .line 837
    aget-object v16, v21, v15

    move-object/from16 v8, v16

    check-cast v8, Landroidx/compose/runtime/DerivedState;

    move-object/from16 v16, v12

    .line 933
    invoke-static/range {p0 .. p0}, Landroidx/compose/runtime/CompositionImpl;->access$getObservations$p(Landroidx/compose/runtime/CompositionImpl;)Landroidx/collection/MutableScatterMap;

    move-result-object v12

    invoke-static {v12, v8}, Landroidx/compose/runtime/collection/ScopeMap;->contains-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 838
    invoke-virtual {v13, v15}, Landroidx/collection/MutableScatterSet;->removeElementAt(I)V

    :cond_0
    :goto_4
    const/16 v8, 0x8

    goto :goto_5

    :cond_1
    move-object/from16 v16, v12

    goto :goto_4

    :goto_5
    shr-long/2addr v2, v8

    add-int/lit8 v15, v22, 0x1

    move-object/from16 v12, v16

    move-object/from16 v16, v21

    const/4 v8, 0x7

    goto :goto_3

    :cond_2
    move-object/from16 v21, v16

    const/16 v8, 0x8

    move-object/from16 v16, v12

    if-ne v14, v8, :cond_5

    goto :goto_6

    :cond_3
    move-object/from16 v21, v16

    move-object/from16 v16, v12

    :goto_6
    if-eq v10, v9, :cond_5

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v12, v16

    move-object/from16 v15, v21

    move/from16 v14, v27

    const/4 v8, 0x7

    goto :goto_2

    :cond_4
    move/from16 v27, v14

    .line 128
    :cond_5
    invoke-virtual {v13}, Landroidx/collection/ScatterSet;->isEmpty()Z

    move-result v2

    goto :goto_7

    :cond_6
    move-object/from16 v25, v2

    move/from16 v26, v3

    move/from16 v27, v14

    .line 131
    const-string v2, "null cannot be cast to non-null type Scope of androidx.compose.runtime.collection.ScopeMap.removeScopeIf_impl$lambda$2"

    invoke-static {v13, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v13, Landroidx/compose/runtime/DerivedState;

    .line 933
    invoke-static/range {p0 .. p0}, Landroidx/compose/runtime/CompositionImpl;->access$getObservations$p(Landroidx/compose/runtime/CompositionImpl;)Landroidx/collection/MutableScatterMap;

    move-result-object v2

    invoke-static {v2, v13}, Landroidx/compose/runtime/collection/ScopeMap;->contains-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    :goto_7
    if-eqz v2, :cond_8

    .line 845
    invoke-virtual {v1, v11}, Landroidx/collection/MutableScatterMap;->removeValueAt(I)Ljava/lang/Object;

    :cond_8
    const/16 v2, 0x8

    goto :goto_8

    :cond_9
    move-object/from16 v25, v2

    move/from16 v26, v3

    move/from16 v27, v14

    move v2, v12

    :goto_8
    shr-long/2addr v4, v2

    add-int/lit8 v7, v7, 0x1

    move v12, v2

    move-object/from16 v2, v25

    move/from16 v3, v26

    move/from16 v14, v27

    const/4 v8, 0x7

    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    goto/16 :goto_1

    :cond_a
    move-object/from16 v25, v2

    move/from16 v26, v3

    move v2, v12

    move/from16 v27, v14

    if-ne v6, v2, :cond_c

    move/from16 v3, v26

    move/from16 v13, v27

    goto :goto_9

    :cond_b
    move-object/from16 v25, v2

    move v13, v14

    :goto_9
    if-eq v13, v3, :cond_c

    add-int/lit8 v14, v13, 0x1

    move-object/from16 v2, v25

    const/4 v8, 0x7

    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/16 v12, 0x8

    goto/16 :goto_0

    .line 934
    :cond_c
    iget-object v1, v0, Landroidx/compose/runtime/CompositionImpl;->conditionallyInvalidatedScopes:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v1}, Landroidx/collection/ScatterSet;->isNotEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 935
    iget-object v0, v0, Landroidx/compose/runtime/CompositionImpl;->conditionallyInvalidatedScopes:Landroidx/collection/MutableScatterSet;

    .line 834
    iget-object v1, v0, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 201
    iget-object v2, v0, Landroidx/collection/ScatterSet;->metadata:[J

    .line 202
    array-length v3, v2

    add-int/lit8 v3, v3, -0x2

    if-ltz v3, :cond_11

    const/4 v4, 0x0

    .line 205
    :goto_a
    aget-wide v5, v2, v4

    not-long v7, v5

    const/4 v9, 0x7

    shl-long/2addr v7, v9

    and-long/2addr v7, v5

    const-wide v10, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v7, v10

    cmp-long v7, v7, v10

    if-eqz v7, :cond_10

    sub-int v7, v4, v3

    not-int v7, v7

    ushr-int/lit8 v7, v7, 0x1f

    const/16 v8, 0x8

    rsub-int/lit8 v12, v7, 0x8

    const/4 v7, 0x0

    :goto_b
    if-ge v7, v12, :cond_f

    const-wide/16 v13, 0xff

    and-long v15, v5, v13

    const-wide/16 v17, 0x80

    cmp-long v8, v15, v17

    if-gez v8, :cond_d

    const/4 v8, 0x1

    goto :goto_c

    :cond_d
    const/4 v8, 0x0

    :goto_c
    if-eqz v8, :cond_e

    shl-int/lit8 v8, v4, 0x3

    add-int/2addr v8, v7

    .line 837
    aget-object v15, v1, v8

    check-cast v15, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 935
    invoke-virtual {v15}, Landroidx/compose/runtime/RecomposeScopeImpl;->isConditional()Z

    move-result v15

    if-nez v15, :cond_e

    .line 838
    invoke-virtual {v0, v8}, Landroidx/collection/MutableScatterSet;->removeElementAt(I)V

    :cond_e
    const/16 v8, 0x8

    shr-long/2addr v5, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    :cond_f
    const/16 v8, 0x8

    const-wide/16 v13, 0xff

    const-wide/16 v17, 0x80

    if-ne v12, v8, :cond_11

    goto :goto_d

    :cond_10
    const/16 v8, 0x8

    const-wide/16 v13, 0xff

    const-wide/16 v17, 0x80

    :goto_d
    if-eq v4, v3, :cond_11

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_11
    return-void
.end method

.method private final composeInitial(Lkotlin/jvm/functions/Function2;)V
    .locals 1

    .line 672
    iget-boolean v0, p0, Landroidx/compose/runtime/CompositionImpl;->disposed:Z

    if-eqz v0, :cond_0

    const-string v0, "The composition is disposed"

    .line 50
    invoke-static {v0}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 673
    :cond_0
    iput-object p1, p0, Landroidx/compose/runtime/CompositionImpl;->composable:Lkotlin/jvm/functions/Function2;

    .line 674
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->parent:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {v0, p0, p1}, Landroidx/compose/runtime/CompositionContext;->composeInitial$runtime_release(Landroidx/compose/runtime/ControlledComposition;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method private final drainPendingModificationsForCompositionLocked()V
    .locals 5

    .line 715
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->pendingModifications:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Landroidx/compose/runtime/CompositionKt;->access$getPendingApplyNoModifications$p()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 719
    invoke-static {}, Landroidx/compose/runtime/CompositionKt;->access$getPendingApplyNoModifications$p()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 722
    instance-of v1, v0, Ljava/util/Set;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 723
    check-cast v0, Ljava/util/Set;

    invoke-direct {p0, v0, v2}, Landroidx/compose/runtime/CompositionImpl;->addPendingInvalidationsLocked(Ljava/util/Set;Z)V

    goto :goto_1

    .line 725
    :cond_0
    instance-of v1, v0, [Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 726
    check-cast v0, [Ljava/util/Set;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 727
    invoke-direct {p0, v4, v2}, Landroidx/compose/runtime/CompositionImpl;->addPendingInvalidationsLocked(Ljava/util/Set;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 729
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "corrupt pendingModifications drain: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/compose/runtime/CompositionImpl;->pendingModifications:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    .line 720
    :cond_2
    const-string p0, "pending composition has not been applied"

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    :cond_3
    :goto_1
    return-void
.end method

.method private final drainPendingModificationsLocked()V
    .locals 5

    .line 735
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->pendingModifications:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 736
    invoke-static {}, Landroidx/compose/runtime/CompositionKt;->access$getPendingApplyNoModifications$p()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 739
    instance-of v1, v0, Ljava/util/Set;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 740
    check-cast v0, Ljava/util/Set;

    invoke-direct {p0, v0, v2}, Landroidx/compose/runtime/CompositionImpl;->addPendingInvalidationsLocked(Ljava/util/Set;Z)V

    goto :goto_1

    .line 742
    :cond_0
    instance-of v1, v0, [Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 743
    check-cast v0, [Ljava/util/Set;

    array-length v1, v0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 744
    invoke-direct {p0, v4, v2}, Landroidx/compose/runtime/CompositionImpl;->addPendingInvalidationsLocked(Ljava/util/Set;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 748
    const-string p0, "calling recordModificationsOf and applyChanges concurrently is not supported"

    .line 747
    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    .line 750
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "corrupt pendingModifications drain: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/compose/runtime/CompositionImpl;->pendingModifications:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    :cond_3
    :goto_1
    return-void
.end method

.method private final drainPendingModificationsOutOfBandLocked()V
    .locals 5

    .line 758
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->pendingModifications:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 759
    invoke-static {}, Landroidx/compose/runtime/CompositionKt;->access$getPendingApplyNoModifications$p()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    if-nez v0, :cond_1

    goto :goto_1

    .line 763
    :cond_1
    instance-of v1, v0, Ljava/util/Set;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 764
    check-cast v0, Ljava/util/Set;

    invoke-direct {p0, v0, v2}, Landroidx/compose/runtime/CompositionImpl;->addPendingInvalidationsLocked(Ljava/util/Set;Z)V

    goto :goto_1

    .line 766
    :cond_2
    instance-of v1, v0, [Ljava/lang/Object;

    if-eqz v1, :cond_4

    .line 767
    check-cast v0, [Ljava/util/Set;

    array-length v1, v0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 768
    invoke-direct {p0, v4, v2}, Landroidx/compose/runtime/CompositionImpl;->addPendingInvalidationsLocked(Ljava/util/Set;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void

    .line 770
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "corrupt pendingModifications drain: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/compose/runtime/CompositionImpl;->pendingModifications:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method private final getAreChildrenComposing()Z
    .locals 0

    .line 592
    iget-object p0, p0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getAreChildrenComposing$runtime_release()Z

    move-result p0

    return p0
.end method

.method private final invalidateChecked(Landroidx/compose/runtime/RecomposeScopeImpl;Landroidx/compose/runtime/Anchor;Ljava/lang/Object;)Landroidx/compose/runtime/InvalidationResult;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 1198
    iget-object v4, v0, Landroidx/compose/runtime/CompositionImpl;->lock:Ljava/lang/Object;

    .line 27
    monitor-enter v4

    .line 1200
    :try_start_0
    iget-object v5, v0, Landroidx/compose/runtime/CompositionImpl;->invalidationDelegate:Landroidx/compose/runtime/CompositionImpl;

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    .line 1211
    iget-object v7, v0, Landroidx/compose/runtime/CompositionImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    iget v8, v0, Landroidx/compose/runtime/CompositionImpl;->invalidationDelegateGroup:I

    invoke-virtual {v7, v8, v2}, Landroidx/compose/runtime/SlotTable;->groupContainsAnchor(ILandroidx/compose/runtime/Anchor;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_0
    move-object v5, v6

    :goto_0
    move-object v6, v5

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_1
    :goto_1
    if-nez v6, :cond_b

    .line 1216
    invoke-direct {v0, v1, v3}, Landroidx/compose/runtime/CompositionImpl;->tryImminentInvalidation(Landroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1218
    sget-object v0, Landroidx/compose/runtime/InvalidationResult;->IMMINENT:Landroidx/compose/runtime/InvalidationResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    return-object v0

    .line 1223
    :cond_2
    :try_start_1
    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/CompositionImpl;->observer()Landroidx/compose/runtime/tooling/CompositionObserver;

    if-nez v3, :cond_3

    .line 1227
    iget-object v5, v0, Landroidx/compose/runtime/CompositionImpl;->invalidations:Landroidx/collection/MutableScatterMap;

    sget-object v7, Landroidx/compose/runtime/ScopeInvalidated;->INSTANCE:Landroidx/compose/runtime/ScopeInvalidated;

    invoke-static {v5, v1, v7}, Landroidx/compose/runtime/collection/ScopeMap;->set-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 1228
    :cond_3
    instance-of v5, v3, Landroidx/compose/runtime/DerivedState;

    if-nez v5, :cond_4

    .line 1232
    iget-object v5, v0, Landroidx/compose/runtime/CompositionImpl;->invalidations:Landroidx/collection/MutableScatterMap;

    sget-object v7, Landroidx/compose/runtime/ScopeInvalidated;->INSTANCE:Landroidx/compose/runtime/ScopeInvalidated;

    invoke-static {v5, v1, v7}, Landroidx/compose/runtime/collection/ScopeMap;->set-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 1234
    :cond_4
    iget-object v5, v0, Landroidx/compose/runtime/CompositionImpl;->invalidations:Landroidx/collection/MutableScatterMap;

    .line 67
    invoke-virtual {v5, v1}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 71
    instance-of v7, v5, Landroidx/collection/MutableScatterSet;

    if-eqz v7, :cond_9

    .line 72
    check-cast v5, Landroidx/collection/MutableScatterSet;

    .line 232
    iget-object v7, v5, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 201
    iget-object v5, v5, Landroidx/collection/ScatterSet;->metadata:[J

    .line 202
    array-length v8, v5

    add-int/lit8 v8, v8, -0x2

    if-ltz v8, :cond_a

    const/4 v10, 0x0

    .line 205
    :goto_2
    aget-wide v11, v5, v10

    not-long v13, v11

    const/4 v15, 0x7

    shl-long/2addr v13, v15

    and-long/2addr v13, v11

    const-wide v15, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v13, v15

    cmp-long v13, v13, v15

    if-eqz v13, :cond_8

    sub-int v13, v10, v8

    not-int v13, v13

    ushr-int/lit8 v13, v13, 0x1f

    const/16 v14, 0x8

    rsub-int/lit8 v13, v13, 0x8

    const/4 v15, 0x0

    :goto_3
    if-ge v15, v13, :cond_7

    const-wide/16 v16, 0xff

    and-long v16, v11, v16

    const-wide/16 v18, 0x80

    cmp-long v16, v16, v18

    if-gez v16, :cond_6

    shl-int/lit8 v16, v10, 0x3

    add-int v16, v16, v15

    .line 233
    aget-object v9, v7, v16

    .line 1234
    sget-object v14, Landroidx/compose/runtime/ScopeInvalidated;->INSTANCE:Landroidx/compose/runtime/ScopeInvalidated;

    if-ne v9, v14, :cond_5

    goto :goto_5

    :cond_5
    const/16 v9, 0x8

    goto :goto_4

    :cond_6
    move v9, v14

    :goto_4
    shr-long/2addr v11, v9

    add-int/lit8 v15, v15, 0x1

    move v14, v9

    goto :goto_3

    :cond_7
    move v9, v14

    if-ne v13, v9, :cond_a

    :cond_8
    if-eq v10, v8, :cond_a

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_9
    sget-object v7, Landroidx/compose/runtime/ScopeInvalidated;->INSTANCE:Landroidx/compose/runtime/ScopeInvalidated;

    if-ne v5, v7, :cond_a

    goto :goto_5

    .line 1235
    :cond_a
    iget-object v5, v0, Landroidx/compose/runtime/CompositionImpl;->invalidations:Landroidx/collection/MutableScatterMap;

    invoke-static {v5, v1, v3}, Landroidx/compose/runtime/collection/ScopeMap;->add-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    :cond_b
    :goto_5
    monitor-exit v4

    if-eqz v6, :cond_c

    .line 1244
    invoke-direct {v6, v1, v2, v3}, Landroidx/compose/runtime/CompositionImpl;->invalidateChecked(Landroidx/compose/runtime/RecomposeScopeImpl;Landroidx/compose/runtime/Anchor;Ljava/lang/Object;)Landroidx/compose/runtime/InvalidationResult;

    move-result-object v0

    return-object v0

    .line 1246
    :cond_c
    iget-object v1, v0, Landroidx/compose/runtime/CompositionImpl;->parent:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/CompositionContext;->invalidate$runtime_release(Landroidx/compose/runtime/ControlledComposition;)V

    .line 1247
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/CompositionImpl;->isComposing()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Landroidx/compose/runtime/InvalidationResult;->DEFERRED:Landroidx/compose/runtime/InvalidationResult;

    goto :goto_6

    :cond_d
    sget-object v0, Landroidx/compose/runtime/InvalidationResult;->SCHEDULED:Landroidx/compose/runtime/InvalidationResult;

    :goto_6
    return-object v0

    .line 27
    :goto_7
    monitor-exit v4

    throw v0
.end method

.method private final invalidateScopeOfLocked(Ljava/lang/Object;)V
    .locals 14

    .line 971
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->observations:Landroidx/collection/MutableScatterMap;

    .line 67
    invoke-virtual {v0, p1}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 71
    instance-of v1, v0, Landroidx/collection/MutableScatterSet;

    if-eqz v1, :cond_3

    .line 72
    check-cast v0, Landroidx/collection/MutableScatterSet;

    .line 232
    iget-object v1, v0, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 201
    iget-object v0, v0, Landroidx/collection/ScatterSet;->metadata:[J

    .line 202
    array-length v2, v0

    add-int/lit8 v2, v2, -0x2

    if-ltz v2, :cond_4

    const/4 v3, 0x0

    move v4, v3

    .line 205
    :goto_0
    aget-wide v5, v0, v4

    not-long v7, v5

    const/4 v9, 0x7

    shl-long/2addr v7, v9

    and-long/2addr v7, v5

    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v7, v9

    cmp-long v7, v7, v9

    if-eqz v7, :cond_2

    sub-int v7, v4, v2

    not-int v7, v7

    ushr-int/lit8 v7, v7, 0x1f

    const/16 v8, 0x8

    rsub-int/lit8 v7, v7, 0x8

    move v9, v3

    :goto_1
    if-ge v9, v7, :cond_1

    const-wide/16 v10, 0xff

    and-long/2addr v10, v5

    const-wide/16 v12, 0x80

    cmp-long v10, v10, v12

    if-gez v10, :cond_0

    shl-int/lit8 v10, v4, 0x3

    add-int/2addr v10, v9

    .line 233
    aget-object v10, v1, v10

    check-cast v10, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 972
    invoke-virtual {v10, p1}, Landroidx/compose/runtime/RecomposeScopeImpl;->invalidateForResult(Ljava/lang/Object;)Landroidx/compose/runtime/InvalidationResult;

    move-result-object v11

    sget-object v12, Landroidx/compose/runtime/InvalidationResult;->IMMINENT:Landroidx/compose/runtime/InvalidationResult;

    if-ne v11, v12, :cond_0

    .line 974
    iget-object v11, p0, Landroidx/compose/runtime/CompositionImpl;->observationsProcessed:Landroidx/collection/MutableScatterMap;

    invoke-static {v11, p1, v10}, Landroidx/compose/runtime/collection/ScopeMap;->add-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    shr-long/2addr v5, v8

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    if-ne v7, v8, :cond_4

    :cond_2
    if-eq v4, v2, :cond_4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 75
    :cond_3
    check-cast v0, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 972
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/RecomposeScopeImpl;->invalidateForResult(Ljava/lang/Object;)Landroidx/compose/runtime/InvalidationResult;

    move-result-object v1

    sget-object v2, Landroidx/compose/runtime/InvalidationResult;->IMMINENT:Landroidx/compose/runtime/InvalidationResult;

    if-ne v1, v2, :cond_4

    .line 974
    iget-object p0, p0, Landroidx/compose/runtime/CompositionImpl;->observationsProcessed:Landroidx/collection/MutableScatterMap;

    invoke-static {p0, p1, v0}, Landroidx/compose/runtime/collection/ScopeMap;->add-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method private final observer()Landroidx/compose/runtime/tooling/CompositionObserver;
    .locals 3

    .line 1300
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->observerHolder:Landroidx/compose/runtime/CompositionObserverHolder;

    .line 1302
    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionObserverHolder;->getRoot()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1303
    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionObserverHolder;->getObserver()Landroidx/compose/runtime/tooling/CompositionObserver;

    goto :goto_0

    .line 1305
    :cond_0
    iget-object p0, p0, Landroidx/compose/runtime/CompositionImpl;->parent:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {p0}, Landroidx/compose/runtime/CompositionContext;->getObserverHolder$runtime_release()Landroidx/compose/runtime/CompositionObserverHolder;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1306
    invoke-virtual {p0}, Landroidx/compose/runtime/CompositionObserverHolder;->getObserver()Landroidx/compose/runtime/tooling/CompositionObserver;

    .line 1307
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionObserverHolder;->getObserver()Landroidx/compose/runtime/tooling/CompositionObserver;

    invoke-static {v2, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 1308
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/CompositionObserverHolder;->setObserver(Landroidx/compose/runtime/tooling/CompositionObserver;)V

    :cond_2
    :goto_0
    return-object v2
.end method

.method private final takeInvalidations-afanTW4()Landroidx/collection/MutableScatterMap;
    .locals 3

    .line 1266
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->invalidations:Landroidx/collection/MutableScatterMap;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1267
    invoke-static {v1, v2, v1}, Landroidx/compose/runtime/collection/ScopeMap;->constructor-impl$default(Landroidx/collection/MutableScatterMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)Landroidx/collection/MutableScatterMap;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->invalidations:Landroidx/collection/MutableScatterMap;

    return-object v0
.end method

.method private final tryImminentInvalidation(Landroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)Z
    .locals 1

    .line 1190
    invoke-virtual {p0}, Landroidx/compose/runtime/CompositionImpl;->isComposing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/ComposerImpl;->tryImminentInvalidation$runtime_release(Landroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public abandonChanges()V
    .locals 2

    .line 1115
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->pendingModifications:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1116
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->changes:Landroidx/compose/runtime/changelist/ChangeList;

    invoke-virtual {v0}, Landroidx/compose/runtime/changelist/ChangeList;->clear()V

    .line 1117
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->lateChanges:Landroidx/compose/runtime/changelist/ChangeList;

    invoke-virtual {v0}, Landroidx/compose/runtime/changelist/ChangeList;->clear()V

    .line 1119
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/Set;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1120
    new-instance v0, Landroidx/compose/runtime/internal/RememberEventDispatcher;

    iget-object p0, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/Set;

    invoke-direct {v0, p0}, Landroidx/compose/runtime/internal/RememberEventDispatcher;-><init>(Ljava/util/Set;)V

    invoke-virtual {v0}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->dispatchAbandons()V

    :cond_0
    return-void
.end method

.method public applyChanges()V
    .locals 4

    .line 1062
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->lock:Ljava/lang/Object;

    .line 27
    monitor-enter v0

    .line 1064
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->changes:Landroidx/compose/runtime/changelist/ChangeList;

    invoke-direct {p0, v1}, Landroidx/compose/runtime/CompositionImpl;->applyChangesInLocked(Landroidx/compose/runtime/changelist/ChangeList;)V

    .line 1065
    invoke-direct {p0}, Landroidx/compose/runtime/CompositionImpl;->drainPendingModificationsLocked()V

    .line 1066
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 1293
    :try_start_1
    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/Set;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1294
    new-instance v2, Landroidx/compose/runtime/internal/RememberEventDispatcher;

    iget-object v3, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/Set;

    invoke-direct {v2, v3}, Landroidx/compose/runtime/internal/RememberEventDispatcher;-><init>(Ljava/util/Set;)V

    invoke-virtual {v2}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->dispatchAbandons()V

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    throw v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1110
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Landroidx/compose/runtime/CompositionImpl;->abandonChanges()V

    .line 1111
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 27
    :goto_2
    monitor-exit v0

    throw p0
.end method

.method public applyLateChanges()V
    .locals 4

    .line 1071
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->lock:Ljava/lang/Object;

    .line 27
    monitor-enter v0

    .line 1073
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->lateChanges:Landroidx/compose/runtime/changelist/ChangeList;

    invoke-virtual {v1}, Landroidx/compose/runtime/changelist/ChangeList;->isNotEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1074
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->lateChanges:Landroidx/compose/runtime/changelist/ChangeList;

    invoke-direct {p0, v1}, Landroidx/compose/runtime/CompositionImpl;->applyChangesInLocked(Landroidx/compose/runtime/changelist/ChangeList;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1076
    :cond_0
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    monitor-exit v0

    return-void

    .line 1293
    :goto_1
    :try_start_1
    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/Set;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1294
    new-instance v2, Landroidx/compose/runtime/internal/RememberEventDispatcher;

    iget-object v3, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/Set;

    invoke-direct {v2, v3}, Landroidx/compose/runtime/internal/RememberEventDispatcher;-><init>(Ljava/util/Set;)V

    invoke-virtual {v2}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->dispatchAbandons()V

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception v1

    goto :goto_3

    :cond_1
    :goto_2
    throw v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1110
    :goto_3
    :try_start_2
    invoke-virtual {p0}, Landroidx/compose/runtime/CompositionImpl;->abandonChanges()V

    .line 1111
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 27
    :goto_4
    monitor-exit v0

    throw p0
.end method

.method public changesApplied()V
    .locals 4

    .line 1081
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->lock:Ljava/lang/Object;

    .line 27
    monitor-enter v0

    .line 1083
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->changesApplied$runtime_release()V

    .line 1087
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/Set;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1088
    new-instance v1, Landroidx/compose/runtime/internal/RememberEventDispatcher;

    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/Set;

    invoke-direct {v1, v2}, Landroidx/compose/runtime/internal/RememberEventDispatcher;-><init>(Ljava/util/Set;)V

    invoke-virtual {v1}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->dispatchAbandons()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1090
    :cond_0
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    monitor-exit v0

    return-void

    .line 1293
    :goto_1
    :try_start_1
    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/Set;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1294
    new-instance v2, Landroidx/compose/runtime/internal/RememberEventDispatcher;

    iget-object v3, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/Set;

    invoke-direct {v2, v3}, Landroidx/compose/runtime/internal/RememberEventDispatcher;-><init>(Ljava/util/Set;)V

    invoke-virtual {v2}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->dispatchAbandons()V

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception v1

    goto :goto_3

    :cond_1
    :goto_2
    throw v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1110
    :goto_3
    :try_start_2
    invoke-virtual {p0}, Landroidx/compose/runtime/CompositionImpl;->abandonChanges()V

    .line 1111
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 27
    :goto_4
    monitor-exit v0

    throw p0
.end method

.method public composeContent(Lkotlin/jvm/functions/Function2;)V
    .locals 4

    .line 778
    :try_start_0
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->lock:Ljava/lang/Object;

    .line 27
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 779
    :try_start_1
    invoke-direct {p0}, Landroidx/compose/runtime/CompositionImpl;->drainPendingModificationsForCompositionLocked()V

    .line 1097
    invoke-direct {p0}, Landroidx/compose/runtime/CompositionImpl;->takeInvalidations-afanTW4()Landroidx/collection/MutableScatterMap;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 781
    :try_start_2
    invoke-direct {p0}, Landroidx/compose/runtime/CompositionImpl;->observer()Landroidx/compose/runtime/tooling/CompositionObserver;

    .line 789
    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    iget-object v3, p0, Landroidx/compose/runtime/CompositionImpl;->shouldPause:Lkotlin/jvm/functions/Function0;

    invoke-virtual {v2, v1, p1, v3}, Landroidx/compose/runtime/ComposerImpl;->composeContent--ZbOJvo$runtime_release(Landroidx/collection/MutableScatterMap;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 27
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1101
    :try_start_4
    iput-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->invalidations:Landroidx/collection/MutableScatterMap;

    .line 1102
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 27
    :goto_0
    :try_start_5
    monitor-exit v0

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1293
    :goto_1
    :try_start_6
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/Set;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1294
    new-instance v0, Landroidx/compose/runtime/internal/RememberEventDispatcher;

    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/Set;

    invoke-direct {v0, v1}, Landroidx/compose/runtime/internal/RememberEventDispatcher;-><init>(Ljava/util/Set;)V

    invoke-virtual {v0}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->dispatchAbandons()V

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_3

    :cond_0
    :goto_2
    throw p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 1110
    :goto_3
    invoke-virtual {p0}, Landroidx/compose/runtime/CompositionImpl;->abandonChanges()V

    .line 1111
    throw p1
.end method

.method public deactivate()V
    .locals 8

    .line 1315
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->lock:Ljava/lang/Object;

    .line 27
    monitor-enter v0

    .line 1316
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v1}, Landroidx/compose/runtime/SlotTable;->getGroupsSize()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-nez v1, :cond_1

    .line 1317
    iget-object v4, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/Set;

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_4

    .line 1318
    :cond_1
    :goto_1
    const-string v4, "Compose:deactivate"

    .line 45
    sget-object v5, Landroidx/compose/runtime/internal/Trace;->INSTANCE:Landroidx/compose/runtime/internal/Trace;

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/internal/Trace;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1319
    :try_start_1
    new-instance v6, Landroidx/compose/runtime/internal/RememberEventDispatcher;

    iget-object v7, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/Set;

    invoke-direct {v6, v7}, Landroidx/compose/runtime/internal/RememberEventDispatcher;-><init>(Ljava/util/Set;)V

    if-eqz v1, :cond_2

    .line 1321
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->applier:Landroidx/compose/runtime/Applier;

    invoke-interface {v1}, Landroidx/compose/runtime/Applier;->onBeginChanges()V

    .line 1322
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    .line 166
    invoke-virtual {v1}, Landroidx/compose/runtime/SlotTable;->openWriter()Landroidx/compose/runtime/SlotWriter;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1322
    :try_start_2
    invoke-static {v1, v6}, Landroidx/compose/runtime/ComposerKt;->deactivateCurrentGroup(Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/RememberManager;)V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 171
    :try_start_3
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/SlotWriter;->close(Z)V

    .line 1323
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->applier:Landroidx/compose/runtime/Applier;

    invoke-interface {v1}, Landroidx/compose/runtime/Applier;->onEndChanges()V

    .line 1324
    invoke-virtual {v6}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->dispatchRememberObservers()V

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :catchall_2
    move-exception p0

    .line 171
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/SlotWriter;->close(Z)V

    throw p0

    .line 1326
    :cond_2
    :goto_2
    invoke-virtual {v6}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->dispatchAbandons()V

    .line 1327
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 49
    :try_start_4
    invoke-virtual {v5, v4}, Landroidx/compose/runtime/internal/Trace;->endSection(Ljava/lang/Object;)V

    .line 1329
    :cond_3
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->observations:Landroidx/collection/MutableScatterMap;

    invoke-static {v1}, Landroidx/compose/runtime/collection/ScopeMap;->clear-impl(Landroidx/collection/MutableScatterMap;)V

    .line 1330
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->derivedStates:Landroidx/collection/MutableScatterMap;

    invoke-static {v1}, Landroidx/compose/runtime/collection/ScopeMap;->clear-impl(Landroidx/collection/MutableScatterMap;)V

    .line 1331
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->invalidations:Landroidx/collection/MutableScatterMap;

    invoke-static {v1}, Landroidx/compose/runtime/collection/ScopeMap;->clear-impl(Landroidx/collection/MutableScatterMap;)V

    .line 1332
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->changes:Landroidx/compose/runtime/changelist/ChangeList;

    invoke-virtual {v1}, Landroidx/compose/runtime/changelist/ChangeList;->clear()V

    .line 1333
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->lateChanges:Landroidx/compose/runtime/changelist/ChangeList;

    invoke-virtual {v1}, Landroidx/compose/runtime/changelist/ChangeList;->clear()V

    .line 1334
    iget-object p0, p0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->deactivate$runtime_release()V

    .line 1335
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 27
    monitor-exit v0

    return-void

    .line 49
    :goto_3
    :try_start_5
    sget-object v1, Landroidx/compose/runtime/internal/Trace;->INSTANCE:Landroidx/compose/runtime/internal/Trace;

    invoke-virtual {v1, v4}, Landroidx/compose/runtime/internal/Trace;->endSection(Ljava/lang/Object;)V

    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 27
    :goto_4
    monitor-exit v0

    throw p0
.end method

.method public delegateInvalidations(Landroidx/compose/runtime/ControlledComposition;ILkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_0

    .line 1143
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-ltz p2, :cond_0

    .line 1144
    check-cast p1, Landroidx/compose/runtime/CompositionImpl;

    iput-object p1, p0, Landroidx/compose/runtime/CompositionImpl;->invalidationDelegate:Landroidx/compose/runtime/CompositionImpl;

    .line 1145
    iput p2, p0, Landroidx/compose/runtime/CompositionImpl;->invalidationDelegateGroup:I

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 1147
    :try_start_0
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1149
    iput-object p2, p0, Landroidx/compose/runtime/CompositionImpl;->invalidationDelegate:Landroidx/compose/runtime/CompositionImpl;

    .line 1150
    iput p1, p0, Landroidx/compose/runtime/CompositionImpl;->invalidationDelegateGroup:I

    goto :goto_0

    :catchall_0
    move-exception p3

    .line 1149
    iput-object p2, p0, Landroidx/compose/runtime/CompositionImpl;->invalidationDelegate:Landroidx/compose/runtime/CompositionImpl;

    .line 1150
    iput p1, p0, Landroidx/compose/runtime/CompositionImpl;->invalidationDelegateGroup:I

    throw p3

    .line 1152
    :cond_0
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p3

    :goto_0
    return-object p3
.end method

.method public dispose()V
    .locals 6

    .line 806
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->lock:Ljava/lang/Object;

    .line 27
    monitor-enter v0

    .line 807
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->isComposing$runtime_release()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 808
    const-string v1, "Composition is disposed while composing. If dispose is triggered by a call in @Composable function, consider wrapping it with SideEffect block."

    .line 50
    invoke-static {v1}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    .line 811
    :cond_0
    :goto_0
    iget-boolean v1, p0, Landroidx/compose/runtime/CompositionImpl;->disposed:Z

    if-nez v1, :cond_6

    const/4 v1, 0x1

    .line 812
    iput-boolean v1, p0, Landroidx/compose/runtime/CompositionImpl;->disposed:Z

    .line 813
    sget-object v2, Landroidx/compose/runtime/ComposableSingletons$CompositionKt;->INSTANCE:Landroidx/compose/runtime/ComposableSingletons$CompositionKt;

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposableSingletons$CompositionKt;->getLambda-2$runtime_release()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    iput-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->composable:Lkotlin/jvm/functions/Function2;

    .line 822
    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->getDeferredChanges$runtime_release()Landroidx/compose/runtime/changelist/ChangeList;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 824
    invoke-direct {p0, v2}, Landroidx/compose/runtime/CompositionImpl;->applyChangesInLocked(Landroidx/compose/runtime/changelist/ChangeList;)V

    .line 832
    :cond_1
    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v2}, Landroidx/compose/runtime/SlotTable;->getGroupsSize()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    if-nez v2, :cond_3

    .line 833
    iget-object v4, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/Set;

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 834
    :cond_3
    new-instance v4, Landroidx/compose/runtime/internal/RememberEventDispatcher;

    iget-object v5, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/Set;

    invoke-direct {v4, v5}, Landroidx/compose/runtime/internal/RememberEventDispatcher;-><init>(Ljava/util/Set;)V

    if-eqz v2, :cond_4

    .line 836
    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->applier:Landroidx/compose/runtime/Applier;

    invoke-interface {v2}, Landroidx/compose/runtime/Applier;->onBeginChanges()V

    .line 837
    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    .line 166
    invoke-virtual {v2}, Landroidx/compose/runtime/SlotTable;->openWriter()Landroidx/compose/runtime/SlotWriter;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 837
    :try_start_1
    invoke-static {v2, v4}, Landroidx/compose/runtime/ComposerKt;->removeCurrentGroup(Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/RememberManager;)V

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 171
    :try_start_2
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/SlotWriter;->close(Z)V

    .line 838
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->applier:Landroidx/compose/runtime/Applier;

    invoke-interface {v1}, Landroidx/compose/runtime/Applier;->clear()V

    .line 839
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->applier:Landroidx/compose/runtime/Applier;

    invoke-interface {v1}, Landroidx/compose/runtime/Applier;->onEndChanges()V

    .line 840
    invoke-virtual {v4}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->dispatchRememberObservers()V

    goto :goto_2

    :catchall_1
    move-exception p0

    .line 171
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/SlotWriter;->close(Z)V

    throw p0

    .line 842
    :cond_4
    :goto_2
    invoke-virtual {v4}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->dispatchAbandons()V

    .line 844
    :cond_5
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->dispose$runtime_release()V

    .line 846
    :cond_6
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 27
    monitor-exit v0

    .line 847
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->parent:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {v0, p0}, Landroidx/compose/runtime/CompositionContext;->unregisterComposition$runtime_release(Landroidx/compose/runtime/ControlledComposition;)V

    return-void

    .line 27
    :goto_3
    monitor-exit v0

    throw p0
.end method

.method public disposeUnusedMovableContent(Landroidx/compose/runtime/MovableContentState;)V
    .locals 1

    .line 1016
    new-instance v0, Landroidx/compose/runtime/internal/RememberEventDispatcher;

    iget-object p0, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/Set;

    invoke-direct {v0, p0}, Landroidx/compose/runtime/internal/RememberEventDispatcher;-><init>(Ljava/util/Set;)V

    .line 1017
    invoke-virtual {p1}, Landroidx/compose/runtime/MovableContentState;->getSlotTable$runtime_release()Landroidx/compose/runtime/SlotTable;

    move-result-object p0

    .line 166
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotTable;->openWriter()Landroidx/compose/runtime/SlotWriter;

    move-result-object p0

    .line 1018
    :try_start_0
    invoke-static {p0, v0}, Landroidx/compose/runtime/ComposerKt;->removeCurrentGroup(Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/RememberManager;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 171
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotWriter;->close(Z)V

    .line 1019
    invoke-virtual {v0}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->dispatchRememberObservers()V

    return-void

    :catchall_0
    move-exception p1

    const/4 v0, 0x0

    .line 171
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/SlotWriter;->close(Z)V

    throw p1
.end method

.method public getHasInvalidations()Z
    .locals 1

    .line 851
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->lock:Ljava/lang/Object;

    .line 27
    monitor-enter v0

    .line 851
    :try_start_0
    iget-object p0, p0, Landroidx/compose/runtime/CompositionImpl;->invalidations:Landroidx/collection/MutableScatterMap;

    invoke-static {p0}, Landroidx/compose/runtime/collection/ScopeMap;->getSize-impl(Landroidx/collection/MutableScatterMap;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 27
    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final getObserverHolder$runtime_release()Landroidx/compose/runtime/CompositionObserverHolder;
    .locals 0

    .line 562
    iget-object p0, p0, Landroidx/compose/runtime/CompositionImpl;->observerHolder:Landroidx/compose/runtime/CompositionObserverHolder;

    return-object p0
.end method

.method public insertMovableContent(Ljava/util/List;)V
    .locals 5

    const/4 v0, 0x1

    .line 34
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 35
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 106
    check-cast v4, Lkotlin/Pair;

    .line 1011
    invoke-virtual {v4}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/runtime/MovableContentStateReference;

    invoke-virtual {v4}, Landroidx/compose/runtime/MovableContentStateReference;->getComposition$runtime_release()Landroidx/compose/runtime/ControlledComposition;

    move-result-object v4

    invoke-static {v4, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    move v0, v2

    goto :goto_1

    :cond_0
    add-int/2addr v3, v0

    goto :goto_0

    :cond_1
    :goto_1
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->runtimeCheck(Z)V

    .line 1012
    :try_start_0
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/ComposerImpl;->insertMovableContentReferences(Ljava/util/List;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 1293
    :try_start_1
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/Set;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1294
    new-instance v0, Landroidx/compose/runtime/internal/RememberEventDispatcher;

    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/Set;

    invoke-direct {v0, v1}, Landroidx/compose/runtime/internal/RememberEventDispatcher;-><init>(Ljava/util/Set;)V

    invoke-virtual {v0}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->dispatchAbandons()V

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_2
    :goto_2
    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1110
    :goto_3
    invoke-virtual {p0}, Landroidx/compose/runtime/CompositionImpl;->abandonChanges()V

    .line 1111
    throw p1
.end method

.method public invalidate(Landroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)Landroidx/compose/runtime/InvalidationResult;
    .locals 3

    .line 1162
    invoke-virtual {p1}, Landroidx/compose/runtime/RecomposeScopeImpl;->getDefaultsInScope()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1163
    invoke-virtual {p1, v1}, Landroidx/compose/runtime/RecomposeScopeImpl;->setDefaultsInvalid(Z)V

    .line 1165
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/runtime/RecomposeScopeImpl;->getAnchor()Landroidx/compose/runtime/Anchor;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1166
    invoke-virtual {v0}, Landroidx/compose/runtime/Anchor;->getValid()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 1168
    :cond_1
    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/SlotTable;->ownsAnchor(Landroidx/compose/runtime/Anchor;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1170
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->lock:Ljava/lang/Object;

    .line 27
    monitor-enter v0

    .line 1170
    :try_start_0
    iget-object p0, p0, Landroidx/compose/runtime/CompositionImpl;->invalidationDelegate:Landroidx/compose/runtime/CompositionImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    monitor-exit v0

    if-eqz p0, :cond_2

    .line 1171
    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/CompositionImpl;->tryImminentInvalidation(Landroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)Z

    move-result p0

    if-ne p0, v1, :cond_2

    .line 1172
    sget-object p0, Landroidx/compose/runtime/InvalidationResult;->IMMINENT:Landroidx/compose/runtime/InvalidationResult;

    return-object p0

    .line 1174
    :cond_2
    sget-object p0, Landroidx/compose/runtime/InvalidationResult;->IGNORED:Landroidx/compose/runtime/InvalidationResult;

    return-object p0

    :catchall_0
    move-exception p0

    .line 27
    monitor-exit v0

    throw p0

    .line 1176
    :cond_3
    invoke-virtual {p1}, Landroidx/compose/runtime/RecomposeScopeImpl;->getCanRecompose()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1177
    sget-object p0, Landroidx/compose/runtime/InvalidationResult;->IGNORED:Landroidx/compose/runtime/InvalidationResult;

    return-object p0

    .line 1178
    :cond_4
    invoke-direct {p0, p1, v0, p2}, Landroidx/compose/runtime/CompositionImpl;->invalidateChecked(Landroidx/compose/runtime/RecomposeScopeImpl;Landroidx/compose/runtime/Anchor;Ljava/lang/Object;)Landroidx/compose/runtime/InvalidationResult;

    move-result-object p0

    return-object p0

    .line 1167
    :cond_5
    :goto_0
    sget-object p0, Landroidx/compose/runtime/InvalidationResult;->IGNORED:Landroidx/compose/runtime/InvalidationResult;

    return-object p0
.end method

.method public invalidateAll()V
    .locals 5

    .line 1125
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->lock:Ljava/lang/Object;

    .line 27
    monitor-enter v0

    .line 1125
    :try_start_0
    iget-object p0, p0, Landroidx/compose/runtime/CompositionImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {p0}, Landroidx/compose/runtime/SlotTable;->getSlots()[Ljava/lang/Object;

    move-result-object p0

    .line 13579
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 1125
    instance-of v4, v3, Landroidx/compose/runtime/RecomposeScopeImpl;

    if-eqz v4, :cond_0

    check-cast v3, Landroidx/compose/runtime/RecomposeScopeImpl;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroidx/compose/runtime/RecomposeScopeImpl;->invalidate()V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0

    throw p0
.end method

.method public isComposing()Z
    .locals 0

    .line 601
    iget-object p0, p0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->isComposing$runtime_release()Z

    move-result p0

    return p0
.end method

.method public isDisposed()Z
    .locals 0

    .line 604
    iget-boolean p0, p0, Landroidx/compose/runtime/CompositionImpl;->disposed:Z

    return p0
.end method

.method public observesAnyOf(Ljava/util/Set;)Z
    .locals 14

    .line 42
    instance-of v0, p1, Landroidx/compose/runtime/collection/ScatterSetWrapper;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 43
    check-cast p1, Landroidx/compose/runtime/collection/ScatterSetWrapper;

    invoke-virtual {p1}, Landroidx/compose/runtime/collection/ScatterSetWrapper;->getSet$runtime_release()Landroidx/collection/ScatterSet;

    move-result-object p1

    .line 232
    iget-object v0, p1, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 201
    iget-object p1, p1, Landroidx/collection/ScatterSet;->metadata:[J

    .line 202
    array-length v3, p1

    add-int/lit8 v3, v3, -0x2

    if-ltz v3, :cond_7

    move v4, v1

    .line 205
    :goto_0
    aget-wide v5, p1, v4

    not-long v7, v5

    const/4 v9, 0x7

    shl-long/2addr v7, v9

    and-long/2addr v7, v5

    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v7, v9

    cmp-long v7, v7, v9

    if-eqz v7, :cond_3

    sub-int v7, v4, v3

    not-int v7, v7

    ushr-int/lit8 v7, v7, 0x1f

    const/16 v8, 0x8

    rsub-int/lit8 v7, v7, 0x8

    move v9, v1

    :goto_1
    if-ge v9, v7, :cond_2

    const-wide/16 v10, 0xff

    and-long/2addr v10, v5

    const-wide/16 v12, 0x80

    cmp-long v10, v10, v12

    if-gez v10, :cond_1

    shl-int/lit8 v10, v4, 0x3

    add-int/2addr v10, v9

    .line 233
    aget-object v10, v0, v10

    .line 883
    iget-object v11, p0, Landroidx/compose/runtime/CompositionImpl;->observations:Landroidx/collection/MutableScatterMap;

    invoke-static {v11, v10}, Landroidx/compose/runtime/collection/ScopeMap;->contains-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    iget-object v11, p0, Landroidx/compose/runtime/CompositionImpl;->derivedStates:Landroidx/collection/MutableScatterMap;

    invoke-static {v11, v10}, Landroidx/compose/runtime/collection/ScopeMap;->contains-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    :cond_0
    return v2

    :cond_1
    shr-long/2addr v5, v8

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    if-ne v7, v8, :cond_7

    :cond_3
    if-eq v4, v3, :cond_7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 46
    :cond_4
    check-cast p1, Ljava/lang/Iterable;

    .line 1855
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 883
    iget-object v3, p0, Landroidx/compose/runtime/CompositionImpl;->observations:Landroidx/collection/MutableScatterMap;

    invoke-static {v3, v0}, Landroidx/compose/runtime/collection/ScopeMap;->contains-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Landroidx/compose/runtime/CompositionImpl;->derivedStates:Landroidx/collection/MutableScatterMap;

    invoke-static {v3, v0}, Landroidx/compose/runtime/collection/ScopeMap;->contains-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_6
    return v2

    :cond_7
    return v1
.end method

.method public prepareCompose(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 888
    iget-object p0, p0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->prepareCompose$runtime_release(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public recompose()Z
    .locals 4

    .line 989
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->lock:Ljava/lang/Object;

    .line 27
    monitor-enter v0

    .line 990
    :try_start_0
    invoke-direct {p0}, Landroidx/compose/runtime/CompositionImpl;->drainPendingModificationsForCompositionLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1097
    :try_start_1
    invoke-direct {p0}, Landroidx/compose/runtime/CompositionImpl;->takeInvalidations-afanTW4()Landroidx/collection/MutableScatterMap;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 993
    :try_start_2
    invoke-direct {p0}, Landroidx/compose/runtime/CompositionImpl;->observer()Landroidx/compose/runtime/tooling/CompositionObserver;

    .line 999
    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    iget-object v3, p0, Landroidx/compose/runtime/CompositionImpl;->shouldPause:Lkotlin/jvm/functions/Function0;

    invoke-virtual {v2, v1, v3}, Landroidx/compose/runtime/ComposerImpl;->recompose-aFTiNEg$runtime_release(Landroidx/collection/MutableScatterMap;Lkotlin/jvm/functions/Function0;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1001
    invoke-direct {p0}, Landroidx/compose/runtime/CompositionImpl;->drainPendingModificationsLocked()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_1

    .line 27
    :cond_0
    :goto_0
    monitor-exit v0

    return v2

    .line 1101
    :goto_1
    :try_start_3
    iput-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->invalidations:Landroidx/collection/MutableScatterMap;

    .line 1102
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1293
    :goto_2
    :try_start_4
    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/Set;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1294
    new-instance v2, Landroidx/compose/runtime/internal/RememberEventDispatcher;

    iget-object v3, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/Set;

    invoke-direct {v2, v3}, Landroidx/compose/runtime/internal/RememberEventDispatcher;-><init>(Ljava/util/Set;)V

    invoke-virtual {v2}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->dispatchAbandons()V

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :cond_1
    :goto_3
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1110
    :goto_4
    :try_start_5
    invoke-virtual {p0}, Landroidx/compose/runtime/CompositionImpl;->abandonChanges()V

    .line 1111
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 27
    :goto_5
    monitor-exit v0

    throw p0
.end method

.method public recomposeScopeReleased(Landroidx/compose/runtime/RecomposeScopeImpl;)V
    .locals 0

    const/4 p1, 0x1

    .line 1182
    iput-boolean p1, p0, Landroidx/compose/runtime/CompositionImpl;->pendingInvalidScopes:Z

    return-void
.end method

.method public recordModificationsOf(Ljava/util/Set;)V
    .locals 4

    .line 863
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->pendingModifications:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    move v2, v1

    goto :goto_0

    .line 867
    :cond_1
    invoke-static {}, Landroidx/compose/runtime/CompositionKt;->access$getPendingApplyNoModifications$p()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    :goto_0
    if-eqz v2, :cond_2

    move-object v2, p1

    goto :goto_1

    .line 868
    :cond_2
    instance-of v2, v0, Ljava/util/Set;

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/util/Set;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    aput-object p1, v2, v1

    goto :goto_1

    .line 869
    :cond_3
    instance-of v1, v0, [Ljava/lang/Object;

    if-eqz v1, :cond_5

    const-string v1, "null cannot be cast to non-null type kotlin.Array<kotlin.collections.Set<kotlin.Any>>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, [Ljava/util/Set;

    invoke-static {v1, p1}, Lkotlin/collections/ArraysKt;->plus([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .line 872
    :goto_1
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->pendingModifications:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_4

    .line 874
    iget-object p1, p0, Landroidx/compose/runtime/CompositionImpl;->lock:Ljava/lang/Object;

    .line 27
    monitor-enter p1

    .line 874
    :try_start_0
    invoke-direct {p0}, Landroidx/compose/runtime/CompositionImpl;->drainPendingModificationsLocked()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    monitor-exit p1

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_4
    :goto_2
    return-void

    .line 869
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 870
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "corrupt pendingModifications: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/compose/runtime/CompositionImpl;->pendingModifications:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public recordReadOf(Ljava/lang/Object;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 941
    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/CompositionImpl;->getAreChildrenComposing()Z

    move-result v2

    if-nez v2, :cond_6

    .line 942
    iget-object v2, v0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->getCurrentRecomposeScope$runtime_release()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v2

    if-eqz v2, :cond_6

    const/4 v3, 0x1

    .line 943
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/RecomposeScopeImpl;->setUsed(Z)V

    .line 944
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/RecomposeScopeImpl;->recordRead(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 946
    instance-of v4, v1, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    if-eqz v4, :cond_0

    .line 947
    move-object v4, v1

    check-cast v4, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    .line 54
    invoke-static {v3}, Landroidx/compose/runtime/snapshots/ReaderKind;->constructor-impl(I)I

    move-result v5

    .line 947
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/snapshots/StateObjectImpl;->recordReadIn-h_f27i8$runtime_release(I)V

    .line 950
    :cond_0
    iget-object v4, v0, Landroidx/compose/runtime/CompositionImpl;->observations:Landroidx/collection/MutableScatterMap;

    invoke-static {v4, v1, v2}, Landroidx/compose/runtime/collection/ScopeMap;->add-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 953
    instance-of v4, v1, Landroidx/compose/runtime/DerivedState;

    if-eqz v4, :cond_6

    .line 954
    move-object v4, v1

    check-cast v4, Landroidx/compose/runtime/DerivedState;

    invoke-interface {v4}, Landroidx/compose/runtime/DerivedState;->getCurrentRecord()Landroidx/compose/runtime/DerivedState$Record;

    move-result-object v5

    .line 955
    iget-object v6, v0, Landroidx/compose/runtime/CompositionImpl;->derivedStates:Landroidx/collection/MutableScatterMap;

    invoke-static {v6, v1}, Landroidx/compose/runtime/collection/ScopeMap;->removeScope-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;)V

    .line 956
    invoke-interface {v5}, Landroidx/compose/runtime/DerivedState$Record;->getDependencies()Landroidx/collection/ObjectIntMap;

    move-result-object v6

    .line 365
    iget-object v7, v6, Landroidx/collection/ObjectIntMap;->keys:[Ljava/lang/Object;

    .line 329
    iget-object v6, v6, Landroidx/collection/ObjectIntMap;->metadata:[J

    .line 330
    array-length v8, v6

    add-int/lit8 v8, v8, -0x2

    if-ltz v8, :cond_5

    const/4 v10, 0x0

    .line 333
    :goto_0
    aget-wide v11, v6, v10

    not-long v13, v11

    const/4 v15, 0x7

    shl-long/2addr v13, v15

    and-long/2addr v13, v11

    const-wide v15, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v13, v15

    cmp-long v13, v13, v15

    if-eqz v13, :cond_4

    sub-int v13, v10, v8

    not-int v13, v13

    ushr-int/lit8 v13, v13, 0x1f

    const/16 v14, 0x8

    rsub-int/lit8 v13, v13, 0x8

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v13, :cond_3

    const-wide/16 v16, 0xff

    and-long v16, v11, v16

    const-wide/16 v18, 0x80

    cmp-long v16, v16, v18

    if-gez v16, :cond_2

    shl-int/lit8 v16, v10, 0x3

    add-int v16, v16, v15

    .line 367
    aget-object v16, v7, v16

    move-object/from16 v9, v16

    check-cast v9, Landroidx/compose/runtime/snapshots/StateObject;

    .line 957
    instance-of v14, v9, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    if-eqz v14, :cond_1

    .line 958
    move-object v14, v9

    check-cast v14, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    move-object/from16 v18, v6

    .line 54
    invoke-static {v3}, Landroidx/compose/runtime/snapshots/ReaderKind;->constructor-impl(I)I

    move-result v6

    .line 958
    invoke-virtual {v14, v6}, Landroidx/compose/runtime/snapshots/StateObjectImpl;->recordReadIn-h_f27i8$runtime_release(I)V

    goto :goto_2

    :cond_1
    move-object/from16 v18, v6

    .line 960
    :goto_2
    iget-object v6, v0, Landroidx/compose/runtime/CompositionImpl;->derivedStates:Landroidx/collection/MutableScatterMap;

    invoke-static {v6, v9, v1}, Landroidx/compose/runtime/collection/ScopeMap;->add-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v6, 0x8

    goto :goto_3

    :cond_2
    move-object/from16 v18, v6

    move v6, v14

    :goto_3
    shr-long/2addr v11, v6

    add-int/lit8 v15, v15, 0x1

    move v14, v6

    move-object/from16 v6, v18

    goto :goto_1

    :cond_3
    move-object/from16 v18, v6

    move v6, v14

    if-ne v13, v6, :cond_5

    goto :goto_4

    :cond_4
    move-object/from16 v18, v6

    :goto_4
    if-eq v10, v8, :cond_5

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v6, v18

    goto :goto_0

    .line 962
    :cond_5
    invoke-interface {v5}, Landroidx/compose/runtime/DerivedState$Record;->getCurrentValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->recordDerivedStateValue(Landroidx/compose/runtime/DerivedState;Ljava/lang/Object;)V

    :cond_6
    return-void
.end method

.method public recordWriteOf(Ljava/lang/Object;)V
    .locals 14

    .line 980
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->lock:Ljava/lang/Object;

    .line 27
    monitor-enter v0

    .line 981
    :try_start_0
    invoke-direct {p0, p1}, Landroidx/compose/runtime/CompositionImpl;->invalidateScopeOfLocked(Ljava/lang/Object;)V

    .line 985
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->derivedStates:Landroidx/collection/MutableScatterMap;

    .line 67
    invoke-virtual {v1, p1}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 71
    instance-of v1, p1, Landroidx/collection/MutableScatterSet;

    if-eqz v1, :cond_3

    .line 72
    check-cast p1, Landroidx/collection/MutableScatterSet;

    .line 232
    iget-object v1, p1, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 201
    iget-object p1, p1, Landroidx/collection/ScatterSet;->metadata:[J

    .line 202
    array-length v2, p1

    add-int/lit8 v2, v2, -0x2

    if-ltz v2, :cond_4

    const/4 v3, 0x0

    move v4, v3

    .line 205
    :goto_0
    aget-wide v5, p1, v4

    not-long v7, v5

    const/4 v9, 0x7

    shl-long/2addr v7, v9

    and-long/2addr v7, v5

    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v7, v9

    cmp-long v7, v7, v9

    if-eqz v7, :cond_2

    sub-int v7, v4, v2

    not-int v7, v7

    ushr-int/lit8 v7, v7, 0x1f

    const/16 v8, 0x8

    rsub-int/lit8 v7, v7, 0x8

    move v9, v3

    :goto_1
    if-ge v9, v7, :cond_1

    const-wide/16 v10, 0xff

    and-long/2addr v10, v5

    const-wide/16 v12, 0x80

    cmp-long v10, v10, v12

    if-gez v10, :cond_0

    shl-int/lit8 v10, v4, 0x3

    add-int/2addr v10, v9

    .line 233
    aget-object v10, v1, v10

    check-cast v10, Landroidx/compose/runtime/DerivedState;

    .line 985
    invoke-direct {p0, v10}, Landroidx/compose/runtime/CompositionImpl;->invalidateScopeOfLocked(Ljava/lang/Object;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_2
    shr-long/2addr v5, v8

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    if-ne v7, v8, :cond_4

    :cond_2
    if-eq v4, v2, :cond_4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 75
    :cond_3
    check-cast p1, Landroidx/compose/runtime/DerivedState;

    .line 985
    invoke-direct {p0, p1}, Landroidx/compose/runtime/CompositionImpl;->invalidateScopeOfLocked(Ljava/lang/Object;)V

    .line 986
    :cond_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0

    throw p0
.end method

.method public final removeDerivedStateObservation$runtime_release(Landroidx/compose/runtime/DerivedState;)V
    .locals 1

    .line 1256
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->observations:Landroidx/collection/MutableScatterMap;

    invoke-static {v0, p1}, Landroidx/compose/runtime/collection/ScopeMap;->contains-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1257
    iget-object p0, p0, Landroidx/compose/runtime/CompositionImpl;->derivedStates:Landroidx/collection/MutableScatterMap;

    invoke-static {p0, p1}, Landroidx/compose/runtime/collection/ScopeMap;->removeScope-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final removeObservation$runtime_release(Ljava/lang/Object;Landroidx/compose/runtime/RecomposeScopeImpl;)V
    .locals 0

    .line 1251
    iget-object p0, p0, Landroidx/compose/runtime/CompositionImpl;->observations:Landroidx/collection/MutableScatterMap;

    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/collection/ScopeMap;->remove-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public setContent(Lkotlin/jvm/functions/Function2;)V
    .locals 0

    .line 613
    invoke-direct {p0, p1}, Landroidx/compose/runtime/CompositionImpl;->composeInitial(Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public setContentWithReuse(Lkotlin/jvm/functions/Function2;)V
    .locals 1

    .line 620
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->startReuseFromRoot()V

    .line 622
    invoke-direct {p0, p1}, Landroidx/compose/runtime/CompositionImpl;->composeInitial(Lkotlin/jvm/functions/Function2;)V

    .line 624
    iget-object p0, p0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->endReuseFromRoot()V

    return-void
.end method

.method public final updateMovingInvalidations$runtime_release()V
    .locals 3

    .line 797
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->lock:Ljava/lang/Object;

    .line 27
    monitor-enter v0

    .line 798
    :try_start_0
    invoke-direct {p0}, Landroidx/compose/runtime/CompositionImpl;->drainPendingModificationsOutOfBandLocked()V

    .line 1097
    invoke-direct {p0}, Landroidx/compose/runtime/CompositionImpl;->takeInvalidations-afanTW4()Landroidx/collection/MutableScatterMap;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 800
    :try_start_1
    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/ComposerImpl;->updateComposerInvalidations-RY85e9Y(Landroidx/collection/MutableScatterMap;)V

    .line 801
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 1101
    :try_start_2
    iput-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->invalidations:Landroidx/collection/MutableScatterMap;

    .line 1102
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 27
    :goto_0
    monitor-exit v0

    throw p0
.end method
