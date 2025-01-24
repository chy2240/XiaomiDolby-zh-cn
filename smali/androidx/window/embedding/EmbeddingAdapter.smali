.class public final Landroidx/window/embedding/EmbeddingAdapter;
.super Ljava/lang/Object;
.source "EmbeddingAdapter.kt"


# static fields
.field public static final Companion:Landroidx/window/embedding/EmbeddingAdapter$Companion;

.field private static final INVALID_SPLIT_INFO_TOKEN:Landroid/os/Binder;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final api1Impl:Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel1Impl;

.field private final api2Impl:Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel2Impl;

.field private final api3Impl:Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel3Impl;

.field private final predicateAdapter:Landroidx/window/core/PredicateAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/window/embedding/EmbeddingAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/window/embedding/EmbeddingAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/window/embedding/EmbeddingAdapter;->Companion:Landroidx/window/embedding/EmbeddingAdapter$Companion;

    .line 839
    const-class v0, Landroidx/window/embedding/EmbeddingAdapter;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/window/embedding/EmbeddingAdapter;->TAG:Ljava/lang/String;

    .line 845
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    sput-object v0, Landroidx/window/embedding/EmbeddingAdapter;->INVALID_SPLIT_INFO_TOKEN:Landroid/os/Binder;

    return-void
.end method

.method public constructor <init>(Landroidx/window/core/PredicateAdapter;)V
    .locals 1

    const-string v0, "predicateAdapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/embedding/EmbeddingAdapter;->predicateAdapter:Landroidx/window/core/PredicateAdapter;

    .line 86
    new-instance v0, Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel1Impl;

    invoke-direct {v0, p0, p1}, Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel1Impl;-><init>(Landroidx/window/embedding/EmbeddingAdapter;Landroidx/window/core/PredicateAdapter;)V

    iput-object v0, p0, Landroidx/window/embedding/EmbeddingAdapter;->api1Impl:Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel1Impl;

    .line 87
    new-instance p1, Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel2Impl;

    invoke-direct {p1, p0}, Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel2Impl;-><init>(Landroidx/window/embedding/EmbeddingAdapter;)V

    iput-object p1, p0, Landroidx/window/embedding/EmbeddingAdapter;->api2Impl:Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel2Impl;

    .line 88
    new-instance p1, Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel3Impl;

    invoke-direct {p1, p0}, Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel3Impl;-><init>(Landroidx/window/embedding/EmbeddingAdapter;)V

    iput-object p1, p0, Landroidx/window/embedding/EmbeddingAdapter;->api3Impl:Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel3Impl;

    return-void
.end method

.method public static final synthetic access$getApi1Impl$p(Landroidx/window/embedding/EmbeddingAdapter;)Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel1Impl;
    .locals 0

    .line 82
    iget-object p0, p0, Landroidx/window/embedding/EmbeddingAdapter;->api1Impl:Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel1Impl;

    return-object p0
.end method

.method private final getExtensionVersion()I
    .locals 0

    .line 84
    sget-object p0, Landroidx/window/WindowSdkExtensions;->Companion:Landroidx/window/WindowSdkExtensions$Companion;

    invoke-virtual {p0}, Landroidx/window/WindowSdkExtensions$Companion;->getInstance()Landroidx/window/WindowSdkExtensions;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/window/WindowSdkExtensions;->getExtensionVersion()I

    move-result p0

    return p0
.end method

