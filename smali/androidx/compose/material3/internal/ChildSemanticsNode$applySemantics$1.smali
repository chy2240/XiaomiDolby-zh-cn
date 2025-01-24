.class final Landroidx/compose/material3/internal/ChildSemanticsNode$applySemantics$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ChildParentSemantics.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $this_applySemantics:Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;


# direct methods
.method constructor <init>(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/material3/internal/ChildSemanticsNode$applySemantics$1;->$this_applySemantics:Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/ui/node/TraversableNode;)Ljava/lang/Boolean;
    .locals 1

    .line 73
    const-string v0, "null cannot be cast to non-null type androidx.compose.material3.internal.ParentSemanticsNode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/compose/material3/internal/ParentSemanticsNode;

    iget-object p0, p0, Landroidx/compose/material3/internal/ChildSemanticsNode$applySemantics$1;->$this_applySemantics:Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 74
    invoke-virtual {p1, p0}, Landroidx/compose/material3/internal/ParentSemanticsNode;->obtainSemantics(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V

    .line 75
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 72
    check-cast p1, Landroidx/compose/ui/node/TraversableNode;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/internal/ChildSemanticsNode$applySemantics$1;->invoke(Landroidx/compose/ui/node/TraversableNode;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
