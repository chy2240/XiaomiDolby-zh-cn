.class public final Landroidx/window/embedding/EmbeddingCompat;
.super Ljava/lang/Object;
.source "EmbeddingCompat.kt"

# interfaces
.implements Landroidx/window/embedding/EmbeddingInterfaceCompat;


# static fields
.field public static final Companion:Landroidx/window/embedding/EmbeddingCompat$Companion;


# instance fields
.field private final activityWindowInfoCallbackController:Landroidx/window/embedding/ActivityWindowInfoCallbackController;

.field private final adapter:Landroidx/window/embedding/EmbeddingAdapter;

.field private final applicationContext:Landroid/content/Context;

.field private final consumerAdapter:Landroidx/window/core/ConsumerAdapter;

.field private final embeddingExtension:Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;

.field private final overlayController:Landroidx/window/embedding/OverlayControllerImpl;

.field private final windowSdkExtensions:Landroidx/window/WindowSdkExtensions;


# direct methods
.method public static synthetic $r8$lambda$q2XleTDeKABBD8c7Qvxp4i-6azQ(Landroidx/window/embedding/EmbeddingInterfaceCompat$EmbeddingCallbackInterface;Landroidx/window/embedding/EmbeddingCompat;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroidx/window/embedding/EmbeddingCompat;->registerSplitInfoCallback$lambda$1(Landroidx/window/embedding/EmbeddingInterfaceCompat$EmbeddingCallbackInterface;Landroidx/window/embedding/EmbeddingCompat;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rAOrJLFyI-ewO8Tx96yl7xlGIfs(Landroidx/window/embedding/EmbeddingInterfaceCompat$EmbeddingCallbackInterface;Landroidx/window/embedding/EmbeddingCompat;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroidx/window/embedding/EmbeddingCompat;->setEmbeddingCallback$lambda$0(Landroidx/window/embedding/EmbeddingInterfaceCompat$EmbeddingCallbackInterface;Landroidx/window/embedding/EmbeddingCompat;Ljava/util/List;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Landroidx/window/embedding/EmbeddingCompat$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/window/embedding/EmbeddingCompat$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/window/embedding/EmbeddingCompat;->Companion:Landroidx/window/embedding/EmbeddingCompat$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;Landroidx/window/embedding/EmbeddingAdapter;Landroidx/window/core/ConsumerAdapter;Landroid/content/Context;Landroidx/window/embedding/OverlayControllerImpl;Landroidx/window/embedding/ActivityWindowInfoCallbackController;)V
    .locals 1

    const-string v0, "embeddingExtension"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consumerAdapter"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "applicationContext"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Landroidx/window/embedding/EmbeddingCompat;->embeddingExtension:Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;

    .line 48
    iput-object p2, p0, Landroidx/window/embedding/EmbeddingCompat;->adapter:Landroidx/window/embedding/EmbeddingAdapter;

    .line 49
    iput-object p3, p0, Landroidx/window/embedding/EmbeddingCompat;->consumerAdapter:Landroidx/window/core/ConsumerAdapter;

    .line 50
    iput-object p4, p0, Landroidx/window/embedding/EmbeddingCompat;->applicationContext:Landroid/content/Context;

    .line 51
    iput-object p5, p0, Landroidx/window/embedding/EmbeddingCompat;->overlayController:Landroidx/window/embedding/OverlayControllerImpl;

    .line 52
    iput-object p6, p0, Landroidx/window/embedding/EmbeddingCompat;->activityWindowInfoCallbackController:Landroidx/window/embedding/ActivityWindowInfoCallbackController;

    .line 55
    sget-object p1, Landroidx/window/WindowSdkExtensions;->Companion:Landroidx/window/WindowSdkExtensions$Companion;

    invoke-virtual {p1}, Landroidx/window/WindowSdkExtensions$Companion;->getInstance()Landroidx/window/WindowSdkExtensions;

    move-result-object p1

    iput-object p1, p0, Landroidx/window/embedding/EmbeddingCompat;->windowSdkExtensions:Landroidx/window/WindowSdkExtensions;

    return-void
.end method

.method public static final synthetic access$getAdapter$p(Landroidx/window/embedding/EmbeddingCompat;)Landroidx/window/embedding/EmbeddingAdapter;
    .locals 0

    .line 46
    iget-object p0, p0, Landroidx/window/embedding/EmbeddingCompat;->adapter:Landroidx/window/embedding/EmbeddingAdapter;

    return-object p0
.end method

.method private final registerSplitInfoCallback(Landroidx/window/embedding/EmbeddingInterfaceCompat$EmbeddingCallbackInterface;)V
    .locals 1

    .line 118
    new-instance v0, Landroidx/window/embedding/EmbeddingCompat$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p0}, Landroidx/window/embedding/EmbeddingCompat$$ExternalSyntheticLambda1;-><init>(Landroidx/window/embedding/EmbeddingInterfaceCompat$EmbeddingCallbackInterface;Landroidx/window/embedding/EmbeddingCompat;)V

    .line 122
    iget-object p0, p0, Landroidx/window/embedding/EmbeddingCompat;->embeddingExtension:Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;

    invoke-interface {p0, v0}, Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;->setSplitInfoCallback(Landroidx/window/extensions/core/util/function/Consumer;)V

    return-void
.end method

.method private static final registerSplitInfoCallback$lambda$1(Landroidx/window/embedding/EmbeddingInterfaceCompat$EmbeddingCallbackInterface;Landroidx/window/embedding/EmbeddingCompat;Ljava/util/List;)V
    .locals 1

    const-string v0, "$embeddingCallback"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "splitInfoList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    iget-object p1, p1, Landroidx/window/embedding/EmbeddingCompat;->adapter:Landroidx/window/embedding/EmbeddingAdapter;

    invoke-virtual {p1, p2}, Landroidx/window/embedding/EmbeddingAdapter;->translate(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Landroidx/window/embedding/EmbeddingInterfaceCompat$EmbeddingCallbackInterface;->onSplitInfoChanged(Ljava/util/List;)V

    return-void
.end method

.method private static final setEmbeddingCallback$lambda$0(Landroidx/window/embedding/EmbeddingInterfaceCompat$EmbeddingCallbackInterface;Landroidx/window/embedding/EmbeddingCompat;Ljava/util/List;)V
    .locals 1

    const-string v0, "$embeddingCallback"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityStacks"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    iget-object p1, p1, Landroidx/window/embedding/EmbeddingCompat;->adapter:Landroidx/window/embedding/EmbeddingAdapter;

    invoke-virtual {p1, p2}, Landroidx/window/embedding/EmbeddingAdapter;->translate$window_release(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Landroidx/window/embedding/EmbeddingInterfaceCompat$EmbeddingCallbackInterface;->onActivityStackChanged(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public isActivityEmbedded(Landroid/app/Activity;)Z
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    iget-object p0, p0, Landroidx/window/embedding/EmbeddingCompat;->embeddingExtension:Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;

    invoke-interface {p0, p1}, Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;->isActivityEmbedded(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public setEmbeddingCallback(Landroidx/window/embedding/EmbeddingInterfaceCompat$EmbeddingCallbackInterface;)V
    .locals 4

    const-string v0, "embeddingCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Landroidx/window/embedding/EmbeddingCompat;->windowSdkExtensions:Landroidx/window/WindowSdkExtensions;

    invoke-virtual {v0}, Landroidx/window/WindowSdkExtensions;->getExtensionVersion()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 89
    iget-object v0, p0, Landroidx/window/embedding/EmbeddingCompat;->consumerAdapter:Landroidx/window/core/ConsumerAdapter;

    .line 90
    iget-object v1, p0, Landroidx/window/embedding/EmbeddingCompat;->embeddingExtension:Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;

    const-class v2, Ljava/util/List;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    .line 89
    new-instance v3, Landroidx/window/embedding/EmbeddingCompat$setEmbeddingCallback$1;

    invoke-direct {v3, p1, p0}, Landroidx/window/embedding/EmbeddingCompat$setEmbeddingCallback$1;-><init>(Landroidx/window/embedding/EmbeddingInterfaceCompat$EmbeddingCallbackInterface;Landroidx/window/embedding/EmbeddingCompat;)V

    const-string p0, "setSplitInfoCallback"

    invoke-virtual {v0, v1, v2, p0, v3}, Landroidx/window/core/ConsumerAdapter;->addConsumer(Ljava/lang/Object;Lkotlin/reflect/KClass;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x5

    if-gt v1, v0, :cond_1

    if-ge v0, v2, :cond_1

    .line 99
    invoke-direct {p0, p1}, Landroidx/window/embedding/EmbeddingCompat;->registerSplitInfoCallback(Landroidx/window/embedding/EmbeddingInterfaceCompat$EmbeddingCallbackInterface;)V

    goto :goto_0

    :cond_1
    if-gt v2, v0, :cond_2

    const v1, 0x7fffffff

    if-gt v0, v1, :cond_2

    .line 102
    invoke-direct {p0, p1}, Landroidx/window/embedding/EmbeddingCompat;->registerSplitInfoCallback(Landroidx/window/embedding/EmbeddingInterfaceCompat$EmbeddingCallbackInterface;)V

    .line 105
    new-instance v0, Landroidx/window/embedding/EmbeddingCompat$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p0}, Landroidx/window/embedding/EmbeddingCompat$$ExternalSyntheticLambda0;-><init>(Landroidx/window/embedding/EmbeddingInterfaceCompat$EmbeddingCallbackInterface;Landroidx/window/embedding/EmbeddingCompat;)V

    .line 109
    iget-object p0, p0, Landroidx/window/embedding/EmbeddingCompat;->embeddingExtension:Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;

    .line 110
    new-instance p1, Landroidx/profileinstaller/ProfileInstallReceiver$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Landroidx/profileinstaller/ProfileInstallReceiver$$ExternalSyntheticLambda0;-><init>()V

    .line 109
    invoke-interface {p0, p1, v0}, Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;->registerActivityStackCallback(Ljava/util/concurrent/Executor;Landroidx/window/extensions/core/util/function/Consumer;)V

    :cond_2
    :goto_0
    return-void
.end method
