.class final Landroidx/compose/material3/SliderKt$Slider$8;
.super Lkotlin/jvm/internal/Lambda;
.source "Slider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic $$changed:I

.field final synthetic $$changed1:I

.field final synthetic $$default:I

.field final synthetic $colors:Landroidx/compose/material3/SliderColors;

.field final synthetic $enabled:Z

.field final synthetic $interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $onValueChange:Lkotlin/jvm/functions/Function1;

.field final synthetic $onValueChangeFinished:Lkotlin/jvm/functions/Function0;

.field final synthetic $steps:I

.field final synthetic $thumb:Lkotlin/jvm/functions/Function3;

.field final synthetic $track:Lkotlin/jvm/functions/Function3;

.field final synthetic $value:F

.field final synthetic $valueRange:Lkotlin/ranges/ClosedFloatingPointRange;


# direct methods
.method constructor <init>(FLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function0;Landroidx/compose/material3/SliderColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;ILkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/ranges/ClosedFloatingPointRange;III)V
    .locals 0

    .line 0
    iput p1, p0, Landroidx/compose/material3/SliderKt$Slider$8;->$value:F

    iput-object p2, p0, Landroidx/compose/material3/SliderKt$Slider$8;->$onValueChange:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Landroidx/compose/material3/SliderKt$Slider$8;->$modifier:Landroidx/compose/ui/Modifier;

    iput-boolean p4, p0, Landroidx/compose/material3/SliderKt$Slider$8;->$enabled:Z

    iput-object p5, p0, Landroidx/compose/material3/SliderKt$Slider$8;->$onValueChangeFinished:Lkotlin/jvm/functions/Function0;

    iput-object p6, p0, Landroidx/compose/material3/SliderKt$Slider$8;->$colors:Landroidx/compose/material3/SliderColors;

    iput-object p7, p0, Landroidx/compose/material3/SliderKt$Slider$8;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput p8, p0, Landroidx/compose/material3/SliderKt$Slider$8;->$steps:I

    iput-object p9, p0, Landroidx/compose/material3/SliderKt$Slider$8;->$thumb:Lkotlin/jvm/functions/Function3;

    iput-object p10, p0, Landroidx/compose/material3/SliderKt$Slider$8;->$track:Lkotlin/jvm/functions/Function3;

    iput-object p11, p0, Landroidx/compose/material3/SliderKt$Slider$8;->$valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    iput p12, p0, Landroidx/compose/material3/SliderKt$Slider$8;->$$changed:I

    iput p13, p0, Landroidx/compose/material3/SliderKt$Slider$8;->$$changed1:I

    iput p14, p0, Landroidx/compose/material3/SliderKt$Slider$8;->$$default:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

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

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/SliderKt$Slider$8;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 15

    .line 0
    move-object v0, p0

    iget v1, v0, Landroidx/compose/material3/SliderKt$Slider$8;->$value:F

    iget-object v2, v0, Landroidx/compose/material3/SliderKt$Slider$8;->$onValueChange:Lkotlin/jvm/functions/Function1;

    iget-object v3, v0, Landroidx/compose/material3/SliderKt$Slider$8;->$modifier:Landroidx/compose/ui/Modifier;

    iget-boolean v4, v0, Landroidx/compose/material3/SliderKt$Slider$8;->$enabled:Z

    iget-object v5, v0, Landroidx/compose/material3/SliderKt$Slider$8;->$onValueChangeFinished:Lkotlin/jvm/functions/Function0;

    iget-object v6, v0, Landroidx/compose/material3/SliderKt$Slider$8;->$colors:Landroidx/compose/material3/SliderColors;

    iget-object v7, v0, Landroidx/compose/material3/SliderKt$Slider$8;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget v8, v0, Landroidx/compose/material3/SliderKt$Slider$8;->$steps:I

    iget-object v9, v0, Landroidx/compose/material3/SliderKt$Slider$8;->$thumb:Lkotlin/jvm/functions/Function3;

    iget-object v10, v0, Landroidx/compose/material3/SliderKt$Slider$8;->$track:Lkotlin/jvm/functions/Function3;

    iget-object v11, v0, Landroidx/compose/material3/SliderKt$Slider$8;->$valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    iget v12, v0, Landroidx/compose/material3/SliderKt$Slider$8;->$$changed:I

    or-int/lit8 v12, v12, 0x1

    invoke-static {v12}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v12

    iget v13, v0, Landroidx/compose/material3/SliderKt$Slider$8;->$$changed1:I

    invoke-static {v13}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v13

    iget v14, v0, Landroidx/compose/material3/SliderKt$Slider$8;->$$default:I

    move v0, v1

    move-object v1, v2

    move-object v2, v3

    move v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object/from16 v11, p1

    invoke-static/range {v0 .. v14}, Landroidx/compose/material3/SliderKt;->Slider(FLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function0;Landroidx/compose/material3/SliderColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;ILkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/ranges/ClosedFloatingPointRange;Landroidx/compose/runtime/Composer;III)V

    return-void
.end method
