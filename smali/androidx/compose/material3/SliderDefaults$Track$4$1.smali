.class final Landroidx/compose/material3/SliderDefaults$Track$4$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Slider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic $colors:Landroidx/compose/material3/SliderColors;

.field final synthetic $enabled:Z


# direct methods
.method constructor <init>(Landroidx/compose/material3/SliderColors;Z)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/material3/SliderDefaults$Track$4$1;->$colors:Landroidx/compose/material3/SliderColors;

    iput-boolean p2, p0, Landroidx/compose/material3/SliderDefaults$Track$4$1;->$enabled:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1111
    check-cast p1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    check-cast p2, Landroidx/compose/ui/geometry/Offset;

    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroidx/compose/material3/SliderDefaults$Track$4$1;->invoke-Uv8p0NA(Landroidx/compose/ui/graphics/drawscope/DrawScope;J)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke-Uv8p0NA(Landroidx/compose/ui/graphics/drawscope/DrawScope;J)V
    .locals 7

    .line 1112
    sget-object v0, Landroidx/compose/material3/SliderDefaults;->INSTANCE:Landroidx/compose/material3/SliderDefaults;

    .line 1115
    iget-object v1, p0, Landroidx/compose/material3/SliderDefaults$Track$4$1;->$colors:Landroidx/compose/material3/SliderColors;

    iget-boolean p0, p0, Landroidx/compose/material3/SliderDefaults$Track$4$1;->$enabled:Z

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Landroidx/compose/material3/SliderColors;->trackColor-WaAFU9c$material3_release(ZZ)J

    move-result-wide v5

    .line 1116
    invoke-virtual {v0}, Landroidx/compose/material3/SliderDefaults;->getTrackStopIndicatorSize-D9Ej5fM()F

    move-result v4

    move-object v1, p1

    move-wide v2, p2

    .line 1112
    invoke-static/range {v0 .. v6}, Landroidx/compose/material3/SliderDefaults;->access$drawStopIndicator-x3O1jOs(Landroidx/compose/material3/SliderDefaults;Landroidx/compose/ui/graphics/drawscope/DrawScope;JFJ)V

    return-void
.end method
