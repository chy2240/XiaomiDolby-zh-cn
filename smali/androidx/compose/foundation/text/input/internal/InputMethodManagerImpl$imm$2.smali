.class final Landroidx/compose/foundation/text/input/internal/InputMethodManagerImpl$imm$2;
.super Lkotlin/jvm/internal/Lambda;
.source "InputMethodManager.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Landroidx/compose/foundation/text/input/internal/InputMethodManagerImpl;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/text/input/internal/InputMethodManagerImpl;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/InputMethodManagerImpl$imm$2;->this$0:Landroidx/compose/foundation/text/input/internal/InputMethodManagerImpl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    .line 59
    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/InputMethodManagerImpl$imm$2;->this$0:Landroidx/compose/foundation/text/input/internal/InputMethodManagerImpl;

    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/InputMethodManagerImpl;->access$getView$p(Landroidx/compose/foundation/text/input/internal/InputMethodManagerImpl;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 58
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/InputMethodManagerImpl$imm$2;->invoke()Landroid/view/inputmethod/InputMethodManager;

    move-result-object p0

    return-object p0
.end method
