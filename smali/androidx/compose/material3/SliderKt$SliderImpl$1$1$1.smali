.class final Landroidx/compose/material3/SliderKt$SliderImpl$1$1$1;
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
    iput-object p1, p0, Landroidx/compose/material3/SliderKt$SliderImpl$1$1$1;->$state:Landroidx/compose/material3/SliderState;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 678
    check-cast p1, Landroidx/compose/ui/unit/IntSize;

    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntSize;->unbox-impl()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/material3/SliderKt$SliderImpl$1$1$1;->invoke-ozmzZPI(J)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke-ozmzZPI(J)V
    .locals 0

    .line 679
    iget-object p0, p0, Landroidx/compose/material3/SliderKt$SliderImpl$1$1$1;->$state:Landroidx/compose/material3/SliderState;

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroidx/compose/material3/SliderState;->setThumbWidth$material3_release(F)V

    return-void
.end method
