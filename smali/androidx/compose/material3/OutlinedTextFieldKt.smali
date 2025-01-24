.class public abstract Landroidx/compose/material3/OutlinedTextFieldKt;
.super Ljava/lang/Object;
.source "OutlinedTextField.kt"


# static fields
.field private static final OutlinedTextFieldInnerPadding:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    int-to-float v0, v0

    .line 1778
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 1425
    sput v0, Landroidx/compose/material3/OutlinedTextFieldKt;->OutlinedTextFieldInnerPadding:F

    return-void
.end method

.method public static final OutlinedTextField(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/runtime/Composer;IIII)V
    .locals 82

    move/from16 v15, p24

    move/from16 v14, p25

    move/from16 v13, p26

    move/from16 v12, p27

    const v0, -0x7296427d

    move-object/from16 v1, p23

    .line 390
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v0

    and-int/lit8 v1, v12, 0x1

    if-eqz v1, :cond_0

    or-int/lit8 v1, v15, 0x6

    move v4, v1

    move-object/from16 v1, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v1, v15, 0x6

    if-nez v1, :cond_2

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v4, v15

    goto :goto_1

    :cond_2
    move-object/from16 v1, p0

    move v4, v15

    :goto_1
    and-int/lit8 v5, v12, 0x2

    if-eqz v5, :cond_4

    or-int/lit8 v4, v4, 0x30

    :cond_3
    move-object/from16 v5, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v5, v15, 0x30

    if-nez v5, :cond_3

    move-object/from16 v5, p1

    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/16 v8, 0x20

    goto :goto_2

    :cond_5
    const/16 v8, 0x10

    :goto_2
    or-int/2addr v4, v8

    :goto_3
    and-int/lit8 v8, v12, 0x4

    if-eqz v8, :cond_7

    or-int/lit16 v4, v4, 0x180

    :cond_6
    move-object/from16 v11, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v11, v15, 0x180

    if-nez v11, :cond_6

    move-object/from16 v11, p2

    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    const/16 v16, 0x100

    goto :goto_4

    :cond_8
    const/16 v16, 0x80

    :goto_4
    or-int v4, v4, v16

    :goto_5
    and-int/lit8 v16, v12, 0x8

    const/16 v17, 0x400

    const/16 v18, 0x800

    if-eqz v16, :cond_a

    or-int/lit16 v4, v4, 0xc00

    :cond_9
    move/from16 v2, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v2, v15, 0xc00

    if-nez v2, :cond_9

    move/from16 v2, p3

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v19

    if-eqz v19, :cond_b

    move/from16 v19, v18

    goto :goto_6

    :cond_b
    move/from16 v19, v17

    :goto_6
    or-int v4, v4, v19

    :goto_7
    and-int/lit8 v19, v12, 0x10

    const/16 v20, 0x2000

    const/16 v21, 0x4000

    if-eqz v19, :cond_d

    or-int/lit16 v4, v4, 0x6000

    :cond_c
    move/from16 v3, p4

    goto :goto_9

    :cond_d
    and-int/lit16 v3, v15, 0x6000

    if-nez v3, :cond_c

    move/from16 v3, p4

    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v23

    if-eqz v23, :cond_e

    move/from16 v23, v21

    goto :goto_8

    :cond_e
    move/from16 v23, v20

    :goto_8
    or-int v4, v4, v23

    :goto_9
    const/high16 v23, 0x30000

    and-int v23, v15, v23

    if-nez v23, :cond_10

    and-int/lit8 v23, v12, 0x20

    move-object/from16 v6, p5

    if-nez v23, :cond_f

    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_f

    const/high16 v24, 0x20000

    goto :goto_a

    :cond_f
    const/high16 v24, 0x10000

    :goto_a
    or-int v4, v4, v24

    goto :goto_b

    :cond_10
    move-object/from16 v6, p5

    :goto_b
    and-int/lit8 v24, v12, 0x40

    const/high16 v25, 0x180000

    if-eqz v24, :cond_11

    or-int v4, v4, v25

    move-object/from16 v7, p6

    goto :goto_d

    :cond_11
    and-int v26, v15, v25

    move-object/from16 v7, p6

    if-nez v26, :cond_13

    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_12

    const/high16 v27, 0x100000

    goto :goto_c

    :cond_12
    const/high16 v27, 0x80000

    :goto_c
    or-int v4, v4, v27

    :cond_13
    :goto_d
    and-int/lit16 v9, v12, 0x80

    const/high16 v28, 0x400000

    const/high16 v29, 0xc00000

    if-eqz v9, :cond_14

    or-int v4, v4, v29

    move-object/from16 v10, p7

    goto :goto_f

    :cond_14
    and-int v30, v15, v29

    move-object/from16 v10, p7

    if-nez v30, :cond_16

    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_15

    const/high16 v31, 0x800000

    goto :goto_e

    :cond_15
    move/from16 v31, v28

    :goto_e
    or-int v4, v4, v31

    :cond_16
    :goto_f
    and-int/lit16 v1, v12, 0x100

    const/high16 v31, 0x6000000

    if-eqz v1, :cond_17

    or-int v4, v4, v31

    move-object/from16 v2, p8

    goto :goto_11

    :cond_17
    and-int v31, v15, v31

    move-object/from16 v2, p8

    if-nez v31, :cond_19

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_18

    const/high16 v31, 0x4000000

    goto :goto_10

    :cond_18
    const/high16 v31, 0x2000000

    :goto_10
    or-int v4, v4, v31

    :cond_19
    :goto_11
    and-int/lit16 v2, v12, 0x200

    const/high16 v31, 0x30000000

    if-eqz v2, :cond_1a

    or-int v4, v4, v31

    move-object/from16 v3, p9

    goto :goto_13

    :cond_1a
    and-int v32, v15, v31

    move-object/from16 v3, p9

    if-nez v32, :cond_1c

    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_1b

    const/high16 v32, 0x20000000

    goto :goto_12

    :cond_1b
    const/high16 v32, 0x10000000

    :goto_12
    or-int v4, v4, v32

    :cond_1c
    :goto_13
    and-int/lit16 v3, v12, 0x400

    if-eqz v3, :cond_1d

    or-int/lit8 v32, v14, 0x6

    move-object/from16 v5, p10

    goto :goto_15

    :cond_1d
    and-int/lit8 v32, v14, 0x6

    move-object/from16 v5, p10

    if-nez v32, :cond_1f

    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_1e

    const/16 v32, 0x4

    goto :goto_14

    :cond_1e
    const/16 v32, 0x2

    :goto_14
    or-int v32, v14, v32

    goto :goto_15

    :cond_1f
    move/from16 v32, v14

    :goto_15
    and-int/lit16 v5, v12, 0x800

    if-eqz v5, :cond_21

    or-int/lit8 v32, v32, 0x30

    :cond_20
    :goto_16
    move/from16 v6, v32

    goto :goto_18

    :cond_21
    and-int/lit8 v33, v14, 0x30

    move-object/from16 v6, p11

    if-nez v33, :cond_20

    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_22

    const/16 v33, 0x20

    goto :goto_17

    :cond_22
    const/16 v33, 0x10

    :goto_17
    or-int v32, v32, v33

    goto :goto_16

    :goto_18
    and-int/lit16 v7, v12, 0x1000

    if-eqz v7, :cond_24

    or-int/lit16 v6, v6, 0x180

    :cond_23
    move-object/from16 v10, p12

    goto :goto_1a

    :cond_24
    and-int/lit16 v10, v14, 0x180

    if-nez v10, :cond_23

    move-object/from16 v10, p12

    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_25

    const/16 v32, 0x100

    goto :goto_19

    :cond_25
    const/16 v32, 0x80

    :goto_19
    or-int v6, v6, v32

    :goto_1a
    and-int/lit16 v10, v12, 0x2000

    if-eqz v10, :cond_27

    or-int/lit16 v6, v6, 0xc00

    :cond_26
    move/from16 v11, p13

    goto :goto_1b

    :cond_27
    and-int/lit16 v11, v14, 0xc00

    if-nez v11, :cond_26

    move/from16 v11, p13

    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v32

    if-eqz v32, :cond_28

    move/from16 v17, v18

    :cond_28
    or-int v6, v6, v17

    :goto_1b
    and-int/lit16 v11, v12, 0x4000

    if-eqz v11, :cond_2a

    or-int/lit16 v6, v6, 0x6000

    move/from16 v17, v11

    :cond_29
    move-object/from16 v11, p14

    goto :goto_1c

    :cond_2a
    move/from16 v17, v11

    and-int/lit16 v11, v14, 0x6000

    if-nez v11, :cond_29

    move-object/from16 v11, p14

    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2b

    move/from16 v20, v21

    :cond_2b
    or-int v6, v6, v20

    :goto_1c
    const v18, 0x8000

    and-int v18, v12, v18

    const/high16 v20, 0x30000

    if-eqz v18, :cond_2c

    or-int v6, v6, v20

    move-object/from16 v11, p15

    goto :goto_1e

    :cond_2c
    and-int v20, v14, v20

    move-object/from16 v11, p15

    if-nez v20, :cond_2e

    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2d

    const/high16 v20, 0x20000

    goto :goto_1d

    :cond_2d
    const/high16 v20, 0x10000

    :goto_1d
    or-int v6, v6, v20

    :cond_2e
    :goto_1e
    const/high16 v20, 0x10000

    and-int v20, v12, v20

    if-eqz v20, :cond_2f

    or-int v6, v6, v25

    move-object/from16 v11, p16

    goto :goto_20

    :cond_2f
    and-int v21, v14, v25

    move-object/from16 v11, p16

    if-nez v21, :cond_31

    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_30

    const/high16 v21, 0x100000

    goto :goto_1f

    :cond_30
    const/high16 v21, 0x80000

    :goto_1f
    or-int v6, v6, v21

    :cond_31
    :goto_20
    const/high16 v21, 0x20000

    and-int v21, v12, v21

    if-eqz v21, :cond_32

    or-int v6, v6, v29

    move/from16 v11, p17

    goto :goto_22

    :cond_32
    and-int v25, v14, v29

    move/from16 v11, p17

    if-nez v25, :cond_34

    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v25

    if-eqz v25, :cond_33

    const/high16 v25, 0x800000

    goto :goto_21

    :cond_33
    move/from16 v25, v28

    :goto_21
    or-int v6, v6, v25

    :cond_34
    :goto_22
    const/high16 v25, 0x6000000

    and-int v25, v14, v25

    if-nez v25, :cond_36

    const/high16 v25, 0x40000

    and-int v25, v12, v25

    move/from16 v11, p18

    if-nez v25, :cond_35

    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v25

    if-eqz v25, :cond_35

    const/high16 v25, 0x4000000

    goto :goto_23

    :cond_35
    const/high16 v25, 0x2000000

    :goto_23
    or-int v6, v6, v25

    goto :goto_24

    :cond_36
    move/from16 v11, p18

    :goto_24
    const/high16 v25, 0x80000

    and-int v25, v12, v25

    if-eqz v25, :cond_37

    or-int v6, v6, v31

    move/from16 v11, p19

    goto :goto_26

    :cond_37
    and-int v29, v14, v31

    move/from16 v11, p19

    if-nez v29, :cond_39

    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v29

    if-eqz v29, :cond_38

    const/high16 v29, 0x20000000

    goto :goto_25

    :cond_38
    const/high16 v29, 0x10000000

    :goto_25
    or-int v6, v6, v29

    :cond_39
    :goto_26
    const/high16 v29, 0x100000

    and-int v29, v12, v29

    if-eqz v29, :cond_3a

    or-int/lit8 v22, v13, 0x6

    move-object/from16 v11, p20

    goto :goto_28

    :cond_3a
    and-int/lit8 v31, v13, 0x6

    move-object/from16 v11, p20

    if-nez v31, :cond_3c

    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_3b

    const/16 v22, 0x4

    goto :goto_27

    :cond_3b
    const/16 v22, 0x2

    :goto_27
    or-int v22, v13, v22

    goto :goto_28

    :cond_3c
    move/from16 v22, v13

    :goto_28
    and-int/lit8 v31, v13, 0x30

    if-nez v31, :cond_3e

    const/high16 v31, 0x200000

    and-int v31, v12, v31

    move-object/from16 v11, p21

    if-nez v31, :cond_3d

    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_3d

    const/16 v23, 0x20

    goto :goto_29

    :cond_3d
    const/16 v23, 0x10

    :goto_29
    or-int v22, v22, v23

    goto :goto_2a

    :cond_3e
    move-object/from16 v11, p21

    :goto_2a
    and-int/lit16 v11, v13, 0x180

    if-nez v11, :cond_41

    and-int v11, v12, v28

    if-nez v11, :cond_3f

    move-object/from16 v11, p22

    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_40

    const/16 v27, 0x100

    goto :goto_2b

    :cond_3f
    move-object/from16 v11, p22

    :cond_40
    const/16 v27, 0x80

    :goto_2b
    or-int v22, v22, v27

    :goto_2c
    move/from16 v11, v22

    goto :goto_2d

    :cond_41
    move-object/from16 v11, p22

    goto :goto_2c

    :goto_2d
    const v22, 0x12492493

    and-int v13, v4, v22

    const v14, 0x12492492

    if-ne v13, v14, :cond_43

    const v13, 0x12492493

    and-int/2addr v13, v6

    const v14, 0x12492492

    if-ne v13, v14, :cond_43

    and-int/lit16 v11, v11, 0x93

    const/16 v13, 0x92

    if-ne v11, v13, :cond_43

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v11

    if-nez v11, :cond_42

    goto :goto_2e

    .line 465
    :cond_42
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move/from16 v18, p17

    move/from16 v19, p18

    move/from16 v20, p19

    move-object/from16 v21, p20

    move-object/from16 v22, p21

    move-object/from16 v23, p22

    goto/16 :goto_4b

    .line 390
    :cond_43
    :goto_2e
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v11, v15, 0x1

    if-eqz v11, :cond_47

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v11

    if-eqz v11, :cond_44

    goto :goto_2f

    .line 389
    :cond_44
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v1, v12, 0x20

    if-eqz v1, :cond_45

    const v1, -0x70001

    and-int/2addr v4, v1

    :cond_45
    const/high16 v1, 0x40000

    and-int/2addr v1, v12

    if-eqz v1, :cond_46

    const v1, -0xe000001

    and-int/2addr v6, v1

    :cond_46
    move-object/from16 v8, p2

    move/from16 v11, p3

    move/from16 v1, p4

    move-object/from16 v14, p5

    move-object/from16 v2, p6

    move-object/from16 v9, p7

    move-object/from16 v3, p8

    move-object/from16 v5, p10

    move-object/from16 p2, p12

    move/from16 v10, p13

    move-object/from16 v13, p14

    move-object/from16 v40, p15

    move-object/from16 v41, p16

    move/from16 v42, p17

    move/from16 v43, p18

    move/from16 v44, p19

    move-object/from16 v45, p20

    move-object/from16 v46, p21

    move-object/from16 v12, p22

    move v15, v4

    move v7, v6

    move-object/from16 v4, p9

    move-object/from16 v6, p11

    goto/16 :goto_46

    :cond_47
    :goto_2f
    if-eqz v8, :cond_48

    .line 369
    sget-object v8, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_30

    :cond_48
    move-object/from16 v8, p2

    :goto_30
    if-eqz v16, :cond_49

    const/4 v11, 0x1

    goto :goto_31

    :cond_49
    move/from16 v11, p3

    :goto_31
    if-eqz v19, :cond_4a

    const/16 v16, 0x0

    goto :goto_32

    :cond_4a
    move/from16 v16, p4

    :goto_32
    and-int/lit8 v19, v12, 0x20

    if-eqz v19, :cond_4b

    .line 372
    invoke-static {}, Landroidx/compose/material3/TextKt;->getLocalTextStyle()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v14

    .line 75
    invoke-interface {v0, v14}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/compose/ui/text/TextStyle;

    const v19, -0x70001

    and-int v4, v4, v19

    goto :goto_33

    :cond_4b
    move-object/from16 v14, p5

    :goto_33
    const/16 v19, 0x0

    if-eqz v24, :cond_4c

    move-object/from16 v22, v19

    goto :goto_34

    :cond_4c
    move-object/from16 v22, p6

    :goto_34
    if-eqz v9, :cond_4d

    move-object/from16 v9, v19

    goto :goto_35

    :cond_4d
    move-object/from16 v9, p7

    :goto_35
    if-eqz v1, :cond_4e

    move-object/from16 v1, v19

    goto :goto_36

    :cond_4e
    move-object/from16 v1, p8

    :goto_36
    if-eqz v2, :cond_4f

    move-object/from16 v2, v19

    goto :goto_37

    :cond_4f
    move-object/from16 v2, p9

    :goto_37
    if-eqz v3, :cond_50

    move-object/from16 v3, v19

    goto :goto_38

    :cond_50
    move-object/from16 v3, p10

    :goto_38
    if-eqz v5, :cond_51

    move-object/from16 v5, v19

    goto :goto_39

    :cond_51
    move-object/from16 v5, p11

    :goto_39
    if-eqz v7, :cond_52

    move-object/from16 v7, v19

    goto :goto_3a

    :cond_52
    move-object/from16 v7, p12

    :goto_3a
    if-eqz v10, :cond_53

    const/4 v10, 0x0

    goto :goto_3b

    :cond_53
    move/from16 v10, p13

    :goto_3b
    if-eqz v17, :cond_54

    .line 381
    sget-object v17, Landroidx/compose/ui/text/input/VisualTransformation;->Companion:Landroidx/compose/ui/text/input/VisualTransformation$Companion;

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/text/input/VisualTransformation$Companion;->getNone()Landroidx/compose/ui/text/input/VisualTransformation;

    move-result-object v17

    goto :goto_3c

    :cond_54
    move-object/from16 v17, p14

    :goto_3c
    if-eqz v18, :cond_55

    .line 382
    sget-object v18, Landroidx/compose/foundation/text/KeyboardOptions;->Companion:Landroidx/compose/foundation/text/KeyboardOptions$Companion;

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/foundation/text/KeyboardOptions$Companion;->getDefault()Landroidx/compose/foundation/text/KeyboardOptions;

    move-result-object v18

    goto :goto_3d

    :cond_55
    move-object/from16 v18, p15

    :goto_3d
    if-eqz v20, :cond_56

    .line 383
    sget-object v20, Landroidx/compose/foundation/text/KeyboardActions;->Companion:Landroidx/compose/foundation/text/KeyboardActions$Companion;

    invoke-virtual/range {v20 .. v20}, Landroidx/compose/foundation/text/KeyboardActions$Companion;->getDefault()Landroidx/compose/foundation/text/KeyboardActions;

    move-result-object v20

    goto :goto_3e

    :cond_56
    move-object/from16 v20, p16

    :goto_3e
    if-eqz v21, :cond_57

    const/16 v21, 0x0

    goto :goto_3f

    :cond_57
    move/from16 v21, p17

    :goto_3f
    const/high16 v23, 0x40000

    and-int v23, v12, v23

    if-eqz v23, :cond_59

    if-eqz v21, :cond_58

    const/16 v23, 0x1

    goto :goto_40

    :cond_58
    const v23, 0x7fffffff

    :goto_40
    const v24, -0xe000001

    and-int v6, v6, v24

    goto :goto_41

    :cond_59
    move/from16 v23, p18

    :goto_41
    if-eqz v25, :cond_5a

    const/16 v24, 0x1

    goto :goto_42

    :cond_5a
    move/from16 v24, p19

    :goto_42
    if-eqz v29, :cond_5b

    goto :goto_43

    :cond_5b
    move-object/from16 v19, p20

    :goto_43
    const/high16 v25, 0x200000

    and-int v25, v12, v25

    const/4 v13, 0x6

    move-object/from16 p2, v1

    if-eqz v25, :cond_5c

    .line 388
    sget-object v1, Landroidx/compose/material3/OutlinedTextFieldDefaults;->INSTANCE:Landroidx/compose/material3/OutlinedTextFieldDefaults;

    invoke-virtual {v1, v0, v13}, Landroidx/compose/material3/OutlinedTextFieldDefaults;->getShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v1

    goto :goto_44

    :cond_5c
    move-object/from16 v1, p21

    :goto_44
    and-int v25, v12, v28

    move-object/from16 p3, v1

    if-eqz v25, :cond_5d

    .line 389
    sget-object v1, Landroidx/compose/material3/OutlinedTextFieldDefaults;->INSTANCE:Landroidx/compose/material3/OutlinedTextFieldDefaults;

    invoke-virtual {v1, v0, v13}, Landroidx/compose/material3/OutlinedTextFieldDefaults;->colors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/TextFieldColors;

    move-result-object v1

    move-object/from16 v46, p3

    move-object v12, v1

    :goto_45
    move v15, v4

    move/from16 v1, v16

    move-object/from16 v13, v17

    move-object/from16 v40, v18

    move-object/from16 v45, v19

    move-object/from16 v41, v20

    move/from16 v42, v21

    move/from16 v43, v23

    move/from16 v44, v24

    move-object v4, v2

    move-object/from16 v2, v22

    move-object/from16 v81, v3

    move-object/from16 v3, p2

    move-object/from16 p2, v7

    move v7, v6

    move-object v6, v5

    move-object/from16 v5, v81

    goto :goto_46

    :cond_5d
    move-object/from16 v46, p3

    move-object/from16 v12, p22

    goto :goto_45

    :goto_46
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v16

    if-eqz v16, :cond_5e

    move-object/from16 p3, v6

    const v6, -0x7296427d

    move-object/from16 p4, v5

    const-string v5, "androidx.compose.material3.OutlinedTextField (OutlinedTextField.kt:389)"

    .line 390
    invoke-static {v6, v15, v7, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_47

    :cond_5e
    move-object/from16 p4, v5

    move-object/from16 p3, v6

    :goto_47
    const v5, 0x1d06324

    .line 392
    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    if-nez v45, :cond_60

    .line 1166
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .line 1167
    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v5, v6, :cond_5f

    .line 392
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v5

    .line 1169
    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 392
    :cond_5f
    check-cast v5, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    goto :goto_48

    :cond_60
    move-object/from16 v5, v45

    :goto_48
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const v6, 0x1d07b02

    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 395
    invoke-virtual {v14}, Landroidx/compose/ui/text/TextStyle;->getColor-0d7_KjU()J

    move-result-wide v6

    const-wide/16 v15, 0x10

    cmp-long v15, v6, v15

    if-eqz v15, :cond_61

    :goto_49
    move-wide/from16 v48, v6

    goto :goto_4a

    :cond_61
    const/4 v6, 0x0

    .line 396
    invoke-static {v5, v0, v6}, Landroidx/compose/foundation/interaction/FocusInteractionKt;->collectIsFocusedAsState(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v6

    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 397
    invoke-virtual {v12, v11, v10, v6}, Landroidx/compose/material3/TextFieldColors;->textColor-XeAY9LY$material3_release(ZZZ)J

    move-result-wide v6

    goto :goto_49

    .line 395
    :goto_4a
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 399
    new-instance v6, Landroidx/compose/ui/text/TextStyle;

    move-object/from16 v47, v6

    const v77, 0xfffffe

    const/16 v78, 0x0

    const-wide/16 v50, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const-wide/16 v57, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const-wide/16 v62, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    const/16 v68, 0x0

    const-wide/16 v69, 0x0

    const/16 v71, 0x0

    const/16 v72, 0x0

    const/16 v73, 0x0

    const/16 v74, 0x0

    const/16 v75, 0x0

    const/16 v76, 0x0

    invoke-direct/range {v47 .. v78}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/graphics/drawscope/DrawStyle;IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v14, v6}, Landroidx/compose/ui/text/TextStyle;->merge(Landroidx/compose/ui/text/TextStyle;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v25

    .line 401
    invoke-static {}, Landroidx/compose/foundation/text/selection/TextSelectionColorsKt;->getLocalTextSelectionColors()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v6

    invoke-virtual {v12}, Landroidx/compose/material3/TextFieldColors;->getTextSelectionColors()Landroidx/compose/foundation/text/selection/TextSelectionColors;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v6

    new-instance v7, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$3;

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move-object/from16 v18, v2

    move/from16 v19, v10

    move-object/from16 v20, v12

    move-object/from16 v21, p0

    move-object/from16 v22, p1

    move/from16 v23, v11

    move/from16 v24, v1

    move-object/from16 v26, v40

    move-object/from16 v27, v41

    move/from16 v28, v42

    move/from16 v29, v43

    move/from16 v30, v44

    move-object/from16 v31, v13

    move-object/from16 v32, v5

    move-object/from16 v33, v9

    move-object/from16 v34, v3

    move-object/from16 v35, v4

    move-object/from16 v36, p4

    move-object/from16 v37, p3

    move-object/from16 v38, p2

    move-object/from16 v39, v46

    invoke-direct/range {v16 .. v39}, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$3;-><init>(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/TextFieldColors;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ZZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;)V

    const/16 v5, 0x36

    const v15, -0x7078cdbd

    move/from16 p5, v1

    const/4 v1, 0x1

    invoke-static {v15, v1, v7, v0, v5}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    sget v5, Landroidx/compose/runtime/ProvidedValue;->$stable:I

    or-int/lit8 v5, v5, 0x30

    invoke-static {v6, v1, v0, v5}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_62

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_62
    move/from16 v5, p5

    move-object v7, v2

    move-object/from16 v23, v12

    move-object v15, v13

    move-object v6, v14

    move-object/from16 v16, v40

    move-object/from16 v17, v41

    move/from16 v18, v42

    move/from16 v19, v43

    move/from16 v20, v44

    move-object/from16 v21, v45

    move-object/from16 v22, v46

    move-object/from16 v13, p2

    move-object/from16 v12, p3

    move v14, v10

    move-object v10, v4

    move v4, v11

    move-object/from16 v11, p4

    move-object/from16 v81, v9

    move-object v9, v3

    move-object v3, v8

    move-object/from16 v8, v81

    .line 465
    :goto_4b
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v2

    if-eqz v2, :cond_63

    new-instance v1, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$4;

    move-object v0, v1

    move-object/from16 v79, v1

    move-object/from16 v1, p0

    move-object/from16 v80, v2

    move-object/from16 v2, p1

    move/from16 v24, p24

    move/from16 v25, p25

    move/from16 v26, p26

    move/from16 v27, p27

    invoke-direct/range {v0 .. v27}, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$4;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;IIII)V

    move-object/from16 v1, v79

    move-object/from16 v0, v80

    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_63
    return-void
.end method

.method public static final OutlinedTextFieldLayout(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/TextFieldLabelPosition;FLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;II)V
    .locals 33

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v0, p10

    move-object/from16 v15, p12

    move-object/from16 v14, p13

    move-object/from16 v13, p14

    move/from16 v12, p16

    move/from16 v11, p17

    const v9, -0x5b56dd55

    move-object/from16 v10, p15

    .line 657
    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v10

    and-int/lit8 v19, v12, 0x6

    if-nez v19, :cond_1

    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    const/16 v19, 0x4

    goto :goto_0

    :cond_0
    const/16 v19, 0x2

    :goto_0
    or-int v19, v12, v19

    goto :goto_1

    :cond_1
    move/from16 v19, v12

    :goto_1
    and-int/lit8 v21, v12, 0x30

    const/16 v22, 0x10

    if-nez v21, :cond_3

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    const/16 v21, 0x20

    goto :goto_2

    :cond_2
    move/from16 v21, v22

    :goto_2
    or-int v19, v19, v21

    :cond_3
    and-int/lit16 v9, v12, 0x180

    const/16 v24, 0x80

    const/16 v25, 0x100

    if-nez v9, :cond_5

    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    move/from16 v9, v25

    goto :goto_3

    :cond_4
    move/from16 v9, v24

    :goto_3
    or-int v19, v19, v9

    :cond_5
    and-int/lit16 v9, v12, 0xc00

    const/16 v26, 0x400

    const/16 v27, 0x800

    if-nez v9, :cond_7

    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    move/from16 v9, v27

    goto :goto_4

    :cond_6
    move/from16 v9, v26

    :goto_4
    or-int v19, v19, v9

    :cond_7
    and-int/lit16 v9, v12, 0x6000

    const/16 v28, 0x2000

    if-nez v9, :cond_9

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/16 v9, 0x4000

    goto :goto_5

    :cond_8
    move/from16 v9, v28

    :goto_5
    or-int v19, v19, v9

    :cond_9
    const/high16 v9, 0x30000

    and-int/2addr v9, v12

    if-nez v9, :cond_b

    invoke-interface {v10, v6}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/high16 v9, 0x20000

    goto :goto_6

    :cond_a
    const/high16 v9, 0x10000

    :goto_6
    or-int v19, v19, v9

    :cond_b
    const/high16 v9, 0x180000

    and-int/2addr v9, v12

    if-nez v9, :cond_d

    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    const/high16 v9, 0x100000

    goto :goto_7

    :cond_c
    const/high16 v9, 0x80000

    :goto_7
    or-int v19, v19, v9

    :cond_d
    const/high16 v9, 0xc00000

    and-int/2addr v9, v12

    if-nez v9, :cond_f

    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    const/high16 v9, 0x800000

    goto :goto_8

    :cond_e
    const/high16 v9, 0x400000

    :goto_8
    or-int v19, v19, v9

    :cond_f
    const/high16 v9, 0x6000000

    and-int/2addr v9, v12

    if-nez v9, :cond_11

    move/from16 v9, p8

    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v29

    if-eqz v29, :cond_10

    const/high16 v29, 0x4000000

    goto :goto_9

    :cond_10
    const/high16 v29, 0x2000000

    :goto_9
    or-int v19, v19, v29

    goto :goto_a

    :cond_11
    move/from16 v9, p8

    :goto_a
    const/high16 v29, 0x30000000

    and-int v29, v12, v29

    move-object/from16 v4, p9

    if-nez v29, :cond_13

    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_12

    const/high16 v30, 0x20000000

    goto :goto_b

    :cond_12
    const/high16 v30, 0x10000000

    :goto_b
    or-int v19, v19, v30

    :cond_13
    move/from16 v4, v19

    and-int/lit8 v19, v11, 0x6

    if-nez v19, :cond_15

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v19

    if-eqz v19, :cond_14

    const/16 v19, 0x4

    goto :goto_c

    :cond_14
    const/16 v19, 0x2

    :goto_c
    or-int v19, v11, v19

    goto :goto_d

    :cond_15
    move/from16 v19, v11

    :goto_d
    and-int/lit8 v30, v11, 0x30

    move-object/from16 v0, p11

    if-nez v30, :cond_17

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_16

    const/16 v22, 0x20

    :cond_16
    or-int v19, v19, v22

    :cond_17
    and-int/lit16 v0, v11, 0x180

    if-nez v0, :cond_19

    invoke-interface {v10, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    move/from16 v24, v25

    :cond_18
    or-int v19, v19, v24

    :cond_19
    and-int/lit16 v0, v11, 0xc00

    if-nez v0, :cond_1b

    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    move/from16 v26, v27

    :cond_1a
    or-int v19, v19, v26

    :cond_1b
    and-int/lit16 v0, v11, 0x6000

    if-nez v0, :cond_1d

    invoke-interface {v10, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/16 v28, 0x4000

    :cond_1c
    or-int v19, v19, v28

    :cond_1d
    move/from16 v0, v19

    const v19, 0x12492493

    and-int v9, v4, v19

    const v11, 0x12492492

    if-ne v9, v11, :cond_1f

    and-int/lit16 v9, v0, 0x2493

    const/16 v11, 0x2492

    if-ne v9, v11, :cond_1f

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v9

    if-nez v9, :cond_1e

    goto :goto_e

    .line 793
    :cond_1e
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v8, p3

    move/from16 v11, p10

    move-object v5, v10

    move-object v12, v14

    move-object v14, v15

    move-object v15, v13

    goto/16 :goto_24

    .line 657
    :cond_1f
    :goto_e
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v9

    if-eqz v9, :cond_20

    const-string v9, "androidx.compose.material3.OutlinedTextFieldLayout (OutlinedTextField.kt:656)"

    const v11, -0x5b56dd55

    invoke-static {v11, v4, v0, v9}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_20
    const/4 v11, 0x0

    .line 658
    invoke-static {v10, v11}, Landroidx/compose/material3/internal/TextFieldImplKt;->textFieldHorizontalIconPadding(Landroidx/compose/runtime/Composer;I)F

    move-result v9

    and-int/lit8 v11, v0, 0x70

    const/16 v2, 0x20

    if-ne v11, v2, :cond_21

    const/4 v2, 0x1

    goto :goto_f

    :cond_21
    const/4 v2, 0x0

    :goto_f
    const/high16 v11, 0xe000000

    and-int/2addr v11, v4

    const/high16 v12, 0x4000000

    if-ne v11, v12, :cond_22

    const/4 v11, 0x1

    goto :goto_10

    :cond_22
    const/4 v11, 0x0

    :goto_10
    or-int/2addr v2, v11

    const/high16 v11, 0x70000000

    and-int/2addr v11, v4

    const/high16 v12, 0x20000000

    if-ne v11, v12, :cond_23

    const/4 v11, 0x1

    goto :goto_11

    :cond_23
    const/4 v11, 0x0

    :goto_11
    or-int/2addr v2, v11

    and-int/lit8 v11, v0, 0xe

    const/4 v12, 0x4

    if-ne v11, v12, :cond_24

    const/4 v11, 0x1

    goto :goto_12

    :cond_24
    const/4 v11, 0x0

    :goto_12
    or-int/2addr v2, v11

    const v11, 0xe000

    and-int/2addr v11, v0

    const/16 v12, 0x4000

    if-ne v11, v12, :cond_25

    const/4 v11, 0x1

    goto :goto_13

    :cond_25
    const/4 v11, 0x0

    :goto_13
    or-int/2addr v2, v11

    .line 666
    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v11

    or-int/2addr v2, v11

    .line 1166
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    if-nez v2, :cond_27

    .line 1167
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v11, v2, :cond_26

    goto :goto_14

    :cond_26
    move/from16 v17, v9

    move-object v3, v10

    const/4 v8, 0x0

    goto :goto_15

    .line 668
    :cond_27
    :goto_14
    new-instance v2, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;

    const/16 v16, 0x0

    move/from16 v17, v9

    const/4 v11, 0x3

    const/4 v12, 0x2

    move-object v9, v2

    move-object v3, v10

    move-object/from16 v10, p11

    const/4 v8, 0x0

    move/from16 v11, p8

    move-object/from16 v12, p9

    move/from16 v13, p10

    move-object/from16 v14, p14

    move/from16 v15, v17

    invoke-direct/range {v9 .. v16}, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;-><init>(Lkotlin/jvm/functions/Function1;ZLandroidx/compose/material3/TextFieldLabelPosition;FLandroidx/compose/foundation/layout/PaddingValues;FLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1169
    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v11, v2

    .line 660
    :goto_15
    check-cast v11, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;

    .line 677
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v2

    .line 75
    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    .line 677
    check-cast v2, Landroidx/compose/ui/unit/LayoutDirection;

    .line 80
    invoke-static {v3, v8}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v9

    .line 81
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v10

    .line 82
    invoke-static {v3, v1}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    .line 1466
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v14

    .line 1468
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v15

    if-nez v15, :cond_28

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 1469
    :cond_28
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 1470
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v15

    if-eqz v15, :cond_29

    .line 1471
    invoke-interface {v3, v14}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_16

    .line 1473
    :cond_29
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 1475
    :goto_16
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v14

    .line 86
    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v15

    invoke-static {v14, v11, v15}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 87
    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v11

    invoke-static {v14, v10, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 89
    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v10

    .line 1481
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v11

    if-nez v11, :cond_2a

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v11, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2b

    .line 1482
    :cond_2a
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v14, v11}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1483
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v14, v9, v10}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1486
    :cond_2b
    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v9

    invoke-static {v14, v12, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    shr-int/lit8 v9, v0, 0x6

    and-int/lit8 v9, v9, 0xe

    .line 681
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v14, p12

    invoke-interface {v14, v3, v9}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v9, 0xef20e25

    invoke-interface {v3, v9}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    if-eqz v5, :cond_30

    .line 685
    sget-object v9, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    const-string v10, "Leading"

    invoke-static {v9, v10}, Landroidx/compose/ui/layout/LayoutIdKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    invoke-static {v9}, Landroidx/compose/material3/InteractiveComponentSizeKt;->minimumInteractiveComponentSize(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    .line 686
    sget-object v10, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v10}, Landroidx/compose/ui/Alignment$Companion;->getCenter()Landroidx/compose/ui/Alignment;

    move-result-object v10

    .line 72
    invoke-static {v10, v8}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v10

    .line 80
    invoke-static {v3, v8}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v11

    .line 81
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v12

    .line 82
    invoke-static {v3, v9}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    .line 1500
    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v15

    .line 1502
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v16

    if-nez v16, :cond_2c

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 1503
    :cond_2c
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 1504
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v16

    if-eqz v16, :cond_2d

    .line 1505
    invoke-interface {v3, v15}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_17

    .line 1507
    :cond_2d
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 1509
    :goto_17
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v15

    .line 86
    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v8

    invoke-static {v15, v10, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 87
    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v8

    invoke-static {v15, v12, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 89
    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v8

    .line 1515
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v10

    if-nez v10, :cond_2e

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2f

    .line 1516
    :cond_2e
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v15, v10}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1517
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v15, v10, v8}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1520
    :cond_2f
    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v8

    invoke-static {v15, v9, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1523
    sget-object v8, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    shr-int/lit8 v8, v4, 0xc

    and-int/lit8 v8, v8, 0xe

    .line 688
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v3, v8}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1524
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 1527
    :cond_30
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const v8, 0xef23248

    invoke-interface {v3, v8}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    if-eqz v6, :cond_35

    .line 693
    sget-object v8, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    const-string v9, "Trailing"

    invoke-static {v8, v9}, Landroidx/compose/ui/layout/LayoutIdKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    invoke-static {v8}, Landroidx/compose/material3/InteractiveComponentSizeKt;->minimumInteractiveComponentSize(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    .line 694
    sget-object v9, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/Alignment$Companion;->getCenter()Landroidx/compose/ui/Alignment;

    move-result-object v9

    const/4 v10, 0x0

    .line 72
    invoke-static {v9, v10}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v9

    .line 80
    invoke-static {v3, v10}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v11

    .line 81
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v10

    .line 82
    invoke-static {v3, v8}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    .line 1539
    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v12

    .line 1541
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v15

    if-nez v15, :cond_31

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 1542
    :cond_31
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 1543
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v15

    if-eqz v15, :cond_32

    .line 1544
    invoke-interface {v3, v12}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_18

    .line 1546
    :cond_32
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 1548
    :goto_18
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v12

    .line 86
    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v15

    invoke-static {v12, v9, v15}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 87
    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v9

    invoke-static {v12, v10, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 89
    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v9

    .line 1554
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v10

    if-nez v10, :cond_33

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v10, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_34

    .line 1555
    :cond_33
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v12, v10}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1556
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v12, v10, v9}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1559
    :cond_34
    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v9

    invoke-static {v12, v8, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1562
    sget-object v8, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    shr-int/lit8 v8, v4, 0xf

    and-int/lit8 v8, v8, 0xe

    .line 696
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v3, v8}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1563
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 1566
    :cond_35
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    move-object/from16 v15, p14

    .line 700
    invoke-static {v15, v2}, Landroidx/compose/foundation/layout/PaddingKt;->calculateStartPadding(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v8

    .line 701
    invoke-static {v15, v2}, Landroidx/compose/foundation/layout/PaddingKt;->calculateEndPadding(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v2

    if-eqz v5, :cond_36

    sub-float v8, v8, v17

    .line 57
    invoke-static {v8}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v8

    const/4 v9, 0x0

    int-to-float v10, v9

    .line 1568
    invoke-static {v10}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v10

    .line 1569
    invoke-static {v8, v10}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v8

    invoke-static {v8}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v8

    goto :goto_19

    :cond_36
    const/4 v9, 0x0

    :goto_19
    if-eqz v6, :cond_37

    sub-float v2, v2, v17

    .line 57
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    int-to-float v10, v9

    .line 1571
    invoke-static {v10}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v9

    .line 1572
    invoke-static {v2, v9}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v2

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    :cond_37
    const v9, 0xef2aa5a

    .line 709
    invoke-interface {v3, v9}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-eqz v7, :cond_3c

    .line 718
    sget-object v11, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    const-string v12, "Prefix"

    invoke-static {v11, v12}, Landroidx/compose/ui/layout/LayoutIdKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v11

    .line 719
    invoke-static {}, Landroidx/compose/material3/internal/TextFieldImplKt;->getMinTextLineHeight()F

    move-result v12

    const/4 v1, 0x2

    invoke-static {v11, v12, v9, v1, v10}, Landroidx/compose/foundation/layout/SizeKt;->heightIn-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v11

    const/4 v1, 0x3

    const/4 v12, 0x0

    .line 720
    invoke-static {v11, v10, v12, v1, v10}, Landroidx/compose/foundation/layout/SizeKt;->wrapContentHeight$default(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Vertical;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v21

    .line 721
    invoke-static {}, Landroidx/compose/material3/internal/TextFieldImplKt;->getPrefixSuffixTextPadding()F

    move-result v24

    const/16 v26, 0xa

    const/16 v27, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    move/from16 v22, v8

    invoke-static/range {v21 .. v27}, Landroidx/compose/foundation/layout/PaddingKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v11

    .line 68
    sget-object v12, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v12}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v12

    const/4 v1, 0x0

    .line 72
    invoke-static {v12, v1}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v12

    .line 80
    invoke-static {v3, v1}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v16

    .line 81
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v1

    .line 82
    invoke-static {v3, v11}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v11

    .line 1585
    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v9

    .line 1587
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v18

    if-nez v18, :cond_38

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 1588
    :cond_38
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 1589
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v18

    if-eqz v18, :cond_39

    .line 1590
    invoke-interface {v3, v9}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1a

    .line 1592
    :cond_39
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 1594
    :goto_1a
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v9

    .line 86
    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v10

    invoke-static {v9, v12, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 87
    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v10

    invoke-static {v9, v1, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 89
    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    .line 1600
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v10

    if-nez v10, :cond_3a

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3b

    .line 1601
    :cond_3a
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1602
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10, v1}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1605
    :cond_3b
    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v9, v11, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1608
    sget-object v1, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    shr-int/lit8 v1, v4, 0x12

    and-int/lit8 v1, v1, 0xe

    .line 723
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v7, v3, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1609
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 1612
    :cond_3c
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const v1, 0xef2d918

    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    move-object/from16 v9, p7

    const/4 v1, 0x0

    if-eqz v9, :cond_41

    .line 728
    sget-object v10, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    const-string v11, "Suffix"

    invoke-static {v10, v11}, Landroidx/compose/ui/layout/LayoutIdKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    .line 729
    invoke-static {}, Landroidx/compose/material3/internal/TextFieldImplKt;->getMinTextLineHeight()F

    move-result v11

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v12, 0x2

    invoke-static {v10, v11, v5, v12, v6}, Landroidx/compose/foundation/layout/SizeKt;->heightIn-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    const/4 v5, 0x3

    .line 730
    invoke-static {v10, v6, v1, v5, v6}, Landroidx/compose/foundation/layout/SizeKt;->wrapContentHeight$default(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Vertical;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v21

    .line 731
    invoke-static {}, Landroidx/compose/material3/internal/TextFieldImplKt;->getPrefixSuffixTextPadding()F

    move-result v22

    const/16 v26, 0xa

    const/16 v27, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    move/from16 v24, v2

    invoke-static/range {v21 .. v27}, Landroidx/compose/foundation/layout/PaddingKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    .line 68
    sget-object v6, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v6

    .line 72
    invoke-static {v6, v1}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v6

    .line 80
    invoke-static {v3, v1}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v10

    .line 81
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v11

    .line 82
    invoke-static {v3, v5}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    .line 1625
    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v12

    .line 1627
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v16

    if-nez v16, :cond_3d

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 1628
    :cond_3d
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 1629
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v16

    if-eqz v16, :cond_3e

    .line 1630
    invoke-interface {v3, v12}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1b

    .line 1632
    :cond_3e
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 1634
    :goto_1b
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v12

    .line 86
    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v12, v6, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 87
    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v12, v11, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 89
    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    .line 1640
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v6

    if-nez v6, :cond_3f

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_40

    .line 1641
    :cond_3f
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v12, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1642
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v12, v6, v1}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1645
    :cond_40
    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v12, v5, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1648
    sget-object v1, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    shr-int/lit8 v1, v4, 0x15

    and-int/lit8 v1, v1, 0xe

    .line 733
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v9, v3, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1649
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 1652
    :cond_41
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 738
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    invoke-static {}, Landroidx/compose/material3/internal/TextFieldImplKt;->getMinTextLineHeight()F

    move-result v5

    const/4 v6, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v1, v5, v10, v6, v11}, Landroidx/compose/foundation/layout/SizeKt;->heightIn-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v10, 0x3

    .line 739
    invoke-static {v5, v11, v6, v10, v11}, Landroidx/compose/foundation/layout/SizeKt;->wrapContentHeight$default(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Vertical;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v21

    if-nez v7, :cond_42

    :goto_1c
    move/from16 v22, v8

    goto :goto_1d

    :cond_42
    int-to-float v5, v6

    .line 1653
    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v8

    goto :goto_1c

    :goto_1d
    if-nez v9, :cond_43

    :goto_1e
    move/from16 v24, v2

    goto :goto_1f

    :cond_43
    int-to-float v2, v6

    .line 1654
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    goto :goto_1e

    :goto_1f
    const/16 v26, 0xa

    const/16 v27, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    .line 740
    invoke-static/range {v21 .. v27}, Landroidx/compose/foundation/layout/PaddingKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const v5, 0xef33029

    .line 737
    invoke-interface {v3, v5}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    move-object v5, v3

    move-object/from16 v3, p2

    if-eqz v3, :cond_44

    .line 746
    const-string v6, "Hint"

    invoke-static {v1, v6}, Landroidx/compose/ui/layout/LayoutIdKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    invoke-interface {v6, v2}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    const/4 v8, 0x3

    shr-int/lit8 v10, v4, 0x3

    and-int/lit8 v8, v10, 0x70

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v3, v6, v5, v8}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_44
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 750
    const-string v6, "TextField"

    invoke-static {v1, v6}, Landroidx/compose/ui/layout/LayoutIdKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    invoke-interface {v6, v2}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 68
    sget-object v6, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v8

    const/4 v10, 0x1

    .line 72
    invoke-static {v8, v10}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v8

    const/4 v10, 0x0

    .line 80
    invoke-static {v5, v10}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v11

    .line 81
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v10

    .line 82
    invoke-static {v5, v2}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 1667
    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v12

    .line 1669
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v16

    if-nez v16, :cond_45

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 1670
    :cond_45
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 1671
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v16

    if-eqz v16, :cond_46

    .line 1672
    invoke-interface {v5, v12}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_20

    .line 1674
    :cond_46
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 1676
    :goto_20
    invoke-static {v5}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v12

    .line 86
    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v12, v8, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 87
    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v12, v10, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 89
    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    .line 1682
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v8

    if-nez v8, :cond_47

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_48

    .line 1683
    :cond_47
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v12, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1684
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v12, v8, v3}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1687
    :cond_48
    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v12, v2, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1690
    sget-object v2, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    const/4 v2, 0x3

    shr-int/lit8 v3, v4, 0x3

    and-int/lit8 v2, v3, 0xe

    .line 753
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v3, p1

    invoke-interface {v3, v5, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1691
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endNode()V

    const v2, 0xef38e73

    .line 756
    invoke-interface {v5, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    move-object/from16 v8, p3

    if-eqz v8, :cond_4d

    .line 770
    invoke-static {}, Landroidx/compose/material3/internal/TextFieldImplKt;->getMinTextLineHeight()F

    move-result v2

    invoke-static {}, Landroidx/compose/material3/internal/TextFieldImplKt;->getMinFocusedLabelLineHeight()F

    move-result v10

    move/from16 v11, p10

    invoke-static {v2, v10, v11}, Landroidx/compose/ui/unit/DpKt;->lerp-Md-fbLM(FFF)F

    move-result v2

    const/4 v3, 0x0

    const/4 v10, 0x2

    const/4 v12, 0x0

    .line 769
    invoke-static {v1, v2, v12, v10, v3}, Landroidx/compose/foundation/layout/SizeKt;->heightIn-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const/4 v10, 0x0

    const/4 v12, 0x3

    .line 772
    invoke-static {v2, v3, v10, v12, v3}, Landroidx/compose/foundation/layout/SizeKt;->wrapContentHeight$default(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Vertical;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 773
    const-string v3, "Label"

    invoke-static {v2, v3}, Landroidx/compose/ui/layout/LayoutIdKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 774
    invoke-interface {v2, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 68
    invoke-virtual {v6}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v3

    .line 72
    invoke-static {v3, v10}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v3

    .line 80
    invoke-static {v5, v10}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v12

    .line 81
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v10

    .line 82
    invoke-static {v5, v2}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 1707
    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v7

    .line 1709
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v16

    if-nez v16, :cond_49

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 1710
    :cond_49
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 1711
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v16

    if-eqz v16, :cond_4a

    .line 1712
    invoke-interface {v5, v7}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_21

    .line 1714
    :cond_4a
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 1716
    :goto_21
    invoke-static {v5}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v7

    .line 86
    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v9

    invoke-static {v7, v3, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 87
    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v7, v10, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 89
    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    .line 1722
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v9

    if-nez v9, :cond_4b

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4c

    .line 1723
    :cond_4b
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v9}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1724
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v9, v3}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1727
    :cond_4c
    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v7, v2, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    shr-int/lit8 v2, v4, 0x9

    and-int/lit8 v2, v2, 0xe

    .line 776
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v8, v5, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1731
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endNode()V

    goto :goto_22

    :cond_4d
    move/from16 v11, p10

    .line 1734
    :goto_22
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const v2, 0xef3c446

    invoke-interface {v5, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    move-object/from16 v12, p13

    if-eqz v12, :cond_52

    .line 782
    const-string v2, "Supporting"

    invoke-static {v1, v2}, Landroidx/compose/ui/layout/LayoutIdKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 783
    invoke-static {}, Landroidx/compose/material3/internal/TextFieldImplKt;->getMinSupportingTextLineHeight()F

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-static {v1, v2, v4, v3, v7}, Landroidx/compose/foundation/layout/SizeKt;->heightIn-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    .line 784
    invoke-static {v1, v7, v2, v3, v7}, Landroidx/compose/foundation/layout/SizeKt;->wrapContentHeight$default(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Vertical;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 785
    sget-object v20, Landroidx/compose/material3/TextFieldDefaults;->INSTANCE:Landroidx/compose/material3/TextFieldDefaults;

    const/16 v25, 0xf

    const/16 v26, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-static/range {v20 .. v26}, Landroidx/compose/material3/TextFieldDefaults;->supportingTextPadding-a9UjIt4$material3_release$default(Landroidx/compose/material3/TextFieldDefaults;FFFFILjava/lang/Object;)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/PaddingKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 68
    invoke-virtual {v6}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v2

    const/4 v3, 0x0

    .line 72
    invoke-static {v2, v3}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v2

    .line 80
    invoke-static {v5, v3}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v3

    .line 81
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v4

    .line 82
    invoke-static {v5, v1}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 1747
    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v6

    .line 1749
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v7

    if-nez v7, :cond_4e

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 1750
    :cond_4e
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 1751
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v7

    if-eqz v7, :cond_4f

    .line 1752
    invoke-interface {v5, v6}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_23

    .line 1754
    :cond_4f
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 1756
    :goto_23
    invoke-static {v5}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v6

    .line 86
    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v7

    invoke-static {v6, v2, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 87
    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v6, v4, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 89
    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    .line 1762
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v4

    if-nez v4, :cond_50

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_51

    .line 1763
    :cond_50
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1764
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v6, v3, v2}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1767
    :cond_51
    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v6, v1, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    shr-int/lit8 v0, v0, 0x9

    and-int/lit8 v0, v0, 0xe

    .line 787
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v12, v5, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1771
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 1774
    :cond_52
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 1775
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 1777
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 793
    :cond_53
    :goto_24
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v13

    if-eqz v13, :cond_54

    new-instance v10, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextFieldLayout$2;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object v11, v10

    move-object/from16 v10, p9

    move-object/from16 v31, v11

    move/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v32, v13

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move/from16 v16, p16

    move/from16 v17, p17

    invoke-direct/range {v0 .. v17}, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextFieldLayout$2;-><init>(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/TextFieldLabelPosition;FLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/PaddingValues;II)V

    move-object/from16 v1, v31

    move-object/from16 v0, v32

    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_54
    return-void
.end method

.method public static final synthetic access$getOutlinedTextFieldInnerPadding$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material3/OutlinedTextFieldKt;->OutlinedTextFieldInnerPadding:F

    return v0
.end method

.method public static final outlineCutout(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;
    .locals 1

    .line 1399
    new-instance v0, Landroidx/compose/material3/OutlinedTextFieldKt$outlineCutout$1;

    invoke-direct {v0, p1, p3, p2}, Landroidx/compose/material3/OutlinedTextFieldKt$outlineCutout$1;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/Alignment$Horizontal;)V

    invoke-static {p0, v0}, Landroidx/compose/ui/draw/DrawModifierKt;->drawWithContent(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method
