.class public final Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;
.super Ljava/lang/Object;
.source "CanvasDrawScope.kt"

# interfaces
.implements Landroidx/compose/ui/graphics/drawscope/DrawContext;


# instance fields
.field private graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

.field final synthetic this$0:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

.field private final transform:Landroidx/compose/ui/graphics/drawscope/DrawTransform;


# direct methods
.method constructor <init>(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->this$0:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-static {p0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt;->access$asDrawTransform(Landroidx/compose/ui/graphics/drawscope/DrawContext;)Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->transform:Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    return-void
.end method


# virtual methods
.method public getCanvas()Landroidx/compose/ui/graphics/Canvas;
    .locals 0

    .line 68
    iget-object p0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->this$0:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->getDrawParams()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object p0

    return-object p0
.end method

.method public getDensity()Landroidx/compose/ui/unit/Density;
    .locals 0

    .line 88
    iget-object p0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->this$0:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->getDrawParams()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->getDensity()Landroidx/compose/ui/unit/Density;

    move-result-object p0

    return-object p0
.end method

.method public getGraphicsLayer()Landroidx/compose/ui/graphics/layer/GraphicsLayer;
    .locals 0

    .line 93
    iget-object p0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    return-object p0
.end method

.method public getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;
    .locals 0

    .line 82
    iget-object p0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->this$0:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->getDrawParams()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object p0

    return-object p0
.end method

.method public getSize-NH-jbRc()J
    .locals 2

    .line 74
    iget-object p0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->this$0:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->getDrawParams()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->getSize-NH-jbRc()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTransform()Landroidx/compose/ui/graphics/drawscope/DrawTransform;
    .locals 0

    .line 79
    iget-object p0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->transform:Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    return-object p0
.end method

.method public setCanvas(Landroidx/compose/ui/graphics/Canvas;)V
    .locals 0

    .line 70
    iget-object p0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->this$0:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->getDrawParams()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setCanvas(Landroidx/compose/ui/graphics/Canvas;)V

    return-void
.end method

.method public setDensity(Landroidx/compose/ui/unit/Density;)V
    .locals 0

    .line 90
    iget-object p0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->this$0:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->getDrawParams()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setDensity(Landroidx/compose/ui/unit/Density;)V

    return-void
.end method

.method public setGraphicsLayer(Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 0

    .line 93
    iput-object p1, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    return-void
.end method

.method public setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V
    .locals 0

    .line 84
    iget-object p0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->this$0:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->getDrawParams()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V

    return-void
.end method

.method public setSize-uvyYCjk(J)V
    .locals 0

    .line 76
    iget-object p0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->this$0:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->getDrawParams()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setSize-uvyYCjk(J)V

    return-void
.end method
