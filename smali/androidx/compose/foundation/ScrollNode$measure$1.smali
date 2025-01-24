.class final Landroidx/compose/foundation/ScrollNode$measure$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Scroll.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $placeable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $side:I

.field final synthetic this$0:Landroidx/compose/foundation/ScrollNode;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/ScrollNode;ILandroidx/compose/ui/layout/Placeable;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/foundation/ScrollNode$measure$1;->this$0:Landroidx/compose/foundation/ScrollNode;

    iput p2, p0, Landroidx/compose/foundation/ScrollNode$measure$1;->$side:I

    iput-object p3, p0, Landroidx/compose/foundation/ScrollNode$measure$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 367
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/ScrollNode$measure$1;->invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V
    .locals 4

    .line 368
    iget-object v0, p0, Landroidx/compose/foundation/ScrollNode$measure$1;->this$0:Landroidx/compose/foundation/ScrollNode;

    invoke-virtual {v0}, Landroidx/compose/foundation/ScrollNode;->getState()Landroidx/compose/foundation/ScrollState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/ScrollState;->getValue()I

    move-result v0

    iget v1, p0, Landroidx/compose/foundation/ScrollNode$measure$1;->$side:I

    const/4 v2, 0x0

    if-gez v0, :cond_0

    move v0, v2

    :cond_0
    if-le v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    .line 369
    :goto_0
    iget-object v0, p0, Landroidx/compose/foundation/ScrollNode$measure$1;->this$0:Landroidx/compose/foundation/ScrollNode;

    invoke-virtual {v0}, Landroidx/compose/foundation/ScrollNode;->getReverseScrolling()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Landroidx/compose/foundation/ScrollNode$measure$1;->$side:I

    sub-int/2addr v1, v0

    goto :goto_1

    :cond_2
    neg-int v1, v1

    .line 370
    :goto_1
    iget-object v0, p0, Landroidx/compose/foundation/ScrollNode$measure$1;->this$0:Landroidx/compose/foundation/ScrollNode;

    invoke-virtual {v0}, Landroidx/compose/foundation/ScrollNode;->isVertical()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v1

    .line 371
    :goto_2
    iget-object v3, p0, Landroidx/compose/foundation/ScrollNode$measure$1;->this$0:Landroidx/compose/foundation/ScrollNode;

    invoke-virtual {v3}, Landroidx/compose/foundation/ScrollNode;->isVertical()Z

    move-result v3

    if-eqz v3, :cond_4

    move v2, v1

    .line 376
    :cond_4
    new-instance v1, Landroidx/compose/foundation/ScrollNode$measure$1$1;

    iget-object p0, p0, Landroidx/compose/foundation/ScrollNode$measure$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    invoke-direct {v1, p0, v0, v2}, Landroidx/compose/foundation/ScrollNode$measure$1$1;-><init>(Landroidx/compose/ui/layout/Placeable;II)V

    invoke-virtual {p1, v1}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->withMotionFrameOfReferencePlacement(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
