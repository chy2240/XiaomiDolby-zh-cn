.class final Landroidx/compose/ui/focus/FocusTransactionsKt$requestFocus$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "FocusTransactions.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $this_requestFocus:Landroidx/compose/ui/focus/FocusTargetNode;


# direct methods
.method constructor <init>(Landroidx/compose/ui/focus/FocusTargetNode;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/ui/focus/FocusTransactionsKt$requestFocus$1$1;->$this_requestFocus:Landroidx/compose/ui/focus/FocusTargetNode;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 37
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTransactionsKt$requestFocus$1$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 1

    .line 38
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusTransactionsKt$requestFocus$1$1;->$this_requestFocus:Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/compose/ui/focus/FocusTransactionsKt$requestFocus$1$1;->$this_requestFocus:Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->dispatchFocusCallbacks$ui_release()V

    :cond_0
    return-void
.end method
