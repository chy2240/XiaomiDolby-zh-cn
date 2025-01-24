.class public abstract Lco/aospa/dolby/xiaomi/geq/ui/EqualizerBandsKt;
.super Ljava/lang/Object;
.source "EqualizerBands.kt"


# direct methods
.method public static final EqualizerBands(Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;Landroidx/compose/runtime/Composer;I)V
    .locals 13

    const-string v0, "viewModel"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x43cc28d4

    .line 19
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "co.aospa.dolby.xiaomi.geq.ui.EqualizerBands (EqualizerBands.kt:18)"

    invoke-static {v0, p2, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 20
    :cond_0
    invoke-virtual {p0}, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;->getPreset()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, p1, v1, v3}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v0

    .line 21
    invoke-static {v0}, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerBandsKt;->EqualizerBands$lambda$0(Landroidx/compose/runtime/State;)Lco/aospa/dolby/xiaomi/geq/data/Preset;

    move-result-object v0

    invoke-virtual {v0}, Lco/aospa/dolby/xiaomi/geq/data/Preset;->getBandGains()Ljava/util/List;

    move-result-object v0

    .line 24
    sget-object v1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/Alignment$Companion;->getCenterVertically()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v6

    .line 25
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    const/4 v4, 0x0

    invoke-static {v1, v4, v3, v2}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 23
    new-instance v9, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerBandsKt$EqualizerBands$1;

    invoke-direct {v9, v0, p0}, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerBandsKt$EqualizerBands$1;-><init>(Ljava/util/List;Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;)V

    const v11, 0x30006

    const/16 v12, 0xde

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v10, p1

    invoke-static/range {v1 .. v12}, Landroidx/compose/foundation/lazy/LazyDslKt;->LazyRow(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/FlingBehavior;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance v0, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerBandsKt$EqualizerBands$2;

    invoke-direct {v0, p0, p2}, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerBandsKt$EqualizerBands$2;-><init>(Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;I)V

    invoke-interface {p1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_2
    return-void
.end method

.method private static final EqualizerBands$lambda$0(Landroidx/compose/runtime/State;)Lco/aospa/dolby/xiaomi/geq/data/Preset;
    .locals 0

    .line 81
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lco/aospa/dolby/xiaomi/geq/data/Preset;

    return-object p0
.end method
