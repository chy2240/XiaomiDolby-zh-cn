.class public abstract Landroidx/compose/material3/internal/ChildParentSemanticsKt;
.super Ljava/lang/Object;
.source "ChildParentSemantics.kt"


# direct methods
.method public static final childSemantics(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;
    .locals 1

    .line 29
    new-instance v0, Landroidx/compose/material3/internal/ChildSemanticsNodeElement;

    invoke-direct {v0, p1}, Landroidx/compose/material3/internal/ChildSemanticsNodeElement;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic childSemantics$default(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 28
    sget-object p1, Landroidx/compose/material3/internal/ChildParentSemanticsKt$childSemantics$1;->INSTANCE:Landroidx/compose/material3/internal/ChildParentSemanticsKt$childSemantics$1;

    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/material3/internal/ChildParentSemanticsKt;->childSemantics(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final parentSemantics(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;
    .locals 1

    .line 32
    new-instance v0, Landroidx/compose/material3/internal/ParentSemanticsNodeElement;

    invoke-direct {v0, p1}, Landroidx/compose/material3/internal/ParentSemanticsNodeElement;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method
