.class final Landroidx/compose/foundation/DrawStretchOverscrollModifier;
.super Landroidx/compose/ui/platform/InspectorValueInfo;
.source "AndroidOverscroll.android.kt"

# interfaces
.implements Landroidx/compose/ui/draw/DrawModifier;


# instance fields
.field private _renderNode:Landroid/graphics/RenderNode;

.field private final edgeEffectWrapper:Landroidx/compose/foundation/EdgeEffectWrapper;

.field private final overscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/foundation/EdgeEffectWrapper;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 86
    invoke-direct {p0, p3}, Landroidx/compose/ui/platform/InspectorValueInfo;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 83
    iput-object p1, p0, Landroidx/compose/foundation/DrawStretchOverscrollModifier;->overscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    .line 84
    iput-object p2, p0, Landroidx/compose/foundation/DrawStretchOverscrollModifier;->edgeEffectWrapper:Landroidx/compose/foundation/EdgeEffectWrapper;

    return-void
.end method

.method private final drawBottomStretch(Landroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z
    .locals 1

    const/high16 v0, 0x43340000    # 180.0f

    .line 308
    invoke-direct {p0, v0, p1, p2}, Landroidx/compose/foundation/DrawStretchOverscrollModifier;->drawWithRotation(FLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    move-result p0

    return p0
.end method

.method private final drawLeftStretch(Landroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z
    .locals 1

    const/high16 v0, 0x43870000    # 270.0f

    .line 296
    invoke-direct {p0, v0, p1, p2}, Landroidx/compose/foundation/DrawStretchOverscrollModifier;->drawWithRotation(FLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    move-result p0

    return p0
.end method

.method private final drawRightStretch(Landroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z
    .locals 1

    const/high16 v0, 0x42b40000    # 90.0f

    .line 304
    invoke-direct {p0, v0, p1, p2}, Landroidx/compose/foundation/DrawStretchOverscrollModifier;->drawWithRotation(FLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    move-result p0

    return p0
.end method

.method private final drawTopStretch(Landroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z
    .locals 1

    const/4 v0, 0x0

    .line 300
    invoke-direct {p0, v0, p1, p2}, Landroidx/compose/foundation/DrawStretchOverscrollModifier;->drawWithRotation(FLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    move-result p0

    return p0
.end method

.method private final drawWithRotation(FLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z
    .locals 0

    const/4 p0, 0x0

    cmpg-float p0, p1, p0

    if-nez p0, :cond_0

    .line 317
    invoke-virtual {p2, p3}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result p0

    return p0

    .line 320
    :cond_0
    invoke-virtual {p3}, Landroid/graphics/Canvas;->save()I

    move-result p0

    .line 321
    invoke-virtual {p3, p1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 322
    invoke-virtual {p2, p3}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result p1

    .line 323
    invoke-virtual {p3, p0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return p1
.end method

.method private final getRenderNode()Landroid/graphics/RenderNode;
    .locals 2

    .line 122
    iget-object v0, p0, Landroidx/compose/foundation/DrawStretchOverscrollModifier;->_renderNode:Landroid/graphics/RenderNode;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/RenderNode;

    const-string v1, "AndroidEdgeEffectOverscrollEffect"

    invoke-direct {v0, v1}, Landroid/graphics/RenderNode;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/compose/foundation/DrawStretchOverscrollModifier;->_renderNode:Landroid/graphics/RenderNode;

    :cond_0
    return-object v0
.end method

.method private final shouldDrawHorizontalStretch()Z
    .locals 1

    .line 288
    iget-object p0, p0, Landroidx/compose/foundation/DrawStretchOverscrollModifier;->edgeEffectWrapper:Landroidx/compose/foundation/EdgeEffectWrapper;

    .line 289
    invoke-virtual {p0}, Landroidx/compose/foundation/EdgeEffectWrapper;->isLeftAnimating()Z

    move-result v0

    if-nez v0, :cond_1

    .line 290
    invoke-virtual {p0}, Landroidx/compose/foundation/EdgeEffectWrapper;->isLeftNegationStretched()Z

    move-result v0

    if-nez v0, :cond_1

    .line 291
    invoke-virtual {p0}, Landroidx/compose/foundation/EdgeEffectWrapper;->isRightAnimating()Z

    move-result v0

    if-nez v0, :cond_1

    .line 292
    invoke-virtual {p0}, Landroidx/compose/foundation/EdgeEffectWrapper;->isRightNegationStretched()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private final shouldDrawVerticalStretch()Z
    .locals 1

    .line 280
    iget-object p0, p0, Landroidx/compose/foundation/DrawStretchOverscrollModifier;->edgeEffectWrapper:Landroidx/compose/foundation/EdgeEffectWrapper;

    .line 281
    invoke-virtual {p0}, Landroidx/compose/foundation/EdgeEffectWrapper;->isTopAnimating()Z

    move-result v0

    if-nez v0, :cond_1

    .line 282
    invoke-virtual {p0}, Landroidx/compose/foundation/EdgeEffectWrapper;->isTopNegationStretched()Z

    move-result v0

    if-nez v0, :cond_1

    .line 283
    invoke-virtual {p0}, Landroidx/compose/foundation/EdgeEffectWrapper;->isBottomAnimating()Z

    move-result v0

    if-nez v0, :cond_1

    .line 284
    invoke-virtual {p0}, Landroidx/compose/foundation/EdgeEffectWrapper;->isBottomNegationStretched()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public draw(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 126
    iget-object v2, v0, Landroidx/compose/foundation/DrawStretchOverscrollModifier;->overscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->updateSize-uvyYCjk$foundation_release(J)V

    .line 127
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Size;->isEmpty-impl(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->drawContent()V

    return-void

    .line 132
    :cond_0
    iget-object v2, v0, Landroidx/compose/foundation/DrawStretchOverscrollModifier;->overscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    invoke-virtual {v2}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->getRedrawSignal$foundation_release()Landroidx/compose/runtime/MutableState;

    move-result-object v2

    invoke-interface {v2}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    .line 133
    invoke-static {}, Landroidx/compose/foundation/ClipScrollableContainerKt;->getMaxSupportedElevation()F

    move-result v2

    invoke-interface {v1, v2}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v2

    .line 134
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object v3

    invoke-interface {v3}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v3

    invoke-static {v3}, Landroidx/compose/ui/graphics/AndroidCanvas_androidKt;->getNativeCanvas(Landroidx/compose/ui/graphics/Canvas;)Landroid/graphics/Canvas;

    move-result-object v3

    .line 136
    iget-object v4, v0, Landroidx/compose/foundation/DrawStretchOverscrollModifier;->edgeEffectWrapper:Landroidx/compose/foundation/EdgeEffectWrapper;

    .line 137
    invoke-direct/range {p0 .. p0}, Landroidx/compose/foundation/DrawStretchOverscrollModifier;->shouldDrawVerticalStretch()Z

    move-result v5

    .line 138
    invoke-direct/range {p0 .. p0}, Landroidx/compose/foundation/DrawStretchOverscrollModifier;->shouldDrawHorizontalStretch()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v5, :cond_1

    if-eqz v6, :cond_1

    .line 144
    invoke-direct/range {p0 .. p0}, Landroidx/compose/foundation/DrawStretchOverscrollModifier;->getRenderNode()Landroid/graphics/RenderNode;

    move-result-object v8

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v9

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v10

    invoke-virtual {v8, v7, v7, v9, v10}, Landroid/graphics/RenderNode;->setPosition(IIII)Z

    goto :goto_0

    :cond_1
    if-eqz v5, :cond_2

    .line 147
    invoke-direct/range {p0 .. p0}, Landroidx/compose/foundation/DrawStretchOverscrollModifier;->getRenderNode()Landroid/graphics/RenderNode;

    move-result-object v8

    .line 150
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v9

    invoke-static {v2}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v10

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    .line 151
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v10

    .line 147
    invoke-virtual {v8, v7, v7, v9, v10}, Landroid/graphics/RenderNode;->setPosition(IIII)Z

    goto :goto_0

    :cond_2
    if-eqz v6, :cond_16

    .line 155
    invoke-direct/range {p0 .. p0}, Landroidx/compose/foundation/DrawStretchOverscrollModifier;->getRenderNode()Landroid/graphics/RenderNode;

    move-result-object v8

    .line 158
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v9

    .line 159
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v10

    invoke-static {v2}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v11

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    .line 155
    invoke-virtual {v8, v7, v7, v9, v10}, Landroid/graphics/RenderNode;->setPosition(IIII)Z

    .line 167
    :goto_0
    invoke-direct/range {p0 .. p0}, Landroidx/compose/foundation/DrawStretchOverscrollModifier;->getRenderNode()Landroid/graphics/RenderNode;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/RenderNode;->beginRecording()Landroid/graphics/RecordingCanvas;

    move-result-object v8

    .line 178
    invoke-virtual {v4}, Landroidx/compose/foundation/EdgeEffectWrapper;->isLeftNegationStretched()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 179
    invoke-virtual {v4}, Landroidx/compose/foundation/EdgeEffectWrapper;->getOrCreateLeftEffectNegation()Landroid/widget/EdgeEffect;

    move-result-object v9

    .line 181
    invoke-direct {v0, v9, v8}, Landroidx/compose/foundation/DrawStretchOverscrollModifier;->drawRightStretch(Landroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    .line 182
    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->finish()V

    .line 184
    :cond_3
    invoke-virtual {v4}, Landroidx/compose/foundation/EdgeEffectWrapper;->isLeftAnimating()Z

    move-result v9

    const-wide v10, 0xffffffffL

    const/4 v12, 0x1

    if-eqz v9, :cond_4

    .line 185
    invoke-virtual {v4}, Landroidx/compose/foundation/EdgeEffectWrapper;->getOrCreateLeftEffect()Landroid/widget/EdgeEffect;

    move-result-object v9

    .line 186
    invoke-direct {v0, v9, v8}, Landroidx/compose/foundation/DrawStretchOverscrollModifier;->drawLeftStretch(Landroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    move-result v13

    .line 187
    invoke-virtual {v4}, Landroidx/compose/foundation/EdgeEffectWrapper;->isLeftStretched()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 190
    iget-object v14, v0, Landroidx/compose/foundation/DrawStretchOverscrollModifier;->overscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    invoke-virtual {v14}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->displacement-F1C5BW0$foundation_release()J

    move-result-wide v14

    and-long/2addr v14, v10

    long-to-int v14, v14

    .line 22
    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v14

    .line 192
    sget-object v15, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    .line 191
    invoke-virtual {v4}, Landroidx/compose/foundation/EdgeEffectWrapper;->getOrCreateLeftEffectNegation()Landroid/widget/EdgeEffect;

    move-result-object v7

    .line 192
    invoke-virtual {v15, v9}, Landroidx/compose/foundation/EdgeEffectCompat;->getDistanceCompat(Landroid/widget/EdgeEffect;)F

    move-result v9

    int-to-float v10, v12

    sub-float/2addr v10, v14

    invoke-virtual {v15, v7, v9, v10}, Landroidx/compose/foundation/EdgeEffectCompat;->onPullDistanceCompat(Landroid/widget/EdgeEffect;FF)F

    goto :goto_1

    :cond_4
    const/4 v13, 0x0

    .line 195
    :cond_5
    :goto_1
    invoke-virtual {v4}, Landroidx/compose/foundation/EdgeEffectWrapper;->isTopNegationStretched()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 196
    invoke-virtual {v4}, Landroidx/compose/foundation/EdgeEffectWrapper;->getOrCreateTopEffectNegation()Landroid/widget/EdgeEffect;

    move-result-object v7

    .line 198
    invoke-direct {v0, v7, v8}, Landroidx/compose/foundation/DrawStretchOverscrollModifier;->drawBottomStretch(Landroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    .line 199
    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->finish()V

    .line 201
    :cond_6
    invoke-virtual {v4}, Landroidx/compose/foundation/EdgeEffectWrapper;->isTopAnimating()Z

    move-result v7

    const/16 v9, 0x20

    if-eqz v7, :cond_9

    .line 202
    invoke-virtual {v4}, Landroidx/compose/foundation/EdgeEffectWrapper;->getOrCreateTopEffect()Landroid/widget/EdgeEffect;

    move-result-object v7

    .line 203
    invoke-direct {v0, v7, v8}, Landroidx/compose/foundation/DrawStretchOverscrollModifier;->drawTopStretch(Landroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    move-result v10

    if-nez v10, :cond_8

    if-eqz v13, :cond_7

    goto :goto_2

    :cond_7
    const/4 v13, 0x0

    goto :goto_3

    :cond_8
    :goto_2
    move v13, v12

    .line 204
    :goto_3
    invoke-virtual {v4}, Landroidx/compose/foundation/EdgeEffectWrapper;->isTopStretched()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 207
    iget-object v10, v0, Landroidx/compose/foundation/DrawStretchOverscrollModifier;->overscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    invoke-virtual {v10}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->displacement-F1C5BW0$foundation_release()J

    move-result-wide v10

    shr-long/2addr v10, v9

    long-to-int v10, v10

    .line 22
    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v10

    .line 209
    sget-object v11, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    .line 208
    invoke-virtual {v4}, Landroidx/compose/foundation/EdgeEffectWrapper;->getOrCreateTopEffectNegation()Landroid/widget/EdgeEffect;

    move-result-object v14

    .line 209
    invoke-virtual {v11, v7}, Landroidx/compose/foundation/EdgeEffectCompat;->getDistanceCompat(Landroid/widget/EdgeEffect;)F

    move-result v7

    invoke-virtual {v11, v14, v7, v10}, Landroidx/compose/foundation/EdgeEffectCompat;->onPullDistanceCompat(Landroid/widget/EdgeEffect;FF)F

    .line 212
    :cond_9
    invoke-virtual {v4}, Landroidx/compose/foundation/EdgeEffectWrapper;->isRightNegationStretched()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 213
    invoke-virtual {v4}, Landroidx/compose/foundation/EdgeEffectWrapper;->getOrCreateRightEffectNegation()Landroid/widget/EdgeEffect;

    move-result-object v7

    .line 215
    invoke-direct {v0, v7, v8}, Landroidx/compose/foundation/DrawStretchOverscrollModifier;->drawLeftStretch(Landroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    .line 216
    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->finish()V

    .line 218
    :cond_a
    invoke-virtual {v4}, Landroidx/compose/foundation/EdgeEffectWrapper;->isRightAnimating()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 219
    invoke-virtual {v4}, Landroidx/compose/foundation/EdgeEffectWrapper;->getOrCreateRightEffect()Landroid/widget/EdgeEffect;

    move-result-object v7

    .line 220
    invoke-direct {v0, v7, v8}, Landroidx/compose/foundation/DrawStretchOverscrollModifier;->drawRightStretch(Landroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    move-result v10

    if-nez v10, :cond_c

    if-eqz v13, :cond_b

    goto :goto_4

    :cond_b
    const/4 v13, 0x0

    goto :goto_5

    :cond_c
    :goto_4
    move v13, v12

    .line 221
    :goto_5
    invoke-virtual {v4}, Landroidx/compose/foundation/EdgeEffectWrapper;->isRightStretched()Z

    move-result v10

    if-eqz v10, :cond_d

    .line 224
    iget-object v10, v0, Landroidx/compose/foundation/DrawStretchOverscrollModifier;->overscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    invoke-virtual {v10}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->displacement-F1C5BW0$foundation_release()J

    move-result-wide v10

    const-wide v14, 0xffffffffL

    and-long/2addr v10, v14

    long-to-int v10, v10

    .line 22
    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v10

    .line 226
    sget-object v11, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    .line 225
    invoke-virtual {v4}, Landroidx/compose/foundation/EdgeEffectWrapper;->getOrCreateRightEffectNegation()Landroid/widget/EdgeEffect;

    move-result-object v14

    .line 226
    invoke-virtual {v11, v7}, Landroidx/compose/foundation/EdgeEffectCompat;->getDistanceCompat(Landroid/widget/EdgeEffect;)F

    move-result v7

    invoke-virtual {v11, v14, v7, v10}, Landroidx/compose/foundation/EdgeEffectCompat;->onPullDistanceCompat(Landroid/widget/EdgeEffect;FF)F

    .line 229
    :cond_d
    invoke-virtual {v4}, Landroidx/compose/foundation/EdgeEffectWrapper;->isBottomNegationStretched()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 230
    invoke-virtual {v4}, Landroidx/compose/foundation/EdgeEffectWrapper;->getOrCreateBottomEffectNegation()Landroid/widget/EdgeEffect;

    move-result-object v7

    .line 232
    invoke-direct {v0, v7, v8}, Landroidx/compose/foundation/DrawStretchOverscrollModifier;->drawTopStretch(Landroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    .line 233
    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->finish()V

    .line 235
    :cond_e
    invoke-virtual {v4}, Landroidx/compose/foundation/EdgeEffectWrapper;->isBottomAnimating()Z

    move-result v7

    if-eqz v7, :cond_12

    .line 236
    invoke-virtual {v4}, Landroidx/compose/foundation/EdgeEffectWrapper;->getOrCreateBottomEffect()Landroid/widget/EdgeEffect;

    move-result-object v7

    .line 238
    invoke-direct {v0, v7, v8}, Landroidx/compose/foundation/DrawStretchOverscrollModifier;->drawBottomStretch(Landroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    move-result v10

    if-nez v10, :cond_10

    if-eqz v13, :cond_f

    goto :goto_6

    :cond_f
    const/16 v16, 0x0

    goto :goto_7

    :cond_10
    :goto_6
    move/from16 v16, v12

    .line 239
    :goto_7
    invoke-virtual {v4}, Landroidx/compose/foundation/EdgeEffectWrapper;->isBottomStretched()Z

    move-result v10

    if-eqz v10, :cond_11

    .line 242
    iget-object v10, v0, Landroidx/compose/foundation/DrawStretchOverscrollModifier;->overscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    invoke-virtual {v10}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->displacement-F1C5BW0$foundation_release()J

    move-result-wide v10

    shr-long v9, v10, v9

    long-to-int v9, v9

    .line 22
    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v9

    .line 244
    sget-object v10, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    .line 243
    invoke-virtual {v4}, Landroidx/compose/foundation/EdgeEffectWrapper;->getOrCreateBottomEffectNegation()Landroid/widget/EdgeEffect;

    move-result-object v4

    .line 244
    invoke-virtual {v10, v7}, Landroidx/compose/foundation/EdgeEffectCompat;->getDistanceCompat(Landroid/widget/EdgeEffect;)F

    move-result v7

    int-to-float v11, v12

    sub-float/2addr v11, v9

    invoke-virtual {v10, v4, v7, v11}, Landroidx/compose/foundation/EdgeEffectCompat;->onPullDistanceCompat(Landroid/widget/EdgeEffect;FF)F

    :cond_11
    move/from16 v13, v16

    :cond_12
    if-eqz v13, :cond_13

    .line 248
    iget-object v4, v0, Landroidx/compose/foundation/DrawStretchOverscrollModifier;->overscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    invoke-virtual {v4}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->invalidateOverscroll$foundation_release()V

    :cond_13
    const/4 v4, 0x0

    if-eqz v6, :cond_14

    move v6, v4

    goto :goto_8

    :cond_14
    move v6, v2

    :goto_8
    if-eqz v5, :cond_15

    move v2, v4

    .line 260
    :cond_15
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v4

    invoke-static {v8}, Landroidx/compose/ui/graphics/AndroidCanvas_androidKt;->Canvas(Landroid/graphics/Canvas;)Landroidx/compose/ui/graphics/Canvas;

    move-result-object v5

    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v7

    .line 305
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object v9

    invoke-interface {v9}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getDensity()Landroidx/compose/ui/unit/Density;

    move-result-object v9

    .line 306
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object v10

    invoke-interface {v10}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v10

    .line 307
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object v11

    invoke-interface {v11}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v11

    .line 308
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object v12

    invoke-interface {v12}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getSize-NH-jbRc()J

    move-result-wide v12

    .line 309
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object v14

    invoke-interface {v14}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getGraphicsLayer()Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    move-result-object v14

    .line 310
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object v15

    .line 311
    invoke-interface {v15, v1}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->setDensity(Landroidx/compose/ui/unit/Density;)V

    .line 312
    invoke-interface {v15, v4}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 313
    invoke-interface {v15, v5}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->setCanvas(Landroidx/compose/ui/graphics/Canvas;)V

    .line 314
    invoke-interface {v15, v7, v8}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->setSize-uvyYCjk(J)V

    const/4 v4, 0x0

    .line 315
    invoke-interface {v15, v4}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->setGraphicsLayer(Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    .line 317
    invoke-interface {v5}, Landroidx/compose/ui/graphics/Canvas;->save()V

    .line 120
    :try_start_0
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object v4

    invoke-interface {v4}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getTransform()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    move-result-object v4

    invoke-interface {v4, v6, v2}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->translate(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    :try_start_1
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->drawContent()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 124
    :try_start_2
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object v4

    invoke-interface {v4}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getTransform()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    move-result-object v4

    neg-float v6, v6

    neg-float v2, v2

    invoke-interface {v4, v6, v2}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->translate(FF)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 321
    invoke-interface {v5}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    .line 322
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object v1

    .line 323
    invoke-interface {v1, v9}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->setDensity(Landroidx/compose/ui/unit/Density;)V

    .line 324
    invoke-interface {v1, v10}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 325
    invoke-interface {v1, v11}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->setCanvas(Landroidx/compose/ui/graphics/Canvas;)V

    .line 326
    invoke-interface {v1, v12, v13}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->setSize-uvyYCjk(J)V

    .line 327
    invoke-interface {v1, v14}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->setGraphicsLayer(Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    .line 269
    invoke-direct/range {p0 .. p0}, Landroidx/compose/foundation/DrawStretchOverscrollModifier;->getRenderNode()Landroid/graphics/RenderNode;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RenderNode;->endRecording()V

    .line 272
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 273
    invoke-virtual {v3, v6, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 274
    invoke-direct/range {p0 .. p0}, Landroidx/compose/foundation/DrawStretchOverscrollModifier;->getRenderNode()Landroid/graphics/RenderNode;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/graphics/Canvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    .line 275
    invoke-virtual {v3, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_9

    :catchall_1
    move-exception v0

    move-object v3, v0

    .line 124
    :try_start_3
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getTransform()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    move-result-object v0

    neg-float v4, v6

    neg-float v2, v2

    invoke-interface {v0, v4, v2}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->translate(FF)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 321
    :goto_9
    invoke-interface {v5}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    .line 322
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object v1

    .line 323
    invoke-interface {v1, v9}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->setDensity(Landroidx/compose/ui/unit/Density;)V

    .line 324
    invoke-interface {v1, v10}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 325
    invoke-interface {v1, v11}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->setCanvas(Landroidx/compose/ui/graphics/Canvas;)V

    .line 326
    invoke-interface {v1, v12, v13}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->setSize-uvyYCjk(J)V

    .line 327
    invoke-interface {v1, v14}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->setGraphicsLayer(Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    .line 322
    throw v0

    .line 163
    :cond_16
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->drawContent()V

    return-void
.end method
