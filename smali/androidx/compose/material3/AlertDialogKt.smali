.class public abstract Landroidx/compose/material3/AlertDialogKt;
.super Ljava/lang/Object;
.source "AlertDialog.kt"


# static fields
.field private static final ButtonsCrossAxisSpacing:F

.field private static final ButtonsMainAxisSpacing:F

.field private static final DialogMaxWidth:F

.field private static final DialogMinWidth:F

.field private static final DialogPadding:Landroidx/compose/foundation/layout/PaddingValues;

.field private static final IconPadding:Landroidx/compose/foundation/layout/PaddingValues;

.field private static final TextPadding:Landroidx/compose/foundation/layout/PaddingValues;

.field private static final TitlePadding:Landroidx/compose/foundation/layout/PaddingValues;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v0, 0x118

    int-to-float v0, v0

    .line 502
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 450
    sput v0, Landroidx/compose/material3/AlertDialogKt;->DialogMinWidth:F

    const/16 v0, 0x230

    int-to-float v0, v0

    .line 503
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 451
    sput v0, Landroidx/compose/material3/AlertDialogKt;->DialogMaxWidth:F

    const/16 v0, 0x8

    int-to-float v0, v0

    .line 504
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 453
    sput v0, Landroidx/compose/material3/AlertDialogKt;->ButtonsMainAxisSpacing:F

    const/16 v0, 0xc

    int-to-float v0, v0

    .line 505
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 454
    sput v0, Landroidx/compose/material3/AlertDialogKt;->ButtonsCrossAxisSpacing:F

    const/16 v0, 0x18

    int-to-float v0, v0

    .line 506
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 457
    invoke-static {v1}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-0680j_4(F)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v1

    sput-object v1, Landroidx/compose/material3/AlertDialogKt;->DialogPadding:Landroidx/compose/foundation/layout/PaddingValues;

    const/16 v1, 0x10

    int-to-float v1, v1

    .line 507
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 458
    invoke-static/range {v2 .. v7}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-a9UjIt4$default(FFFFILjava/lang/Object;)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v2

    sput-object v2, Landroidx/compose/material3/AlertDialogKt;->IconPadding:Landroidx/compose/foundation/layout/PaddingValues;

    .line 508
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v6

    const/4 v7, 0x7

    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 459
    invoke-static/range {v3 .. v8}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-a9UjIt4$default(FFFFILjava/lang/Object;)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v1

    sput-object v1, Landroidx/compose/material3/AlertDialogKt;->TitlePadding:Landroidx/compose/foundation/layout/PaddingValues;

    .line 509
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 460
    invoke-static/range {v2 .. v7}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-a9UjIt4$default(FFFFILjava/lang/Object;)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/AlertDialogKt;->TextPadding:Landroidx/compose/foundation/layout/PaddingValues;

    return-void
.end method

