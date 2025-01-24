.class public abstract Landroidx/compose/ui/focus/FocusTargetModifierNodeKt;
.super Ljava/lang/Object;
.source "FocusTargetModifierNode.kt"


# direct methods
.method public static final FocusTargetModifierNode-PYyLHbc(ILkotlin/jvm/functions/Function2;)Landroidx/compose/ui/focus/FocusTargetModifierNode;
    .locals 2

    .line 78
    new-instance v0, Landroidx/compose/ui/focus/FocusTargetNode;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroidx/compose/ui/focus/FocusTargetNode;-><init>(ILkotlin/jvm/functions/Function2;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static synthetic FocusTargetModifierNode-PYyLHbc$default(ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Landroidx/compose/ui/focus/FocusTargetModifierNode;
    .locals 0

    and-int/lit8 p3, p2, 0x1

    if-eqz p3, :cond_0

    .line 75
    sget-object p0, Landroidx/compose/ui/focus/Focusability;->Companion:Landroidx/compose/ui/focus/Focusability$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/focus/Focusability$Companion;->getAlways-LCbbffg()I

    move-result p0

    :cond_0
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    .line 74
    :cond_1
    invoke-static {p0, p1}, Landroidx/compose/ui/focus/FocusTargetModifierNodeKt;->FocusTargetModifierNode-PYyLHbc(ILkotlin/jvm/functions/Function2;)Landroidx/compose/ui/focus/FocusTargetModifierNode;

    move-result-object p0

    return-object p0
.end method
