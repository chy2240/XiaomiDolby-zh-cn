.class final Lco/aospa/dolby/xiaomi/geq/ui/BandGainSliderKt$BandGainSlider$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BandGainSlider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Lco/aospa/dolby/xiaomi/geq/ui/BandGainSliderKt$BandGainSlider$1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lco/aospa/dolby/xiaomi/geq/ui/BandGainSliderKt$BandGainSlider$1$1;

    invoke-direct {v0}, Lco/aospa/dolby/xiaomi/geq/ui/BandGainSliderKt$BandGainSlider$1$1;-><init>()V

    sput-object v0, Lco/aospa/dolby/xiaomi/geq/ui/BandGainSliderKt$BandGainSlider$1$1;->INSTANCE:Lco/aospa/dolby/xiaomi/geq/ui/BandGainSliderKt$BandGainSlider$1$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 57
    check-cast p1, Landroidx/compose/ui/graphics/GraphicsLayerScope;

    invoke-virtual {p0, p1}, Lco/aospa/dolby/xiaomi/geq/ui/BandGainSliderKt$BandGainSlider$1$1;->invoke(Landroidx/compose/ui/graphics/GraphicsLayerScope;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/ui/graphics/GraphicsLayerScope;)V
    .locals 2

    const-string p0, "$this$graphicsLayer"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 p0, 0x43870000    # 270.0f

    .line 58
    invoke-interface {p1, p0}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->setRotationZ(F)V

    const/4 p0, 0x0

    .line 59
    invoke-static {p0, p0}, Landroidx/compose/ui/graphics/TransformOriginKt;->TransformOrigin(FF)J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->setTransformOrigin-__ExYCQ(J)V

    return-void
.end method
