.class final Landroidx/compose/material3/SliderKt$sliderTapModifier$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "Slider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $state:Landroidx/compose/material3/SliderState;


# direct methods
.method constructor <init>(Landroidx/compose/material3/SliderState;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/material3/SliderKt$sliderTapModifier$1$2;->$state:Landroidx/compose/material3/SliderState;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1622
    check-cast p1, Landroidx/compose/ui/geometry/Offset;

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/material3/SliderKt$sliderTapModifier$1$2;->invoke-k-4lQ0M(J)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke-k-4lQ0M(J)V
    .locals 0

    .line 1625
    iget-object p1, p0, Landroidx/compose/material3/SliderKt$sliderTapModifier$1$2;->$state:Landroidx/compose/material3/SliderState;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/compose/material3/SliderState;->dispatchRawDelta(F)V

    .line 1626
    iget-object p0, p0, Landroidx/compose/material3/SliderKt$sliderTapModifier$1$2;->$state:Landroidx/compose/material3/SliderState;

    invoke-virtual {p0}, Landroidx/compose/material3/SliderState;->getGestureEndAction$material3_release()Lkotlin/jvm/functions/Function0;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method
