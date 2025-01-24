.class public abstract Landroidx/compose/material3/InteractionSourceModifierNodeKt;
.super Ljava/lang/Object;
.source "InteractionSourceModifierNode.kt"


# direct methods
.method public static final interactionSourceData(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;)Landroidx/compose/ui/Modifier;
    .locals 1

    .line 81
    new-instance v0, Landroidx/compose/material3/InteractionSourceModifierElement;

    if-nez p1, :cond_0

    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object p1

    :cond_0
    invoke-direct {v0, p1}, Landroidx/compose/material3/InteractionSourceModifierElement;-><init>(Landroidx/compose/foundation/interaction/MutableInteractionSource;)V

    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method
