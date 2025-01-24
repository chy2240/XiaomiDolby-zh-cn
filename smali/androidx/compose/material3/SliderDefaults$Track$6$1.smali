.class final Landroidx/compose/material3/SliderDefaults$Track$6$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Slider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $activeTickColor:J

.field final synthetic $activeTrackColor:J

.field final synthetic $drawStopIndicator:Lkotlin/jvm/functions/Function2;

.field final synthetic $drawTick:Lkotlin/jvm/functions/Function3;

.field final synthetic $inactiveTickColor:J

.field final synthetic $inactiveTrackColor:J

.field final synthetic $sliderState:Landroidx/compose/material3/SliderState;

.field final synthetic $thumbTrackGapSize:F

.field final synthetic $trackInsideCornerSize:F


# direct methods
.method constructor <init>(Landroidx/compose/material3/SliderState;JJJJFFLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/material3/SliderDefaults$Track$6$1;->$sliderState:Landroidx/compose/material3/SliderState;

    iput-wide p2, p0, Landroidx/compose/material3/SliderDefaults$Track$6$1;->$inactiveTrackColor:J

    iput-wide p4, p0, Landroidx/compose/material3/SliderDefaults$Track$6$1;->$activeTrackColor:J

    iput-wide p6, p0, Landroidx/compose/material3/SliderDefaults$Track$6$1;->$inactiveTickColor:J

    iput-wide p8, p0, Landroidx/compose/material3/SliderDefaults$Track$6$1;->$activeTickColor:J

    iput p10, p0, Landroidx/compose/material3/SliderDefaults$Track$6$1;->$thumbTrackGapSize:F

    iput p11, p0, Landroidx/compose/material3/SliderDefaults$Track$6$1;->$trackInsideCornerSize:F

    iput-object p12, p0, Landroidx/compose/material3/SliderDefaults$Track$6$1;->$drawStopIndicator:Lkotlin/jvm/functions/Function2;

    iput-object p13, p0, Landroidx/compose/material3/SliderDefaults$Track$6$1;->$drawTick:Lkotlin/jvm/functions/Function3;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1134
    check-cast p1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/SliderDefaults$Track$6$1;->invoke(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move-object/from16 v2, p1

    .line 1135
    sget-object v1, Landroidx/compose/material3/SliderDefaults;->INSTANCE:Landroidx/compose/material3/SliderDefaults;

    .line 1136
    iget-object v3, v0, Landroidx/compose/material3/SliderDefaults$Track$6$1;->$sliderState:Landroidx/compose/material3/SliderState;

    invoke-virtual {v3}, Landroidx/compose/material3/SliderState;->getTickFractions$material3_release()[F

    move-result-object v3

    .line 1138
    iget-object v5, v0, Landroidx/compose/material3/SliderDefaults$Track$6$1;->$sliderState:Landroidx/compose/material3/SliderState;

    invoke-virtual {v5}, Landroidx/compose/material3/SliderState;->getCoercedValueAsFraction$material3_release()F

    move-result v5

    .line 1139
    iget-wide v6, v0, Landroidx/compose/material3/SliderDefaults$Track$6$1;->$inactiveTrackColor:J

    .line 1140
    iget-wide v8, v0, Landroidx/compose/material3/SliderDefaults$Track$6$1;->$activeTrackColor:J

    .line 1141
    iget-wide v10, v0, Landroidx/compose/material3/SliderDefaults$Track$6$1;->$inactiveTickColor:J

    .line 1142
    iget-wide v12, v0, Landroidx/compose/material3/SliderDefaults$Track$6$1;->$activeTickColor:J

    .line 1143
    iget-object v14, v0, Landroidx/compose/material3/SliderDefaults$Track$6$1;->$sliderState:Landroidx/compose/material3/SliderState;

    invoke-virtual {v14}, Landroidx/compose/material3/SliderState;->getTrackHeight$material3_release()F

    move-result v14

    invoke-interface {v4, v14}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(F)F

    move-result v14

    const/4 v15, 0x0

    .line 1144
    invoke-interface {v4, v15}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(I)F

    move-result v15

    move-object/from16 v22, v1

    .line 1145
    iget-object v1, v0, Landroidx/compose/material3/SliderDefaults$Track$6$1;->$sliderState:Landroidx/compose/material3/SliderState;

    invoke-virtual {v1}, Landroidx/compose/material3/SliderState;->getThumbWidth$material3_release()F

    move-result v1

    invoke-interface {v4, v1}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(F)F

    move-result v16

    .line 1146
    iget v1, v0, Landroidx/compose/material3/SliderDefaults$Track$6$1;->$thumbTrackGapSize:F

    move/from16 v17, v1

    .line 1147
    iget v1, v0, Landroidx/compose/material3/SliderDefaults$Track$6$1;->$trackInsideCornerSize:F

    move/from16 v18, v1

    .line 1148
    iget-object v1, v0, Landroidx/compose/material3/SliderDefaults$Track$6$1;->$drawStopIndicator:Lkotlin/jvm/functions/Function2;

    move-object/from16 v19, v1

    .line 1149
    iget-object v0, v0, Landroidx/compose/material3/SliderDefaults$Track$6$1;->$drawTick:Lkotlin/jvm/functions/Function3;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, v22

    .line 1135
    invoke-static/range {v1 .. v21}, Landroidx/compose/material3/SliderDefaults;->access$drawTrack-ngJ0SCU(Landroidx/compose/material3/SliderDefaults;Landroidx/compose/ui/graphics/drawscope/DrawScope;[FFFJJJJFFFFFLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Z)V

    return-void
.end method
