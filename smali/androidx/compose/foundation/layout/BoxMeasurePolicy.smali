.class final Landroidx/compose/foundation/layout/BoxMeasurePolicy;
.super Ljava/lang/Object;
.source "Box.kt"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# instance fields
.field private final alignment:Landroidx/compose/ui/Alignment;

.field private final propagateMinConstraints:Z


# direct methods
.method public constructor <init>(Landroidx/compose/ui/Alignment;Z)V
    .locals 0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Landroidx/compose/foundation/layout/BoxMeasurePolicy;->alignment:Landroidx/compose/ui/Alignment;

    .line 122
    iput-boolean p2, p0, Landroidx/compose/foundation/layout/BoxMeasurePolicy;->propagateMinConstraints:Z

    return-void
.end method

.method public static final synthetic access$getAlignment$p(Landroidx/compose/foundation/layout/BoxMeasurePolicy;)Landroidx/compose/ui/Alignment;
    .locals 0

    .line 120
    iget-object p0, p0, Landroidx/compose/foundation/layout/BoxMeasurePolicy;->alignment:Landroidx/compose/ui/Alignment;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/foundation/layout/BoxMeasurePolicy;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/foundation/layout/BoxMeasurePolicy;

    iget-object v1, p0, Landroidx/compose/foundation/layout/BoxMeasurePolicy;->alignment:Landroidx/compose/ui/Alignment;

    iget-object v3, p1, Landroidx/compose/foundation/layout/BoxMeasurePolicy;->alignment:Landroidx/compose/ui/Alignment;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean p0, p0, Landroidx/compose/foundation/layout/BoxMeasurePolicy;->propagateMinConstraints:Z

    iget-boolean p1, p1, Landroidx/compose/foundation/layout/BoxMeasurePolicy;->propagateMinConstraints:Z

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/foundation/layout/BoxMeasurePolicy;->alignment:Landroidx/compose/ui/Alignment;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Landroidx/compose/foundation/layout/BoxMeasurePolicy;->propagateMinConstraints:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 16

    move-object/from16 v2, p2

    .line 128
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v2

    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v3

    sget-object v5, Landroidx/compose/foundation/layout/BoxMeasurePolicy$measure$1;->INSTANCE:Landroidx/compose/foundation/layout/BoxMeasurePolicy$measure$1;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0

    :cond_0
    move-object/from16 v7, p0

    .line 133
    iget-boolean v0, v7, Landroidx/compose/foundation/layout/BoxMeasurePolicy;->propagateMinConstraints:Z

    if-eqz v0, :cond_1

    move-wide/from16 v0, p3

    goto :goto_0

    :cond_1
    const-wide v0, -0x1fffffffdL

    and-long v0, p3, v0

    .line 203
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->constructor-impl(J)J

    move-result-wide v0

    .line 139
    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v3, v4, :cond_3

    .line 140
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroidx/compose/ui/layout/Measurable;

    .line 144
    invoke-static {v3}, Landroidx/compose/foundation/layout/BoxKt;->access$getMatchesParentSize(Landroidx/compose/ui/layout/Measurable;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 145
    invoke-interface {v3, v0, v1}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v0

    .line 146
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v1

    invoke-virtual {v0}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 147
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v2

    invoke-virtual {v0}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    :goto_1
    move v8, v2

    move-object v2, v0

    move v0, v1

    goto :goto_2

    .line 149
    :cond_2
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v1

    .line 150
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v2

    .line 153
    sget-object v0, Landroidx/compose/ui/unit/Constraints;->Companion:Landroidx/compose/ui/unit/Constraints$Companion;

    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v4

    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroidx/compose/ui/unit/Constraints$Companion;->fixed-JhjzzOo(II)J

    move-result-wide v4

    .line 152
    invoke-interface {v3, v4, v5}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v0

    goto :goto_1

    .line 156
    :goto_2
    new-instance v9, Landroidx/compose/foundation/layout/BoxMeasurePolicy$measure$2;

    move-object v1, v9

    move-object/from16 v4, p1

    move v5, v0

    move v6, v8

    move-object/from16 v7, p0

    invoke-direct/range {v1 .. v7}, Landroidx/compose/foundation/layout/BoxMeasurePolicy$measure$2;-><init>(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Measurable;Landroidx/compose/ui/layout/MeasureScope;IILandroidx/compose/foundation/layout/BoxMeasurePolicy;)V

    const/4 v1, 0x4

    const/4 v10, 0x0

    const/4 v7, 0x0

    move-object v8, v9

    move v9, v1

    invoke-static/range {v4 .. v10}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0

    .line 161
    :cond_3
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Landroidx/compose/ui/layout/Placeable;

    .line 164
    new-instance v6, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v8

    iput v8, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 165
    new-instance v8, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v9

    iput v9, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 70
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->size()I

    move-result v9

    move v10, v5

    move v11, v10

    :goto_3
    if-ge v10, v9, :cond_5

    .line 71
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 72
    check-cast v12, Landroidx/compose/ui/layout/Measurable;

    .line 167
    invoke-static {v12}, Landroidx/compose/foundation/layout/BoxKt;->access$getMatchesParentSize(Landroidx/compose/ui/layout/Measurable;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 168
    invoke-interface {v12, v0, v1}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v12

    .line 169
    aput-object v12, v3, v10

    .line 170
    iget v13, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v12}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    iput v13, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 171
    iget v13, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v12}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v12

    invoke-static {v13, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    iput v12, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    goto :goto_4

    :cond_4
    move v11, v4

    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_5
    if-eqz v11, :cond_9

    .line 182
    iget v0, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_6

    move v4, v0

    goto :goto_5

    :cond_6
    move v4, v5

    .line 183
    :goto_5
    iget v9, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-eq v9, v1, :cond_7

    move v1, v9

    goto :goto_6

    :cond_7
    move v1, v5

    .line 181
    :goto_6
    invoke-static {v4, v0, v1, v9}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints(IIII)J

    move-result-wide v0

    .line 70
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->size()I

    move-result v4

    :goto_7
    if-ge v5, v4, :cond_9

    .line 71
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 72
    check-cast v9, Landroidx/compose/ui/layout/Measurable;

    .line 188
    invoke-static {v9}, Landroidx/compose/foundation/layout/BoxKt;->access$getMatchesParentSize(Landroidx/compose/ui/layout/Measurable;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 189
    invoke-interface {v9, v0, v1}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v9

    aput-object v9, v3, v5

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 195
    :cond_9
    iget v10, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget v11, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    new-instance v13, Landroidx/compose/foundation/layout/BoxMeasurePolicy$measure$5;

    move-object v0, v13

    move-object v1, v3

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    move-object v4, v6

    move-object v5, v8

    move-object/from16 v6, p0

    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/layout/BoxMeasurePolicy$measure$5;-><init>([Landroidx/compose/ui/layout/Placeable;Ljava/util/List;Landroidx/compose/ui/layout/MeasureScope;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Landroidx/compose/foundation/layout/BoxMeasurePolicy;)V

    const/4 v14, 0x4

    const/4 v15, 0x0

    const/4 v12, 0x0

    move-object/from16 v9, p1

    invoke-static/range {v9 .. v15}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BoxMeasurePolicy(alignment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/foundation/layout/BoxMeasurePolicy;->alignment:Landroidx/compose/ui/Alignment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", propagateMinConstraints="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Landroidx/compose/foundation/layout/BoxMeasurePolicy;->propagateMinConstraints:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
