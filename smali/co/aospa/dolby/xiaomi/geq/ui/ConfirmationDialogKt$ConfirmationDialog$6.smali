.class final Lco/aospa/dolby/xiaomi/geq/ui/ConfirmationDialogKt$ConfirmationDialog$6;
.super Lkotlin/jvm/internal/Lambda;
.source "ConfirmationDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic $$changed:I

.field final synthetic $onConfirm:Lkotlin/jvm/functions/Function0;

.field final synthetic $onDismiss:Lkotlin/jvm/functions/Function0;

.field final synthetic $text:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V
    .locals 0

    .line 0
    iput-object p1, p0, Lco/aospa/dolby/xiaomi/geq/ui/ConfirmationDialogKt$ConfirmationDialog$6;->$text:Ljava/lang/String;

    iput-object p2, p0, Lco/aospa/dolby/xiaomi/geq/ui/ConfirmationDialogKt$ConfirmationDialog$6;->$onConfirm:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lco/aospa/dolby/xiaomi/geq/ui/ConfirmationDialogKt$ConfirmationDialog$6;->$onDismiss:Lkotlin/jvm/functions/Function0;

    iput p4, p0, Lco/aospa/dolby/xiaomi/geq/ui/ConfirmationDialogKt$ConfirmationDialog$6;->$$changed:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lco/aospa/dolby/xiaomi/geq/ui/ConfirmationDialogKt$ConfirmationDialog$6;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 2

    .line 0
    iget-object p2, p0, Lco/aospa/dolby/xiaomi/geq/ui/ConfirmationDialogKt$ConfirmationDialog$6;->$text:Ljava/lang/String;

    iget-object v0, p0, Lco/aospa/dolby/xiaomi/geq/ui/ConfirmationDialogKt$ConfirmationDialog$6;->$onConfirm:Lkotlin/jvm/functions/Function0;

    iget-object v1, p0, Lco/aospa/dolby/xiaomi/geq/ui/ConfirmationDialogKt$ConfirmationDialog$6;->$onDismiss:Lkotlin/jvm/functions/Function0;

    iget p0, p0, Lco/aospa/dolby/xiaomi/geq/ui/ConfirmationDialogKt$ConfirmationDialog$6;->$$changed:I

    or-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result p0

    invoke-static {p2, v0, v1, p1, p0}, Lco/aospa/dolby/xiaomi/geq/ui/ConfirmationDialogKt;->ConfirmationDialog(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    return-void
.end method
