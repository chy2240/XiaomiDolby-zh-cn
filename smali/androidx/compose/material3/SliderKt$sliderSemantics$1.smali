.class final Landroidx/compose/material3/SliderKt$sliderSemantics$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Slider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $enabled:Z

.field final synthetic $state:Landroidx/compose/material3/SliderState;


# direct methods
.method constructor <init>(ZLandroidx/compose/material3/SliderState;)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Landroidx/compose/material3/SliderKt$sliderSemantics$1;->$enabled:Z

    iput-object p2, p0, Landroidx/compose/material3/SliderKt$sliderSemantics$1;->$state:Landroidx/compose/material3/SliderState;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1443
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/SliderKt$sliderSemantics$1;->invoke(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V
    .locals 2

    .line 1444
    iget-boolean v0, p0, Landroidx/compose/material3/SliderKt$sliderSemantics$1;->$enabled:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->disabled(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V

    .line 1445
    :cond_0
    new-instance v0, Landroidx/compose/material3/SliderKt$sliderSemantics$1$1;

    iget-object p0, p0, Landroidx/compose/material3/SliderKt$sliderSemantics$1;->$state:Landroidx/compose/material3/SliderState;

    invoke-direct {v0, p0}, Landroidx/compose/material3/SliderKt$sliderSemantics$1$1;-><init>(Landroidx/compose/material3/SliderState;)V

    const/4 p0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, p0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setProgress$default(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method
