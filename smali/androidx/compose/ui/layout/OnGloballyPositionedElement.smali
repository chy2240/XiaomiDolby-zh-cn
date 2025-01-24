.class final Landroidx/compose/ui/layout/OnGloballyPositionedElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "OnGloballyPositionedModifier.kt"


# instance fields
.field private final onGloballyPositioned:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    .line 46
    iput-object p1, p0, Landroidx/compose/ui/layout/OnGloballyPositionedElement;->onGloballyPositioned:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public bridge synthetic create()Landroidx/compose/ui/Modifier$Node;
    .locals 0

    .line 46
    invoke-virtual {p0}, Landroidx/compose/ui/layout/OnGloballyPositionedElement;->create()Landroidx/compose/ui/layout/OnGloballyPositionedNode;

    move-result-object p0

    return-object p0
.end method

.method public create()Landroidx/compose/ui/layout/OnGloballyPositionedNode;
    .locals 1

    .line 49
    new-instance v0, Landroidx/compose/ui/layout/OnGloballyPositionedNode;

    iget-object p0, p0, Landroidx/compose/ui/layout/OnGloballyPositionedElement;->onGloballyPositioned:Lkotlin/jvm/functions/Function1;

    invoke-direct {v0, p0}, Landroidx/compose/ui/layout/OnGloballyPositionedNode;-><init>(Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 54
    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/layout/OnGloballyPositionedElement;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 55
    :cond_1
    iget-object p0, p0, Landroidx/compose/ui/layout/OnGloballyPositionedElement;->onGloballyPositioned:Lkotlin/jvm/functions/Function1;

    check-cast p1, Landroidx/compose/ui/layout/OnGloballyPositionedElement;

    iget-object p1, p1, Landroidx/compose/ui/layout/OnGloballyPositionedElement;->onGloballyPositioned:Lkotlin/jvm/functions/Function1;

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 0

    .line 59
    iget-object p0, p0, Landroidx/compose/ui/layout/OnGloballyPositionedElement;->onGloballyPositioned:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public bridge synthetic update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    .line 46
    check-cast p1, Landroidx/compose/ui/layout/OnGloballyPositionedNode;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/layout/OnGloballyPositionedElement;->update(Landroidx/compose/ui/layout/OnGloballyPositionedNode;)V

    return-void
.end method

.method public update(Landroidx/compose/ui/layout/OnGloballyPositionedNode;)V
    .locals 0

    .line 63
    iget-object p0, p0, Landroidx/compose/ui/layout/OnGloballyPositionedElement;->onGloballyPositioned:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1, p0}, Landroidx/compose/ui/layout/OnGloballyPositionedNode;->setCallback(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
