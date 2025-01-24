.class final Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$3;
.super Lkotlin/jvm/internal/Lambda;
.source "OutlinedTextField.kt"

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
.method constructor <init>(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/TextFieldColors;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ZZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;)V
    .locals 2

    .line 0
    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$3;->$modifier:Landroidx/compose/ui/Modifier;

    move-object v1, p2

    iput-object v1, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$3;->$label:Lkotlin/jvm/functions/Function2;

    move v1, p3

    iput-boolean v1, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$3;->$isError:Z

    move-object v1, p4

    iput-object v1, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$3;->$colors:Landroidx/compose/material3/TextFieldColors;

    move-object v1, p5

    iput-object v1, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$3;->$value:Ljava/lang/String;

    move-object v1, p6

    iput-object v1, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$3;->$onValueChange:Lkotlin/jvm/functions/Function1;

    move v1, p7

    iput-boolean v1, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$3;->$enabled:Z

    move v1, p8

    iput-boolean v1, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$3;->$readOnly:Z

    move-object v1, p9

    iput-object v1, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$3;->$mergedTextStyle:Landroidx/compose/ui/text/TextStyle;

    move-object v1, p10

    iput-object v1, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$3;->$keyboardOptions:Landroidx/compose/foundation/text/KeyboardOptions;

    move-object v1, p11

    iput-object v1, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$3;->$keyboardActions:Landroidx/compose/foundation/text/KeyboardActions;

    move v1, p12

    iput-boolean v1, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$3;->$singleLine:Z

    move v1, p13

    iput v1, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$3;->$maxLines:I

    move/from16 v1, p14

    iput v1, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$3;->$minLines:I

    move-object/from16 v1, p15

    iput-object v1, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$3;->$visualTransformation:Landroidx/compose/ui/text/input/VisualTransformation;

    move-object/from16 v1, p16

    iput-object v1, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$3;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-object/from16 v1, p17

    iput-object v1, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$3;->$placeholder:Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, p18

    iput-object v1, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$3;->$leadingIcon:Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, p19

    iput-object v1, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$3;->$trailingIcon:Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, p20

    iput-object v1, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$3;->$prefix:Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, p21

    iput-object v1, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$3;->$suffix:Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, p22

    iput-object v1, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$3;->$supportingText:Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, p23

    iput-object v1, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$3;->$shape:Landroidx/compose/ui/graphics/Shape;

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 401
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$3;->invoke(Landroidx/compose/runtime/Composer;I)V

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

    .line 402
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 463
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_2

    .line 402
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, -0x1

    const-string v3, "androidx.compose.material3.OutlinedTextField.<anonymous> (OutlinedTextField.kt:401)"

    const v4, -0x7078cdbd

    invoke-static {v4, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 405
    :cond_2
    iget-object v1, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$3;->$modifier:Landroidx/compose/ui/Modifier;

    const v2, -0x38a1d2d9

    invoke-interface {v13, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 407
    iget-object v2, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$3;->$label:Lkotlin/jvm/functions/Function2;

    const/4 v3, 0x0

    const/4 v14, 0x1

    if-eqz v2, :cond_3

    .line 408
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 411
    sget-object v4, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$3$1;->INSTANCE:Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$3$1;

    invoke-static {v2, v14, v4}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    .line 412
    invoke-static {v13, v3}, Landroidx/compose/material3/internal/TextFieldImplKt;->minimizedLabelHalfHeight(Landroidx/compose/runtime/Composer;I)F

    move-result v7

    const/16 v10, 0xd

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v5 .. v11}, Landroidx/compose/foundation/layout/PaddingKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    goto :goto_1

    .line 414
    :cond_3
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 407
    :goto_1
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 406
    invoke-interface {v1, v2}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 417
    iget-boolean v2, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$3;->$isError:Z

    sget-object v4, Landroidx/compose/material3/internal/Strings;->Companion:Landroidx/compose/material3/internal/Strings$Companion;

    .line 51
    sget v4, Landroidx/compose/ui/R$string;->default_error_message:I

    invoke-static {v4}, Landroidx/compose/material3/internal/Strings;->constructor-impl(I)I

    move-result v4

    .line 417
    invoke-static {v4, v13, v3}, Landroidx/compose/material3/internal/Strings_androidKt;->getString-2EP1pXo(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroidx/compose/material3/internal/TextFieldImplKt;->defaultErrorSemantics(Landroidx/compose/ui/Modifier;ZLjava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 419
    sget-object v2, Landroidx/compose/material3/OutlinedTextFieldDefaults;->INSTANCE:Landroidx/compose/material3/OutlinedTextFieldDefaults;

    invoke-virtual {v2}, Landroidx/compose/material3/OutlinedTextFieldDefaults;->getMinWidth-D9Ej5fM()F

    move-result v3

    .line 420
    invoke-virtual {v2}, Landroidx/compose/material3/OutlinedTextFieldDefaults;->getMinHeight-D9Ej5fM()F

    move-result v2

    .line 418
    invoke-static {v1, v3, v2}, Landroidx/compose/foundation/layout/SizeKt;->defaultMinSize-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 426
    new-instance v1, Landroidx/compose/ui/graphics/SolidColor;

    move-object v15, v1

    iget-object v2, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$3;->$colors:Landroidx/compose/material3/TextFieldColors;

    iget-boolean v4, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$3;->$isError:Z

    invoke-virtual {v2, v4}, Landroidx/compose/material3/TextFieldColors;->cursorColor-vNxB06k$material3_release(Z)J

    move-result-wide v4

    const/4 v2, 0x0

    invoke-direct {v1, v4, v5, v2}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 403
    iget-object v12, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$3;->$value:Ljava/lang/String;

    move-object v1, v12

    .line 422
    iget-object v2, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$3;->$onValueChange:Lkotlin/jvm/functions/Function1;

    .line 423
    iget-boolean v11, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$3;->$enabled:Z

    move v4, v11

    .line 424
    iget-boolean v5, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$3;->$readOnly:Z

    .line 425
    iget-object v6, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$3;->$mergedTextStyle:Landroidx/compose/ui/text/TextStyle;

    .line 428
    iget-object v7, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$3;->$keyboardOptions:Landroidx/compose/foundation/text/KeyboardOptions;

    .line 429
    iget-object v8, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$3;->$keyboardActions:Landroidx/compose/foundation/text/KeyboardActions;

    .line 431
    iget-boolean v10, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$3;->$singleLine:Z

    move v9, v10

    .line 432
    iget v14, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$3;->$maxLines:I

    move/from16 v19, v10

    move v10, v14

    .line 433
    iget v14, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$3;->$minLines:I

    move/from16 v18, v11

    move v11, v14

    .line 427
    iget-object v14, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$3;->$visualTransformation:Landroidx/compose/ui/text/input/VisualTransformation;

    move-object/from16 v17, v12

    move-object v12, v14

    move-object/from16 v32, v1

    .line 430
    iget-object v1, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$3;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-object/from16 v33, v2

    move-object/from16 v20, v14

    const/4 v2, 0x1

    move-object v14, v1

    .line 435
    new-instance v2, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$3$2;

    move-object/from16 v34, v3

    iget-boolean v3, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$3;->$isError:Z

    move/from16 v35, v4

    iget-object v4, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$3;->$label:Lkotlin/jvm/functions/Function2;

    move/from16 v36, v5

    iget-object v5, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$3;->$placeholder:Lkotlin/jvm/functions/Function2;

    move-object/from16 v37, v6

    iget-object v6, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$3;->$leadingIcon:Lkotlin/jvm/functions/Function2;

    move-object/from16 v38, v7

    iget-object v7, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$3;->$trailingIcon:Lkotlin/jvm/functions/Function2;

    move-object/from16 v39, v8

    iget-object v8, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$3;->$prefix:Lkotlin/jvm/functions/Function2;

    move/from16 v40, v9

    iget-object v9, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$3;->$suffix:Lkotlin/jvm/functions/Function2;

    move/from16 v41, v10

    iget-object v10, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$3;->$supportingText:Lkotlin/jvm/functions/Function2;

    move/from16 v42, v11

    iget-object v11, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$3;->$colors:Landroidx/compose/material3/TextFieldColors;

    iget-object v0, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$3;->$shape:Landroidx/compose/ui/graphics/Shape;

    move-object/from16 v16, v2

    move-object/from16 v21, v1

    move/from16 v22, v3

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    move-object/from16 v25, v6

    move-object/from16 v26, v7

    move-object/from16 v27, v8

    move-object/from16 v28, v9

    move-object/from16 v29, v10

    move-object/from16 v30, v11

    move-object/from16 v31, v0

    invoke-direct/range {v16 .. v31}, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$3$2;-><init>(Ljava/lang/String;ZZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/interaction/MutableInteractionSource;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/ui/graphics/Shape;)V

    const/16 v0, 0x36

    const v1, 0x57e4c9cd

    const/4 v3, 0x1

    invoke-static {v1, v3, v2, v13, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v16

    const/high16 v19, 0x30000

    const/16 v20, 0x1000

    const/4 v0, 0x0

    move-object v13, v0

    const/16 v18, 0x0

    move-object/from16 v17, p1

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    move/from16 v4, v35

    move/from16 v5, v36

    move-object/from16 v6, v37

    move-object/from16 v7, v38

    move-object/from16 v8, v39

    move/from16 v9, v40

    move/from16 v10, v41

    move/from16 v11, v42

    .line 402
    invoke-static/range {v1 .. v20}, Landroidx/compose/foundation/text/BasicTextFieldKt;->BasicTextField(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_4
    :goto_2
    return-void
.end method
