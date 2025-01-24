.class final Lco/aospa/dolby/xiaomi/geq/ui/BandGainSliderKt$BandGainSlider$1$3$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BandGainSlider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $sliderPosition$delegate:Landroidx/compose/runtime/MutableFloatState;


# direct methods
.method constructor <init>(Landroidx/compose/runtime/MutableFloatState;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lco/aospa/dolby/xiaomi/geq/ui/BandGainSliderKt$BandGainSlider$1$3$1;->$sliderPosition$delegate:Landroidx/compose/runtime/MutableFloatState;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 51
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lco/aospa/dolby/xiaomi/geq/ui/BandGainSliderKt$BandGainSlider$1$3$1;->invoke(F)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(F)V
    .locals 0

    .line 51
    iget-object p0, p0, Lco/aospa/dolby/xiaomi/geq/ui/BandGainSliderKt$BandGainSlider$1$3$1;->$sliderPosition$delegate:Landroidx/compose/runtime/MutableFloatState;

    invoke-static {p0, p1}, Lco/aospa/dolby/xiaomi/geq/ui/BandGainSliderKt;->access$BandGainSlider$lambda$2(Landroidx/compose/runtime/MutableFloatState;F)V

    return-void
.end method
