.class final Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;
.super Ljava/lang/Object;
.source "OutlinedTextField.kt"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# instance fields
.field private final horizontalIconPadding:F

.field private final labelPosition:Landroidx/compose/material3/TextFieldLabelPosition;

.field private final labelProgress:F

.field private final onLabelMeasured:Lkotlin/jvm/functions/Function1;

.field private final paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

.field private final singleLine:Z


# direct methods
.method private constructor <init>(Lkotlin/jvm/functions/Function1;ZLandroidx/compose/material3/TextFieldLabelPosition;FLandroidx/compose/foundation/layout/PaddingValues;F)V
    .locals 0

    .line 795
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 796
    iput-object p1, p0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->onLabelMeasured:Lkotlin/jvm/functions/Function1;

    .line 797
    iput-boolean p2, p0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->singleLine:Z

    .line 798
    iput-object p3, p0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->labelPosition:Landroidx/compose/material3/TextFieldLabelPosition;

    .line 799
    iput p4, p0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->labelProgress:F

    .line 800
    iput-object p5, p0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    .line 801
    iput p6, p0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->horizontalIconPadding:F

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;ZLandroidx/compose/material3/TextFieldLabelPosition;FLandroidx/compose/foundation/layout/PaddingValues;FLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;-><init>(Lkotlin/jvm/functions/Function1;ZLandroidx/compose/material3/TextFieldLabelPosition;FLandroidx/compose/foundation/layout/PaddingValues;F)V

    return-void
.end method

.method public static final synthetic access$getHorizontalIconPadding$p(Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;)F
    .locals 0

    .line 795
    iget p0, p0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->horizontalIconPadding:F

    return p0
.end method

.method public static final synthetic access$place(Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;Landroidx/compose/ui/layout/Placeable$PlacementScope;IILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;FLandroidx/compose/ui/unit/LayoutDirection;ZF)V
    .locals 0

    .line 795
    invoke-direct/range {p0 .. p16}, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->place(Landroidx/compose/ui/layout/Placeable$PlacementScope;IILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;FLandroidx/compose/ui/unit/LayoutDirection;ZF)V

    return-void
.end method

