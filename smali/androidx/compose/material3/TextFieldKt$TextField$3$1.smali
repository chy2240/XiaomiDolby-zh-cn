.class final Landroidx/compose/material3/TextFieldKt$TextField$3$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TextField.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field final synthetic $colors:Landroidx/compose/material3/TextFieldColors;

.field final synthetic $enabled:Z

.field final synthetic $interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field final synthetic $isError:Z

.field final synthetic $label:Lkotlin/jvm/functions/Function2;

.field final synthetic $leadingIcon:Lkotlin/jvm/functions/Function2;

.field final synthetic $placeholder:Lkotlin/jvm/functions/Function2;

.field final synthetic $prefix:Lkotlin/jvm/functions/Function2;

.field final synthetic $shape:Landroidx/compose/ui/graphics/Shape;

.field final synthetic $singleLine:Z

.field final synthetic $suffix:Lkotlin/jvm/functions/Function2;

.field final synthetic $supportingText:Lkotlin/jvm/functions/Function2;

.field final synthetic $trailingIcon:Lkotlin/jvm/functions/Function2;

.field final synthetic $value:Ljava/lang/String;

.field final synthetic $visualTransformation:Landroidx/compose/ui/text/input/VisualTransformation;


# direct methods
.method constructor <init>(Ljava/lang/String;ZZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/interaction/MutableInteractionSource;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/material3/TextFieldKt$TextField$3$1;->$value:Ljava/lang/String;

    iput-boolean p2, p0, Landroidx/compose/material3/TextFieldKt$TextField$3$1;->$enabled:Z

    iput-boolean p3, p0, Landroidx/compose/material3/TextFieldKt$TextField$3$1;->$singleLine:Z

    iput-object p4, p0, Landroidx/compose/material3/TextFieldKt$TextField$3$1;->$visualTransformation:Landroidx/compose/ui/text/input/VisualTransformation;

    iput-object p5, p0, Landroidx/compose/material3/TextFieldKt$TextField$3$1;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-boolean p6, p0, Landroidx/compose/material3/TextFieldKt$TextField$3$1;->$isError:Z

    iput-object p7, p0, Landroidx/compose/material3/TextFieldKt$TextField$3$1;->$label:Lkotlin/jvm/functions/Function2;

    iput-object p8, p0, Landroidx/compose/material3/TextFieldKt$TextField$3$1;->$placeholder:Lkotlin/jvm/functions/Function2;

    iput-object p9, p0, Landroidx/compose/material3/TextFieldKt$TextField$3$1;->$leadingIcon:Lkotlin/jvm/functions/Function2;

    iput-object p10, p0, Landroidx/compose/material3/TextFieldKt$TextField$3$1;->$trailingIcon:Lkotlin/jvm/functions/Function2;

    iput-object p11, p0, Landroidx/compose/material3/TextFieldKt$TextField$3$1;->$prefix:Lkotlin/jvm/functions/Function2;

    iput-object p12, p0, Landroidx/compose/material3/TextFieldKt$TextField$3$1;->$suffix:Lkotlin/jvm/functions/Function2;

    iput-object p13, p0, Landroidx/compose/material3/TextFieldKt$TextField$3$1;->$supportingText:Lkotlin/jvm/functions/Function2;

    iput-object p14, p0, Landroidx/compose/material3/TextFieldKt$TextField$3$1;->$shape:Landroidx/compose/ui/graphics/Shape;

    iput-object p15, p0, Landroidx/compose/material3/TextFieldKt$TextField$3$1;->$colors:Landroidx/compose/material3/TextFieldColors;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 454
    check-cast p1, Lkotlin/jvm/functions/Function2;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/material3/TextFieldKt$TextField$3$1;->invoke(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 25

    move-object/from16 v0, p0

    and-int/lit8 v1, p3, 0x6

    if-nez v1, :cond_1

    move-object/from16 v1, p1

    move-object/from16 v4, p2

    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int v2, p3, v2

    move v15, v2

    goto :goto_1

    :cond_1
    move-object/from16 v1, p1

    move-object/from16 v4, p2

    move/from16 v15, p3

    :goto_1
    and-int/lit8 v2, v15, 0x13

    const/16 v3, 0x12

    if-ne v2, v3, :cond_3

    .line 456
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    .line 473
    :cond_2
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_3

    .line 456
    :cond_3
    :goto_2
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, -0x1

    const-string v3, "androidx.compose.material3.TextField.<anonymous>.<anonymous> (TextField.kt:455)"

    const v5, -0x112dc373

    invoke-static {v5, v15, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_4
    sget-object v2, Landroidx/compose/material3/TextFieldDefaults;->INSTANCE:Landroidx/compose/material3/TextFieldDefaults;

    .line 457
    iget-object v3, v0, Landroidx/compose/material3/TextFieldKt$TextField$3$1;->$value:Ljava/lang/String;

    .line 469
    iget-boolean v5, v0, Landroidx/compose/material3/TextFieldKt$TextField$3$1;->$enabled:Z

    .line 468
    iget-boolean v6, v0, Landroidx/compose/material3/TextFieldKt$TextField$3$1;->$singleLine:Z

    .line 458
    iget-object v7, v0, Landroidx/compose/material3/TextFieldKt$TextField$3$1;->$visualTransformation:Landroidx/compose/ui/text/input/VisualTransformation;

    .line 471
    iget-object v8, v0, Landroidx/compose/material3/TextFieldKt$TextField$3$1;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 470
    iget-boolean v9, v0, Landroidx/compose/material3/TextFieldKt$TextField$3$1;->$isError:Z

    .line 461
    iget-object v10, v0, Landroidx/compose/material3/TextFieldKt$TextField$3$1;->$label:Lkotlin/jvm/functions/Function2;

    .line 460
    iget-object v11, v0, Landroidx/compose/material3/TextFieldKt$TextField$3$1;->$placeholder:Lkotlin/jvm/functions/Function2;

    .line 462
    iget-object v12, v0, Landroidx/compose/material3/TextFieldKt$TextField$3$1;->$leadingIcon:Lkotlin/jvm/functions/Function2;

    .line 463
    iget-object v13, v0, Landroidx/compose/material3/TextFieldKt$TextField$3$1;->$trailingIcon:Lkotlin/jvm/functions/Function2;

    .line 464
    iget-object v14, v0, Landroidx/compose/material3/TextFieldKt$TextField$3$1;->$prefix:Lkotlin/jvm/functions/Function2;

    .line 465
    iget-object v1, v0, Landroidx/compose/material3/TextFieldKt$TextField$3$1;->$suffix:Lkotlin/jvm/functions/Function2;

    move/from16 v19, v15

    move-object v15, v1

    .line 466
    iget-object v1, v0, Landroidx/compose/material3/TextFieldKt$TextField$3$1;->$supportingText:Lkotlin/jvm/functions/Function2;

    move-object/from16 v16, v1

    .line 467
    iget-object v1, v0, Landroidx/compose/material3/TextFieldKt$TextField$3$1;->$shape:Landroidx/compose/ui/graphics/Shape;

    move-object/from16 v17, v1

    .line 472
    iget-object v0, v0, Landroidx/compose/material3/TextFieldKt$TextField$3$1;->$colors:Landroidx/compose/material3/TextFieldColors;

    move-object/from16 v18, v0

    shl-int/lit8 v0, v19, 0x3

    and-int/lit8 v22, v0, 0x70

    const/high16 v23, 0x6000000

    const/high16 v24, 0x30000

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v4, p1

    move-object/from16 v21, p2

    .line 456
    invoke-virtual/range {v2 .. v24}, Landroidx/compose/material3/TextFieldDefaults;->DecorationBox(Ljava/lang/String;Lkotlin/jvm/functions/Function2;ZZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/interaction/InteractionSource;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_5
    :goto_3
    return-void
.end method
