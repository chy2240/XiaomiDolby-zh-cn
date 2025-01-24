.class final Landroidx/compose/foundation/gestures/DraggableNode$drag$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Draggable.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $$this$drag:Landroidx/compose/foundation/gestures/DragScope;

.field final synthetic this$0:Landroidx/compose/foundation/gestures/DraggableNode;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/gestures/DragScope;Landroidx/compose/foundation/gestures/DraggableNode;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/foundation/gestures/DraggableNode$drag$2$1;->$$this$drag:Landroidx/compose/foundation/gestures/DragScope;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/DraggableNode$drag$2$1;->this$0:Landroidx/compose/foundation/gestures/DraggableNode;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 301
    check-cast p1, Landroidx/compose/foundation/gestures/DragEvent$DragDelta;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/gestures/DraggableNode$drag$2$1;->invoke(Landroidx/compose/foundation/gestures/DragEvent$DragDelta;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/foundation/gestures/DragEvent$DragDelta;)V
    .locals 4

    .line 302
    iget-object v0, p0, Landroidx/compose/foundation/gestures/DraggableNode$drag$2$1;->$$this$drag:Landroidx/compose/foundation/gestures/DragScope;

    iget-object v1, p0, Landroidx/compose/foundation/gestures/DraggableNode$drag$2$1;->this$0:Landroidx/compose/foundation/gestures/DraggableNode;

    invoke-virtual {p1}, Landroidx/compose/foundation/gestures/DragEvent$DragDelta;->getDelta-F1C5BW0()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroidx/compose/foundation/gestures/DraggableNode;->access$reverseIfNeeded-MK-Hz9U(Landroidx/compose/foundation/gestures/DraggableNode;J)J

    move-result-wide v1

    iget-object p0, p0, Landroidx/compose/foundation/gestures/DraggableNode$drag$2$1;->this$0:Landroidx/compose/foundation/gestures/DraggableNode;

    invoke-static {p0}, Landroidx/compose/foundation/gestures/DraggableNode;->access$getOrientation$p(Landroidx/compose/foundation/gestures/DraggableNode;)Landroidx/compose/foundation/gestures/Orientation;

    move-result-object p0

    invoke-static {v1, v2, p0}, Landroidx/compose/foundation/gestures/DraggableKt;->access$toFloat-3MmeM6k(JLandroidx/compose/foundation/gestures/Orientation;)F

    move-result p0

    invoke-interface {v0, p0}, Landroidx/compose/foundation/gestures/DragScope;->dragBy(F)V

    return-void
.end method
