.class final Landroidx/compose/material3/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ExposedDropdownMenu.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic $border:Landroidx/compose/foundation/BorderStroke;

.field final synthetic $containerColor:J

.field final synthetic $content:Lkotlin/jvm/functions/Function3;

.field final synthetic $expandedState:Landroidx/compose/animation/core/MutableTransitionState;

.field final synthetic $matchAnchorWidth:Z

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $scrollState:Landroidx/compose/foundation/ScrollState;

.field final synthetic $shadowElevation:F

.field final synthetic $shape:Landroidx/compose/ui/graphics/Shape;

.field final synthetic $tonalElevation:F

.field final synthetic $transformOriginState:Landroidx/compose/runtime/MutableState;

.field final synthetic this$0:Landroidx/compose/material3/ExposedDropdownMenuBoxScope;


# direct methods
.method constructor <init>(Landroidx/compose/material3/ExposedDropdownMenuBoxScope;Landroidx/compose/ui/Modifier;ZLandroidx/compose/animation/core/MutableTransitionState;Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/ScrollState;Landroidx/compose/ui/graphics/Shape;JFFLandroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function3;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$2;->this$0:Landroidx/compose/material3/ExposedDropdownMenuBoxScope;

    iput-object p2, p0, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$2;->$modifier:Landroidx/compose/ui/Modifier;

    iput-boolean p3, p0, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$2;->$matchAnchorWidth:Z

    iput-object p4, p0, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$2;->$expandedState:Landroidx/compose/animation/core/MutableTransitionState;

    iput-object p5, p0, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$2;->$transformOriginState:Landroidx/compose/runtime/MutableState;

    iput-object p6, p0, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$2;->$scrollState:Landroidx/compose/foundation/ScrollState;

    iput-object p7, p0, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$2;->$shape:Landroidx/compose/ui/graphics/Shape;

    iput-wide p8, p0, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$2;->$containerColor:J

    iput p10, p0, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$2;->$tonalElevation:F

    iput p11, p0, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$2;->$shadowElevation:F

    iput-object p12, p0, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$2;->$border:Landroidx/compose/foundation/BorderStroke;

    iput-object p13, p0, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$2;->$content:Lkotlin/jvm/functions/Function3;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 390
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$2;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p2

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 391
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 402
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_1

    .line 391
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, -0x1

    const-string v3, "androidx.compose.material3.ExposedDropdownMenuBoxScope.ExposedDropdownMenu.<anonymous> (ExposedDropdownMenu.android.kt:390)"

    const v4, -0x4083cfe7

    invoke-static {v4, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 400
    :cond_2
    iget-object v1, v0, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$2;->this$0:Landroidx/compose/material3/ExposedDropdownMenuBoxScope;

    iget-object v2, v0, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$2;->$modifier:Landroidx/compose/ui/Modifier;

    iget-boolean v3, v0, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$2;->$matchAnchorWidth:Z

    invoke-virtual {v1, v2, v3}, Landroidx/compose/material3/ExposedDropdownMenuBoxScope;->exposedDropdownSize(Landroidx/compose/ui/Modifier;Z)Landroidx/compose/ui/Modifier;

    move-result-object v4

    .line 392
    iget-object v5, v0, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$2;->$expandedState:Landroidx/compose/animation/core/MutableTransitionState;

    .line 393
    iget-object v6, v0, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$2;->$transformOriginState:Landroidx/compose/runtime/MutableState;

    .line 394
    iget-object v7, v0, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$2;->$scrollState:Landroidx/compose/foundation/ScrollState;

    .line 395
    iget-object v8, v0, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$2;->$shape:Landroidx/compose/ui/graphics/Shape;

    .line 396
    iget-wide v9, v0, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$2;->$containerColor:J

    .line 397
    iget v11, v0, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$2;->$tonalElevation:F

    .line 398
    iget v12, v0, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$2;->$shadowElevation:F

    .line 399
    iget-object v13, v0, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$2;->$border:Landroidx/compose/foundation/BorderStroke;

    .line 401
    iget-object v14, v0, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$2;->$content:Lkotlin/jvm/functions/Function3;

    sget v0, Landroidx/compose/animation/core/MutableTransitionState;->$stable:I

    shl-int/lit8 v0, v0, 0x3

    or-int/lit16 v0, v0, 0x180

    move-object/from16 v15, p1

    move/from16 v16, v0

    .line 391
    invoke-static/range {v4 .. v16}, Landroidx/compose/material3/MenuKt;->DropdownMenuContent-Qj0Zi0g(Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/MutableTransitionState;Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/ScrollState;Landroidx/compose/ui/graphics/Shape;JFFLandroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    :goto_1
    return-void
.end method
