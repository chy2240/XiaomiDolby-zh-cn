.class final Lco/aospa/dolby/xiaomi/geq/EqualizerActivity$MainContent$1;
.super Lkotlin/jvm/internal/Lambda;
.source "EqualizerActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic this$0:Lco/aospa/dolby/xiaomi/geq/EqualizerActivity;


# direct methods
.method constructor <init>(Lco/aospa/dolby/xiaomi/geq/EqualizerActivity;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lco/aospa/dolby/xiaomi/geq/EqualizerActivity$MainContent$1;->this$0:Lco/aospa/dolby/xiaomi/geq/EqualizerActivity;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 42
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lco/aospa/dolby/xiaomi/geq/EqualizerActivity$MainContent$1;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 7

    and-int/lit8 v0, p2, 0xb

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 43
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_1

    .line 43
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    const-string v1, "co.aospa.dolby.xiaomi.geq.EqualizerActivity.MainContent.<anonymous> (EqualizerActivity.kt:42)"

    const v2, 0x374bdb8c

    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    const p2, 0x7f110195

    const/4 v0, 0x6

    .line 44
    invoke-static {p2, p1, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v1

    .line 45
    new-instance p2, Lco/aospa/dolby/xiaomi/geq/EqualizerActivity$MainContent$1$1;

    iget-object p0, p0, Lco/aospa/dolby/xiaomi/geq/EqualizerActivity$MainContent$1;->this$0:Lco/aospa/dolby/xiaomi/geq/EqualizerActivity;

    invoke-direct {p2, p0}, Lco/aospa/dolby/xiaomi/geq/EqualizerActivity$MainContent$1$1;-><init>(Lco/aospa/dolby/xiaomi/geq/EqualizerActivity;)V

    const/16 p0, 0x36

    const v0, -0x33f5d0a9    # -3.6224348E7f

    const/4 v2, 0x1

    invoke-static {v0, v2, p2, p1, p0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v3

    const/16 v5, 0x180

    const/4 v6, 0x2

    const/4 v2, 0x0

    move-object v4, p1

    .line 43
    invoke-static/range {v1 .. v6}, Lcom/android/settingslib/spa/widget/scaffold/SettingsScaffoldKt;->SettingsScaffold(Ljava/lang/String;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    :goto_1
    return-void
.end method
