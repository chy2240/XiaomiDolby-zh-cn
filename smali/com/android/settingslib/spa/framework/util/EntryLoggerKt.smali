.class public abstract Lcom/android/settingslib/spa/framework/util/EntryLoggerKt;
.super Ljava/lang/Object;
.source "EntryLogger.kt"


# direct methods
.method public static final logEntryEvent(Landroidx/compose/runtime/Composer;I)Lkotlin/jvm/functions/Function2;
    .locals 3

    const v0, -0x6541a800

    invoke-interface {p0, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "com.android.settingslib.spa.framework.util.logEntryEvent (EntryLogger.kt:28)"

    .line 29
    invoke-static {v0, p1, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 30
    :cond_0
    invoke-static {}, Lcom/android/settingslib/spa/framework/common/SettingsEntryKt;->getLocalEntryDataProvider()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object p1

    .line 75
    invoke-interface {p0, p1}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p1

    .line 30
    check-cast p1, Lcom/android/settingslib/spa/framework/common/EntryData;

    invoke-interface {p1}, Lcom/android/settingslib/spa/framework/common/EntryData;->getEntryId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    sget-object p1, Lcom/android/settingslib/spa/framework/util/EntryLoggerKt$logEntryEvent$entryId$1;->INSTANCE:Lcom/android/settingslib/spa/framework/util/EntryLoggerKt$logEntryEvent$entryId$1;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    return-object p1

    .line 31
    :cond_2
    invoke-static {}, Lcom/android/settingslib/spa/framework/common/SettingsEntryKt;->getLocalEntryDataProvider()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    .line 75
    invoke-interface {p0, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/spa/framework/common/EntryData;

    .line 31
    invoke-interface {v0}, Lcom/android/settingslib/spa/framework/common/EntryData;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 32
    new-instance v1, Lcom/android/settingslib/spa/framework/util/EntryLoggerKt$logEntryEvent$1;

    invoke-direct {v1, p1, v0}, Lcom/android/settingslib/spa/framework/util/EntryLoggerKt$logEntryEvent$1;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    return-object v1
.end method

.method public static final wrapOnClickWithLog(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Lkotlin/jvm/functions/Function0;
    .locals 5

    const v0, 0x6621eeef

    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "com.android.settingslib.spa.framework.util.wrapOnClickWithLog (EntryLogger.kt:41)"

    .line 42
    invoke-static {v0, p2, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    if-nez p0, :cond_2

    .line 43
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    const/4 v0, 0x0

    .line 44
    invoke-static {p1, v0}, Lcom/android/settingslib/spa/framework/util/EntryLoggerKt;->logEntryEvent(Landroidx/compose/runtime/Composer;I)Lkotlin/jvm/functions/Function2;

    move-result-object v1

    const v2, 0x2b71c74d

    invoke-interface {p1, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {p1, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    and-int/lit8 v3, p2, 0xe

    xor-int/lit8 v3, v3, 0x6

    const/4 v4, 0x4

    if-le v3, v4, :cond_3

    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    and-int/lit8 p2, p2, 0x6

    if-ne p2, v4, :cond_5

    :cond_4
    const/4 v0, 0x1

    :cond_5
    or-int p2, v2, v0

    .line 1166
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    if-nez p2, :cond_6

    .line 1167
    sget-object p2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p2

    if-ne v0, p2, :cond_7

    .line 45
    :cond_6
    new-instance v0, Lcom/android/settingslib/spa/framework/util/EntryLoggerKt$wrapOnClickWithLog$1$1;

    invoke-direct {v0, v1, p0}, Lcom/android/settingslib/spa/framework/util/EntryLoggerKt$wrapOnClickWithLog$1$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;)V

    .line 1169
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 45
    :cond_7
    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_8
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    return-object v0
.end method
