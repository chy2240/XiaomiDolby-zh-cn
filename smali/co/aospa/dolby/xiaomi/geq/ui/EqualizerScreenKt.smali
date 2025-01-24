.class public abstract Lco/aospa/dolby/xiaomi/geq/ui/EqualizerScreenKt;
.super Ljava/lang/Object;
.source "EqualizerScreen.kt"


# direct methods
.method public static final EqualizerScreen(Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V
    .locals 4

    const-string v0, "viewModel"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x1d2170a9

    .line 26
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p2

    and-int/lit8 v1, p4, 0x2

    if-eqz v1, :cond_0

    .line 25
    sget-object p1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    :cond_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    const-string v2, "co.aospa.dolby.xiaomi.geq.ui.EqualizerScreen (EqualizerScreen.kt:25)"

    .line 26
    invoke-static {v0, p3, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 27
    :cond_1
    new-instance v0, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerScreenKt$EqualizerScreen$1;

    invoke-direct {v0, p1, p0}, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerScreenKt$EqualizerScreen$1;-><init>(Landroidx/compose/ui/Modifier;Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;)V

    const/16 v1, 0x36

    const v2, -0x55b04d5c

    const/4 v3, 0x1

    invoke-static {v2, v3, v0, p2, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v0, p2, v1}, Lcom/android/settingslib/spa/framework/theme/SettingsThemeKt;->SettingsTheme(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_2
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object p2

    if-eqz p2, :cond_3

    new-instance v0, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerScreenKt$EqualizerScreen$2;

    invoke-direct {v0, p0, p1, p3, p4}, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerScreenKt$EqualizerScreen$2;-><init>(Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;Landroidx/compose/ui/Modifier;II)V

    invoke-interface {p2, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_3
    return-void
.end method
