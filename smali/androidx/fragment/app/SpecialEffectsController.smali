.class public abstract Landroidx/fragment/app/SpecialEffectsController;
.super Ljava/lang/Object;
.source "SpecialEffectsController.kt"


# static fields
.field public static final Companion:Landroidx/fragment/app/SpecialEffectsController$Companion;


# instance fields
.field private final container:Landroid/view/ViewGroup;

.field private isContainerPostponed:Z

.field private operationDirectionIsPop:Z

.field private final pendingOperations:Ljava/util/List;

.field private runningNonSeekableTransition:Z

.field private final runningOperations:Ljava/util/List;


# direct methods
.method public static synthetic $r8$lambda$TeCmoVW0hctjg0BNHLP6mPbAs5U(Landroidx/fragment/app/SpecialEffectsController;Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/fragment/app/SpecialEffectsController;->enqueue$lambda$4$lambda$2(Landroidx/fragment/app/SpecialEffectsController;Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ahdwWRJghvCwX2xG1GsepYfILrY(Landroidx/fragment/app/SpecialEffectsController;Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/fragment/app/SpecialEffectsController;->enqueue$lambda$4$lambda$3(Landroidx/fragment/app/SpecialEffectsController;Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Landroidx/fragment/app/SpecialEffectsController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/fragment/app/SpecialEffectsController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/fragment/app/SpecialEffectsController;->Companion:Landroidx/fragment/app/SpecialEffectsController$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/SpecialEffectsController;->container:Landroid/view/ViewGroup;

    .line 34
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/SpecialEffectsController;->pendingOperations:Ljava/util/List;

    .line 35
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/SpecialEffectsController;->runningOperations:Ljava/util/List;

    return-void
.end method

.method private final enqueue(Landroidx/fragment/app/SpecialEffectsController$Operation$State;Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;Landroidx/fragment/app/FragmentStateManager;)V
    .locals 3

    .line 124
    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController;->pendingOperations:Ljava/util/List;

    monitor-enter v0

    .line 126
    :try_start_0
    invoke-virtual {p3}, Landroidx/fragment/app/FragmentStateManager;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    const-string v2, "fragmentStateManager.fragment"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Landroidx/fragment/app/SpecialEffectsController;->findPendingOperation(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/SpecialEffectsController$Operation;

    move-result-object v1

    if-nez v1, :cond_1

    .line 130
    invoke-virtual {p3}, Landroidx/fragment/app/FragmentStateManager;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    iget-boolean v1, v1, Landroidx/fragment/app/Fragment;->mTransitioning:Z

    if-eqz v1, :cond_0

    .line 131
    invoke-virtual {p3}, Landroidx/fragment/app/FragmentStateManager;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    const-string v2, "fragmentStateManager.fragment"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Landroidx/fragment/app/SpecialEffectsController;->findRunningOperation(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/SpecialEffectsController$Operation;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 138
    invoke-virtual {v1, p1, p2}, Landroidx/fragment/app/SpecialEffectsController$Operation;->mergeWith(Landroidx/fragment/app/SpecialEffectsController$Operation$State;Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    monitor-exit v0

    return-void

    .line 142
    :cond_2
    :try_start_1
    new-instance v1, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;

    invoke-direct {v1, p1, p2, p3}, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;-><init>(Landroidx/fragment/app/SpecialEffectsController$Operation$State;Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;Landroidx/fragment/app/FragmentStateManager;)V

    .line 143
    iget-object p1, p0, Landroidx/fragment/app/SpecialEffectsController;->pendingOperations:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    new-instance p1, Landroidx/fragment/app/SpecialEffectsController$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v1}, Landroidx/fragment/app/SpecialEffectsController$$ExternalSyntheticLambda0;-><init>(Landroidx/fragment/app/SpecialEffectsController;Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;)V

    invoke-virtual {v1, p1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->addCompletionListener(Ljava/lang/Runnable;)V

    .line 152
    new-instance p1, Landroidx/fragment/app/SpecialEffectsController$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, v1}, Landroidx/fragment/app/SpecialEffectsController$$ExternalSyntheticLambda1;-><init>(Landroidx/fragment/app/SpecialEffectsController;Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;)V

    invoke-virtual {v1, p1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->addCompletionListener(Ljava/lang/Runnable;)V

    .line 156
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method private static final enqueue$lambda$4$lambda$2(Landroidx/fragment/app/SpecialEffectsController;Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$operation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController;->pendingOperations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFinalState()Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    iget-object p1, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    const-string v1, "operation.fragment.mView"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/fragment/app/SpecialEffectsController;->container:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p0}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->applyState(Landroid/view/View;Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method

.method private static final enqueue$lambda$4$lambda$3(Landroidx/fragment/app/SpecialEffectsController;Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$operation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController;->pendingOperations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 154
    iget-object p0, p0, Landroidx/fragment/app/SpecialEffectsController;->runningOperations:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private final findPendingOperation(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/SpecialEffectsController$Operation;
    .locals 3

    .line 66
    iget-object p0, p0, Landroidx/fragment/app/SpecialEffectsController;->pendingOperations:Ljava/util/List;

    .line 288
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 67
    invoke-virtual {v1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 289
    :goto_0
    check-cast v0, Landroidx/fragment/app/SpecialEffectsController$Operation;

    return-object v0
.end method

.method private final findRunningOperation(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/SpecialEffectsController$Operation;
    .locals 3

    .line 71
    iget-object p0, p0, Landroidx/fragment/app/SpecialEffectsController;->runningOperations:Ljava/util/List;

    .line 288
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 72
    invoke-virtual {v1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 289
    :goto_0
    check-cast v0, Landroidx/fragment/app/SpecialEffectsController$Operation;

    return-object v0
.end method

.method public static final getOrCreateController(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/SpecialEffectsController;
    .locals 1

    .line 0
    sget-object v0, Landroidx/fragment/app/SpecialEffectsController;->Companion:Landroidx/fragment/app/SpecialEffectsController$Companion;

    invoke-virtual {v0, p0, p1}, Landroidx/fragment/app/SpecialEffectsController$Companion;->getOrCreateController(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/SpecialEffectsController;

    move-result-object p0

    return-object p0
.end method

.method public static final getOrCreateController(Landroid/view/ViewGroup;Landroidx/fragment/app/SpecialEffectsControllerFactory;)Landroidx/fragment/app/SpecialEffectsController;
    .locals 1

    .line 0
    sget-object v0, Landroidx/fragment/app/SpecialEffectsController;->Companion:Landroidx/fragment/app/SpecialEffectsController$Companion;

    invoke-virtual {v0, p0, p1}, Landroidx/fragment/app/SpecialEffectsController$Companion;->getOrCreateController(Landroid/view/ViewGroup;Landroidx/fragment/app/SpecialEffectsControllerFactory;)Landroidx/fragment/app/SpecialEffectsController;

    move-result-object p0

    return-object p0
.end method

.method private final isOperationSeekable(Ljava/util/List;)Z
    .locals 4

    .line 1855
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    move v1, v0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 314
    invoke-virtual {v1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getEffects$fragment_release()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 315
    invoke-virtual {v1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getEffects$fragment_release()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1726
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 1727
    :cond_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/SpecialEffectsController$Effect;

    .line 315
    invoke-virtual {v2}, Landroidx/fragment/app/SpecialEffectsController$Effect;->isSeekingSupported()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_3
    move v1, v3

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_6

    .line 1360
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1446
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1447
    check-cast v1, Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 317
    invoke-virtual {v1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getEffects$fragment_release()Ljava/util/List;

    move-result-object v1

    .line 1448
    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_2

    .line 317
    :cond_5
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_3

    :cond_6
    move v0, v3

    :goto_3
    return v0
.end method

.method private final isOperationTransitioning(Ljava/util/List;)Z
    .locals 1

    .line 1855
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x1

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 303
    invoke-virtual {v0}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    iget-boolean v0, v0, Landroidx/fragment/app/Fragment;->mTransitioning:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    return p1
.end method

.method private final processStart(Ljava/util/List;)V
    .locals 4

    .line 445
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 446
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 447
    invoke-virtual {v3}, Landroidx/fragment/app/SpecialEffectsController$Operation;->onStart()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1360
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1446
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1447
    check-cast v2, Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 449
    invoke-virtual {v2}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getEffects$fragment_release()Ljava/util/List;

    move-result-object v2

    .line 1448
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_1

    .line 449
    :cond_1
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    .line 451
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    :goto_2
    if-ge v1, v0, :cond_2

    .line 452
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/SpecialEffectsController$Effect;

    .line 453
    iget-object v3, p0, Landroidx/fragment/app/SpecialEffectsController;->container:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroidx/fragment/app/SpecialEffectsController$Effect;->performStart(Landroid/view/ViewGroup;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private final updateFinalState()V
    .locals 3

    .line 389
    iget-object p0, p0, Landroidx/fragment/app/SpecialEffectsController;->pendingOperations:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 391
    invoke-virtual {v0}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getLifecycleImpact()Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    move-result-object v1

    sget-object v2, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->ADDING:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    if-ne v1, v2, :cond_0

    .line 392
    invoke-virtual {v0}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 393
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v1

    const-string v2, "fragment.requireView()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 394
    sget-object v2, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->Companion:Landroidx/fragment/app/SpecialEffectsController$Operation$State$Companion;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    invoke-virtual {v2, v1}, Landroidx/fragment/app/SpecialEffectsController$Operation$State$Companion;->from(I)Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    move-result-object v1

    .line 395
    sget-object v2, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->NONE:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/SpecialEffectsController$Operation;->mergeWith(Landroidx/fragment/app/SpecialEffectsController$Operation$State;Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final applyContainerChangesToOperation$fragment_release(Landroidx/fragment/app/SpecialEffectsController$Operation;)V
    .locals 3

    const-string v0, "operation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    invoke-virtual {p1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->isAwaitingContainerChanges()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {p1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFinalState()Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v1

    const-string v2, "operation.fragment.requireView()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/fragment/app/SpecialEffectsController;->container:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, p0}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->applyState(Landroid/view/View;Landroid/view/ViewGroup;)V

    const/4 p0, 0x0

    .line 324
    invoke-virtual {p1, p0}, Landroidx/fragment/app/SpecialEffectsController$Operation;->setAwaitingContainerChanges(Z)V

    :cond_0
    return-void
.end method

.method public abstract collectEffects(Ljava/util/List;Z)V
.end method

.method public commitEffects$fragment_release(Ljava/util/List;)V
    .locals 6

    const-string v0, "operations"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1360
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1446
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1447
    check-cast v2, Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 421
    invoke-virtual {v2}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getEffects$fragment_release()Ljava/util/List;

    move-result-object v2

    .line 1448
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 421
    :cond_0
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 424
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_1

    .line 425
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/SpecialEffectsController$Effect;

    .line 426
    iget-object v5, p0, Landroidx/fragment/app/SpecialEffectsController;->container:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroidx/fragment/app/SpecialEffectsController$Effect;->onCommit(Landroid/view/ViewGroup;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 429
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    move v1, v2

    :goto_2
    if-ge v1, v0, :cond_2

    .line 430
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 431
    invoke-virtual {p0, v3}, Landroidx/fragment/app/SpecialEffectsController;->applyContainerChangesToOperation$fragment_release(Landroidx/fragment/app/SpecialEffectsController$Operation;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 435
    :cond_2
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    .line 436
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p1

    :goto_3
    if-ge v2, p1, :cond_4

    .line 437
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 438
    invoke-virtual {v0}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getEffects$fragment_release()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 439
    invoke-virtual {v0}, Landroidx/fragment/app/SpecialEffectsController$Operation;->complete$fragment_release()V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method public final completeBack()V
    .locals 2

    const/4 v0, 0x3

    .line 473
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    const-string v0, "FragmentManager"

    const-string v1, "SpecialEffectsController: Completing Back "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController;->runningOperations:Ljava/util/List;

    invoke-direct {p0, v0}, Landroidx/fragment/app/SpecialEffectsController;->processStart(Ljava/util/List;)V

    .line 477
    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController;->runningOperations:Ljava/util/List;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/SpecialEffectsController;->commitEffects$fragment_release(Ljava/util/List;)V

    return-void
.end method

.method public final enqueueAdd(Landroidx/fragment/app/SpecialEffectsController$Operation$State;Landroidx/fragment/app/FragmentStateManager;)V
    .locals 2

    const-string v0, "finalState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragmentStateManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 76
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpecialEffectsController: Enqueuing add operation for fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentStateManager;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_0
    sget-object v0, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->ADDING:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    invoke-direct {p0, p1, v0, p2}, Landroidx/fragment/app/SpecialEffectsController;->enqueue(Landroidx/fragment/app/SpecialEffectsController$Operation$State;Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;Landroidx/fragment/app/FragmentStateManager;)V

    return-void
.end method

.method public final enqueueHide(Landroidx/fragment/app/FragmentStateManager;)V
    .locals 2

    const-string v0, "fragmentStateManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 98
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpecialEffectsController: Enqueuing hide operation for fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentStateManager;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_0
    sget-object v0, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->GONE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    sget-object v1, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->NONE:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    invoke-direct {p0, v0, v1, p1}, Landroidx/fragment/app/SpecialEffectsController;->enqueue(Landroidx/fragment/app/SpecialEffectsController$Operation$State;Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;Landroidx/fragment/app/FragmentStateManager;)V

    return-void
.end method

.method public final enqueueRemove(Landroidx/fragment/app/FragmentStateManager;)V
    .locals 2

    const-string v0, "fragmentStateManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 109
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpecialEffectsController: Enqueuing remove operation for fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentStateManager;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_0
    sget-object v0, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->REMOVED:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    sget-object v1, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->REMOVING:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    invoke-direct {p0, v0, v1, p1}, Landroidx/fragment/app/SpecialEffectsController;->enqueue(Landroidx/fragment/app/SpecialEffectsController$Operation$State;Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;Landroidx/fragment/app/FragmentStateManager;)V

    return-void
.end method

.method public final enqueueShow(Landroidx/fragment/app/FragmentStateManager;)V
    .locals 2

    const-string v0, "fragmentStateManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 87
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpecialEffectsController: Enqueuing show operation for fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentStateManager;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_0
    sget-object v0, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    sget-object v1, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->NONE:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    invoke-direct {p0, v0, v1, p1}, Landroidx/fragment/app/SpecialEffectsController;->enqueue(Landroidx/fragment/app/SpecialEffectsController$Operation$State;Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;Landroidx/fragment/app/FragmentStateManager;)V

    return-void
.end method

.method public final executePendingOperations()V
    .locals 10

    const/4 v0, 0x1

    .line 196
    iget-boolean v1, p0, Landroidx/fragment/app/SpecialEffectsController;->isContainerPostponed:Z

    if-eqz v1, :cond_0

    return-void

    .line 202
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/SpecialEffectsController;->container:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 203
    invoke-virtual {p0}, Landroidx/fragment/app/SpecialEffectsController;->forceCompleteAllOperations()V

    .line 204
    iput-boolean v2, p0, Landroidx/fragment/app/SpecialEffectsController;->operationDirectionIsPop:Z

    return-void

    .line 207
    :cond_1
    iget-object v1, p0, Landroidx/fragment/app/SpecialEffectsController;->pendingOperations:Ljava/util/List;

    monitor-enter v1

    .line 208
    :try_start_0
    iget-object v3, p0, Landroidx/fragment/app/SpecialEffectsController;->runningOperations:Ljava/util/List;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    .line 209
    iget-object v4, p0, Landroidx/fragment/app/SpecialEffectsController;->runningOperations:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 212
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 214
    iget-object v6, p0, Landroidx/fragment/app/SpecialEffectsController;->pendingOperations:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v5}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v6

    iget-boolean v6, v6, Landroidx/fragment/app/Fragment;->mTransitioning:Z

    if-eqz v6, :cond_2

    move v6, v0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_7

    :cond_2
    move v6, v2

    .line 213
    :goto_1
    invoke-virtual {v5, v6}, Landroidx/fragment/app/SpecialEffectsController$Operation;->setSeeking$fragment_release(Z)V

    goto :goto_0

    .line 216
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 225
    iget-boolean v6, p0, Landroidx/fragment/app/SpecialEffectsController;->runningNonSeekableTransition:Z

    if-eqz v6, :cond_6

    .line 226
    invoke-static {v5}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 228
    const-string v5, "FragmentManager"

    .line 229
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SpecialEffectsController: Completing non-seekable operation "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 227
    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_5
    invoke-virtual {v4}, Landroidx/fragment/app/SpecialEffectsController$Operation;->complete$fragment_release()V

    goto :goto_3

    .line 235
    :cond_6
    invoke-static {v5}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 237
    const-string v5, "FragmentManager"

    .line 238
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SpecialEffectsController: Cancelling operation "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 236
    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_7
    iget-object v5, p0, Landroidx/fragment/app/SpecialEffectsController;->container:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroidx/fragment/app/SpecialEffectsController$Operation;->cancel(Landroid/view/ViewGroup;)V

    .line 243
    :goto_3
    iput-boolean v2, p0, Landroidx/fragment/app/SpecialEffectsController;->runningNonSeekableTransition:Z

    .line 244
    invoke-virtual {v4}, Landroidx/fragment/app/SpecialEffectsController$Operation;->isComplete()Z

    move-result v5

    if-nez v5, :cond_4

    .line 247
    iget-object v5, p0, Landroidx/fragment/app/SpecialEffectsController;->runningOperations:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 250
    :cond_8
    iget-object v3, p0, Landroidx/fragment/app/SpecialEffectsController;->pendingOperations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_f

    .line 251
    invoke-direct {p0}, Landroidx/fragment/app/SpecialEffectsController;->updateFinalState()V

    .line 252
    iget-object v3, p0, Landroidx/fragment/app/SpecialEffectsController;->pendingOperations:Ljava/util/List;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    .line 253
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_9

    .line 254
    monitor-exit v1

    return-void

    .line 256
    :cond_9
    :try_start_1
    iget-object v4, p0, Landroidx/fragment/app/SpecialEffectsController;->pendingOperations:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 257
    iget-object v4, p0, Landroidx/fragment/app/SpecialEffectsController;->runningOperations:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 258
    invoke-static {v5}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 260
    const-string v4, "FragmentManager"

    .line 261
    const-string v6, "SpecialEffectsController: Executing pending operations"

    .line 259
    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_a
    iget-boolean v4, p0, Landroidx/fragment/app/SpecialEffectsController;->operationDirectionIsPop:Z

    invoke-virtual {p0, v3, v4}, Landroidx/fragment/app/SpecialEffectsController;->collectEffects(Ljava/util/List;Z)V

    .line 265
    invoke-direct {p0, v3}, Landroidx/fragment/app/SpecialEffectsController;->isOperationSeekable(Ljava/util/List;)Z

    move-result v4

    .line 266
    invoke-direct {p0, v3}, Landroidx/fragment/app/SpecialEffectsController;->isOperationTransitioning(Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_b

    if-nez v4, :cond_b

    move v7, v0

    goto :goto_4

    :cond_b
    move v7, v2

    .line 267
    :goto_4
    iput-boolean v7, p0, Landroidx/fragment/app/SpecialEffectsController;->runningNonSeekableTransition:Z

    .line 269
    invoke-static {v5}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 271
    const-string v7, "FragmentManager"

    .line 272
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SpecialEffectsController: Operation seekable = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " \ntransition = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 270
    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    if-nez v6, :cond_d

    .line 278
    invoke-direct {p0, v3}, Landroidx/fragment/app/SpecialEffectsController;->processStart(Ljava/util/List;)V

    .line 279
    invoke-virtual {p0, v3}, Landroidx/fragment/app/SpecialEffectsController;->commitEffects$fragment_release(Ljava/util/List;)V

    goto :goto_6

    :cond_d
    if-eqz v4, :cond_e

    .line 282
    invoke-direct {p0, v3}, Landroidx/fragment/app/SpecialEffectsController;->processStart(Ljava/util/List;)V

    .line 283
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v4

    move v6, v2

    :goto_5
    if-ge v6, v4, :cond_e

    .line 284
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 285
    invoke-virtual {p0, v7}, Landroidx/fragment/app/SpecialEffectsController;->applyContainerChangesToOperation$fragment_release(Landroidx/fragment/app/SpecialEffectsController$Operation;)V

    add-int/2addr v6, v0

    goto :goto_5

    .line 289
    :cond_e
    :goto_6
    iput-boolean v2, p0, Landroidx/fragment/app/SpecialEffectsController;->operationDirectionIsPop:Z

    .line 290
    invoke-static {v5}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_f

    .line 292
    const-string p0, "FragmentManager"

    .line 293
    const-string v0, "SpecialEffectsController: Finished executing pending operations"

    .line 291
    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_f
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 207
    monitor-exit v1

    return-void

    :goto_7
    monitor-exit v1

    throw p0
.end method

.method public final forceCompleteAllOperations()V
    .locals 10

    const/4 v0, 0x2

    .line 329
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 331
    const-string v1, "FragmentManager"

    .line 332
    const-string v2, "SpecialEffectsController: Forcing all operations to complete"

    .line 330
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/SpecialEffectsController;->container:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v1

    .line 336
    iget-object v2, p0, Landroidx/fragment/app/SpecialEffectsController;->pendingOperations:Ljava/util/List;

    monitor-enter v2

    .line 337
    :try_start_0
    invoke-direct {p0}, Landroidx/fragment/app/SpecialEffectsController;->updateFinalState()V

    .line 338
    iget-object v3, p0, Landroidx/fragment/app/SpecialEffectsController;->pendingOperations:Ljava/util/List;

    invoke-direct {p0, v3}, Landroidx/fragment/app/SpecialEffectsController;->processStart(Ljava/util/List;)V

    .line 341
    iget-object v3, p0, Landroidx/fragment/app/SpecialEffectsController;->runningOperations:Ljava/util/List;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    .line 342
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 343
    invoke-virtual {v5, v6}, Landroidx/fragment/app/SpecialEffectsController$Operation;->setSeeking$fragment_release(Z)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    .line 345
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 346
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v1, :cond_2

    .line 349
    const-string v5, ""

    goto :goto_2

    .line 351
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Container "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Landroidx/fragment/app/SpecialEffectsController;->container:Landroid/view/ViewGroup;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " is not attached to window. "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 354
    :goto_2
    const-string v7, "FragmentManager"

    .line 355
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SpecialEffectsController: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    const-string v5, "Cancelling running operation "

    .line 355
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 353
    invoke-static {v7, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_3
    iget-object v5, p0, Landroidx/fragment/app/SpecialEffectsController;->container:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroidx/fragment/app/SpecialEffectsController$Operation;->cancel(Landroid/view/ViewGroup;)V

    goto :goto_1

    .line 364
    :cond_4
    iget-object v3, p0, Landroidx/fragment/app/SpecialEffectsController;->pendingOperations:Ljava/util/List;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    .line 365
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 366
    invoke-virtual {v5, v6}, Landroidx/fragment/app/SpecialEffectsController$Operation;->setSeeking$fragment_release(Z)V

    goto :goto_3

    .line 368
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 369
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_7

    if-eqz v1, :cond_6

    .line 372
    const-string v5, ""

    goto :goto_5

    .line 374
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Container "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroidx/fragment/app/SpecialEffectsController;->container:Landroid/view/ViewGroup;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " is not attached to window. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 377
    :goto_5
    const-string v6, "FragmentManager"

    .line 378
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SpecialEffectsController: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    const-string v5, "Cancelling pending operation "

    .line 378
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 376
    invoke-static {v6, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_7
    iget-object v5, p0, Landroidx/fragment/app/SpecialEffectsController;->container:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroidx/fragment/app/SpecialEffectsController$Operation;->cancel(Landroid/view/ViewGroup;)V

    goto :goto_4

    .line 385
    :cond_8
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    monitor-exit v2

    return-void

    :goto_6
    monitor-exit v2

    throw p0
.end method

.method public final forcePostponedExecutePendingOperations()V
    .locals 2

    .line 186
    iget-boolean v0, p0, Landroidx/fragment/app/SpecialEffectsController;->isContainerPostponed:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 187
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    const-string v0, "FragmentManager"

    const-string v1, "SpecialEffectsController: Forcing postponed operations"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 190
    iput-boolean v0, p0, Landroidx/fragment/app/SpecialEffectsController;->isContainerPostponed:Z

    .line 191
    invoke-virtual {p0}, Landroidx/fragment/app/SpecialEffectsController;->executePendingOperations()V

    :cond_1
    return-void
.end method

.method public final getAwaitingCompletionLifecycleImpact(Landroidx/fragment/app/FragmentStateManager;)Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;
    .locals 3

    const-string v0, "fragmentStateManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentStateManager;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    const-string v0, "fragmentStateManager.fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-direct {p0, p1}, Landroidx/fragment/app/SpecialEffectsController;->findPendingOperation(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/SpecialEffectsController$Operation;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getLifecycleImpact()Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 56
    :goto_0
    invoke-direct {p0, p1}, Landroidx/fragment/app/SpecialEffectsController;->findRunningOperation(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/SpecialEffectsController$Operation;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getLifecycleImpact()Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    move-result-object v1

    :cond_1
    const/4 p0, -0x1

    if-nez v0, :cond_2

    move p1, p0

    goto :goto_1

    .line 58
    :cond_2
    sget-object p1, Landroidx/fragment/app/SpecialEffectsController$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget p1, p1, v2

    :goto_1
    if-eq p1, p0, :cond_3

    const/4 p0, 0x1

    if-eq p1, p0, :cond_3

    goto :goto_2

    :cond_3
    move-object v0, v1

    :goto_2
    return-object v0
.end method

.method public final getContainer()Landroid/view/ViewGroup;
    .locals 0

    .line 33
    iget-object p0, p0, Landroidx/fragment/app/SpecialEffectsController;->container:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public final isPendingExecute()Z
    .locals 0

    .line 182
    iget-object p0, p0, Landroidx/fragment/app/SpecialEffectsController;->pendingOperations:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final markPostponedState()V
    .locals 8

    .line 164
    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController;->pendingOperations:Ljava/util/List;

    monitor-enter v0

    .line 165
    :try_start_0
    invoke-direct {p0}, Landroidx/fragment/app/SpecialEffectsController;->updateFinalState()V

    .line 167
    iget-object v1, p0, Landroidx/fragment/app/SpecialEffectsController;->pendingOperations:Ljava/util/List;

    .line 533
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 534
    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 535
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    .line 536
    move-object v4, v2

    check-cast v4, Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 170
    sget-object v5, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->Companion:Landroidx/fragment/app/SpecialEffectsController$Operation$State$Companion;

    invoke-virtual {v4}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v6

    iget-object v6, v6, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    const-string v7, "operation.fragment.mView"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroidx/fragment/app/SpecialEffectsController$Operation$State$Companion;->asOperationState(Landroid/view/View;)Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    move-result-object v5

    .line 171
    invoke-virtual {v4}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFinalState()Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    move-result-object v4

    sget-object v6, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    if-ne v4, v6, :cond_0

    if-eq v5, v6, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    move-object v2, v3

    .line 168
    :goto_0
    check-cast v2, Landroidx/fragment/app/SpecialEffectsController$Operation;

    if-eqz v2, :cond_2

    .line 174
    invoke-virtual {v2}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v3

    :cond_2
    if-eqz v3, :cond_3

    .line 177
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->isPostponed()Z

    move-result v1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Landroidx/fragment/app/SpecialEffectsController;->isContainerPostponed:Z

    .line 178
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0

    throw p0
.end method

.method public final processProgress(Landroidx/activity/BackEventCompat;)V
    .locals 5

    const-string v0, "backEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 458
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpecialEffectsController: Processing Progress "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/activity/BackEventCompat;->getProgress()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 459
    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController;->runningOperations:Ljava/util/List;

    .line 1360
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1446
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1447
    check-cast v2, Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 465
    invoke-virtual {v2}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getEffects$fragment_release()Ljava/util/List;

    move-result-object v2

    .line 1448
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 465
    :cond_1
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 466
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    .line 467
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/SpecialEffectsController$Effect;

    .line 468
    iget-object v4, p0, Landroidx/fragment/app/SpecialEffectsController;->container:Landroid/view/ViewGroup;

    invoke-virtual {v3, p1, v4}, Landroidx/fragment/app/SpecialEffectsController$Effect;->onProgress(Landroidx/activity/BackEventCompat;Landroid/view/ViewGroup;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final updateOperationDirection(Z)V
    .locals 0

    .line 160
    iput-boolean p1, p0, Landroidx/fragment/app/SpecialEffectsController;->operationDirectionIsPop:Z

    return-void
.end method
