.class final Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TextField.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $containerPlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $height:I

.field final synthetic $isLabelAbove:Z

.field final synthetic $labelPlaceable:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic $leadingPlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $placeholderPlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $prefixPlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $suffixPlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $supportingPlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $textFieldPlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $this_measure:Landroidx/compose/ui/layout/MeasureScope;

.field final synthetic $topPaddingValue:I

.field final synthetic $totalHeight:I

.field final synthetic $trailingPlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $width:I

.field final synthetic this$0:Landroidx/compose/material3/TextFieldMeasurePolicy;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;ZLandroidx/compose/material3/TextFieldMeasurePolicy;IILandroidx/compose/ui/layout/MeasureScope;IILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;)V
    .locals 2

    .line 0
    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->$labelPlaceable:Lkotlin/jvm/internal/Ref$ObjectRef;

    move v1, p2

    iput-boolean v1, v0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->$isLabelAbove:Z

    move-object v1, p3

    iput-object v1, v0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->this$0:Landroidx/compose/material3/TextFieldMeasurePolicy;

    move v1, p4

    iput v1, v0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->$height:I

    move v1, p5

    iput v1, v0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->$topPaddingValue:I

    move-object v1, p6

    iput-object v1, v0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->$this_measure:Landroidx/compose/ui/layout/MeasureScope;

    move v1, p7

    iput v1, v0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->$width:I

    move v1, p8

    iput v1, v0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->$totalHeight:I

    move-object v1, p9

    iput-object v1, v0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->$textFieldPlaceable:Landroidx/compose/ui/layout/Placeable;

    move-object v1, p10

    iput-object v1, v0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->$placeholderPlaceable:Landroidx/compose/ui/layout/Placeable;

    move-object v1, p11

    iput-object v1, v0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->$leadingPlaceable:Landroidx/compose/ui/layout/Placeable;

    move-object v1, p12

    iput-object v1, v0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->$trailingPlaceable:Landroidx/compose/ui/layout/Placeable;

    move-object v1, p13

    iput-object v1, v0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->$prefixPlaceable:Landroidx/compose/ui/layout/Placeable;

    move-object/from16 v1, p14

    iput-object v1, v0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->$suffixPlaceable:Landroidx/compose/ui/layout/Placeable;

    move-object/from16 v1, p15

    iput-object v1, v0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->$containerPlaceable:Landroidx/compose/ui/layout/Placeable;

    move-object/from16 v1, p16

    iput-object v1, v0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->$supportingPlaceable:Landroidx/compose/ui/layout/Placeable;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 947
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V
    .locals 34

    move-object/from16 v0, p0

    .line 948
    iget-object v1, v0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->$labelPlaceable:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v1, :cond_4

    .line 951
    iget-boolean v1, v0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->$isLabelAbove:Z

    if-eqz v1, :cond_0

    const/16 v16, 0x0

    goto :goto_1

    .line 952
    :cond_0
    iget-object v1, v0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->this$0:Landroidx/compose/material3/TextFieldMeasurePolicy;

    invoke-static {v1}, Landroidx/compose/material3/TextFieldMeasurePolicy;->access$getSingleLine$p(Landroidx/compose/material3/TextFieldMeasurePolicy;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 953
    sget-object v1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/Alignment$Companion;->getCenterVertically()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v1

    iget-object v3, v0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->$labelPlaceable:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Landroidx/compose/ui/layout/Placeable;

    invoke-virtual {v3}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v3

    iget v4, v0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->$height:I

    invoke-interface {v1, v3, v4}, Landroidx/compose/ui/Alignment$Vertical;->align(II)I

    move-result v1

    :goto_0
    move/from16 v16, v1

    goto :goto_1

    .line 958
    :cond_1
    iget v1, v0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->$topPaddingValue:I

    iget-object v3, v0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->$this_measure:Landroidx/compose/ui/layout/MeasureScope;

    iget-object v4, v0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->this$0:Landroidx/compose/material3/TextFieldMeasurePolicy;

    invoke-static {v4}, Landroidx/compose/material3/TextFieldMeasurePolicy;->access$getMinimizedLabelHalfHeight$p(Landroidx/compose/material3/TextFieldMeasurePolicy;)F

    move-result v4

    invoke-interface {v3, v4}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0

    .line 962
    :goto_1
    iget-boolean v1, v0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->$isLabelAbove:Z

    if-eqz v1, :cond_2

    const/16 v17, 0x0

    goto :goto_2

    .line 963
    :cond_2
    iget v3, v0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->$topPaddingValue:I

    move/from16 v17, v3

    .line 965
    :goto_2
    iget-object v3, v0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->this$0:Landroidx/compose/material3/TextFieldMeasurePolicy;

    .line 966
    iget v5, v0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->$width:I

    .line 967
    iget v6, v0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->$totalHeight:I

    .line 968
    iget-object v7, v0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->$textFieldPlaceable:Landroidx/compose/ui/layout/Placeable;

    .line 969
    iget-object v4, v0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->$labelPlaceable:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v8, v4

    check-cast v8, Landroidx/compose/ui/layout/Placeable;

    .line 970
    iget-object v9, v0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->$placeholderPlaceable:Landroidx/compose/ui/layout/Placeable;

    .line 971
    iget-object v10, v0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->$leadingPlaceable:Landroidx/compose/ui/layout/Placeable;

    .line 972
    iget-object v11, v0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->$trailingPlaceable:Landroidx/compose/ui/layout/Placeable;

    .line 973
    iget-object v12, v0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->$prefixPlaceable:Landroidx/compose/ui/layout/Placeable;

    .line 974
    iget-object v13, v0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->$suffixPlaceable:Landroidx/compose/ui/layout/Placeable;

    .line 975
    iget-object v14, v0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->$containerPlaceable:Landroidx/compose/ui/layout/Placeable;

    .line 976
    iget-object v15, v0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->$supportingPlaceable:Landroidx/compose/ui/layout/Placeable;

    .line 981
    iget v2, v0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->$topPaddingValue:I

    if-eqz v1, :cond_3

    const/16 v18, 0x0

    goto :goto_3

    :cond_3
    check-cast v4, Landroidx/compose/ui/layout/Placeable;

    invoke-virtual {v4}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v4

    move/from16 v18, v4

    :goto_3
    add-int v19, v2, v18

    .line 982
    iget-object v0, v0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->$this_measure:Landroidx/compose/ui/layout/MeasureScope;

    invoke-interface {v0}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v20

    move-object/from16 v4, p1

    move/from16 v18, v1

    .line 965
    invoke-static/range {v3 .. v20}, Landroidx/compose/material3/TextFieldMeasurePolicy;->access$placeWithLabel(Landroidx/compose/material3/TextFieldMeasurePolicy;Landroidx/compose/ui/layout/Placeable$PlacementScope;IILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;IIZILandroidx/compose/ui/unit/LayoutDirection;)V

    goto :goto_4

    .line 985
    :cond_4
    iget-object v1, v0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->this$0:Landroidx/compose/material3/TextFieldMeasurePolicy;

    .line 986
    iget v2, v0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->$width:I

    .line 987
    iget v3, v0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->$totalHeight:I

    .line 988
    iget-object v4, v0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->$textFieldPlaceable:Landroidx/compose/ui/layout/Placeable;

    .line 989
    iget-object v5, v0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->$placeholderPlaceable:Landroidx/compose/ui/layout/Placeable;

    .line 990
    iget-object v6, v0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->$leadingPlaceable:Landroidx/compose/ui/layout/Placeable;

    .line 991
    iget-object v7, v0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->$trailingPlaceable:Landroidx/compose/ui/layout/Placeable;

    .line 992
    iget-object v8, v0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->$prefixPlaceable:Landroidx/compose/ui/layout/Placeable;

    .line 993
    iget-object v9, v0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->$suffixPlaceable:Landroidx/compose/ui/layout/Placeable;

    .line 994
    iget-object v10, v0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->$containerPlaceable:Landroidx/compose/ui/layout/Placeable;

    .line 995
    iget-object v11, v0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->$supportingPlaceable:Landroidx/compose/ui/layout/Placeable;

    .line 996
    iget-object v0, v0, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;->$this_measure:Landroidx/compose/ui/layout/MeasureScope;

    invoke-interface {v0}, Landroidx/compose/ui/unit/Density;->getDensity()F

    move-result v33

    move-object/from16 v21, v1

    move-object/from16 v22, p1

    move/from16 v23, v2

    move/from16 v24, v3

    move-object/from16 v25, v4

    move-object/from16 v26, v5

    move-object/from16 v27, v6

    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v30, v9

    move-object/from16 v31, v10

    move-object/from16 v32, v11

    .line 985
    invoke-static/range {v21 .. v33}, Landroidx/compose/material3/TextFieldMeasurePolicy;->access$placeWithoutLabel(Landroidx/compose/material3/TextFieldMeasurePolicy;Landroidx/compose/ui/layout/Placeable$PlacementScope;IILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;F)V

    :goto_4
    return-void
.end method
