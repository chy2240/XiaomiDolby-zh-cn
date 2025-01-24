.class public abstract Landroidx/compose/foundation/AndroidOverscroll_androidKt;
.super Ljava/lang/Object;
.source "AndroidOverscroll.android.kt"


# direct methods
.method public static final synthetic access$destretchMultiplier-GyEprt8(I)F
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/foundation/AndroidOverscroll_androidKt;->destretchMultiplier-GyEprt8(I)F

    move-result p0

    return p0
.end method

.method private static final destretchMultiplier-GyEprt8(I)F
    .locals 1

    .line 967
    sget-object v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;->Companion:Landroidx/compose/ui/input/nestedscroll/NestedScrollSource$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource$Companion;->getSideEffect-WNlRxjI()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;->equals-impl0(II)Z

    move-result p0

    if-eqz p0, :cond_0

    const/high16 p0, 0x40800000    # 4.0f

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_0
    return p0
.end method

.method public static final rememberOverscrollEffect(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/OverscrollEffect;
    .locals 4

    .line 68
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "androidx.compose.foundation.rememberOverscrollEffect (AndroidOverscroll.android.kt:67)"

    const v2, -0x57ff4a94

    invoke-static {v2, p1, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 69
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->getLocalContext()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object p1

    .line 75
    invoke-interface {p0, p1}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p1

    .line 69
    check-cast p1, Landroid/content/Context;

    .line 70
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    .line 75
    invoke-interface {p0, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    .line 70
    check-cast v0, Landroidx/compose/ui/unit/Density;

    .line 71
    invoke-static {}, Landroidx/compose/foundation/OverscrollConfiguration_androidKt;->getLocalOverscrollConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v1

    .line 75
    invoke-interface {p0, v1}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    .line 71
    check-cast v1, Landroidx/compose/foundation/OverscrollConfiguration;

    const v2, 0x6e67a13d

    invoke-interface {p0, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    if-eqz v1, :cond_3

    .line 73
    invoke-interface {p0, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {p0, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    invoke-interface {p0, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    .line 1166
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_1

    .line 1167
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v3, v2, :cond_2

    .line 74
    :cond_1
    new-instance v3, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    invoke-direct {v3, p1, v0, v1}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;-><init>(Landroid/content/Context;Landroidx/compose/ui/unit/Density;Landroidx/compose/foundation/OverscrollConfiguration;)V

    .line 1169
    invoke-interface {p0, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 73
    :cond_2
    check-cast v3, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    goto :goto_0

    .line 77
    :cond_3
    sget-object v3, Landroidx/compose/foundation/NoOpOverscrollEffect;->INSTANCE:Landroidx/compose/foundation/NoOpOverscrollEffect;

    .line 72
    :goto_0
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_4
    return-object v3
.end method
