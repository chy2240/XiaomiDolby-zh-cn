.class final Landroidx/compose/material3/TextFieldMeasurePolicy;
.super Ljava/lang/Object;
.source "TextField.kt"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# instance fields
.field private final labelPosition:Landroidx/compose/material3/TextFieldLabelPosition;

.field private final labelProgress:F

.field private final minimizedLabelHalfHeight:F

.field private final paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

.field private final singleLine:Z


# direct methods
.method private constructor <init>(ZLandroidx/compose/material3/TextFieldLabelPosition;FLandroidx/compose/foundation/layout/PaddingValues;F)V
    .locals 0

    .line 789
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 790
    iput-boolean p1, p0, Landroidx/compose/material3/TextFieldMeasurePolicy;->singleLine:Z

    .line 791
    iput-object p2, p0, Landroidx/compose/material3/TextFieldMeasurePolicy;->labelPosition:Landroidx/compose/material3/TextFieldLabelPosition;

    .line 792
    iput p3, p0, Landroidx/compose/material3/TextFieldMeasurePolicy;->labelProgress:F

    .line 793
    iput-object p4, p0, Landroidx/compose/material3/TextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    .line 794
    iput p5, p0, Landroidx/compose/material3/TextFieldMeasurePolicy;->minimizedLabelHalfHeight:F

    return-void
.end method

