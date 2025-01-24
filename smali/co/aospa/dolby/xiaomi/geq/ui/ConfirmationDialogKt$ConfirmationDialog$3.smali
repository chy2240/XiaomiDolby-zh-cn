.class final Lco/aospa/dolby/xiaomi/geq/ui/ConfirmationDialogKt$ConfirmationDialog$3;
.super Lkotlin/jvm/internal/Lambda;
.source "ConfirmationDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic $onConfirm:Lkotlin/jvm/functions/Function0;

.field final synthetic $showDialog$delegate:Landroidx/compose/runtime/MutableState;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lco/aospa/dolby/xiaomi/geq/ui/ConfirmationDialogKt$ConfirmationDialog$3;->$onConfirm:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lco/aospa/dolby/xiaomi/geq/ui/ConfirmationDialogKt$ConfirmationDialog$3;->$showDialog$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 33
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lco/aospa/dolby/xiaomi/geq/ui/ConfirmationDialogKt$ConfirmationDialog$3;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 13

    and-int/lit8 v2, p2, 0xb

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 34
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_1

    .line 34
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, -0x1

    const-string v3, "co.aospa.dolby.xiaomi.geq.ui.ConfirmationDialog.<anonymous> (ConfirmationDialog.kt:33)"

    const v4, -0x2d85e77b

    invoke-static {v4, p2, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    const v1, 0x3215a025

    invoke-interface {p1, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    iget-object v1, p0, Lco/aospa/dolby/xiaomi/geq/ui/ConfirmationDialogKt$ConfirmationDialog$3;->$onConfirm:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    .line 35
    iget-object v2, p0, Lco/aospa/dolby/xiaomi/geq/ui/ConfirmationDialogKt$ConfirmationDialog$3;->$onConfirm:Lkotlin/jvm/functions/Function0;

    iget-object v0, p0, Lco/aospa/dolby/xiaomi/geq/ui/ConfirmationDialogKt$ConfirmationDialog$3;->$showDialog$delegate:Landroidx/compose/runtime/MutableState;

    .line 1166
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_3

    .line 1167
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v3, v1, :cond_4

    .line 35
    :cond_3
    new-instance v3, Lco/aospa/dolby/xiaomi/geq/ui/ConfirmationDialogKt$ConfirmationDialog$3$1$1;

    invoke-direct {v3, v2, v0}, Lco/aospa/dolby/xiaomi/geq/ui/ConfirmationDialogKt$ConfirmationDialog$3$1$1;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;)V

    .line 1169
    invoke-interface {p1, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 35
    :cond_4
    move-object v0, v3

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    sget-object v1, Lco/aospa/dolby/xiaomi/geq/ui/ComposableSingletons$ConfirmationDialogKt;->INSTANCE:Lco/aospa/dolby/xiaomi/geq/ui/ComposableSingletons$ConfirmationDialogKt;

    invoke-virtual {v1}, Lco/aospa/dolby/xiaomi/geq/ui/ComposableSingletons$ConfirmationDialogKt;->getLambda-1$hardware__xiaomi__dolby__android_common__XiaomiDolby()Lkotlin/jvm/functions/Function3;

    move-result-object v9

    const/high16 v11, 0x30000000

    const/16 v12, 0x1fe

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v10, p1

    .line 34
    invoke-static/range {v0 .. v12}, Landroidx/compose/material3/ButtonKt;->TextButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_5
    :goto_1
    return-void
.end method
