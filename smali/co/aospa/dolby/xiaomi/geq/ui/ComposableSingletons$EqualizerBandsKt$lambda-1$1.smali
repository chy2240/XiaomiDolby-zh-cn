.class final Lco/aospa/dolby/xiaomi/geq/ui/ComposableSingletons$EqualizerBandsKt$lambda-1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "EqualizerBands.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# static fields
.field public static final INSTANCE:Lco/aospa/dolby/xiaomi/geq/ui/ComposableSingletons$EqualizerBandsKt$lambda-1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lco/aospa/dolby/xiaomi/geq/ui/ComposableSingletons$EqualizerBandsKt$lambda-1$1;

    invoke-direct {v0}, Lco/aospa/dolby/xiaomi/geq/ui/ComposableSingletons$EqualizerBandsKt$lambda-1$1;-><init>()V

    sput-object v0, Lco/aospa/dolby/xiaomi/geq/ui/ComposableSingletons$EqualizerBandsKt$lambda-1$1;->INSTANCE:Lco/aospa/dolby/xiaomi/geq/ui/ComposableSingletons$EqualizerBandsKt$lambda-1$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 0
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 27
    check-cast p1, Landroidx/compose/foundation/lazy/LazyItemScope;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lco/aospa/dolby/xiaomi/geq/ui/ComposableSingletons$EqualizerBandsKt$lambda-1$1;->invoke(Landroidx/compose/foundation/lazy/LazyItemScope;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/foundation/lazy/LazyItemScope;Landroidx/compose/runtime/Composer;I)V
    .locals 1

    const-string p0, "$this$item"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 p0, p3, 0x51

    const/16 p1, 0x10

    if-ne p0, p1, :cond_1

    .line 28
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, -0x1

    const-string p1, "co.aospa.dolby.xiaomi.geq.ui.ComposableSingletons$EqualizerBandsKt.lambda-1.<anonymous> (EqualizerBands.kt:27)"

    const v0, 0x4e77a976

    invoke-static {v0, p3, p0, p1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    const/4 p0, 0x0

    invoke-static {p2, p0}, Lco/aospa/dolby/xiaomi/geq/ui/BandGainSliderLabelsKt;->BandGainSliderLabels(Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    :goto_1
    return-void
.end method
