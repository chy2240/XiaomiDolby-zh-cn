.class final Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$1;
.super Lkotlin/jvm/internal/Lambda;
.source "OutlinedTextField.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $containerPlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $isLabelAbove:Z

.field final synthetic $labelPlaceable:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic $leadingPlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $placeholderPlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $prefixPlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $suffixPlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $supportingPlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $textFieldPlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $this_measure:Landroidx/compose/ui/layout/MeasureScope;

.field final synthetic $totalHeight:I

.field final synthetic $trailingPlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $width:I

.field final synthetic this$0:Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;


# direct methods
.method constructor <init>(Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;IILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/MeasureScope;Z)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$1;->this$0:Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;

    iput p2, p0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$1;->$totalHeight:I

    iput p3, p0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$1;->$width:I

    iput-object p4, p0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$1;->$leadingPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput-object p5, p0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$1;->$trailingPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput-object p6, p0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$1;->$prefixPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput-object p7, p0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$1;->$suffixPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput-object p8, p0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$1;->$textFieldPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput-object p9, p0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$1;->$labelPlaceable:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p10, p0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$1;->$placeholderPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput-object p11, p0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$1;->$containerPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput-object p12, p0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$1;->$supportingPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput-object p13, p0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$1;->$this_measure:Landroidx/compose/ui/layout/MeasureScope;

    iput-boolean p14, p0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$1;->$isLabelAbove:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 977
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$1;->invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    .line 978
    iget-object v1, v0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$1;->this$0:Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;

    .line 979
    iget v3, v0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$1;->$totalHeight:I

    .line 980
    iget v4, v0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$1;->$width:I

    .line 981
    iget-object v5, v0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$1;->$leadingPlaceable:Landroidx/compose/ui/layout/Placeable;

    .line 982
    iget-object v6, v0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$1;->$trailingPlaceable:Landroidx/compose/ui/layout/Placeable;

    .line 983
    iget-object v7, v0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$1;->$prefixPlaceable:Landroidx/compose/ui/layout/Placeable;

    .line 984
    iget-object v8, v0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$1;->$suffixPlaceable:Landroidx/compose/ui/layout/Placeable;

    .line 985
    iget-object v9, v0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$1;->$textFieldPlaceable:Landroidx/compose/ui/layout/Placeable;

    .line 986
    iget-object v10, v0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$1;->$labelPlaceable:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v10, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v10, Landroidx/compose/ui/layout/Placeable;

    .line 987
    iget-object v11, v0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$1;->$placeholderPlaceable:Landroidx/compose/ui/layout/Placeable;

    .line 988
    iget-object v12, v0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$1;->$containerPlaceable:Landroidx/compose/ui/layout/Placeable;

    .line 989
    iget-object v13, v0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$1;->$supportingPlaceable:Landroidx/compose/ui/layout/Placeable;

    .line 990
    iget-object v14, v0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$1;->$this_measure:Landroidx/compose/ui/layout/MeasureScope;

    invoke-interface {v14}, Landroidx/compose/ui/unit/Density;->getDensity()F

    move-result v14

    .line 991
    iget-object v15, v0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$1;->$this_measure:Landroidx/compose/ui/layout/MeasureScope;

    invoke-interface {v15}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v15

    move-object/from16 p1, v1

    .line 992
    iget-boolean v1, v0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$1;->$isLabelAbove:Z

    move/from16 v16, v1

    .line 993
    iget-object v1, v0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$1;->$this_measure:Landroidx/compose/ui/layout/MeasureScope;

    iget-object v0, v0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$1;->this$0:Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;

    invoke-static {v0}, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->access$getHorizontalIconPadding$p(Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;)F

    move-result v0

    invoke-interface {v1, v0}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v17

    move-object/from16 v1, p1

    .line 978
    invoke-static/range {v1 .. v17}, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->access$place(Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;Landroidx/compose/ui/layout/Placeable$PlacementScope;IILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;FLandroidx/compose/ui/unit/LayoutDirection;ZF)V

    return-void
.end method
