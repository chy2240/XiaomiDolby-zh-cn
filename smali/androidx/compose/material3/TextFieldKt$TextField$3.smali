.class final Landroidx/compose/material3/TextFieldKt$TextField$3;
.super Lkotlin/jvm/internal/Lambda;
.source "TextField.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic $colors:Landroidx/compose/material3/TextFieldColors;

.field final synthetic $enabled:Z

.field final synthetic $interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field final synthetic $isError:Z

.field final synthetic $keyboardActions:Landroidx/compose/foundation/text/KeyboardActions;

.field final synthetic $keyboardOptions:Landroidx/compose/foundation/text/KeyboardOptions;

.field final synthetic $label:Lkotlin/jvm/functions/Function2;

.field final synthetic $leadingIcon:Lkotlin/jvm/functions/Function2;

.field final synthetic $maxLines:I

.field final synthetic $mergedTextStyle:Landroidx/compose/ui/text/TextStyle;

.field final synthetic $minLines:I

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $onValueChange:Lkotlin/jvm/functions/Function1;

.field final synthetic $placeholder:Lkotlin/jvm/functions/Function2;

.field final synthetic $prefix:Lkotlin/jvm/functions/Function2;

.field final synthetic $readOnly:Z

.field final synthetic $shape:Landroidx/compose/ui/graphics/Shape;

.field final synthetic $singleLine:Z

.field final synthetic $suffix:Lkotlin/jvm/functions/Function2;

.field final synthetic $supportingText:Lkotlin/jvm/functions/Function2;

.field final synthetic $trailingIcon:Lkotlin/jvm/functions/Function2;

.field final synthetic $value:Ljava/lang/String;

.field final synthetic $visualTransformation:Landroidx/compose/ui/text/input/VisualTransformation;


