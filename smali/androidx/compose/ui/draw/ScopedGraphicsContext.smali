.class final Landroidx/compose/ui/draw/ScopedGraphicsContext;
.super Ljava/lang/Object;
.source "DrawModifier.kt"

# interfaces
.implements Landroidx/compose/ui/graphics/GraphicsContext;


# instance fields
.field private allocatedGraphicsLayers:Landroidx/collection/MutableObjectList;

.field private graphicsContext:Landroidx/compose/ui/graphics/GraphicsContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createGraphicsLayer()Landroidx/compose/ui/graphics/layer/GraphicsLayer;
    .locals 2

    .line 181
    iget-object v0, p0, Landroidx/compose/ui/draw/ScopedGraphicsContext;->graphicsContext:Landroidx/compose/ui/graphics/GraphicsContext;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 182
    const-string v1, "GraphicsContext not provided"

    .line 44
    invoke-static {v1}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 183
    :cond_1
    invoke-interface {v0}, Landroidx/compose/ui/graphics/GraphicsContext;->createGraphicsLayer()Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    move-result-object v0

    .line 184
    iget-object v1, p0, Landroidx/compose/ui/draw/ScopedGraphicsContext;->allocatedGraphicsLayers:Landroidx/collection/MutableObjectList;

    if-nez v1, :cond_2

    .line 186
    invoke-static {v0}, Landroidx/collection/ObjectListKt;->mutableObjectListOf(Ljava/lang/Object;)Landroidx/collection/MutableObjectList;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/ui/draw/ScopedGraphicsContext;->allocatedGraphicsLayers:Landroidx/collection/MutableObjectList;

    goto :goto_1

    .line 188
    :cond_2
    invoke-virtual {v1, v0}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)Z

    :goto_1
    return-object v0
.end method

.method public final getGraphicsContext()Landroidx/compose/ui/graphics/GraphicsContext;
    .locals 0

    .line 174
    iget-object p0, p0, Landroidx/compose/ui/draw/ScopedGraphicsContext;->graphicsContext:Landroidx/compose/ui/graphics/GraphicsContext;

    return-object p0
.end method

.method public releaseGraphicsLayer(Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 0

    .line 195
    iget-object p0, p0, Landroidx/compose/ui/draw/ScopedGraphicsContext;->graphicsContext:Landroidx/compose/ui/graphics/GraphicsContext;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroidx/compose/ui/graphics/GraphicsContext;->releaseGraphicsLayer(Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    :cond_0
    return-void
.end method

.method public final releaseGraphicsLayers()V
    .locals 5

    .line 199
    iget-object v0, p0, Landroidx/compose/ui/draw/ScopedGraphicsContext;->allocatedGraphicsLayers:Landroidx/collection/MutableObjectList;

    if-eqz v0, :cond_1

    .line 287
    iget-object v1, v0, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    .line 288
    iget v2, v0, Landroidx/collection/ObjectList;->_size:I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 289
    aget-object v4, v1, v3

    check-cast v4, Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 200
    invoke-virtual {p0, v4}, Landroidx/compose/ui/draw/ScopedGraphicsContext;->releaseGraphicsLayer(Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 201
    :cond_0
    invoke-virtual {v0}, Landroidx/collection/MutableObjectList;->clear()V

    :cond_1
    return-void
.end method

.method public final setGraphicsContext(Landroidx/compose/ui/graphics/GraphicsContext;)V
    .locals 0

    .line 176
    invoke-virtual {p0}, Landroidx/compose/ui/draw/ScopedGraphicsContext;->releaseGraphicsLayers()V

    .line 177
    iput-object p1, p0, Landroidx/compose/ui/draw/ScopedGraphicsContext;->graphicsContext:Landroidx/compose/ui/graphics/GraphicsContext;

    return-void
.end method
