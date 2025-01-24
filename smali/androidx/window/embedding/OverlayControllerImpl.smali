.class public Landroidx/window/embedding/OverlayControllerImpl;
.super Ljava/lang/Object;
.source "OverlayControllerImpl.kt"


# instance fields
.field private final adapter:Landroidx/window/embedding/EmbeddingAdapter;

.field private final embeddingExtension:Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;

.field private final globalLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private overlayAttributesCalculator:Lkotlin/jvm/functions/Function1;

.field private final overlayInfoToActivityStackCallbackMap:Landroid/util/ArrayMap;

.field private final overlayTagToContainerMap:Landroid/util/ArrayMap;

.field private final overlayTagToCurrentAttributesMap:Landroid/util/ArrayMap;

.field private final overlayTagToDefaultAttributesMap:Ljava/util/Map;


# direct methods
.method public static synthetic $r8$lambda$25U6kU3enU_9mX7tazgcEqX1Sds(Landroidx/window/embedding/OverlayControllerImpl;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/window/embedding/OverlayControllerImpl;->_init_$lambda$6(Landroidx/window/embedding/OverlayControllerImpl;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jBORjL7LuJGeUgoSIhohDOzbHZU(Landroidx/window/embedding/OverlayControllerImpl;Landroidx/window/extensions/embedding/ActivityStackAttributesCalculatorParams;)Landroidx/window/extensions/embedding/ActivityStackAttributes;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/window/embedding/OverlayControllerImpl;->_init_$lambda$3(Landroidx/window/embedding/OverlayControllerImpl;Landroidx/window/extensions/embedding/ActivityStackAttributesCalculatorParams;)Landroidx/window/extensions/embedding/ActivityStackAttributes;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;Landroidx/window/embedding/EmbeddingAdapter;)V
    .locals 1

    const-string v0, "embeddingExtension"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Landroidx/window/embedding/OverlayControllerImpl;->embeddingExtension:Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;

    .line 52
    iput-object p2, p0, Landroidx/window/embedding/OverlayControllerImpl;->adapter:Landroidx/window/embedding/EmbeddingAdapter;

    .line 54
    new-instance p2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p2, p0, Landroidx/window/embedding/OverlayControllerImpl;->globalLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 71
    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    iput-object p2, p0, Landroidx/window/embedding/OverlayControllerImpl;->overlayTagToDefaultAttributesMap:Ljava/util/Map;

    .line 78
    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    iput-object p2, p0, Landroidx/window/embedding/OverlayControllerImpl;->overlayTagToCurrentAttributesMap:Landroid/util/ArrayMap;

    .line 81
    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    iput-object p2, p0, Landroidx/window/embedding/OverlayControllerImpl;->overlayTagToContainerMap:Landroid/util/ArrayMap;

    .line 86
    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    iput-object p2, p0, Landroidx/window/embedding/OverlayControllerImpl;->overlayInfoToActivityStackCallbackMap:Landroid/util/ArrayMap;

    .line 89
    sget-object p2, Landroidx/window/WindowSdkExtensions;->Companion:Landroidx/window/WindowSdkExtensions$Companion;

    invoke-virtual {p2}, Landroidx/window/WindowSdkExtensions$Companion;->getInstance()Landroidx/window/WindowSdkExtensions;

    move-result-object p2

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroidx/window/WindowSdkExtensions;->requireExtensionVersion$window_release(I)V

    .line 91
    new-instance p2, Landroidx/window/embedding/OverlayControllerImpl$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Landroidx/window/embedding/OverlayControllerImpl$$ExternalSyntheticLambda0;-><init>(Landroidx/window/embedding/OverlayControllerImpl;)V

    invoke-interface {p1, p2}, Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;->setActivityStackAttributesCalculator(Landroidx/window/extensions/core/util/function/Function;)V

    .line 129
    new-instance p2, Landroidx/profileinstaller/ProfileInstallReceiver$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Landroidx/profileinstaller/ProfileInstallReceiver$$ExternalSyntheticLambda0;-><init>()V

    new-instance v0, Landroidx/window/embedding/OverlayControllerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroidx/window/embedding/OverlayControllerImpl$$ExternalSyntheticLambda1;-><init>(Landroidx/window/embedding/OverlayControllerImpl;)V

    invoke-interface {p1, p2, v0}, Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;->registerActivityStackCallback(Ljava/util/concurrent/Executor;Landroidx/window/extensions/core/util/function/Consumer;)V

    return-void
.end method

.method private static final _init_$lambda$3(Landroidx/window/embedding/OverlayControllerImpl;Landroidx/window/extensions/embedding/ActivityStackAttributesCalculatorParams;)Landroidx/window/extensions/embedding/ActivityStackAttributes;
    .locals 13

    .line 92
    const-string v0, "params.launchOptions"

    const-string v1, "parentContainerInfo.windowMetrics"

    const-string v2, "this$0"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/window/embedding/OverlayControllerImpl;->globalLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 93
    :try_start_0
    invoke-virtual {p1}, Landroidx/window/extensions/embedding/ActivityStackAttributesCalculatorParams;->getParentContainerInfo()Landroidx/window/extensions/embedding/ParentContainerInfo;

    move-result-object v3

    const-string v4, "params.parentContainerInfo"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    sget-object v4, Landroidx/window/layout/util/DensityCompatHelper;->Companion:Landroidx/window/layout/util/DensityCompatHelper$Companion;

    invoke-virtual {v4}, Landroidx/window/layout/util/DensityCompatHelper$Companion;->getInstance()Landroidx/window/layout/util/DensityCompatHelper;

    move-result-object v4

    .line 97
    invoke-virtual {v3}, Landroidx/window/extensions/embedding/ParentContainerInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    const-string v6, "parentContainerInfo.configuration"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v3}, Landroidx/window/extensions/embedding/ParentContainerInfo;->getWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v6

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    invoke-interface {v4, v5, v6}, Landroidx/window/layout/util/DensityCompatHelper;->density(Landroid/content/res/Configuration;Landroid/view/WindowMetrics;)F

    move-result v4

    .line 101
    sget-object v5, Landroidx/window/layout/WindowMetricsCalculator;->Companion:Landroidx/window/layout/WindowMetricsCalculator$Companion;

    .line 102
    invoke-virtual {v3}, Landroidx/window/extensions/embedding/ParentContainerInfo;->getWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v6

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-virtual {v5, v6, v4}, Landroidx/window/layout/WindowMetricsCalculator$Companion;->translateWindowMetrics$window_release(Landroid/view/WindowMetrics;F)Landroidx/window/layout/WindowMetrics;

    move-result-object v1

    .line 107
    invoke-virtual {p1}, Landroidx/window/extensions/embedding/ActivityStackAttributesCalculatorParams;->getActivityStackTag()Ljava/lang/String;

    move-result-object v7

    const-string v6, "params.activityStackTag"

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    sget-object v12, Landroidx/window/embedding/ActivityEmbeddingOptionsImpl;->INSTANCE:Landroidx/window/embedding/ActivityEmbeddingOptionsImpl;

    invoke-virtual {p1}, Landroidx/window/extensions/embedding/ActivityStackAttributesCalculatorParams;->getLaunchOptions()Landroid/os/Bundle;

    move-result-object v6

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12, v6}, Landroidx/window/embedding/ActivityEmbeddingOptionsImpl;->getOverlayAttributes$window_release(Landroid/os/Bundle;)Landroidx/window/embedding/OverlayAttributes;

    move-result-object v8

    .line 110
    invoke-virtual {p1}, Landroidx/window/extensions/embedding/ActivityStackAttributesCalculatorParams;->getParentContainerInfo()Landroidx/window/extensions/embedding/ParentContainerInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/window/extensions/embedding/ParentContainerInfo;->getWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v6

    const-string v9, "params.parentContainerInfo.windowMetrics"

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-virtual {v5, v6, v4}, Landroidx/window/layout/WindowMetricsCalculator$Companion;->translateWindowMetrics$window_release(Landroid/view/WindowMetrics;F)Landroidx/window/layout/WindowMetrics;

    move-result-object v9

    .line 113
    invoke-virtual {p1}, Landroidx/window/extensions/embedding/ActivityStackAttributesCalculatorParams;->getParentContainerInfo()Landroidx/window/extensions/embedding/ParentContainerInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/window/extensions/embedding/ParentContainerInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    const-string v4, "params.parentContainerInfo.configuration"

    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    sget-object v4, Landroidx/window/layout/adapter/extensions/ExtensionsWindowLayoutInfoAdapter;->INSTANCE:Landroidx/window/layout/adapter/extensions/ExtensionsWindowLayoutInfoAdapter;

    .line 116
    invoke-virtual {v3}, Landroidx/window/extensions/embedding/ParentContainerInfo;->getWindowLayoutInfo()Landroidx/window/extensions/layout/WindowLayoutInfo;

    move-result-object v5

    const-string v6, "parentContainerInfo.windowLayoutInfo"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    invoke-virtual {v4, v1, v5}, Landroidx/window/layout/adapter/extensions/ExtensionsWindowLayoutInfoAdapter;->translate$window_release(Landroidx/window/layout/WindowMetrics;Landroidx/window/extensions/layout/WindowLayoutInfo;)Landroidx/window/layout/WindowLayoutInfo;

    move-result-object v11

    move-object v6, p0

    .line 106
    invoke-virtual/range {v6 .. v11}, Landroidx/window/embedding/OverlayControllerImpl;->calculateOverlayAttributes$window_release(Ljava/lang/String;Landroidx/window/embedding/OverlayAttributes;Landroidx/window/layout/WindowMetrics;Landroid/content/res/Configuration;Landroidx/window/layout/WindowLayoutInfo;)Landroidx/window/embedding/OverlayAttributes;

    move-result-object v1

    .line 123
    invoke-virtual {p1}, Landroidx/window/extensions/embedding/ActivityStackAttributesCalculatorParams;->getLaunchOptions()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/window/embedding/OverlayAttributes;->getBounds()Landroidx/window/embedding/EmbeddingBounds;

    move-result-object v0

    invoke-virtual {v12, p1, v0}, Landroidx/window/embedding/ActivityEmbeddingOptionsImpl;->putActivityStackAlignment$window_release(Landroid/os/Bundle;Landroidx/window/embedding/EmbeddingBounds;)V

    .line 125
    invoke-direct {p0, v1, v3}, Landroidx/window/embedding/OverlayControllerImpl;->toActivityStackAttributes(Landroidx/window/embedding/OverlayAttributes;Landroidx/window/extensions/embedding/ParentContainerInfo;)Landroidx/window/extensions/embedding/ActivityStackAttributes;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method private static final _init_$lambda$6(Landroidx/window/embedding/OverlayControllerImpl;Ljava/util/List;)V
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Landroidx/window/embedding/OverlayControllerImpl;->globalLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 131
    :try_start_0
    iget-object v1, p0, Landroidx/window/embedding/OverlayControllerImpl;->overlayTagToContainerMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    const-string v2, "overlayTagToContainerMap.keys"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    iget-object v2, p0, Landroidx/window/embedding/OverlayControllerImpl;->overlayTagToContainerMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 134
    iget-object v2, p0, Landroidx/window/embedding/OverlayControllerImpl;->overlayTagToContainerMap:Landroid/util/ArrayMap;

    .line 135
    const-string v3, "activityStacks"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/window/embedding/OverlayControllerImpl;->getOverlayContainers(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 1549
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {p1, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1621
    check-cast v4, Landroidx/window/extensions/embedding/ActivityStack;

    .line 136
    new-instance v5, Lkotlin/Pair;

    invoke-virtual {v4}, Landroidx/window/extensions/embedding/ActivityStack;->getTag()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v5, v6, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1621
    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 134
    :cond_0
    invoke-static {v2, v3}, Lkotlin/collections/MapsKt;->putAll(Ljava/util/Map;Ljava/lang/Iterable;)V

    .line 140
    invoke-direct {p0, v1}, Landroidx/window/embedding/OverlayControllerImpl;->cleanUpDismissedOverlayContainerRecords(Ljava/util/Set;)V

    .line 141
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :goto_1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method private final cleanUpDismissedOverlayContainerRecords(Ljava/util/Set;)V
    .locals 4

    .line 156
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 161
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 162
    iget-object v1, p0, Landroidx/window/embedding/OverlayControllerImpl;->overlayTagToContainerMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    const-string v2, "overlayTagToContainerMap.keys"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 166
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 172
    iget-object v3, p0, Landroidx/window/embedding/OverlayControllerImpl;->embeddingExtension:Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;

    invoke-interface {v3, v2}, Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;->getActivityStackToken(Ljava/lang/String;)Landroidx/window/extensions/embedding/ActivityStack$Token;

    move-result-object v3

    if-nez v3, :cond_1

    .line 174
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 178
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 179
    iget-object v1, p0, Landroidx/window/embedding/OverlayControllerImpl;->overlayTagToDefaultAttributesMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object v1, p0, Landroidx/window/embedding/OverlayControllerImpl;->overlayTagToCurrentAttributesMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    return-void
.end method

.method private final getOverlayContainers(Ljava/util/List;)Ljava/util/List;
    .locals 2

    .line 766
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 857
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/window/extensions/embedding/ActivityStack;

    .line 273
    invoke-virtual {v1}, Landroidx/window/extensions/embedding/ActivityStack;->getTag()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 857
    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 273
    :cond_1
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final toActivityStackAttributes(Landroidx/window/embedding/OverlayAttributes;Landroidx/window/extensions/embedding/ParentContainerInfo;)Landroidx/window/extensions/embedding/ActivityStackAttributes;
    .locals 3

    .line 261
    new-instance v0, Landroidx/window/extensions/embedding/ActivityStackAttributes$Builder;

    invoke-direct {v0}, Landroidx/window/extensions/embedding/ActivityStackAttributes$Builder;-><init>()V

    .line 263
    sget-object v1, Landroidx/window/embedding/EmbeddingBounds;->Companion:Landroidx/window/embedding/EmbeddingBounds$Companion;

    .line 264
    invoke-virtual {p1}, Landroidx/window/embedding/OverlayAttributes;->getBounds()Landroidx/window/embedding/EmbeddingBounds;

    move-result-object p1

    .line 265
    iget-object v2, p0, Landroidx/window/embedding/OverlayControllerImpl;->adapter:Landroidx/window/embedding/EmbeddingAdapter;

    invoke-virtual {v2, p2}, Landroidx/window/embedding/EmbeddingAdapter;->translate$window_release(Landroidx/window/extensions/embedding/ParentContainerInfo;)Landroidx/window/embedding/ParentContainerInfo;

    move-result-object p2

    .line 263
    invoke-virtual {v1, p1, p2}, Landroidx/window/embedding/EmbeddingBounds$Companion;->translateEmbeddingBounds$window_release(Landroidx/window/embedding/EmbeddingBounds;Landroidx/window/embedding/ParentContainerInfo;)Landroidx/window/core/Bounds;

    move-result-object p1

    .line 267
    invoke-virtual {p1}, Landroidx/window/core/Bounds;->toRect()Landroid/graphics/Rect;

    move-result-object p1

    .line 262
    invoke-virtual {v0, p1}, Landroidx/window/extensions/embedding/ActivityStackAttributes$Builder;->setRelativeBounds(Landroid/graphics/Rect;)Landroidx/window/extensions/embedding/ActivityStackAttributes$Builder;

    move-result-object p1

    .line 269
    iget-object p0, p0, Landroidx/window/embedding/OverlayControllerImpl;->adapter:Landroidx/window/embedding/EmbeddingAdapter;

    invoke-virtual {p0}, Landroidx/window/embedding/EmbeddingAdapter;->translateWindowAttributes$window_release()Landroidx/window/extensions/embedding/WindowAttributes;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/window/extensions/embedding/ActivityStackAttributes$Builder;->setWindowAttributes(Landroidx/window/extensions/embedding/WindowAttributes;)Landroidx/window/extensions/embedding/ActivityStackAttributes$Builder;

    move-result-object p0

    .line 270
    invoke-virtual {p0}, Landroidx/window/extensions/embedding/ActivityStackAttributes$Builder;->build()Landroidx/window/extensions/embedding/ActivityStackAttributes;

    move-result-object p0

    const-string p1, "Builder()\n            .s\u2026s())\n            .build()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public final calculateOverlayAttributes$window_release(Ljava/lang/String;Landroidx/window/embedding/OverlayAttributes;Landroidx/window/layout/WindowMetrics;Landroid/content/res/Configuration;Landroidx/window/layout/WindowLayoutInfo;)Landroidx/window/embedding/OverlayAttributes;
    .locals 8

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "windowMetrics"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configuration"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "windowLayoutInfo"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0, p1}, Landroidx/window/embedding/OverlayControllerImpl;->getUpdatedOverlayAttributes$window_release(Ljava/lang/String;)Landroidx/window/embedding/OverlayAttributes;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 208
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 209
    const-string p1, "Can\'t retrieve overlay attributes from launch options"

    .line 208
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    move-object p2, v0

    .line 212
    :goto_0
    invoke-virtual {p0}, Landroidx/window/embedding/OverlayControllerImpl;->getOverlayAttributesCalculator$window_release()Lkotlin/jvm/functions/Function1;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 213
    new-instance v7, Landroidx/window/embedding/OverlayAttributesCalculatorParams;

    move-object v0, v7

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroidx/window/embedding/OverlayAttributesCalculatorParams;-><init>(Landroidx/window/layout/WindowMetrics;Landroid/content/res/Configuration;Landroidx/window/layout/WindowLayoutInfo;Ljava/lang/String;Landroidx/window/embedding/OverlayAttributes;)V

    .line 212
    invoke-interface {v6, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/window/embedding/OverlayAttributes;

    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    move-object p2, p3

    .line 222
    :cond_3
    :goto_1
    iget-object p0, p0, Landroidx/window/embedding/OverlayControllerImpl;->overlayTagToCurrentAttributesMap:Landroid/util/ArrayMap;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public final getOverlayAttributesCalculator$window_release()Lkotlin/jvm/functions/Function1;
    .locals 1

    .line 60
    iget-object v0, p0, Landroidx/window/embedding/OverlayControllerImpl;->globalLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object p0, p0, Landroidx/window/embedding/OverlayControllerImpl;->overlayAttributesCalculator:Lkotlin/jvm/functions/Function1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public getUpdatedOverlayAttributes$window_release(Ljava/lang/String;)Landroidx/window/embedding/OverlayAttributes;
    .locals 1

    const-string v0, "overlayTag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    iget-object p0, p0, Landroidx/window/embedding/OverlayControllerImpl;->overlayTagToDefaultAttributesMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/window/embedding/OverlayAttributes;

    return-object p0
.end method
