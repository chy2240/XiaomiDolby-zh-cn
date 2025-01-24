.class public abstract Landroidx/compose/material3/AndroidAlertDialog_androidKt;
.super Ljava/lang/Object;
.source "AndroidAlertDialog.android.kt"


# direct methods
.method public static final AlertDialog-Oix01E0(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;JJJJFLandroidx/compose/ui/window/DialogProperties;Landroidx/compose/runtime/Composer;III)V
    .locals 47

    move/from16 v15, p19

    move/from16 v13, p20

    move/from16 v14, p21

    const v0, -0x7c0ed530

    move-object/from16 v1, p18

    .line 47
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v1

    and-int/lit8 v2, v14, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v2, v15, 0x6

    move v5, v2

    move-object/from16 v2, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v15, 0x6

    if-nez v2, :cond_2

    move-object/from16 v2, p0

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x4

    goto :goto_0

    :cond_1
    const/4 v5, 0x2

    :goto_0
    or-int/2addr v5, v15

    goto :goto_1

    :cond_2
    move-object/from16 v2, p0

    move v5, v15

    :goto_1
    and-int/lit8 v6, v14, 0x2

    if-eqz v6, :cond_4

    or-int/lit8 v5, v5, 0x30

    :cond_3
    move-object/from16 v6, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v6, v15, 0x30

    if-nez v6, :cond_3

    move-object/from16 v6, p1

    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    const/16 v9, 0x20

    goto :goto_2

    :cond_5
    const/16 v9, 0x10

    :goto_2
    or-int/2addr v5, v9

    :goto_3
    and-int/lit8 v9, v14, 0x4

    if-eqz v9, :cond_7

    or-int/lit16 v5, v5, 0x180

    :cond_6
    move-object/from16 v12, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v12, v15, 0x180

    if-nez v12, :cond_6

    move-object/from16 v12, p2

    invoke-interface {v1, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    const/16 v16, 0x100

    goto :goto_4

    :cond_8
    const/16 v16, 0x80

    :goto_4
    or-int v5, v5, v16

    :goto_5
    and-int/lit8 v16, v14, 0x8

    const/16 v17, 0x400

    const/16 v18, 0x800

    if-eqz v16, :cond_a

    or-int/lit16 v5, v5, 0xc00

    :cond_9
    move-object/from16 v3, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v3, v15, 0xc00

    if-nez v3, :cond_9

    move-object/from16 v3, p3

    invoke-interface {v1, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_b

    move/from16 v19, v18

    goto :goto_6

    :cond_b
    move/from16 v19, v17

    :goto_6
    or-int v5, v5, v19

    :goto_7
    and-int/lit8 v19, v14, 0x10

    if-eqz v19, :cond_d

    or-int/lit16 v5, v5, 0x6000

    :cond_c
    move-object/from16 v4, p4

    goto :goto_9

    :cond_d
    and-int/lit16 v4, v15, 0x6000

    if-nez v4, :cond_c

    move-object/from16 v4, p4

    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_e

    const/16 v21, 0x4000

    goto :goto_8

    :cond_e
    const/16 v21, 0x2000

    :goto_8
    or-int v5, v5, v21

    :goto_9
    and-int/lit8 v21, v14, 0x20

    const/high16 v22, 0x30000

    if-eqz v21, :cond_f

    or-int v5, v5, v22

    move-object/from16 v7, p5

    goto :goto_b

    :cond_f
    and-int v22, v15, v22

    move-object/from16 v7, p5

    if-nez v22, :cond_11

    invoke-interface {v1, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_10

    const/high16 v23, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v23, 0x10000

    :goto_a
    or-int v5, v5, v23

    :cond_11
    :goto_b
    and-int/lit8 v23, v14, 0x40

    const/high16 v24, 0x180000

    if-eqz v23, :cond_12

    or-int v5, v5, v24

    move-object/from16 v8, p6

    goto :goto_d

    :cond_12
    and-int v24, v15, v24

    move-object/from16 v8, p6

    if-nez v24, :cond_14

    invoke-interface {v1, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_13

    const/high16 v25, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v25, 0x80000

    :goto_c
    or-int v5, v5, v25

    :cond_14
    :goto_d
    const/high16 v25, 0xc00000

    and-int v25, v15, v25

    if-nez v25, :cond_17

    and-int/lit16 v10, v14, 0x80

    if-nez v10, :cond_15

    move-object/from16 v10, p7

    invoke-interface {v1, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_16

    const/high16 v26, 0x800000

    goto :goto_e

    :cond_15
    move-object/from16 v10, p7

    :cond_16
    const/high16 v26, 0x400000

    :goto_e
    or-int v5, v5, v26

    goto :goto_f

    :cond_17
    move-object/from16 v10, p7

    :goto_f
    const/high16 v26, 0x6000000

    and-int v26, v15, v26

    if-nez v26, :cond_19

    and-int/lit16 v11, v14, 0x100

    move-wide/from16 v2, p8

    if-nez v11, :cond_18

    invoke-interface {v1, v2, v3}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v11

    if-eqz v11, :cond_18

    const/high16 v11, 0x4000000

    goto :goto_10

    :cond_18
    const/high16 v11, 0x2000000

    :goto_10
    or-int/2addr v5, v11

    goto :goto_11

    :cond_19
    move-wide/from16 v2, p8

    :goto_11
    const/high16 v11, 0x30000000

    and-int/2addr v11, v15

    if-nez v11, :cond_1b

    and-int/lit16 v11, v14, 0x200

    move-wide/from16 v2, p10

    if-nez v11, :cond_1a

    invoke-interface {v1, v2, v3}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v11

    if-eqz v11, :cond_1a

    const/high16 v11, 0x20000000

    goto :goto_12

    :cond_1a
    const/high16 v11, 0x10000000

    :goto_12
    or-int/2addr v5, v11

    goto :goto_13

    :cond_1b
    move-wide/from16 v2, p10

    :goto_13
    and-int/lit8 v11, v13, 0x6

    if-nez v11, :cond_1d

    and-int/lit16 v11, v14, 0x400

    move-wide/from16 v2, p12

    if-nez v11, :cond_1c

    invoke-interface {v1, v2, v3}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v11

    if-eqz v11, :cond_1c

    const/16 v20, 0x4

    goto :goto_14

    :cond_1c
    const/16 v20, 0x2

    :goto_14
    or-int v11, v13, v20

    goto :goto_15

    :cond_1d
    move-wide/from16 v2, p12

    move v11, v13

    :goto_15
    and-int/lit8 v20, v13, 0x30

    if-nez v20, :cond_1f

    and-int/lit16 v0, v14, 0x800

    move-wide/from16 v2, p14

    if-nez v0, :cond_1e

    invoke-interface {v1, v2, v3}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/16 v22, 0x20

    goto :goto_16

    :cond_1e
    const/16 v22, 0x10

    :goto_16
    or-int v11, v11, v22

    goto :goto_17

    :cond_1f
    move-wide/from16 v2, p14

    :goto_17
    and-int/lit16 v0, v14, 0x1000

    if-eqz v0, :cond_21

    or-int/lit16 v11, v11, 0x180

    :cond_20
    move/from16 v2, p16

    goto :goto_19

    :cond_21
    and-int/lit16 v2, v13, 0x180

    if-nez v2, :cond_20

    move/from16 v2, p16

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v3

    if-eqz v3, :cond_22

    const/16 v26, 0x100

    goto :goto_18

    :cond_22
    const/16 v26, 0x80

    :goto_18
    or-int v11, v11, v26

    :goto_19
    and-int/lit16 v3, v14, 0x2000

    if-eqz v3, :cond_24

    or-int/lit16 v11, v11, 0xc00

    :cond_23
    move-object/from16 v2, p17

    goto :goto_1a

    :cond_24
    and-int/lit16 v2, v13, 0xc00

    if-nez v2, :cond_23

    move-object/from16 v2, p17

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_25

    move/from16 v17, v18

    :cond_25
    or-int v11, v11, v17

    :goto_1a
    const v17, 0x12492493

    and-int v2, v5, v17

    const v4, 0x12492492

    if-ne v2, v4, :cond_27

    and-int/lit16 v2, v11, 0x493

    const/16 v4, 0x492

    if-ne v2, v4, :cond_27

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_26

    goto :goto_1b

    .line 62
    :cond_26
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v13, p12

    move-wide/from16 v41, p14

    move/from16 v17, p16

    move-object/from16 v18, p17

    move-object v6, v7

    move-object v7, v8

    move-object v8, v10

    move-object v3, v12

    move-wide/from16 v9, p8

    move-wide/from16 v11, p10

    goto/16 :goto_27

    .line 47
    :cond_27
    :goto_1b
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v2, v15, 0x1

    const v4, -0xe000001

    const v17, -0x1c00001

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v2

    if-eqz v2, :cond_28

    goto :goto_1c

    .line 63
    :cond_28
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit16 v0, v14, 0x80

    if-eqz v0, :cond_29

    and-int v5, v5, v17

    :cond_29
    and-int/lit16 v0, v14, 0x100

    if-eqz v0, :cond_2a

    and-int/2addr v5, v4

    :cond_2a
    and-int/lit16 v0, v14, 0x200

    if-eqz v0, :cond_2b

    const v0, -0x70000001

    and-int/2addr v5, v0

    :cond_2b
    and-int/lit16 v0, v14, 0x400

    if-eqz v0, :cond_2c

    and-int/lit8 v11, v11, -0xf

    :cond_2c
    and-int/lit16 v0, v14, 0x800

    if-eqz v0, :cond_2d

    and-int/lit8 v11, v11, -0x71

    :cond_2d
    move-object/from16 v9, p3

    move-object/from16 v0, p4

    move-wide/from16 v3, p8

    move-wide/from16 v37, p10

    move-wide/from16 v39, p12

    move-wide/from16 v41, p14

    move-object v2, v8

    move v6, v11

    move-object/from16 v8, p17

    move v11, v5

    move/from16 v5, p16

    goto/16 :goto_26

    :cond_2e
    :goto_1c
    if-eqz v9, :cond_2f

    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v12, v2

    :cond_2f
    const/4 v2, 0x0

    if-eqz v16, :cond_30

    move-object v9, v2

    goto :goto_1d

    :cond_30
    move-object/from16 v9, p3

    :goto_1d
    if-eqz v19, :cond_31

    move-object/from16 v16, v2

    goto :goto_1e

    :cond_31
    move-object/from16 v16, p4

    :goto_1e
    if-eqz v21, :cond_32

    move-object v7, v2

    :cond_32
    if-eqz v23, :cond_33

    goto :goto_1f

    :cond_33
    move-object v2, v8

    :goto_1f
    and-int/lit16 v8, v14, 0x80

    const/4 v4, 0x6

    if-eqz v8, :cond_34

    sget-object v8, Landroidx/compose/material3/AlertDialogDefaults;->INSTANCE:Landroidx/compose/material3/AlertDialogDefaults;

    invoke-virtual {v8, v1, v4}, Landroidx/compose/material3/AlertDialogDefaults;->getShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v8

    and-int v5, v5, v17

    move-object v10, v8

    :cond_34
    and-int/lit16 v8, v14, 0x100

    if-eqz v8, :cond_35

    sget-object v8, Landroidx/compose/material3/AlertDialogDefaults;->INSTANCE:Landroidx/compose/material3/AlertDialogDefaults;

    invoke-virtual {v8, v1, v4}, Landroidx/compose/material3/AlertDialogDefaults;->getContainerColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v17

    const v8, -0xe000001

    and-int/2addr v5, v8

    goto :goto_20

    :cond_35
    move-wide/from16 v17, p8

    :goto_20
    and-int/lit16 v8, v14, 0x200

    if-eqz v8, :cond_36

    sget-object v8, Landroidx/compose/material3/AlertDialogDefaults;->INSTANCE:Landroidx/compose/material3/AlertDialogDefaults;

    invoke-virtual {v8, v1, v4}, Landroidx/compose/material3/AlertDialogDefaults;->getIconContentColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v21

    const v8, -0x70000001

    and-int/2addr v5, v8

    goto :goto_21

    :cond_36
    move-wide/from16 v21, p10

    :goto_21
    and-int/lit16 v8, v14, 0x400

    if-eqz v8, :cond_37

    sget-object v8, Landroidx/compose/material3/AlertDialogDefaults;->INSTANCE:Landroidx/compose/material3/AlertDialogDefaults;

    invoke-virtual {v8, v1, v4}, Landroidx/compose/material3/AlertDialogDefaults;->getTitleContentColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v23

    and-int/lit8 v11, v11, -0xf

    goto :goto_22

    :cond_37
    move-wide/from16 v23, p12

    :goto_22
    and-int/lit16 v8, v14, 0x800

    if-eqz v8, :cond_38

    sget-object v8, Landroidx/compose/material3/AlertDialogDefaults;->INSTANCE:Landroidx/compose/material3/AlertDialogDefaults;

    invoke-virtual {v8, v1, v4}, Landroidx/compose/material3/AlertDialogDefaults;->getTextContentColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v25

    and-int/lit8 v4, v11, -0x71

    move v11, v4

    goto :goto_23

    :cond_38
    move-wide/from16 v25, p14

    :goto_23
    if-eqz v0, :cond_39

    sget-object v0, Landroidx/compose/material3/AlertDialogDefaults;->INSTANCE:Landroidx/compose/material3/AlertDialogDefaults;

    invoke-virtual {v0}, Landroidx/compose/material3/AlertDialogDefaults;->getTonalElevation-D9Ej5fM()F

    move-result v0

    goto :goto_24

    :cond_39
    move/from16 v0, p16

    :goto_24
    if-eqz v3, :cond_3a

    new-instance v3, Landroidx/compose/ui/window/DialogProperties;

    const/4 v4, 0x7

    const/4 v8, 0x0

    const/16 v19, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 p2, v3

    move/from16 p3, v19

    move/from16 p4, v27

    move/from16 p5, v28

    move/from16 p6, v4

    move-object/from16 p7, v8

    invoke-direct/range {p2 .. p7}, Landroidx/compose/ui/window/DialogProperties;-><init>(ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v8, v3

    :goto_25
    move v6, v11

    move-wide/from16 v3, v17

    move-wide/from16 v37, v21

    move-wide/from16 v39, v23

    move-wide/from16 v41, v25

    move v11, v5

    move v5, v0

    move-object/from16 v0, v16

    goto :goto_26

    :cond_3a
    move-object/from16 v8, p17

    goto :goto_25

    :goto_26
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v16

    if-eqz v16, :cond_3b

    const-string v13, "androidx.compose.material3.AlertDialog (AndroidAlertDialog.android.kt:46)"

    const v14, -0x7c0ed530

    .line 47
    invoke-static {v14, v11, v6, v13}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_3b
    const v13, 0x7ffffffe

    and-int v35, v11, v13

    and-int/lit16 v6, v6, 0x1ffe

    move/from16 v36, v6

    move-object/from16 v16, p0

    move-object/from16 v17, p1

    move-object/from16 v18, v12

    move-object/from16 v19, v9

    move-object/from16 v20, v0

    move-object/from16 v21, v7

    move-object/from16 v22, v2

    move-object/from16 v23, v10

    move-wide/from16 v24, v3

    move-wide/from16 v26, v37

    move-wide/from16 v28, v39

    move-wide/from16 v30, v41

    move/from16 v32, v5

    move-object/from16 v33, v8

    move-object/from16 v34, v1

    invoke-static/range {v16 .. v36}, Landroidx/compose/material3/AlertDialogKt;->AlertDialogImpl-wrnwzgE(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;JJJJFLandroidx/compose/ui/window/DialogProperties;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v6

    if-eqz v6, :cond_3c

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3c
    move/from16 v17, v5

    move-object v6, v7

    move-object/from16 v18, v8

    move-object v8, v10

    move-wide/from16 v13, v39

    move-object v5, v0

    move-object v7, v2

    move-wide/from16 v45, v3

    move-object v4, v9

    move-wide/from16 v9, v45

    move-object v3, v12

    move-wide/from16 v11, v37

    .line 62
    :goto_27
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v2

    if-eqz v2, :cond_3d

    new-instance v1, Landroidx/compose/material3/AndroidAlertDialog_androidKt$AlertDialog$1;

    move-object v0, v1

    move-object/from16 v43, v1

    move-object/from16 v1, p0

    move-object/from16 v44, v2

    move-object/from16 v2, p1

    move-wide/from16 v15, v41

    move/from16 v19, p19

    move/from16 v20, p20

    move/from16 v21, p21

    invoke-direct/range {v0 .. v21}, Landroidx/compose/material3/AndroidAlertDialog_androidKt$AlertDialog$1;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;JJJJFLandroidx/compose/ui/window/DialogProperties;III)V

    move-object/from16 v1, v43

    move-object/from16 v0, v44

    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_3d
    return-void
.end method
