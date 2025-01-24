.class final Landroidx/compose/foundation/IndicationModifierNode;
.super Landroidx/compose/ui/node/DelegatingNode;
.source "Indication.kt"


# instance fields
.field private indicationNode:Landroidx/compose/ui/node/DelegatableNode;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/node/DelegatableNode;)V
    .locals 0

    .line 315
    invoke-direct {p0}, Landroidx/compose/ui/node/DelegatingNode;-><init>()V

    .line 314
    iput-object p1, p0, Landroidx/compose/foundation/IndicationModifierNode;->indicationNode:Landroidx/compose/ui/node/DelegatableNode;

    .line 317
    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/DelegatingNode;->delegate(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    return-void
.end method


# virtual methods
.method public final update(Landroidx/compose/ui/node/DelegatableNode;)V
    .locals 1

    .line 321
    iget-object v0, p0, Landroidx/compose/foundation/IndicationModifierNode;->indicationNode:Landroidx/compose/ui/node/DelegatableNode;

    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/DelegatingNode;->undelegate(Landroidx/compose/ui/node/DelegatableNode;)V

    .line 322
    iput-object p1, p0, Landroidx/compose/foundation/IndicationModifierNode;->indicationNode:Landroidx/compose/ui/node/DelegatableNode;

    .line 323
    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/DelegatingNode;->delegate(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    return-void
.end method
