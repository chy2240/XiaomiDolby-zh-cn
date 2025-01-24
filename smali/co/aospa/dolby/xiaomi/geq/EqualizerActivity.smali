.class public final Lco/aospa/dolby/xiaomi/geq/EqualizerActivity;
.super Landroidx/activity/ComponentActivity;
.source "EqualizerActivity.kt"


# instance fields
.field private final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 26
    invoke-direct {p0}, Landroidx/activity/ComponentActivity;-><init>()V

    .line 28
    sget-object v0, Lco/aospa/dolby/xiaomi/geq/EqualizerActivity$viewModel$2;->INSTANCE:Lco/aospa/dolby/xiaomi/geq/EqualizerActivity$viewModel$2;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lco/aospa/dolby/xiaomi/geq/EqualizerActivity$special$$inlined$viewModels$default$1;

    invoke-direct {v0, p0}, Lco/aospa/dolby/xiaomi/geq/EqualizerActivity$special$$inlined$viewModels$default$1;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 76
    :cond_0
    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    const-class v2, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    .line 78
    new-instance v3, Lco/aospa/dolby/xiaomi/geq/EqualizerActivity$special$$inlined$viewModels$default$2;

    invoke-direct {v3, p0}, Lco/aospa/dolby/xiaomi/geq/EqualizerActivity$special$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 80
    new-instance v4, Lco/aospa/dolby/xiaomi/geq/EqualizerActivity$special$$inlined$viewModels$default$3;

    const/4 v5, 0x0

    invoke-direct {v4, v5, p0}, Lco/aospa/dolby/xiaomi/geq/EqualizerActivity$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    .line 76
    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 28
    iput-object v1, p0, Lco/aospa/dolby/xiaomi/geq/EqualizerActivity;->viewModel$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final MainContent(Landroidx/compose/runtime/Composer;I)V
    .locals 5

    const v0, 0x7f2106cc

    .line 40
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "co.aospa.dolby.xiaomi.geq.EqualizerActivity.MainContent (EqualizerActivity.kt:39)"

    invoke-static {v0, p2, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Landroidx/navigation/Navigator;

    const/16 v1, 0x8

    .line 41
    invoke-static {v0, p1, v1}, Landroidx/navigation/compose/NavHostControllerKt;->rememberNavController([Landroidx/navigation/Navigator;Landroidx/compose/runtime/Composer;I)Landroidx/navigation/NavHostController;

    move-result-object v0

    .line 42
    invoke-static {v0, p1, v1}, Lcom/android/settingslib/spa/framework/compose/NavControllerWrapperKt;->localNavController(Landroidx/navigation/NavHostController;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v0

    new-instance v1, Lco/aospa/dolby/xiaomi/geq/EqualizerActivity$MainContent$1;

    invoke-direct {v1, p0}, Lco/aospa/dolby/xiaomi/geq/EqualizerActivity$MainContent$1;-><init>(Lco/aospa/dolby/xiaomi/geq/EqualizerActivity;)V

    const/16 v2, 0x36

    const v3, 0x374bdb8c

    const/4 v4, 0x1

    invoke-static {v3, v4, v1, p1, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    sget v2, Landroidx/compose/runtime/ProvidedValue;->$stable:I

    or-int/lit8 v2, v2, 0x30

    invoke-static {v0, v1, p1, v2}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance v0, Lco/aospa/dolby/xiaomi/geq/EqualizerActivity$MainContent$2;

    invoke-direct {v0, p0, p2}, Lco/aospa/dolby/xiaomi/geq/EqualizerActivity$MainContent$2;-><init>(Lco/aospa/dolby/xiaomi/geq/EqualizerActivity;I)V

    invoke-interface {p1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_2
    return-void
.end method

.method public static final synthetic access$MainContent(Lco/aospa/dolby/xiaomi/geq/EqualizerActivity;Landroidx/compose/runtime/Composer;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lco/aospa/dolby/xiaomi/geq/EqualizerActivity;->MainContent(Landroidx/compose/runtime/Composer;I)V

    return-void
.end method

.method public static final synthetic access$getViewModel(Lco/aospa/dolby/xiaomi/geq/EqualizerActivity;)Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;
    .locals 0

    .line 26
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/geq/EqualizerActivity;->getViewModel()Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;

    move-result-object p0

    return-object p0
.end method

.method private final getViewModel()Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;
    .locals 0

    .line 28
    iget-object p0, p0, Lco/aospa/dolby/xiaomi/geq/EqualizerActivity;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;

    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 31
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    new-instance p1, Lco/aospa/dolby/xiaomi/geq/EqualizerActivity$onCreate$1;

    invoke-direct {p1, p0}, Lco/aospa/dolby/xiaomi/geq/EqualizerActivity$onCreate$1;-><init>(Lco/aospa/dolby/xiaomi/geq/EqualizerActivity;)V

    const v0, -0x77e4dbe4

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, v1, v0}, Landroidx/activity/compose/ComponentActivityKt;->setContent$default(Landroidx/activity/ComponentActivity;Landroidx/compose/runtime/CompositionContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void
.end method