.method private final translate(Landroidx/window/extensions/embedding/SplitInfo;)Landroidx/window/embedding/SplitInfo;
    .locals 5

    .line 96
    invoke-direct {p0}, Landroidx/window/embedding/EmbeddingAdapter;->getExtensionVersion()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 97
    iget-object p0, p0, Landroidx/window/embedding/EmbeddingAdapter;->api1Impl:Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel1Impl;

    invoke-virtual {p0, p1}, Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel1Impl;->translateCompat(Landroidx/window/extensions/embedding/SplitInfo;)Landroidx/window/embedding/SplitInfo;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 98
    iget-object p0, p0, Landroidx/window/embedding/EmbeddingAdapter;->api2Impl:Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel2Impl;

    invoke-virtual {p0, p1}, Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel2Impl;->translateCompat(Landroidx/window/extensions/embedding/SplitInfo;)Landroidx/window/embedding/SplitInfo;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-gt v1, v0, :cond_2

    const/4 v1, 0x5

    if-ge v0, v1, :cond_2

    .line 99
    iget-object p0, p0, Landroidx/window/embedding/EmbeddingAdapter;->api3Impl:Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel3Impl;

    invoke-virtual {p0, p1}, Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel3Impl;->translateCompat(Landroidx/window/extensions/embedding/SplitInfo;)Landroidx/window/embedding/SplitInfo;

    move-result-object p0

    goto :goto_0

    .line 101
    :cond_2
    new-instance v0, Landroidx/window/embedding/SplitInfo;

    .line 102
    invoke-virtual {p1}, Landroidx/window/extensions/embedding/SplitInfo;->getPrimaryActivityStack()Landroidx/window/extensions/embedding/ActivityStack;

    move-result-object v1

    const-string v2, "splitInfo.primaryActivityStack"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroidx/window/embedding/EmbeddingAdapter;->translate$window_release(Landroidx/window/extensions/embedding/ActivityStack;)Landroidx/window/embedding/ActivityStack;

    move-result-object v1

    .line 103
    invoke-virtual {p1}, Landroidx/window/extensions/embedding/SplitInfo;->getSecondaryActivityStack()Landroidx/window/extensions/embedding/ActivityStack;

    move-result-object v2

    const-string v3, "splitInfo.secondaryActivityStack"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Landroidx/window/embedding/EmbeddingAdapter;->translate$window_release(Landroidx/window/extensions/embedding/ActivityStack;)Landroidx/window/embedding/ActivityStack;

    move-result-object v2

    .line 104
    invoke-virtual {p1}, Landroidx/window/extensions/embedding/SplitInfo;->getSplitAttributes()Landroidx/window/extensions/embedding/SplitAttributes;

    move-result-object v3

    const-string v4, "splitInfo.splitAttributes"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Landroidx/window/embedding/EmbeddingAdapter;->translate$window_release(Landroidx/window/extensions/embedding/SplitAttributes;)Landroidx/window/embedding/SplitAttributes;

    move-result-object p0

    .line 105
    invoke-virtual {p1}, Landroidx/window/extensions/embedding/SplitInfo;->getSplitInfoToken()Landroidx/window/extensions/embedding/SplitInfo$Token;

    move-result-object p1

    const-string v3, "splitInfo.splitInfoToken"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-direct {v0, v1, v2, p0, p1}, Landroidx/window/embedding/SplitInfo;-><init>(Landroidx/window/embedding/ActivityStack;Landroidx/window/embedding/ActivityStack;Landroidx/window/embedding/SplitAttributes;Landroidx/window/extensions/embedding/SplitInfo$Token;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method private final translateToJetpackAnimationBackground(Landroidx/window/extensions/embedding/AnimationBackground;)Landroidx/window/embedding/EmbeddingAnimationBackground;
    .locals 1

    .line 523
    sget-object p0, Landroidx/window/WindowSdkExtensions;->Companion:Landroidx/window/WindowSdkExtensions$Companion;

    invoke-virtual {p0}, Landroidx/window/WindowSdkExtensions$Companion;->getInstance()Landroidx/window/WindowSdkExtensions;

    move-result-object p0

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroidx/window/WindowSdkExtensions;->requireExtensionVersion$window_release(I)V

    .line 524
    instance-of p0, p1, Landroidx/window/extensions/embedding/AnimationBackground$ColorBackground;

    if-eqz p0, :cond_0

    .line 525
    sget-object p0, Landroidx/window/embedding/EmbeddingAnimationBackground;->Companion:Landroidx/window/embedding/EmbeddingAnimationBackground$Companion;

    check-cast p1, Landroidx/window/extensions/embedding/AnimationBackground$ColorBackground;

    invoke-virtual {p1}, Landroidx/window/extensions/embedding/AnimationBackground$ColorBackground;->getColor()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/window/embedding/EmbeddingAnimationBackground$Companion;->createColorBackground(I)Landroidx/window/embedding/EmbeddingAnimationBackground$ColorBackground;

    move-result-object p0

    goto :goto_0

    .line 527
    :cond_0
    sget-object p0, Landroidx/window/embedding/EmbeddingAnimationBackground;->DEFAULT:Landroidx/window/embedding/EmbeddingAnimationBackground;

    :goto_0
    return-object p0
.end method

.method private final translateToJetpackAnimationSpec(I)Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;
    .locals 1

    .line 547
    sget-object p0, Landroidx/window/WindowSdkExtensions;->Companion:Landroidx/window/WindowSdkExtensions$Companion;

    invoke-virtual {p0}, Landroidx/window/WindowSdkExtensions$Companion;->getInstance()Landroidx/window/WindowSdkExtensions;

    move-result-object p0

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Landroidx/window/WindowSdkExtensions;->requireExtensionVersion$window_release(I)V

    if-nez p1, :cond_0

    .line 549
    sget-object p0, Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;->JUMP_CUT:Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;

    goto :goto_0

    .line 551
    :cond_0
    sget-object p0, Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;->DEFAULT:Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final translate(Ljava/util/List;)Ljava/util/List;
    .locals 2

    const-string v0, "splitInfoList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1549
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1621
    check-cast v1, Landroidx/window/extensions/embedding/SplitInfo;

    .line 92
    invoke-direct {p0, v1}, Landroidx/window/embedding/EmbeddingAdapter;->translate(Landroidx/window/extensions/embedding/SplitInfo;)Landroidx/window/embedding/SplitInfo;

    move-result-object v1

    .line 1621
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final translate$window_release(Landroidx/window/extensions/embedding/ActivityStack;)Landroidx/window/embedding/ActivityStack;
    .locals 2

    const-string v0, "activityStack"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    invoke-direct {p0}, Landroidx/window/embedding/EmbeddingAdapter;->getExtensionVersion()I

    move-result v0

    const/4 v1, 0x1

    if-gt v1, v0, :cond_0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 112
    iget-object p0, p0, Landroidx/window/embedding/EmbeddingAdapter;->api1Impl:Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel1Impl;

    invoke-virtual {p0, p1}, Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel1Impl;->translateCompat(Landroidx/window/extensions/embedding/ActivityStack;)Landroidx/window/embedding/ActivityStack;

    move-result-object p0

    goto :goto_0

    .line 114
    :cond_0
    new-instance p0, Landroidx/window/embedding/ActivityStack;

    .line 115
    invoke-virtual {p1}, Landroidx/window/extensions/embedding/ActivityStack;->getActivities()Ljava/util/List;

    move-result-object v0

    const-string v1, "activityStack.activities"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p1}, Landroidx/window/extensions/embedding/ActivityStack;->isEmpty()Z

    move-result v1

    .line 117
    invoke-virtual {p1}, Landroidx/window/extensions/embedding/ActivityStack;->getActivityStackToken()Landroidx/window/extensions/embedding/ActivityStack$Token;

    move-result-object p1

    .line 114
    invoke-direct {p0, v0, v1, p1}, Landroidx/window/embedding/ActivityStack;-><init>(Ljava/util/List;ZLandroidx/window/extensions/embedding/ActivityStack$Token;)V

    :goto_0
    return-object p0
