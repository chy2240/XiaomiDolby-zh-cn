.class final Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer$recordLambda$1;
.super Lkotlin/jvm/internal/Lambda;
.source "GraphicsLayerOwnerLayer.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic this$0:Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;


# direct methods
.method constructor <init>(Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer$recordLambda$1;->this$0:Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 302
    check-cast p1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer$recordLambda$1;->invoke(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V
    .locals 1

    .line 303
    iget-object p0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer$recordLambda$1;->this$0:Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;

    .line 233
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v0

    .line 304
    invoke-static {p0}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->access$getDrawBlock$p(Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;)Lkotlin/jvm/functions/Function2;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object p1

    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getGraphicsLayer()Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
