.class final Landroidx/compose/ui/layout/OnSizeChangedModifier;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "OnRemeasuredModifier.kt"


# instance fields
.field private final onSizeChanged:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    .line 49
    iput-object p1, p0, Landroidx/compose/ui/layout/OnSizeChangedModifier;->onSizeChanged:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public bridge synthetic create()Landroidx/compose/ui/Modifier$Node;
    .locals 0

    .line 49
    invoke-virtual {p0}, Landroidx/compose/ui/layout/OnSizeChangedModifier;->create()Landroidx/compose/ui/layout/OnSizeChangedNode;

    move-result-object p0

    return-object p0
.end method

.method public create()Landroidx/compose/ui/layout/OnSizeChangedNode;
    .locals 1

    .line 51
    new-instance v0, Landroidx/compose/ui/layout/OnSizeChangedNode;

    iget-object p0, p0, Landroidx/compose/ui/layout/OnSizeChangedModifier;->onSizeChanged:Lkotlin/jvm/functions/Function1;

    invoke-direct {v0, p0}, Landroidx/compose/ui/layout/OnSizeChangedNode;-><init>(Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 59
    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/layout/OnSizeChangedModifier;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 61
    :cond_1
    iget-object p0, p0, Landroidx/compose/ui/layout/OnSizeChangedModifier;->onSizeChanged:Lkotlin/jvm/functions/Function1;

    check-cast p1, Landroidx/compose/ui/layout/OnSizeChangedModifier;

    iget-object p1, p1, Landroidx/compose/ui/layout/OnSizeChangedModifier;->onSizeChanged:Lkotlin/jvm/functions/Function1;

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 0

    .line 65
    iget-object p0, p0, Landroidx/compose/ui/layout/OnSizeChangedModifier;->onSizeChanged:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public bridge synthetic update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    .line 49
    check-cast p1, Landroidx/compose/ui/layout/OnSizeChangedNode;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/layout/OnSizeChangedModifier;->update(Landroidx/compose/ui/layout/OnSizeChangedNode;)V

    return-void
.end method

.method public update(Landroidx/compose/ui/layout/OnSizeChangedNode;)V
    .locals 0

    .line 54
    iget-object p0, p0, Landroidx/compose/ui/layout/OnSizeChangedModifier;->onSizeChanged:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1, p0}, Landroidx/compose/ui/layout/OnSizeChangedNode;->update(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
