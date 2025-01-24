.class final Landroidx/compose/foundation/BackgroundNode$getOutline$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Background.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $this_getOutline:Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;

.field final synthetic this$0:Landroidx/compose/foundation/BackgroundNode;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/BackgroundNode;Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/foundation/BackgroundNode$getOutline$1;->this$0:Landroidx/compose/foundation/BackgroundNode;

    iput-object p2, p0, Landroidx/compose/foundation/BackgroundNode$getOutline$1;->$this_getOutline:Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 188
    invoke-virtual {p0}, Landroidx/compose/foundation/BackgroundNode$getOutline$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 5

    .line 188
    iget-object v0, p0, Landroidx/compose/foundation/BackgroundNode$getOutline$1;->this$0:Landroidx/compose/foundation/BackgroundNode;

    invoke-virtual {v0}, Landroidx/compose/foundation/BackgroundNode;->getShape()Landroidx/compose/ui/graphics/Shape;

    move-result-object v1

    iget-object v2, p0, Landroidx/compose/foundation/BackgroundNode$getOutline$1;->$this_getOutline:Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;

    invoke-interface {v2}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v2

    iget-object v4, p0, Landroidx/compose/foundation/BackgroundNode$getOutline$1;->$this_getOutline:Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;

    invoke-interface {v4}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v4

    iget-object p0, p0, Landroidx/compose/foundation/BackgroundNode$getOutline$1;->$this_getOutline:Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;

    invoke-interface {v1, v2, v3, v4, p0}, Landroidx/compose/ui/graphics/Shape;->createOutline-Pq9zytI(JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)Landroidx/compose/ui/graphics/Outline;

    move-result-object p0

    invoke-static {v0, p0}, Landroidx/compose/foundation/BackgroundNode;->access$setTmpOutline$p(Landroidx/compose/foundation/BackgroundNode;Landroidx/compose/ui/graphics/Outline;)V

    return-void
.end method
