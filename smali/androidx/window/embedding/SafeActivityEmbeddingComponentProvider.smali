.class public final Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;
.super Ljava/lang/Object;
.source "SafeActivityEmbeddingComponentProvider.kt"


# instance fields
.field private final consumerAdapter:Landroidx/window/core/ConsumerAdapter;

.field private final loader:Ljava/lang/ClassLoader;

.field private final safeWindowExtensionsProvider:Landroidx/window/SafeWindowExtensionsProvider;

.field private final windowExtensions:Landroidx/window/extensions/WindowExtensions;


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;Landroidx/window/core/ConsumerAdapter;Landroidx/window/extensions/WindowExtensions;)V
    .locals 1

    const-string v0, "loader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consumerAdapter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "windowExtensions"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->loader:Ljava/lang/ClassLoader;

    .line 67
    iput-object p2, p0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->consumerAdapter:Landroidx/window/core/ConsumerAdapter;

    .line 68
    iput-object p3, p0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->windowExtensions:Landroidx/window/extensions/WindowExtensions;

    .line 70
    new-instance p2, Landroidx/window/SafeWindowExtensionsProvider;

    invoke-direct {p2, p1}, Landroidx/window/SafeWindowExtensionsProvider;-><init>(Ljava/lang/ClassLoader;)V

    iput-object p2, p0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->safeWindowExtensionsProvider:Landroidx/window/SafeWindowExtensionsProvider;

    return-void
.end method

.method public static final synthetic access$getActivityEmbeddingComponentClass(Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;)Ljava/lang/Class;
    .locals 0

    .line 65
    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->getActivityEmbeddingComponentClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getConsumerAdapter$p(Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;)Landroidx/window/core/ConsumerAdapter;
    .locals 0

    .line 65
    iget-object p0, p0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->consumerAdapter:Landroidx/window/core/ConsumerAdapter;

    return-object p0
.end method

.method public static final synthetic access$getSafeWindowExtensionsProvider$p(Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;)Landroidx/window/SafeWindowExtensionsProvider;
    .locals 0

    .line 65
    iget-object p0, p0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->safeWindowExtensionsProvider:Landroidx/window/SafeWindowExtensionsProvider;

    return-object p0
.end method

