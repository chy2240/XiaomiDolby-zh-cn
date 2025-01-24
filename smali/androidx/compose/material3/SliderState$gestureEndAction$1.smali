.class final Landroidx/compose/material3/SliderState$gestureEndAction$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Slider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Landroidx/compose/material3/SliderState;


# direct methods
.method constructor <init>(Landroidx/compose/material3/SliderState;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/material3/SliderState$gestureEndAction$1;->this$0:Landroidx/compose/material3/SliderState;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 2012
    invoke-virtual {p0}, Landroidx/compose/material3/SliderState$gestureEndAction$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 1

    .line 2013
    iget-object v0, p0, Landroidx/compose/material3/SliderState$gestureEndAction$1;->this$0:Landroidx/compose/material3/SliderState;

    invoke-virtual {v0}, Landroidx/compose/material3/SliderState;->isDragging$material3_release()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2015
    iget-object p0, p0, Landroidx/compose/material3/SliderState$gestureEndAction$1;->this$0:Landroidx/compose/material3/SliderState;

    invoke-virtual {p0}, Landroidx/compose/material3/SliderState;->getOnValueChangeFinished()Lkotlin/jvm/functions/Function0;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method
