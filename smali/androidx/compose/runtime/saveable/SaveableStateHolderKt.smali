.class public abstract Landroidx/compose/runtime/saveable/SaveableStateHolderKt;
.super Ljava/lang/Object;
.source "SaveableStateHolder.kt"


# direct methods
.method public static final rememberSaveableStateHolder(Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/saveable/SaveableStateHolder;
    .locals 7

    .line 57
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "androidx.compose.runtime.saveable.rememberSaveableStateHolder (SaveableStateHolder.kt:56)"

    const v2, 0xebd1ab

    invoke-static {v2, p1, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    const p1, -0x2f73363d

    invoke-interface {p0, p1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    sget-object p1, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;->Companion:Landroidx/compose/runtime/saveable/SaveableStateHolderImpl$Companion;

    invoke-virtual {p1}, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl$Companion;->getSaver()Landroidx/compose/runtime/saveable/Saver;

    move-result-object v1

    sget-object v3, Landroidx/compose/runtime/saveable/SaveableStateHolderKt$rememberSaveableStateHolder$1;->INSTANCE:Landroidx/compose/runtime/saveable/SaveableStateHolderKt$rememberSaveableStateHolder$1;

    const/16 v5, 0xc00

    const/4 v6, 0x4

    const/4 v2, 0x0

    move-object v4, p0

    invoke-static/range {v0 .. v6}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    move-result-object p1

    .line 58
    check-cast p1, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;

    invoke-static {}, Landroidx/compose/runtime/saveable/SaveableStateRegistryKt;->getLocalSaveableStateRegistry()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    .line 75
    invoke-interface {p0, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    .line 58
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;->setParentSaveableStateRegistry(Landroidx/compose/runtime/saveable/SaveableStateRegistry;)V

    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1
    return-object p1
.end method
