.class final Landroidx/compose/material3/SliderDefaults$Track$5;
.super Lkotlin/jvm/internal/Lambda;
.source "Slider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# static fields
.field public static final INSTANCE:Landroidx/compose/material3/SliderDefaults$Track$5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/material3/SliderDefaults$Track$5;

    invoke-direct {v0}, Landroidx/compose/material3/SliderDefaults$Track$5;-><init>()V

    sput-object v0, Landroidx/compose/material3/SliderDefaults$Track$5;->INSTANCE:Landroidx/compose/material3/SliderDefaults$Track$5;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 0
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1119
    move-object v1, p1

    check-cast v1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    check-cast p2, Landroidx/compose/ui/geometry/Offset;

    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v2

    check-cast p3, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {p3}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroidx/compose/material3/SliderDefaults$Track$5;->invoke-wPWG1Vc(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJ)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke-wPWG1Vc(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJ)V
    .locals 7

    .line 1120
    sget-object v0, Landroidx/compose/material3/SliderDefaults;->INSTANCE:Landroidx/compose/material3/SliderDefaults;

    invoke-virtual {v0}, Landroidx/compose/material3/SliderDefaults;->getTickSize-D9Ej5fM()F

    move-result v4

    move-object v1, p1

    move-wide v2, p2

    move-wide v5, p4

    invoke-static/range {v0 .. v6}, Landroidx/compose/material3/SliderDefaults;->access$drawStopIndicator-x3O1jOs(Landroidx/compose/material3/SliderDefaults;Landroidx/compose/ui/graphics/drawscope/DrawScope;JFJ)V

    return-void
.end method
