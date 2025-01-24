.class final Lco/aospa/dolby/xiaomi/geq/ui/EqualizerBandsKt$EqualizerBands$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "EqualizerBands.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $index:I

.field final synthetic $viewModel:Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;


# direct methods
.method constructor <init>(Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;I)V
    .locals 0

    .line 0
    iput-object p1, p0, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerBandsKt$EqualizerBands$1$1$1;->$viewModel:Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;

    iput p2, p0, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerBandsKt$EqualizerBands$1$1$1;->$index:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 31
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerBandsKt$EqualizerBands$1$1$1;->invoke(I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(I)V
    .locals 1

    .line 34
    iget-object v0, p0, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerBandsKt$EqualizerBands$1$1$1;->$viewModel:Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;

    iget p0, p0, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerBandsKt$EqualizerBands$1$1$1;->$index:I

    invoke-virtual {v0, p0, p1}, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;->setGain(II)V

    return-void
.end method