.end method

.method public final translate$window_release(Landroidx/window/extensions/embedding/ParentContainerInfo;)Landroidx/window/embedding/ParentContainerInfo;
    .locals 7

    const-string p0, "parentContainerInfo"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    invoke-virtual {p1}, Landroidx/window/extensions/embedding/ParentContainerInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    const-string p0, "parentContainerInfo.configuration"

    invoke-static {v4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    sget-object v0, Landroidx/window/layout/util/DensityCompatHelper;->Companion:Landroidx/window/layout/util/DensityCompatHelper$Companion;

    invoke-virtual {v0}, Landroidx/window/layout/util/DensityCompatHelper$Companion;->getInstance()Landroidx/window/layout/util/DensityCompatHelper;

    move-result-object v0

    .line 201
    invoke-virtual {p1}, Landroidx/window/extensions/embedding/ParentContainerInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/window/extensions/embedding/ParentContainerInfo;->getWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p0

    const-string v2, "parentContainerInfo.windowMetrics"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1, p0}, Landroidx/window/layout/util/DensityCompatHelper;->density(Landroid/content/res/Configuration;Landroid/view/WindowMetrics;)F

    move-result v5

    .line 203
    sget-object p0, Landroidx/window/layout/WindowMetricsCalculator;->Companion:Landroidx/window/layout/WindowMetricsCalculator$Companion;

    .line 204
    invoke-virtual {p1}, Landroidx/window/extensions/embedding/ParentContainerInfo;->getWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0, v0, v5}, Landroidx/window/layout/WindowMetricsCalculator$Companion;->translateWindowMetrics$window_release(Landroid/view/WindowMetrics;F)Landroidx/window/layout/WindowMetrics;

    move-result-object p0

    .line 208
    new-instance v6, Landroidx/window/embedding/ParentContainerInfo;

    .line 209
    new-instance v1, Landroidx/window/core/Bounds;

    invoke-virtual {p0}, Landroidx/window/layout/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {v1, v0}, Landroidx/window/core/Bounds;-><init>(Landroid/graphics/Rect;)V

    .line 210
    sget-object v0, Landroidx/window/layout/adapter/extensions/ExtensionsWindowLayoutInfoAdapter;->INSTANCE:Landroidx/window/layout/adapter/extensions/ExtensionsWindowLayoutInfoAdapter;

    .line 212
    invoke-virtual {p1}, Landroidx/window/extensions/embedding/ParentContainerInfo;->getWindowLayoutInfo()Landroidx/window/extensions/layout/WindowLayoutInfo;

    move-result-object p1

    const-string v2, "parentContainerInfo.windowLayoutInfo"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    invoke-virtual {v0, p0, p1}, Landroidx/window/layout/adapter/extensions/ExtensionsWindowLayoutInfoAdapter;->translate$window_release(Landroidx/window/layout/WindowMetrics;Landroidx/window/extensions/layout/WindowLayoutInfo;)Landroidx/window/layout/WindowLayoutInfo;

    move-result-object v2

    .line 214
    invoke-virtual {p0}, Landroidx/window/layout/WindowMetrics;->getWindowInsets()Landroidx/core/view/WindowInsetsCompat;

    move-result-object v3

    move-object v0, v6

    .line 208
    invoke-direct/range {v0 .. v5}, Landroidx/window/embedding/ParentContainerInfo;-><init>(Landroidx/window/core/Bounds;Landroidx/window/layout/WindowLayoutInfo;Landroidx/core/view/WindowInsetsCompat;Landroid/content/res/Configuration;F)V

    return-object v6