# direct methods
.method constructor <init>(Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/TextFieldColors;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ZZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;)V
    .locals 2

    .line 0
    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$modifier:Landroidx/compose/ui/Modifier;

    move v1, p2

    iput-boolean v1, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$isError:Z

    move-object v1, p3

    iput-object v1, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$colors:Landroidx/compose/material3/TextFieldColors;

    move-object v1, p4

    iput-object v1, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$value:Ljava/lang/String;

    move-object v1, p5

    iput-object v1, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$onValueChange:Lkotlin/jvm/functions/Function1;

    move v1, p6

    iput-boolean v1, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$enabled:Z

    move v1, p7

    iput-boolean v1, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$readOnly:Z

    move-object v1, p8

    iput-object v1, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$mergedTextStyle:Landroidx/compose/ui/text/TextStyle;

    move-object v1, p9

    iput-object v1, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$keyboardOptions:Landroidx/compose/foundation/text/KeyboardOptions;

    move-object v1, p10

    iput-object v1, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$keyboardActions:Landroidx/compose/foundation/text/KeyboardActions;

    move v1, p11

    iput-boolean v1, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$singleLine:Z

    move v1, p12

    iput v1, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$maxLines:I

    move v1, p13

    iput v1, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$minLines:I

    move-object/from16 v1, p14

    iput-object v1, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$visualTransformation:Landroidx/compose/ui/text/input/VisualTransformation;

    move-object/from16 v1, p15

    iput-object v1, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-object/from16 v1, p16

    iput-object v1, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$label:Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, p17

    iput-object v1, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$placeholder:Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, p18

    iput-object v1, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$leadingIcon:Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, p19

    iput-object v1, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$trailingIcon:Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, p20

    iput-object v1, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$prefix:Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, p21

    iput-object v1, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$suffix:Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, p22

    iput-object v1, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$supportingText:Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, p23

    iput-object v1, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$shape:Landroidx/compose/ui/graphics/Shape;

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 431
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/TextFieldKt$TextField$3;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 43

    move-object/from16 v0, p0

    move-object/from16 v13, p1

    move/from16 v1, p2

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 432
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 475
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_1

    .line 432
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, -0x1

    const-string v3, "androidx.compose.material3.TextField.<anonymous> (TextField.kt:431)"

    const v4, 0x6ed05103

    invoke-static {v4, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 435
    :cond_2
    iget-object v1, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$modifier:Landroidx/compose/ui/Modifier;

    .line 436
    iget-boolean v2, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$isError:Z

    sget-object v3, Landroidx/compose/material3/internal/Strings;->Companion:Landroidx/compose/material3/internal/Strings$Companion;

    .line 51
    sget v3, Landroidx/compose/ui/R$string;->default_error_message:I

    invoke-static {v3}, Landroidx/compose/material3/internal/Strings;->constructor-impl(I)I

    move-result v3

    const/4 v4, 0x0

    .line 436
    invoke-static {v3, v13, v4}, Landroidx/compose/material3/internal/Strings_androidKt;->getString-2EP1pXo(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroidx/compose/material3/internal/TextFieldImplKt;->defaultErrorSemantics(Landroidx/compose/ui/Modifier;ZLjava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 438
    sget-object v2, Landroidx/compose/material3/TextFieldDefaults;->INSTANCE:Landroidx/compose/material3/TextFieldDefaults;

    invoke-virtual {v2}, Landroidx/compose/material3/TextFieldDefaults;->getMinWidth-D9Ej5fM()F

    move-result v3

    .line 439
    invoke-virtual {v2}, Landroidx/compose/material3/TextFieldDefaults;->getMinHeight-D9Ej5fM()F

    move-result v2

    .line 437
    invoke-static {v1, v3, v2}, Landroidx/compose/foundation/layout/SizeKt;->defaultMinSize-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 445
    new-instance v1, Landroidx/compose/ui/graphics/SolidColor;

    move-object v15, v1

    iget-object v2, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$colors:Landroidx/compose/material3/TextFieldColors;

    iget-boolean v4, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$isError:Z

    invoke-virtual {v2, v4}, Landroidx/compose/material3/TextFieldColors;->cursorColor-vNxB06k$material3_release(Z)J

    move-result-wide v4

    const/4 v2, 0x0

    invoke-direct {v1, v4, v5, v2}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 433
    iget-object v14, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$value:Ljava/lang/String;

    move-object v1, v14

    .line 441
    iget-object v2, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$onValueChange:Lkotlin/jvm/functions/Function1;

    .line 442
    iget-boolean v12, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$enabled:Z

    move v4, v12

    .line 443
    iget-boolean v5, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$readOnly:Z

    .line 444
    iget-object v6, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$mergedTextStyle:Landroidx/compose/ui/text/TextStyle;

    .line 447
    iget-object v7, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$keyboardOptions:Landroidx/compose/foundation/text/KeyboardOptions;

    .line 448
    iget-object v8, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$keyboardActions:Landroidx/compose/foundation/text/KeyboardActions;

    .line 450
    iget-boolean v11, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$singleLine:Z

    move v9, v11

    .line 451
    iget v10, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$maxLines:I

    move/from16 v16, v11

    .line 452
    iget v11, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$minLines:I

    move/from16 v19, v16

    move-object/from16 p2, v1

    .line 446
    iget-object v1, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$visualTransformation:Landroidx/compose/ui/text/input/VisualTransformation;

    move/from16 v18, v12

    move-object v12, v1

    move-object/from16 v32, v2

    .line 449
    iget-object v2, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-object/from16 v17, v14

    move-object v14, v2

    move-object/from16 v33, v3

    .line 454
    new-instance v3, Landroidx/compose/material3/TextFieldKt$TextField$3$1;

    move/from16 v34, v4

    iget-boolean v4, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$isError:Z

    move/from16 v35, v5

    iget-object v5, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$label:Lkotlin/jvm/functions/Function2;

    move-object/from16 v36, v6

    iget-object v6, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$placeholder:Lkotlin/jvm/functions/Function2;

    move-object/from16 v37, v7

    iget-object v7, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$leadingIcon:Lkotlin/jvm/functions/Function2;

    move-object/from16 v38, v8

    iget-object v8, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$trailingIcon:Lkotlin/jvm/functions/Function2;

    move/from16 v39, v9

    iget-object v9, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$prefix:Lkotlin/jvm/functions/Function2;

    move/from16 v40, v10

    iget-object v10, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$suffix:Lkotlin/jvm/functions/Function2;

    move/from16 v41, v11

    iget-object v11, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$supportingText:Lkotlin/jvm/functions/Function2;

    move-object/from16 v42, v12

    iget-object v12, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$shape:Landroidx/compose/ui/graphics/Shape;

    iget-object v0, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$colors:Landroidx/compose/material3/TextFieldColors;

    move-object/from16 v16, v3

    move-object/from16 v20, v1

    move-object/from16 v21, v2

    move/from16 v22, v4

    move-object/from16 v23, v5

    move-object/from16 v24, v6

    move-object/from16 v25, v7

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-object/from16 v28, v10

    move-object/from16 v29, v11

    move-object/from16 v30, v12

    move-object/from16 v31, v0

    invoke-direct/range {v16 .. v31}, Landroidx/compose/material3/TextFieldKt$TextField$3$1;-><init>(Ljava/lang/String;ZZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/interaction/MutableInteractionSource;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;)V

    const/16 v0, 0x36

    const v1, -0x112dc373

    const/4 v2, 0x1

    invoke-static {v1, v2, v3, v13, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v16

    const/high16 v19, 0x30000

    const/16 v20, 0x1000

    const/4 v0, 0x0

    move-object v13, v0

    const/16 v18, 0x0

    move-object/from16 v17, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    move/from16 v4, v34

    move/from16 v5, v35

    move-object/from16 v6, v36

    move-object/from16 v7, v37

    move-object/from16 v8, v38

    move/from16 v9, v39

    move/from16 v10, v40

    move/from16 v11, v41

    move-object/from16 v12, v42

    .line 432
    invoke-static/range {v1 .. v20}, Landroidx/compose/foundation/text/BasicTextFieldKt;->BasicTextField(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    :goto_1
    return-void
.end method
