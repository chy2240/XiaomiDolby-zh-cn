.class final Landroidx/compose/ui/focus/FocusChangedNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "FocusChangedModifier.kt"

# interfaces
.implements Landroidx/compose/ui/focus/FocusEventModifierNode;


# instance fields
.field private focusState:Landroidx/compose/ui/focus/FocusState;

.field private onFocusChanged:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    .line 50
    iput-object p1, p0, Landroidx/compose/ui/focus/FocusChangedNode;->onFocusChanged:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public onFocusEvent(Landroidx/compose/ui/focus/FocusState;)V
    .locals 1

    .line 55
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusChangedNode;->focusState:Landroidx/compose/ui/focus/FocusState;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    iput-object p1, p0, Landroidx/compose/ui/focus/FocusChangedNode;->focusState:Landroidx/compose/ui/focus/FocusState;

    .line 57
    iget-object p0, p0, Landroidx/compose/ui/focus/FocusChangedNode;->onFocusChanged:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final setOnFocusChanged(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 50
    iput-object p1, p0, Landroidx/compose/ui/focus/FocusChangedNode;->onFocusChanged:Lkotlin/jvm/functions/Function1;

    return-void
.end method
