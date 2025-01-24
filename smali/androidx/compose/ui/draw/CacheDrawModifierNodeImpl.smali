.class final Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;
.super Landroidx/compose/ui/Modifier$Node;
.source "DrawModifier.kt"

# interfaces
.implements Landroidx/compose/ui/draw/CacheDrawModifierNode;
.implements Landroidx/compose/ui/node/ObserverModifierNode;
.implements Landroidx/compose/ui/draw/BuildDrawCacheParams;


# instance fields
.field private block:Lkotlin/jvm/functions/Function1;

.field private final cacheDrawScope:Landroidx/compose/ui/draw/CacheDrawScope;

.field private cachedGraphicsContext:Landroidx/compose/ui/draw/ScopedGraphicsContext;

.field private isCacheValid:Z


# direct methods
.method public constructor <init>(Landroidx/compose/ui/draw/CacheDrawScope;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 209
    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    .line 207
    iput-object p1, p0, Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;->cacheDrawScope:Landroidx/compose/ui/draw/CacheDrawScope;

    .line 214
    iput-object p2, p0, Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;->block:Lkotlin/jvm/functions/Function1;

    .line 221
    invoke-virtual {p1, p0}, Landroidx/compose/ui/draw/CacheDrawScope;->setCacheParams$ui_release(Landroidx/compose/ui/draw/BuildDrawCacheParams;)V

    .line 222
    new-instance p2, Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl$1;

    invoke-direct {p2, p0}, Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl$1;-><init>(Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;)V

    invoke-virtual {p1, p2}, Landroidx/compose/ui/draw/CacheDrawScope;->setGraphicsContextProvider$ui_release(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final getOrBuildCachedDrawBlock(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)Landroidx/compose/ui/draw/DrawResult;
    .locals 2

    .line 270
    iget-boolean v0, p0, Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;->isCacheValid:Z

    if-nez v0, :cond_1

    .line 271
    iget-object v0, p0, Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;->cacheDrawScope:Landroidx/compose/ui/draw/CacheDrawScope;

    const/4 v1, 0x0

    .line 272
    invoke-virtual {v0, v1}, Landroidx/compose/ui/draw/CacheDrawScope;->setDrawResult$ui_release(Landroidx/compose/ui/draw/DrawResult;)V

    .line 273
    invoke-virtual {v0, p1}, Landroidx/compose/ui/draw/CacheDrawScope;->setContentDrawScope$ui_release(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V

    .line 274
    new-instance p1, Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl$getOrBuildCachedDrawBlock$1$1;

    invoke-direct {p1, p0, v0}, Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl$getOrBuildCachedDrawBlock$1$1;-><init>(Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;Landroidx/compose/ui/draw/CacheDrawScope;)V

    invoke-static {p0, p1}, Landroidx/compose/ui/node/ObserverModifierNodeKt;->observeReads(Landroidx/compose/ui/Modifier$Node;Lkotlin/jvm/functions/Function0;)V

    .line 275
    invoke-virtual {v0}, Landroidx/compose/ui/draw/CacheDrawScope;->getDrawResult$ui_release()Landroidx/compose/ui/draw/DrawResult;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 279
    iput-boolean p1, p0, Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;->isCacheValid:Z

    goto :goto_0

    .line 276
    :cond_0
    const-string p0, "DrawResult not defined, did you forget to call onDraw?"

    .line 65
    invoke-static {p0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateExceptionForNullCheck(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    .line 281
    :cond_1
    :goto_0
    iget-object p0, p0, Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;->cacheDrawScope:Landroidx/compose/ui/draw/CacheDrawScope;

    invoke-virtual {p0}, Landroidx/compose/ui/draw/CacheDrawScope;->getDrawResult$ui_release()Landroidx/compose/ui/draw/DrawResult;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public draw(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V
    .locals 0

    .line 285
    invoke-direct {p0, p1}, Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;->getOrBuildCachedDrawBlock(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)Landroidx/compose/ui/draw/DrawResult;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/draw/DrawResult;->getBlock$ui_release()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final getBlock()Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 214
    iget-object p0, p0, Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;->block:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public getDensity()Landroidx/compose/ui/unit/Density;
    .locals 0

    .line 226
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireDensity(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/unit/Density;

    move-result-object p0

    return-object p0
.end method

.method public final getGraphicsContext()Landroidx/compose/ui/graphics/GraphicsContext;
    .locals 2

    .line 236
    iget-object v0, p0, Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;->cachedGraphicsContext:Landroidx/compose/ui/draw/ScopedGraphicsContext;

    if-nez v0, :cond_0

    .line 238
    new-instance v0, Landroidx/compose/ui/draw/ScopedGraphicsContext;

    invoke-direct {v0}, Landroidx/compose/ui/draw/ScopedGraphicsContext;-><init>()V

    iput-object v0, p0, Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;->cachedGraphicsContext:Landroidx/compose/ui/draw/ScopedGraphicsContext;

    .line 240
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/draw/ScopedGraphicsContext;->getGraphicsContext()Landroidx/compose/ui/graphics/GraphicsContext;

    move-result-object v1

    if-nez v1, :cond_1

    .line 241
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireGraphicsContext(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/graphics/GraphicsContext;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/compose/ui/draw/ScopedGraphicsContext;->setGraphicsContext(Landroidx/compose/ui/graphics/GraphicsContext;)V

    :cond_1
    return-object v0
.end method

.method public getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;
    .locals 0

    .line 229
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutDirection(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object p0

    return-object p0
.end method

.method public getSize-NH-jbRc()J
    .locals 2

    const/16 v0, 0x80

    .line 104
    invoke-static {v0}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v0

    .line 232
    invoke-static {p0, v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireCoordinator-64DMado(Landroidx/compose/ui/node/DelegatableNode;I)Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getSize-YbymL2g()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSizeKt;->toSize-ozmzZPI(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public invalidateDrawCache()V
    .locals 2

    .line 263
    iget-object v0, p0, Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;->cachedGraphicsContext:Landroidx/compose/ui/draw/ScopedGraphicsContext;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/draw/ScopedGraphicsContext;->releaseGraphicsLayers()V

    :cond_0
    const/4 v0, 0x0

    .line 264
    iput-boolean v0, p0, Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;->isCacheValid:Z

    .line 265
    iget-object v0, p0, Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;->cacheDrawScope:Landroidx/compose/ui/draw/CacheDrawScope;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/compose/ui/draw/CacheDrawScope;->setDrawResult$ui_release(Landroidx/compose/ui/draw/DrawResult;)V

    .line 266
    invoke-static {p0}, Landroidx/compose/ui/node/DrawModifierNodeKt;->invalidateDraw(Landroidx/compose/ui/node/DrawModifierNode;)V

    return-void
.end method

.method public onDetach()V
    .locals 0

    .line 247
    invoke-super {p0}, Landroidx/compose/ui/Modifier$Node;->onDetach()V

    .line 248
    iget-object p0, p0, Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;->cachedGraphicsContext:Landroidx/compose/ui/draw/ScopedGraphicsContext;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/draw/ScopedGraphicsContext;->releaseGraphicsLayers()V

    :cond_0
    return-void
.end method

.method public onMeasureResultChanged()V
    .locals 0

    .line 252
    invoke-virtual {p0}, Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;->invalidateDrawCache()V

    return-void
.end method

.method public onObservedReadsChanged()V
    .locals 0

    .line 256
    invoke-virtual {p0}, Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;->invalidateDrawCache()V

    return-void
.end method

.method public final setBlock(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 216
    iput-object p1, p0, Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;->block:Lkotlin/jvm/functions/Function1;

    .line 217
    invoke-virtual {p0}, Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;->invalidateDrawCache()V

    return-void
.end method