.method public synthetic constructor <init>(ZLandroidx/compose/material3/TextFieldLabelPosition;FLandroidx/compose/foundation/layout/PaddingValues;FLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Landroidx/compose/material3/TextFieldMeasurePolicy;-><init>(ZLandroidx/compose/material3/TextFieldLabelPosition;FLandroidx/compose/foundation/layout/PaddingValues;F)V

    return-void
.end method

.method public static final synthetic access$getMinimizedLabelHalfHeight$p(Landroidx/compose/material3/TextFieldMeasurePolicy;)F
    .locals 0

    .line 789
    iget p0, p0, Landroidx/compose/material3/TextFieldMeasurePolicy;->minimizedLabelHalfHeight:F

    return p0
.end method

.method public static final synthetic access$getSingleLine$p(Landroidx/compose/material3/TextFieldMeasurePolicy;)Z
    .locals 0

    .line 789
    iget-boolean p0, p0, Landroidx/compose/material3/TextFieldMeasurePolicy;->singleLine:Z

    return p0
.end method

.method public static final synthetic access$placeWithLabel(Landroidx/compose/material3/TextFieldMeasurePolicy;Landroidx/compose/ui/layout/Placeable$PlacementScope;IILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;IIZILandroidx/compose/ui/unit/LayoutDirection;)V
    .locals 0

    .line 789
    invoke-direct/range {p0 .. p17}, Landroidx/compose/material3/TextFieldMeasurePolicy;->placeWithLabel(Landroidx/compose/ui/layout/Placeable$PlacementScope;IILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;IIZILandroidx/compose/ui/unit/LayoutDirection;)V

    return-void
.end method

.method public static final synthetic access$placeWithoutLabel(Landroidx/compose/material3/TextFieldMeasurePolicy;Landroidx/compose/ui/layout/Placeable$PlacementScope;IILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;F)V
    .locals 0

    .line 789
    invoke-direct/range {p0 .. p12}, Landroidx/compose/material3/TextFieldMeasurePolicy;->placeWithoutLabel(Landroidx/compose/ui/layout/Placeable$PlacementScope;IILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;F)V

    return-void
.end method

.method private final calculateHeight-aSWTPvA(Landroidx/compose/ui/unit/Density;IIIIIIIIJZ)I
    .locals 3

    .line 1196
    iget-object v0, p0, Landroidx/compose/material3/TextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-interface {v0}, Landroidx/compose/foundation/layout/PaddingValues;->calculateTopPadding-D9Ej5fM()F

    move-result v0

    iget-object v1, p0, Landroidx/compose/material3/TextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-interface {v1}, Landroidx/compose/foundation/layout/PaddingValues;->calculateBottomPadding-D9Ej5fM()F

    move-result v1

    add-float/2addr v0, v1

    .line 51
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 1197
    invoke-interface {p1, v0}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v0

    const/4 v1, 0x0

    if-eqz p12, :cond_0

    move v2, v1

    goto :goto_0

    .line 1205
    :cond_0
    iget v2, p0, Landroidx/compose/material3/TextFieldMeasurePolicy;->labelProgress:F

    invoke-static {p3, v1, v2}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(IIF)I

    move-result v2

    :goto_0
    filled-new-array {p8, p6, p7, v2}, [I

    move-result-object p6

    .line 1200
    invoke-static {p2, p6}, Lkotlin/comparisons/ComparisonsKt;->maxOf(I[I)I

    move-result p2

    if-lez p3, :cond_1

    if-nez p12, :cond_1

    .line 1216
    iget p6, p0, Landroidx/compose/material3/TextFieldMeasurePolicy;->minimizedLabelHalfHeight:F

    const/4 p7, 0x2

    int-to-float p7, p7

    mul-float/2addr p6, p7

    .line 1630
    invoke-static {p6}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p6

    .line 1216
    invoke-interface {p1, p6}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result p1

    .line 1220
    sget-object p6, Landroidx/compose/material3/tokens/MotionTokens;->INSTANCE:Landroidx/compose/material3/tokens/MotionTokens;

    invoke-virtual {p6}, Landroidx/compose/material3/tokens/MotionTokens;->getEasingEmphasizedAccelerateCubicBezier()Landroidx/compose/animation/core/CubicBezierEasing;

    move-result-object p6

    iget p0, p0, Landroidx/compose/material3/TextFieldMeasurePolicy;->labelProgress:F

    invoke-virtual {p6, p0}, Landroidx/compose/animation/core/CubicBezierEasing;->transform(F)F

    move-result p0

    .line 1217
    invoke-static {v1, p3, p0}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(IIF)I

    move-result p0

    .line 1215
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    goto :goto_1

    :cond_1
    move p0, v1

    :goto_1
    add-int/2addr v0, p0

    add-int/2addr v0, p2

    .line 1230
    invoke-static {p10, p11}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result p0

    if-eqz p12, :cond_2

    goto :goto_2

    :cond_2
    move p3, v1

    .line 1232
    :goto_2
    invoke-static {p5, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/2addr p3, p1

    add-int/2addr p3, p9

    .line 1231
    invoke-static {p0, p3}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private final calculateWidth-yeHjK3Y(IIIIIIIJ)I
    .locals 0

    add-int/2addr p3, p4

    add-int/2addr p5, p3

    add-int/2addr p7, p3

    .line 1175
    invoke-static {p7, p6}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p5, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    add-int/2addr p1, p0

    add-int/2addr p1, p2

    .line 1180
    invoke-static {p8, p9}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private final intrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;ILkotlin/jvm/functions/Function2;)I
    .locals 19

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    .line 34
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x0

    if-ge v4, v2, :cond_1

    .line 35
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 117
    move-object v7, v6

    check-cast v7, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 1089
    invoke-static {v7}, Landroidx/compose/material3/internal/LayoutUtilKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "Leading"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move-object v6, v5

    :goto_1
    check-cast v6, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    const v2, 0x7fffffff

    if-eqz v6, :cond_2

    .line 1093
    invoke-interface {v6, v2}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicWidth(I)I

    move-result v4

    move/from16 v7, p3

    .line 1092
    invoke-static {v7, v4}, Landroidx/compose/material3/internal/LayoutUtilKt;->subtractConstraintSafely(II)I

    move-result v4

    .line 1095
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v1, v6, v8}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    move v10, v6

    goto :goto_2

    :cond_2
    move/from16 v7, p3

    move v4, v7

    const/4 v10, 0x0

    .line 34
    :goto_2
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v6

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v6, :cond_4

    .line 35
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 117
    move-object v11, v9

    check-cast v11, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 1099
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
    move-object v9, v5

    :goto_4
    check-cast v9, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v9, :cond_5

    .line 1103
    invoke-interface {v9, v2}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicWidth(I)I

    move-result v6

    .line 1102
    invoke-static {v4, v6}, Landroidx/compose/material3/internal/LayoutUtilKt;->subtractConstraintSafely(II)I

    move-result v4

    .line 1105
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v9, v6}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    move v11, v6

    goto :goto_5

    :cond_5
    const/4 v11, 0x0

    .line 34
    :goto_5
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v6

    const/4 v8, 0x0

    :goto_6
    if-ge v8, v6, :cond_7

    .line 35
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 117
    move-object v12, v9

    check-cast v12, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 1109
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
    move-object v9, v5

    :goto_7
    check-cast v9, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v9, :cond_8

    .line 1110
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v9, v6}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    move v9, v6

    goto :goto_8

    :cond_8
    const/4 v9, 0x0

    .line 34
    :goto_8
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v6

    const/4 v8, 0x0

    :goto_9
    if-ge v8, v6, :cond_a

    .line 35
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 117
    move-object v13, v12

    check-cast v13, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 1114
    invoke-static {v13}, Landroidx/compose/material3/internal/LayoutUtilKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v13

    const-string v14, "Prefix"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    goto :goto_a

    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_a
    move-object v12, v5

    :goto_a
    check-cast v12, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v12, :cond_b

    .line 1116
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v12, v6}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    .line 1119
    invoke-interface {v12, v2}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicWidth(I)I

    move-result v8

    .line 1118
    invoke-static {v4, v8}, Landroidx/compose/material3/internal/LayoutUtilKt;->subtractConstraintSafely(II)I

    move-result v4

    move v12, v6

    goto :goto_b

    :cond_b
    const/4 v12, 0x0

    .line 34
    :goto_b
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v6

    const/4 v8, 0x0

    :goto_c
    if-ge v8, v6, :cond_d

    .line 35
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .line 117
    move-object v14, v13

    check-cast v14, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 1125
    invoke-static {v14}, Landroidx/compose/material3/internal/LayoutUtilKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v14

    const-string v15, "Suffix"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    goto :goto_d

    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    :cond_d
    move-object v13, v5

    :goto_d
    check-cast v13, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v13, :cond_e

    .line 1127
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v13, v6}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    .line 1130
    invoke-interface {v13, v2}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicWidth(I)I

    move-result v2

    .line 1129
    invoke-static {v4, v2}, Landroidx/compose/material3/internal/LayoutUtilKt;->subtractConstraintSafely(II)I

    move-result v4

    move v13, v6

    goto :goto_e

    :cond_e
    const/4 v13, 0x0

    .line 34
    :goto_e
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v6, 0x0

    :goto_f
    if-ge v6, v2, :cond_16

    .line 35
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 545
    move-object v14, v8

    check-cast v14, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 1136
    invoke-static {v14}, Landroidx/compose/material3/internal/LayoutUtilKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v14

    const-string v15, "TextField"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_15

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v8, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v8

    .line 34
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v6, 0x0

    :goto_10
    if-ge v6, v2, :cond_10

    .line 35
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    .line 117
    move-object v15, v14

    check-cast v15, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 1139
    invoke-static {v15}, Landroidx/compose/material3/internal/LayoutUtilKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v15

    const-string v3, "Hint"

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    goto :goto_11

    :cond_f
    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    :cond_10
    move-object v14, v5

    :goto_11
    check-cast v14, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v14, :cond_11

    .line 1140
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v14, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    move v14, v2

    goto :goto_12

    :cond_11
    const/4 v14, 0x0

    .line 34
    :goto_12
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v2, :cond_13

    .line 35
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 117
    move-object v6, v4

    check-cast v6, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 1144
    invoke-static {v6}, Landroidx/compose/material3/internal/LayoutUtilKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v6

    const-string v15, "Supporting"

    invoke-static {v6, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    move-object v5, v4

    goto :goto_14

    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_13
    :goto_14
    check-cast v5, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v5, :cond_14

    .line 1145
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v5, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v3

    move v15, v3

    goto :goto_15

    :cond_14
    const/4 v15, 0x0

    :goto_15
    const/16 v4, 0xf

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1156
    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(IIIIILjava/lang/Object;)J

    move-result-wide v16

    const/16 v18, 0x0

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 1147
    invoke-direct/range {v6 .. v18}, Landroidx/compose/material3/TextFieldMeasurePolicy;->calculateHeight-aSWTPvA(Landroidx/compose/ui/unit/Density;IIIIIIIIJZ)I

    move-result v0

    return v0

    :cond_15
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_f

    .line 546
    :cond_16
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Collection contains no element matching the predicate."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final intrinsicWidth(Ljava/util/List;ILkotlin/jvm/functions/Function2;)I
    .locals 18

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    .line 34
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

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

    .line 1044
    invoke-static {v6}, Landroidx/compose/material3/internal/LayoutUtilKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "TextField"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v5, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v9

    .line 34
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

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

    .line 1047
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

    .line 1048
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v6, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    move v10, v2

    goto :goto_3

    :cond_2
    move v10, v3

    .line 34
    :goto_3
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

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

    .line 1051
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

    .line 1052
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v6, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    move v6, v2

    goto :goto_6

    :cond_5
    move v6, v3

    .line 34
    :goto_6
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    move v4, v3

    :goto_7
    if-ge v4, v2, :cond_7

    .line 35
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 117
    move-object v8, v7

    check-cast v8, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 1055
    invoke-static {v8}, Landroidx/compose/material3/internal/LayoutUtilKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v8

    const-string v11, "Prefix"

    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_8

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_7
    move-object v7, v5

    :goto_8
    check-cast v7, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v7, :cond_8

    .line 1056
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v7, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    move v7, v2

    goto :goto_9

    :cond_8
    move v7, v3

    .line 34
    :goto_9
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    move v4, v3

    :goto_a
    if-ge v4, v2, :cond_a

    .line 35
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 117
    move-object v11, v8

    check-cast v11, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 1059
    invoke-static {v11}, Landroidx/compose/material3/internal/LayoutUtilKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v11

    const-string v12, "Suffix"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    goto :goto_b

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_a
    move-object v8, v5

    :goto_b
    check-cast v8, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v8, :cond_b

    .line 1060
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    move v4, v3

    :goto_d
    if-ge v4, v2, :cond_d

    .line 35
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 117
    move-object v12, v11

    check-cast v12, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 1063
    invoke-static {v12}, Landroidx/compose/material3/internal/LayoutUtilKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v12

    const-string v13, "Leading"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    goto :goto_e

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_d
    move-object v11, v5

    :goto_e
    check-cast v11, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v11, :cond_e

    .line 1064
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v11, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    goto :goto_f

    :cond_e
    move v2, v3

    .line 34
    :goto_f
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    move v11, v3

    :goto_10
    if-ge v11, v4, :cond_10

    .line 35
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 117
    move-object v13, v12

    check-cast v13, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 1067
    invoke-static {v13}, Landroidx/compose/material3/internal/LayoutUtilKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v13

    const-string v14, "Hint"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    move-object v5, v12

    goto :goto_11

    :cond_f
    add-int/lit8 v11, v11, 0x1

    goto :goto_10

    :cond_10
    :goto_11
    check-cast v5, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v5, :cond_11

    .line 1068
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v5, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v3

    :cond_11
    move v11, v3

    const/16 v16, 0xf

    const/16 v17, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 1077
    invoke-static/range {v12 .. v17}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(IIIIILjava/lang/Object;)J

    move-result-wide v12

    move-object/from16 v4, p0

    move v5, v2

    .line 1069
    invoke-direct/range {v4 .. v13}, Landroidx/compose/material3/TextFieldMeasurePolicy;->calculateWidth-yeHjK3Y(IIIIIIIJ)I

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

.method private final placeWithLabel(Landroidx/compose/ui/layout/Placeable$PlacementScope;IILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;IIZILandroidx/compose/ui/unit/LayoutDirection;)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p17

    const/4 v3, 0x0

    if-eqz p15, :cond_0

    .line 1260
    invoke-virtual/range {p5 .. p5}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v4

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    const/4 v10, 0x4

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p1

    move-object/from16 v6, p11

    move v8, v4

    .line 1263
    invoke-static/range {v5 .. v11}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 1269
    invoke-static/range {p12 .. p12}, Landroidx/compose/material3/internal/LayoutUtilKt;->getHeightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v5

    sub-int v5, p3, v5

    if-eqz p15, :cond_1

    .line 1270
    invoke-virtual/range {p5 .. p5}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v3

    :cond_1
    sub-int/2addr v5, v3

    if-eqz p7, :cond_2

    .line 1274
    sget-object v3, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/Alignment$Companion;->getCenterVertically()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v3

    invoke-virtual/range {p7 .. p7}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v6

    invoke-interface {v3, v6, v5}, Landroidx/compose/ui/Alignment$Vertical;->align(II)I

    move-result v3

    add-int v9, v4, v3

    const/4 v11, 0x4

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object/from16 v6, p1

    move-object/from16 v7, p7

    .line 1272
    invoke-static/range {v6 .. v12}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 1277
    :cond_2
    iget v3, v0, Landroidx/compose/material3/TextFieldMeasurePolicy;->labelProgress:F

    move/from16 v6, p13

    move/from16 v7, p14

    invoke-static {v6, v7, v3}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(IIF)I

    move-result v9

    if-eqz p15, :cond_3

    .line 1280
    iget-object v0, v0, Landroidx/compose/material3/TextFieldMeasurePolicy;->labelPosition:Landroidx/compose/material3/TextFieldLabelPosition;

    invoke-virtual {v0}, Landroidx/compose/material3/TextFieldLabelPosition;->getMinimizedAlignment()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v0

    .line 1281
    invoke-virtual/range {p5 .. p5}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v3

    .line 1280
    invoke-interface {v0, v3, v1, v2}, Landroidx/compose/ui/Alignment$Horizontal;->align(IILandroidx/compose/ui/unit/LayoutDirection;)I

    move-result v8

    const/4 v11, 0x4

    const/4 v12, 0x0

    const/4 v10, 0x0

    move-object/from16 v6, p1

    move-object/from16 v7, p5

    .line 1286
    invoke-static/range {v6 .. v12}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    goto :goto_2

    .line 1289
    :cond_3
    sget-object v3, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne v2, v3, :cond_4

    invoke-static/range {p7 .. p7}, Landroidx/compose/material3/internal/LayoutUtilKt;->getWidthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v3

    goto :goto_1

    .line 1290
    :cond_4
    invoke-static/range {p8 .. p8}, Landroidx/compose/material3/internal/LayoutUtilKt;->getWidthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v3

    .line 1292
    :goto_1
    iget-object v6, v0, Landroidx/compose/material3/TextFieldMeasurePolicy;->labelPosition:Landroidx/compose/material3/TextFieldLabelPosition;

    invoke-virtual {v6}, Landroidx/compose/material3/TextFieldLabelPosition;->getExpandedAlignment()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v6

    .line 1293
    invoke-virtual/range {p5 .. p5}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v7

    .line 1294
    invoke-static/range {p7 .. p7}, Landroidx/compose/material3/internal/LayoutUtilKt;->getWidthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v8

    sub-int v8, v1, v8

    invoke-static/range {p8 .. p8}, Landroidx/compose/material3/internal/LayoutUtilKt;->getWidthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v10

    sub-int/2addr v8, v10

    .line 1292
    invoke-interface {v6, v7, v8, v2}, Landroidx/compose/ui/Alignment$Horizontal;->align(IILandroidx/compose/ui/unit/LayoutDirection;)I

    move-result v6

    add-int/2addr v6, v3

    .line 1298
    iget-object v7, v0, Landroidx/compose/material3/TextFieldMeasurePolicy;->labelPosition:Landroidx/compose/material3/TextFieldLabelPosition;

    invoke-virtual {v7}, Landroidx/compose/material3/TextFieldLabelPosition;->getMinimizedAlignment()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v7

    .line 1299
    invoke-virtual/range {p5 .. p5}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v8

    .line 1300
    invoke-static/range {p7 .. p7}, Landroidx/compose/material3/internal/LayoutUtilKt;->getWidthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v10

    sub-int v10, v1, v10

    invoke-static/range {p8 .. p8}, Landroidx/compose/material3/internal/LayoutUtilKt;->getWidthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v11

    sub-int/2addr v10, v11

    .line 1298
    invoke-interface {v7, v8, v10, v2}, Landroidx/compose/ui/Alignment$Horizontal;->align(IILandroidx/compose/ui/unit/LayoutDirection;)I

    move-result v2

    add-int/2addr v2, v3

    .line 1303
    iget v0, v0, Landroidx/compose/material3/TextFieldMeasurePolicy;->labelProgress:F

    invoke-static {v6, v2, v0}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(IIF)I

    move-result v8

    const/4 v11, 0x4

    const/4 v12, 0x0

    const/4 v10, 0x0

    move-object/from16 v6, p1

    move-object/from16 v7, p5

    .line 1305
    invoke-static/range {v6 .. v12}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    :goto_2
    if-eqz p9, :cond_5

    .line 1308
    invoke-static/range {p7 .. p7}, Landroidx/compose/material3/internal/LayoutUtilKt;->getWidthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v15

    add-int v16, v4, p16

    const/16 v18, 0x4

    const/16 v19, 0x0

    const/16 v17, 0x0

    move-object/from16 v13, p1

    move-object/from16 v14, p9

    invoke-static/range {v13 .. v19}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 1310
    :cond_5
    invoke-static/range {p7 .. p7}, Landroidx/compose/material3/internal/LayoutUtilKt;->getWidthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v0

    invoke-static/range {p9 .. p9}, Landroidx/compose/material3/internal/LayoutUtilKt;->getWidthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v2

    add-int/2addr v0, v2

    add-int v2, v4, p16

    const/4 v11, 0x4

    const/4 v12, 0x0

    const/4 v10, 0x0

    move-object/from16 v6, p1

    move-object/from16 v7, p4

    move v8, v0

    move v9, v2

    .line 1311
    invoke-static/range {v6 .. v12}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    if-eqz p6, :cond_6

    const/4 v11, 0x4

    const/4 v12, 0x0

    const/4 v10, 0x0

    move-object/from16 v6, p1

    move-object/from16 v7, p6

    move v8, v0

    move v9, v2

    .line 1312
    invoke-static/range {v6 .. v12}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    :cond_6
    if-eqz p10, :cond_7

    .line 1315
    invoke-static/range {p8 .. p8}, Landroidx/compose/material3/internal/LayoutUtilKt;->getWidthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v0

    sub-int v0, v1, v0

    invoke-virtual/range {p10 .. p10}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v3

    sub-int v8, v0, v3

    const/4 v11, 0x4

    const/4 v12, 0x0

    const/4 v10, 0x0

    move-object/from16 v6, p1

    move-object/from16 v7, p10

    move v9, v2

    .line 1314
    invoke-static/range {v6 .. v12}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    :cond_7
    if-eqz p8, :cond_8

    .line 1320
    invoke-virtual/range {p8 .. p8}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v0

    sub-int v15, v1, v0

    .line 1321
    sget-object v0, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getCenterVertically()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v0

    invoke-virtual/range {p8 .. p8}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v1

    invoke-interface {v0, v1, v5}, Landroidx/compose/ui/Alignment$Vertical;->align(II)I

    move-result v0

    add-int v16, v4, v0

    const/16 v18, 0x4

    const/16 v19, 0x0

    const/16 v17, 0x0

    move-object/from16 v13, p1

    move-object/from16 v14, p8

    .line 1319
    invoke-static/range {v13 .. v19}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    :cond_8
    if-eqz p12, :cond_9

    add-int v0, v4, v5

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

    .line 1324
    invoke-static/range {p0 .. p6}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    :cond_9
    return-void
.end method

.method private final placeWithoutLabel(Landroidx/compose/ui/layout/Placeable$PlacementScope;IILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;F)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v2, p5

    move-object/from16 v1, p8

    move-object/from16 v10, p9

    .line 1345
    sget-object v3, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/unit/IntOffset$Companion;->getZero-nOcc-ac()J

    move-result-wide v13

    const/16 v16, 0x2

    const/16 v17, 0x0

    const/4 v15, 0x0

    move-object/from16 v11, p1

    move-object/from16 v12, p10

    invoke-static/range {v11 .. v17}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place-70tqf50$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;JFILjava/lang/Object;)V

    .line 1349
    invoke-static/range {p11 .. p11}, Landroidx/compose/material3/internal/LayoutUtilKt;->getHeightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v3

    sub-int v11, p3, v3

    .line 1350
    iget-object v3, v0, Landroidx/compose/material3/TextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-interface {v3}, Landroidx/compose/foundation/layout/PaddingValues;->calculateTopPadding-D9Ej5fM()F

    move-result v3

    mul-float v3, v3, p12

    invoke-static {v3}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v12

    if-eqz p6, :cond_0

    .line 1354
    sget-object v3, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/Alignment$Companion;->getCenterVertically()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v3

    invoke-virtual/range {p6 .. p6}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v4

    invoke-interface {v3, v4, v11}, Landroidx/compose/ui/Alignment$Vertical;->align(II)I

    move-result v6

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p6

    .line 1352
    invoke-static/range {v3 .. v9}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    :cond_0
    if-eqz v1, :cond_1

    .line 1368
    invoke-static/range {p6 .. p6}, Landroidx/compose/material3/internal/LayoutUtilKt;->getWidthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v5

    .line 1369
    invoke-static {v0, v11, v12, v1}, Landroidx/compose/material3/TextFieldMeasurePolicy;->placeWithoutLabel$calculateVerticalPosition(Landroidx/compose/material3/TextFieldMeasurePolicy;IILandroidx/compose/ui/layout/Placeable;)I

    move-result v6

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p8

    .line 1367
    invoke-static/range {v3 .. v9}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 1372
    :cond_1
    invoke-static/range {p6 .. p6}, Landroidx/compose/material3/internal/LayoutUtilKt;->getWidthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v3

    invoke-static/range {p8 .. p8}, Landroidx/compose/material3/internal/LayoutUtilKt;->getWidthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v1

    add-int/2addr v3, v1

    move-object/from16 v1, p4

    .line 1376
    invoke-static {v0, v11, v12, v1}, Landroidx/compose/material3/TextFieldMeasurePolicy;->placeWithoutLabel$calculateVerticalPosition(Landroidx/compose/material3/TextFieldMeasurePolicy;IILandroidx/compose/ui/layout/Placeable;)I

    move-result v16

    const/16 v18, 0x4

    const/16 v19, 0x0

    const/16 v17, 0x0

    move-object/from16 v13, p1

    move-object/from16 v14, p4

    move v15, v3

    .line 1374
    invoke-static/range {v13 .. v19}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    if-eqz v2, :cond_2

    .line 1381
    invoke-static {v0, v11, v12, v2}, Landroidx/compose/material3/TextFieldMeasurePolicy;->placeWithoutLabel$calculateVerticalPosition(Landroidx/compose/material3/TextFieldMeasurePolicy;IILandroidx/compose/ui/layout/Placeable;)I

    move-result v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    .line 1379
    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    :cond_2
    if-eqz v10, :cond_3

    .line 1385
    invoke-static/range {p7 .. p7}, Landroidx/compose/material3/internal/LayoutUtilKt;->getWidthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual/range {p9 .. p9}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v2

    sub-int v2, v1, v2

    .line 1386
    invoke-static {v0, v11, v12, v10}, Landroidx/compose/material3/TextFieldMeasurePolicy;->placeWithoutLabel$calculateVerticalPosition(Landroidx/compose/material3/TextFieldMeasurePolicy;IILandroidx/compose/ui/layout/Placeable;)I

    move-result v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p9

    .line 1384
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    :cond_3
    if-eqz p7, :cond_4

    .line 1390
    invoke-virtual/range {p7 .. p7}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v0

    sub-int v14, p2, v0

    .line 1391
    sget-object v0, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getCenterVertically()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v0

    invoke-virtual/range {p7 .. p7}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v1

    invoke-interface {v0, v1, v11}, Landroidx/compose/ui/Alignment$Vertical;->align(II)I

    move-result v15

    const/16 v17, 0x4

    const/16 v18, 0x0

    const/16 v16, 0x0

    move-object/from16 v12, p1

    move-object/from16 v13, p7

    .line 1389
    invoke-static/range {v12 .. v18}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    :cond_4
    if-eqz p11, :cond_5

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 p0, p1

    move-object/from16 p1, p11

    move/from16 p2, v2

    move/from16 p3, v11

    move/from16 p4, v3

    move/from16 p5, v0

    move-object/from16 p6, v1

    .line 1394
    invoke-static/range {p0 .. p6}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    :cond_5
    return-void
