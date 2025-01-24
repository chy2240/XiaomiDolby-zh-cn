.class final Lco/aospa/dolby/xiaomi/geq/EqualizerActivity$MainContent$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "EqualizerActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field final synthetic this$0:Lco/aospa/dolby/xiaomi/geq/EqualizerActivity;


# direct methods
.method constructor <init>(Lco/aospa/dolby/xiaomi/geq/EqualizerActivity;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lco/aospa/dolby/xiaomi/geq/EqualizerActivity$MainContent$1$1;->this$0:Lco/aospa/dolby/xiaomi/geq/EqualizerActivity;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 45
    check-cast p1, Landroidx/compose/foundation/layout/PaddingValues;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lco/aospa/dolby/xiaomi/geq/EqualizerActivity$MainContent$1$1;->invoke(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)V
    .locals 3

    const-string v0, "paddingValues"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 v0, p3, 0xe

    if-nez v0, :cond_1

    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr p3, v0

    :cond_1
    and-int/lit8 v0, p3, 0x5b

    const/16 v1, 0x12

    if-ne v0, v1, :cond_3

    .line 46
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 49
    :cond_2
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_2

    .line 46
    :cond_3
    :goto_1
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, -0x1

    const-string v1, "co.aospa.dolby.xiaomi.geq.EqualizerActivity.MainContent.<anonymous>.<anonymous> (EqualizerActivity.kt:45)"

    const v2, -0x33f5d0a9    # -3.6224348E7f

    invoke-static {v2, p3, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 47
    :cond_4
    iget-object p0, p0, Lco/aospa/dolby/xiaomi/geq/EqualizerActivity$MainContent$1$1;->this$0:Lco/aospa/dolby/xiaomi/geq/EqualizerActivity;

    invoke-static {p0}, Lco/aospa/dolby/xiaomi/geq/EqualizerActivity;->access$getViewModel(Lco/aospa/dolby/xiaomi/geq/EqualizerActivity;)Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;

    move-result-object p0

    .line 48
    sget-object p3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    invoke-static {p3, p1}, Landroidx/compose/foundation/layout/PaddingKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    const/16 p3, 0x8

    const/4 v0, 0x0

    .line 46
    invoke-static {p0, p1, p2, p3, v0}, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerScreenKt;->EqualizerScreen(Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_5
    :goto_2
    return-void
.end method
