.class final Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Scaffold.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic $bottomBar:Lkotlin/jvm/functions/Function2;

.field final synthetic $content:Lkotlin/jvm/functions/Function3;

.field final synthetic $contentWindowInsets:Landroidx/compose/foundation/layout/WindowInsets;

.field final synthetic $fab:Lkotlin/jvm/functions/Function2;

.field final synthetic $fabPosition:I

.field final synthetic $snackbar:Lkotlin/jvm/functions/Function2;

.field final synthetic $topBar:Lkotlin/jvm/functions/Function2;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ILandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$1$1;->$topBar:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$1$1;->$snackbar:Lkotlin/jvm/functions/Function2;

    iput-object p3, p0, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$1$1;->$fab:Lkotlin/jvm/functions/Function2;

    iput p4, p0, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$1$1;->$fabPosition:I

    iput-object p5, p0, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$1$1;->$contentWindowInsets:Landroidx/compose/foundation/layout/WindowInsets;

    iput-object p6, p0, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$1$1;->$bottomBar:Lkotlin/jvm/functions/Function2;

    iput-object p7, p0, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$1$1;->$content:Lkotlin/jvm/functions/Function3;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 139
    check-cast p1, Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    check-cast p2, Landroidx/compose/ui/unit/Constraints;

    invoke-virtual {p2}, Landroidx/compose/ui/unit/Constraints;->unbox-impl()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$1$1;->invoke-0kLqBqw(Landroidx/compose/ui/layout/SubcomposeMeasureScope;J)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method

