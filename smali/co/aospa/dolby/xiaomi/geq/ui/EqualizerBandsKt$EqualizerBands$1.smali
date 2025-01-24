.class final Lco/aospa/dolby/xiaomi/geq/ui/EqualizerBandsKt$EqualizerBands$1;
.super Lkotlin/jvm/internal/Lambda;
.source "EqualizerBands.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $bandGains:Ljava/util/List;

.field final synthetic $viewModel:Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;


# direct methods
.method constructor <init>(Ljava/util/List;Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerBandsKt$EqualizerBands$1;->$bandGains:Ljava/util/List;

    iput-object p2, p0, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerBandsKt$EqualizerBands$1;->$viewModel:Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 23
    check-cast p1, Landroidx/compose/foundation/lazy/LazyListScope;

    invoke-virtual {p0, p1}, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerBandsKt$EqualizerBands$1;->invoke(Landroidx/compose/foundation/lazy/LazyListScope;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/foundation/lazy/LazyListScope;)V
    .locals 8

    const-string v0, "$this$LazyRow"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    sget-object v0, Lco/aospa/dolby/xiaomi/geq/ui/ComposableSingletons$EqualizerBandsKt;->INSTANCE:Lco/aospa/dolby/xiaomi/geq/ui/ComposableSingletons$EqualizerBandsKt;

    invoke-virtual {v0}, Lco/aospa/dolby/xiaomi/geq/ui/ComposableSingletons$EqualizerBandsKt;->getLambda-1$hardware__xiaomi__dolby__android_common__XiaomiDolby()Lkotlin/jvm/functions/Function3;

    move-result-object v4

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Landroidx/compose/foundation/lazy/LazyListScope;->item$default(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;ILjava/lang/Object;)V

    .line 30
    iget-object v0, p0, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerBandsKt$EqualizerBands$1;->$bandGains:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-instance v0, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerBandsKt$EqualizerBands$1$1;

    iget-object v1, p0, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerBandsKt$EqualizerBands$1;->$bandGains:Ljava/util/List;

    iget-object p0, p0, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerBandsKt$EqualizerBands$1;->$viewModel:Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;

    invoke-direct {v0, v1, p0}, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerBandsKt$EqualizerBands$1$1;-><init>(Ljava/util/List;Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;)V

    const p0, 0xc6a47f

    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v5

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Landroidx/compose/foundation/lazy/LazyListScope;->items$default(Landroidx/compose/foundation/lazy/LazyListScope;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;ILjava/lang/Object;)V

    return-void
.end method
