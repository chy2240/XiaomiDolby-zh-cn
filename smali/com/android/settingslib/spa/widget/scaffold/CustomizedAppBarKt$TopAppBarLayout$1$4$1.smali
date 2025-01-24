.class final Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TopAppBarLayout$1$4$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CustomizedAppBar.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic $title:Lkotlin/jvm/functions/Function2;

.field final synthetic $titleContentColor:J

.field final synthetic $titleScaleDisabled:Z


# direct methods
.method constructor <init>(JLkotlin/jvm/functions/Function2;Z)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TopAppBarLayout$1$4$1;->$titleContentColor:J

    iput-object p3, p0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TopAppBarLayout$1$4$1;->$title:Lkotlin/jvm/functions/Function2;

    iput-boolean p4, p0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TopAppBarLayout$1$4$1;->$titleScaleDisabled:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 497
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TopAppBarLayout$1$4$1;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 4

    and-int/lit8 v0, p2, 0xb

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 498
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 508
    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_2

    .line 498
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    const-string v1, "com.android.settingslib.spa.widget.scaffold.TopAppBarLayout.<anonymous>.<anonymous>.<anonymous> (CustomizedAppBar.kt:497)"

    const v2, 0x5cf02aa0

    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 499
    :cond_2
    invoke-static {}, Landroidx/compose/material3/ContentColorKt;->getLocalContentColor()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object p2

    iget-wide v0, p0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TopAppBarLayout$1$4$1;->$titleContentColor:J

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object p2

    .line 500
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    .line 501
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v1

    .line 75
    invoke-interface {p1, v1}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    .line 501
    iget-boolean v2, p0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TopAppBarLayout$1$4$1;->$titleScaleDisabled:Z

    check-cast v1, Landroidx/compose/ui/unit/Density;

    .line 503
    invoke-interface {v1}, Landroidx/compose/ui/unit/Density;->getDensity()F

    move-result v3

    if-eqz v2, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1

    .line 504
    :cond_3
    invoke-interface {v1}, Landroidx/compose/ui/unit/FontScaling;->getFontScale()F

    move-result v1

    .line 502
    :goto_1
    invoke-static {v3, v1}, Landroidx/compose/ui/unit/DensityKt;->Density(FF)Landroidx/compose/ui/unit/Density;

    move-result-object v1

    .line 500
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v0

    filled-new-array {p2, v0}, [Landroidx/compose/runtime/ProvidedValue;

    move-result-object p2

    .line 507
    iget-object p0, p0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TopAppBarLayout$1$4$1;->$title:Lkotlin/jvm/functions/Function2;

    sget v0, Landroidx/compose/runtime/ProvidedValue;->$stable:I

    .line 498
    invoke-static {p2, p0, p1, v0}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_4
    :goto_2
    return-void
.end method
