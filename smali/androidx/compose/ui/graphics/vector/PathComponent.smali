.class public final Landroidx/compose/ui/graphics/vector/PathComponent;
.super Landroidx/compose/ui/graphics/vector/VNode;
.source "Vector.kt"


# instance fields
.field private fill:Landroidx/compose/ui/graphics/Brush;

.field private fillAlpha:F

.field private isPathDirty:Z

.field private isStrokeDirty:Z

.field private isTrimPathDirty:Z

.field private name:Ljava/lang/String;

.field private final path:Landroidx/compose/ui/graphics/Path;

.field private pathData:Ljava/util/List;

.field private pathFillType:I

.field private final pathMeasure$delegate:Lkotlin/Lazy;

.field private renderPath:Landroidx/compose/ui/graphics/Path;

.field private stroke:Landroidx/compose/ui/graphics/Brush;

.field private strokeAlpha:F

.field private strokeLineCap:I

.field private strokeLineJoin:I

.field private strokeLineMiter:F

.field private strokeLineWidth:F

.field private strokeStyle:Landroidx/compose/ui/graphics/drawscope/Stroke;

.field private trimPathEnd:F

.field private trimPathOffset:F

.field private trimPathStart:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    .line 198
    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/vector/VNode;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 199
    const-string v0, ""

    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->name:Ljava/lang/String;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 211
    iput v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->fillAlpha:F

    .line 217
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getEmptyPath()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->pathData:Ljava/util/List;

    .line 224
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v1

    iput v1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->pathFillType:I

    .line 231
    iput v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->strokeAlpha:F

    .line 250
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultStrokeLineCap()I

    move-result v1

    iput v1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->strokeLineCap:I

    .line 257
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultStrokeLineJoin()I

    move-result v1

    iput v1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->strokeLineJoin:I

    const/high16 v1, 0x40800000    # 4.0f

    .line 264
    iput v1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->strokeLineMiter:F

    .line 278
    iput v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->trimPathEnd:F

    const/4 v0, 0x1

    .line 292
    iput-boolean v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->isPathDirty:Z

    .line 293
    iput-boolean v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->isStrokeDirty:Z

    .line 298
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->path:Landroidx/compose/ui/graphics/Path;

    .line 299
    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->renderPath:Landroidx/compose/ui/graphics/Path;

    .line 301
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Landroidx/compose/ui/graphics/vector/PathComponent$pathMeasure$2;->INSTANCE:Landroidx/compose/ui/graphics/vector/PathComponent$pathMeasure$2;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->pathMeasure$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getPathMeasure()Landroidx/compose/ui/graphics/PathMeasure;
    .locals 0

    .line 301
    iget-object p0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->pathMeasure$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/graphics/PathMeasure;

    return-object p0
.end method

.method private final updatePath()V
    .locals 2

    .line 305
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->pathData:Ljava/util/List;

    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->path:Landroidx/compose/ui/graphics/Path;

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/vector/PathParserKt;->toPath(Ljava/util/List;Landroidx/compose/ui/graphics/Path;)Landroidx/compose/ui/graphics/Path;

    .line 306
    invoke-direct {p0}, Landroidx/compose/ui/graphics/vector/PathComponent;->updateRenderPath()V

    return-void
.end method

