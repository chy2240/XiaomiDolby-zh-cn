.class final Lco/aospa/dolby/xiaomi/geq/ui/PresetNameDialogKt$PresetNameDialog$6$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PresetNameDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $text$delegate:Landroidx/compose/runtime/MutableState;


# direct methods
.method constructor <init>(Landroidx/compose/runtime/MutableState;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lco/aospa/dolby/xiaomi/geq/ui/PresetNameDialogKt$PresetNameDialog$6$1$1$1;->$text$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 75
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lco/aospa/dolby/xiaomi/geq/ui/PresetNameDialogKt$PresetNameDialog$6$1$1$1;->invoke(Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Ljava/lang/String;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iget-object p0, p0, Lco/aospa/dolby/xiaomi/geq/ui/PresetNameDialogKt$PresetNameDialog$6$1$1$1;->$text$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {p0, p1}, Lco/aospa/dolby/xiaomi/geq/ui/PresetNameDialogKt;->access$PresetNameDialog$lambda$5(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V

    return-void
.end method
