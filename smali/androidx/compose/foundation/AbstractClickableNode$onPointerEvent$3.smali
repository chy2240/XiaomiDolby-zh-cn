.class final Landroidx/compose/foundation/AbstractClickableNode$onPointerEvent$3;
.super Ljava/lang/Object;
.source "Clickable.kt"

# interfaces
.implements Landroidx/compose/ui/input/pointer/PointerInputEventHandler;


# instance fields
.field final synthetic this$0:Landroidx/compose/foundation/AbstractClickableNode;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/AbstractClickableNode;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/foundation/AbstractClickableNode$onPointerEvent$3;->this$0:Landroidx/compose/foundation/AbstractClickableNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1223
    iget-object p0, p0, Landroidx/compose/foundation/AbstractClickableNode$onPointerEvent$3;->this$0:Landroidx/compose/foundation/AbstractClickableNode;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/AbstractClickableNode;->clickPointerInput(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