.method public final invoke-0kLqBqw(Landroidx/compose/ui/layout/SubcomposeMeasureScope;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    .line 140
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v16

    .line 141
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v17

    const/16 v7, 0xa

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-wide/from16 v1, p2

    .line 143
    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v9

    .line 146
    sget-object v1, Landroidx/compose/material3/ScaffoldLayoutContent;->TopBar:Landroidx/compose/material3/ScaffoldLayoutContent;

    iget-object v2, v0, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$1$1;->$topBar:Lkotlin/jvm/functions/Function2;

    invoke-interface {v15, v1, v2}, Landroidx/compose/ui/layout/SubcomposeMeasureScope;->subcompose(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/List;

    move-result-object v1

    .line 152
    new-instance v11, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v11, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v12, 0x0

    move v3, v12

    :goto_0
    if-ge v3, v2, :cond_0

    .line 35
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 362
    check-cast v4, Landroidx/compose/ui/layout/Measurable;

    .line 147
    invoke-interface {v4, v9, v10}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v4

    .line 362
    invoke-interface {v11, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 172
    :cond_0
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v13, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_2

    .line 173
    :cond_1
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 174
    move-object v3, v1

    check-cast v3, Landroidx/compose/ui/layout/Placeable;

    .line 150
    invoke-virtual {v3}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v3

    .line 175
    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v4

    if-gt v13, v4, :cond_3

    move v5, v13

    .line 176
    :goto_1
    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 372
    move-object v7, v6

    check-cast v7, Landroidx/compose/ui/layout/Placeable;

    .line 150
    invoke-virtual {v7}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v7

    if-ge v3, v7, :cond_2

    move-object v1, v6

    move v3, v7

    :cond_2
    if-eq v5, v4, :cond_3

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    check-cast v1, Landroidx/compose/ui/layout/Placeable;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v1

    move v5, v1

    goto :goto_3

    :cond_4
    move v5, v12

    .line 153
    :goto_3
    sget-object v1, Landroidx/compose/material3/ScaffoldLayoutContent;->Snackbar:Landroidx/compose/material3/ScaffoldLayoutContent;

    iget-object v3, v0, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$1$1;->$snackbar:Lkotlin/jvm/functions/Function2;

    invoke-interface {v15, v1, v3}, Landroidx/compose/ui/layout/SubcomposeMeasureScope;->subcompose(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/List;

    move-result-object v1

    iget-object v3, v0, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$1$1;->$contentWindowInsets:Landroidx/compose/foundation/layout/WindowInsets;

    .line 152
    new-instance v14, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v14, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    move v6, v12

    :goto_4
    if-ge v6, v4, :cond_5

    .line 35
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 386
    check-cast v7, Landroidx/compose/ui/layout/Measurable;

    .line 155
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v8

    invoke-interface {v3, v15, v8}, Landroidx/compose/foundation/layout/WindowInsets;->getLeft(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;)I

    move-result v8

    .line 157
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v2

    invoke-interface {v3, v15, v2}, Landroidx/compose/foundation/layout/WindowInsets;->getRight(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;)I

    move-result v2

    .line 158
    invoke-interface {v3, v15}, Landroidx/compose/foundation/layout/WindowInsets;->getBottom(Landroidx/compose/ui/unit/Density;)I

    move-result v13

    neg-int v8, v8

    sub-int/2addr v8, v2

    neg-int v2, v13

    .line 160
    invoke-static {v9, v10, v8, v2}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U(JII)J

    move-result-wide v12

    invoke-interface {v7, v12, v13}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v2

    .line 386
    invoke-interface {v14, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    goto :goto_4

    .line 172
    :cond_5
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v2, 0x0

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    .line 173
    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 174
    move-object v1, v2

    check-cast v1, Landroidx/compose/ui/layout/Placeable;

    .line 163
    invoke-virtual {v1}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v1

    .line 175
    invoke-static {v14}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v3

    const/4 v4, 0x1

    if-gt v4, v3, :cond_9

    move-object v4, v2

    move v2, v1

    const/4 v1, 0x1

    .line 176
    :goto_5
    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 396
    move-object v7, v6

    check-cast v7, Landroidx/compose/ui/layout/Placeable;

    .line 163
    invoke-virtual {v7}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v7

    if-ge v2, v7, :cond_7

    move-object v4, v6

    move v2, v7

    :cond_7
    if-eq v1, v3, :cond_8

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_8
    move-object v2, v4

    :cond_9
    :goto_6
    check-cast v2, Landroidx/compose/ui/layout/Placeable;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v1

    goto :goto_7

    :cond_a
    const/4 v1, 0x0

    .line 172
    :goto_7
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v3, 0x0

    goto :goto_9

    :cond_b
    const/4 v2, 0x0

    .line 173
    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 174
    move-object v2, v3

    check-cast v2, Landroidx/compose/ui/layout/Placeable;

    .line 164
    invoke-virtual {v2}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v2

    .line 175
    invoke-static {v14}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v4

    const/4 v6, 0x1

    if-gt v6, v4, :cond_e

    move-object v6, v3

    move v3, v2

    const/4 v2, 0x1

    .line 176
    :goto_8
    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 409
    move-object v8, v7

    check-cast v8, Landroidx/compose/ui/layout/Placeable;

    .line 164
    invoke-virtual {v8}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v8

    if-ge v3, v8, :cond_c

    move-object v6, v7

    move v3, v8

    :cond_c
    if-eq v2, v4, :cond_d

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_d
    move-object v3, v6

    :cond_e
    :goto_9
    check-cast v3, Landroidx/compose/ui/layout/Placeable;

    if-eqz v3, :cond_f

    invoke-virtual {v3}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v2

    move v12, v2

    goto :goto_a

    :cond_f
    const/4 v12, 0x0

    .line 167
    :goto_a
    sget-object v2, Landroidx/compose/material3/ScaffoldLayoutContent;->Fab:Landroidx/compose/material3/ScaffoldLayoutContent;

    iget-object v3, v0, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$1$1;->$fab:Lkotlin/jvm/functions/Function2;

    invoke-interface {v15, v2, v3}, Landroidx/compose/ui/layout/SubcomposeMeasureScope;->subcompose(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/List;

    move-result-object v2

    iget-object v3, v0, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$1$1;->$contentWindowInsets:Landroidx/compose/foundation/layout/WindowInsets;

    .line 417
    new-instance v13, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v13, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x0

    :goto_b
    if-ge v6, v4, :cond_12

    .line 35
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 423
    check-cast v7, Landroidx/compose/ui/layout/Measurable;

    .line 169
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v8

    invoke-interface {v3, v15, v8}, Landroidx/compose/foundation/layout/WindowInsets;->getLeft(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;)I

    move-result v8

    move-object/from16 v19, v2

    .line 171
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v2

    invoke-interface {v3, v15, v2}, Landroidx/compose/foundation/layout/WindowInsets;->getRight(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;)I

    move-result v2

    move/from16 v20, v4

    .line 172
    invoke-interface {v3, v15}, Landroidx/compose/foundation/layout/WindowInsets;->getBottom(Landroidx/compose/ui/unit/Density;)I

    move-result v4

    neg-int v8, v8

    sub-int/2addr v8, v2

    neg-int v2, v4

    move-object v4, v3

    .line 174
    invoke-static {v9, v10, v8, v2}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U(JII)J

    move-result-wide v2

    invoke-interface {v7, v2, v3}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v2

    .line 175
    invoke-virtual {v2}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {v2}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v3

    if-eqz v3, :cond_10

    goto :goto_c

    :cond_10
    const/4 v2, 0x0

    :goto_c
    if-eqz v2, :cond_11

    .line 423
    invoke-interface {v13, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_11
    add-int/lit8 v6, v6, 0x1

    move-object v3, v4

    move-object/from16 v2, v19

    move/from16 v4, v20

    goto :goto_b

    .line 179
    :cond_12
    invoke-interface {v13}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_20

    .line 172
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v3, 0x0

    goto :goto_e

    :cond_13
    const/4 v2, 0x0

    .line 173
    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 174
    move-object v2, v3

    check-cast v2, Landroidx/compose/ui/layout/Placeable;

    .line 180
    invoke-virtual {v2}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v2

    .line 175
    invoke-static {v13}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v4

    const/4 v6, 0x1

    if-gt v6, v4, :cond_16

    move-object v6, v3

    move v3, v2

    const/4 v2, 0x1

    .line 176
    :goto_d
    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 435
    move-object v8, v7

    check-cast v8, Landroidx/compose/ui/layout/Placeable;

    .line 180
    invoke-virtual {v8}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v8

    if-ge v3, v8, :cond_14

    move-object v6, v7

    move v3, v8

    :cond_14
    if-eq v2, v4, :cond_15

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_15
    move-object v3, v6

    .line 441
    :cond_16
    :goto_e
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Landroidx/compose/ui/layout/Placeable;

    .line 180
    invoke-virtual {v3}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v2

    .line 172
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_17

    const/4 v4, 0x0

    goto :goto_11

    :cond_17
    const/4 v3, 0x0

    .line 173
    invoke-interface {v13, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 174
    move-object v3, v4

    check-cast v3, Landroidx/compose/ui/layout/Placeable;

    .line 181
    invoke-virtual {v3}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v3

    .line 175
    invoke-static {v13}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v6

    const/4 v7, 0x1

    if-gt v7, v6, :cond_1a

    move-object v7, v4

    move v4, v3

    const/4 v3, 0x1

    .line 176
    :goto_f
    invoke-interface {v13, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 448
    move-object/from16 v19, v8

    check-cast v19, Landroidx/compose/ui/layout/Placeable;

    move-object/from16 v20, v7

    .line 181
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v7

    if-ge v4, v7, :cond_18

    move v4, v7

    move-object v7, v8

    goto :goto_10

    :cond_18
    move-object/from16 v7, v20

    :goto_10
    if-eq v3, v6, :cond_19

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_19
    move-object v4, v7

    .line 454
    :cond_1a
    :goto_11
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v4, Landroidx/compose/ui/layout/Placeable;

    .line 181
    invoke-virtual {v4}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v3

    .line 184
    iget v4, v0, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$1$1;->$fabPosition:I

    .line 185
    sget-object v6, Landroidx/compose/material3/FabPosition;->Companion:Landroidx/compose/material3/FabPosition$Companion;

    invoke-virtual {v6}, Landroidx/compose/material3/FabPosition$Companion;->getStart-ERTFSPs()I

    move-result v7

    invoke-static {v4, v7}, Landroidx/compose/material3/FabPosition;->equals-impl0(II)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 186
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v4

    sget-object v6, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne v4, v6, :cond_1b

    .line 187
    invoke-static {}, Landroidx/compose/material3/ScaffoldKt;->access$getFabSpacing$p()F

    move-result v4

    invoke-interface {v15, v4}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v4

    goto :goto_14

    .line 189
    :cond_1b
    invoke-static {}, Landroidx/compose/material3/ScaffoldKt;->access$getFabSpacing$p()F

    move-result v4

    invoke-interface {v15, v4}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v4

    :goto_12
    sub-int v4, v16, v4

    sub-int/2addr v4, v2

    goto :goto_14

    .line 192
    :cond_1c
    invoke-virtual {v6}, Landroidx/compose/material3/FabPosition$Companion;->getEnd-ERTFSPs()I

    move-result v7

    invoke-static {v4, v7}, Landroidx/compose/material3/FabPosition;->equals-impl0(II)Z

    move-result v7

    if-eqz v7, :cond_1d

    const/4 v4, 0x1

    goto :goto_13

    .line 193
    :cond_1d
    invoke-virtual {v6}, Landroidx/compose/material3/FabPosition$Companion;->getEndOverlay-ERTFSPs()I

    move-result v6

    invoke-static {v4, v6}, Landroidx/compose/material3/FabPosition;->equals-impl0(II)Z

    move-result v4

    :goto_13
    if-eqz v4, :cond_1f

    .line 194
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v4

    sget-object v6, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne v4, v6, :cond_1e

    .line 195
    invoke-static {}, Landroidx/compose/material3/ScaffoldKt;->access$getFabSpacing$p()F

    move-result v4

    invoke-interface {v15, v4}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v4

    goto :goto_12

    .line 197
    :cond_1e
    invoke-static {}, Landroidx/compose/material3/ScaffoldKt;->access$getFabSpacing$p()F

    move-result v4

    invoke-interface {v15, v4}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v4

    goto :goto_14

    :cond_1f
    sub-int v4, v16, v2

    .line 200
    div-int/lit8 v4, v4, 0x2

    .line 203
    :goto_14
    new-instance v6, Landroidx/compose/material3/FabPlacement;

    invoke-direct {v6, v4, v2, v3}, Landroidx/compose/material3/FabPlacement;-><init>(III)V

    move-object/from16 v19, v6

    goto :goto_15

    :cond_20
    const/16 v19, 0x0

    .line 209
    :goto_15
    sget-object v2, Landroidx/compose/material3/ScaffoldLayoutContent;->BottomBar:Landroidx/compose/material3/ScaffoldLayoutContent;

    new-instance v3, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$1$1$bottomBarPlaceables$1;

    iget-object v4, v0, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$1$1;->$bottomBar:Lkotlin/jvm/functions/Function2;

    invoke-direct {v3, v4}, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$1$1$bottomBarPlaceables$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    const v4, -0x7ff00d2f

    const/4 v6, 0x1

    invoke-static {v4, v6, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v3

    invoke-interface {v15, v2, v3}, Landroidx/compose/ui/layout/SubcomposeMeasureScope;->subcompose(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/List;

    move-result-object v2

    .line 152
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v8, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_16
    if-ge v4, v3, :cond_21

    .line 35
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 462
    check-cast v6, Landroidx/compose/ui/layout/Measurable;

    .line 210
    invoke-interface {v6, v9, v10}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v6

    .line 462
    invoke-interface {v8, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 172
    :cond_21
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_22

    const/4 v2, 0x0

    goto :goto_18

    :cond_22
    const/4 v7, 0x0

    .line 173
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 174
    move-object v3, v2

    check-cast v3, Landroidx/compose/ui/layout/Placeable;

    .line 212
    invoke-virtual {v3}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v3

    .line 175
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v4

    const/4 v6, 0x1

    if-gt v6, v4, :cond_24

    const/4 v6, 0x1

    .line 176
    :goto_17
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    .line 472
    move-object/from16 v20, v18

    check-cast v20, Landroidx/compose/ui/layout/Placeable;

    .line 212
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v7

    if-ge v3, v7, :cond_23

    move v3, v7

    move-object/from16 v2, v18

    :cond_23
    if-eq v6, v4, :cond_24

    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x0

    goto :goto_17

    :cond_24
    :goto_18
    check-cast v2, Landroidx/compose/ui/layout/Placeable;

    if-eqz v2, :cond_25

    invoke-virtual {v2}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v18, v2

    goto :goto_19

    :cond_25
    const/16 v18, 0x0

    :goto_19
    if-eqz v19, :cond_28

    .line 214
    iget v2, v0, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$1$1;->$fabPosition:I

    iget-object v3, v0, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$1$1;->$contentWindowInsets:Landroidx/compose/foundation/layout/WindowInsets;

    if-eqz v18, :cond_27

    .line 215
    sget-object v4, Landroidx/compose/material3/FabPosition;->Companion:Landroidx/compose/material3/FabPosition$Companion;

    invoke-virtual {v4}, Landroidx/compose/material3/FabPosition$Companion;->getEndOverlay-ERTFSPs()I

    move-result v4

    invoke-static {v2, v4}, Landroidx/compose/material3/FabPosition;->equals-impl0(II)Z

    move-result v2

    if-eqz v2, :cond_26

    goto :goto_1b

    .line 222
    :cond_26
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/material3/FabPlacement;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {}, Landroidx/compose/material3/ScaffoldKt;->access$getFabSpacing$p()F

    move-result v3

    invoke-interface {v15, v3}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v3

    :goto_1a
    add-int/2addr v2, v3

    goto :goto_1c

    .line 216
    :cond_27
    :goto_1b
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/material3/FabPlacement;->getHeight()I

    move-result v2

    .line 217
    invoke-static {}, Landroidx/compose/material3/ScaffoldKt;->access$getFabSpacing$p()F

    move-result v4

    invoke-interface {v15, v4}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v4

    add-int/2addr v2, v4

    .line 218
    invoke-interface {v3, v15}, Landroidx/compose/foundation/layout/WindowInsets;->getBottom(Landroidx/compose/ui/unit/Density;)I

    move-result v3

    goto :goto_1a

    .line 223
    :goto_1c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v20, v2

    goto :goto_1d

    :cond_28
    const/16 v20, 0x0

    :goto_1d
    if-eqz v1, :cond_2b

    if-eqz v20, :cond_29

    .line 229
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1e

    :cond_29
    if-eqz v18, :cond_2a

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1e

    .line 231
    :cond_2a
    iget-object v2, v0, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$1$1;->$contentWindowInsets:Landroidx/compose/foundation/layout/WindowInsets;

    invoke-interface {v2, v15}, Landroidx/compose/foundation/layout/WindowInsets;->getBottom(Landroidx/compose/ui/unit/Density;)I

    move-result v2

    :goto_1e
    add-int/2addr v1, v2

    move/from16 v22, v1

    goto :goto_1f

    :cond_2b
    const/16 v22, 0x0

    .line 237
    :goto_1f
    sget-object v7, Landroidx/compose/material3/ScaffoldLayoutContent;->MainContent:Landroidx/compose/material3/ScaffoldLayoutContent;

    new-instance v6, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$1$1$bodyContentPlaceables$1;

    iget-object v2, v0, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$1$1;->$contentWindowInsets:Landroidx/compose/foundation/layout/WindowInsets;

    iget-object v4, v0, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$1$1;->$content:Lkotlin/jvm/functions/Function3;

    move-object v1, v6

    move-object/from16 v3, p1

    move-object/from16 v23, v4

    move-object v4, v11

    move-object/from16 p2, v13

    move-object v13, v6

    move-object v6, v8

    move/from16 v24, v12

    const/16 v21, 0x0

    move-object v12, v7

    move-object/from16 v7, v18

    move-object/from16 v25, v8

    move-object/from16 v8, v23

    invoke-direct/range {v1 .. v8}, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$1$1$bodyContentPlaceables$1;-><init>(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/ui/layout/SubcomposeMeasureScope;Ljava/util/List;ILjava/util/List;Ljava/lang/Integer;Lkotlin/jvm/functions/Function3;)V

    const v1, -0x48526920

    const/4 v2, 0x1

    invoke-static {v1, v2, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    invoke-interface {v15, v12, v1}, Landroidx/compose/ui/layout/SubcomposeMeasureScope;->subcompose(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/List;

    move-result-object v1

    .line 152
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v12, v21

    :goto_20
    if-ge v12, v3, :cond_2c

    .line 35
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 486
    check-cast v4, Landroidx/compose/ui/layout/Measurable;

    .line 262
    invoke-interface {v4, v9, v10}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v4

    .line 486
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_20

    .line 264
    :cond_2c
    new-instance v21, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$1$1$1;

    iget-object v8, v0, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$1$1;->$contentWindowInsets:Landroidx/compose/foundation/layout/WindowInsets;

    move-object/from16 v0, v21

    move-object v1, v2

    move-object v2, v11

    move-object v3, v14

    move-object/from16 v4, v25

    move-object/from16 v5, v19

    move/from16 v6, v16

    move/from16 v7, v24

    move-object/from16 v9, p1

    move/from16 v10, v17

    move/from16 v11, v22

    move-object/from16 v12, v18

    move-object/from16 v13, p2

    move-object/from16 v14, v20

    invoke-direct/range {v0 .. v14}, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$1$1$1;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/compose/material3/FabPlacement;IILandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/ui/layout/SubcomposeMeasureScope;IILjava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v4, v21

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0
.end method
