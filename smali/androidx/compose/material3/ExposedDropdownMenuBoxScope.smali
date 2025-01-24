.class public abstract Landroidx/compose/material3/ExposedDropdownMenuBoxScope;
.super Ljava/lang/Object;
.source "ExposedDropdownMenu.android.kt"


# static fields
.field public static final $stable:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/compose/material3/ExposedDropdownMenuBoxScope;-><init>()V

    return-void
.end method

.method public static synthetic menuAnchor-2Hz36ac$default(Landroidx/compose/material3/ExposedDropdownMenuBoxScope;Landroidx/compose/ui/Modifier;Ljava/lang/String;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    .line 302
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/material3/ExposedDropdownMenuBoxScope;->menuAnchor-2Hz36ac(Landroidx/compose/ui/Modifier;Ljava/lang/String;Z)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: menuAnchor-2Hz36ac"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final ExposedDropdownMenu-vNxi1II(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;ZLandroidx/compose/ui/graphics/Shape;JFFLandroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V
    .locals 37

    move/from16 v2, p1

    move/from16 v14, p14

    move/from16 v15, p16

    const v0, 0x2af87329

    move-object/from16 v1, p13

    .line 356
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v1

    and-int/lit8 v3, v15, 0x1

    if-eqz v3, :cond_0

    or-int/lit8 v3, v14, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v14, 0x6

    if-nez v3, :cond_2

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v14

    goto :goto_1

    :cond_2
    move v3, v14

    :goto_1
    and-int/lit8 v6, v15, 0x2

    if-eqz v6, :cond_4

    or-int/lit8 v3, v3, 0x30

    :cond_3
    move-object/from16 v6, p2

    goto :goto_3

    :cond_4
    and-int/lit8 v6, v14, 0x30

    if-nez v6, :cond_3

    move-object/from16 v6, p2

    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    const/16 v9, 0x20

    goto :goto_2

    :cond_5
    const/16 v9, 0x10

    :goto_2
    or-int/2addr v3, v9

    :goto_3
    and-int/lit8 v9, v15, 0x4

    if-eqz v9, :cond_7

    or-int/lit16 v3, v3, 0x180

    :cond_6
    move-object/from16 v10, p3

    goto :goto_5

    :cond_7
    and-int/lit16 v10, v14, 0x180

    if-nez v10, :cond_6

    move-object/from16 v10, p3

    invoke-interface {v1, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    const/16 v11, 0x100

    goto :goto_4

    :cond_8
    const/16 v11, 0x80

    :goto_4
    or-int/2addr v3, v11

    :goto_5
    and-int/lit16 v11, v14, 0xc00

    if-nez v11, :cond_b

    and-int/lit8 v11, v15, 0x8

    if-nez v11, :cond_9

    move-object/from16 v11, p4

    invoke-interface {v1, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    const/16 v12, 0x800

    goto :goto_6

    :cond_9
    move-object/from16 v11, p4

    :cond_a
    const/16 v12, 0x400

    :goto_6
    or-int/2addr v3, v12

    goto :goto_7

    :cond_b
    move-object/from16 v11, p4

    :goto_7
    and-int/lit8 v12, v15, 0x10

    if-eqz v12, :cond_d

    or-int/lit16 v3, v3, 0x6000

    :cond_c
    move/from16 v13, p5

    goto :goto_9

    :cond_d
    and-int/lit16 v13, v14, 0x6000

    if-nez v13, :cond_c

    move/from16 v13, p5

    invoke-interface {v1, v13}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v16

    if-eqz v16, :cond_e

    const/16 v16, 0x4000

    goto :goto_8

    :cond_e
    const/16 v16, 0x2000

    :goto_8
    or-int v3, v3, v16

    :goto_9
    const/high16 v16, 0x30000

    and-int v16, v14, v16

    if-nez v16, :cond_10

    and-int/lit8 v16, v15, 0x20

    move-object/from16 v4, p6

    if-nez v16, :cond_f

    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_f

    const/high16 v16, 0x20000

    goto :goto_a

    :cond_f
    const/high16 v16, 0x10000

    :goto_a
    or-int v3, v3, v16

    goto :goto_b

    :cond_10
    move-object/from16 v4, p6

    :goto_b
    const/high16 v16, 0x180000

    and-int v16, v14, v16

    if-nez v16, :cond_12

    and-int/lit8 v16, v15, 0x40

    move-wide/from16 v7, p7

    if-nez v16, :cond_11

    invoke-interface {v1, v7, v8}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v18

    if-eqz v18, :cond_11

    const/high16 v18, 0x100000

    goto :goto_c

    :cond_11
    const/high16 v18, 0x80000

    :goto_c
    or-int v3, v3, v18

    goto :goto_d

    :cond_12
    move-wide/from16 v7, p7

    :goto_d
    and-int/lit16 v5, v15, 0x80

    const/high16 v19, 0xc00000

    if-eqz v5, :cond_13

    or-int v3, v3, v19

    move/from16 v0, p9

    goto :goto_f

    :cond_13
    and-int v19, v14, v19

    move/from16 v0, p9

    if-nez v19, :cond_15

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v20

    if-eqz v20, :cond_14

    const/high16 v20, 0x800000

    goto :goto_e

    :cond_14
    const/high16 v20, 0x400000

    :goto_e
    or-int v3, v3, v20

    :cond_15
    :goto_f
    and-int/lit16 v0, v15, 0x100

    const/high16 v20, 0x6000000

    if-eqz v0, :cond_16

    or-int v3, v3, v20

    move/from16 v4, p10

    goto :goto_11

    :cond_16
    and-int v20, v14, v20

    move/from16 v4, p10

    if-nez v20, :cond_18

    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v20

    if-eqz v20, :cond_17

    const/high16 v20, 0x4000000

    goto :goto_10

    :cond_17
    const/high16 v20, 0x2000000

    :goto_10
    or-int v3, v3, v20

    :cond_18
    :goto_11
    and-int/lit16 v4, v15, 0x200

    const/high16 v20, 0x30000000

    if-eqz v4, :cond_19

    or-int v3, v3, v20

    move-object/from16 v6, p11

    goto :goto_13

    :cond_19
    and-int v20, v14, v20

    move-object/from16 v6, p11

    if-nez v20, :cond_1b

    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1a

    const/high16 v20, 0x20000000

    goto :goto_12

    :cond_1a
    const/high16 v20, 0x10000000

    :goto_12
    or-int v3, v3, v20

    :cond_1b
    :goto_13
    and-int/lit16 v6, v15, 0x400

    if-eqz v6, :cond_1c

    or-int/lit8 v6, p15, 0x6

    move/from16 v20, v6

    move-object/from16 v6, p12

    goto :goto_15

    :cond_1c
    and-int/lit8 v6, p15, 0x6

    if-nez v6, :cond_1e

    move-object/from16 v6, p12

    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1d

    const/16 v20, 0x4

    goto :goto_14

    :cond_1d
    const/16 v20, 0x2

    :goto_14
    or-int v20, p15, v20

    goto :goto_15

    :cond_1e
    move-object/from16 v6, p12

    move/from16 v20, p15

    :goto_15
    and-int/lit16 v6, v15, 0x800

    if-eqz v6, :cond_1f

    or-int/lit8 v20, v20, 0x30

    :goto_16
    move/from16 v6, v20

    goto :goto_18

    :cond_1f
    and-int/lit8 v6, p15, 0x30

    if-nez v6, :cond_21

    move-object/from16 v6, p0

    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_20

    const/16 v16, 0x20

    goto :goto_17

    :cond_20
    const/16 v16, 0x10

    :goto_17
    or-int v20, v20, v16

    goto :goto_16

    :cond_21
    move-object/from16 v6, p0

    goto :goto_16

    :goto_18
    const v16, 0x12492493

    and-int v7, v3, v16

    const v8, 0x12492492

    if-ne v7, v8, :cond_23

    and-int/lit8 v7, v6, 0x13

    const/16 v8, 0x12

    if-ne v7, v8, :cond_23

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v7

    if-nez v7, :cond_22

    goto :goto_19

    .line 405
    :cond_22
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    move-object/from16 v12, p11

    move-object v4, v10

    move-object v5, v11

    move v6, v13

    move/from16 v10, p9

    move/from16 v11, p10

    goto/16 :goto_25

    .line 356
    :cond_23
    :goto_19
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v7, v14, 0x1

    const/4 v8, 0x1

    if-eqz v7, :cond_28

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v7

    if-eqz v7, :cond_24

    goto :goto_1a

    .line 354
    :cond_24
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v15, 0x8

    if-eqz v0, :cond_25

    and-int/lit16 v3, v3, -0x1c01

    :cond_25
    and-int/lit8 v0, v15, 0x20

    if-eqz v0, :cond_26

    const v0, -0x70001

    and-int/2addr v3, v0

    :cond_26
    and-int/lit8 v0, v15, 0x40

    if-eqz v0, :cond_27

    const v0, -0x380001

    and-int/2addr v3, v0

    :cond_27
    move/from16 v5, p9

    move/from16 v0, p10

    move v12, v3

    move-object v7, v10

    move-object v9, v11

    move-object/from16 v10, p6

    move-wide/from16 v3, p7

    move-object/from16 v11, p11

    goto/16 :goto_21

    :cond_28
    :goto_1a
    if-eqz v9, :cond_29

    .line 347
    sget-object v7, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_1b

    :cond_29
    move-object v7, v10

    :goto_1b
    and-int/lit8 v9, v15, 0x8

    if-eqz v9, :cond_2a

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 348
    invoke-static {v9, v1, v10, v8}, Landroidx/compose/foundation/ScrollKt;->rememberScrollState(ILandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/ScrollState;

    move-result-object v9

    and-int/lit16 v3, v3, -0x1c01

    goto :goto_1c

    :cond_2a
    move-object v9, v11

    :goto_1c
    if-eqz v12, :cond_2b

    move v13, v8

    :cond_2b
    and-int/lit8 v10, v15, 0x20

    if-eqz v10, :cond_2c

    .line 350
    sget-object v10, Landroidx/compose/material3/MenuDefaults;->INSTANCE:Landroidx/compose/material3/MenuDefaults;

    const/4 v11, 0x6

    invoke-virtual {v10, v1, v11}, Landroidx/compose/material3/MenuDefaults;->getShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v10

    const v12, -0x70001

    and-int/2addr v3, v12

    goto :goto_1d

    :cond_2c
    const/4 v11, 0x6

    move-object/from16 v10, p6

    :goto_1d
    and-int/lit8 v12, v15, 0x40

    if-eqz v12, :cond_2d

    .line 351
    sget-object v12, Landroidx/compose/material3/MenuDefaults;->INSTANCE:Landroidx/compose/material3/MenuDefaults;

    invoke-virtual {v12, v1, v11}, Landroidx/compose/material3/MenuDefaults;->getContainerColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v20

    const v11, -0x380001

    and-int/2addr v3, v11

    goto :goto_1e

    :cond_2d
    move-wide/from16 v20, p7

    :goto_1e
    if-eqz v5, :cond_2e

    .line 352
    sget-object v5, Landroidx/compose/material3/MenuDefaults;->INSTANCE:Landroidx/compose/material3/MenuDefaults;

    invoke-virtual {v5}, Landroidx/compose/material3/MenuDefaults;->getTonalElevation-D9Ej5fM()F

    move-result v5

    goto :goto_1f

    :cond_2e
    move/from16 v5, p9

    :goto_1f
    if-eqz v0, :cond_2f

    .line 353
    sget-object v0, Landroidx/compose/material3/MenuDefaults;->INSTANCE:Landroidx/compose/material3/MenuDefaults;

    invoke-virtual {v0}, Landroidx/compose/material3/MenuDefaults;->getShadowElevation-D9Ej5fM()F

    move-result v0

    goto :goto_20

    :cond_2f
    move/from16 v0, p10

    :goto_20
    if-eqz v4, :cond_30

    move v12, v3

    move-wide/from16 v3, v20

    const/4 v11, 0x0

    goto :goto_21

    :cond_30
    move-object/from16 v11, p11

    move v12, v3

    move-wide/from16 v3, v20

    .line 354
    :goto_21
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v17

    if-eqz v17, :cond_31

    const-string v8, "androidx.compose.material3.ExposedDropdownMenuBoxScope.ExposedDropdownMenu (ExposedDropdownMenu.android.kt:355)"

    const v14, 0x2af87329

    .line 356
    invoke-static {v14, v12, v6, v8}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 1166
    :cond_31
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    .line 1167
    sget-object v8, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v8}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v14

    if-ne v6, v14, :cond_32

    .line 359
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->neverEqualPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v14

    invoke-static {v6, v14}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/MutableState;

    move-result-object v6

    .line 1169
    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 359
    :cond_32
    check-cast v6, Landroidx/compose/runtime/MutableState;

    .line 360
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->getLocalView()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v14

    .line 75
    invoke-interface {v1, v14}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v14

    .line 360
    check-cast v14, Landroid/view/View;

    .line 361
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v15

    .line 75
    invoke-interface {v1, v15}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v15

    .line 361
    check-cast v15, Landroidx/compose/ui/unit/Density;

    move/from16 v19, v12

    .line 362
    sget-object v12, Landroidx/compose/foundation/layout/WindowInsets;->Companion:Landroidx/compose/foundation/layout/WindowInsets$Companion;

    move-object/from16 p11, v11

    const/4 v11, 0x6

    invoke-static {v12, v1, v11}, Landroidx/compose/foundation/layout/WindowInsets_androidKt;->getStatusBars(Landroidx/compose/foundation/layout/WindowInsets$Companion;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object v11

    invoke-interface {v11, v15}, Landroidx/compose/foundation/layout/WindowInsets;->getTop(Landroidx/compose/ui/unit/Density;)I

    move-result v11

    const v12, 0x1329dac6

    invoke-interface {v1, v12}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    if-eqz v2, :cond_34

    .line 1166
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    .line 1167
    invoke-virtual {v8}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v12, v2, :cond_33

    .line 365
    new-instance v12, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$1$1;

    invoke-direct {v12, v6}, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$1$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    .line 1169
    invoke-interface {v1, v12}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 365
    :cond_33
    check-cast v12, Lkotlin/jvm/functions/Function0;

    const/16 v2, 0x180

    invoke-static {v14, v15, v12, v1, v2}, Landroidx/compose/material3/ExposedDropdownMenu_androidKt;->access$SoftKeyboardListener(Landroid/view/View;Landroidx/compose/ui/unit/Density;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    :cond_34
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 1166
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    .line 1167
    invoke-virtual {v8}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v12

    if-ne v2, v12, :cond_35

    .line 369
    new-instance v2, Landroidx/compose/animation/core/MutableTransitionState;

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v2, v12}, Landroidx/compose/animation/core/MutableTransitionState;-><init>(Ljava/lang/Object;)V

    .line 1169
    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 369
    :cond_35
    check-cast v2, Landroidx/compose/animation/core/MutableTransitionState;

    .line 370
    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroidx/compose/animation/core/MutableTransitionState;->setTargetState(Ljava/lang/Object;)V

    .line 372
    invoke-virtual {v2}, Landroidx/compose/animation/core/MutableTransitionState;->getCurrentState()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-nez v12, :cond_37

    invoke-virtual {v2}, Landroidx/compose/animation/core/MutableTransitionState;->getTargetState()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_36

    goto :goto_22

    :cond_36
    move/from16 p13, v0

    goto/16 :goto_24

    .line 1166
    :cond_37
    :goto_22
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    .line 1167
    invoke-virtual {v8}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v14

    if-ne v12, v14, :cond_38

    .line 373
    sget-object v12, Landroidx/compose/ui/graphics/TransformOrigin;->Companion:Landroidx/compose/ui/graphics/TransformOrigin$Companion;

    invoke-virtual {v12}, Landroidx/compose/ui/graphics/TransformOrigin$Companion;->getCenter-SzJe1aQ()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Landroidx/compose/ui/graphics/TransformOrigin;->box-impl(J)Landroidx/compose/ui/graphics/TransformOrigin;

    move-result-object v12

    move/from16 p13, v0

    const/4 v0, 0x0

    const/4 v14, 0x2

    invoke-static {v12, v0, v14, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v12

    .line 1169
    invoke-interface {v1, v12}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    goto :goto_23

    :cond_38
    move/from16 p13, v0

    .line 373
    :goto_23
    move-object v0, v12

    check-cast v0, Landroidx/compose/runtime/MutableState;

    .line 375
    invoke-interface {v1, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v12

    invoke-interface {v1, v11}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v14

    or-int/2addr v12, v14

    .line 1166
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    if-nez v12, :cond_39

    .line 1167
    invoke-virtual {v8}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v8

    if-ne v14, v8, :cond_3a

    .line 376
    :cond_39
    new-instance v14, Landroidx/compose/material3/ExposedDropdownMenuPositionProvider;

    .line 380
    new-instance v8, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$popupPositionProvider$1$1;

    invoke-direct {v8, v0}, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$popupPositionProvider$1$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    const/16 v12, 0x8

    const/16 v16, 0x0

    const/16 v18, 0x0

    move-object/from16 p3, v14

    move-object/from16 p4, v15

    move/from16 p5, v11

    move-object/from16 p6, v6

    move/from16 p7, v18

    move-object/from16 p8, v8

    move/from16 p9, v12

    move-object/from16 p10, v16

    .line 376
    invoke-direct/range {p3 .. p10}, Landroidx/compose/material3/ExposedDropdownMenuPositionProvider;-><init>(Landroidx/compose/ui/unit/Density;ILandroidx/compose/runtime/State;ILkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1169
    invoke-interface {v1, v14}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 375
    :cond_3a
    move-object v6, v14

    check-cast v6, Landroidx/compose/material3/ExposedDropdownMenuPositionProvider;

    .line 389
    sget-object v8, Landroidx/compose/material3/ExposedDropdownMenuDefaults;->INSTANCE:Landroidx/compose/material3/ExposedDropdownMenuDefaults;

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/ExposedDropdownMenuBoxScope;->getAnchorType-oYjWRB4$material3_release()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x30

    invoke-virtual {v8, v11, v1, v12}, Landroidx/compose/material3/ExposedDropdownMenuDefaults;->popupProperties-TNbCmME$material3_release(Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/window/PopupProperties;

    move-result-object v8

    .line 390
    new-instance v11, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$2;

    move-object/from16 v20, v11

    move-object/from16 v21, p0

    move-object/from16 v22, v7

    move/from16 v23, v13

    move-object/from16 v24, v2

    move-object/from16 v25, v0

    move-object/from16 v26, v9

    move-object/from16 v27, v10

    move-wide/from16 v28, v3

    move/from16 v30, v5

    move/from16 v31, p13

    move-object/from16 v32, p11

    move-object/from16 v33, p12

    invoke-direct/range {v20 .. v33}, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$2;-><init>(Landroidx/compose/material3/ExposedDropdownMenuBoxScope;Landroidx/compose/ui/Modifier;ZLandroidx/compose/animation/core/MutableTransitionState;Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/ScrollState;Landroidx/compose/ui/graphics/Shape;JFFLandroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function3;)V

    const/16 v0, 0x36

    const v2, -0x4083cfe7

    const/4 v12, 0x1

    invoke-static {v2, v12, v11, v1, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    and-int/lit8 v2, v19, 0x70

    or-int/lit16 v2, v2, 0xc00

    const/4 v11, 0x0

    move-object/from16 p3, v6

    move-object/from16 p4, p2

    move-object/from16 p5, v8

    move-object/from16 p6, v0

    move-object/from16 p7, v1

    move/from16 p8, v2

    move/from16 p9, v11

    .line 386
    invoke-static/range {p3 .. p9}, Landroidx/compose/ui/window/AndroidPopup_androidKt;->Popup(Landroidx/compose/ui/window/PopupPositionProvider;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/PopupProperties;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    :goto_24
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3b
    move-object/from16 v12, p11

    move/from16 v11, p13

    move v6, v13

    move-object/from16 v36, v10

    move v10, v5

    move-object v5, v9

    move-wide v8, v3

    move-object v4, v7

    move-object/from16 v7, v36

    .line 405
    :goto_25
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v15

    if-eqz v15, :cond_3c

    new-instance v14, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$3;

    move-object v0, v14

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v13, p12

    move-object/from16 v34, v14

    move/from16 v14, p14

    move-object/from16 v35, v15

    move/from16 v15, p15

    move/from16 v16, p16

    invoke-direct/range {v0 .. v16}, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$3;-><init>(Landroidx/compose/material3/ExposedDropdownMenuBoxScope;ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;ZLandroidx/compose/ui/graphics/Shape;JFFLandroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function3;III)V

    move-object/from16 v1, v34

    move-object/from16 v0, v35

    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_3c
    return-void
.end method

.method public abstract exposedDropdownSize(Landroidx/compose/ui/Modifier;Z)Landroidx/compose/ui/Modifier;
.end method

.method public abstract getAnchorType-oYjWRB4$material3_release()Ljava/lang/String;
.end method

.method public final menuAnchor(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .locals 7

    .line 413
    sget-object v0, Landroidx/compose/material3/ExposedDropdownMenuAnchorType;->Companion:Landroidx/compose/material3/ExposedDropdownMenuAnchorType$Companion;

    invoke-virtual {v0}, Landroidx/compose/material3/ExposedDropdownMenuAnchorType$Companion;->getPrimaryNotEditable-oYjWRB4()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Landroidx/compose/material3/ExposedDropdownMenuBoxScope;->menuAnchor-2Hz36ac$default(Landroidx/compose/material3/ExposedDropdownMenuBoxScope;Landroidx/compose/ui/Modifier;Ljava/lang/String;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public abstract menuAnchor-2Hz36ac(Landroidx/compose/ui/Modifier;Ljava/lang/String;Z)Landroidx/compose/ui/Modifier;
.end method