.method public static final AlertDialogContent-4hvqGtA(Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;JFJJJJLandroidx/compose/runtime/Composer;III)V
    .locals 33

    move/from16 v14, p18

    move/from16 v15, p20

    const v0, 0x5ac0a9b7

    move-object/from16 v1, p17

    .line 291
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v13

    and-int/lit8 v1, v15, 0x1

    if-eqz v1, :cond_0

    or-int/lit8 v1, v14, 0x6

    move-object/from16 v12, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v1, v14, 0x6

    move-object/from16 v12, p0

    if-nez v1, :cond_2

    invoke-interface {v13, v12}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v14

    goto :goto_1

    :cond_2
    move v1, v14

    :goto_1
    and-int/lit8 v4, v15, 0x2

    const/16 v6, 0x20

    if-eqz v4, :cond_4

    or-int/lit8 v1, v1, 0x30

    :cond_3
    move-object/from16 v7, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v7, v14, 0x30

    if-nez v7, :cond_3

    move-object/from16 v7, p1

    invoke-interface {v13, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    move v8, v6

    goto :goto_2

    :cond_5
    const/16 v8, 0x10

    :goto_2
    or-int/2addr v1, v8

    :goto_3
    and-int/lit8 v8, v15, 0x4

    if-eqz v8, :cond_6

    or-int/lit16 v1, v1, 0x180

    move-object/from16 v11, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v8, v14, 0x180

    move-object/from16 v11, p2

    if-nez v8, :cond_8

    invoke-interface {v13, v11}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    const/16 v8, 0x100

    goto :goto_4

    :cond_7
    const/16 v8, 0x80

    :goto_4
    or-int/2addr v1, v8

    :cond_8
    :goto_5
    and-int/lit8 v8, v15, 0x8

    if-eqz v8, :cond_9

    or-int/lit16 v1, v1, 0xc00

    move-object/from16 v10, p3

    goto :goto_7

    :cond_9
    and-int/lit16 v8, v14, 0xc00

    move-object/from16 v10, p3

    if-nez v8, :cond_b

    invoke-interface {v13, v10}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    const/16 v8, 0x800

    goto :goto_6

    :cond_a
    const/16 v8, 0x400

    :goto_6
    or-int/2addr v1, v8

    :cond_b
    :goto_7
    and-int/lit8 v8, v15, 0x10

    if-eqz v8, :cond_c

    or-int/lit16 v1, v1, 0x6000

    move-object/from16 v9, p4

    goto :goto_9

    :cond_c
    and-int/lit16 v8, v14, 0x6000

    move-object/from16 v9, p4

    if-nez v8, :cond_e

    invoke-interface {v13, v9}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    const/16 v8, 0x4000

    goto :goto_8

    :cond_d
    const/16 v8, 0x2000

    :goto_8
    or-int/2addr v1, v8

    :cond_e
    :goto_9
    and-int/lit8 v8, v15, 0x20

    const/high16 v16, 0x30000

    if-eqz v8, :cond_10

    or-int v1, v1, v16

    :cond_f
    move-object/from16 v8, p5

    goto :goto_b

    :cond_10
    and-int v8, v14, v16

    if-nez v8, :cond_f

    move-object/from16 v8, p5

    invoke-interface {v13, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_11

    const/high16 v16, 0x20000

    goto :goto_a

    :cond_11
    const/high16 v16, 0x10000

    :goto_a
    or-int v1, v1, v16

    :goto_b
    and-int/lit8 v16, v15, 0x40

    const/high16 v17, 0x180000

    if-eqz v16, :cond_12

    or-int v1, v1, v17

    move-wide/from16 v9, p6

    goto :goto_d

    :cond_12
    and-int v16, v14, v17

    move-wide/from16 v9, p6

    if-nez v16, :cond_14

    invoke-interface {v13, v9, v10}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v16

    if-eqz v16, :cond_13

    const/high16 v16, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v16, 0x80000

    :goto_c
    or-int v1, v1, v16

    :cond_14
    :goto_d
    and-int/lit16 v2, v15, 0x80

    const/high16 v29, 0xc00000

    if-eqz v2, :cond_16

    or-int v1, v1, v29

    :cond_15
    move/from16 v2, p8

    goto :goto_f

    :cond_16
    and-int v2, v14, v29

    if-nez v2, :cond_15

    move/from16 v2, p8

    invoke-interface {v13, v2}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v16

    if-eqz v16, :cond_17

    const/high16 v16, 0x800000

    goto :goto_e

    :cond_17
    const/high16 v16, 0x400000

    :goto_e
    or-int v1, v1, v16

    :goto_f
    and-int/lit16 v3, v15, 0x100

    const/high16 v17, 0x6000000

    if-eqz v3, :cond_18

    or-int v1, v1, v17

    move-wide/from16 v9, p9

    goto :goto_11

    :cond_18
    and-int v3, v14, v17

    move-wide/from16 v9, p9

    if-nez v3, :cond_1a

    invoke-interface {v13, v9, v10}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v3

    if-eqz v3, :cond_19

    const/high16 v3, 0x4000000

    goto :goto_10

    :cond_19
    const/high16 v3, 0x2000000

    :goto_10
    or-int/2addr v1, v3

    :cond_1a
    :goto_11
    and-int/lit16 v3, v15, 0x200

    const/high16 v17, 0x30000000

    if-eqz v3, :cond_1b

    or-int v1, v1, v17

    move-wide/from16 v9, p11

    goto :goto_13

    :cond_1b
    and-int v3, v14, v17

    move-wide/from16 v9, p11

    if-nez v3, :cond_1d

    invoke-interface {v13, v9, v10}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v3

    if-eqz v3, :cond_1c

    const/high16 v3, 0x20000000

    goto :goto_12

    :cond_1c
    const/high16 v3, 0x10000000

    :goto_12
    or-int/2addr v1, v3

    :cond_1d
    :goto_13
    and-int/lit16 v3, v15, 0x400

    if-eqz v3, :cond_1e

    or-int/lit8 v3, p19, 0x6

    move-wide/from16 v9, p13

    goto :goto_15

    :cond_1e
    and-int/lit8 v3, p19, 0x6

    move-wide/from16 v9, p13

    if-nez v3, :cond_20

    invoke-interface {v13, v9, v10}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/16 v16, 0x4

    goto :goto_14

    :cond_1f
    const/16 v16, 0x2

    :goto_14
    or-int v3, p19, v16

    goto :goto_15

    :cond_20
    move/from16 v3, p19

    :goto_15
    and-int/lit16 v5, v15, 0x800

    if-eqz v5, :cond_21

    or-int/lit8 v3, v3, 0x30

    move-wide/from16 v9, p15

    goto :goto_17

    :cond_21
    and-int/lit8 v5, p19, 0x30

    move-wide/from16 v9, p15

    if-nez v5, :cond_23

    invoke-interface {v13, v9, v10}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v5

    if-eqz v5, :cond_22

    move v5, v6

    goto :goto_16

    :cond_22
    const/16 v5, 0x10

    :goto_16
    or-int/2addr v3, v5

    :cond_23
    :goto_17
    const v5, 0x12492493

    and-int/2addr v5, v1

    const v6, 0x12492492

    if-ne v5, v6, :cond_25

    and-int/lit8 v5, v3, 0x13

    const/16 v6, 0x12

    if-ne v5, v6, :cond_25

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v5

    if-nez v5, :cond_24

    goto :goto_18

    .line 351
    :cond_24
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object v2, v7

    move-object v0, v13

    goto/16 :goto_1a

    :cond_25
    :goto_18
    if-eqz v4, :cond_26

    .line 280
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object/from16 v30, v4

    goto :goto_19

    :cond_26
    move-object/from16 v30, v7

    :goto_19
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_27

    const-string v4, "androidx.compose.material3.AlertDialogContent (AlertDialog.kt:290)"

    .line 291
    invoke-static {v0, v1, v3, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 297
    :cond_27
    new-instance v0, Landroidx/compose/material3/AlertDialogKt$AlertDialogContent$1;

    move-object/from16 v16, v0

    move-object/from16 v17, p2

    move-object/from16 v18, p3

    move-object/from16 v19, p4

    move-wide/from16 v20, p11

    move-wide/from16 v22, p13

    move-wide/from16 v24, p15

    move-wide/from16 v26, p9

    move-object/from16 v28, p0

    invoke-direct/range {v16 .. v28}, Landroidx/compose/material3/AlertDialogKt$AlertDialogContent$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;JJJJLkotlin/jvm/functions/Function2;)V

    const/16 v3, 0x36

    const v4, -0x7ebce384

    const/4 v5, 0x1

    invoke-static {v4, v5, v0, v13, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    shr-int/lit8 v3, v1, 0x3

    and-int/lit8 v3, v3, 0xe

    or-int v3, v3, v29

    shr-int/lit8 v4, v1, 0xc

    and-int/lit8 v5, v4, 0x70

    or-int/2addr v3, v5

    and-int/lit16 v4, v4, 0x380

    or-int/2addr v3, v4

    shr-int/lit8 v1, v1, 0x9

    const v4, 0xe000

    and-int/2addr v1, v4

    or-int v16, v3, v1

    const/16 v17, 0x68

    const-wide/16 v5, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v1, v30

    move-object/from16 v2, p5

    move-wide/from16 v3, p6

    move/from16 v7, p8

    move/from16 v8, v18

    move-object/from16 v9, v19

    move-object v10, v0

    move-object v11, v13

    move/from16 v12, v16

    move-object v0, v13

    move/from16 v13, v17

    .line 292
    invoke-static/range {v1 .. v13}, Landroidx/compose/material3/SurfaceKt;->Surface-T9BRK9s(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_28
    move-object/from16 v2, v30

    .line 351
    :goto_1a
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v12

    if-eqz v12, :cond_29

    new-instance v13, Landroidx/compose/material3/AlertDialogKt$AlertDialogContent$2;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    move/from16 v9, p8

    move-wide/from16 v10, p9

    move-object/from16 v31, v12

    move-object/from16 v32, v13

    move-wide/from16 v12, p11

    move-wide/from16 v14, p13

    move-wide/from16 v16, p15

    move/from16 v18, p18

    move/from16 v19, p19

    move/from16 v20, p20

    invoke-direct/range {v0 .. v20}, Landroidx/compose/material3/AlertDialogKt$AlertDialogContent$2;-><init>(Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;JFJJJJIII)V

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_29
    return-void
.end method

.method public static final AlertDialogFlowRow-ixp7dh8(FFLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 8

    const v0, 0x22fa2ee9

    .line 362
    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p3

    and-int/lit8 v1, p4, 0x6

    const/4 v2, 0x4

    if-nez v1, :cond_1

    invoke-interface {p3, p0}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, p4

    goto :goto_1

    :cond_1
    move v1, p4

    :goto_1
    and-int/lit8 v3, p4, 0x30

    const/16 v4, 0x20

    if-nez v3, :cond_3

    invoke-interface {p3, p1}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    goto :goto_2

    :cond_2
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v1, v3

    :cond_3
    and-int/lit16 v3, p4, 0x180

    if-nez v3, :cond_5

    invoke-interface {p3, p2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x100

    goto :goto_3

    :cond_4
    const/16 v3, 0x80

    :goto_3
    or-int/2addr v1, v3

    :cond_5
    and-int/lit16 v3, v1, 0x93

    const/16 v5, 0x92

    if-ne v3, v5, :cond_7

    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_4

    .line 448
    :cond_6
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_8

    .line 362
    :cond_7
    :goto_4
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, -0x1

    const-string v5, "androidx.compose.material3.AlertDialogFlowRow (AlertDialog.kt:361)"

    invoke-static {v0, v1, v3, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_8
    and-int/lit8 v0, v1, 0xe

    const/4 v3, 0x1

    const/4 v5, 0x0

    if-ne v0, v2, :cond_9

    move v0, v3

    goto :goto_5

    :cond_9
    move v0, v5

    :goto_5
    and-int/lit8 v2, v1, 0x70

    if-ne v2, v4, :cond_a

    goto :goto_6

    :cond_a
    move v3, v5

    :goto_6
    or-int/2addr v0, v3

    .line 1166
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_b

    .line 1167
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v2, v0, :cond_c

    .line 363
    :cond_b
    new-instance v2, Landroidx/compose/material3/AlertDialogKt$AlertDialogFlowRow$1$1;

    invoke-direct {v2, p0, p1}, Landroidx/compose/material3/AlertDialogKt$AlertDialogFlowRow$1$1;-><init>(FF)V

    .line 1169
    invoke-interface {p3, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 363
    :cond_c
    check-cast v2, Landroidx/compose/ui/layout/MeasurePolicy;

    shr-int/lit8 v0, v1, 0x6

    and-int/lit8 v0, v0, 0xe

    .line 469
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 80
    invoke-static {p3, v5}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v3

    .line 81
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v4

    .line 82
    invoke-static {p3, v1}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 476
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v6

    shl-int/lit8 v0, v0, 0x6

    and-int/lit16 v0, v0, 0x380

    or-int/lit8 v0, v0, 0x6

    .line 478
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v7

    if-nez v7, :cond_d

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 479
    :cond_d
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 480
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 481
    invoke-interface {p3, v6}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_7

    .line 483
    :cond_e
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 485
    :goto_7
    invoke-static {p3}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v6

    .line 86
    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v7

    invoke-static {v6, v2, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 87
    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v6, v4, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 89
    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    .line 491
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v4

    if-nez v4, :cond_f

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 492
    :cond_f
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 493
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v6, v3, v2}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 496
    :cond_10
    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v6, v1, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    shr-int/lit8 v0, v0, 0x6

    and-int/lit8 v0, v0, 0xe

    .line 498
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, p3, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 501
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 448
    :cond_11
    :goto_8
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object p3

    if-eqz p3, :cond_12

    new-instance v0, Landroidx/compose/material3/AlertDialogKt$AlertDialogFlowRow$2;

    invoke-direct {v0, p0, p1, p2, p4}, Landroidx/compose/material3/AlertDialogKt$AlertDialogFlowRow$2;-><init>(FFLkotlin/jvm/functions/Function2;I)V

    invoke-interface {p3, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_12
    return-void
.end method

.method public static final AlertDialogImpl-wrnwzgE(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;JJJJFLandroidx/compose/ui/window/DialogProperties;Landroidx/compose/runtime/Composer;II)V
    .locals 34

    move/from16 v15, p19

    move/from16 v13, p20

    const v0, -0x36d36f5c    # -706826.25f

    move-object/from16 v1, p18

    .line 245
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v8

    and-int/lit8 v1, v15, 0x6

    move-object/from16 v9, p0

    if-nez v1, :cond_1

    invoke-interface {v8, v9}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v15

    goto :goto_1

    :cond_1
    move v1, v15

    :goto_1
    and-int/lit8 v4, v15, 0x30

    const/16 v5, 0x10

    const/16 v6, 0x20

    move-object/from16 v10, p1

    if-nez v4, :cond_3

    invoke-interface {v8, v10}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v6

    goto :goto_2

    :cond_2
    move v4, v5

    :goto_2
    or-int/2addr v1, v4

    :cond_3
    and-int/lit16 v4, v15, 0x180

    move-object/from16 v12, p2

    if-nez v4, :cond_5

    invoke-interface {v8, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x100

    goto :goto_3

    :cond_4
    const/16 v4, 0x80

    :goto_3
    or-int/2addr v1, v4

    :cond_5
    and-int/lit16 v4, v15, 0xc00

    const/16 v16, 0x800

    if-nez v4, :cond_7

    move-object/from16 v4, p3

    invoke-interface {v8, v4}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    move/from16 v17, v16

    goto :goto_4

    :cond_6
    const/16 v17, 0x400

    :goto_4
    or-int v1, v1, v17

    goto :goto_5

    :cond_7
    move-object/from16 v4, p3

    :goto_5
    and-int/lit16 v2, v15, 0x6000

    if-nez v2, :cond_9

    move-object/from16 v2, p4

    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    const/16 v17, 0x4000

    goto :goto_6

    :cond_8
    const/16 v17, 0x2000

    :goto_6
    or-int v1, v1, v17

    goto :goto_7

    :cond_9
    move-object/from16 v2, p4

    :goto_7
    const/high16 v17, 0x30000

    and-int v17, v15, v17

    move-object/from16 v11, p5

    if-nez v17, :cond_b

    invoke-interface {v8, v11}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    const/high16 v18, 0x20000

    goto :goto_8

    :cond_a
    const/high16 v18, 0x10000

    :goto_8
    or-int v1, v1, v18

    :cond_b
    const/high16 v18, 0x180000

    and-int v18, v15, v18

    move-object/from16 v14, p6

    if-nez v18, :cond_d

    invoke-interface {v8, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_c

    const/high16 v19, 0x100000

    goto :goto_9

    :cond_c
    const/high16 v19, 0x80000

    :goto_9
    or-int v1, v1, v19

    :cond_d
    const/high16 v19, 0xc00000

    and-int v19, v15, v19

    move-object/from16 v7, p7

    if-nez v19, :cond_f

    invoke-interface {v8, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_e

    const/high16 v20, 0x800000

    goto :goto_a

    :cond_e
    const/high16 v20, 0x400000

    :goto_a
    or-int v1, v1, v20

    :cond_f
    const/high16 v20, 0x6000000

    and-int v20, v15, v20

    move/from16 v21, v1

    move-wide/from16 v0, p8

    if-nez v20, :cond_11

    invoke-interface {v8, v0, v1}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v22

    if-eqz v22, :cond_10

    const/high16 v22, 0x4000000

    goto :goto_b

    :cond_10
    const/high16 v22, 0x2000000

    :goto_b
    or-int v21, v21, v22

    :cond_11
    const/high16 v22, 0x30000000

    and-int v22, v15, v22

    move-wide/from16 v11, p10

    if-nez v22, :cond_13

    invoke-interface {v8, v11, v12}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v22

    if-eqz v22, :cond_12

    const/high16 v22, 0x20000000

    goto :goto_c

    :cond_12
    const/high16 v22, 0x10000000

    :goto_c
    or-int v21, v21, v22

    :cond_13
    move/from16 v3, v21

    and-int/lit8 v21, v13, 0x6

    move-wide/from16 v14, p12

    if-nez v21, :cond_15

    invoke-interface {v8, v14, v15}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v21

    if-eqz v21, :cond_14

    const/16 v22, 0x4

    goto :goto_d

    :cond_14
    const/16 v22, 0x2

    :goto_d
    or-int v21, v13, v22

    goto :goto_e

    :cond_15
    move/from16 v21, v13

    :goto_e
    and-int/lit8 v22, v13, 0x30

    move-wide/from16 v14, p14

    if-nez v22, :cond_17

    invoke-interface {v8, v14, v15}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v22

    if-eqz v22, :cond_16

    move v5, v6

    :cond_16
    or-int v21, v21, v5

    :cond_17
    and-int/lit16 v5, v13, 0x180

    move/from16 v6, p16

    if-nez v5, :cond_19

    invoke-interface {v8, v6}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v5

    if-eqz v5, :cond_18

    const/16 v17, 0x100

    goto :goto_f

    :cond_18
    const/16 v17, 0x80

    :goto_f
    or-int v21, v21, v17

    :cond_19
    and-int/lit16 v5, v13, 0xc00

    if-nez v5, :cond_1b

    move-object/from16 v5, p17

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1a

    goto :goto_10

    :cond_1a
    const/16 v16, 0x400

    :goto_10
    or-int v21, v21, v16

    :goto_11
    move/from16 v0, v21

    goto :goto_12

    :cond_1b
    move-object/from16 v5, p17

    goto :goto_11

    :goto_12
    const v1, 0x12492493

    and-int/2addr v1, v3

    const v2, 0x12492492

    if-ne v1, v2, :cond_1d

    and-int/lit16 v1, v0, 0x493

    const/16 v2, 0x492

    if-ne v1, v2, :cond_1d

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_1c

    goto :goto_13

    .line 275
    :cond_1c
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_14

    .line 245
    :cond_1d
    :goto_13
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_1e

    const-string v1, "androidx.compose.material3.AlertDialogImpl (AlertDialog.kt:244)"

    const v2, -0x36d36f5c    # -706826.25f

    invoke-static {v2, v3, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 249
    :cond_1e
    new-instance v1, Landroidx/compose/material3/AlertDialogKt$AlertDialogImpl$1;

    move-object/from16 v16, v1

    move-object/from16 v17, p4

    move-object/from16 v18, p5

    move-object/from16 v19, p6

    move-object/from16 v20, p7

    move-wide/from16 v21, p8

    move/from16 v23, p16

    move-wide/from16 v24, p10

    move-wide/from16 v26, p12

    move-wide/from16 v28, p14

    move-object/from16 v30, p3

    move-object/from16 v31, p1

    invoke-direct/range {v16 .. v31}, Landroidx/compose/material3/AlertDialogKt$AlertDialogImpl$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;JFJJJLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    const/16 v2, 0x36

    const v4, -0x6e701922

    const/4 v5, 0x1

    invoke-static {v4, v5, v1, v8, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v4

    and-int/lit8 v1, v3, 0xe

    or-int/lit16 v1, v1, 0xc00

    shr-int/lit8 v2, v3, 0x3

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    shr-int/lit8 v0, v0, 0x3

    and-int/lit16 v0, v0, 0x380

    or-int/2addr v0, v1

    const/16 v16, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p17

    move-object v5, v8

    move v6, v0

    move/from16 v7, v16

    .line 245
    invoke-static/range {v1 .. v7}, Landroidx/compose/material3/AlertDialogKt;->BasicAlertDialog(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/window/DialogProperties;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 275
    :cond_1f
    :goto_14
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v8

    if-eqz v8, :cond_20

    new-instance v7, Landroidx/compose/material3/AlertDialogKt$AlertDialogImpl$2;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object v9, v7

    move-object/from16 v7, p6

    move-object v10, v8

    move-object/from16 v8, p7

    move-object/from16 v33, v9

    move-object/from16 v32, v10

    move-wide/from16 v9, p8

    move-wide/from16 v11, p10

    move-wide/from16 v13, p12

    move-wide/from16 v15, p14

    move/from16 v17, p16

    move-object/from16 v18, p17

    move/from16 v19, p19

    move/from16 v20, p20

    invoke-direct/range {v0 .. v20}, Landroidx/compose/material3/AlertDialogKt$AlertDialogImpl$2;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;JJJJFLandroidx/compose/ui/window/DialogProperties;II)V

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_20
    return-void
.end method

.method public static final BasicAlertDialog(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/window/DialogProperties;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 19

    move-object/from16 v4, p3

    move/from16 v5, p5

    const v0, -0x729d2b99

    move-object/from16 v1, p4

    .line 144
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v1

    and-int/lit8 v2, p6, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v2, v5, 0x6

    move v3, v2

    move-object/from16 v2, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v5, 0x6

    if-nez v2, :cond_2

    move-object/from16 v2, p0

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v5

    goto :goto_1

    :cond_2
    move-object/from16 v2, p0

    move v3, v5

    :goto_1
    and-int/lit8 v6, p6, 0x2

    if-eqz v6, :cond_4

    or-int/lit8 v3, v3, 0x30

    :cond_3
    move-object/from16 v7, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v7, v5, 0x30

    if-nez v7, :cond_3

    move-object/from16 v7, p1

    invoke-interface {v1, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/16 v8, 0x20

    goto :goto_2

    :cond_5
    const/16 v8, 0x10

    :goto_2
    or-int/2addr v3, v8

    :goto_3
    and-int/lit8 v8, p6, 0x4

    if-eqz v8, :cond_7

    or-int/lit16 v3, v3, 0x180

    :cond_6
    move-object/from16 v9, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v9, v5, 0x180

    if-nez v9, :cond_6

    move-object/from16 v9, p2

    invoke-interface {v1, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    const/16 v10, 0x100

    goto :goto_4

    :cond_8
    const/16 v10, 0x80

    :goto_4
    or-int/2addr v3, v10

    :goto_5
    and-int/lit8 v10, p6, 0x8

    if-eqz v10, :cond_9

    or-int/lit16 v3, v3, 0xc00

    goto :goto_7

    :cond_9
    and-int/lit16 v10, v5, 0xc00

    if-nez v10, :cond_b

    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    const/16 v10, 0x800

    goto :goto_6

    :cond_a
    const/16 v10, 0x400

    :goto_6
    or-int/2addr v3, v10

    :cond_b
    :goto_7
    and-int/lit16 v10, v3, 0x493

    const/16 v11, 0x492

    if-ne v10, v11, :cond_d

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v10

    if-nez v10, :cond_c

    goto :goto_8

    .line 160
    :cond_c
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object v12, v7

    move-object v3, v9

    goto :goto_b

    :cond_d
    :goto_8
    if-eqz v6, :cond_e

    .line 141
    sget-object v6, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v12, v6

    goto :goto_9

    :cond_e
    move-object v12, v7

    :goto_9
    if-eqz v8, :cond_f

    .line 142
    new-instance v6, Landroidx/compose/ui/window/DialogProperties;

    const/16 v17, 0x7

    const/16 v18, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v13, v6

    invoke-direct/range {v13 .. v18}, Landroidx/compose/ui/window/DialogProperties;-><init>(ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_a

    :cond_f
    move-object v13, v9

    :goto_a
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v6

    if-eqz v6, :cond_10

    const/4 v6, -0x1

    const-string v7, "androidx.compose.material3.BasicAlertDialog (AlertDialog.kt:143)"

    .line 144
    invoke-static {v0, v3, v6, v7}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 148
    :cond_10
    new-instance v0, Landroidx/compose/material3/AlertDialogKt$BasicAlertDialog$1;

    invoke-direct {v0, v12, v4}, Landroidx/compose/material3/AlertDialogKt$BasicAlertDialog$1;-><init>(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;)V

    const/16 v6, 0x36

    const v7, 0x35f59d30

    const/4 v8, 0x1

    invoke-static {v7, v8, v0, v1, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v8

    and-int/lit8 v0, v3, 0xe

    or-int/lit16 v0, v0, 0x180

    shr-int/lit8 v3, v3, 0x3

    and-int/lit8 v3, v3, 0x70

    or-int v10, v0, v3

    const/4 v11, 0x0

    move-object/from16 v6, p0

    move-object v7, v13

    move-object v9, v1

    .line 145
    invoke-static/range {v6 .. v11}, Landroidx/compose/ui/window/AndroidDialog_androidKt;->Dialog(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/DialogProperties;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_11
    move-object v3, v13

    .line 160
    :goto_b
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v7

    if-eqz v7, :cond_12

    new-instance v8, Landroidx/compose/material3/AlertDialogKt$BasicAlertDialog$2;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object v2, v12

    move-object/from16 v4, p3

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Landroidx/compose/material3/AlertDialogKt$BasicAlertDialog$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/window/DialogProperties;Lkotlin/jvm/functions/Function2;II)V

    invoke-interface {v7, v8}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_12
    return-void
.end method

.method public static final synthetic access$getButtonsCrossAxisSpacing$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material3/AlertDialogKt;->ButtonsCrossAxisSpacing:F

    return v0
.end method

.method public static final synthetic access$getButtonsMainAxisSpacing$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material3/AlertDialogKt;->ButtonsMainAxisSpacing:F

    return v0
.end method

.method public static final synthetic access$getDialogPadding$p()Landroidx/compose/foundation/layout/PaddingValues;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/material3/AlertDialogKt;->DialogPadding:Landroidx/compose/foundation/layout/PaddingValues;

    return-object v0
.end method

.method public static final synthetic access$getIconPadding$p()Landroidx/compose/foundation/layout/PaddingValues;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/material3/AlertDialogKt;->IconPadding:Landroidx/compose/foundation/layout/PaddingValues;

    return-object v0
.end method

.method public static final synthetic access$getTextPadding$p()Landroidx/compose/foundation/layout/PaddingValues;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/material3/AlertDialogKt;->TextPadding:Landroidx/compose/foundation/layout/PaddingValues;

    return-object v0
.end method

.method public static final synthetic access$getTitlePadding$p()Landroidx/compose/foundation/layout/PaddingValues;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/material3/AlertDialogKt;->TitlePadding:Landroidx/compose/foundation/layout/PaddingValues;

    return-object v0
.end method

.method public static final getDialogMaxWidth()F
    .locals 1

    .line 451
    sget v0, Landroidx/compose/material3/AlertDialogKt;->DialogMaxWidth:F

    return v0
.end method

.method public static final getDialogMinWidth()F
    .locals 1

    .line 450
    sget v0, Landroidx/compose/material3/AlertDialogKt;->DialogMinWidth:F

    return v0
.end method
