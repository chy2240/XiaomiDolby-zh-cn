.class final Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$1$2$5;
.super Lkotlin/jvm/internal/Lambda;
.source "PresetSelector.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field final synthetic $expanded$delegate:Landroidx/compose/runtime/MutableState;

.field final synthetic $presets$delegate:Landroidx/compose/runtime/State;

.field final synthetic $viewModel:Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;


# direct methods
.method constructor <init>(Landroidx/compose/runtime/State;Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$1$2$5;->$presets$delegate:Landroidx/compose/runtime/State;

    iput-object p2, p0, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$1$2$5;->$viewModel:Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;

    iput-object p3, p0, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$1$2$5;->$expanded$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 86
    check-cast p1, Landroidx/compose/foundation/layout/ColumnScope;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$1$2$5;->invoke(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p3

    const-string v2, "$this$ExposedDropdownMenu"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 v2, v1, 0x51

    const/16 v3, 0x10

    if-ne v2, v3, :cond_1

    .line 87
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_2

    .line 87
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, -0x1

    const-string v3, "co.aospa.dolby.xiaomi.geq.ui.PresetSelector.<anonymous>.<anonymous>.<anonymous> (PresetSelector.kt:86)"

    const v4, 0xd131a5c

    invoke-static {v4, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    iget-object v1, v0, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$1$2$5;->$presets$delegate:Landroidx/compose/runtime/State;

    invoke-static {v1}, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt;->access$PresetSelector$lambda$0(Landroidx/compose/runtime/State;)Ljava/util/List;

    move-result-object v1

    iget-object v2, v0, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$1$2$5;->$viewModel:Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;

    iget-object v0, v0, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$1$2$5;->$expanded$delegate:Landroidx/compose/runtime/MutableState;

    .line 1855
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/aospa/dolby/xiaomi/geq/data/Preset;

    .line 89
    new-instance v4, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$1$2$5$1$1;

    invoke-direct {v4, v3}, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$1$2$5$1$1;-><init>(Lco/aospa/dolby/xiaomi/geq/data/Preset;)V

    const/16 v5, 0x36

    const v6, -0x302ea0b2

    const/4 v7, 0x1

    move-object/from16 v15, p2

    invoke-static {v6, v7, v4, v15, v5}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v8

    .line 88
    new-instance v9, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$1$2$5$1$2;

    invoke-direct {v9, v2, v3, v0}, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$1$2$5$1$2;-><init>(Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;Lco/aospa/dolby/xiaomi/geq/data/Preset;Landroidx/compose/runtime/MutableState;)V

    const/16 v18, 0x6

    const/16 v19, 0x1fc

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v3, 0x0

    const/16 v16, 0x0

    move-object v15, v3

    move-object/from16 v17, p2

    invoke-static/range {v8 .. v19}, Landroidx/compose/material3/AndroidMenu_androidKt;->DropdownMenuItem(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/MenuItemColors;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V

    goto :goto_1

    .line 1856
    :cond_3
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_4
    :goto_2
    return-void
.end method