.end method

.method private static final placeWithoutLabel$calculateVerticalPosition(Landroidx/compose/material3/TextFieldMeasurePolicy;IILandroidx/compose/ui/layout/Placeable;)I
    .locals 0

    .line 1360
    iget-boolean p0, p0, Landroidx/compose/material3/TextFieldMeasurePolicy;->singleLine:Z

    if-eqz p0, :cond_0

    .line 1361
    sget-object p0, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/Alignment$Companion;->getCenterVertically()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object p0

    invoke-virtual {p3}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result p2

    invoke-interface {p0, p2, p1}, Landroidx/compose/ui/Alignment$Vertical;->align(II)I

    move-result p2

    :cond_0
    return p2
.end method


# virtual methods
.method public maxIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 1

    .line 1006
    sget-object v0, Landroidx/compose/material3/TextFieldMeasurePolicy$maxIntrinsicHeight$1;->INSTANCE:Landroidx/compose/material3/TextFieldMeasurePolicy$maxIntrinsicHeight$1;

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/compose/material3/TextFieldMeasurePolicy;->intrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;ILkotlin/jvm/functions/Function2;)I

    move-result p0

    return p0
.end method

.method public maxIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 0

    .line 1024
    sget-object p1, Landroidx/compose/material3/TextFieldMeasurePolicy$maxIntrinsicWidth$1;->INSTANCE:Landroidx/compose/material3/TextFieldMeasurePolicy$maxIntrinsicWidth$1;

    invoke-direct {p0, p2, p3, p1}, Landroidx/compose/material3/TextFieldMeasurePolicy;->intrinsicWidth(Ljava/util/List;ILkotlin/jvm/functions/Function2;)I

    move-result p0

    return p0
