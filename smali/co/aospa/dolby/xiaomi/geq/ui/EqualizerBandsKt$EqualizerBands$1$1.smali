.class final Lco/aospa/dolby/xiaomi/geq/ui/EqualizerBandsKt$EqualizerBands$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "EqualizerBands.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field final synthetic $bandGains:Ljava/util/List;

.field final synthetic $viewModel:Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;


# direct methods
.method constructor <init>(Ljava/util/List;Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerBandsKt$EqualizerBands$1$1;->$bandGains:Ljava/util/List;

    iput-object p2, p0, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerBandsKt$EqualizerBands$1$1;->$viewModel:Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 30
    check-cast p1, Landroidx/compose/foundation/lazy/LazyItemScope;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    check-cast p3, Landroidx/compose/runtime/Composer;

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerBandsKt$EqualizerBands$1$1;->invoke(Landroidx/compose/foundation/lazy/LazyItemScope;ILandroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/foundation/lazy/LazyItemScope;ILandroidx/compose/runtime/Composer;I)V
    .locals 2

    const-string v0, "$this$items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 p1, p4, 0x70

    if-nez p1, :cond_1

    invoke-interface {p3, p2}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x20

    goto :goto_0

    :cond_0
    const/16 p1, 0x10

    :goto_0
    or-int/2addr p4, p1

    :cond_1
    and-int/lit16 p1, p4, 0x2d1

    const/16 v0, 0x90

    if-ne p1, v0, :cond_3

    .line 31
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    .line 36
    :cond_2
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_2

    .line 31
    :cond_3
    :goto_1
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, -0x1

    const-string v0, "co.aospa.dolby.xiaomi.geq.ui.EqualizerBands.<anonymous>.<anonymous> (EqualizerBands.kt:30)"

    const v1, 0xc6a47f

    invoke-static {v1, p4, p1, v0}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 32
    :cond_4
    iget-object p1, p0, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerBandsKt$EqualizerBands$1$1;->$bandGains:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lco/aospa/dolby/xiaomi/geq/data/BandGain;

    .line 31
    new-instance p4, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerBandsKt$EqualizerBands$1$1$1;

    iget-object p0, p0, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerBandsKt$EqualizerBands$1$1;->$viewModel:Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;

    invoke-direct {p4, p0, p2}, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerBandsKt$EqualizerBands$1$1$1;-><init>(Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;I)V

    const/16 p0, 0x8

    invoke-static {p1, p4, p3, p0}, Lco/aospa/dolby/xiaomi/geq/ui/BandGainSliderKt;->BandGainSlider(Lco/aospa/dolby/xiaomi/geq/data/BandGain;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_5
    :goto_2
    return-void
.end method
