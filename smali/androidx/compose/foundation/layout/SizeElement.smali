.class final Landroidx/compose/foundation/layout/SizeElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "Size.kt"


# instance fields
.field private final enforceIncoming:Z

.field private final inspectorInfo:Lkotlin/jvm/functions/Function1;

.field private final maxHeight:F

.field private final maxWidth:F

.field private final minHeight:F

.field private final minWidth:F


# direct methods
.method private constructor <init>(FFFFZLkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 730
    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    .line 724
    iput p1, p0, Landroidx/compose/foundation/layout/SizeElement;->minWidth:F

    .line 725
    iput p2, p0, Landroidx/compose/foundation/layout/SizeElement;->minHeight:F

    .line 726
    iput p3, p0, Landroidx/compose/foundation/layout/SizeElement;->maxWidth:F

    .line 727
    iput p4, p0, Landroidx/compose/foundation/layout/SizeElement;->maxHeight:F

    .line 728
    iput-boolean p5, p0, Landroidx/compose/foundation/layout/SizeElement;->enforceIncoming:Z

    .line 729
    iput-object p6, p0, Landroidx/compose/foundation/layout/SizeElement;->inspectorInfo:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public synthetic constructor <init>(FFFFZLkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p7, 0x1

    if-eqz v0, :cond_0

    .line 724
    sget-object v0, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    move-result v0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    and-int/lit8 v0, p7, 0x2

    if-eqz v0, :cond_1

    .line 725
    sget-object v0, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    move-result v0

    move v3, v0

    goto :goto_1

    :cond_1
    move v3, p2

    :goto_1
    and-int/lit8 v0, p7, 0x4

    if-eqz v0, :cond_2

    .line 726
    sget-object v0, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    move-result v0

    move v4, v0

    goto :goto_2

    :cond_2
    move v4, p3

    :goto_2
    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_3

    .line 727
    sget-object v0, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    move-result v0

    move v5, v0

    goto :goto_3

    :cond_3
    move v5, p4

    :goto_3
    const/4 v8, 0x0

    move-object v1, p0

    move v6, p5

    move-object v7, p6

    .line 723
    invoke-direct/range {v1 .. v8}, Landroidx/compose/foundation/layout/SizeElement;-><init>(FFFFZLkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(FFFFZLkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Landroidx/compose/foundation/layout/SizeElement;-><init>(FFFFZLkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public create()Landroidx/compose/foundation/layout/SizeNode;
    .locals 8

    .line 732
    new-instance v7, Landroidx/compose/foundation/layout/SizeNode;

    .line 733
    iget v1, p0, Landroidx/compose/foundation/layout/SizeElement;->minWidth:F

    .line 734
    iget v2, p0, Landroidx/compose/foundation/layout/SizeElement;->minHeight:F

    .line 735
    iget v3, p0, Landroidx/compose/foundation/layout/SizeElement;->maxWidth:F

    .line 736
    iget v4, p0, Landroidx/compose/foundation/layout/SizeElement;->maxHeight:F

    .line 737
    iget-boolean v5, p0, Landroidx/compose/foundation/layout/SizeElement;->enforceIncoming:Z

    const/4 v6, 0x0

    move-object v0, v7

    .line 732
    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/layout/SizeNode;-><init>(FFFFZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7
.end method

.method public bridge synthetic create()Landroidx/compose/ui/Modifier$Node;
    .locals 0

    .line 723
    invoke-virtual {p0}, Landroidx/compose/foundation/layout/SizeElement;->create()Landroidx/compose/foundation/layout/SizeNode;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 754
    :cond_0
    instance-of v1, p1, Landroidx/compose/foundation/layout/SizeElement;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 756
    :cond_1
    iget v1, p0, Landroidx/compose/foundation/layout/SizeElement;->minWidth:F

    check-cast p1, Landroidx/compose/foundation/layout/SizeElement;

    iget v3, p1, Landroidx/compose/foundation/layout/SizeElement;->minWidth:F

    invoke-static {v1, v3}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 757
    :cond_2
    iget v1, p0, Landroidx/compose/foundation/layout/SizeElement;->minHeight:F

    iget v3, p1, Landroidx/compose/foundation/layout/SizeElement;->minHeight:F

    invoke-static {v1, v3}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 758
    :cond_3
    iget v1, p0, Landroidx/compose/foundation/layout/SizeElement;->maxWidth:F

    iget v3, p1, Landroidx/compose/foundation/layout/SizeElement;->maxWidth:F

    invoke-static {v1, v3}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 759
    :cond_4
    iget v1, p0, Landroidx/compose/foundation/layout/SizeElement;->maxHeight:F

    iget v3, p1, Landroidx/compose/foundation/layout/SizeElement;->maxHeight:F

    invoke-static {v1, v3}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 760
    :cond_5
    iget-boolean p0, p0, Landroidx/compose/foundation/layout/SizeElement;->enforceIncoming:Z

    iget-boolean p1, p1, Landroidx/compose/foundation/layout/SizeElement;->enforceIncoming:Z

    if-eq p0, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 766
    iget v0, p0, Landroidx/compose/foundation/layout/SizeElement;->minWidth:F

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->hashCode-impl(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 767
    iget v1, p0, Landroidx/compose/foundation/layout/SizeElement;->minHeight:F

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->hashCode-impl(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 768
    iget v1, p0, Landroidx/compose/foundation/layout/SizeElement;->maxWidth:F

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->hashCode-impl(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 769
    iget v1, p0, Landroidx/compose/foundation/layout/SizeElement;->maxHeight:F

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->hashCode-impl(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 770
    iget-boolean p0, p0, Landroidx/compose/foundation/layout/SizeElement;->enforceIncoming:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public update(Landroidx/compose/foundation/layout/SizeNode;)V
    .locals 1

    .line 741
    iget v0, p0, Landroidx/compose/foundation/layout/SizeElement;->minWidth:F

    invoke-virtual {p1, v0}, Landroidx/compose/foundation/layout/SizeNode;->setMinWidth-0680j_4(F)V

    .line 742
    iget v0, p0, Landroidx/compose/foundation/layout/SizeElement;->minHeight:F

    invoke-virtual {p1, v0}, Landroidx/compose/foundation/layout/SizeNode;->setMinHeight-0680j_4(F)V

    .line 743
    iget v0, p0, Landroidx/compose/foundation/layout/SizeElement;->maxWidth:F

    invoke-virtual {p1, v0}, Landroidx/compose/foundation/layout/SizeNode;->setMaxWidth-0680j_4(F)V

    .line 744
    iget v0, p0, Landroidx/compose/foundation/layout/SizeElement;->maxHeight:F

    invoke-virtual {p1, v0}, Landroidx/compose/foundation/layout/SizeNode;->setMaxHeight-0680j_4(F)V

    .line 745
    iget-boolean p0, p0, Landroidx/compose/foundation/layout/SizeElement;->enforceIncoming:Z

    invoke-virtual {p1, p0}, Landroidx/compose/foundation/layout/SizeNode;->setEnforceIncoming(Z)V

    return-void
.end method

.method public bridge synthetic update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    .line 723
    check-cast p1, Landroidx/compose/foundation/layout/SizeNode;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/layout/SizeElement;->update(Landroidx/compose/foundation/layout/SizeNode;)V

    return-void
.end method
