.class final Landroidx/compose/ui/window/DialogWrapper$4;
.super Lkotlin/jvm/internal/Lambda;
.source "AndroidDialog.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic this$0:Landroidx/compose/ui/window/DialogWrapper;


# direct methods
.method constructor <init>(Landroidx/compose/ui/window/DialogWrapper;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/ui/window/DialogWrapper$4;->this$0:Landroidx/compose/ui/window/DialogWrapper;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 401
    check-cast p1, Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/window/DialogWrapper$4;->invoke(Landroidx/activity/OnBackPressedCallback;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/activity/OnBackPressedCallback;)V
    .locals 0

    .line 402
    iget-object p1, p0, Landroidx/compose/ui/window/DialogWrapper$4;->this$0:Landroidx/compose/ui/window/DialogWrapper;

    invoke-static {p1}, Landroidx/compose/ui/window/DialogWrapper;->access$getProperties$p(Landroidx/compose/ui/window/DialogWrapper;)Landroidx/compose/ui/window/DialogProperties;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/ui/window/DialogProperties;->getDismissOnBackPress()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 403
    iget-object p0, p0, Landroidx/compose/ui/window/DialogWrapper$4;->this$0:Landroidx/compose/ui/window/DialogWrapper;

    invoke-static {p0}, Landroidx/compose/ui/window/DialogWrapper;->access$getOnDismissRequest$p(Landroidx/compose/ui/window/DialogWrapper;)Lkotlin/jvm/functions/Function0;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method
