.class final Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextFieldLayout$2;
.super Lkotlin/jvm/internal/Lambda;
.source "OutlinedTextField.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic $$changed:I

.field final synthetic $$changed1:I

.field final synthetic $container:Lkotlin/jvm/functions/Function2;

.field final synthetic $label:Lkotlin/jvm/functions/Function2;

.field final synthetic $labelPosition:Landroidx/compose/material3/TextFieldLabelPosition;

.field final synthetic $labelProgress:F

.field final synthetic $leading:Lkotlin/jvm/functions/Function2;

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $onLabelMeasured:Lkotlin/jvm/functions/Function1;

.field final synthetic $paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

.field final synthetic $placeholder:Lkotlin/jvm/functions/Function3;

.field final synthetic $prefix:Lkotlin/jvm/functions/Function2;

.field final synthetic $singleLine:Z

.field final synthetic $suffix:Lkotlin/jvm/functions/Function2;

.field final synthetic $supporting:Lkotlin/jvm/functions/Function2;

.field final synthetic $textField:Lkotlin/jvm/functions/Function2;

.field final synthetic $trailing:Lkotlin/jvm/functions/Function2;


# direct methods
.method constructor <init>(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/TextFieldLabelPosition;FLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/PaddingValues;II)V
    .locals 2

    .line 0
    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextFieldLayout$2;->$modifier:Landroidx/compose/ui/Modifier;

    move-object v1, p2

    iput-object v1, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextFieldLayout$2;->$textField:Lkotlin/jvm/functions/Function2;

    move-object v1, p3

    iput-object v1, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextFieldLayout$2;->$placeholder:Lkotlin/jvm/functions/Function3;

    move-object v1, p4

    iput-object v1, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextFieldLayout$2;->$label:Lkotlin/jvm/functions/Function2;

    move-object v1, p5

    iput-object v1, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextFieldLayout$2;->$leading:Lkotlin/jvm/functions/Function2;

    move-object v1, p6

    iput-object v1, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextFieldLayout$2;->$trailing:Lkotlin/jvm/functions/Function2;

    move-object v1, p7

    iput-object v1, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextFieldLayout$2;->$prefix:Lkotlin/jvm/functions/Function2;

    move-object v1, p8

    iput-object v1, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextFieldLayout$2;->$suffix:Lkotlin/jvm/functions/Function2;

    move v1, p9

    iput-boolean v1, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextFieldLayout$2;->$singleLine:Z

    move-object v1, p10

    iput-object v1, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextFieldLayout$2;->$labelPosition:Landroidx/compose/material3/TextFieldLabelPosition;

    move v1, p11

    iput v1, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextFieldLayout$2;->$labelProgress:F

    move-object v1, p12

    iput-object v1, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextFieldLayout$2;->$onLabelMeasured:Lkotlin/jvm/functions/Function1;

    move-object v1, p13

    iput-object v1, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextFieldLayout$2;->$container:Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, p14

    iput-object v1, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextFieldLayout$2;->$supporting:Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, p15

    iput-object v1, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextFieldLayout$2;->$paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    move/from16 v1, p16

    iput v1, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextFieldLayout$2;->$$changed:I

    move/from16 v1, p17

    iput v1, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextFieldLayout$2;->$$changed1:I

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

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextFieldLayout$2;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 19

    .line 0
    move-object/from16 v0, p0

    move-object/from16 v16, p1

    iget-object v1, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextFieldLayout$2;->$modifier:Landroidx/compose/ui/Modifier;

    iget-object v2, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextFieldLayout$2;->$textField:Lkotlin/jvm/functions/Function2;

    iget-object v3, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextFieldLayout$2;->$placeholder:Lkotlin/jvm/functions/Function3;

    iget-object v4, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextFieldLayout$2;->$label:Lkotlin/jvm/functions/Function2;

    iget-object v5, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextFieldLayout$2;->$leading:Lkotlin/jvm/functions/Function2;

    iget-object v6, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextFieldLayout$2;->$trailing:Lkotlin/jvm/functions/Function2;

    iget-object v7, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextFieldLayout$2;->$prefix:Lkotlin/jvm/functions/Function2;

    iget-object v8, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextFieldLayout$2;->$suffix:Lkotlin/jvm/functions/Function2;

    iget-boolean v9, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextFieldLayout$2;->$singleLine:Z

    iget-object v10, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextFieldLayout$2;->$labelPosition:Landroidx/compose/material3/TextFieldLabelPosition;

    iget v11, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextFieldLayout$2;->$labelProgress:F

    iget-object v12, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextFieldLayout$2;->$onLabelMeasured:Lkotlin/jvm/functions/Function1;

    iget-object v13, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextFieldLayout$2;->$container:Lkotlin/jvm/functions/Function2;

    iget-object v14, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextFieldLayout$2;->$supporting:Lkotlin/jvm/functions/Function2;

    iget-object v15, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextFieldLayout$2;->$paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    move-object/from16 p1, v1

    iget v1, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextFieldLayout$2;->$$changed:I

    or-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v17

    iget v0, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextFieldLayout$2;->$$changed1:I

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v18

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v18}, Landroidx/compose/material3/OutlinedTextFieldKt;->OutlinedTextFieldLayout(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/TextFieldLabelPosition;FLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;II)V

    return-void
.end method