.method private final updateRenderPath()V
    .locals 7

    .line 310
    iget v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->trimPathStart:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->trimPathEnd:F

    cmpg-float v0, v0, v2

    if-nez v0, :cond_0

    .line 311
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->path:Landroidx/compose/ui/graphics/Path;

    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->renderPath:Landroidx/compose/ui/graphics/Path;

    goto :goto_1

    .line 313
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->renderPath:Landroidx/compose/ui/graphics/Path;

    iget-object v3, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->path:Landroidx/compose/ui/graphics/Path;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 314
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->renderPath:Landroidx/compose/ui/graphics/Path;

    goto :goto_0

    .line 317
    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->renderPath:Landroidx/compose/ui/graphics/Path;

    invoke-interface {v0}, Landroidx/compose/ui/graphics/Path;->getFillType-Rg-k1Os()I

    move-result v0

    .line 318
    iget-object v3, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->renderPath:Landroidx/compose/ui/graphics/Path;

    invoke-interface {v3}, Landroidx/compose/ui/graphics/Path;->rewind()V

    .line 319
    iget-object v3, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->renderPath:Landroidx/compose/ui/graphics/Path;

    invoke-interface {v3, v0}, Landroidx/compose/ui/graphics/Path;->setFillType-oQ8Xj4U(I)V

    .line 322
    :goto_0
    invoke-direct {p0}, Landroidx/compose/ui/graphics/vector/PathComponent;->getPathMeasure()Landroidx/compose/ui/graphics/PathMeasure;

    move-result-object v0

    iget-object v3, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->path:Landroidx/compose/ui/graphics/Path;

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroidx/compose/ui/graphics/PathMeasure;->setPath(Landroidx/compose/ui/graphics/Path;Z)V

    .line 323
    invoke-direct {p0}, Landroidx/compose/ui/graphics/vector/PathComponent;->getPathMeasure()Landroidx/compose/ui/graphics/PathMeasure;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/graphics/PathMeasure;->getLength()F

    move-result v0

    .line 324
    iget v3, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->trimPathStart:F

    iget v4, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->trimPathOffset:F

    add-float/2addr v3, v4

    rem-float/2addr v3, v2

    mul-float/2addr v3, v0

    .line 325
    iget v5, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->trimPathEnd:F

    add-float/2addr v5, v4

    rem-float/2addr v5, v2

    mul-float/2addr v5, v0

    cmpl-float v2, v3, v5

    const/4 v4, 0x1

    if-lez v2, :cond_2

    .line 327
    invoke-direct {p0}, Landroidx/compose/ui/graphics/vector/PathComponent;->getPathMeasure()Landroidx/compose/ui/graphics/PathMeasure;

    move-result-object v2

    iget-object v6, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->renderPath:Landroidx/compose/ui/graphics/Path;

    invoke-interface {v2, v3, v0, v6, v4}, Landroidx/compose/ui/graphics/PathMeasure;->getSegment(FFLandroidx/compose/ui/graphics/Path;Z)Z

    .line 328
    invoke-direct {p0}, Landroidx/compose/ui/graphics/vector/PathComponent;->getPathMeasure()Landroidx/compose/ui/graphics/PathMeasure;

    move-result-object v0

    iget-object p0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->renderPath:Landroidx/compose/ui/graphics/Path;

    invoke-interface {v0, v1, v5, p0, v4}, Landroidx/compose/ui/graphics/PathMeasure;->getSegment(FFLandroidx/compose/ui/graphics/Path;Z)Z

    goto :goto_1

    .line 330
    :cond_2
    invoke-direct {p0}, Landroidx/compose/ui/graphics/vector/PathComponent;->getPathMeasure()Landroidx/compose/ui/graphics/PathMeasure;

    move-result-object v0

    iget-object p0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->renderPath:Landroidx/compose/ui/graphics/Path;

    invoke-interface {v0, v3, v5, p0, v4}, Landroidx/compose/ui/graphics/PathMeasure;->getSegment(FFLandroidx/compose/ui/graphics/Path;Z)Z

    :goto_1
    return-void
.end method


# virtual methods
.method public draw(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V
    .locals 20

    move-object/from16 v0, p0

    .line 336
    iget-boolean v1, v0, Landroidx/compose/ui/graphics/vector/PathComponent;->isPathDirty:Z

    if-eqz v1, :cond_0

    .line 337
    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/graphics/vector/PathComponent;->updatePath()V

    goto :goto_0

    .line 338
    :cond_0
    iget-boolean v1, v0, Landroidx/compose/ui/graphics/vector/PathComponent;->isTrimPathDirty:Z

    if-eqz v1, :cond_1

    .line 339
    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/graphics/vector/PathComponent;->updateRenderPath()V

    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 341
    iput-boolean v1, v0, Landroidx/compose/ui/graphics/vector/PathComponent;->isPathDirty:Z

    .line 342
    iput-boolean v1, v0, Landroidx/compose/ui/graphics/vector/PathComponent;->isTrimPathDirty:Z

    .line 344
    iget-object v4, v0, Landroidx/compose/ui/graphics/vector/PathComponent;->fill:Landroidx/compose/ui/graphics/Brush;

    if-eqz v4, :cond_2

    iget-object v3, v0, Landroidx/compose/ui/graphics/vector/PathComponent;->renderPath:Landroidx/compose/ui/graphics/Path;

    iget v5, v0, Landroidx/compose/ui/graphics/vector/PathComponent;->fillAlpha:F

    const/16 v9, 0x38

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v10}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawPath-GBMwjPU$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 345
    :cond_2
    iget-object v13, v0, Landroidx/compose/ui/graphics/vector/PathComponent;->stroke:Landroidx/compose/ui/graphics/Brush;

    if-eqz v13, :cond_5

    .line 346
    iget-object v2, v0, Landroidx/compose/ui/graphics/vector/PathComponent;->strokeStyle:Landroidx/compose/ui/graphics/drawscope/Stroke;

    .line 347
    iget-boolean v3, v0, Landroidx/compose/ui/graphics/vector/PathComponent;->isStrokeDirty:Z

    if-nez v3, :cond_4

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    move-object v15, v2

    goto :goto_3

    .line 349
    :cond_4
    :goto_2
    new-instance v2, Landroidx/compose/ui/graphics/drawscope/Stroke;

    iget v5, v0, Landroidx/compose/ui/graphics/vector/PathComponent;->strokeLineWidth:F

    iget v6, v0, Landroidx/compose/ui/graphics/vector/PathComponent;->strokeLineMiter:F

    iget v7, v0, Landroidx/compose/ui/graphics/vector/PathComponent;->strokeLineCap:I

    iget v8, v0, Landroidx/compose/ui/graphics/vector/PathComponent;->strokeLineJoin:I

    const/16 v10, 0x10

    const/4 v11, 0x0

    const/4 v9, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIILandroidx/compose/ui/graphics/PathEffect;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 350
    iput-object v2, v0, Landroidx/compose/ui/graphics/vector/PathComponent;->strokeStyle:Landroidx/compose/ui/graphics/drawscope/Stroke;

    .line 351
    iput-boolean v1, v0, Landroidx/compose/ui/graphics/vector/PathComponent;->isStrokeDirty:Z

    goto :goto_1

    .line 353
    :goto_3
    iget-object v12, v0, Landroidx/compose/ui/graphics/vector/PathComponent;->renderPath:Landroidx/compose/ui/graphics/Path;

    iget v14, v0, Landroidx/compose/ui/graphics/vector/PathComponent;->strokeAlpha:F

    const/16 v18, 0x30

    const/16 v19, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v11, p1

    invoke-static/range {v11 .. v19}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawPath-GBMwjPU$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    :cond_5
    return-void
