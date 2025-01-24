.class final Landroidx/compose/material3/InteractionSourceModifierNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "InteractionSourceModifierNode.kt"

# interfaces
.implements Landroidx/compose/ui/node/TraversableNode;


# instance fields
.field private interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field private final traverseKey:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/interaction/MutableInteractionSource;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    .line 39
    iput-object p1, p0, Landroidx/compose/material3/InteractionSourceModifierNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 41
    sget-object p1, Landroidx/compose/material3/InteractionSourceModifierNodeTraverseKey;->INSTANCE:Landroidx/compose/material3/InteractionSourceModifierNodeTraverseKey;

    iput-object p1, p0, Landroidx/compose/material3/InteractionSourceModifierNode;->traverseKey:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getTraverseKey()Ljava/lang/Object;
    .locals 0

    .line 41
    iget-object p0, p0, Landroidx/compose/material3/InteractionSourceModifierNode;->traverseKey:Ljava/lang/Object;

    return-object p0
.end method

.method public final setInteractionSource(Landroidx/compose/foundation/interaction/MutableInteractionSource;)V
    .locals 0

    .line 39
    iput-object p1, p0, Landroidx/compose/material3/InteractionSourceModifierNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    return-void
.end method
