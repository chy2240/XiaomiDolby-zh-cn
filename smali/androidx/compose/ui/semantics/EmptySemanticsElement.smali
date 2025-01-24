.class public final Landroidx/compose/ui/semantics/EmptySemanticsElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "SemanticsModifier.jvm.kt"


# instance fields
.field private final node:Landroidx/compose/ui/semantics/EmptySemanticsModifier;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/semantics/EmptySemanticsModifier;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    .line 22
    iput-object p1, p0, Landroidx/compose/ui/semantics/EmptySemanticsElement;->node:Landroidx/compose/ui/semantics/EmptySemanticsModifier;

    return-void
.end method


# virtual methods
.method public bridge synthetic create()Landroidx/compose/ui/Modifier$Node;
    .locals 0

    .line 22
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/EmptySemanticsElement;->create()Landroidx/compose/ui/semantics/EmptySemanticsModifier;

    move-result-object p0

    return-object p0
.end method

.method public create()Landroidx/compose/ui/semantics/EmptySemanticsModifier;
    .locals 0

    .line 24
    iget-object p0, p0, Landroidx/compose/ui/semantics/EmptySemanticsElement;->node:Landroidx/compose/ui/semantics/EmptySemanticsModifier;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 0
    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hashCode()I
    .locals 0

    .line 32
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    .line 22
    check-cast p1, Landroidx/compose/ui/semantics/EmptySemanticsModifier;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/semantics/EmptySemanticsElement;->update(Landroidx/compose/ui/semantics/EmptySemanticsModifier;)V

    return-void
.end method

.method public update(Landroidx/compose/ui/semantics/EmptySemanticsModifier;)V
    .locals 0

    .line 0
    return-void
.end method