.method private final calculateHeight-aSWTPvA(Landroidx/compose/ui/unit/Density;IIIIIIIIJZ)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p12, :cond_0

    move v1, v0

    goto :goto_0

    .line 1216
    :cond_0
    iget v1, p0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->labelProgress:F

    invoke-static {p7, v0, v1}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(IIF)I

    move-result v1

    :goto_0
    filled-new-array {p8, p4, p5, v1}, [I

    move-result-object p4

    .line 1211
    invoke-static {p6, p4}, Lkotlin/comparisons/ComparisonsKt;->maxOf(I[I)I

    move-result p4

    .line 1218
    iget-object p5, p0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-interface {p5}, Landroidx/compose/foundation/layout/PaddingValues;->calculateTopPadding-D9Ej5fM()F

    move-result p5

    invoke-interface {p1, p5}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result p5

    if-eqz p12, :cond_1

    goto :goto_1

    :cond_1
    int-to-float p6, p7

    const/high16 p8, 0x40000000    # 2.0f

    div-float/2addr p6, p8

    .line 1223
    invoke-static {p5, p6}, Ljava/lang/Math;->max(FF)F

    move-result p6

    iget p8, p0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->labelProgress:F

    invoke-static {p5, p6, p8}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result p5

    .line 1225
    :goto_1
    iget-object p0, p0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-interface {p0}, Landroidx/compose/foundation/layout/PaddingValues;->calculateBottomPadding-D9Ej5fM()F

    move-result p0

    invoke-interface {p1, p0}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result p0

    int-to-float p1, p4

    add-float/2addr p5, p1

    add-float/2addr p5, p0

    .line 1229
    invoke-static {p10, p11}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result p0

    if-eqz p12, :cond_2

    goto :goto_2

    :cond_2
    move p7, v0

    .line 1231
    :goto_2
    invoke-static {p5}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p1

    invoke-static {p3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/2addr p7, p1

    add-int/2addr p7, p9

    .line 1230
    invoke-static {p0, p7}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private final calculateWidth-xygx4p4(Landroidx/compose/ui/unit/Density;IIIIIIIJ)I
    .locals 0

    add-int/2addr p4, p5

    add-int/2addr p6, p4

    add-int/2addr p8, p4

    const/4 p4, 0x0

    .line 1179
    iget p5, p0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->labelProgress:F

    invoke-static {p7, p4, p5}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(IIF)I

    move-result p4

    invoke-static {p8, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    invoke-static {p6, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    add-int/2addr p2, p4

    add-int/2addr p2, p3

    .line 1185
    iget-object p3, p0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    sget-object p4, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    invoke-interface {p3, p4}, Landroidx/compose/foundation/layout/PaddingValues;->calculateLeftPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result p3

    .line 1186
    iget-object p5, p0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-interface {p5, p4}, Landroidx/compose/foundation/layout/PaddingValues;->calculateRightPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result p4

    add-float/2addr p3, p4

    .line 51
    invoke-static {p3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p3

    .line 1187
    invoke-interface {p1, p3}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result p1

    int-to-float p3, p7

    add-float/2addr p3, p1

    .line 1189
    iget p0, p0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->labelProgress:F

    mul-float/2addr p3, p0

    invoke-static {p3}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p0

    .line 1190
    invoke-static {p9, p10}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private final intrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;ILkotlin/jvm/functions/Function2;)I
    .locals 20

    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p4

    .line 34
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    .line 35
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 117
    move-object v8, v7

    check-cast v8, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 1085
    invoke-static {v8}, Landroidx/compose/material3/internal/LayoutUtilKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "Leading"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :goto_1
    check-cast v7, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    const v3, 0x7fffffff

    if-eqz v7, :cond_2

    .line 1089
    invoke-interface {v7, v3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicWidth(I)I

    move-result v5

    .line 1088
    invoke-static {v1, v5}, Landroidx/compose/material3/internal/LayoutUtilKt;->subtractConstraintSafely(II)I

    move-result v5

    .line 1091
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    move v9, v7

    goto :goto_2

    :cond_2
    move v5, v1

    const/4 v9, 0x0

    .line 34
    :goto_2
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v7, :cond_4

    .line 35
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 117
    move-object v11, v10

    check-cast v11, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 1095
    invoke-static {v11}, Landroidx/compose/material3/internal/LayoutUtilKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v11

    const-string v12, "Trailing"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_4
    const/4 v10, 0x0

    :goto_4
    check-cast v10, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v10, :cond_5

    .line 1099
    invoke-interface {v10, v3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicWidth(I)I

    move-result v7

    .line 1098
    invoke-static {v5, v7}, Landroidx/compose/material3/internal/LayoutUtilKt;->subtractConstraintSafely(II)I

    move-result v5

    .line 1101
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v10, v7}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    move v10, v7

    goto :goto_5

    :cond_5
    const/4 v10, 0x0

    .line 34
    :goto_5
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_6
    if-ge v8, v7, :cond_7

    .line 35
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 117
    move-object v12, v11

    check-cast v12, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 1106
    invoke-static {v12}, Landroidx/compose/material3/internal/LayoutUtilKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v12

    const-string v13, "Label"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    goto :goto_7

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_7
    const/4 v11, 0x0

    :goto_7
    check-cast v11, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    move-object/from16 v7, p0

    if-eqz v11, :cond_8

    .line 1107
    iget v8, v7, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->labelProgress:F

    invoke-static {v5, v1, v8}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(IIF)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v11, v8}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    move v14, v8

    goto :goto_8

    :cond_8
    const/4 v14, 0x0

    .line 34
    :goto_8
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v8

    const/4 v11, 0x0

    :goto_9
    if-ge v11, v8, :cond_a

    .line 35
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 117
    move-object v13, v12

    check-cast v13, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 1111
    invoke-static {v13}, Landroidx/compose/material3/internal/LayoutUtilKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v13

    const-string v15, "Prefix"

    invoke-static {v13, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    goto :goto_a

    :cond_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    :cond_a
    const/4 v12, 0x0

    :goto_a
    check-cast v12, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v12, :cond_b

    .line 1113
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v12, v8}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    .line 1116
    invoke-interface {v12, v3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicWidth(I)I

    move-result v11

    .line 1115
    invoke-static {v5, v11}, Landroidx/compose/material3/internal/LayoutUtilKt;->subtractConstraintSafely(II)I

    move-result v5

    move v11, v8

    goto :goto_b

    :cond_b
    const/4 v11, 0x0

    .line 34
    :goto_b
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v8

    const/4 v12, 0x0

    :goto_c
    if-ge v12, v8, :cond_d

    .line 35
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .line 117
    move-object v15, v13

    check-cast v15, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 1122
    invoke-static {v15}, Landroidx/compose/material3/internal/LayoutUtilKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v15

    const-string v4, "Suffix"

    invoke-static {v15, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    goto :goto_d

    :cond_c
    add-int/lit8 v12, v12, 0x1

    goto :goto_c

    :cond_d
    const/4 v13, 0x0

    :goto_d
    check-cast v13, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v13, :cond_e

    .line 1124
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v13, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 1127
    invoke-interface {v13, v3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicWidth(I)I

    move-result v3

    .line 1126
    invoke-static {v5, v3}, Landroidx/compose/material3/internal/LayoutUtilKt;->subtractConstraintSafely(II)I

    move-result v5

    move v12, v4

    goto :goto_e

    :cond_e
    const/4 v12, 0x0

    .line 34
    :goto_e
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_f
    if-ge v4, v3, :cond_16

    .line 35
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 545
    move-object v13, v8

    check-cast v13, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 1133
    invoke-static {v13}, Landroidx/compose/material3/internal/LayoutUtilKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v13

    const-string v15, "TextField"

    invoke-static {v13, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_15

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v8, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v13

    .line 34
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_10
    if-ge v4, v3, :cond_10

    .line 35
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 117
    move-object v15, v8

    check-cast v15, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 1137
    invoke-static {v15}, Landroidx/compose/material3/internal/LayoutUtilKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v15

    const-string v6, "Hint"

    invoke-static {v15, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    goto :goto_11

    :cond_f
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_10
    const/4 v8, 0x0

    :goto_11
    check-cast v8, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v8, :cond_11

    .line 1138
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v8, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    move v15, v3

    goto :goto_12

    :cond_11
    const/4 v15, 0x0

    .line 34
    :goto_12
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_13
    if-ge v4, v3, :cond_13

    .line 35
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 117
    move-object v6, v5

    check-cast v6, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 1142
    invoke-static {v6}, Landroidx/compose/material3/internal/LayoutUtilKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v6

    const-string v8, "Supporting"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    move-object v6, v5

    goto :goto_14

    :cond_12
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    :cond_13
    const/4 v6, 0x0

    :goto_14
    check-cast v6, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v6, :cond_14

    .line 1143
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v6, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v4

    move/from16 v16, v4

    goto :goto_15

    :cond_14
    const/16 v16, 0x0

    :goto_15
    const/16 v4, 0xf

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1154
    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(IIIIILjava/lang/Object;)J

    move-result-wide v17

    const/16 v19, 0x0

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 1145
    invoke-direct/range {v7 .. v19}, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->calculateHeight-aSWTPvA(Landroidx/compose/ui/unit/Density;IIIIIIIIJZ)I

    move-result v0

    return v0

    :cond_15
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_f

    .line 546
    :cond_16
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Collection contains no element matching the predicate."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final intrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;ILkotlin/jvm/functions/Function2;)I
    .locals 15

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    .line 34
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_13

    .line 35
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 545
    move-object v6, v5

    check-cast v6, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 1040
    invoke-static {v6}, Landroidx/compose/material3/internal/LayoutUtilKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "TextField"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v5, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v10

    .line 34
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    move v4, v3

    :goto_1
    const/4 v5, 0x0

    if-ge v4, v2, :cond_1

    .line 35
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 117
    move-object v7, v6

    check-cast v7, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 1043
    invoke-static {v7}, Landroidx/compose/material3/internal/LayoutUtilKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "Label"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    move-object v6, v5

    :goto_2
    check-cast v6, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v6, :cond_2

    .line 1044
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v6, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    move v11, v2

    goto :goto_3

    :cond_2
    move v11, v3

    .line 34
    :goto_3
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    move v4, v3

    :goto_4
    if-ge v4, v2, :cond_4

    .line 35
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 117
    move-object v7, v6

    check-cast v7, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 1047
    invoke-static {v7}, Landroidx/compose/material3/internal/LayoutUtilKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "Trailing"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_5

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_4
    move-object v6, v5

    :goto_5
    check-cast v6, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v6, :cond_5

    .line 1048
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v6, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    move v7, v2

    goto :goto_6

    :cond_5
    move v7, v3

    .line 34
    :goto_6
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    move v4, v3

    :goto_7
    if-ge v4, v2, :cond_7

    .line 35
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 117
    move-object v8, v6

    check-cast v8, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 1051
    invoke-static {v8}, Landroidx/compose/material3/internal/LayoutUtilKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "Leading"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_8

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_7
    move-object v6, v5

    :goto_8
    check-cast v6, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v6, :cond_8

    .line 1052
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v6, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    move v6, v2

    goto :goto_9

    :cond_8
    move v6, v3

    .line 34
    :goto_9
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    move v4, v3

    :goto_a
    if-ge v4, v2, :cond_a

    .line 35
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 117
    move-object v9, v8

    check-cast v9, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 1055
    invoke-static {v9}, Landroidx/compose/material3/internal/LayoutUtilKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v9

    const-string v12, "Prefix"

    invoke-static {v9, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    goto :goto_b

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_a
    move-object v8, v5

    :goto_b
    check-cast v8, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v8, :cond_b

    .line 1056
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v8, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    move v8, v2

    goto :goto_c

    :cond_b
    move v8, v3

    .line 34
    :goto_c
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    move v4, v3

    :goto_d
    if-ge v4, v2, :cond_d

    .line 35
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 117
    move-object v12, v9

    check-cast v12, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 1059
    invoke-static {v12}, Landroidx/compose/material3/internal/LayoutUtilKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v12

    const-string v13, "Suffix"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    goto :goto_e

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_d
    move-object v9, v5

    :goto_e
    check-cast v9, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v9, :cond_e

    .line 1060
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v9, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    move v9, v2

    goto :goto_f

    :cond_e
    move v9, v3

    .line 34
    :goto_f
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    move v4, v3

    :goto_10
    if-ge v4, v2, :cond_10

    .line 35
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 117
    move-object v13, v12

    check-cast v13, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 1063
    invoke-static {v13}, Landroidx/compose/material3/internal/LayoutUtilKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v13

    const-string v14, "Hint"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    move-object v5, v12

    goto :goto_11

    :cond_f
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_10
    :goto_11
    check-cast v5, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v5, :cond_11

    .line 1064
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v5, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v3

    :cond_11
    move v12, v3

    const/16 v4, 0xf

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1073
    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(IIIIILjava/lang/Object;)J

    move-result-wide v13

    move-object v4, p0

    move-object/from16 v5, p1

    .line 1065
    invoke-direct/range {v4 .. v14}, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->calculateWidth-xygx4p4(Landroidx/compose/ui/unit/Density;IIIIIIIJ)I

    move-result v0

    return v0

    :cond_12
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 546
    :cond_13
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Collection contains no element matching the predicate."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final place(Landroidx/compose/ui/layout/Placeable$PlacementScope;IILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;FLandroidx/compose/ui/unit/LayoutDirection;ZF)V
    .locals 24

    move-object/from16 v6, p0

    move/from16 v7, p3

    move-object/from16 v0, p14

    const/4 v1, 0x0

    if-eqz p15, :cond_0

    .line 1257
    invoke-static/range {p9 .. p9}, Landroidx/compose/material3/internal/LayoutUtilKt;->getHeightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v2

    move v15, v2

    goto :goto_0

    :cond_0
    move v15, v1

    :goto_0
    const/4 v13, 0x4

    const/4 v14, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v8, p1

    move-object/from16 v9, p11

    move v11, v15

    .line 1260
    invoke-static/range {v8 .. v14}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 1266
    invoke-static/range {p12 .. p12}, Landroidx/compose/material3/internal/LayoutUtilKt;->getHeightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v2

    sub-int v2, p2, v2

    if-eqz p15, :cond_1

    .line 1267
    invoke-static/range {p9 .. p9}, Landroidx/compose/material3/internal/LayoutUtilKt;->getHeightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v3

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    sub-int v5, v2, v3

    .line 1269
    iget-object v2, v6, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-interface {v2}, Landroidx/compose/foundation/layout/PaddingValues;->calculateTopPadding-D9Ej5fM()F

    move-result v2

    mul-float v2, v2, p13

    invoke-static {v2}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v16

    if-eqz p4, :cond_2

    .line 1274
    sget-object v2, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/Alignment$Companion;->getCenterVertically()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v2

    invoke-virtual/range {p4 .. p4}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v3

    invoke-interface {v2, v3, v5}, Landroidx/compose/ui/Alignment$Vertical;->align(II)I

    move-result v2

    add-int v11, v15, v2

    const/4 v13, 0x4

    const/4 v14, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v8, p1

    move-object/from16 v9, p4

    .line 1272
    invoke-static/range {v8 .. v14}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    :cond_2
    if-eqz p9, :cond_b

    if-eqz p15, :cond_3

    move v2, v1

    goto :goto_2

    .line 1283
    :cond_3
    iget-boolean v2, v6, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->singleLine:Z

    if-eqz v2, :cond_4

    sget-object v2, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/Alignment$Companion;->getCenterVertically()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v2

    invoke-virtual/range {p9 .. p9}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v3

    invoke-interface {v2, v3, v5}, Landroidx/compose/ui/Alignment$Vertical;->align(II)I

    move-result v2

    goto :goto_2

    :cond_4
    move/from16 v2, v16

    :goto_2
    if-eqz p15, :cond_5

    goto :goto_3

    .line 1289
    :cond_5
    invoke-virtual/range {p9 .. p9}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    neg-int v1, v1

    .line 1291
    :goto_3
    iget v3, v6, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->labelProgress:F

    invoke-static {v2, v1, v3}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(IIF)I

    move-result v20

    if-eqz p15, :cond_6

    .line 1295
    iget-object v1, v6, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->labelPosition:Landroidx/compose/material3/TextFieldLabelPosition;

    invoke-virtual {v1}, Landroidx/compose/material3/TextFieldLabelPosition;->getMinimizedAlignment()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v1

    .line 1296
    invoke-virtual/range {p9 .. p9}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v2

    .line 1295
    invoke-interface {v1, v2, v7, v0}, Landroidx/compose/ui/Alignment$Horizontal;->align(IILandroidx/compose/ui/unit/LayoutDirection;)I

    move-result v19

    const/16 v22, 0x4

    const/16 v23, 0x0

    const/16 v21, 0x0

    move-object/from16 v17, p1

    move-object/from16 v18, p9

    .line 1301
    invoke-static/range {v17 .. v23}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    goto/16 :goto_8

    .line 1304
    :cond_6
    iget-object v1, v6, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-static {v1, v0}, Landroidx/compose/foundation/layout/PaddingKt;->calculateStartPadding(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v1

    mul-float v1, v1, p13

    .line 1305
    iget-object v2, v6, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-static {v2, v0}, Landroidx/compose/foundation/layout/PaddingKt;->calculateEndPadding(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v2

    mul-float v2, v2, p13

    const/4 v3, 0x0

    if-nez p4, :cond_7

    move v4, v1

    goto :goto_4

    .line 1310
    :cond_7
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float v8, v1, p16

    invoke-static {v8, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v8

    add-float/2addr v4, v8

    :goto_4
    if-nez p5, :cond_8

    move v8, v2

    goto :goto_5

    .line 1316
    :cond_8
    invoke-virtual/range {p5 .. p5}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v8

    int-to-float v8, v8

    sub-float v9, v2, p16

    invoke-static {v9, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v3

    add-float/2addr v8, v3

    .line 1319
    :goto_5
    sget-object v3, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne v0, v3, :cond_9

    move v9, v1

    goto :goto_6

    :cond_9
    move v9, v2

    :goto_6
    if-ne v0, v3, :cond_a

    move v3, v4

    goto :goto_7

    :cond_a
    move v3, v8

    .line 1324
    :goto_7
    iget-object v10, v6, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->labelPosition:Landroidx/compose/material3/TextFieldLabelPosition;

    invoke-virtual {v10}, Landroidx/compose/material3/TextFieldLabelPosition;->getExpandedAlignment()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v10

    .line 1325
    invoke-virtual/range {p9 .. p9}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v11

    add-float/2addr v4, v8

    .line 1326
    invoke-static {v4}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v4

    sub-int v4, v7, v4

    .line 1324
    invoke-interface {v10, v11, v4, v0}, Landroidx/compose/ui/Alignment$Horizontal;->align(IILandroidx/compose/ui/unit/LayoutDirection;)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v3

    .line 1331
    iget-object v3, v6, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->labelPosition:Landroidx/compose/material3/TextFieldLabelPosition;

    invoke-virtual {v3}, Landroidx/compose/material3/TextFieldLabelPosition;->getMinimizedAlignment()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v3

    .line 1332
    invoke-virtual/range {p9 .. p9}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v8

    add-float/2addr v1, v2

    .line 1333
    invoke-static {v1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v1

    sub-int v1, v7, v1

    .line 1331
    invoke-interface {v3, v8, v1, v0}, Landroidx/compose/ui/Alignment$Horizontal;->align(IILandroidx/compose/ui/unit/LayoutDirection;)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v9

    .line 1336
    iget v1, v6, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->labelProgress:F

    invoke-static {v4, v0, v1}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v0

    invoke-static {v0}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v19

    const/16 v22, 0x4

    const/16 v23, 0x0

    const/16 v21, 0x0

    move-object/from16 v17, p1

    move-object/from16 v18, p9

    .line 1338
    invoke-static/range {v17 .. v23}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    :cond_b
    :goto_8
    if-eqz p6, :cond_c

    .line 1361
    invoke-static/range {p4 .. p4}, Landroidx/compose/material3/internal/LayoutUtilKt;->getWidthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v10

    move v0, v15

    move-object/from16 v1, p0

    move v2, v5

    move/from16 v3, v16

    move-object/from16 v4, p9

    move v14, v5

    move-object/from16 v5, p6

    .line 1362
    invoke-static/range {v0 .. v5}, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->place$calculateVerticalPosition(ILandroidx/compose/material3/OutlinedTextFieldMeasurePolicy;IILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;)I

    move-result v11

    const/4 v13, 0x4

    const/4 v0, 0x0

    const/4 v12, 0x0

    move-object/from16 v8, p1

    move-object/from16 v9, p6

    move v5, v14

    move-object v14, v0

    .line 1360
    invoke-static/range {v8 .. v14}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 1365
    :cond_c
    invoke-static/range {p4 .. p4}, Landroidx/compose/material3/internal/LayoutUtilKt;->getWidthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v0

    invoke-static/range {p6 .. p6}, Landroidx/compose/material3/internal/LayoutUtilKt;->getWidthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v1

    add-int v17, v0, v1

    move v0, v15

    move-object/from16 v1, p0

    move v2, v5

    move/from16 v3, v16

    move-object/from16 v4, p9

    move v14, v5

    move-object/from16 v5, p8

    .line 1369
    invoke-static/range {v0 .. v5}, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->place$calculateVerticalPosition(ILandroidx/compose/material3/OutlinedTextFieldMeasurePolicy;IILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;)I

    move-result v11

    const/4 v13, 0x4

    const/4 v0, 0x0

    const/4 v12, 0x0

    move-object/from16 v8, p1

    move-object/from16 v9, p8

    move/from16 v10, v17

    move v5, v14

    move-object v14, v0

    .line 1367
    invoke-static/range {v8 .. v14}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    if-eqz p10, :cond_d

    move v0, v15

    move-object/from16 v1, p0

    move v2, v5

    move/from16 v3, v16

    move-object/from16 v4, p9

    move v14, v5

    move-object/from16 v5, p10

    .line 1375
    invoke-static/range {v0 .. v5}, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->place$calculateVerticalPosition(ILandroidx/compose/material3/OutlinedTextFieldMeasurePolicy;IILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;)I

    move-result v11

    const/4 v13, 0x4

    const/4 v0, 0x0

    const/4 v12, 0x0

    move-object/from16 v8, p1

    move-object/from16 v9, p10

    move/from16 v10, v17

    move v5, v14

    move-object v14, v0

    .line 1373
    invoke-static/range {v8 .. v14}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    :cond_d
    if-eqz p7, :cond_e

    .line 1379
    invoke-static/range {p5 .. p5}, Landroidx/compose/material3/internal/LayoutUtilKt;->getWidthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v0

    sub-int v0, v7, v0

    invoke-virtual/range {p7 .. p7}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v1

    sub-int v19, v0, v1

    move v0, v15

    move-object/from16 v1, p0

    move v2, v5

    move/from16 v3, v16

    move-object/from16 v4, p9

    move v8, v5

    move-object/from16 v5, p7

    .line 1380
    invoke-static/range {v0 .. v5}, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->place$calculateVerticalPosition(ILandroidx/compose/material3/OutlinedTextFieldMeasurePolicy;IILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;)I

    move-result v20

    const/16 v22, 0x4

    const/16 v23, 0x0

    const/16 v21, 0x0

    move-object/from16 v17, p1

    move-object/from16 v18, p7

    .line 1378
    invoke-static/range {v17 .. v23}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    goto :goto_9

    :cond_e
    move v8, v5

    :goto_9
    if-eqz p5, :cond_f

    .line 1385
    invoke-virtual/range {p5 .. p5}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v0

    sub-int v2, v7, v0

    .line 1386
    sget-object v0, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getCenterVertically()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v0

    invoke-virtual/range {p5 .. p5}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v1

    invoke-interface {v0, v1, v8}, Landroidx/compose/ui/Alignment$Vertical;->align(II)I

    move-result v0

    add-int v3, v15, v0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    .line 1384
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    :cond_f
    if-eqz p12, :cond_10

    add-int v0, v15, v8

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 p0, p1

    move-object/from16 p1, p12

    move/from16 p2, v3

    move/from16 p3, v0

    move/from16 p4, v4

    move/from16 p5, v1

    move-object/from16 p6, v2

    .line 1390
    invoke-static/range {p0 .. p6}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    :cond_10
    return-void
.end method

.method private static final place$calculateVerticalPosition(ILandroidx/compose/material3/OutlinedTextFieldMeasurePolicy;IILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;)I
    .locals 1

    .line 1345
    iget-boolean v0, p1, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->singleLine:Z

    if-eqz v0, :cond_0

    .line 1347
    sget-object p3, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {p3}, Landroidx/compose/ui/Alignment$Companion;->getCenterVertically()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object p3

    invoke-virtual {p5}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result p5

    invoke-interface {p3, p5, p2}, Landroidx/compose/ui/Alignment$Vertical;->align(II)I

    move-result p3

    :cond_0
    add-int/2addr p0, p3

    .line 1352
    iget-object p1, p1, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->labelPosition:Landroidx/compose/material3/TextFieldLabelPosition;

    instance-of p1, p1, Landroidx/compose/material3/TextFieldLabelPosition$Default;

    if-eqz p1, :cond_1

    .line 1354
    invoke-static {p4}, Landroidx/compose/material3/internal/LayoutUtilKt;->getHeightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    :cond_1
    return p0
.end method


# virtual methods
.method public maxIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 1

    .line 1002
    sget-object v0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$maxIntrinsicHeight$1;->INSTANCE:Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$maxIntrinsicHeight$1;

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->intrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;ILkotlin/jvm/functions/Function2;)I

    move-result p0

    return p0
.end method

.method public maxIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 1

    .line 1020
    sget-object v0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$maxIntrinsicWidth$1;->INSTANCE:Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$maxIntrinsicWidth$1;

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->intrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;ILkotlin/jvm/functions/Function2;)I

    move-result p0

    return p0
.end method

.method public measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 43

    move-object/from16 v13, p0

    move-object/from16 v15, p1

    move-object/from16 v14, p2

    .line 809
    iget-object v0, v13, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-interface {v0}, Landroidx/compose/foundation/layout/PaddingValues;->calculateBottomPadding-D9Ej5fM()F

    move-result v0

    invoke-interface {v15, v0}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v0

    const/16 v7, 0xa

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-wide/from16 v1, p3

    .line 811
    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v11

    .line 34
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v9, 0x0

    move v2, v9

    :goto_0
    const/16 v22, 0x0

    if-ge v2, v1, :cond_1

    .line 35
    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 117
    move-object v4, v3

    check-cast v4, Landroidx/compose/ui/layout/Measurable;

    .line 815
    invoke-static {v4}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "Leading"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v3, v22

    :goto_1
    check-cast v3, Landroidx/compose/ui/layout/Measurable;

    if-eqz v3, :cond_2

    invoke-interface {v3, v11, v12}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v1

    move-object/from16 v23, v1

    goto :goto_2

    :cond_2
    move-object/from16 v23, v22

    .line 816
    :goto_2
    invoke-static/range {v23 .. v23}, Landroidx/compose/material3/internal/LayoutUtilKt;->getWidthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v1

    .line 817
    invoke-static/range {v23 .. v23}, Landroidx/compose/material3/internal/LayoutUtilKt;->getHeightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v2

    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 34
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    move v4, v9

    :goto_3
    if-ge v4, v3, :cond_4

    .line 35
    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 117
    move-object v6, v5

    check-cast v6, Landroidx/compose/ui/layout/Measurable;

    .line 822
    invoke-static {v6}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "Trailing"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    move-object/from16 v5, v22

    :goto_4
    check-cast v5, Landroidx/compose/ui/layout/Measurable;

    if-eqz v5, :cond_5

    neg-int v3, v1

    const/16 v20, 0x2

    const/16 v21, 0x0

    const/16 v19, 0x0

    move-wide/from16 v16, v11

    move/from16 v18, v3

    .line 823
    invoke-static/range {v16 .. v21}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U$default(JIIILjava/lang/Object;)J

    move-result-wide v3

    invoke-interface {v5, v3, v4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v3

    move-object/from16 v24, v3

    goto :goto_5

    :cond_5
    move-object/from16 v24, v22

    .line 824
    :goto_5
    invoke-static/range {v24 .. v24}, Landroidx/compose/material3/internal/LayoutUtilKt;->getWidthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v3

    add-int/2addr v1, v3

    .line 825
    invoke-static/range {v24 .. v24}, Landroidx/compose/material3/internal/LayoutUtilKt;->getHeightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 34
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    move v4, v9

    :goto_6
    if-ge v4, v3, :cond_7

    .line 35
    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 117
    move-object v6, v5

    check-cast v6, Landroidx/compose/ui/layout/Measurable;

    .line 830
    invoke-static {v6}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "Prefix"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_7

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_7
    move-object/from16 v5, v22

    :goto_7
    check-cast v5, Landroidx/compose/ui/layout/Measurable;

    if-eqz v5, :cond_8

    neg-int v3, v1

    const/16 v20, 0x2

    const/16 v21, 0x0

    const/16 v19, 0x0

    move-wide/from16 v16, v11

    move/from16 v18, v3

    .line 831
    invoke-static/range {v16 .. v21}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U$default(JIIILjava/lang/Object;)J

    move-result-wide v3

    invoke-interface {v5, v3, v4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v3

    move-object/from16 v25, v3

    goto :goto_8

    :cond_8
    move-object/from16 v25, v22

    .line 832
    :goto_8
    invoke-static/range {v25 .. v25}, Landroidx/compose/material3/internal/LayoutUtilKt;->getWidthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v3

    add-int/2addr v1, v3

    .line 833
    invoke-static/range {v25 .. v25}, Landroidx/compose/material3/internal/LayoutUtilKt;->getHeightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 34
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    move v4, v9

    :goto_9
    if-ge v4, v3, :cond_a

    .line 35
    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 117
    move-object v6, v5

    check-cast v6, Landroidx/compose/ui/layout/Measurable;

    .line 838
    invoke-static {v6}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "Suffix"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    goto :goto_a

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_a
    move-object/from16 v5, v22

    :goto_a
    check-cast v5, Landroidx/compose/ui/layout/Measurable;

    if-eqz v5, :cond_b

    neg-int v3, v1

    const/16 v20, 0x2

    const/16 v21, 0x0

    const/16 v19, 0x0

    move-wide/from16 v16, v11

    move/from16 v18, v3

    .line 839
    invoke-static/range {v16 .. v21}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U$default(JIIILjava/lang/Object;)J

    move-result-wide v3

    invoke-interface {v5, v3, v4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v3

    move-object/from16 v26, v3

    goto :goto_b

    :cond_b
    move-object/from16 v26, v22

    .line 840
    :goto_b
    invoke-static/range {v26 .. v26}, Landroidx/compose/material3/internal/LayoutUtilKt;->getWidthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v3

    add-int/2addr v1, v3

    .line 841
    invoke-static/range {v26 .. v26}, Landroidx/compose/material3/internal/LayoutUtilKt;->getHeightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 34
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    move v4, v9

    :goto_c
    if-ge v4, v3, :cond_d

    .line 35
    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 117
    move-object v6, v5

    check-cast v6, Landroidx/compose/ui/layout/Measurable;

    .line 845
    invoke-static {v6}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "Label"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    goto :goto_d

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_d
    move-object/from16 v5, v22

    :goto_d
    check-cast v5, Landroidx/compose/ui/layout/Measurable;

    .line 846
    new-instance v10, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 851
    iget-object v3, v13, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v4

    invoke-interface {v3, v4}, Landroidx/compose/foundation/layout/PaddingValues;->calculateLeftPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v3

    invoke-interface {v15, v3}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v3

    .line 852
    iget-object v4, v13, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v6

    invoke-interface {v4, v6}, Landroidx/compose/foundation/layout/PaddingValues;->calculateRightPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v4

    invoke-interface {v15, v4}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v4

    add-int/2addr v3, v4

    add-int v4, v1, v3

    .line 857
    iget v6, v13, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->labelProgress:F

    .line 854
    invoke-static {v4, v3, v6}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(IIF)I

    move-result v3

    neg-int v3, v3

    neg-int v4, v0

    .line 860
    invoke-static {v11, v12, v3, v4}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U(JII)J

    move-result-wide v3

    if-eqz v5, :cond_e

    .line 864
    invoke-interface {v5, v3, v4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v3

    goto :goto_e

    :cond_e
    move-object/from16 v3, v22

    :goto_e
    iput-object v3, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v3, :cond_f

    .line 866
    invoke-virtual {v3}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v4, v3}, Landroidx/compose/ui/geometry/SizeKt;->Size(FF)J

    move-result-wide v3

    goto :goto_f

    :cond_f
    sget-object v3, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/geometry/Size$Companion;->getZero-NH-jbRc()J

    move-result-wide v3

    .line 867
    :goto_f
    iget-object v5, v13, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->onLabelMeasured:Lkotlin/jvm/functions/Function1;

    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Size;->box-impl(J)Landroidx/compose/ui/geometry/Size;

    move-result-object v3

    invoke-interface {v5, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    move v4, v9

    :goto_10
    if-ge v4, v3, :cond_11

    .line 35
    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 117
    move-object v6, v5

    check-cast v6, Landroidx/compose/ui/layout/Measurable;

    .line 877
    invoke-static {v6}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "Supporting"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    goto :goto_11

    :cond_10
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_11
    move-object/from16 v5, v22

    :goto_11
    move-object v8, v5

    check-cast v8, Landroidx/compose/ui/layout/Measurable;

    if-eqz v8, :cond_12

    .line 879
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v3

    invoke-interface {v8, v3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->minIntrinsicHeight(I)I

    move-result v3

    goto :goto_12

    :cond_12
    move v3, v9

    .line 887
    :goto_12
    iget-object v4, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/ui/layout/Placeable;

    invoke-static {v4}, Landroidx/compose/material3/internal/LayoutUtilKt;->getHeightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    .line 888
    iget-object v5, v13, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-interface {v5}, Landroidx/compose/foundation/layout/PaddingValues;->calculateTopPadding-D9Ej5fM()F

    move-result v5

    invoke-interface {v15, v5}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    neg-int v1, v1

    neg-int v5, v0

    sub-int/2addr v5, v4

    sub-int/2addr v5, v3

    move-wide/from16 v6, p3

    .line 893
    invoke-static {v6, v7, v1, v5}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U(JII)J

    move-result-wide v27

    const/16 v33, 0xb

    const/16 v34, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v17, v10

    .line 901
    invoke-static/range {v27 .. v34}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v9

    .line 34
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_13
    const-string v5, "Collection contains no element matching the predicate."

    if-ge v3, v1, :cond_1c

    .line 35
    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move/from16 v19, v1

    .line 545
    move-object/from16 v1, v18

    check-cast v1, Landroidx/compose/ui/layout/Measurable;

    move-object/from16 v18, v5

    .line 903
    invoke-static {v1}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "TextField"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-interface {v1, v9, v10}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v27

    const/16 v41, 0xe

    const/16 v42, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-wide/from16 v35, v9

    .line 906
    invoke-static/range {v35 .. v42}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v5

    .line 34
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v1, :cond_14

    .line 35
    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 117
    move-object v9, v7

    check-cast v9, Landroidx/compose/ui/layout/Measurable;

    .line 909
    invoke-static {v9}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v9

    const-string v10, "Hint"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    goto :goto_15

    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_14
    move-object/from16 v7, v22

    :goto_15
    check-cast v7, Landroidx/compose/ui/layout/Measurable;

    if-eqz v7, :cond_15

    .line 910
    invoke-interface {v7, v5, v6}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v1

    move-object/from16 v28, v1

    goto :goto_16

    :cond_15
    move-object/from16 v28, v22

    .line 915
    :goto_16
    invoke-static/range {v27 .. v27}, Landroidx/compose/material3/internal/LayoutUtilKt;->getHeightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v1

    invoke-static/range {v28 .. v28}, Landroidx/compose/material3/internal/LayoutUtilKt;->getHeightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v1, v4

    add-int/2addr v1, v0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 922
    invoke-static/range {v23 .. v23}, Landroidx/compose/material3/internal/LayoutUtilKt;->getWidthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v2

    .line 923
    invoke-static/range {v24 .. v24}, Landroidx/compose/material3/internal/LayoutUtilKt;->getWidthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v3

    .line 924
    invoke-static/range {v25 .. v25}, Landroidx/compose/material3/internal/LayoutUtilKt;->getWidthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v4

    .line 925
    invoke-static/range {v26 .. v26}, Landroidx/compose/material3/internal/LayoutUtilKt;->getWidthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v5

    .line 926
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v6

    move-object/from16 v10, v17

    .line 927
    iget-object v0, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/layout/Placeable;

    invoke-static {v0}, Landroidx/compose/material3/internal/LayoutUtilKt;->getWidthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v7

    .line 928
    invoke-static/range {v28 .. v28}, Landroidx/compose/material3/internal/LayoutUtilKt;->getWidthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v13, v18

    move-object v15, v8

    move/from16 v8, v17

    move v14, v9

    move-object/from16 v30, v13

    const/16 v29, 0x0

    move-object v13, v10

    move-wide/from16 v9, p3

    .line 921
    invoke-direct/range {v0 .. v10}, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->calculateWidth-xygx4p4(Landroidx/compose/ui/unit/Density;IIIIIIIJ)I

    move-result v10

    neg-int v0, v14

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v18, 0x0

    move-wide/from16 v16, v11

    move/from16 v19, v0

    .line 945
    invoke-static/range {v16 .. v21}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U$default(JIIILjava/lang/Object;)J

    move-result-wide v31

    const/16 v37, 0x9

    const/16 v38, 0x0

    const/16 v33, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    move/from16 v34, v10

    .line 946
    invoke-static/range {v31 .. v38}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v0

    if-eqz v15, :cond_16

    .line 947
    invoke-interface {v15, v0, v1}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v0

    move-object/from16 v22, v0

    .line 948
    :cond_16
    invoke-static/range {v22 .. v22}, Landroidx/compose/material3/internal/LayoutUtilKt;->getHeightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v14

    .line 952
    invoke-static/range {v23 .. v23}, Landroidx/compose/material3/internal/LayoutUtilKt;->getHeightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v2

    .line 953
    invoke-static/range {v24 .. v24}, Landroidx/compose/material3/internal/LayoutUtilKt;->getHeightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v3

    .line 954
    invoke-static/range {v25 .. v25}, Landroidx/compose/material3/internal/LayoutUtilKt;->getHeightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v4

    .line 955
    invoke-static/range {v26 .. v26}, Landroidx/compose/material3/internal/LayoutUtilKt;->getHeightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v5

    .line 956
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v6

    .line 957
    iget-object v0, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/layout/Placeable;

    invoke-static {v0}, Landroidx/compose/material3/internal/LayoutUtilKt;->getHeightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v7

    .line 958
    invoke-static/range {v28 .. v28}, Landroidx/compose/material3/internal/LayoutUtilKt;->getHeightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v8

    .line 959
    invoke-static/range {v22 .. v22}, Landroidx/compose/material3/internal/LayoutUtilKt;->getHeightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v9

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v12, v10

    move-wide/from16 v10, p3

    move-object/from16 v17, v13

    move v13, v12

    move v12, v15

    .line 951
    invoke-direct/range {v0 .. v12}, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->calculateHeight-aSWTPvA(Landroidx/compose/ui/unit/Density;IIIIIIIIJZ)I

    move-result v16

    sub-int v9, v16, v14

    .line 34
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    move/from16 v1, v29

    :goto_17
    if-ge v1, v0, :cond_1a

    move-object/from16 v5, p2

    .line 35
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 545
    check-cast v2, Landroidx/compose/ui/layout/Measurable;

    .line 968
    invoke-static {v2}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Container"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    const v0, 0x7fffffff

    if-eq v13, v0, :cond_17

    move v1, v13

    goto :goto_18

    :cond_17
    move/from16 v1, v29

    :goto_18
    if-eq v9, v0, :cond_18

    move v0, v9

    goto :goto_19

    :cond_18
    move/from16 v0, v29

    .line 970
    :goto_19
    invoke-static {v1, v13, v0, v9}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints(IIII)J

    move-result-wide v0

    .line 969
    invoke-interface {v2, v0, v1}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v11

    .line 977
    new-instance v18, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, v16

    move v3, v13

    move-object/from16 v4, v23

    move-object/from16 v5, v24

    move-object/from16 v6, v25

    move-object/from16 v7, v26

    move-object/from16 v8, v27

    move-object/from16 v9, v17

    move-object/from16 v10, v28

    move-object/from16 v12, v22

    move/from16 v19, v13

    move-object/from16 v13, p1

    move v14, v15

    invoke-direct/range {v0 .. v14}, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$1;-><init>(Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;IILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/MeasureScope;Z)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v4, v18

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0

    :cond_19
    move/from16 v19, v13

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 546
    :cond_1a
    new-instance v0, Ljava/util/NoSuchElementException;

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    move-object v15, v8

    move-object v5, v14

    const/16 v29, 0x0

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v13, p0

    move-wide/from16 v6, p3

    move/from16 v1, v19

    move-object/from16 v15, p1

    goto/16 :goto_13

    :cond_1c
    move-object v1, v5

    .line 546
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public minIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 1

    .line 1011
    sget-object v0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$minIntrinsicHeight$1;->INSTANCE:Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$minIntrinsicHeight$1;

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->intrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;ILkotlin/jvm/functions/Function2;)I

    move-result p0

    return p0
.end method

.method public minIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 1

    .line 1029
    sget-object v0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$minIntrinsicWidth$1;->INSTANCE:Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$minIntrinsicWidth$1;

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->intrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;ILkotlin/jvm/functions/Function2;)I

    move-result p0

    return p0
.end method
