.class final Landroidx/compose/foundation/FocusableNode$emitWithFallback$handler$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Focusable.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $interaction:Landroidx/compose/foundation/interaction/Interaction;

.field final synthetic $this_emitWithFallback:Landroidx/compose/foundation/interaction/MutableInteractionSource;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/Interaction;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/foundation/FocusableNode$emitWithFallback$handler$1;->$this_emitWithFallback:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-object p2, p0, Landroidx/compose/foundation/FocusableNode$emitWithFallback$handler$1;->$interaction:Landroidx/compose/foundation/interaction/Interaction;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 322
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/FocusableNode$emitWithFallback$handler$1;->invoke(Ljava/lang/Throwable;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 0

    .line 322
    iget-object p1, p0, Landroidx/compose/foundation/FocusableNode$emitWithFallback$handler$1;->$this_emitWithFallback:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget-object p0, p0, Landroidx/compose/foundation/FocusableNode$emitWithFallback$handler$1;->$interaction:Landroidx/compose/foundation/interaction/Interaction;

    invoke-interface {p1, p0}, Landroidx/compose/foundation/interaction/MutableInteractionSource;->tryEmit(Landroidx/compose/foundation/interaction/Interaction;)Z

    return-void
.end method
