.class final Landroidx/compose/material3/InteractionSourceModifierElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "InteractionSourceModifierNode.kt"


# instance fields
.field private final interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/interaction/MutableInteractionSource;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    .line 96
    iput-object p1, p0, Landroidx/compose/material3/InteractionSourceModifierElement;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    return-void
.end method


# virtual methods
.method public create()Landroidx/compose/material3/InteractionSourceModifierNode;
    .locals 1

    .line 98
    new-instance v0, Landroidx/compose/material3/InteractionSourceModifierNode;

    iget-object p0, p0, Landroidx/compose/material3/InteractionSourceModifierElement;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    invoke-direct {v0, p0}, Landroidx/compose/material3/InteractionSourceModifierNode;-><init>(Landroidx/compose/foundation/interaction/MutableInteractionSource;)V

    return-object v0
.end method

.method public bridge synthetic create()Landroidx/compose/ui/Modifier$Node;
    .locals 0

    .line 95
    invoke-virtual {p0}, Landroidx/compose/material3/InteractionSourceModifierElement;->create()Landroidx/compose/material3/InteractionSourceModifierNode;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/material3/InteractionSourceModifierElement;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/material3/InteractionSourceModifierElement;

    iget-object p0, p0, Landroidx/compose/material3/InteractionSourceModifierElement;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget-object p1, p1, Landroidx/compose/material3/InteractionSourceModifierElement;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 0

    .line 0
    iget-object p0, p0, Landroidx/compose/material3/InteractionSourceModifierElement;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InteractionSourceModifierElement(interactionSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/compose/material3/InteractionSourceModifierElement;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public update(Landroidx/compose/material3/InteractionSourceModifierNode;)V
    .locals 0

    .line 101
    iget-object p0, p0, Landroidx/compose/material3/InteractionSourceModifierElement;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    invoke-virtual {p1, p0}, Landroidx/compose/material3/InteractionSourceModifierNode;->setInteractionSource(Landroidx/compose/foundation/interaction/MutableInteractionSource;)V

    return-void
.end method

.method public bridge synthetic update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    .line 95
    check-cast p1, Landroidx/compose/material3/InteractionSourceModifierNode;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/InteractionSourceModifierElement;->update(Landroidx/compose/material3/InteractionSourceModifierNode;)V

    return-void
.end method
