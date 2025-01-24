.class final Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$4;
.super Lkotlin/jvm/internal/Lambda;
.source "TextFieldImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic $$changed:I

.field final synthetic $$changed1:I

.field final synthetic $colors:Landroidx/compose/material3/TextFieldColors;

.field final synthetic $container:Lkotlin/jvm/functions/Function2;

.field final synthetic $contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

.field final synthetic $enabled:Z

.field final synthetic $innerTextField:Lkotlin/jvm/functions/Function2;

.field final synthetic $interactionSource:Landroidx/compose/foundation/interaction/InteractionSource;

.field final synthetic $isError:Z

.field final synthetic $label:Lkotlin/jvm/functions/Function3;

.field final synthetic $labelPosition:Landroidx/compose/material3/TextFieldLabelPosition;

.field final synthetic $leadingIcon:Lkotlin/jvm/functions/Function2;

.field final synthetic $placeholder:Lkotlin/jvm/functions/Function2;

.field final synthetic $prefix:Lkotlin/jvm/functions/Function2;

.field final synthetic $singleLine:Z

.field final synthetic $suffix:Lkotlin/jvm/functions/Function2;

.field final synthetic $supportingText:Lkotlin/jvm/functions/Function2;

.field final synthetic $trailingIcon:Lkotlin/jvm/functions/Function2;

.field final synthetic $type:Landroidx/compose/material3/internal/TextFieldType;

.field final synthetic $visualText:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Landroidx/compose/material3/internal/TextFieldType;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/TextFieldLabelPosition;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/material3/TextFieldColors;Lkotlin/jvm/functions/Function2;II)V
    .locals 2

    .line 0
    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$4;->$type:Landroidx/compose/material3/internal/TextFieldType;

    move-object v1, p2

    iput-object v1, v0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$4;->$visualText:Ljava/lang/CharSequence;

    move-object v1, p3

    iput-object v1, v0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$4;->$innerTextField:Lkotlin/jvm/functions/Function2;

    move-object v1, p4

    iput-object v1, v0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$4;->$labelPosition:Landroidx/compose/material3/TextFieldLabelPosition;

    move-object v1, p5

    iput-object v1, v0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$4;->$label:Lkotlin/jvm/functions/Function3;

    move-object v1, p6

    iput-object v1, v0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$4;->$placeholder:Lkotlin/jvm/functions/Function2;

    move-object v1, p7

    iput-object v1, v0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$4;->$leadingIcon:Lkotlin/jvm/functions/Function2;

    move-object v1, p8

    iput-object v1, v0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$4;->$trailingIcon:Lkotlin/jvm/functions/Function2;

    move-object v1, p9

    iput-object v1, v0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$4;->$prefix:Lkotlin/jvm/functions/Function2;

    move-object v1, p10

    iput-object v1, v0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$4;->$suffix:Lkotlin/jvm/functions/Function2;

    move-object v1, p11

    iput-object v1, v0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$4;->$supportingText:Lkotlin/jvm/functions/Function2;

    move v1, p12

    iput-boolean v1, v0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$4;->$singleLine:Z

    move v1, p13

    iput-boolean v1, v0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$4;->$enabled:Z

    move/from16 v1, p14

    iput-boolean v1, v0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$4;->$isError:Z

    move-object/from16 v1, p15

    iput-object v1, v0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$4;->$interactionSource:Landroidx/compose/foundation/interaction/InteractionSource;

    move-object/from16 v1, p16

    iput-object v1, v0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$4;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    move-object/from16 v1, p17

    iput-object v1, v0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$4;->$colors:Landroidx/compose/material3/TextFieldColors;

    move-object/from16 v1, p18

    iput-object v1, v0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$4;->$container:Lkotlin/jvm/functions/Function2;

    move/from16 v1, p19

    iput v1, v0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$4;->$$changed:I

    move/from16 v1, p20

    iput v1, v0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$4;->$$changed1:I

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$4;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 22

    .line 0
    move-object/from16 v0, p0

    move-object/from16 v19, p1

    iget-object v1, v0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$4;->$type:Landroidx/compose/material3/internal/TextFieldType;

    iget-object v2, v0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$4;->$visualText:Ljava/lang/CharSequence;

    iget-object v3, v0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$4;->$innerTextField:Lkotlin/jvm/functions/Function2;

    iget-object v4, v0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$4;->$labelPosition:Landroidx/compose/material3/TextFieldLabelPosition;

    iget-object v5, v0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$4;->$label:Lkotlin/jvm/functions/Function3;

    iget-object v6, v0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$4;->$placeholder:Lkotlin/jvm/functions/Function2;

    iget-object v7, v0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$4;->$leadingIcon:Lkotlin/jvm/functions/Function2;

    iget-object v8, v0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$4;->$trailingIcon:Lkotlin/jvm/functions/Function2;

    iget-object v9, v0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$4;->$prefix:Lkotlin/jvm/functions/Function2;

    iget-object v10, v0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$4;->$suffix:Lkotlin/jvm/functions/Function2;

    iget-object v11, v0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$4;->$supportingText:Lkotlin/jvm/functions/Function2;

    iget-boolean v12, v0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$4;->$singleLine:Z

    iget-boolean v13, v0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$4;->$enabled:Z

    iget-boolean v14, v0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$4;->$isError:Z

    iget-object v15, v0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$4;->$interactionSource:Landroidx/compose/foundation/interaction/InteractionSource;

    move-object/from16 p1, v1

    iget-object v1, v0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$4;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    move-object/from16 v16, v1

    iget-object v1, v0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$4;->$colors:Landroidx/compose/material3/TextFieldColors;

    move-object/from16 v17, v1

    iget-object v1, v0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$4;->$container:Lkotlin/jvm/functions/Function2;

    move-object/from16 v18, v1

    iget v1, v0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$4;->$$changed:I

    or-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v20

    iget v0, v0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$4;->$$changed1:I

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v21

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v21}, Landroidx/compose/material3/internal/TextFieldImplKt;->CommonDecorationBox(Landroidx/compose/material3/internal/TextFieldType;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/TextFieldLabelPosition;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/material3/TextFieldColors;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    return-void
.end method
