.class final Lco/aospa/dolby/xiaomi/geq/ui/PresetNameDialogKt$PresetNameDialog$3$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PresetNameDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $error$delegate:Landroidx/compose/runtime/MutableState;

.field final synthetic $onPresetNameSet:Lkotlin/jvm/functions/Function1;

.field final synthetic $showDialog$delegate:Landroidx/compose/runtime/MutableState;

.field final synthetic $text$delegate:Landroidx/compose/runtime/MutableState;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lco/aospa/dolby/xiaomi/geq/ui/PresetNameDialogKt$PresetNameDialog$3$1$1;->$onPresetNameSet:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lco/aospa/dolby/xiaomi/geq/ui/PresetNameDialogKt$PresetNameDialog$3$1$1;->$text$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p3, p0, Lco/aospa/dolby/xiaomi/geq/ui/PresetNameDialogKt$PresetNameDialog$3$1$1;->$error$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p4, p0, Lco/aospa/dolby/xiaomi/geq/ui/PresetNameDialogKt$PresetNameDialog$3$1$1;->$showDialog$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 45
    invoke-virtual {p0}, Lco/aospa/dolby/xiaomi/geq/ui/PresetNameDialogKt$PresetNameDialog$3$1$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 2

    .line 46
    iget-object v0, p0, Lco/aospa/dolby/xiaomi/geq/ui/PresetNameDialogKt$PresetNameDialog$3$1$1;->$onPresetNameSet:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lco/aospa/dolby/xiaomi/geq/ui/PresetNameDialogKt$PresetNameDialog$3$1$1;->$text$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v1}, Lco/aospa/dolby/xiaomi/geq/ui/PresetNameDialogKt;->access$PresetNameDialog$lambda$4(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/aospa/dolby/xiaomi/geq/ui/PresetNameValidationError;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lco/aospa/dolby/xiaomi/geq/ui/PresetNameDialogKt$PresetNameDialog$3$1$1;->$error$delegate:Landroidx/compose/runtime/MutableState;

    .line 48
    invoke-static {p0, v0}, Lco/aospa/dolby/xiaomi/geq/ui/PresetNameDialogKt;->access$PresetNameDialog$lambda$8(Landroidx/compose/runtime/MutableState;Lco/aospa/dolby/xiaomi/geq/ui/PresetNameValidationError;)V

    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lco/aospa/dolby/xiaomi/geq/ui/PresetNameDialogKt$PresetNameDialog$3$1$1;->$showDialog$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lco/aospa/dolby/xiaomi/geq/ui/PresetNameDialogKt;->access$PresetNameDialog$lambda$2(Landroidx/compose/runtime/MutableState;Z)V

    .line 53
    iget-object p0, p0, Lco/aospa/dolby/xiaomi/geq/ui/PresetNameDialogKt$PresetNameDialog$3$1$1;->$error$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lco/aospa/dolby/xiaomi/geq/ui/PresetNameDialogKt;->access$PresetNameDialog$lambda$8(Landroidx/compose/runtime/MutableState;Lco/aospa/dolby/xiaomi/geq/ui/PresetNameValidationError;)V

    return-void
.end method
