.class public abstract Landroidx/compose/foundation/text/selection/SelectionAdjustmentKt;
.super Ljava/lang/Object;
.source "SelectionAdjustment.kt"


# direct methods
.method public static final synthetic access$adjustToBoundaries(Landroidx/compose/foundation/text/selection/SelectionLayout;Landroidx/compose/foundation/text/selection/BoundaryFunction;)Landroidx/compose/foundation/text/selection/Selection;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/foundation/text/selection/SelectionAdjustmentKt;->adjustToBoundaries(Landroidx/compose/foundation/text/selection/SelectionLayout;Landroidx/compose/foundation/text/selection/BoundaryFunction;)Landroidx/compose/foundation/text/selection/Selection;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$snapToWordBoundary(Landroidx/compose/foundation/text/selection/SelectableInfo;IIIZZ)Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Landroidx/compose/foundation/text/selection/SelectionAdjustmentKt;->snapToWordBoundary(Landroidx/compose/foundation/text/selection/SelectableInfo;IIIZZ)Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$updateSelectionBoundary(Landroidx/compose/foundation/text/selection/SelectionLayout;Landroidx/compose/foundation/text/selection/SelectableInfo;Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;)Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/text/selection/SelectionAdjustmentKt;->updateSelectionBoundary(Landroidx/compose/foundation/text/selection/SelectionLayout;Landroidx/compose/foundation/text/selection/SelectableInfo;Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;)Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$updateSelectionBoundary$lambda$0(Lkotlin/Lazy;)I
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/foundation/text/selection/SelectionAdjustmentKt;->updateSelectionBoundary$lambda$0(Lkotlin/Lazy;)I

    move-result p0

    return p0
.end method

.method private static final adjustToBoundaries(Landroidx/compose/foundation/text/selection/SelectionLayout;Landroidx/compose/foundation/text/selection/BoundaryFunction;)Landroidx/compose/foundation/text/selection/Selection;
    .locals 6

    .line 299
    invoke-interface {p0}, Landroidx/compose/foundation/text/selection/SelectionLayout;->getCrossStatus()Landroidx/compose/foundation/text/selection/CrossStatus;

    move-result-object v0

    sget-object v1, Landroidx/compose/foundation/text/selection/CrossStatus;->CROSSED:Landroidx/compose/foundation/text/selection/CrossStatus;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    .line 300
    :goto_0
    new-instance v1, Landroidx/compose/foundation/text/selection/Selection;

    .line 302
    invoke-interface {p0}, Landroidx/compose/foundation/text/selection/SelectionLayout;->getStartInfo()Landroidx/compose/foundation/text/selection/SelectableInfo;

    move-result-object v4

    .line 305
    invoke-interface {p0}, Landroidx/compose/foundation/text/selection/SelectionLayout;->getStartSlot()I

    move-result v5

    .line 302
    invoke-static {v4, v0, v3, v5, p1}, Landroidx/compose/foundation/text/selection/SelectionAdjustmentKt;->anchorOnBoundary(Landroidx/compose/foundation/text/selection/SelectableInfo;ZZILandroidx/compose/foundation/text/selection/BoundaryFunction;)Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v3

    .line 309
    invoke-interface {p0}, Landroidx/compose/foundation/text/selection/SelectionLayout;->getEndInfo()Landroidx/compose/foundation/text/selection/SelectableInfo;

    move-result-object v4

    .line 312
    invoke-interface {p0}, Landroidx/compose/foundation/text/selection/SelectionLayout;->getEndSlot()I

    move-result p0

    .line 309
    invoke-static {v4, v0, v2, p0, p1}, Landroidx/compose/foundation/text/selection/SelectionAdjustmentKt;->anchorOnBoundary(Landroidx/compose/foundation/text/selection/SelectableInfo;ZZILandroidx/compose/foundation/text/selection/BoundaryFunction;)Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object p0

    .line 300
    invoke-direct {v1, v3, p0, v0}, Landroidx/compose/foundation/text/selection/Selection;-><init>(Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;Z)V

    return-object v1