.end method

.method public final translate$window_release(Landroidx/window/extensions/embedding/SplitAttributes;)Landroidx/window/embedding/SplitAttributes;
    .locals 5

    const-string v0, "splitAttributes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    new-instance v0, Landroidx/window/embedding/SplitAttributes$Builder;

    invoke-direct {v0}, Landroidx/window/embedding/SplitAttributes$Builder;-><init>()V

    .line 129
    invoke-virtual {p1}, Landroidx/window/extensions/embedding/SplitAttributes;->getSplitType()Landroidx/window/extensions/embedding/SplitAttributes$SplitType;

    move-result-object v1

    const-string v2, "splitAttributes.splitType"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    instance-of v2, v1, Landroidx/window/extensions/embedding/SplitAttributes$SplitType$HingeSplitType;

    if-eqz v2, :cond_0

    sget-object v1, Landroidx/window/embedding/SplitAttributes$SplitType;->SPLIT_TYPE_HINGE:Landroidx/window/embedding/SplitAttributes$SplitType;

    goto :goto_0

    .line 131
    :cond_0
    instance-of v2, v1, Landroidx/window/extensions/embedding/SplitAttributes$SplitType$ExpandContainersSplitType;

    if-eqz v2, :cond_1

    sget-object v1, Landroidx/window/embedding/SplitAttributes$SplitType;->SPLIT_TYPE_EXPAND:Landroidx/window/embedding/SplitAttributes$SplitType;

    goto :goto_0

    .line 132
    :cond_1
    instance-of v2, v1, Landroidx/window/extensions/embedding/SplitAttributes$SplitType$RatioSplitType;

    if-eqz v2, :cond_a

    sget-object v2, Landroidx/window/embedding/SplitAttributes$SplitType;->Companion:Landroidx/window/embedding/SplitAttributes$SplitType$Companion;

    check-cast v1, Landroidx/window/extensions/embedding/SplitAttributes$SplitType$RatioSplitType;

    invoke-virtual {v1}, Landroidx/window/extensions/embedding/SplitAttributes$SplitType$RatioSplitType;->getRatio()F

    move-result v1

    invoke-virtual {v2, v1}, Landroidx/window/embedding/SplitAttributes$SplitType$Companion;->ratio(F)Landroidx/window/embedding/SplitAttributes$SplitType;

    move-result-object v1

    .line 128
    :goto_0
    invoke-virtual {v0, v1}, Landroidx/window/embedding/SplitAttributes$Builder;->setSplitType(Landroidx/window/embedding/SplitAttributes$SplitType;)Landroidx/window/embedding/SplitAttributes$Builder;

    move-result-object v0

    .line 137
    invoke-virtual {p1}, Landroidx/window/extensions/embedding/SplitAttributes;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x5

    if-eqz v1, :cond_6

    const/4 v3, 0x1

    if-eq v1, v3, :cond_5

    const/4 v3, 0x3

    if-eq v1, v3, :cond_4

    const/4 v3, 0x4

    if-eq v1, v3, :cond_3

    if-ne v1, v2, :cond_2

    .line 142
    sget-object v1, Landroidx/window/embedding/SplitAttributes$LayoutDirection;->BOTTOM_TO_TOP:Landroidx/window/embedding/SplitAttributes$LayoutDirection;

    goto :goto_1

    .line 144
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 145
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown layout direction: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 144
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 141
    :cond_3
    sget-object v1, Landroidx/window/embedding/SplitAttributes$LayoutDirection;->TOP_TO_BOTTOM:Landroidx/window/embedding/SplitAttributes$LayoutDirection;

    goto :goto_1

    .line 140
    :cond_4
    sget-object v1, Landroidx/window/embedding/SplitAttributes$LayoutDirection;->LOCALE:Landroidx/window/embedding/SplitAttributes$LayoutDirection;

    goto :goto_1

    .line 139
    :cond_5
    sget-object v1, Landroidx/window/embedding/SplitAttributes$LayoutDirection;->RIGHT_TO_LEFT:Landroidx/window/embedding/SplitAttributes$LayoutDirection;

    goto :goto_1

    .line 138
    :cond_6
    sget-object v1, Landroidx/window/embedding/SplitAttributes$LayoutDirection;->LEFT_TO_RIGHT:Landroidx/window/embedding/SplitAttributes$LayoutDirection;

    .line 136
    :goto_1
    invoke-virtual {v0, v1}, Landroidx/window/embedding/SplitAttributes$Builder;->setLayoutDirection(Landroidx/window/embedding/SplitAttributes$LayoutDirection;)Landroidx/window/embedding/SplitAttributes$Builder;

    move-result-object v0

    .line 149
    invoke-direct {p0}, Landroidx/window/embedding/EmbeddingAdapter;->getExtensionVersion()I

    move-result v1

    const/4 v3, 0x7

    if-gt v2, v1, :cond_7

    if-ge v1, v3, :cond_7

    .line 151
    new-instance v1, Landroidx/window/embedding/EmbeddingAnimationParams$Builder;

    invoke-direct {v1}, Landroidx/window/embedding/EmbeddingAnimationParams$Builder;-><init>()V

    .line 153
    invoke-virtual {p1}, Landroidx/window/extensions/embedding/SplitAttributes;->getAnimationBackground()Landroidx/window/extensions/embedding/AnimationBackground;

    move-result-object v2

    const-string v4, "splitAttributes.animationBackground"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Landroidx/window/embedding/EmbeddingAdapter;->translateToJetpackAnimationBackground(Landroidx/window/extensions/embedding/AnimationBackground;)Landroidx/window/embedding/EmbeddingAnimationBackground;

    move-result-object v2

    .line 152
    invoke-virtual {v1, v2}, Landroidx/window/embedding/EmbeddingAnimationParams$Builder;->setAnimationBackground(Landroidx/window/embedding/EmbeddingAnimationBackground;)Landroidx/window/embedding/EmbeddingAnimationParams$Builder;

    move-result-object v1

    .line 155
    invoke-virtual {v1}, Landroidx/window/embedding/EmbeddingAnimationParams$Builder;->build()Landroidx/window/embedding/EmbeddingAnimationParams;

    move-result-object v1

    .line 156
    invoke-virtual {v0, v1}, Landroidx/window/embedding/SplitAttributes$Builder;->setAnimationParams(Landroidx/window/embedding/EmbeddingAnimationParams;)Landroidx/window/embedding/SplitAttributes$Builder;

    .line 158
    :cond_7
    invoke-direct {p0}, Landroidx/window/embedding/EmbeddingAdapter;->getExtensionVersion()I

    move-result v1

    if-lt v1, v3, :cond_8

    .line 160
    new-instance v1, Landroidx/window/embedding/EmbeddingAnimationParams$Builder;

    invoke-direct {v1}, Landroidx/window/embedding/EmbeddingAnimationParams$Builder;-><init>()V

    .line 163
    invoke-virtual {p1}, Landroidx/window/extensions/embedding/SplitAttributes;->getAnimationParams()Landroidx/window/extensions/embedding/AnimationParams;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/window/extensions/embedding/AnimationParams;->getAnimationBackground()Landroidx/window/extensions/embedding/AnimationBackground;

    move-result-object v2

    const-string v3, "splitAttributes.animatio\u2026arams.animationBackground"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    invoke-direct {p0, v2}, Landroidx/window/embedding/EmbeddingAdapter;->translateToJetpackAnimationBackground(Landroidx/window/extensions/embedding/AnimationBackground;)Landroidx/window/embedding/EmbeddingAnimationBackground;

    move-result-object v2

    .line 161
    invoke-virtual {v1, v2}, Landroidx/window/embedding/EmbeddingAnimationParams$Builder;->setAnimationBackground(Landroidx/window/embedding/EmbeddingAnimationBackground;)Landroidx/window/embedding/EmbeddingAnimationParams$Builder;

    move-result-object v1

    .line 168
    invoke-virtual {p1}, Landroidx/window/extensions/embedding/SplitAttributes;->getAnimationParams()Landroidx/window/extensions/embedding/AnimationParams;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/window/extensions/embedding/AnimationParams;->getOpenAnimationResId()I

    move-result v2

    .line 167
    invoke-direct {p0, v2}, Landroidx/window/embedding/EmbeddingAdapter;->translateToJetpackAnimationSpec(I)Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;

    move-result-object v2

    .line 166
    invoke-virtual {v1, v2}, Landroidx/window/embedding/EmbeddingAnimationParams$Builder;->setOpenAnimation(Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;)Landroidx/window/embedding/EmbeddingAnimationParams$Builder;

    move-result-object v1

    .line 173
    invoke-virtual {p1}, Landroidx/window/extensions/embedding/SplitAttributes;->getAnimationParams()Landroidx/window/extensions/embedding/AnimationParams;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/window/extensions/embedding/AnimationParams;->getCloseAnimationResId()I

    move-result v2

    .line 172
    invoke-direct {p0, v2}, Landroidx/window/embedding/EmbeddingAdapter;->translateToJetpackAnimationSpec(I)Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;

    move-result-object v2

    .line 171
    invoke-virtual {v1, v2}, Landroidx/window/embedding/EmbeddingAnimationParams$Builder;->setCloseAnimation(Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;)Landroidx/window/embedding/EmbeddingAnimationParams$Builder;

    move-result-object v1

    .line 178
    invoke-virtual {p1}, Landroidx/window/extensions/embedding/SplitAttributes;->getAnimationParams()Landroidx/window/extensions/embedding/AnimationParams;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/window/extensions/embedding/AnimationParams;->getChangeAnimationResId()I

    move-result v2

    .line 177
    invoke-direct {p0, v2}, Landroidx/window/embedding/EmbeddingAdapter;->translateToJetpackAnimationSpec(I)Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;

    move-result-object v2

    .line 176
    invoke-virtual {v1, v2}, Landroidx/window/embedding/EmbeddingAnimationParams$Builder;->setChangeAnimation(Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;)Landroidx/window/embedding/EmbeddingAnimationParams$Builder;

    move-result-object v1

    .line 181
    invoke-virtual {v1}, Landroidx/window/embedding/EmbeddingAnimationParams$Builder;->build()Landroidx/window/embedding/EmbeddingAnimationParams;

    move-result-object v1

    .line 182
    invoke-virtual {v0, v1}, Landroidx/window/embedding/SplitAttributes$Builder;->setAnimationParams(Landroidx/window/embedding/EmbeddingAnimationParams;)Landroidx/window/embedding/SplitAttributes$Builder;

    .line 184
    :cond_8
    invoke-direct {p0}, Landroidx/window/embedding/EmbeddingAdapter;->getExtensionVersion()I

    move-result v1

    const/4 v2, 0x6

    if-lt v1, v2, :cond_9

    .line 186
    invoke-virtual {p1}, Landroidx/window/extensions/embedding/SplitAttributes;->getDividerAttributes()Landroidx/window/extensions/embedding/DividerAttributes;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/window/embedding/EmbeddingAdapter;->translateToJetpackDividerAttributes(Landroidx/window/extensions/embedding/DividerAttributes;)Landroidx/window/embedding/DividerAttributes;

    move-result-object p0

    .line 185
    invoke-virtual {v0, p0}, Landroidx/window/embedding/SplitAttributes$Builder;->setDividerAttributes(Landroidx/window/embedding/DividerAttributes;)Landroidx/window/embedding/SplitAttributes$Builder;

    .line 189
    :cond_9
    invoke-virtual {v0}, Landroidx/window/embedding/SplitAttributes$Builder;->build()Landroidx/window/embedding/SplitAttributes;

    move-result-object p0

    return-object p0

    .line 133
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown split type: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final translate$window_release(Ljava/util/List;)Ljava/util/List;
    .locals 2

    const-string v0, "activityStacks"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1549
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1621
    check-cast v1, Landroidx/window/extensions/embedding/ActivityStack;

    .line 122
    invoke-virtual {p0, v1}, Landroidx/window/embedding/EmbeddingAdapter;->translate$window_release(Landroidx/window/extensions/embedding/ActivityStack;)Landroidx/window/embedding/ActivityStack;

    move-result-object v1

    .line 1621
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final translateToJetpackDividerAttributes(Landroidx/window/extensions/embedding/DividerAttributes;)Landroidx/window/embedding/DividerAttributes;
    .locals 5

    .line 595
    sget-object v0, Landroidx/window/WindowSdkExtensions;->Companion:Landroidx/window/WindowSdkExtensions$Companion;

    invoke-virtual {v0}, Landroidx/window/WindowSdkExtensions$Companion;->getInstance()Landroidx/window/WindowSdkExtensions;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroidx/window/WindowSdkExtensions;->requireExtensionVersion$window_release(I)V

    if-nez p1, :cond_0

    .line 597
    sget-object p0, Landroidx/window/embedding/DividerAttributes;->NO_DIVIDER:Landroidx/window/embedding/DividerAttributes;

    return-object p0

    .line 599
    :cond_0
    invoke-virtual {p1}, Landroidx/window/extensions/embedding/DividerAttributes;->getDividerType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 628
    sget-object p0, Landroidx/window/embedding/EmbeddingAdapter;->TAG:Ljava/lang/String;

    .line 629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown divider type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".dividerType, default to fixed divider type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 627
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    new-instance p0, Landroidx/window/embedding/DividerAttributes$FixedDividerAttributes$Builder;

    invoke-direct {p0}, Landroidx/window/embedding/DividerAttributes$FixedDividerAttributes$Builder;-><init>()V

    .line 633
    invoke-virtual {p1}, Landroidx/window/extensions/embedding/DividerAttributes;->getWidthDp()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/window/embedding/DividerAttributes$FixedDividerAttributes$Builder;->setWidthDp(I)Landroidx/window/embedding/DividerAttributes$FixedDividerAttributes$Builder;

    move-result-object p0

    .line 634
    invoke-virtual {p1}, Landroidx/window/extensions/embedding/DividerAttributes;->getDividerColor()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/window/embedding/DividerAttributes$FixedDividerAttributes$Builder;->setColor(I)Landroidx/window/embedding/DividerAttributes$FixedDividerAttributes$Builder;

    move-result-object p0

    .line 635
    invoke-virtual {p0}, Landroidx/window/embedding/DividerAttributes$FixedDividerAttributes$Builder;->build()Landroidx/window/embedding/DividerAttributes$FixedDividerAttributes;

    move-result-object p0

    goto :goto_2

    .line 606
    :cond_1
    new-instance v0, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;

    invoke-direct {v0}, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;-><init>()V

    .line 607
    invoke-virtual {p1}, Landroidx/window/extensions/embedding/DividerAttributes;->getWidthDp()I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;->setWidthDp(I)Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;

    move-result-object v0

    .line 608
    invoke-virtual {p1}, Landroidx/window/extensions/embedding/DividerAttributes;->getDividerColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;->setColor(I)Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;

    move-result-object v0

    .line 611
    invoke-virtual {p1}, Landroidx/window/extensions/embedding/DividerAttributes;->getPrimaryMinRatio()F

    move-result v2

    const/high16 v3, -0x40800000    # -1.0f

    cmpg-float v2, v2, v3

    if-nez v2, :cond_2

    .line 612
    invoke-virtual {p1}, Landroidx/window/extensions/embedding/DividerAttributes;->getPrimaryMaxRatio()F

    move-result v2

    cmpg-float v2, v2, v3

    if-nez v2, :cond_2

    .line 614
    sget-object v2, Landroidx/window/embedding/DividerAttributes$DragRange;->DRAG_RANGE_SYSTEM_DEFAULT:Landroidx/window/embedding/DividerAttributes$DragRange;

    goto :goto_0

    .line 616
    :cond_2
    new-instance v2, Landroidx/window/embedding/DividerAttributes$DragRange$SplitRatioDragRange;

    .line 617
    invoke-virtual {p1}, Landroidx/window/extensions/embedding/DividerAttributes;->getPrimaryMinRatio()F

    move-result v3

    .line 618
    invoke-virtual {p1}, Landroidx/window/extensions/embedding/DividerAttributes;->getPrimaryMaxRatio()F

    move-result v4

    .line 616
    invoke-direct {v2, v3, v4}, Landroidx/window/embedding/DividerAttributes$DragRange$SplitRatioDragRange;-><init>(FF)V

    .line 609
    :goto_0
    invoke-virtual {v0, v2}, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;->setDragRange(Landroidx/window/embedding/DividerAttributes$DragRange;)Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;

    move-result-object v0

    .line 622
    invoke-direct {p0}, Landroidx/window/embedding/EmbeddingAdapter;->getExtensionVersion()I

    move-result p0

    const/4 v2, 0x7

    if-lt p0, v2, :cond_3

    invoke-virtual {p1}, Landroidx/window/extensions/embedding/DividerAttributes;->isDraggingToFullscreenAllowed()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 621
    :goto_1
    invoke-virtual {v0, v1}, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;->setDraggingToFullscreenAllowed(Z)Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;

    move-result-object p0

    .line 624
    invoke-virtual {p0}, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;->build()Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes;

    move-result-object p0

    goto :goto_2

    .line 601
    :cond_4
    new-instance p0, Landroidx/window/embedding/DividerAttributes$FixedDividerAttributes$Builder;

    invoke-direct {p0}, Landroidx/window/embedding/DividerAttributes$FixedDividerAttributes$Builder;-><init>()V

    .line 602
    invoke-virtual {p1}, Landroidx/window/extensions/embedding/DividerAttributes;->getWidthDp()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/window/embedding/DividerAttributes$FixedDividerAttributes$Builder;->setWidthDp(I)Landroidx/window/embedding/DividerAttributes$FixedDividerAttributes$Builder;

    move-result-object p0

    .line 603
    invoke-virtual {p1}, Landroidx/window/extensions/embedding/DividerAttributes;->getDividerColor()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/window/embedding/DividerAttributes$FixedDividerAttributes$Builder;->setColor(I)Landroidx/window/embedding/DividerAttributes$FixedDividerAttributes$Builder;

    move-result-object p0

    .line 604
    invoke-virtual {p0}, Landroidx/window/embedding/DividerAttributes$FixedDividerAttributes$Builder;->build()Landroidx/window/embedding/DividerAttributes$FixedDividerAttributes;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method public final translateWindowAttributes$window_release()Landroidx/window/extensions/embedding/WindowAttributes;
    .locals 2

    .line 388
    sget-object p0, Landroidx/window/WindowSdkExtensions;->Companion:Landroidx/window/WindowSdkExtensions$Companion;

    invoke-virtual {p0}, Landroidx/window/WindowSdkExtensions$Companion;->getInstance()Landroidx/window/WindowSdkExtensions;

    move-result-object p0

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroidx/window/WindowSdkExtensions;->requireExtensionVersion$window_release(I)V

    .line 390
    new-instance p0, Landroidx/window/extensions/embedding/WindowAttributes;

    .line 392
    sget-object v0, Landroidx/window/embedding/EmbeddingConfiguration$DimAreaBehavior;->ON_ACTIVITY_STACK:Landroidx/window/embedding/EmbeddingConfiguration$DimAreaBehavior;

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 390
    :goto_0
    invoke-direct {p0, v0}, Landroidx/window/extensions/embedding/WindowAttributes;-><init>(I)V

    return-object p0
.end method