.end method

.method public measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 45

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    .line 800
    iget-object v0, v13, Landroidx/compose/material3/TextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-interface {v0}, Landroidx/compose/foundation/layout/PaddingValues;->calculateTopPadding-D9Ej5fM()F

    move-result v0

    invoke-interface {v14, v0}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v16

    .line 801
    iget-object v0, v13, Landroidx/compose/material3/TextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-interface {v0}, Landroidx/compose/foundation/layout/PaddingValues;->calculateBottomPadding-D9Ej5fM()F

    move-result v0

    invoke-interface {v14, v0}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v0

    const/16 v7, 0xa

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-wide/from16 v1, p3

    .line 806
    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v10

    .line 34
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v12, 0x0

    move v2, v12

    :goto_0
    const/16 v23, 0x0

    if-ge v2, v1, :cond_1

    .line 35
    invoke-interface {v15, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 117
    move-object v4, v3

    check-cast v4, Landroidx/compose/ui/layout/Measurable;

    .line 810
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
    move-object/from16 v3, v23

    :goto_1
    check-cast v3, Landroidx/compose/ui/layout/Measurable;

    if-eqz v3, :cond_2

    invoke-interface {v3, v10, v11}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v1

    move-object/from16 v24, v1

    goto :goto_2

    :cond_2
    move-object/from16 v24, v23

    .line 811
    :goto_2
    invoke-static/range {v24 .. v24}, Landroidx/compose/material3/internal/LayoutUtilKt;->getWidthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v1

    .line 812
    invoke-static/range {v24 .. v24}, Landroidx/compose/material3/internal/LayoutUtilKt;->getHeightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v2

    invoke-static {v12, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 34
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    move v4, v12

    :goto_3
    if-ge v4, v3, :cond_4

    .line 35
    invoke-interface {v15, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 117
    move-object v6, v5

    check-cast v6, Landroidx/compose/ui/layout/Measurable;

    .line 817
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
    move-object/from16 v5, v23

    :goto_4
    check-cast v5, Landroidx/compose/ui/layout/Measurable;

    if-eqz v5, :cond_5

    neg-int v3, v1

    const/16 v21, 0x2

    const/16 v22, 0x0

    const/16 v20, 0x0

    move-wide/from16 v17, v10

    move/from16 v19, v3

    .line 818
    invoke-static/range {v17 .. v22}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U$default(JIIILjava/lang/Object;)J

    move-result-wide v3

    invoke-interface {v5, v3, v4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v3

    move-object/from16 v25, v3

    goto :goto_5

    :cond_5
    move-object/from16 v25, v23

    .line 819
    :goto_5
    invoke-static/range {v25 .. v25}, Landroidx/compose/material3/internal/LayoutUtilKt;->getWidthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v3

    add-int/2addr v1, v3

    .line 820
    invoke-static/range {v25 .. v25}, Landroidx/compose/material3/internal/LayoutUtilKt;->getHeightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 34
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    move v4, v12

    :goto_6
    if-ge v4, v3, :cond_7

    .line 35
    invoke-interface {v15, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 117
    move-object v6, v5

    check-cast v6, Landroidx/compose/ui/layout/Measurable;

    .line 825
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
    move-object/from16 v5, v23

    :goto_7
    check-cast v5, Landroidx/compose/ui/layout/Measurable;

    if-eqz v5, :cond_8

    neg-int v3, v1

    const/16 v21, 0x2

    const/16 v22, 0x0

    const/16 v20, 0x0

    move-wide/from16 v17, v10

    move/from16 v19, v3

    .line 826
    invoke-static/range {v17 .. v22}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U$default(JIIILjava/lang/Object;)J

    move-result-wide v3

    invoke-interface {v5, v3, v4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v3

    move-object/from16 v26, v3

    goto :goto_8

    :cond_8
    move-object/from16 v26, v23

    .line 827
    :goto_8
    invoke-static/range {v26 .. v26}, Landroidx/compose/material3/internal/LayoutUtilKt;->getWidthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v3

    add-int/2addr v1, v3

    .line 828
    invoke-static/range {v26 .. v26}, Landroidx/compose/material3/internal/LayoutUtilKt;->getHeightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 34
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    move v4, v12

    :goto_9
    if-ge v4, v3, :cond_a

    .line 35
    invoke-interface {v15, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 117
    move-object v6, v5

    check-cast v6, Landroidx/compose/ui/layout/Measurable;

    .line 833
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
    move-object/from16 v5, v23

    :goto_a
    check-cast v5, Landroidx/compose/ui/layout/Measurable;

    if-eqz v5, :cond_b

    neg-int v3, v1

    const/16 v21, 0x2

    const/16 v22, 0x0

    const/16 v20, 0x0

    move-wide/from16 v17, v10

    move/from16 v19, v3

    .line 834
    invoke-static/range {v17 .. v22}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U$default(JIIILjava/lang/Object;)J

    move-result-wide v3

    invoke-interface {v5, v3, v4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v3

    move-object/from16 v27, v3

    goto :goto_b

    :cond_b
    move-object/from16 v27, v23

    .line 835
    :goto_b
    invoke-static/range {v27 .. v27}, Landroidx/compose/material3/internal/LayoutUtilKt;->getWidthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v3

    add-int/2addr v1, v3

    .line 836
    invoke-static/range {v27 .. v27}, Landroidx/compose/material3/internal/LayoutUtilKt;->getHeightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 34
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    move v4, v12

    :goto_c
    if-ge v4, v3, :cond_d

    .line 35
    invoke-interface {v15, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 117
    move-object v6, v5

    check-cast v6, Landroidx/compose/ui/layout/Measurable;

    .line 839
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
    move-object/from16 v5, v23

    :goto_d
    check-cast v5, Landroidx/compose/ui/layout/Measurable;

    .line 840
    new-instance v8, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    neg-int v3, v0

    neg-int v4, v1

    .line 845
    invoke-static {v10, v11, v4, v3}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U(JII)J

    move-result-wide v3

    if-eqz v5, :cond_e

    .line 849
    invoke-interface {v5, v3, v4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v3

    goto :goto_e

    :cond_e
    move-object/from16 v3, v23

    :goto_e
    iput-object v3, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 34
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    move v4, v12

    :goto_f
    if-ge v4, v3, :cond_10

    .line 35
    invoke-interface {v15, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 117
    move-object v6, v5

    check-cast v6, Landroidx/compose/ui/layout/Measurable;

    .line 859
    invoke-static {v6}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "Supporting"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    goto :goto_10

    :cond_f
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_10
    move-object/from16 v5, v23

    :goto_10
    move-object v9, v5

    check-cast v9, Landroidx/compose/ui/layout/Measurable;

    if-eqz v9, :cond_11

    .line 861
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v3

    invoke-interface {v9, v3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->minIntrinsicHeight(I)I

    move-result v3

    goto :goto_11

    :cond_11
    move v3, v12

    .line 864
    :goto_11
    iget-object v4, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/ui/layout/Placeable;

    invoke-static {v4}, Landroidx/compose/material3/internal/LayoutUtilKt;->getHeightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v4

    add-int v4, v16, v4

    const/16 v34, 0xb

    const/16 v35, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-wide/from16 v28, p3

    .line 870
    invoke-static/range {v28 .. v35}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v5

    neg-int v7, v4

    sub-int/2addr v7, v0

    sub-int/2addr v7, v3

    neg-int v1, v1

    .line 871
    invoke-static {v5, v6, v1, v7}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U(JII)J

    move-result-wide v5

    .line 34
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    move v3, v12

    :goto_12
    const-string v7, "Collection contains no element matching the predicate."

    if-ge v3, v1, :cond_1b

    .line 35
    invoke-interface {v15, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    .line 545
    move-object/from16 v12, v17

    check-cast v12, Landroidx/compose/ui/layout/Measurable;

    move/from16 v17, v1

    .line 876
    invoke-static {v12}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v7

    const-string v7, "TextField"

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v12, v5, v6}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v36

    const/16 v34, 0xe

    const/16 v35, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-wide/from16 v28, v5

    .line 879
    invoke-static/range {v28 .. v35}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v5

    .line 34
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v1, :cond_13

    .line 35
    invoke-interface {v15, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 117
    move-object v12, v7

    check-cast v12, Landroidx/compose/ui/layout/Measurable;

    .line 882
    invoke-static {v12}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v12

    move/from16 v17, v1

    const-string v1, "Hint"

    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_14

    :cond_12
    add-int/lit8 v3, v3, 0x1

    move/from16 v1, v17

    goto :goto_13

    :cond_13
    move-object/from16 v7, v23

    :goto_14
    check-cast v7, Landroidx/compose/ui/layout/Measurable;

    if-eqz v7, :cond_14

    .line 883
    invoke-interface {v7, v5, v6}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v1

    move-object/from16 v28, v1

    goto :goto_15

    :cond_14
    move-object/from16 v28, v23

    .line 888
    :goto_15
    invoke-static/range {v36 .. v36}, Landroidx/compose/material3/internal/LayoutUtilKt;->getHeightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v1

    invoke-static/range {v28 .. v28}, Landroidx/compose/material3/internal/LayoutUtilKt;->getHeightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v1, v4

    add-int/2addr v1, v0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 894
    invoke-static/range {v24 .. v24}, Landroidx/compose/material3/internal/LayoutUtilKt;->getWidthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v1

    .line 895
    invoke-static/range {v25 .. v25}, Landroidx/compose/material3/internal/LayoutUtilKt;->getWidthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v2

    .line 896
    invoke-static/range {v26 .. v26}, Landroidx/compose/material3/internal/LayoutUtilKt;->getWidthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v3

    .line 897
    invoke-static/range {v27 .. v27}, Landroidx/compose/material3/internal/LayoutUtilKt;->getWidthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v4

    .line 898
    invoke-virtual/range {v36 .. v36}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v5

    .line 899
    iget-object v0, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/layout/Placeable;

    invoke-static {v0}, Landroidx/compose/material3/internal/LayoutUtilKt;->getWidthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v6

    .line 900
    invoke-static/range {v28 .. v28}, Landroidx/compose/material3/internal/LayoutUtilKt;->getWidthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v7

    move-object/from16 v0, p0

    move-object/from16 v13, v18

    move-object v14, v8

    move-object/from16 v29, v13

    move-object v13, v9

    move-wide/from16 v8, p3

    .line 893
    invoke-direct/range {v0 .. v9}, Landroidx/compose/material3/TextFieldMeasurePolicy;->calculateWidth-yeHjK3Y(IIIIIIIJ)I

    move-result v9

    neg-int v0, v12

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v19, 0x0

    move-wide/from16 v17, v10

    move/from16 v20, v0

    .line 914
    invoke-static/range {v17 .. v22}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U$default(JIIILjava/lang/Object;)J

    move-result-wide v37

    const/16 v43, 0x9

    const/16 v44, 0x0

    const/16 v39, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    move/from16 v40, v9

    .line 915
    invoke-static/range {v37 .. v44}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v0

    if-eqz v13, :cond_15

    .line 916
    invoke-interface {v13, v0, v1}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v0

    move-object/from16 v23, v0

    .line 917
    :cond_15
    invoke-static/range {v23 .. v23}, Landroidx/compose/material3/internal/LayoutUtilKt;->getHeightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v13

    .line 921
    invoke-virtual/range {v36 .. v36}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v2

    .line 922
    iget-object v0, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/layout/Placeable;

    invoke-static {v0}, Landroidx/compose/material3/internal/LayoutUtilKt;->getHeightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v3

    .line 923
    invoke-static/range {v24 .. v24}, Landroidx/compose/material3/internal/LayoutUtilKt;->getHeightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v4

    .line 924
    invoke-static/range {v25 .. v25}, Landroidx/compose/material3/internal/LayoutUtilKt;->getHeightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v5

    .line 925
    invoke-static/range {v26 .. v26}, Landroidx/compose/material3/internal/LayoutUtilKt;->getHeightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v6

    .line 926
    invoke-static/range {v27 .. v27}, Landroidx/compose/material3/internal/LayoutUtilKt;->getHeightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v7

    .line 927
    invoke-static/range {v28 .. v28}, Landroidx/compose/material3/internal/LayoutUtilKt;->getHeightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v8

    .line 928
    invoke-static/range {v23 .. v23}, Landroidx/compose/material3/internal/LayoutUtilKt;->getHeightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v10

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v12, v9

    move v9, v10

    move-wide/from16 v10, p3

    move-object/from16 v19, v14

    const/16 v18, 0x0

    move v14, v12

    move/from16 v12, v17

    .line 920
    invoke-direct/range {v0 .. v12}, Landroidx/compose/material3/TextFieldMeasurePolicy;->calculateHeight-aSWTPvA(Landroidx/compose/ui/unit/Density;IIIIIIIIJZ)I

    move-result v20

    sub-int v4, v20, v13

    .line 34
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    move/from16 v12, v18

    :goto_16
    if-ge v12, v0, :cond_19

    .line 35
    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 545
    check-cast v1, Landroidx/compose/ui/layout/Measurable;

    .line 937
    invoke-static {v1}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Container"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const v0, 0x7fffffff

    if-eq v14, v0, :cond_16

    move v12, v14

    goto :goto_17

    :cond_16
    move/from16 v12, v18

    :goto_17
    if-eq v4, v0, :cond_17

    move v0, v4

    goto :goto_18

    :cond_17
    move/from16 v0, v18

    .line 939
    :goto_18
    invoke-static {v12, v14, v0, v4}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints(IIII)J

    move-result-wide v2

    .line 938
    invoke-interface {v1, v2, v3}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v15

    .line 947
    new-instance v18, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v17

    move-object/from16 v3, p0

    move/from16 v5, v16

    move-object/from16 v6, p1

    move v7, v14

    move/from16 v8, v20

    move-object/from16 v9, v36

    move-object/from16 v10, v28

    move-object/from16 v11, v24

    move-object/from16 v12, v25

    move-object/from16 v13, v26

    move/from16 v21, v14

    move-object/from16 v14, v27

    move-object/from16 v16, v23

    invoke-direct/range {v0 .. v16}, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;ZLandroidx/compose/material3/TextFieldMeasurePolicy;IILandroidx/compose/ui/layout/MeasureScope;IILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v20

    move-object/from16 v4, v18

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0

    :cond_18
    move/from16 v21, v14

    add-int/lit8 v12, v12, 0x1

    goto :goto_16

    .line 546
    :cond_19
    new-instance v0, Ljava/util/NoSuchElementException;

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    move-object/from16 v19, v8

    move-object v13, v9

    const/16 v18, 0x0

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v14, p1

    move/from16 v1, v17

    move/from16 v12, v18

    move-object/from16 v13, p0

    goto/16 :goto_12

    :cond_1b
    move-object v1, v7

    .line 546
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public minIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 1

    .line 1015
    sget-object v0, Landroidx/compose/material3/TextFieldMeasurePolicy$minIntrinsicHeight$1;->INSTANCE:Landroidx/compose/material3/TextFieldMeasurePolicy$minIntrinsicHeight$1;

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/compose/material3/TextFieldMeasurePolicy;->intrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;ILkotlin/jvm/functions/Function2;)I

    move-result p0

    return p0
.end method

.method public minIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 0

    .line 1033
    sget-object p1, Landroidx/compose/material3/TextFieldMeasurePolicy$minIntrinsicWidth$1;->INSTANCE:Landroidx/compose/material3/TextFieldMeasurePolicy$minIntrinsicWidth$1;

    invoke-direct {p0, p2, p3, p1}, Landroidx/compose/material3/TextFieldMeasurePolicy;->intrinsicWidth(Ljava/util/List;ILkotlin/jvm/functions/Function2;)I

    move-result p0

    return p0
.end method
