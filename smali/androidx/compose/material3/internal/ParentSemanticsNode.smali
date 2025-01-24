.class public final Landroidx/compose/material3/internal/ParentSemanticsNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "ChildParentSemantics.kt"

# interfaces
.implements Landroidx/compose/ui/node/TraversableNode;
.implements Landroidx/compose/ui/node/SemanticsModifierNode;


# instance fields
.field private properties:Lkotlin/jvm/functions/Function1;

.field private semanticsConsumed:Z

.field private final traverseKey:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    .line 91
    iput-object p1, p0, Landroidx/compose/material3/internal/ParentSemanticsNode;->properties:Lkotlin/jvm/functions/Function1;

    .line 99
    sget-object p1, Landroidx/compose/material3/internal/ParentSemanticsNodeKey;->INSTANCE:Landroidx/compose/material3/internal/ParentSemanticsNodeKey;

    iput-object p1, p0, Landroidx/compose/material3/internal/ParentSemanticsNode;->traverseKey:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public applySemantics(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V
    .locals 1

    .line 102
    iget-boolean v0, p0, Landroidx/compose/material3/internal/ParentSemanticsNode;->semanticsConsumed:Z

    if-nez v0, :cond_0

    .line 103
    iget-object p0, p0, Landroidx/compose/material3/internal/ParentSemanticsNode;->properties:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public getShouldMergeDescendantSemantics()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public getTraverseKey()Ljava/lang/Object;
    .locals 0

    .line 99
    iget-object p0, p0, Landroidx/compose/material3/internal/ParentSemanticsNode;->traverseKey:Ljava/lang/Object;

    return-object p0
.end method

.method public final obtainSemantics(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V
    .locals 1

    const/4 v0, 0x1

    .line 108
    iput-boolean v0, p0, Landroidx/compose/material3/internal/ParentSemanticsNode;->semanticsConsumed:Z

    .line 109
    iget-object v0, p0, Landroidx/compose/material3/internal/ParentSemanticsNode;->properties:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    invoke-static {p0}, Landroidx/compose/ui/node/SemanticsModifierNodeKt;->invalidateSemantics(Landroidx/compose/ui/node/SemanticsModifierNode;)V

    return-void
.end method

.method public final releaseSemantics()V
    .locals 1

    const/4 v0, 0x0

    .line 114
    iput-boolean v0, p0, Landroidx/compose/material3/internal/ParentSemanticsNode;->semanticsConsumed:Z

    .line 115
    invoke-static {p0}, Landroidx/compose/ui/node/SemanticsModifierNodeKt;->invalidateSemantics(Landroidx/compose/ui/node/SemanticsModifierNode;)V

    return-void
.end method

.method public final setProperties(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 91
    iput-object p1, p0, Landroidx/compose/material3/internal/ParentSemanticsNode;->properties:Lkotlin/jvm/functions/Function1;

    return-void
.end method
