.class final Lco/aospa/dolby/xiaomi/geq/ui/BandGainSliderKt$BandGainSlider$1$4$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BandGainSlider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $onValueChangeFinished:Lkotlin/jvm/functions/Function1;

.field final synthetic $sliderPosition$delegate:Landroidx/compose/runtime/MutableFloatState;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableFloatState;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lco/aospa/dolby/xiaomi/geq/ui/BandGainSliderKt$BandGainSlider$1$4$1;->$onValueChangeFinished:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lco/aospa/dolby/xiaomi/geq/ui/BandGainSliderKt$BandGainSlider$1$4$1;->$sliderPosition$delegate:Landroidx/compose/runtime/MutableFloatState;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 52
    invoke-virtual {p0}, Lco/aospa/dolby/xiaomi/geq/ui/BandGainSliderKt$BandGainSlider$1$4$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 2

    .line 53
    iget-object v0, p0, Lco/aospa/dolby/xiaomi/geq/ui/BandGainSliderKt$BandGainSlider$1$4$1;->$onValueChangeFinished:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lco/aospa/dolby/xiaomi/geq/ui/BandGainSliderKt$BandGainSlider$1$4$1;->$sliderPosition$delegate:Landroidx/compose/runtime/MutableFloatState;

    invoke-static {p0}, Lco/aospa/dolby/xiaomi/geq/ui/BandGainSliderKt;->access$BandGainSlider$lambda$1(Landroidx/compose/runtime/MutableFloatState;)F

    move-result p0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr p0, v1

    float-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
