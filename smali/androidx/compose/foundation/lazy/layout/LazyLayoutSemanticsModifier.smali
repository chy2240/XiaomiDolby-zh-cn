.class final Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifier;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "LazyLayoutSemantics.kt"


# instance fields
.field private final itemProviderLambda:Lkotlin/jvm/functions/Function0;

.field private final orientation:Landroidx/compose/foundation/gestures/Orientation;

.field private final reverseScrolling:Z

.field private final state:Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;

.field private final userScrollEnabled:Z


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;Landroidx/compose/foundation/gestures/Orientation;ZZ)V
    .locals 0

    .line 65
    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    .line 60
    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifier;->itemProviderLambda:Lkotlin/jvm/functions/Function0;

    .line 61
    iput-object p2, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifier;->state:Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;

    .line 62
    iput-object p3, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifier;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 63
    iput-boolean p4, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifier;->userScrollEnabled:Z

    .line 64
    iput-boolean p5, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifier;->reverseScrolling:Z

    return-void
.end method


# virtual methods
.method public create()Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode;
    .locals 7

    .line 67
    new-instance v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode;

    .line 68
    iget-object v1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifier;->itemProviderLambda:Lkotlin/jvm/functions/Function0;

    .line 69
    iget-object v2, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifier;->state:Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;

    .line 70
    iget-object v3, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifier;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 71
    iget-boolean v4, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifier;->userScrollEnabled:Z

    .line 72
    iget-boolean v5, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifier;->reverseScrolling:Z

    move-object v0, v6

    .line 67
    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;Landroidx/compose/foundation/gestures/Orientation;ZZ)V

    return-object v6
.end method

.method public bridge synthetic create()Landroidx/compose/ui/Modifier$Node;
    .locals 0

    .line 58
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifier;->create()Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 91
    :cond_0
    instance-of v1, p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifier;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 93
    :cond_1
    iget-object v1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifier;->itemProviderLambda:Lkotlin/jvm/functions/Function0;

    check-cast p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifier;

    iget-object v3, p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifier;->itemProviderLambda:Lkotlin/jvm/functions/Function0;

    if-eq v1, v3, :cond_2

    return v2

    .line 94
    :cond_2
    iget-object v1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifier;->state:Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;

    iget-object v3, p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifier;->state:Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 95
    :cond_3
    iget-object v1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifier;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    iget-object v3, p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifier;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    if-eq v1, v3, :cond_4

    return v2

    .line 96
    :cond_4
    iget-boolean v1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifier;->userScrollEnabled:Z

    iget-boolean v3, p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifier;->userScrollEnabled:Z

    if-eq v1, v3, :cond_5

    return v2

    .line 97
    :cond_5
    iget-boolean p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifier;->reverseScrolling:Z

    iget-boolean p1, p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifier;->reverseScrolling:Z

    if-eq p0, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 103
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifier;->itemProviderLambda:Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 104
    iget-object v1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifier;->state:Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 105
    iget-object v1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifier;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 106
    iget-boolean v1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifier;->userScrollEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 107
    iget-boolean p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifier;->reverseScrolling:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public update(Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode;)V
    .locals 6

    .line 77
    iget-object v1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifier;->itemProviderLambda:Lkotlin/jvm/functions/Function0;

    .line 78
    iget-object v2, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifier;->state:Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;

    .line 79
    iget-object v3, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifier;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 80
    iget-boolean v4, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifier;->userScrollEnabled:Z

    .line 81
    iget-boolean v5, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifier;->reverseScrolling:Z

    move-object v0, p1

    .line 76
    invoke-virtual/range {v0 .. v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode;->update(Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;Landroidx/compose/foundation/gestures/Orientation;ZZ)V

    return-void
.end method

.method public bridge synthetic update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    .line 58
    check-cast p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifier;->update(Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode;)V

    return-void
.end method