.method private final canUseActivityEmbeddingComponent()Z
    .locals 4

    .line 86
    invoke-virtual {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isActivityEmbeddingComponentAccessible$window_release()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 91
    :cond_0
    sget-object v0, Landroidx/window/WindowSdkExtensions;->Companion:Landroidx/window/WindowSdkExtensions$Companion;

    invoke-virtual {v0}, Landroidx/window/WindowSdkExtensions$Companion;->getInstance()Landroidx/window/WindowSdkExtensions;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/window/WindowSdkExtensions;->getExtensionVersion()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 92
    invoke-virtual {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->hasValidVendorApiLevel1$window_release()Z

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 93
    invoke-virtual {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->hasValidVendorApiLevel2$window_release()Z

    move-result v1

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    const/4 v3, 0x5

    if-gt v2, v0, :cond_3

    if-ge v0, v3, :cond_3

    .line 94
    invoke-virtual {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->hasValidVendorApiLevel3$window_release()Z

    move-result v1

    goto :goto_0

    :cond_3
    if-ne v0, v3, :cond_4

    .line 95
    invoke-virtual {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->hasValidVendorApiLevel5$window_release()Z

    move-result v1

    goto :goto_0

    :cond_4
    const/4 v2, 0x6

    if-ne v0, v2, :cond_5

    .line 96
    invoke-virtual {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->hasValidVendorApiLevel6$window_release()Z

    move-result v1

    goto :goto_0

    :cond_5
    const/4 v2, 0x7

    if-gt v2, v0, :cond_6

    const v2, 0x7fffffff

    if-gt v0, v2, :cond_6

    .line 97
    invoke-virtual {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->hasValidVendorApiLevel7$window_release()Z

    move-result v1

    :cond_6
    :goto_0
    return v1
.end method

.method private final getActivityEmbeddingComponentClass()Ljava/lang/Class;
    .locals 1

    .line 295
    iget-object p0, p0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->loader:Ljava/lang/ClassLoader;

    const-string v0, "androidx.window.extensions.embedding.ActivityEmbeddingComponent"

    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v0, "loader.loadClass(ACTIVIT\u2026MBEDDING_COMPONENT_CLASS)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final isActivityEmbeddingComponentValid()Z
    .locals 1

    .line 299
    new-instance v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isActivityEmbeddingComponentValid$1;

    invoke-direct {v0, p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isActivityEmbeddingComponentValid$1;-><init>(Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;)V

    const-string p0, "WindowExtensions#getActivityEmbeddingComponent is not valid"

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isActivityStackGetActivityStackTokenValid()Z
    .locals 1

    .line 701
    const-string p0, "ActivityStack#getActivityToken is not valid"

    sget-object v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isActivityStackGetActivityStackTokenValid$1;->INSTANCE:Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isActivityStackGetActivityStackTokenValid$1;

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isClassActivityRuleBuilderLevel1Valid()Z
    .locals 1

    .line 364
    const-string p0, "Class ActivityRule.Builder is not valid"

    sget-object v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassActivityRuleBuilderLevel1Valid$1;->INSTANCE:Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassActivityRuleBuilderLevel1Valid$1;

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isClassActivityRuleBuilderLevel2Valid()Z
    .locals 1

    .line 523
    const-string p0, "Class ActivityRule.Builder is not valid"

    sget-object v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassActivityRuleBuilderLevel2Valid$1;->INSTANCE:Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassActivityRuleBuilderLevel2Valid$1;

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isClassActivityRuleValid()Z
    .locals 1

    .line 356
    const-string p0, "Class ActivityRule is not valid"

    sget-object v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassActivityRuleValid$1;->INSTANCE:Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassActivityRuleValid$1;

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isClassActivityStackTokenValid()Z
    .locals 1

    .line 800
    const-string p0, "Class ActivityStack.Token is not valid"

    sget-object v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassActivityStackTokenValid$1;->INSTANCE:Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassActivityStackTokenValid$1;

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isClassAnimationBackgroundValid()Z
    .locals 1

    .line 768
    const-string p0, "Class AnimationBackground is not valid"

    sget-object v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassAnimationBackgroundValid$1;->INSTANCE:Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassAnimationBackgroundValid$1;

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isClassAnimationParamsBuilderValid()Z
    .locals 1

    .line 1042
    const-string p0, "Class AnimationParams.Builder is not valid"

    sget-object v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassAnimationParamsBuilderValid$1;->INSTANCE:Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassAnimationParamsBuilderValid$1;

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isClassAnimationParamsValid()Z
    .locals 1

    .line 1018
    const-string p0, "Class AnimationParams is not valid"

    sget-object v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassAnimationParamsValid$1;->INSTANCE:Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassAnimationParamsValid$1;

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isClassDividerAttributesBuilderValid()Z
    .locals 1

    .line 948
    const-string p0, "Class DividerAttributes.Builder is not valid"

    sget-object v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassDividerAttributesBuilderValid$1;->INSTANCE:Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassDividerAttributesBuilderValid$1;

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isClassDividerAttributesValid()Z
    .locals 1

    .line 928
    const-string p0, "Class DividerAttributes is not valid"

    sget-object v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassDividerAttributesValid$1;->INSTANCE:Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassDividerAttributesValid$1;

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isClassEmbeddedActivityWindowInfoValid()Z
    .locals 1

    .line 910
    const-string p0, "Class EmbeddedActivityWindowInfo is not valid"

    sget-object v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassEmbeddedActivityWindowInfoValid$1;->INSTANCE:Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassEmbeddedActivityWindowInfoValid$1;

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isClassEmbeddingRuleValid()Z
    .locals 1

    .line 537
    const-string p0, "Class EmbeddingRule is not valid"

    sget-object v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassEmbeddingRuleValid$1;->INSTANCE:Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassEmbeddingRuleValid$1;

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isClassSplitAttributesCalculatorParamsValid()Z
    .locals 1

    .line 563
    const-string p0, "Class SplitAttributesCalculatorParams is not valid"

    sget-object v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassSplitAttributesCalculatorParamsValid$1;->INSTANCE:Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassSplitAttributesCalculatorParamsValid$1;

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isClassSplitAttributesValid()Z
    .locals 1

    .line 544
    const-string p0, "Class SplitAttributes is not valid"

    sget-object v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassSplitAttributesValid$1;->INSTANCE:Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassSplitAttributesValid$1;

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isClassSplitInfoTokenValid()Z
    .locals 1

    .line 843
    const-string p0, "SplitInfo.Token is not valid"

    sget-object v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassSplitInfoTokenValid$1;->INSTANCE:Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassSplitInfoTokenValid$1;

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isClassSplitInfoValid()Z
    .locals 1

    .line 373
    const-string p0, "Class SplitInfo is not valid"

    sget-object v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassSplitInfoValid$1;->INSTANCE:Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassSplitInfoValid$1;

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isClassSplitPairRuleBuilderLevel1Valid()Z
    .locals 1

    .line 404
    const-string p0, "Class SplitPairRule.Builder is not valid"

    sget-object v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassSplitPairRuleBuilderLevel1Valid$1;->INSTANCE:Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassSplitPairRuleBuilderLevel1Valid$1;

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isClassSplitPairRuleBuilderLevel2Valid()Z
    .locals 1

    .line 617
    const-string p0, "Class SplitPairRule.Builder is not valid"

    sget-object v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassSplitPairRuleBuilderLevel2Valid$1;->INSTANCE:Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassSplitPairRuleBuilderLevel2Valid$1;

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isClassSplitPairRuleValid()Z
    .locals 1

    .line 388
    const-string p0, "Class SplitPairRule is not valid"

    sget-object v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassSplitPairRuleValid$1;->INSTANCE:Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassSplitPairRuleValid$1;

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isClassSplitPlaceholderRuleBuilderLevel1Valid()Z
    .locals 1

    .line 433
    const-string p0, "Class SplitPlaceholderRule.Builder is not valid"

    sget-object v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassSplitPlaceholderRuleBuilderLevel1Valid$1;->INSTANCE:Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassSplitPlaceholderRuleBuilderLevel1Valid$1;

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isClassSplitPlaceholderRuleBuilderLevel2Valid()Z
    .locals 1

    .line 639
    const-string p0, "Class SplitPlaceholderRule.Builder is not valid"

    sget-object v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassSplitPlaceholderRuleBuilderLevel2Valid$1;->INSTANCE:Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassSplitPlaceholderRuleBuilderLevel2Valid$1;

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isClassSplitPlaceholderRuleValid()Z
    .locals 1

    .line 417
    const-string p0, "Class SplitPlaceholderRule is not valid"

    sget-object v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassSplitPlaceholderRuleValid$1;->INSTANCE:Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassSplitPlaceholderRuleValid$1;

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isClassSplitTypeValid()Z
    .locals 1

    .line 592
    const-string p0, "Class SplitAttributes.SplitType is not valid"

    sget-object v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassSplitTypeValid$1;->INSTANCE:Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassSplitTypeValid$1;

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isClassWindowAttributesValid()Z
    .locals 1

    .line 820
    const-string p0, "Class WindowAttributes is not valid"

    sget-object v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassWindowAttributesValid$1;->INSTANCE:Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassWindowAttributesValid$1;

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isMethodClearEmbeddedActivityWindowInfoCallbackValid()Z
    .locals 1

    .line 881
    new-instance v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodClearEmbeddedActivityWindowInfoCallbackValid$1;

    invoke-direct {v0, p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodClearEmbeddedActivityWindowInfoCallbackValid$1;-><init>(Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;)V

    const-string p0, "ActivityEmbeddingComponent#clearEmbeddedActivityWindowInfoCallback is not valid"

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isMethodClearSplitInfoCallbackValid()Z
    .locals 1

    .line 471
    new-instance v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodClearSplitInfoCallbackValid$1;

    invoke-direct {v0, p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodClearSplitInfoCallbackValid$1;-><init>(Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;)V

    const-string p0, "ActivityEmbeddingComponent#clearSplitInfoCallback is not valid"

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isMethodGetAnimationParamsValid()Z
    .locals 1

    .line 976
    const-string p0, "SplitAttributes#getAnimationParams is not valid"

    sget-object v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodGetAnimationParamsValid$1;->INSTANCE:Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodGetAnimationParamsValid$1;

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isMethodGetDefaultSplitAttributesValid()Z
    .locals 1

    .line 514
    const-string p0, "SplitRule#getDefaultSplitAttributes is not valid"

    sget-object v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodGetDefaultSplitAttributesValid$1;->INSTANCE:Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodGetDefaultSplitAttributesValid$1;

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isMethodGetDividerAttributesValid()Z
    .locals 1

    .line 890
    const-string p0, "SplitAttributes#getDividerAttributes is not valid"

    sget-object v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodGetDividerAttributesValid$1;->INSTANCE:Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodGetDividerAttributesValid$1;

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isMethodGetEmbeddedActivityWindowInfoValid()Z
    .locals 1

    .line 853
    new-instance v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodGetEmbeddedActivityWindowInfoValid$1;

    invoke-direct {v0, p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodGetEmbeddedActivityWindowInfoValid$1;-><init>(Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;)V

    const-string p0, "ActivityEmbeddingComponent#getEmbeddedActivityWindowInfo is not valid"

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isMethodGetFinishPrimaryWithPlaceholderValid()Z
    .locals 1

    .line 505
    const-string p0, "SplitPlaceholderRule#getFinishPrimaryWithPlaceholder is not valid"

    sget-object v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodGetFinishPrimaryWithPlaceholderValid$1;->INSTANCE:Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodGetFinishPrimaryWithPlaceholderValid$1;

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isMethodGetLayoutDirectionValid()Z
    .locals 1

    .line 348
    const-string p0, "SplitRule#getLayoutDirection is not valid"

    sget-object v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodGetLayoutDirectionValid$1;->INSTANCE:Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodGetLayoutDirectionValid$1;

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isMethodGetSplitAttributesValid()Z
    .locals 1

    .line 497
    const-string p0, "SplitInfo#getSplitAttributes is not valid"

    sget-object v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodGetSplitAttributesValid$1;->INSTANCE:Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodGetSplitAttributesValid$1;

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isMethodGetSplitInfoTokenValid()Z
    .locals 1

    .line 761
    const-string p0, "SplitInfo#getSplitInfoToken is not valid"

    sget-object v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodGetSplitInfoTokenValid$1;->INSTANCE:Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodGetSplitInfoTokenValid$1;

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isMethodGetSplitRatioValid()Z
    .locals 1

    .line 341
    const-string p0, "SplitRule#getSplitRatio is not valid"

    sget-object v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodGetSplitRatioValid$1;->INSTANCE:Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodGetSplitRatioValid$1;

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isMethodInvalidateTopVisibleSplitAttributesValid()Z
    .locals 1

    .line 675
    new-instance v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodInvalidateTopVisibleSplitAttributesValid$1;

    invoke-direct {v0, p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodInvalidateTopVisibleSplitAttributesValid$1;-><init>(Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;)V

    const-string p0, "#invalidateTopVisibleSplitAttributes is not valid"

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isMethodIsActivityEmbeddedValid()Z
    .locals 1

    .line 319
    new-instance v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodIsActivityEmbeddedValid$1;

    invoke-direct {v0, p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodIsActivityEmbeddedValid$1;-><init>(Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;)V

    const-string p0, "ActivityEmbeddingComponent#isActivityEmbedded is not valid"

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isMethodIsDraggingToFullscreenAllowedValid()Z
    .locals 1

    .line 996
    const-string p0, "DividerAttributes#isDraggingToFullscreenAllowed is not valid"

    sget-object v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodIsDraggingToFullscreenAllowedValid$1;->INSTANCE:Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodIsDraggingToFullscreenAllowedValid$1;

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isMethodPinUnpinTopActivityStackValid()Z
    .locals 1

    .line 731
    new-instance v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodPinUnpinTopActivityStackValid$1;

    invoke-direct {v0, p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodPinUnpinTopActivityStackValid$1;-><init>(Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;)V

    const-string p0, "#pin(unPin)TopActivityStack is not valid"

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isMethodRegisterActivityStackCallbackValid()Z
    .locals 1

    .line 710
    new-instance v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodRegisterActivityStackCallbackValid$1;

    invoke-direct {v0, p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodRegisterActivityStackCallbackValid$1;-><init>(Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;)V

    const-string p0, "registerActivityStackCallback is not valid"

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isMethodSetAnimationParamsValid()Z
    .locals 1

    .line 984
    const-string p0, "SplitAttributes#setAnimationParams is not valid"

    sget-object v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodSetAnimationParamsValid$1;->INSTANCE:Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodSetAnimationParamsValid$1;

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isMethodSetDividerAttributesValid()Z
    .locals 1

    .line 898
    const-string p0, "SplitAttributes#setDividerAttributes is not valid"

    sget-object v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodSetDividerAttributesValid$1;->INSTANCE:Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodSetDividerAttributesValid$1;

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isMethodSetDraggingToFullscreenAllowedValid()Z
    .locals 1

    .line 1005
    const-string p0, "DividerAttributes.Builder#setDraggingToFullscreenAllowed is not valid"

    .line 1004
    sget-object v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodSetDraggingToFullscreenAllowedValid$1;->INSTANCE:Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodSetDraggingToFullscreenAllowedValid$1;

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isMethodSetEmbeddedActivityWindowInfoCallbackValid()Z
    .locals 1

    .line 868
    new-instance v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodSetEmbeddedActivityWindowInfoCallbackValid$1;

    invoke-direct {v0, p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodSetEmbeddedActivityWindowInfoCallbackValid$1;-><init>(Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;)V

    const-string p0, "ActivityEmbeddingComponent#setEmbeddedActivityWindowInfoCallback is not valid"

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isMethodSetEmbeddingRulesValid()Z
    .locals 1

    .line 311
    new-instance v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodSetEmbeddingRulesValid$1;

    invoke-direct {v0, p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodSetEmbeddingRulesValid$1;-><init>(Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;)V

    const-string p0, "ActivityEmbeddingComponent#setEmbeddingRules is not valid"

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isMethodSetSplitInfoCallbackJavaConsumerValid()Z
    .locals 1

    .line 331
    new-instance v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodSetSplitInfoCallbackJavaConsumerValid$1;

    invoke-direct {v0, p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodSetSplitInfoCallbackJavaConsumerValid$1;-><init>(Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;)V

    const-string p0, "ActivityEmbeddingComponent#setSplitInfoCallback is not valid"

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isMethodSetSplitInfoCallbackWindowConsumerValid()Z
    .locals 1

    .line 460
    new-instance v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodSetSplitInfoCallbackWindowConsumerValid$1;

    invoke-direct {v0, p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodSetSplitInfoCallbackWindowConsumerValid$1;-><init>(Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;)V

    const-string p0, "ActivityEmbeddingComponent#setSplitInfoCallback is not valid"

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isMethodSplitAttributesCalculatorValid()Z
    .locals 1

    .line 481
    new-instance v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodSplitAttributesCalculatorValid$1;

    invoke-direct {v0, p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodSplitAttributesCalculatorValid$1;-><init>(Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;)V

    const-string p0, "ActivityEmbeddingComponent#setSplitAttributesCalculator is not valid"

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isMethodSplitInfoGetTokenValid()Z
    .locals 1

    .line 693
    const-string p0, "SplitInfo#getToken is not valid"

    sget-object v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodSplitInfoGetTokenValid$1;->INSTANCE:Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodSplitInfoGetTokenValid$1;

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isMethodUnregisterActivityStackCallbackValid()Z
    .locals 1

    .line 721
    new-instance v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodUnregisterActivityStackCallbackValid$1;

    invoke-direct {v0, p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodUnregisterActivityStackCallbackValid$1;-><init>(Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;)V

    const-string p0, "unregisterActivityStackCallback is not valid"

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isMethodUpdateSplitAttributesValid()Z
    .locals 1

    .line 682
    new-instance v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodUpdateSplitAttributesValid$1;

    invoke-direct {v0, p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodUpdateSplitAttributesValid$1;-><init>(Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;)V

    const-string p0, "#updateSplitAttributes is not valid"

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final isMethodUpdateSplitAttributesWithTokenValid()Z
    .locals 1

    .line 750
    new-instance v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodUpdateSplitAttributesWithTokenValid$1;

    invoke-direct {v0, p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodUpdateSplitAttributesWithTokenValid$1;-><init>(Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;)V

    const-string p0, "updateSplitAttributes is not valid"

    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final getActivityEmbeddingComponent()Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;
    .locals 2

    .line 74
    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->canUseActivityEmbeddingComponent()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 76
    :try_start_0
    iget-object p0, p0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->windowExtensions:Landroidx/window/extensions/WindowExtensions;

    invoke-interface {p0}, Landroidx/window/extensions/WindowExtensions;->getActivityEmbeddingComponent()Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v1
.end method

.method public final hasValidVendorApiLevel1$window_release()Z
    .locals 1

    .line 124
    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isMethodSetEmbeddingRulesValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isMethodIsActivityEmbeddedValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isMethodSetSplitInfoCallbackJavaConsumerValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isMethodGetSplitRatioValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isMethodGetLayoutDirectionValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isClassActivityRuleValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isClassActivityRuleBuilderLevel1Valid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isClassSplitInfoValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isClassSplitPairRuleValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isClassSplitPairRuleBuilderLevel1Valid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isClassSplitPlaceholderRuleValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isClassSplitPlaceholderRuleBuilderLevel1Valid()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hasValidVendorApiLevel2$window_release()Z
    .locals 1

    .line 157
    invoke-virtual {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->hasValidVendorApiLevel1$window_release()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isMethodSetSplitInfoCallbackWindowConsumerValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isMethodClearSplitInfoCallbackValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isMethodSplitAttributesCalculatorValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isMethodGetSplitAttributesValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isMethodGetFinishPrimaryWithPlaceholderValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isMethodGetDefaultSplitAttributesValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isClassActivityRuleBuilderLevel2Valid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isClassEmbeddingRuleValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isClassSplitAttributesValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isClassSplitAttributesCalculatorParamsValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isClassSplitTypeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isClassSplitPairRuleBuilderLevel2Valid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isClassSplitPlaceholderRuleBuilderLevel2Valid()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hasValidVendorApiLevel3$window_release()Z
    .locals 1

    .line 181
    invoke-virtual {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->hasValidVendorApiLevel2$window_release()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isMethodInvalidateTopVisibleSplitAttributesValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isMethodUpdateSplitAttributesValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isMethodSplitInfoGetTokenValid()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hasValidVendorApiLevel5$window_release()Z
    .locals 1

    .line 214
    invoke-virtual {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->hasValidVendorApiLevel3$window_release()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isActivityStackGetActivityStackTokenValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isMethodRegisterActivityStackCallbackValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isMethodUnregisterActivityStackCallbackValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isMethodPinUnpinTopActivityStackValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isMethodUpdateSplitAttributesWithTokenValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isMethodGetSplitInfoTokenValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isClassAnimationBackgroundValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isClassActivityStackTokenValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isClassWindowAttributesValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isClassSplitInfoTokenValid()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hasValidVendorApiLevel6$window_release()Z
    .locals 1

    .line 239
    invoke-virtual {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->hasValidVendorApiLevel5$window_release()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isMethodGetEmbeddedActivityWindowInfoValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isMethodSetEmbeddedActivityWindowInfoCallbackValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isMethodClearEmbeddedActivityWindowInfoCallbackValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isMethodGetDividerAttributesValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isMethodSetDividerAttributesValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isClassEmbeddedActivityWindowInfoValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isClassDividerAttributesValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isClassDividerAttributesBuilderValid()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hasValidVendorApiLevel7$window_release()Z
    .locals 1

    .line 260
    invoke-virtual {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->hasValidVendorApiLevel6$window_release()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isMethodGetAnimationParamsValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isMethodSetAnimationParamsValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isMethodIsDraggingToFullscreenAllowedValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isMethodSetDraggingToFullscreenAllowedValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isClassAnimationParamsValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isClassAnimationParamsBuilderValid()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isActivityEmbeddingComponentAccessible$window_release()Z
    .locals 1

    .line 104
    iget-object v0, p0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->safeWindowExtensionsProvider:Landroidx/window/SafeWindowExtensionsProvider;

    invoke-virtual {v0}, Landroidx/window/SafeWindowExtensionsProvider;->isWindowExtensionsValid$window_release()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-direct {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isActivityEmbeddingComponentValid()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
