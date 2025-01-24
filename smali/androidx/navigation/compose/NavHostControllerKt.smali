.class public abstract Landroidx/navigation/compose/NavHostControllerKt;
.super Ljava/lang/Object;
.source "NavHostController.kt"


# direct methods
.method private static final NavControllerSaver(Landroid/content/Context;)Landroidx/compose/runtime/saveable/Saver;
    .locals 2

    .line 79
    sget-object v0, Landroidx/navigation/compose/NavHostControllerKt$NavControllerSaver$1;->INSTANCE:Landroidx/navigation/compose/NavHostControllerKt$NavControllerSaver$1;

    new-instance v1, Landroidx/navigation/compose/NavHostControllerKt$NavControllerSaver$2;

    invoke-direct {v1, p0}, Landroidx/navigation/compose/NavHostControllerKt$NavControllerSaver$2;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Landroidx/compose/runtime/saveable/SaverKt;->Saver(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createNavController(Landroid/content/Context;)Landroidx/navigation/NavHostController;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/navigation/compose/NavHostControllerKt;->createNavController(Landroid/content/Context;)Landroidx/navigation/NavHostController;

    move-result-object p0

    return-object p0
.end method

.method private static final createNavController(Landroid/content/Context;)Landroidx/navigation/NavHostController;
    .locals 3

    .line 71
    new-instance v0, Landroidx/navigation/NavHostController;

    invoke-direct {v0, p0}, Landroidx/navigation/NavHostController;-><init>(Landroid/content/Context;)V

    .line 72
    invoke-virtual {v0}, Landroidx/navigation/NavController;->getNavigatorProvider()Landroidx/navigation/NavigatorProvider;

    move-result-object p0

    new-instance v1, Landroidx/navigation/compose/ComposeNavGraphNavigator;

    invoke-virtual {v0}, Landroidx/navigation/NavController;->getNavigatorProvider()Landroidx/navigation/NavigatorProvider;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/navigation/compose/ComposeNavGraphNavigator;-><init>(Landroidx/navigation/NavigatorProvider;)V

    invoke-virtual {p0, v1}, Landroidx/navigation/NavigatorProvider;->addNavigator(Landroidx/navigation/Navigator;)Landroidx/navigation/Navigator;

    .line 73
    invoke-virtual {v0}, Landroidx/navigation/NavController;->getNavigatorProvider()Landroidx/navigation/NavigatorProvider;

    move-result-object p0

    new-instance v1, Landroidx/navigation/compose/ComposeNavigator;

    invoke-direct {v1}, Landroidx/navigation/compose/ComposeNavigator;-><init>()V

    invoke-virtual {p0, v1}, Landroidx/navigation/NavigatorProvider;->addNavigator(Landroidx/navigation/Navigator;)Landroidx/navigation/Navigator;

    .line 74
    invoke-virtual {v0}, Landroidx/navigation/NavController;->getNavigatorProvider()Landroidx/navigation/NavigatorProvider;

    move-result-object p0

    new-instance v1, Landroidx/navigation/compose/DialogNavigator;

    invoke-direct {v1}, Landroidx/navigation/compose/DialogNavigator;-><init>()V

    invoke-virtual {p0, v1}, Landroidx/navigation/NavigatorProvider;->addNavigator(Landroidx/navigation/Navigator;)Landroidx/navigation/Navigator;

    return-object v0
.end method

.method public static final rememberNavController([Landroidx/navigation/Navigator;Landroidx/compose/runtime/Composer;I)Landroidx/navigation/NavHostController;
    .locals 8

    .line 58
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "androidx.navigation.compose.rememberNavController (NavHostController.kt:57)"

    const v2, -0x129c080e

    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 59
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->getLocalContext()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object p2

    .line 84
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p2

    .line 59
    check-cast p2, Landroid/content/Context;

    .line 60
    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2}, Landroidx/navigation/compose/NavHostControllerKt;->NavControllerSaver(Landroid/content/Context;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v2

    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    .line 85
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_1

    .line 86
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v3, v0, :cond_2

    .line 60
    :cond_1
    new-instance v3, Landroidx/navigation/compose/NavHostControllerKt$rememberNavController$1$1;

    invoke-direct {v3, p2}, Landroidx/navigation/compose/NavHostControllerKt$rememberNavController$1$1;-><init>(Landroid/content/Context;)V

    .line 88
    invoke-interface {p1, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 60
    :cond_2
    move-object v4, v3

    check-cast v4, Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v3, 0x0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    move-result-object p1

    .line 63
    check-cast p1, Landroidx/navigation/NavHostController;

    .line 64
    array-length p2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_3

    aget-object v1, p0, v0

    .line 65
    invoke-virtual {p1}, Landroidx/navigation/NavController;->getNavigatorProvider()Landroidx/navigation/NavigatorProvider;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/navigation/NavigatorProvider;->addNavigator(Landroidx/navigation/Navigator;)Landroidx/navigation/Navigator;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    :cond_3
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_4
    return-object p1
.end method
