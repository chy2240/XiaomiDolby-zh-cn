.class final Landroidx/compose/foundation/ClickableNode$clickPointerInput$3;
.super Lkotlin/jvm/internal/Lambda;
.source "Clickable.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic this$0:Landroidx/compose/foundation/ClickableNode;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/ClickableNode;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/foundation/ClickableNode$clickPointerInput$3;->this$0:Landroidx/compose/foundation/ClickableNode;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 671
    check-cast p1, Landroidx/compose/ui/geometry/Offset;

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/foundation/ClickableNode$clickPointerInput$3;->invoke-k-4lQ0M(J)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke-k-4lQ0M(J)V
    .locals 0

    .line 677
    iget-object p1, p0, Landroidx/compose/foundation/ClickableNode$clickPointerInput$3;->this$0:Landroidx/compose/foundation/ClickableNode;

    invoke-virtual {p1}, Landroidx/compose/foundation/AbstractClickableNode;->getEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/compose/foundation/ClickableNode$clickPointerInput$3;->this$0:Landroidx/compose/foundation/ClickableNode;

    invoke-virtual {p0}, Landroidx/compose/foundation/AbstractClickableNode;->getOnClick()Lkotlin/jvm/functions/Function0;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method