.end method

.method public final getFill()Landroidx/compose/ui/graphics/Brush;
    .locals 0

    .line 205
    iget-object p0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->fill:Landroidx/compose/ui/graphics/Brush;

    return-object p0
.end method

.method public final getStroke()Landroidx/compose/ui/graphics/Brush;
    .locals 0

    .line 244
    iget-object p0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->stroke:Landroidx/compose/ui/graphics/Brush;

    return-object p0
.end method

.method public final setFill(Landroidx/compose/ui/graphics/Brush;)V
    .locals 0

    .line 207
    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->fill:Landroidx/compose/ui/graphics/Brush;

    .line 208
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    return-void
.end method

.method public final setFillAlpha(F)V
    .locals 0

    .line 213
    iput p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->fillAlpha:F

    .line 214
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    .line 201
    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->name:Ljava/lang/String;

    .line 202
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    return-void
.end method

.method public final setPathData(Ljava/util/List;)V
    .locals 0

    .line 219
    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->pathData:Ljava/util/List;

    const/4 p1, 0x1

    .line 220
    iput-boolean p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->isPathDirty:Z

    .line 221
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    return-void
.end method

.method public final setPathFillType-oQ8Xj4U(I)V
    .locals 1

    .line 226
    iput p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->pathFillType:I

    .line 227
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->renderPath:Landroidx/compose/ui/graphics/Path;

    invoke-interface {v0, p1}, Landroidx/compose/ui/graphics/Path;->setFillType-oQ8Xj4U(I)V

    .line 228
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    return-void
.end method

.method public final setStroke(Landroidx/compose/ui/graphics/Brush;)V
    .locals 0

    .line 246
    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->stroke:Landroidx/compose/ui/graphics/Brush;

    .line 247
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    return-void
.end method

.method public final setStrokeAlpha(F)V
    .locals 0

    .line 233
    iput p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->strokeAlpha:F

    .line 234
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    return-void
.end method

.method public final setStrokeLineCap-BeK7IIE(I)V
    .locals 0

    .line 252
    iput p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->strokeLineCap:I

    const/4 p1, 0x1

    .line 253
    iput-boolean p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->isStrokeDirty:Z

    .line 254
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    return-void
.end method

.method public final setStrokeLineJoin-Ww9F2mQ(I)V
    .locals 0

    .line 259
    iput p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->strokeLineJoin:I

    const/4 p1, 0x1

    .line 260
    iput-boolean p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->isStrokeDirty:Z

    .line 261
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    return-void
.end method

.method public final setStrokeLineMiter(F)V
    .locals 0

    .line 266
    iput p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->strokeLineMiter:F

    const/4 p1, 0x1

    .line 267
    iput-boolean p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->isStrokeDirty:Z

    .line 268
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    return-void
.end method

.method public final setStrokeLineWidth(F)V
    .locals 0

    .line 239
    iput p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->strokeLineWidth:F

    const/4 p1, 0x1

    .line 240
    iput-boolean p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->isStrokeDirty:Z

    .line 241
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    return-void
.end method

.method public final setTrimPathEnd(F)V
    .locals 0

    .line 280
    iput p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->trimPathEnd:F

    const/4 p1, 0x1

    .line 281
    iput-boolean p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->isTrimPathDirty:Z

    .line 282
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    return-void
.end method

.method public final setTrimPathOffset(F)V
    .locals 0

    .line 287
    iput p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->trimPathOffset:F

    const/4 p1, 0x1

    .line 288
    iput-boolean p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->isTrimPathDirty:Z

    .line 289
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    return-void
.end method

.method public final setTrimPathStart(F)V
    .locals 0

    .line 273
    iput p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->trimPathStart:F

    const/4 p1, 0x1

    .line 274
    iput-boolean p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->isTrimPathDirty:Z

    .line 275
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 357
    iget-object p0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->path:Landroidx/compose/ui/graphics/Path;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