.end method

.method private static final anchorOnBoundary(Landroidx/compose/foundation/text/selection/SelectableInfo;ZZILandroidx/compose/foundation/text/selection/BoundaryFunction;)Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;
    .locals 2

    if-eqz p2, :cond_0

    .line 325
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectableInfo;->getRawStartHandleOffset()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectableInfo;->getRawEndHandleOffset()I

    move-result v0

    .line 327
    :goto_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectableInfo;->getSlot()I

    move-result v1

    if-eq p3, v1, :cond_1

    .line 328
    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/selection/SelectableInfo;->anchorForOffset(I)Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object p0

    return-object p0

    .line 331
    :cond_1
    invoke-interface {p4, p0, v0}, Landroidx/compose/foundation/text/selection/BoundaryFunction;->getBoundary-fzxv0v0(Landroidx/compose/foundation/text/selection/SelectableInfo;I)J

    move-result-wide p3

    xor-int/2addr p1, p2

    if-eqz p1, :cond_2

    .line 333
    invoke-static {p3, p4}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result p1

    goto :goto_1

    :cond_2
    invoke-static {p3, p4}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result p1

    :goto_1
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/selection/SelectableInfo;->anchorForOffset(I)Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object p0

    return-object p0
.end method

.method private static final changeOffset(Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;Landroidx/compose/foundation/text/selection/SelectableInfo;I)Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;
    .locals 7

    .line 416
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/SelectableInfo;->getTextLayoutResult()Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/compose/ui/text/TextLayoutResult;->getBidiRunDirection(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;

    move-result-object v1

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-wide/16 v3, 0x0

    move-object v0, p0

    move v2, p2

    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->copy$default(Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;Landroidx/compose/ui/text/style/ResolvedTextDirection;IJILjava/lang/Object;)Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object p0

    return-object p0
.end method

.method public static final ensureAtLeastOneChar(Landroidx/compose/foundation/text/selection/Selection;Landroidx/compose/foundation/text/selection/SelectionLayout;)Landroidx/compose/foundation/text/selection/Selection;
    .locals 3

    .line 342
    invoke-static {p0, p1}, Landroidx/compose/foundation/text/selection/SelectionLayoutKt;->isCollapsed(Landroidx/compose/foundation/text/selection/Selection;Landroidx/compose/foundation/text/selection/SelectionLayout;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 357
    :cond_0
    invoke-interface {p1}, Landroidx/compose/foundation/text/selection/SelectionLayout;->getCurrentInfo()Landroidx/compose/foundation/text/selection/SelectableInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/SelectableInfo;->getInputText()Ljava/lang/String;

    move-result-object v0

    .line 358
    invoke-interface {p1}, Landroidx/compose/foundation/text/selection/SelectionLayout;->getSize()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_2

    invoke-interface {p1}, Landroidx/compose/foundation/text/selection/SelectionLayout;->getPreviousSelection()Landroidx/compose/foundation/text/selection/Selection;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 362
    :cond_1
    invoke-static {p0, p1}, Landroidx/compose/foundation/text/selection/SelectionAdjustmentKt;->expandOneChar(Landroidx/compose/foundation/text/selection/Selection;Landroidx/compose/foundation/text/selection/SelectionLayout;)Landroidx/compose/foundation/text/selection/Selection;

    move-result-object p0

    :cond_2
    :goto_0
    return-object p0
.end method

.method private static final expandOneChar(Landroidx/compose/foundation/text/selection/Selection;Landroidx/compose/foundation/text/selection/SelectionLayout;)Landroidx/compose/foundation/text/selection/Selection;
    .locals 12

    .line 367
    invoke-interface {p1}, Landroidx/compose/foundation/text/selection/SelectionLayout;->getCurrentInfo()Landroidx/compose/foundation/text/selection/SelectableInfo;

    move-result-object v0

    .line 368
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/SelectableInfo;->getInputText()Ljava/lang/String;

    move-result-object v1

    .line 369
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/SelectableInfo;->getRawStartHandleOffset()I

    move-result v2

    .line 373
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    if-nez v2, :cond_1

    .line 376
    invoke-static {v1, v4}, Landroidx/compose/foundation/text/StringHelpers_androidKt;->findFollowingBreak(Ljava/lang/String;I)I

    move-result v1

    .line 377
    invoke-interface {p1}, Landroidx/compose/foundation/text/selection/SelectionLayout;->isStartHandle()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 378
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/Selection;->getStart()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object p1

    invoke-static {p1, v0, v1}, Landroidx/compose/foundation/text/selection/SelectionAdjustmentKt;->changeOffset(Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;Landroidx/compose/foundation/text/selection/SelectableInfo;I)Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v3

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Landroidx/compose/foundation/text/selection/Selection;->copy$default(Landroidx/compose/foundation/text/selection/Selection;Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;ZILjava/lang/Object;)Landroidx/compose/foundation/text/selection/Selection;

    move-result-object p0

    goto/16 :goto_2

    .line 380
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/Selection;->getEnd()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object p1

    invoke-static {p1, v0, v1}, Landroidx/compose/foundation/text/selection/SelectionAdjustmentKt;->changeOffset(Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;Landroidx/compose/foundation/text/selection/SelectableInfo;I)Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v4

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Landroidx/compose/foundation/text/selection/Selection;->copy$default(Landroidx/compose/foundation/text/selection/Selection;Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;ZILjava/lang/Object;)Landroidx/compose/foundation/text/selection/Selection;

    move-result-object p0

    goto/16 :goto_2

    :cond_1
    if-ne v2, v3, :cond_3

    .line 384
    invoke-static {v1, v3}, Landroidx/compose/foundation/text/StringHelpers_androidKt;->findPrecedingBreak(Ljava/lang/String;I)I

    move-result v1

    .line 385
    invoke-interface {p1}, Landroidx/compose/foundation/text/selection/SelectionLayout;->isStartHandle()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 386
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/Selection;->getStart()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object p1

    invoke-static {p1, v0, v1}, Landroidx/compose/foundation/text/selection/SelectionAdjustmentKt;->changeOffset(Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;Landroidx/compose/foundation/text/selection/SelectableInfo;I)Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v3

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Landroidx/compose/foundation/text/selection/Selection;->copy$default(Landroidx/compose/foundation/text/selection/Selection;Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;ZILjava/lang/Object;)Landroidx/compose/foundation/text/selection/Selection;

    move-result-object p0

    goto :goto_2

    .line 388
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/Selection;->getEnd()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object p1

    invoke-static {p1, v0, v1}, Landroidx/compose/foundation/text/selection/SelectionAdjustmentKt;->changeOffset(Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;Landroidx/compose/foundation/text/selection/SelectableInfo;I)Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v4

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Landroidx/compose/foundation/text/selection/Selection;->copy$default(Landroidx/compose/foundation/text/selection/Selection;Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;ZILjava/lang/Object;)Landroidx/compose/foundation/text/selection/Selection;

    move-result-object p0

    goto :goto_2

    .line 394
    :cond_3
    invoke-interface {p1}, Landroidx/compose/foundation/text/selection/SelectionLayout;->getPreviousSelection()Landroidx/compose/foundation/text/selection/Selection;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroidx/compose/foundation/text/selection/Selection;->getHandlesCrossed()Z

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_4

    move v9, v5

    goto :goto_0

    :cond_4
    move v9, v4

    .line 396
    :goto_0
    invoke-interface {p1}, Landroidx/compose/foundation/text/selection/SelectionLayout;->isStartHandle()Z

    move-result v3

    xor-int/2addr v3, v9

    if-eqz v3, :cond_5

    .line 397
    invoke-static {v1, v2}, Landroidx/compose/foundation/text/StringHelpers_androidKt;->findPrecedingBreak(Ljava/lang/String;I)I

    move-result v1

    goto :goto_1

    .line 399
    :cond_5
    invoke-static {v1, v2}, Landroidx/compose/foundation/text/StringHelpers_androidKt;->findFollowingBreak(Ljava/lang/String;I)I

    move-result v1

    .line 402
    :goto_1
    invoke-interface {p1}, Landroidx/compose/foundation/text/selection/SelectionLayout;->isStartHandle()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 403
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/Selection;->getStart()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object p1

    invoke-static {p1, v0, v1}, Landroidx/compose/foundation/text/selection/SelectionAdjustmentKt;->changeOffset(Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;Landroidx/compose/foundation/text/selection/SelectableInfo;I)Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v7

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v8, 0x0

    move-object v6, p0

    invoke-static/range {v6 .. v11}, Landroidx/compose/foundation/text/selection/Selection;->copy$default(Landroidx/compose/foundation/text/selection/Selection;Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;ZILjava/lang/Object;)Landroidx/compose/foundation/text/selection/Selection;

    move-result-object p0

    goto :goto_2

    .line 405
    :cond_6
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/Selection;->getEnd()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object p1

    invoke-static {p1, v0, v1}, Landroidx/compose/foundation/text/selection/SelectionAdjustmentKt;->changeOffset(Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;Landroidx/compose/foundation/text/selection/SelectableInfo;I)Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v8

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v7, 0x0

    move-object v6, p0

    invoke-static/range {v6 .. v11}, Landroidx/compose/foundation/text/selection/Selection;->copy$default(Landroidx/compose/foundation/text/selection/Selection;Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;ZILjava/lang/Object;)Landroidx/compose/foundation/text/selection/Selection;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method private static final isExpanding(Landroidx/compose/foundation/text/selection/SelectableInfo;IZ)Z
    .locals 4

    .line 212
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectableInfo;->getRawPreviousHandleOffset()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    .line 215
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectableInfo;->getRawPreviousHandleOffset()I

    move-result v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    return v1

    .line 219
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectableInfo;->getRawCrossStatus()Landroidx/compose/foundation/text/selection/CrossStatus;

    move-result-object v0

    sget-object v3, Landroidx/compose/foundation/text/selection/CrossStatus;->CROSSED:Landroidx/compose/foundation/text/selection/CrossStatus;

    if-ne v0, v3, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    xor-int/2addr p2, v0

    if-eqz p2, :cond_4

    .line 221
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectableInfo;->getRawPreviousHandleOffset()I

    move-result p0

    if-ge p1, p0, :cond_3

    goto :goto_1

    :cond_3
    move v2, v1

    goto :goto_1

    .line 223
    :cond_4
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectableInfo;->getRawPreviousHandleOffset()I

    move-result p0

    if-le p1, p0, :cond_3

    :goto_1
    return v2
.end method

.method private static final snapToWordBoundary(Landroidx/compose/foundation/text/selection/SelectableInfo;IIIZZ)Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;
    .locals 5

    .line 234
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectableInfo;->getTextLayoutResult()Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/compose/ui/text/TextLayoutResult;->getWordBoundary--jx7JFs(I)J

    move-result-wide v0

    .line 239
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectableInfo;->getTextLayoutResult()Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object v2

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/compose/ui/text/TextLayoutResult;->getLineForOffset(I)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 242
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v2

    goto :goto_0

    .line 243
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectableInfo;->getTextLayoutResult()Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/text/TextLayoutResult;->getLineCount()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 247
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectableInfo;->getTextLayoutResult()Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectableInfo;->getTextLayoutResult()Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/ui/text/TextLayoutResult;->getLineCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Landroidx/compose/ui/text/TextLayoutResult;->getLineStart(I)I

    move-result v2

    goto :goto_0

    .line 249
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectableInfo;->getTextLayoutResult()Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroidx/compose/ui/text/TextLayoutResult;->getLineStart(I)I

    move-result v2

    .line 252
    :goto_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectableInfo;->getTextLayoutResult()Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object v3

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/compose/ui/text/TextLayoutResult;->getLineForOffset(I)I

    move-result v3

    if-ne v3, p1, :cond_2

    .line 255
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result p1

    goto :goto_1

    .line 256
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectableInfo;->getTextLayoutResult()Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/text/TextLayoutResult;->getLineCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-lt p1, v0, :cond_3

    .line 260
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectableInfo;->getTextLayoutResult()Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectableInfo;->getTextLayoutResult()Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/text/TextLayoutResult;->getLineCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0, v4, v3, v1}, Landroidx/compose/ui/text/TextLayoutResult;->getLineEnd$default(Landroidx/compose/ui/text/TextLayoutResult;IZILjava/lang/Object;)I

    move-result p1

    goto :goto_1

    .line 262
    :cond_3
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectableInfo;->getTextLayoutResult()Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object v0

    invoke-static {v0, p1, v4, v3, v1}, Landroidx/compose/ui/text/TextLayoutResult;->getLineEnd$default(Landroidx/compose/ui/text/TextLayoutResult;IZILjava/lang/Object;)I

    move-result p1

    :goto_1
    if-ne v2, p3, :cond_4

    .line 269
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/selection/SelectableInfo;->anchorForOffset(I)Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object p0

    return-object p0

    :cond_4
    if-ne p1, p3, :cond_5

    .line 272
    invoke-virtual {p0, v2}, Landroidx/compose/foundation/text/selection/SelectableInfo;->anchorForOffset(I)Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object p0

    return-object p0

    :cond_5
    xor-int p3, p4, p5

    if-eqz p3, :cond_6

    if-gt p2, p1, :cond_7

    goto :goto_2

    :cond_6
    if-lt p2, v2, :cond_8

    :cond_7
    move v2, p1

    .line 288
    :cond_8
    :goto_2
    invoke-virtual {p0, v2}, Landroidx/compose/foundation/text/selection/SelectableInfo;->anchorForOffset(I)Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object p0

    return-object p0
.end method

.method private static final updateSelectionBoundary(Landroidx/compose/foundation/text/selection/SelectionLayout;Landroidx/compose/foundation/text/selection/SelectableInfo;Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;)Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;
    .locals 10

    .line 143
    invoke-interface {p0}, Landroidx/compose/foundation/text/selection/SelectionLayout;->isStartHandle()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/SelectableInfo;->getRawStartHandleOffset()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/SelectableInfo;->getRawEndHandleOffset()I

    move-result v0

    .line 145
    :goto_0
    invoke-interface {p0}, Landroidx/compose/foundation/text/selection/SelectionLayout;->isStartHandle()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Landroidx/compose/foundation/text/selection/SelectionLayout;->getStartSlot()I

    move-result v1

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Landroidx/compose/foundation/text/selection/SelectionLayout;->getEndSlot()I

    move-result v1

    .line 146
    :goto_1
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/SelectableInfo;->getSlot()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 148
    invoke-virtual {p1, v0}, Landroidx/compose/foundation/text/selection/SelectableInfo;->anchorForOffset(I)Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object p0

    return-object p0

    .line 152
    :cond_2
    sget-object v7, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Landroidx/compose/foundation/text/selection/SelectionAdjustmentKt$updateSelectionBoundary$currentRawLine$2;

    invoke-direct {v1, p1, v0}, Landroidx/compose/foundation/text/selection/SelectionAdjustmentKt$updateSelectionBoundary$currentRawLine$2;-><init>(Landroidx/compose/foundation/text/selection/SelectableInfo;I)V

    invoke-static {v7, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v8

    .line 154
    invoke-interface {p0}, Landroidx/compose/foundation/text/selection/SelectionLayout;->isStartHandle()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/SelectableInfo;->getRawEndHandleOffset()I

    move-result v1

    :goto_2
    move v4, v1

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/SelectableInfo;->getRawStartHandleOffset()I

    move-result v1

    goto :goto_2

    .line 157
    :goto_3
    new-instance v9, Landroidx/compose/foundation/text/selection/SelectionAdjustmentKt$updateSelectionBoundary$anchorSnappedToWordBoundary$2;

    move-object v1, v9

    move-object v2, p1

    move v3, v0

    move-object v5, p0

    move-object v6, v8

    invoke-direct/range {v1 .. v6}, Landroidx/compose/foundation/text/selection/SelectionAdjustmentKt$updateSelectionBoundary$anchorSnappedToWordBoundary$2;-><init>(Landroidx/compose/foundation/text/selection/SelectableInfo;IILandroidx/compose/foundation/text/selection/SelectionLayout;Lkotlin/Lazy;)V

    invoke-static {v7, v9}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 167
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/SelectableInfo;->getSelectableId()J

    move-result-wide v2

    invoke-virtual {p2}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getSelectableId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    .line 169
    invoke-static {v1}, Landroidx/compose/foundation/text/selection/SelectionAdjustmentKt;->updateSelectionBoundary$lambda$1(Lkotlin/Lazy;)Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object p0

    return-object p0

    .line 172
    :cond_4
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/SelectableInfo;->getRawPreviousHandleOffset()I

    move-result v2

    if-ne v0, v2, :cond_5

    return-object p2

    .line 178
    :cond_5
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/SelectableInfo;->getTextLayoutResult()Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/compose/ui/text/TextLayoutResult;->getLineForOffset(I)I

    move-result v2

    .line 183
    invoke-static {v8}, Landroidx/compose/foundation/text/selection/SelectionAdjustmentKt;->updateSelectionBoundary$lambda$0(Lkotlin/Lazy;)I

    move-result v3

    if-eq v3, v2, :cond_6

    .line 185
    invoke-static {v1}, Landroidx/compose/foundation/text/selection/SelectionAdjustmentKt;->updateSelectionBoundary$lambda$1(Lkotlin/Lazy;)Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object p0

    return-object p0

    .line 188
    :cond_6
    invoke-virtual {p2}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getOffset()I

    move-result p2

    .line 190
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/SelectableInfo;->getTextLayoutResult()Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroidx/compose/ui/text/TextLayoutResult;->getWordBoundary--jx7JFs(I)J

    move-result-wide v2

    .line 192
    invoke-interface {p0}, Landroidx/compose/foundation/text/selection/SelectionLayout;->isStartHandle()Z

    move-result p0

    invoke-static {p1, v0, p0}, Landroidx/compose/foundation/text/selection/SelectionAdjustmentKt;->isExpanding(Landroidx/compose/foundation/text/selection/SelectableInfo;IZ)Z

    move-result p0

    if-nez p0, :cond_7

    .line 194
    invoke-virtual {p1, v0}, Landroidx/compose/foundation/text/selection/SelectableInfo;->anchorForOffset(I)Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object p0

    return-object p0

    .line 198
    :cond_7
    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result p0

    if-eq p2, p0, :cond_9

    .line 199
    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result p0

    if-ne p2, p0, :cond_8

    goto :goto_4

    .line 208
    :cond_8
    invoke-virtual {p1, v0}, Landroidx/compose/foundation/text/selection/SelectableInfo;->anchorForOffset(I)Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object p0

    return-object p0

    .line 203
    :cond_9
    :goto_4
    invoke-static {v1}, Landroidx/compose/foundation/text/selection/SelectionAdjustmentKt;->updateSelectionBoundary$lambda$1(Lkotlin/Lazy;)Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object p0

    return-object p0
.end method

.method private static final updateSelectionBoundary$lambda$0(Lkotlin/Lazy;)I
    .locals 0

    .line 152
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method private static final updateSelectionBoundary$lambda$1(Lkotlin/Lazy;)Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;
    .locals 0

    .line 157
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    return-object p0
.end method
