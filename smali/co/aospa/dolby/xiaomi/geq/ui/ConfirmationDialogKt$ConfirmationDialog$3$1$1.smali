.class final Lco/aospa/dolby/xiaomi/geq/ui/ConfirmationDialogKt$ConfirmationDialog$3$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ConfirmationDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $onConfirm:Lkotlin/jvm/functions/Function0;

.field final synthetic $showDialog$delegate:Landroidx/compose/runtime/MutableState;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lco/aospa/dolby/xiaomi/geq/ui/ConfirmationDialogKt$ConfirmationDialog$3$1$1;->$onConfirm:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lco/aospa/dolby/xiaomi/geq/ui/ConfirmationDialogKt$ConfirmationDialog$3$1$1;->$showDialog$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 35
    invoke-virtual {p0}, Lco/aospa/dolby/xiaomi/geq/ui/ConfirmationDialogKt$ConfirmationDialog$3$1$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 2

    .line 36
    iget-object v0, p0, Lco/aospa/dolby/xiaomi/geq/ui/ConfirmationDialogKt$ConfirmationDialog$3$1$1;->$showDialog$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lco/aospa/dolby/xiaomi/geq/ui/ConfirmationDialogKt;->access$ConfirmationDialog$lambda$2(Landroidx/compose/runtime/MutableState;Z)V

    .line 37
    iget-object p0, p0, Lco/aospa/dolby/xiaomi/geq/ui/ConfirmationDialogKt$ConfirmationDialog$3$1$1;->$onConfirm:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method
