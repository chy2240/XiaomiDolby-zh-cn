.class public abstract Lcom/android/settingslib/spa/framework/compose/NavControllerWrapperKt;
.super Ljava/lang/Object;
.source "NavControllerWrapper.kt"


# static fields
.field private static final LocalNavController:Landroidx/compose/runtime/ProvidableCompositionLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 49
    sget-object v0, Lcom/android/settingslib/spa/framework/compose/NavControllerWrapperKt$LocalNavController$2;->INSTANCE:Lcom/android/settingslib/spa/framework/compose/NavControllerWrapperKt$LocalNavController$2;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v0, v1, v2}, Landroidx/compose/runtime/CompositionLocalKt;->compositionLocalOf$default(Landroidx/compose/runtime/SnapshotMutationPolicy;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/spa/framework/compose/NavControllerWrapperKt;->LocalNavController:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-void
.end method

.method public static final getLocalNavController()Landroidx/compose/runtime/ProvidableCompositionLocal;
    .locals 1

    .line 49
    sget-object v0, Lcom/android/settingslib/spa/framework/compose/NavControllerWrapperKt;->LocalNavController:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-object v0
.end method

.method public static final localNavController(Landroidx/navigation/NavHostController;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/ProvidedValue;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x21de76b3

    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "com.android.settingslib.spa.framework.compose.localNavController (NavControllerWrapper.kt:38)"

    .line 39
    invoke-static {v0, p2, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 40
    :cond_0
    sget-object p2, Landroidx/activity/compose/LocalOnBackPressedDispatcherOwner;->INSTANCE:Landroidx/activity/compose/LocalOnBackPressedDispatcherOwner;

    sget v0, Landroidx/activity/compose/LocalOnBackPressedDispatcherOwner;->$stable:I

    invoke-virtual {p2, p1, v0}, Landroidx/activity/compose/LocalOnBackPressedDispatcherOwner;->getCurrent(Landroidx/compose/runtime/Composer;I)Landroidx/activity/OnBackPressedDispatcherOwner;

    move-result-object p2

    .line 41
    sget-object v0, Lcom/android/settingslib/spa/framework/compose/NavControllerWrapperKt;->LocalNavController:Landroidx/compose/runtime/ProvidableCompositionLocal;

    const v1, -0x223c63a6

    invoke-interface {p1, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 1166
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .line 1167
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_2

    .line 42
    new-instance v1, Lcom/android/settingslib/spa/framework/compose/NavControllerWrapperImpl;

    if-eqz p2, :cond_1

    .line 44
    invoke-interface {p2}, Landroidx/activity/OnBackPressedDispatcherOwner;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 42
    :goto_0
    invoke-direct {v1, p0, p2}, Lcom/android/settingslib/spa/framework/compose/NavControllerWrapperImpl;-><init>(Landroidx/navigation/NavHostController;Landroidx/activity/OnBackPressedDispatcher;)V

    .line 1169
    invoke-interface {p1, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 41
    :cond_2
    check-cast v1, Lcom/android/settingslib/spa/framework/compose/NavControllerWrapperImpl;

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    return-object p0
.end method
