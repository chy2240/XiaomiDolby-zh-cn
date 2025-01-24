.class final Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Recomposer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $alreadyComposed:Landroidx/collection/MutableScatterSet;

.field final synthetic $modifiedValues:Landroidx/collection/MutableScatterSet;

.field final synthetic $modifiedValuesSet:Ljava/util/Set;

.field final synthetic $toApply:Ljava/util/List;

.field final synthetic $toComplete:Landroidx/collection/MutableScatterSet;

.field final synthetic $toInsert:Ljava/util/List;

.field final synthetic $toLateApply:Landroidx/collection/MutableScatterSet;

.field final synthetic $toRecompose:Ljava/util/List;

.field final synthetic this$0:Landroidx/compose/runtime/Recomposer;


# direct methods
.method constructor <init>(Landroidx/compose/runtime/Recomposer;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Ljava/util/List;Ljava/util/List;Landroidx/collection/MutableScatterSet;Ljava/util/List;Landroidx/collection/MutableScatterSet;Ljava/util/Set;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->this$0:Landroidx/compose/runtime/Recomposer;

    iput-object p2, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$modifiedValues:Landroidx/collection/MutableScatterSet;

    iput-object p3, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$alreadyComposed:Landroidx/collection/MutableScatterSet;

    iput-object p4, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$toRecompose:Ljava/util/List;

    iput-object p5, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$toInsert:Ljava/util/List;

    iput-object p6, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$toLateApply:Landroidx/collection/MutableScatterSet;

    iput-object p7, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$toApply:Ljava/util/List;

    iput-object p8, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$toComplete:Landroidx/collection/MutableScatterSet;

    iput-object p9, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$modifiedValuesSet:Ljava/util/Set;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 576
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->invoke(J)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(J)V
    .locals 26

    move-object/from16 v0, p0

    .line 579
    iget-object v1, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->this$0:Landroidx/compose/runtime/Recomposer;

    invoke-static {v1}, Landroidx/compose/runtime/Recomposer;->access$getHasBroadcastFrameClockAwaiters(Landroidx/compose/runtime/Recomposer;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 580
    const-string v1, "Recomposer:animation"

    iget-object v2, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->this$0:Landroidx/compose/runtime/Recomposer;

    .line 45
    sget-object v3, Landroidx/compose/runtime/internal/Trace;->INSTANCE:Landroidx/compose/runtime/internal/Trace;

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/internal/Trace;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 583
    :try_start_0
    invoke-static {v2}, Landroidx/compose/runtime/Recomposer;->access$getBroadcastFrameClock$p(Landroidx/compose/runtime/Recomposer;)Landroidx/compose/runtime/BroadcastFrameClock;

    move-result-object v2

    move-wide/from16 v4, p1

    invoke-virtual {v2, v4, v5}, Landroidx/compose/runtime/BroadcastFrameClock;->sendFrame(J)V

    .line 586
    sget-object v2, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->sendApplyNotifications()V

    .line 587
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/internal/Trace;->endSection(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v2, Landroidx/compose/runtime/internal/Trace;->INSTANCE:Landroidx/compose/runtime/internal/Trace;

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/internal/Trace;->endSection(Ljava/lang/Object;)V

    throw v0

    .line 590
    :cond_0
    :goto_0
    const-string v1, "Recomposer:recompose"

    iget-object v8, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->this$0:Landroidx/compose/runtime/Recomposer;

    iget-object v9, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$modifiedValues:Landroidx/collection/MutableScatterSet;

    iget-object v10, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$alreadyComposed:Landroidx/collection/MutableScatterSet;

    iget-object v11, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$toRecompose:Ljava/util/List;

    iget-object v12, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$toInsert:Ljava/util/List;

    iget-object v13, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$toLateApply:Landroidx/collection/MutableScatterSet;

    iget-object v14, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$toApply:Ljava/util/List;

    iget-object v15, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$toComplete:Landroidx/collection/MutableScatterSet;

    iget-object v0, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$modifiedValuesSet:Ljava/util/Set;

    .line 45
    sget-object v2, Landroidx/compose/runtime/internal/Trace;->INSTANCE:Landroidx/compose/runtime/internal/Trace;

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/internal/Trace;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 593
    :try_start_1
    invoke-static {v8}, Landroidx/compose/runtime/Recomposer;->access$recordComposerModifications(Landroidx/compose/runtime/Recomposer;)Z

    .line 594
    invoke-static {v8}, Landroidx/compose/runtime/Recomposer;->access$getStateLock$p(Landroidx/compose/runtime/Recomposer;)Ljava/lang/Object;

    move-result-object v2

    .line 27
    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 595
    :try_start_2
    invoke-static {v8}, Landroidx/compose/runtime/Recomposer;->access$getCompositionInvalidations$p(Landroidx/compose/runtime/Recomposer;)Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v3

    .line 434
    invoke-virtual {v3}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v4

    if-lez v4, :cond_2

    .line 437
    invoke-virtual {v3}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v3

    const/4 v6, 0x0

    .line 439
    :cond_1
    aget-object v7, v3, v6

    check-cast v7, Landroidx/compose/runtime/ControlledComposition;

    .line 595
    invoke-interface {v11, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    if-lt v6, v4, :cond_1

    goto :goto_1

    :catchall_1
    move-exception v0

    goto/16 :goto_23

    .line 596
    :cond_2
    :goto_1
    invoke-static {v8}, Landroidx/compose/runtime/Recomposer;->access$getCompositionInvalidations$p(Landroidx/compose/runtime/Recomposer;)Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    .line 597
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 27
    :try_start_3
    monitor-exit v2

    .line 600
    invoke-virtual {v9}, Landroidx/collection/MutableScatterSet;->clear()V

    .line 601
    invoke-virtual {v10}, Landroidx/collection/MutableScatterSet;->clear()V

    .line 602
    :cond_3
    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v12}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    goto/16 :goto_18

    .line 660
    :cond_4
    invoke-interface {v14}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 661
    invoke-virtual {v8}, Landroidx/compose/runtime/Recomposer;->getChangeCount()J

    move-result-wide v6

    const-wide/16 v16, 0x1

    add-long v6, v6, v16

    invoke-static {v8, v6, v7}, Landroidx/compose/runtime/Recomposer;->access$setChangeCount$p(Landroidx/compose/runtime/Recomposer;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 34
    :try_start_4
    invoke-interface {v14}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_5

    .line 35
    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 36
    check-cast v4, Landroidx/compose/runtime/ControlledComposition;

    .line 668
    invoke-virtual {v15, v4}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_7

    :catch_0
    move-exception v0

    move-object v3, v0

    goto :goto_4

    .line 34
    :cond_5
    invoke-interface {v14}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_6

    .line 35
    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 36
    check-cast v4, Landroidx/compose/runtime/ControlledComposition;

    .line 669
    invoke-interface {v4}, Landroidx/compose/runtime/ControlledComposition;->applyChanges()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 675
    :cond_6
    :try_start_5
    invoke-interface {v14}, Ljava/util/List;->clear()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_8

    :catchall_3
    move-exception v0

    goto/16 :goto_24

    :goto_4
    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, v8

    .line 671
    :try_start_6
    invoke-static/range {v2 .. v7}, Landroidx/compose/runtime/Recomposer;->processCompositionError$default(Landroidx/compose/runtime/Recomposer;Ljava/lang/Exception;Landroidx/compose/runtime/ControlledComposition;ZILjava/lang/Object;)V

    move-object v2, v8

    move-object v3, v11

    move-object v4, v12

    move-object v5, v14

    move-object v6, v13

    move-object v7, v15

    move-object v8, v9

    move-object v9, v10

    .line 672
    invoke-static/range {v2 .. v9}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->access$invokeSuspend$clearRecompositionState(Landroidx/compose/runtime/Recomposer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 675
    :try_start_7
    invoke-interface {v14}, Ljava/util/List;->clear()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 49
    :goto_5
    sget-object v0, Landroidx/compose/runtime/internal/Trace;->INSTANCE:Landroidx/compose/runtime/internal/Trace;

    :goto_6
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/internal/Trace;->endSection(Ljava/lang/Object;)V

    return-void

    .line 675
    :goto_7
    :try_start_8
    invoke-interface {v14}, Ljava/util/List;->clear()V

    throw v0

    .line 679
    :cond_7
    :goto_8
    invoke-virtual {v13}, Landroidx/collection/ScatterSet;->isNotEmpty()Z

    move-result v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    const-wide/16 v16, 0xff

    const-wide v18, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    if-eqz v0, :cond_c

    .line 681
    :try_start_9
    invoke-virtual {v15, v13}, Landroidx/collection/MutableScatterSet;->plusAssign(Landroidx/collection/ScatterSet;)V

    .line 232
    iget-object v0, v13, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 201
    iget-object v5, v13, Landroidx/collection/ScatterSet;->metadata:[J

    .line 202
    array-length v3, v5

    add-int/lit8 v3, v3, -0x2

    if-ltz v3, :cond_b

    move v7, v3

    const/4 v6, 0x0

    .line 205
    :goto_9
    aget-wide v2, v5, v6

    move-object/from16 v22, v5

    not-long v4, v2

    const/16 v23, 0x7

    shl-long v4, v4, v23

    and-long/2addr v4, v2

    and-long v4, v4, v18

    cmp-long v4, v4, v18

    if-eqz v4, :cond_a

    sub-int v4, v6, v7

    not-int v4, v4

    ushr-int/lit8 v4, v4, 0x1f

    const/16 v5, 0x8

    rsub-int/lit8 v4, v4, 0x8

    const/4 v5, 0x0

    :goto_a
    if-ge v5, v4, :cond_9

    and-long v23, v2, v16

    const-wide/16 v20, 0x80

    cmp-long v23, v23, v20

    if-gez v23, :cond_8

    shl-int/lit8 v23, v6, 0x3

    add-int v23, v23, v5

    .line 233
    aget-object v23, v0, v23

    check-cast v23, Landroidx/compose/runtime/ControlledComposition;

    .line 682
    invoke-interface/range {v23 .. v23}, Landroidx/compose/runtime/ControlledComposition;->applyLateChanges()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :cond_8
    move-object/from16 v23, v0

    const/16 v0, 0x8

    goto :goto_b

    :catchall_4
    move-exception v0

    goto :goto_e

    :catch_1
    move-exception v0

    move-object v3, v0

    goto :goto_d

    :goto_b
    shr-long/2addr v2, v0

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v23

    goto :goto_a

    :cond_9
    move-object/from16 v23, v0

    const/16 v0, 0x8

    if-ne v4, v0, :cond_b

    goto :goto_c

    :cond_a
    move-object/from16 v23, v0

    :goto_c
    if-eq v6, v7, :cond_b

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v5, v22

    move-object/from16 v0, v23

    goto :goto_9

    .line 688
    :cond_b
    :try_start_a
    invoke-virtual {v13}, Landroidx/collection/MutableScatterSet;->clear()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_f

    :goto_d
    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, v8

    .line 684
    :try_start_b
    invoke-static/range {v2 .. v7}, Landroidx/compose/runtime/Recomposer;->processCompositionError$default(Landroidx/compose/runtime/Recomposer;Ljava/lang/Exception;Landroidx/compose/runtime/ControlledComposition;ZILjava/lang/Object;)V

    move-object v2, v8

    move-object v3, v11

    move-object v4, v12

    move-object v5, v14

    move-object v6, v13

    move-object v7, v15

    move-object v8, v9

    move-object v9, v10

    .line 685
    invoke-static/range {v2 .. v9}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->access$invokeSuspend$clearRecompositionState(Landroidx/compose/runtime/Recomposer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 688
    :try_start_c
    invoke-virtual {v13}, Landroidx/collection/MutableScatterSet;->clear()V

    goto/16 :goto_5

    :goto_e
    invoke-virtual {v13}, Landroidx/collection/MutableScatterSet;->clear()V

    throw v0

    .line 692
    :cond_c
    :goto_f
    invoke-virtual {v15}, Landroidx/collection/ScatterSet;->isNotEmpty()Z

    move-result v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    if-eqz v0, :cond_12

    .line 232
    :try_start_d
    iget-object v0, v15, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 201
    iget-object v2, v15, Landroidx/collection/ScatterSet;->metadata:[J

    .line 202
    array-length v3, v2

    add-int/lit8 v3, v3, -0x2

    if-ltz v3, :cond_10

    const/4 v4, 0x0

    .line 205
    :goto_10
    aget-wide v5, v2, v4
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    move-object/from16 v22, v1

    move-object v7, v2

    not-long v1, v5

    const/16 v23, 0x7

    shl-long v1, v1, v23

    and-long/2addr v1, v5

    and-long v1, v1, v18

    cmp-long v1, v1, v18

    if-eqz v1, :cond_f

    sub-int v1, v4, v3

    not-int v1, v1

    ushr-int/lit8 v1, v1, 0x1f

    const/16 v2, 0x8

    rsub-int/lit8 v1, v1, 0x8

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v1, :cond_e

    and-long v24, v5, v16

    const-wide/16 v20, 0x80

    cmp-long v24, v24, v20

    if-gez v24, :cond_d

    shl-int/lit8 v24, v4, 0x3

    add-int v24, v24, v2

    .line 233
    :try_start_e
    aget-object v24, v0, v24

    check-cast v24, Landroidx/compose/runtime/ControlledComposition;

    .line 694
    invoke-interface/range {v24 .. v24}, Landroidx/compose/runtime/ControlledComposition;->changesApplied()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    :cond_d
    move-object/from16 v24, v0

    const/16 v0, 0x8

    goto :goto_13

    :catchall_5
    move-exception v0

    move-object/from16 v1, v22

    goto/16 :goto_16

    :catch_2
    move-exception v0

    :goto_12
    move-object v3, v0

    goto :goto_15

    :goto_13
    shr-long/2addr v5, v0

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v24

    goto :goto_11

    :cond_e
    move-object/from16 v24, v0

    const/16 v0, 0x8

    const-wide/16 v20, 0x80

    if-ne v1, v0, :cond_11

    goto :goto_14

    :cond_f
    move-object/from16 v24, v0

    const/16 v0, 0x8

    const-wide/16 v20, 0x80

    :goto_14
    if-eq v4, v3, :cond_11

    add-int/lit8 v4, v4, 0x1

    move-object v2, v7

    move-object/from16 v1, v22

    move-object/from16 v0, v24

    goto :goto_10

    :catchall_6
    move-exception v0

    move-object/from16 v22, v1

    goto :goto_16

    :catch_3
    move-exception v0

    move-object/from16 v22, v1

    goto :goto_12

    :cond_10
    move-object/from16 v22, v1

    .line 700
    :cond_11
    :try_start_f
    invoke-virtual {v15}, Landroidx/collection/MutableScatterSet;->clear()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    move-object/from16 v1, v22

    goto :goto_17

    :catchall_7
    move-exception v0

    move-object/from16 v1, v22

    goto/16 :goto_24

    :goto_15
    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, v8

    .line 696
    :try_start_10
    invoke-static/range {v2 .. v7}, Landroidx/compose/runtime/Recomposer;->processCompositionError$default(Landroidx/compose/runtime/Recomposer;Ljava/lang/Exception;Landroidx/compose/runtime/ControlledComposition;ZILjava/lang/Object;)V

    move-object v2, v8

    move-object v3, v11

    move-object v4, v12

    move-object v5, v14

    move-object v6, v13

    move-object v7, v15

    move-object v8, v9

    move-object v9, v10

    .line 697
    invoke-static/range {v2 .. v9}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->access$invokeSuspend$clearRecompositionState(Landroidx/compose/runtime/Recomposer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    .line 700
    :try_start_11
    invoke-virtual {v15}, Landroidx/collection/MutableScatterSet;->clear()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 49
    sget-object v0, Landroidx/compose/runtime/internal/Trace;->INSTANCE:Landroidx/compose/runtime/internal/Trace;

    move-object/from16 v1, v22

    goto/16 :goto_6

    .line 700
    :goto_16
    :try_start_12
    invoke-virtual {v15}, Landroidx/collection/MutableScatterSet;->clear()V

    throw v0

    .line 704
    :cond_12
    :goto_17
    invoke-static {v8}, Landroidx/compose/runtime/Recomposer;->access$getStateLock$p(Landroidx/compose/runtime/Recomposer;)Ljava/lang/Object;

    move-result-object v2

    .line 27
    monitor-enter v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .line 704
    :try_start_13
    invoke-static {v8}, Landroidx/compose/runtime/Recomposer;->access$deriveStateLocked(Landroidx/compose/runtime/Recomposer;)Lkotlinx/coroutines/CancellableContinuation;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    .line 27
    :try_start_14
    monitor-exit v2

    .line 711
    sget-object v0, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->notifyObjectsInitialized()V

    .line 712
    invoke-virtual {v10}, Landroidx/collection/MutableScatterSet;->clear()V

    .line 713
    invoke-virtual {v9}, Landroidx/collection/MutableScatterSet;->clear()V

    const/4 v0, 0x0

    .line 714
    invoke-static {v8, v0}, Landroidx/compose/runtime/Recomposer;->access$setCompositionsRemoved$p(Landroidx/compose/runtime/Recomposer;Ljava/util/Set;)V

    .line 715
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    .line 49
    sget-object v0, Landroidx/compose/runtime/internal/Trace;->INSTANCE:Landroidx/compose/runtime/internal/Trace;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/internal/Trace;->endSection(Ljava/lang/Object;)V

    return-void

    :catchall_8
    move-exception v0

    move-object v3, v0

    .line 27
    :try_start_15
    monitor-exit v2

    throw v3
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    .line 34
    :cond_13
    :goto_18
    :try_start_16
    invoke-interface {v11}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_19
    if-ge v3, v2, :cond_15

    .line 35
    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 36
    check-cast v4, Landroidx/compose/runtime/ControlledComposition;

    .line 605
    invoke-static {v8, v4, v9}, Landroidx/compose/runtime/Recomposer;->access$performRecompose(Landroidx/compose/runtime/Recomposer;Landroidx/compose/runtime/ControlledComposition;Landroidx/collection/MutableScatterSet;)Landroidx/compose/runtime/ControlledComposition;

    move-result-object v5

    if-eqz v5, :cond_14

    invoke-interface {v14, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1a

    :catchall_9
    move-exception v0

    goto/16 :goto_22

    :catch_4
    move-exception v0

    move-object v3, v0

    goto/16 :goto_21

    .line 606
    :cond_14
    :goto_1a
    invoke-virtual {v10, v4}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_4
    .catchall {:try_start_16 .. :try_end_16} :catchall_9

    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 613
    :cond_15
    :try_start_17
    invoke-interface {v11}, Ljava/util/List;->clear()V

    .line 620
    invoke-virtual {v9}, Landroidx/collection/ScatterSet;->isNotEmpty()Z

    move-result v2

    if-nez v2, :cond_16

    invoke-static {v8}, Landroidx/compose/runtime/Recomposer;->access$getCompositionInvalidations$p(Landroidx/compose/runtime/Recomposer;)Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v2

    .line 545
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v2

    if-eqz v2, :cond_1c

    .line 621
    :cond_16
    invoke-static {v8}, Landroidx/compose/runtime/Recomposer;->access$getStateLock$p(Landroidx/compose/runtime/Recomposer;)Ljava/lang/Object;

    move-result-object v2

    .line 27
    monitor-enter v2
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    .line 622
    :try_start_18
    invoke-static {v8}, Landroidx/compose/runtime/Recomposer;->access$getKnownCompositions(Landroidx/compose/runtime/Recomposer;)Ljava/util/List;

    move-result-object v3

    .line 34
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_1b
    if-ge v5, v4, :cond_18

    .line 35
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 36
    check-cast v6, Landroidx/compose/runtime/ControlledComposition;

    .line 624
    invoke-virtual {v10, v6}, Landroidx/collection/ScatterSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_17

    .line 625
    invoke-interface {v6, v0}, Landroidx/compose/runtime/ControlledComposition;->observesAnyOf(Ljava/util/Set;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 627
    invoke-interface {v11, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :catchall_a
    move-exception v0

    goto/16 :goto_20

    :cond_17
    :goto_1c
    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    .line 634
    :cond_18
    invoke-static {v8}, Landroidx/compose/runtime/Recomposer;->access$getCompositionInvalidations$p(Landroidx/compose/runtime/Recomposer;)Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v3

    .line 784
    invoke-virtual {v3}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1d
    if-ge v5, v4, :cond_1b

    .line 786
    invoke-virtual {v3}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v7

    aget-object v7, v7, v5

    check-cast v7, Landroidx/compose/runtime/ControlledComposition;

    .line 635
    invoke-virtual {v10, v7}, Landroidx/collection/ScatterSet;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_19

    invoke-interface {v11, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_19

    .line 636
    invoke-interface {v11, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1e

    :cond_19
    if-lez v6, :cond_1a

    .line 792
    invoke-virtual {v3}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v7

    sub-int v16, v5, v6

    invoke-virtual {v3}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v17

    aget-object v17, v17, v5

    aput-object v17, v7, v16

    :cond_1a
    :goto_1e
    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    .line 795
    :cond_1b
    invoke-virtual {v3}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v5

    sub-int v6, v4, v6

    const/4 v7, 0x0

    invoke-static {v5, v7, v6, v4}, Lkotlin/collections/ArraysKt;->fill([Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 796
    invoke-virtual {v3, v6}, Landroidx/compose/runtime/collection/MutableVector;->setSize(I)V

    .line 642
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_a

    .line 27
    :try_start_19
    monitor-exit v2

    .line 645
    :cond_1c
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v2
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    if-eqz v2, :cond_3

    .line 647
    :try_start_1a
    invoke-static {v12, v8}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->access$invokeSuspend$fillToInsert(Ljava/util/List;Landroidx/compose/runtime/Recomposer;)V

    .line 648
    :goto_1f
    invoke-interface {v12}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 649
    invoke-static {v8, v12, v9}, Landroidx/compose/runtime/Recomposer;->access$performInsertValues(Landroidx/compose/runtime/Recomposer;Ljava/util/List;Landroidx/collection/MutableScatterSet;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroidx/collection/MutableScatterSet;->plusAssign(Ljava/lang/Iterable;)V

    .line 650
    invoke-static {v12, v8}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->access$invokeSuspend$fillToInsert(Ljava/util/List;Landroidx/compose/runtime/Recomposer;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_5
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    goto :goto_1f

    :catch_5
    move-exception v0

    move-object v3, v0

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v2, v8

    .line 653
    :try_start_1b
    invoke-static/range {v2 .. v7}, Landroidx/compose/runtime/Recomposer;->processCompositionError$default(Landroidx/compose/runtime/Recomposer;Ljava/lang/Exception;Landroidx/compose/runtime/ControlledComposition;ZILjava/lang/Object;)V

    move-object v2, v8

    move-object v3, v11

    move-object v4, v12

    move-object v5, v14

    move-object v6, v13

    move-object v7, v15

    move-object v8, v9

    move-object v9, v10

    .line 654
    invoke-static/range {v2 .. v9}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->access$invokeSuspend$clearRecompositionState(Landroidx/compose/runtime/Recomposer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;)V

    goto/16 :goto_5

    .line 27
    :goto_20
    monitor-exit v2

    throw v0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_3

    :goto_21
    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v2, v8

    .line 609
    :try_start_1c
    invoke-static/range {v2 .. v7}, Landroidx/compose/runtime/Recomposer;->processCompositionError$default(Landroidx/compose/runtime/Recomposer;Ljava/lang/Exception;Landroidx/compose/runtime/ControlledComposition;ZILjava/lang/Object;)V

    move-object v2, v8

    move-object v3, v11

    move-object v4, v12

    move-object v5, v14

    move-object v6, v13

    move-object v7, v15

    move-object v8, v9

    move-object v9, v10

    .line 610
    invoke-static/range {v2 .. v9}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->access$invokeSuspend$clearRecompositionState(Landroidx/compose/runtime/Recomposer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_9

    .line 613
    :try_start_1d
    invoke-interface {v11}, Ljava/util/List;->clear()V

    goto/16 :goto_5

    :goto_22
    invoke-interface {v11}, Ljava/util/List;->clear()V

    throw v0

    .line 27
    :goto_23
    monitor-exit v2

    throw v0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_3

    .line 49
    :goto_24
    sget-object v2, Landroidx/compose/runtime/internal/Trace;->INSTANCE:Landroidx/compose/runtime/internal/Trace;

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/internal/Trace;->endSection(Ljava/lang/Object;)V

    throw v0
.end method
