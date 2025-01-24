.class final synthetic Landroidx/compose/foundation/FocusableNode$focusTargetNode$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "Focusable.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 7

    .line 0
    const-string v5, "onFocusStateChange(Landroidx/compose/ui/focus/FocusState;Landroidx/compose/ui/focus/FocusState;)V"

    const/4 v6, 0x0

    const/4 v1, 0x2

    const-class v3, Landroidx/compose/foundation/FocusableNode;

    const-string v4, "onFocusStateChange"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 174
    check-cast p1, Landroidx/compose/ui/focus/FocusState;

    check-cast p2, Landroidx/compose/ui/focus/FocusState;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/FocusableNode$focusTargetNode$1;->invoke(Landroidx/compose/ui/focus/FocusState;Landroidx/compose/ui/focus/FocusState;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/ui/focus/FocusState;Landroidx/compose/ui/focus/FocusState;)V
    .locals 0

    .line 174
    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/foundation/FocusableNode;

    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/FocusableNode;->access$onFocusStateChange(Landroidx/compose/foundation/FocusableNode;Landroidx/compose/ui/focus/FocusState;Landroidx/compose/ui/focus/FocusState;)V

    return-void
.end method
