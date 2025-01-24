.class public final Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;
.super Ljava/lang/Object;
.source "RowColumnImpl.kt"


# static fields
.field public static final INSTANCE:Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;

    invoke-direct {v0}, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;-><init>()V

    sput-object v0, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;->INSTANCE:Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final HorizontalMaxHeight(Ljava/util/List;II)I
    .locals 9

    .line 447
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    goto/16 :goto_6

    .line 448
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    mul-int/2addr p0, p3

    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 34
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p3

    const/4 v1, 0x0

    move v2, v0

    move v4, v2

    move v3, v1

    :goto_0
    const v5, 0x7fffffff

    if-ge v2, p3, :cond_4

    .line 35
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 36
    check-cast v6, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 452
    invoke-static {v6}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getRowColumnParentData(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Landroidx/compose/foundation/layout/RowColumnParentData;

    move-result-object v7

    invoke-static {v7}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getWeight(Landroidx/compose/foundation/layout/RowColumnParentData;)F

    move-result v7

    cmpg-float v8, v7, v1

    if-nez v8, :cond_2

    if-ne p2, v5, :cond_1

    move v7, v5

    goto :goto_1

    :cond_1
    sub-int v7, p2, p0

    .line 394
    :goto_1
    invoke-interface {v6, v5}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicWidth(I)I

    move-result v5

    .line 459
    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/2addr p0, v5

    .line 395
    invoke-interface {v6, v5}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicHeight(I)I

    move-result v5

    .line 462
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_2

    :cond_2
    cmpl-float v5, v7, v1

    if-lez v5, :cond_3

    add-float/2addr v3, v7

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    cmpg-float p3, v3, v1

    if-nez p3, :cond_5

    move p0, v0

    goto :goto_3

    :cond_5
    if-ne p2, v5, :cond_6

    move p0, v5

    goto :goto_3

    :cond_6
    sub-int/2addr p2, p0

    .line 475
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v3

    .line 26
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 34
    :goto_3
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p2

    :goto_4
    if-ge v0, p2, :cond_9

    .line 35
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    .line 36
    check-cast p3, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 479
    invoke-static {p3}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getRowColumnParentData(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Landroidx/compose/foundation/layout/RowColumnParentData;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getWeight(Landroidx/compose/foundation/layout/RowColumnParentData;)F

    move-result v2

    cmpl-float v3, v2, v1

    if-lez v3, :cond_8

    if-eq p0, v5, :cond_7

    int-to-float v3, p0

    mul-float/2addr v3, v2

    .line 26
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    goto :goto_5

    :cond_7
    move v2, v5

    .line 395
    :goto_5
    invoke-interface {p3, v2}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicHeight(I)I

    move-result p3

    .line 483
    invoke-static {v4, p3}, Ljava/lang/Math;->max(II)I

    move-result v4

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_9
    move v0, v4

    :goto_6
    return v0
.end method

.method public final HorizontalMaxWidth(Ljava/util/List;II)I
    .locals 8

    .line 421
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    goto :goto_2

    .line 34
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p0

    const/4 v1, 0x0

    move v2, v0

    move v3, v2

    move v4, v1

    :goto_0
    if-ge v0, p0, :cond_3

    .line 35
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 36
    check-cast v5, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 426
    invoke-static {v5}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getRowColumnParentData(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Landroidx/compose/foundation/layout/RowColumnParentData;

    move-result-object v6

    invoke-static {v6}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getWeight(Landroidx/compose/foundation/layout/RowColumnParentData;)F

    move-result v6

    .line 367
    invoke-interface {v5, p2}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicWidth(I)I

    move-result v5

    cmpg-float v7, v6, v1

    if-nez v7, :cond_1

    add-int/2addr v3, v5

    goto :goto_1

    :cond_1
    cmpl-float v7, v6, v1

    if-lez v7, :cond_2

    add-float/2addr v4, v6

    int-to-float v5, v5

    div-float/2addr v5, v6

    .line 26
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 432
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    int-to-float p0, v2

    mul-float/2addr p0, v4

    .line 26
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    add-int/2addr p0, v3

    .line 437
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    mul-int/2addr p1, p3

    add-int v0, p0, p1

    :goto_2
    return v0
.end method

.method public final HorizontalMinHeight(Ljava/util/List;II)I
    .locals 9

    .line 447
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    goto/16 :goto_6

    .line 448
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    mul-int/2addr p0, p3

    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 34
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p3

    const/4 v1, 0x0

    move v2, v0

    move v4, v2

    move v3, v1

    :goto_0
    const v5, 0x7fffffff

    if-ge v2, p3, :cond_4

    .line 35
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 36
    check-cast v6, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 452
    invoke-static {v6}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getRowColumnParentData(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Landroidx/compose/foundation/layout/RowColumnParentData;

    move-result-object v7

    invoke-static {v7}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getWeight(Landroidx/compose/foundation/layout/RowColumnParentData;)F

    move-result v7

    cmpg-float v8, v7, v1

    if-nez v8, :cond_2

    if-ne p2, v5, :cond_1

    move v7, v5

    goto :goto_1

    :cond_1
    sub-int v7, p2, p0

    .line 340
    :goto_1
    invoke-interface {v6, v5}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicWidth(I)I

    move-result v5

    .line 459
    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/2addr p0, v5

    .line 341
    invoke-interface {v6, v5}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->minIntrinsicHeight(I)I

    move-result v5

    .line 462
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_2

    :cond_2
    cmpl-float v5, v7, v1

    if-lez v5, :cond_3

    add-float/2addr v3, v7

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    cmpg-float p3, v3, v1

    if-nez p3, :cond_5

    move p0, v0

    goto :goto_3

    :cond_5
    if-ne p2, v5, :cond_6

    move p0, v5

    goto :goto_3

    :cond_6
    sub-int/2addr p2, p0

    .line 475
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v3

    .line 26
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 34
    :goto_3
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p2

    :goto_4
    if-ge v0, p2, :cond_9

    .line 35
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    .line 36
    check-cast p3, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 479
    invoke-static {p3}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getRowColumnParentData(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Landroidx/compose/foundation/layout/RowColumnParentData;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getWeight(Landroidx/compose/foundation/layout/RowColumnParentData;)F

    move-result v2

    cmpl-float v3, v2, v1

    if-lez v3, :cond_8

    if-eq p0, v5, :cond_7

    int-to-float v3, p0

    mul-float/2addr v3, v2

    .line 26
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    goto :goto_5

    :cond_7
    move v2, v5

    .line 341
    :goto_5
    invoke-interface {p3, v2}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->minIntrinsicHeight(I)I

    move-result p3

    .line 483
    invoke-static {v4, p3}, Ljava/lang/Math;->max(II)I

    move-result v4

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_9
    move v0, v4

    :goto_6
    return v0
.end method

.method public final HorizontalMinWidth(Ljava/util/List;II)I
    .locals 8

    .line 421
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    goto :goto_2

    .line 34
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p0

    const/4 v1, 0x0

    move v2, v0

    move v3, v2

    move v4, v1

    :goto_0
    if-ge v0, p0, :cond_3

    .line 35
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 36
    check-cast v5, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 426
    invoke-static {v5}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getRowColumnParentData(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Landroidx/compose/foundation/layout/RowColumnParentData;

    move-result-object v6

    invoke-static {v6}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getWeight(Landroidx/compose/foundation/layout/RowColumnParentData;)F

    move-result v6

    .line 313
    invoke-interface {v5, p2}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->minIntrinsicWidth(I)I

    move-result v5

    cmpg-float v7, v6, v1

    if-nez v7, :cond_1

    add-int/2addr v3, v5

    goto :goto_1

    :cond_1
    cmpl-float v7, v6, v1

    if-lez v7, :cond_2

    add-float/2addr v4, v6

    int-to-float v5, v5

    div-float/2addr v5, v6

    .line 26
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 432
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    int-to-float p0, v2

    mul-float/2addr p0, v4

    .line 26
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    add-int/2addr p0, v3

    .line 437
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    mul-int/2addr p1, p3

    add-int v0, p0, p1

    :goto_2
    return v0
.end method

.method public final VerticalMaxHeight(Ljava/util/List;II)I
    .locals 8

    .line 421
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    goto :goto_2

    .line 34
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p0

    const/4 v1, 0x0

    move v2, v0

    move v3, v2

    move v4, v1

    :goto_0
    if-ge v0, p0, :cond_3

    .line 35
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 36
    check-cast v5, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 426
    invoke-static {v5}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getRowColumnParentData(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Landroidx/compose/foundation/layout/RowColumnParentData;

    move-result-object v6

    invoke-static {v6}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getWeight(Landroidx/compose/foundation/layout/RowColumnParentData;)F

    move-result v6

    .line 408
    invoke-interface {v5, p2}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicHeight(I)I

    move-result v5

    cmpg-float v7, v6, v1

    if-nez v7, :cond_1

    add-int/2addr v3, v5

    goto :goto_1

    :cond_1
    cmpl-float v7, v6, v1

    if-lez v7, :cond_2

    add-float/2addr v4, v6

    int-to-float v5, v5

    div-float/2addr v5, v6

    .line 26
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 432
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    int-to-float p0, v2

    mul-float/2addr p0, v4

    .line 26
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    add-int/2addr p0, v3

    .line 437
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    mul-int/2addr p1, p3

    add-int v0, p0, p1

    :goto_2
    return v0
.end method

.method public final VerticalMaxWidth(Ljava/util/List;II)I
    .locals 9

    .line 447
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    goto/16 :goto_6

    .line 448
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    mul-int/2addr p0, p3

    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 34
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p3

    const/4 v1, 0x0

    move v2, v0

    move v4, v2

    move v3, v1

    :goto_0
    const v5, 0x7fffffff

    if-ge v2, p3, :cond_4

    .line 35
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 36
    check-cast v6, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 452
    invoke-static {v6}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getRowColumnParentData(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Landroidx/compose/foundation/layout/RowColumnParentData;

    move-result-object v7

    invoke-static {v7}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getWeight(Landroidx/compose/foundation/layout/RowColumnParentData;)F

    move-result v7

    cmpg-float v8, v7, v1

    if-nez v8, :cond_2

    if-ne p2, v5, :cond_1

    move v7, v5

    goto :goto_1

    :cond_1
    sub-int v7, p2, p0

    .line 380
    :goto_1
    invoke-interface {v6, v5}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicHeight(I)I

    move-result v5

    .line 459
    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/2addr p0, v5

    .line 381
    invoke-interface {v6, v5}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicWidth(I)I

    move-result v5

    .line 462
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_2

    :cond_2
    cmpl-float v5, v7, v1

    if-lez v5, :cond_3

    add-float/2addr v3, v7

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    cmpg-float p3, v3, v1

    if-nez p3, :cond_5

    move p0, v0

    goto :goto_3

    :cond_5
    if-ne p2, v5, :cond_6

    move p0, v5

    goto :goto_3

    :cond_6
    sub-int/2addr p2, p0

    .line 475
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v3

    .line 26
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 34
    :goto_3
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p2

    :goto_4
    if-ge v0, p2, :cond_9

    .line 35
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    .line 36
    check-cast p3, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 479
    invoke-static {p3}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getRowColumnParentData(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Landroidx/compose/foundation/layout/RowColumnParentData;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getWeight(Landroidx/compose/foundation/layout/RowColumnParentData;)F

    move-result v2

    cmpl-float v3, v2, v1

    if-lez v3, :cond_8

    if-eq p0, v5, :cond_7

    int-to-float v3, p0

    mul-float/2addr v3, v2

    .line 26
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    goto :goto_5

    :cond_7
    move v2, v5

    .line 381
    :goto_5
    invoke-interface {p3, v2}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicWidth(I)I

    move-result p3

    .line 483
    invoke-static {v4, p3}, Ljava/lang/Math;->max(II)I

    move-result v4

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_9
    move v0, v4

    :goto_6
    return v0
.end method

.method public final VerticalMinHeight(Ljava/util/List;II)I
    .locals 8

    .line 421
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    goto :goto_2

    .line 34
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p0

    const/4 v1, 0x0

    move v2, v0

    move v3, v2

    move v4, v1

    :goto_0
    if-ge v0, p0, :cond_3

    .line 35
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 36
    check-cast v5, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 426
    invoke-static {v5}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getRowColumnParentData(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Landroidx/compose/foundation/layout/RowColumnParentData;

    move-result-object v6

    invoke-static {v6}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getWeight(Landroidx/compose/foundation/layout/RowColumnParentData;)F

    move-result v6

    .line 354
    invoke-interface {v5, p2}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->minIntrinsicHeight(I)I

    move-result v5

    cmpg-float v7, v6, v1

    if-nez v7, :cond_1

    add-int/2addr v3, v5

    goto :goto_1

    :cond_1
    cmpl-float v7, v6, v1

    if-lez v7, :cond_2

    add-float/2addr v4, v6

    int-to-float v5, v5

    div-float/2addr v5, v6

    .line 26
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 432
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    int-to-float p0, v2

    mul-float/2addr p0, v4

    .line 26
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    add-int/2addr p0, v3

    .line 437
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    mul-int/2addr p1, p3

    add-int v0, p0, p1

    :goto_2
    return v0
.end method

.method public final VerticalMinWidth(Ljava/util/List;II)I
    .locals 9

    .line 447
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    goto/16 :goto_6

    .line 448
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    mul-int/2addr p0, p3

    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 34
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p3

    const/4 v1, 0x0

    move v2, v0

    move v4, v2

    move v3, v1

    :goto_0
    const v5, 0x7fffffff

    if-ge v2, p3, :cond_4

    .line 35
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 36
    check-cast v6, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 452
    invoke-static {v6}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getRowColumnParentData(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Landroidx/compose/foundation/layout/RowColumnParentData;

    move-result-object v7

    invoke-static {v7}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getWeight(Landroidx/compose/foundation/layout/RowColumnParentData;)F

    move-result v7

    cmpg-float v8, v7, v1

    if-nez v8, :cond_2

    if-ne p2, v5, :cond_1

    move v7, v5

    goto :goto_1

    :cond_1
    sub-int v7, p2, p0

    .line 326
    :goto_1
    invoke-interface {v6, v5}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicHeight(I)I

    move-result v5

    .line 459
    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/2addr p0, v5

    .line 327
    invoke-interface {v6, v5}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->minIntrinsicWidth(I)I

    move-result v5

    .line 462
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_2

    :cond_2
    cmpl-float v5, v7, v1

    if-lez v5, :cond_3

    add-float/2addr v3, v7

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    cmpg-float p3, v3, v1

    if-nez p3, :cond_5

    move p0, v0

    goto :goto_3

    :cond_5
    if-ne p2, v5, :cond_6

    move p0, v5

    goto :goto_3

    :cond_6
    sub-int/2addr p2, p0

    .line 475
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v3

    .line 26
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 34
    :goto_3
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p2

    :goto_4
    if-ge v0, p2, :cond_9

    .line 35
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    .line 36
    check-cast p3, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 479
    invoke-static {p3}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getRowColumnParentData(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Landroidx/compose/foundation/layout/RowColumnParentData;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getWeight(Landroidx/compose/foundation/layout/RowColumnParentData;)F

    move-result v2

    cmpl-float v3, v2, v1

    if-lez v3, :cond_8

    if-eq p0, v5, :cond_7

    int-to-float v3, p0

    mul-float/2addr v3, v2

    .line 26
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    goto :goto_5

    :cond_7
    move v2, v5

    .line 327
    :goto_5
    invoke-interface {p3, v2}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->minIntrinsicWidth(I)I

    move-result p3

    .line 483
    invoke-static {v4, p3}, Ljava/lang/Math;->max(II)I

    move-result v4

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_9
    move v0, v4

    :goto_6
    return v0
.end method
