.class public abstract Landroidx/compose/runtime/ComposerKt;
.super Ljava/lang/Object;
.source "Composer.kt"


# static fields
.field private static final InvalidationLocationAscending:Ljava/util/Comparator;

.field private static final compositionLocalMap:Ljava/lang/Object;

.field private static final invocation:Ljava/lang/Object;

.field private static final provider:Ljava/lang/Object;

.field private static final providerMaps:Ljava/lang/Object;

.field private static final providerValues:Ljava/lang/Object;

.field private static final reference:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$UXSvu71fSZnFJDgYvdjYUFl0jX4(Landroidx/compose/runtime/Invalidation;Landroidx/compose/runtime/Invalidation;)I
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/compose/runtime/ComposerKt;->InvalidationLocationAscending$lambda$15(Landroidx/compose/runtime/Invalidation;Landroidx/compose/runtime/Invalidation;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 4498
    new-instance v0, Landroidx/compose/runtime/OpaqueKey;

    const-string v1, "provider"

    invoke-direct {v0, v1}, Landroidx/compose/runtime/OpaqueKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Ljava/lang/Object;

    .line 4502
    new-instance v0, Landroidx/compose/runtime/OpaqueKey;

    invoke-direct {v0, v1}, Landroidx/compose/runtime/OpaqueKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/compose/runtime/ComposerKt;->provider:Ljava/lang/Object;

    .line 4506
    new-instance v0, Landroidx/compose/runtime/OpaqueKey;

    const-string v1, "compositionLocalMap"

    invoke-direct {v0, v1}, Landroidx/compose/runtime/OpaqueKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/compose/runtime/ComposerKt;->compositionLocalMap:Ljava/lang/Object;

    .line 4510
    new-instance v0, Landroidx/compose/runtime/OpaqueKey;

    const-string v1, "providerValues"

    invoke-direct {v0, v1}, Landroidx/compose/runtime/OpaqueKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/compose/runtime/ComposerKt;->providerValues:Ljava/lang/Object;

    .line 4514
    new-instance v0, Landroidx/compose/runtime/OpaqueKey;

    const-string v1, "providers"

    invoke-direct {v0, v1}, Landroidx/compose/runtime/OpaqueKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/compose/runtime/ComposerKt;->providerMaps:Ljava/lang/Object;

    .line 4518
    new-instance v0, Landroidx/compose/runtime/OpaqueKey;

    const-string v1, "reference"

    invoke-direct {v0, v1}, Landroidx/compose/runtime/OpaqueKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/compose/runtime/ComposerKt;->reference:Ljava/lang/Object;

    .line 4556
    new-instance v0, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/compose/runtime/ComposerKt;->InvalidationLocationAscending:Ljava/util/Comparator;

    return-void
.end method

.method private static final InvalidationLocationAscending$lambda$15(Landroidx/compose/runtime/Invalidation;Landroidx/compose/runtime/Invalidation;)I
    .locals 0

    .line 4556
    invoke-virtual {p0}, Landroidx/compose/runtime/Invalidation;->getLocation()I

    move-result p0

    invoke-virtual {p1}, Landroidx/compose/runtime/Invalidation;->getLocation()I

    move-result p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$asBool(I)Z
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->asBool(I)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$asInt(Z)I
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->asInt(Z)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$collectNodesFrom(Landroidx/compose/runtime/SlotTable;Landroidx/compose/runtime/Anchor;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/runtime/ComposerKt;->collectNodesFrom(Landroidx/compose/runtime/SlotTable;Landroidx/compose/runtime/Anchor;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$firstInRange(Ljava/util/List;II)Landroidx/compose/runtime/Invalidation;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/ComposerKt;->firstInRange(Ljava/util/List;II)Landroidx/compose/runtime/Invalidation;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getInvalidationLocationAscending$p()Ljava/util/Comparator;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->InvalidationLocationAscending:Ljava/util/Comparator;

    return-object v0
.end method

.method public static final synthetic access$getJoinedKey(Landroidx/compose/runtime/KeyInfo;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->getJoinedKey(Landroidx/compose/runtime/KeyInfo;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$insertIfMissing(Ljava/util/List;ILandroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/runtime/ComposerKt;->insertIfMissing(Ljava/util/List;ILandroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$multiMap(I)Landroidx/collection/MutableScatterMap;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->multiMap(I)Landroidx/collection/MutableScatterMap;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$nearestCommonRootOf(Landroidx/compose/runtime/SlotReader;III)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/runtime/ComposerKt;->nearestCommonRootOf(Landroidx/compose/runtime/SlotReader;III)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$removeLocation(Ljava/util/List;I)Landroidx/compose/runtime/Invalidation;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/runtime/ComposerKt;->removeLocation(Ljava/util/List;I)Landroidx/compose/runtime/Invalidation;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$removeRange(Ljava/util/List;II)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/ComposerKt;->removeRange(Ljava/util/List;II)V

    return-void
.end method

.method private static final asBool(I)Z
    .locals 0

    .line 0
    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static final asInt(Z)I
    .locals 0

    .line 0
    return p0
.end method

.method private static final collectNodesFrom(Landroidx/compose/runtime/SlotTable;Landroidx/compose/runtime/Anchor;)Ljava/util/List;
    .locals 2

    .line 4393
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 150
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotTable;->openReader()Landroidx/compose/runtime/SlotReader;

    move-result-object v1

    .line 4395
    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotTable;->anchorIndex(Landroidx/compose/runtime/Anchor;)I

    move-result p0

    .line 4408
    invoke-static {v1, v0, p0}, Landroidx/compose/runtime/ComposerKt;->collectNodesFrom$lambda$10$collectFromGroup(Landroidx/compose/runtime/SlotReader;Ljava/util/List;I)V

    .line 4409
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    invoke-virtual {v1}, Landroidx/compose/runtime/SlotReader;->close()V

    return-object v0

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Landroidx/compose/runtime/SlotReader;->close()V

    throw p0
.end method

.method private static final collectNodesFrom$lambda$10$collectFromGroup(Landroidx/compose/runtime/SlotReader;Ljava/util/List;I)V
    .locals 2

    .line 4397
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/SlotReader;->isNode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4398
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/SlotReader;->node(I)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    add-int/lit8 v0, p2, 0x1

    .line 4401
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/SlotReader;->groupSize(I)I

    move-result v1

    add-int/2addr p2, v1

    :goto_0
    if-ge v0, p2, :cond_1

    .line 4403
    invoke-static {p0, p1, v0}, Landroidx/compose/runtime/ComposerKt;->collectNodesFrom$lambda$10$collectFromGroup(Landroidx/compose/runtime/SlotReader;Ljava/util/List;I)V

    .line 4404
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/SlotReader;->groupSize(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static final composeImmediateRuntimeError(Ljava/lang/String;)V
    .locals 3

    .line 4548
    new-instance v0, Landroidx/compose/runtime/ComposeRuntimeError;

    .line 4549
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Compose Runtime internal error. Unexpected or incorrect use of the Compose internal runtime API ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4550
    const-string p0, "). Please report to Google or use https://goo.gle/compose-feedback"

    .line 4549
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4548
    invoke-direct {v0, p0}, Landroidx/compose/runtime/ComposeRuntimeError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;
    .locals 3

    .line 4538
    new-instance v0, Landroidx/compose/runtime/ComposeRuntimeError;

    .line 4539
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Compose Runtime internal error. Unexpected or incorrect use of the Compose internal runtime API ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4540
    const-string p0, "). Please report to Google or use https://goo.gle/compose-feedback"

    .line 4539
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4538
    invoke-direct {v0, p0}, Landroidx/compose/runtime/ComposeRuntimeError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final deactivateCurrentGroup(Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/RememberManager;)V
    .locals 7

    .line 4205
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getCurrentGroup()I

    move-result v0

    .line 2035
    invoke-static {p0, v0}, Landroidx/compose/runtime/SlotWriter;->access$groupIndexToAddress(Landroidx/compose/runtime/SlotWriter;I)I

    move-result v0

    .line 2036
    invoke-static {p0}, Landroidx/compose/runtime/SlotWriter;->access$getGroups$p(Landroidx/compose/runtime/SlotWriter;)[I

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroidx/compose/runtime/SlotWriter;->access$dataIndex(Landroidx/compose/runtime/SlotWriter;[II)I

    move-result v0

    .line 2037
    invoke-static {p0}, Landroidx/compose/runtime/SlotWriter;->access$getGroups$p(Landroidx/compose/runtime/SlotWriter;)[I

    move-result-object v1

    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getCurrentGroup()I

    move-result v2

    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getCurrentGroup()I

    move-result v3

    invoke-virtual {p0, v3}, Landroidx/compose/runtime/SlotWriter;->groupSize(I)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {p0, v2}, Landroidx/compose/runtime/SlotWriter;->access$groupIndexToAddress(Landroidx/compose/runtime/SlotWriter;I)I

    move-result v2

    invoke-static {p0, v1, v2}, Landroidx/compose/runtime/SlotWriter;->access$dataIndex(Landroidx/compose/runtime/SlotWriter;[II)I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_4

    .line 2039
    invoke-static {p0}, Landroidx/compose/runtime/SlotWriter;->access$getSlots$p(Landroidx/compose/runtime/SlotWriter;)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v0}, Landroidx/compose/runtime/SlotWriter;->access$dataIndexToDataAddress(Landroidx/compose/runtime/SlotWriter;I)I

    move-result v3

    aget-object v2, v2, v3

    .line 4207
    instance-of v3, v2, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    const/4 v4, -0x1

    if-eqz v3, :cond_0

    .line 4208
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getSlotsSize()I

    move-result v3

    sub-int/2addr v3, v0

    .line 4209
    check-cast v2, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    invoke-interface {p1, v2, v3, v4, v4}, Landroidx/compose/runtime/RememberManager;->deactivating(Landroidx/compose/runtime/ComposeNodeLifecycleCallback;III)V

    goto :goto_2

    .line 4211
    :cond_0
    instance-of v3, v2, Landroidx/compose/runtime/RememberObserverHolder;

    if-eqz v3, :cond_2

    .line 4212
    move-object v3, v2

    check-cast v3, Landroidx/compose/runtime/RememberObserverHolder;

    invoke-virtual {v3}, Landroidx/compose/runtime/RememberObserverHolder;->getWrapped()Landroidx/compose/runtime/RememberObserver;

    move-result-object v5

    .line 4213
    instance-of v6, v5, Landroidx/compose/runtime/ReusableRememberObserver;

    if-nez v6, :cond_3

    .line 4216
    invoke-static {p0, v0, v2}, Landroidx/compose/runtime/ComposerKt;->removeData(Landroidx/compose/runtime/SlotWriter;ILjava/lang/Object;)V

    .line 4217
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getSlotsSize()I

    move-result v2

    sub-int/2addr v2, v0

    .line 4218
    invoke-virtual {v3}, Landroidx/compose/runtime/RememberObserverHolder;->getAfter()Landroidx/compose/runtime/Anchor;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 4186
    invoke-virtual {v3}, Landroidx/compose/runtime/Anchor;->getValid()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 4187
    invoke-virtual {p0, v3}, Landroidx/compose/runtime/SlotWriter;->anchorIndex(Landroidx/compose/runtime/Anchor;)I

    move-result v4

    .line 4188
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getSlotsSize()I

    move-result v3

    invoke-virtual {p0, v4}, Landroidx/compose/runtime/SlotWriter;->slotsEndAllIndex$runtime_release(I)I

    move-result v6

    sub-int/2addr v3, v6

    goto :goto_1

    :cond_1
    move v3, v4

    .line 4219
    :goto_1
    invoke-interface {p1, v5, v2, v4, v3}, Landroidx/compose/runtime/RememberManager;->forgetting(Landroidx/compose/runtime/RememberObserver;III)V

    goto :goto_2

    .line 4228
    :cond_2
    instance-of v3, v2, Landroidx/compose/runtime/RecomposeScopeImpl;

    if-eqz v3, :cond_3

    .line 4229
    invoke-static {p0, v0, v2}, Landroidx/compose/runtime/ComposerKt;->removeData(Landroidx/compose/runtime/SlotWriter;ILjava/lang/Object;)V

    .line 4230
    check-cast v2, Landroidx/compose/runtime/RecomposeScopeImpl;

    invoke-virtual {v2}, Landroidx/compose/runtime/RecomposeScopeImpl;->release()V

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private static final distanceFrom(Landroidx/compose/runtime/SlotReader;II)I
    .locals 1

    const/4 v0, 0x0

    :goto_0
    if-lez p1, :cond_0

    if-eq p1, p2, :cond_0

    .line 4417
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    move-result p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private static final findInsertLocation(Ljava/util/List;I)I
    .locals 0

    .line 4313
    invoke-static {p0, p1}, Landroidx/compose/runtime/ComposerKt;->findLocation(Ljava/util/List;I)I

    move-result p0

    if-gez p0, :cond_0

    add-int/lit8 p0, p0, 0x1

    neg-int p0, p0

    :cond_0
    return p0
.end method

.method private static final findLocation(Ljava/util/List;I)I
    .locals 4

    .line 4296
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-gt v1, v0, :cond_2

    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    .line 4300
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/runtime/Invalidation;

    .line 4301
    invoke-virtual {v3}, Landroidx/compose/runtime/Invalidation;->getLocation()I

    move-result v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v3

    if-gez v3, :cond_0

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_0
    if-lez v3, :cond_1

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    neg-int p0, v1

    return p0
.end method

.method private static final firstInRange(Ljava/util/List;II)Landroidx/compose/runtime/Invalidation;
    .locals 1

    .line 4353
    invoke-static {p0, p1}, Landroidx/compose/runtime/ComposerKt;->findInsertLocation(Ljava/util/List;I)I

    move-result p1

    .line 4354
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 4355
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/runtime/Invalidation;

    .line 4356
    invoke-virtual {p0}, Landroidx/compose/runtime/Invalidation;->getLocation()I

    move-result p1

    if-ge p1, p2, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final getCompositionLocalMap()Ljava/lang/Object;
    .locals 1

    .line 4506
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->compositionLocalMap:Ljava/lang/Object;

    return-object v0
.end method

.method public static final getInvocation()Ljava/lang/Object;
    .locals 1

    .line 4498
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Ljava/lang/Object;

    return-object v0
.end method

.method private static final getJoinedKey(Landroidx/compose/runtime/KeyInfo;)Ljava/lang/Object;
    .locals 2

    .line 4452
    invoke-virtual {p0}, Landroidx/compose/runtime/KeyInfo;->getObjectKey()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/compose/runtime/JoinedKey;

    invoke-virtual {p0}, Landroidx/compose/runtime/KeyInfo;->getKey()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/compose/runtime/KeyInfo;->getObjectKey()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroidx/compose/runtime/JoinedKey;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/runtime/KeyInfo;->getKey()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static final getProvider()Ljava/lang/Object;
    .locals 1

    .line 4502
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->provider:Ljava/lang/Object;

    return-object v0
.end method

.method public static final getProviderMaps()Ljava/lang/Object;
    .locals 1

    .line 4514
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->providerMaps:Ljava/lang/Object;

    return-object v0
.end method

.method public static final getReference()Ljava/lang/Object;
    .locals 1

    .line 4518
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->reference:Ljava/lang/Object;

    return-object v0
.end method

.method private static final insertIfMissing(Ljava/util/List;ILandroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)V
    .locals 3

    .line 4320
    invoke-static {p0, p1}, Landroidx/compose/runtime/ComposerKt;->findLocation(Ljava/util/List;I)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_1

    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    .line 4328
    instance-of v2, p3, Landroidx/compose/runtime/DerivedState;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object p3, v1

    .line 4324
    :goto_0
    new-instance v1, Landroidx/compose/runtime/Invalidation;

    invoke-direct {v1, p2, p1, p3}, Landroidx/compose/runtime/Invalidation;-><init>(Landroidx/compose/runtime/RecomposeScopeImpl;ILjava/lang/Object;)V

    .line 4322
    invoke-interface {p0, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 4332
    :cond_1
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/runtime/Invalidation;

    .line 4334
    instance-of p1, p3, Landroidx/compose/runtime/DerivedState;

    if-eqz p1, :cond_4

    .line 4335
    invoke-virtual {p0}, Landroidx/compose/runtime/Invalidation;->getInstances()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    .line 4336
    invoke-virtual {p0, p3}, Landroidx/compose/runtime/Invalidation;->setInstances(Ljava/lang/Object;)V

    goto :goto_1

    .line 4337
    :cond_2
    instance-of p2, p1, Landroidx/collection/MutableScatterSet;

    if-eqz p2, :cond_3

    .line 4339
    check-cast p1, Landroidx/collection/MutableScatterSet;

    .line 4340
    invoke-virtual {p1, p3}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4343
    :cond_3
    invoke-static {p1, p3}, Landroidx/collection/ScatterSetKt;->mutableScatterSetOf(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/collection/MutableScatterSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/Invalidation;->setInstances(Ljava/lang/Object;)V

    goto :goto_1

    .line 4347
    :cond_4
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/Invalidation;->setInstances(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public static final isAfterFirstChild(Landroidx/compose/runtime/SlotReader;)Z
    .locals 2

    .line 4196
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotReader;->getCurrentGroup()I

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/runtime/SlotReader;->getParent()I

    move-result p0

    const/4 v1, 0x1

    add-int/2addr p0, v1

    if-le v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static final isAfterFirstChild(Landroidx/compose/runtime/SlotWriter;)Z
    .locals 2

    .line 4194
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getCurrentGroup()I

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getParent()I

    move-result p0

    const/4 v1, 0x1

    add-int/2addr p0, v1

    if-le v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static final isTraceInProgress()Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method private static final multiMap(I)Landroidx/collection/MutableScatterMap;
    .locals 1

    .line 4285
    new-instance v0, Landroidx/collection/MutableScatterMap;

    invoke-direct {v0, p0}, Landroidx/collection/MutableScatterMap;-><init>(I)V

    invoke-static {v0}, Landroidx/compose/runtime/MutableScatterMultiMap;->constructor-impl(Landroidx/collection/MutableScatterMap;)Landroidx/collection/MutableScatterMap;

    move-result-object p0

    return-object p0
.end method

.method private static final nearestCommonRootOf(Landroidx/compose/runtime/SlotReader;III)I
    .locals 4

    if-ne p1, p2, :cond_0

    return p1

    :cond_0
    if-eq p1, p3, :cond_8

    if-ne p2, p3, :cond_1

    goto :goto_3

    .line 4428
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    move-result v0

    if-ne v0, p2, :cond_2

    return p2

    .line 4429
    :cond_2
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    move-result v0

    if-ne v0, p1, :cond_3

    return p1

    .line 4430
    :cond_3
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    move-result v0

    invoke-virtual {p0, p2}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    move-result v1

    if-ne v0, v1, :cond_4

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    move-result p0

    return p0

    .line 4435
    :cond_4
    invoke-static {p0, p1, p3}, Landroidx/compose/runtime/ComposerKt;->distanceFrom(Landroidx/compose/runtime/SlotReader;II)I

    move-result v0

    .line 4436
    invoke-static {p0, p2, p3}, Landroidx/compose/runtime/ComposerKt;->distanceFrom(Landroidx/compose/runtime/SlotReader;II)I

    move-result p3

    sub-int v1, v0, p3

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_5

    .line 4437
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    move-result p1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    sub-int/2addr p3, v0

    :goto_1
    if-ge v2, p3, :cond_6

    .line 4438
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    move-result p2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    if-eq p1, p2, :cond_7

    .line 4443
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    move-result p1

    .line 4444
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    move-result p2

    goto :goto_2

    :cond_7
    return p1

    :cond_8
    :goto_3
    return p3
.end method

.method public static final removeCurrentGroup(Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/RememberManager;)V
    .locals 8

    .line 4157
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getCurrentGroup()I

    move-result v0

    .line 2035
    invoke-static {p0, v0}, Landroidx/compose/runtime/SlotWriter;->access$groupIndexToAddress(Landroidx/compose/runtime/SlotWriter;I)I

    move-result v0

    .line 2036
    invoke-static {p0}, Landroidx/compose/runtime/SlotWriter;->access$getGroups$p(Landroidx/compose/runtime/SlotWriter;)[I

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroidx/compose/runtime/SlotWriter;->access$dataIndex(Landroidx/compose/runtime/SlotWriter;[II)I

    move-result v0

    .line 2037
    invoke-static {p0}, Landroidx/compose/runtime/SlotWriter;->access$getGroups$p(Landroidx/compose/runtime/SlotWriter;)[I

    move-result-object v1

    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getCurrentGroup()I

    move-result v2

    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getCurrentGroup()I

    move-result v3

    invoke-virtual {p0, v3}, Landroidx/compose/runtime/SlotWriter;->groupSize(I)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {p0, v2}, Landroidx/compose/runtime/SlotWriter;->access$groupIndexToAddress(Landroidx/compose/runtime/SlotWriter;I)I

    move-result v2

    invoke-static {p0, v1, v2}, Landroidx/compose/runtime/SlotWriter;->access$dataIndex(Landroidx/compose/runtime/SlotWriter;[II)I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_4

    .line 2039
    invoke-static {p0}, Landroidx/compose/runtime/SlotWriter;->access$getSlots$p(Landroidx/compose/runtime/SlotWriter;)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v0}, Landroidx/compose/runtime/SlotWriter;->access$dataIndexToDataAddress(Landroidx/compose/runtime/SlotWriter;I)I

    move-result v3

    aget-object v2, v2, v3

    .line 4160
    instance-of v3, v2, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    const/4 v4, -0x1

    if-eqz v3, :cond_0

    .line 4161
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getSlotsSize()I

    move-result v3

    sub-int/2addr v3, v0

    .line 4162
    move-object v5, v2

    check-cast v5, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    invoke-interface {p1, v5, v3, v4, v4}, Landroidx/compose/runtime/RememberManager;->releasing(Landroidx/compose/runtime/ComposeNodeLifecycleCallback;III)V

    .line 4164
    :cond_0
    instance-of v3, v2, Landroidx/compose/runtime/RememberObserverHolder;

    if-eqz v3, :cond_2

    .line 4165
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getSlotsSize()I

    move-result v3

    sub-int/2addr v3, v0

    .line 4166
    move-object v5, v2

    check-cast v5, Landroidx/compose/runtime/RememberObserverHolder;

    invoke-virtual {v5}, Landroidx/compose/runtime/RememberObserverHolder;->getAfter()Landroidx/compose/runtime/Anchor;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 4186
    invoke-virtual {v6}, Landroidx/compose/runtime/Anchor;->getValid()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 4187
    invoke-virtual {p0, v6}, Landroidx/compose/runtime/SlotWriter;->anchorIndex(Landroidx/compose/runtime/Anchor;)I

    move-result v4

    .line 4188
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getSlotsSize()I

    move-result v6

    invoke-virtual {p0, v4}, Landroidx/compose/runtime/SlotWriter;->slotsEndAllIndex$runtime_release(I)I

    move-result v7

    sub-int/2addr v6, v7

    goto :goto_1

    :cond_1
    move v6, v4

    .line 4168
    :goto_1
    invoke-virtual {v5}, Landroidx/compose/runtime/RememberObserverHolder;->getWrapped()Landroidx/compose/runtime/RememberObserver;

    move-result-object v5

    .line 4167
    invoke-interface {p1, v5, v3, v4, v6}, Landroidx/compose/runtime/RememberManager;->forgetting(Landroidx/compose/runtime/RememberObserver;III)V

    .line 4175
    :cond_2
    instance-of v3, v2, Landroidx/compose/runtime/RecomposeScopeImpl;

    if-eqz v3, :cond_3

    .line 4176
    check-cast v2, Landroidx/compose/runtime/RecomposeScopeImpl;

    invoke-virtual {v2}, Landroidx/compose/runtime/RecomposeScopeImpl;->release()V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4180
    :cond_4
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->removeGroup()Z

    return-void
.end method

.method private static final removeData(Landroidx/compose/runtime/SlotWriter;ILjava/lang/Object;)V
    .locals 1

    .line 4237
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotWriter;->clear(I)Ljava/lang/Object;

    move-result-object p0

    if-ne p2, p0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 4238
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Slot table is out of sync (expected "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", got "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4531
    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private static final removeLocation(Ljava/util/List;I)Landroidx/compose/runtime/Invalidation;
    .locals 0

    .line 4362
    invoke-static {p0, p1}, Landroidx/compose/runtime/ComposerKt;->findLocation(Ljava/util/List;I)I

    move-result p1

    if-ltz p1, :cond_0

    .line 4363
    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/runtime/Invalidation;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static final removeRange(Ljava/util/List;II)V
    .locals 1

    .line 4367
    invoke-static {p0, p1}, Landroidx/compose/runtime/ComposerKt;->findInsertLocation(Ljava/util/List;I)I

    move-result p1

    .line 4368
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 4369
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/Invalidation;

    .line 4370
    invoke-virtual {v0}, Landroidx/compose/runtime/Invalidation;->getLocation()I

    move-result v0

    if-ge v0, p2, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final runtimeCheck(Z)V
    .locals 0

    if-nez p0, :cond_0

    .line 4535
    const-string p0, "Check failed"

    .line 4531
    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static final traceEventEnd()V
    .locals 0

    .line 0
    return-void
.end method

.method public static final traceEventStart(IIILjava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method
