.class public final Landroidx/compose/material3/internal/ChildSemanticsNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "ChildParentSemantics.kt"

# interfaces
.implements Landroidx/compose/ui/node/SemanticsModifierNode;


# instance fields
.field private properties:Lkotlin/jvm/functions/Function1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    .line 68
    iput-object p1, p0, Landroidx/compose/material3/internal/ChildSemanticsNode;->properties:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public applySemantics(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V
    .locals 2

    .line 72
    sget-object v0, Landroidx/compose/material3/internal/ParentSemanticsNodeKey;->INSTANCE:Landroidx/compose/material3/internal/ParentSemanticsNodeKey;

    new-instance v1, Landroidx/compose/material3/internal/ChildSemanticsNode$applySemantics$1;

    invoke-direct {v1, p1}, Landroidx/compose/material3/internal/ChildSemanticsNode$applySemantics$1;-><init>(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V

    invoke-static {p0, v0, v1}, Landroidx/compose/ui/node/TraversableNodeKt;->traverseAncestors(Landroidx/compose/ui/node/DelegatableNode;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    .line 78
    iget-object p0, p0, Landroidx/compose/material3/internal/ChildSemanticsNode;->properties:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onDetach()V
    .locals 2

    .line 82
    invoke-super {p0}, Landroidx/compose/ui/Modifier$Node;->onDetach()V

    .line 83
    sget-object v0, Landroidx/compose/material3/internal/ParentSemanticsNodeKey;->INSTANCE:Landroidx/compose/material3/internal/ParentSemanticsNodeKey;

    sget-object v1, Landroidx/compose/material3/internal/ChildSemanticsNode$onDetach$1;->INSTANCE:Landroidx/compose/material3/internal/ChildSemanticsNode$onDetach$1;

    invoke-static {p0, v0, v1}, Landroidx/compose/ui/node/TraversableNodeKt;->traverseAncestors(Landroidx/compose/ui/node/DelegatableNode;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final setProperties(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 68
    iput-object p1, p0, Landroidx/compose/material3/internal/ChildSemanticsNode;->properties:Lkotlin/jvm/functions/Function1;

    return-void
.end method
