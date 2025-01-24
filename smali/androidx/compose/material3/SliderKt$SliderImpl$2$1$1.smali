.class final Landroidx/compose/material3/SliderKt$SliderImpl$2$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Slider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $thumbOffsetX:I

.field final synthetic $thumbOffsetY:I

.field final synthetic $thumbPlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $trackOffsetX:I

.field final synthetic $trackOffsetY:I

.field final synthetic $trackPlaceable:Landroidx/compose/ui/layout/Placeable;


# direct methods
.method constructor <init>(Landroidx/compose/ui/layout/Placeable;IILandroidx/compose/ui/layout/Placeable;II)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/material3/SliderKt$SliderImpl$2$1$1;->$trackPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput p2, p0, Landroidx/compose/material3/SliderKt$SliderImpl$2$1$1;->$trackOffsetX:I

    iput p3, p0, Landroidx/compose/material3/SliderKt$SliderImpl$2$1$1;->$trackOffsetY:I

    iput-object p4, p0, Landroidx/compose/material3/SliderKt$SliderImpl$2$1$1;->$thumbPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput p5, p0, Landroidx/compose/material3/SliderKt$SliderImpl$2$1$1;->$thumbOffsetX:I

    iput p6, p0, Landroidx/compose/material3/SliderKt$SliderImpl$2$1$1;->$thumbOffsetY:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 713
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/SliderKt$SliderImpl$2$1$1;->invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V
    .locals 14

    .line 714
    iget-object v1, p0, Landroidx/compose/material3/SliderKt$SliderImpl$2$1$1;->$trackPlaceable:Landroidx/compose/ui/layout/Placeable;

    iget v2, p0, Landroidx/compose/material3/SliderKt$SliderImpl$2$1$1;->$trackOffsetX:I

    iget v3, p0, Landroidx/compose/material3/SliderKt$SliderImpl$2$1$1;->$trackOffsetY:I

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 715
    iget-object v8, p0, Landroidx/compose/material3/SliderKt$SliderImpl$2$1$1;->$thumbPlaceable:Landroidx/compose/ui/layout/Placeable;

    iget v9, p0, Landroidx/compose/material3/SliderKt$SliderImpl$2$1$1;->$thumbOffsetX:I

    iget v10, p0, Landroidx/compose/material3/SliderKt$SliderImpl$2$1$1;->$thumbOffsetY:I

    const/4 v12, 0x4

    const/4 v13, 0x0

    const/4 v11, 0x0

    move-object v7, p1

    invoke-static/range {v7 .. v13}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    return-void
.end method
