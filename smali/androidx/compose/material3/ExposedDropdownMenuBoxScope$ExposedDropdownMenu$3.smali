.class final Landroidx/compose/material3/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$3;
.super Lkotlin/jvm/internal/Lambda;
.source "ExposedDropdownMenu.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic $$changed:I

.field final synthetic $$changed1:I

.field final synthetic $$default:I

.field final synthetic $border:Landroidx/compose/foundation/BorderStroke;

.field final synthetic $containerColor:J

.field final synthetic $content:Lkotlin/jvm/functions/Function3;

.field final synthetic $expanded:Z

.field final synthetic $matchAnchorWidth:Z

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $onDismissRequest:Lkotlin/jvm/functions/Function0;

.field final synthetic $scrollState:Landroidx/compose/foundation/ScrollState;

.field final synthetic $shadowElevation:F

.field final synthetic $shape:Landroidx/compose/ui/graphics/Shape;

.field final synthetic $tmp5_rcvr:Landroidx/compose/material3/ExposedDropdownMenuBoxScope;

.field final synthetic $tonalElevation:F


# direct methods
.method constructor <init>(Landroidx/compose/material3/ExposedDropdownMenuBoxScope;ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;ZLandroidx/compose/ui/graphics/Shape;JFFLandroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function3;III)V
    .locals 3

    .line 0
    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$3;->$tmp5_rcvr:Landroidx/compose/material3/ExposedDropdownMenuBoxScope;

    move v1, p2

    iput-boolean v1, v0, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$3;->$expanded:Z

    move-object v1, p3

    iput-object v1, v0, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$3;->$onDismissRequest:Lkotlin/jvm/functions/Function0;

    move-object v1, p4

    iput-object v1, v0, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$3;->$modifier:Landroidx/compose/ui/Modifier;

    move-object v1, p5

    iput-object v1, v0, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$3;->$scrollState:Landroidx/compose/foundation/ScrollState;

    move v1, p6

    iput-boolean v1, v0, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$3;->$matchAnchorWidth:Z

    move-object v1, p7

    iput-object v1, v0, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$3;->$shape:Landroidx/compose/ui/graphics/Shape;

    move-wide v1, p8

    iput-wide v1, v0, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$3;->$containerColor:J

    move v1, p10

    iput v1, v0, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$3;->$tonalElevation:F

    move v1, p11

    iput v1, v0, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$3;->$shadowElevation:F

    move-object v1, p12

    iput-object v1, v0, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$3;->$border:Landroidx/compose/foundation/BorderStroke;

    move-object/from16 v1, p13

    iput-object v1, v0, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$3;->$content:Lkotlin/jvm/functions/Function3;

    move/from16 v1, p14

    iput v1, v0, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$3;->$$changed:I

    move/from16 v1, p15

    iput v1, v0, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$3;->$$changed1:I

    move/from16 v1, p16

    iput v1, v0, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$3;->$$default:I

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

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$3;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 18

    .line 0
    move-object/from16 v0, p0

    move-object/from16 v14, p1

    iget-object v1, v0, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$3;->$tmp5_rcvr:Landroidx/compose/material3/ExposedDropdownMenuBoxScope;

    iget-boolean v2, v0, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$3;->$expanded:Z

    iget-object v3, v0, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$3;->$onDismissRequest:Lkotlin/jvm/functions/Function0;

    iget-object v4, v0, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$3;->$modifier:Landroidx/compose/ui/Modifier;

    iget-object v5, v0, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$3;->$scrollState:Landroidx/compose/foundation/ScrollState;

    iget-boolean v6, v0, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$3;->$matchAnchorWidth:Z

    iget-object v7, v0, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$3;->$shape:Landroidx/compose/ui/graphics/Shape;

    iget-wide v8, v0, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$3;->$containerColor:J

    iget v10, v0, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$3;->$tonalElevation:F

    iget v11, v0, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$3;->$shadowElevation:F

    iget-object v12, v0, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$3;->$border:Landroidx/compose/foundation/BorderStroke;

    iget-object v13, v0, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$3;->$content:Lkotlin/jvm/functions/Function3;

    iget v15, v0, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$3;->$$changed:I

    or-int/lit8 v15, v15, 0x1

    invoke-static {v15}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v15

    move-object/from16 p1, v1

    iget v1, v0, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$3;->$$changed1:I

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v16

    iget v0, v0, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$3;->$$default:I

    move/from16 v17, v0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v17}, Landroidx/compose/material3/ExposedDropdownMenuBoxScope;->ExposedDropdownMenu-vNxi1II(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;ZLandroidx/compose/ui/graphics/Shape;JFFLandroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V

    return-void
.end method
