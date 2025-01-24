.class final Lco/aospa/dolby/xiaomi/geq/ui/EqualizerScreenKt$EqualizerScreen$1;
.super Lkotlin/jvm/internal/Lambda;
.source "EqualizerScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $viewModel:Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;


# direct methods
.method constructor <init>(Landroidx/compose/ui/Modifier;Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerScreenKt$EqualizerScreen$1;->$modifier:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerScreenKt$EqualizerScreen$1;->$viewModel:Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 27
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerScreenKt$EqualizerScreen$1;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 14

    move-object v0, p0

    move-object v10, p1

    move/from16 v1, p2

    and-int/lit8 v2, v1, 0xb

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 28
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, -0x1

    const-string v3, "co.aospa.dolby.xiaomi.geq.ui.EqualizerScreen.<anonymous> (EqualizerScreen.kt:27)"

    const v4, -0x55b04d5c

    invoke-static {v4, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 29
    :cond_2
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 30
    invoke-static {v1, v2, v4, v3}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxSize$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 31
    sget-object v2, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->INSTANCE:Lcom/android/settingslib/spa/framework/theme/SettingsDimension;

    invoke-virtual {v2}, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->getItemPadding()Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/PaddingKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 32
    iget-object v2, v0, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerScreenKt$EqualizerScreen$1;->$modifier:Landroidx/compose/ui/Modifier;

    invoke-interface {v1, v2}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 33
    sget-object v2, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v3, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v2, p1, v3}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/material3/ColorScheme;->getBackground-0d7_KjU()J

    move-result-wide v2

    .line 34
    new-instance v5, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerScreenKt$EqualizerScreen$1$1;

    iget-object v0, v0, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerScreenKt$EqualizerScreen$1;->$viewModel:Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;

    invoke-direct {v5, v0}, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerScreenKt$EqualizerScreen$1$1;-><init>(Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;)V

    const/16 v0, 0x36

    const v6, -0x69671857

    invoke-static {v6, v4, v5, p1, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v9

    const/high16 v11, 0xc00000

    const/16 v12, 0x7a

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v13, 0x0

    move-object v0, v1

    move-object v1, v4

    move-wide v4, v5

    move v6, v7

    move v7, v8

    move-object v8, v13

    move-object v10, p1

    .line 28
    invoke-static/range {v0 .. v12}, Landroidx/compose/material3/SurfaceKt;->Surface-T9BRK9s(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    :goto_1
    return-void
.end method
