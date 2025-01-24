.class final Landroidx/compose/material3/SliderKt$SliderImpl$2$1;
.super Ljava/lang/Object;
.source "Slider.kt"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# instance fields
.field final synthetic $state:Landroidx/compose/material3/SliderState;


# direct methods
.method constructor <init>(Landroidx/compose/material3/SliderState;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/material3/SliderKt$SliderImpl$2$1;->$state:Landroidx/compose/material3/SliderState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 34
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const-string v5, "Collection contains no element matching the predicate."

    if-ge v4, v2, :cond_3

    .line 35
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 545
    check-cast v6, Landroidx/compose/ui/layout/Measurable;

    .line 696
    invoke-static {v6}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Landroidx/compose/material3/SliderComponents;->THUMB:Landroidx/compose/material3/SliderComponents;

    if-ne v7, v8, :cond_2

    move-wide/from16 v7, p3

    invoke-interface {v6, v7, v8}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v2

    .line 34
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v4

    :goto_1
    if-ge v3, v4, :cond_1

    .line 35
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 545
    check-cast v6, Landroidx/compose/ui/layout/Measurable;

    .line 700
    invoke-static {v6}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v9

    sget-object v10, Landroidx/compose/material3/SliderComponents;->TRACK:Landroidx/compose/material3/SliderComponents;

    if-ne v9, v10, :cond_0

    .line 701
    invoke-virtual {v2}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v1

    neg-int v11, v1

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/4 v12, 0x0

    move-wide/from16 v9, p3

    invoke-static/range {v9 .. v14}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U$default(JIIILjava/lang/Object;)J

    move-result-wide v15

    const/16 v21, 0xb

    const/16 v22, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v15 .. v22}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v3

    invoke-interface {v6, v3, v4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v8

    .line 703
    invoke-virtual {v2}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v1

    invoke-virtual {v8}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v3

    add-int/2addr v1, v3

    .line 704
    invoke-virtual {v8}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v3

    invoke-virtual {v2}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 706
    iget-object v4, v0, Landroidx/compose/material3/SliderKt$SliderImpl$2$1;->$state:Landroidx/compose/material3/SliderState;

    invoke-virtual {v8}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5, v1}, Landroidx/compose/material3/SliderState;->updateDimensions$material3_release(FI)V

    .line 708
    invoke-virtual {v2}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v4

    div-int/lit8 v9, v4, 0x2

    .line 709
    invoke-virtual {v8}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v0, v0, Landroidx/compose/material3/SliderKt$SliderImpl$2$1;->$state:Landroidx/compose/material3/SliderState;

    invoke-virtual {v0}, Landroidx/compose/material3/SliderState;->getCoercedValueAsFraction$material3_release()F

    move-result v0

    mul-float/2addr v4, v0

    invoke-static {v4}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v12

    .line 710
    invoke-virtual {v8}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v0

    sub-int v0, v3, v0

    div-int/lit8 v10, v0, 0x2

    .line 711
    invoke-virtual {v2}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v0

    sub-int v0, v3, v0

    div-int/lit8 v13, v0, 0x2

    .line 713
    new-instance v0, Landroidx/compose/material3/SliderKt$SliderImpl$2$1$1;

    move-object v7, v0

    move-object v11, v2

    invoke-direct/range {v7 .. v13}, Landroidx/compose/material3/SliderKt$SliderImpl$2$1$1;-><init>(Landroidx/compose/ui/layout/Placeable;IILandroidx/compose/ui/layout/Placeable;II)V

    const/4 v14, 0x4

    const/4 v15, 0x0

    const/4 v12, 0x0

    move-object/from16 v9, p1

    move v10, v1

    move v11, v3

    move-object v13, v0

    invoke-static/range {v9 .. v15}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 546
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0, v5}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move-wide/from16 v7, p3

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 546
    :cond_3
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0, v5}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
