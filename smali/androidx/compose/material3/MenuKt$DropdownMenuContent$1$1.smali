.class final Landroidx/compose/material3/MenuKt$DropdownMenuContent$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Menu.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $alpha$delegate:Landroidx/compose/runtime/State;

.field final synthetic $expandedState:Landroidx/compose/animation/core/MutableTransitionState;

.field final synthetic $isInspecting:Z

.field final synthetic $scale$delegate:Landroidx/compose/runtime/State;

.field final synthetic $transformOriginState:Landroidx/compose/runtime/MutableState;


# direct methods
.method constructor <init>(ZLandroidx/compose/animation/core/MutableTransitionState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Landroidx/compose/material3/MenuKt$DropdownMenuContent$1$1;->$isInspecting:Z

    iput-object p2, p0, Landroidx/compose/material3/MenuKt$DropdownMenuContent$1$1;->$expandedState:Landroidx/compose/animation/core/MutableTransitionState;

    iput-object p3, p0, Landroidx/compose/material3/MenuKt$DropdownMenuContent$1$1;->$transformOriginState:Landroidx/compose/runtime/MutableState;

    iput-object p4, p0, Landroidx/compose/material3/MenuKt$DropdownMenuContent$1$1;->$scale$delegate:Landroidx/compose/runtime/State;

    iput-object p5, p0, Landroidx/compose/material3/MenuKt$DropdownMenuContent$1$1;->$alpha$delegate:Landroidx/compose/runtime/State;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 391
    check-cast p1, Landroidx/compose/ui/graphics/GraphicsLayerScope;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/MenuKt$DropdownMenuContent$1$1;->invoke(Landroidx/compose/ui/graphics/GraphicsLayerScope;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/ui/graphics/GraphicsLayerScope;)V
    .locals 3

    .line 393
    iget-boolean v0, p0, Landroidx/compose/material3/MenuKt$DropdownMenuContent$1$1;->$isInspecting:Z

    const v1, 0x3f4ccccd    # 0.8f

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/compose/material3/MenuKt$DropdownMenuContent$1$1;->$scale$delegate:Landroidx/compose/runtime/State;

    invoke-static {v0}, Landroidx/compose/material3/MenuKt;->access$DropdownMenuContent_Qj0Zi0g$lambda$1(Landroidx/compose/runtime/State;)F

    move-result v0

    goto :goto_0

    .line 394
    :cond_0
    iget-object v0, p0, Landroidx/compose/material3/MenuKt$DropdownMenuContent$1$1;->$expandedState:Landroidx/compose/animation/core/MutableTransitionState;

    invoke-virtual {v0}, Landroidx/compose/animation/core/MutableTransitionState;->getTargetState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 392
    :goto_0
    invoke-interface {p1, v0}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->setScaleX(F)V

    .line 396
    iget-boolean v0, p0, Landroidx/compose/material3/MenuKt$DropdownMenuContent$1$1;->$isInspecting:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/compose/material3/MenuKt$DropdownMenuContent$1$1;->$scale$delegate:Landroidx/compose/runtime/State;

    invoke-static {v0}, Landroidx/compose/material3/MenuKt;->access$DropdownMenuContent_Qj0Zi0g$lambda$1(Landroidx/compose/runtime/State;)F

    move-result v1

    goto :goto_1

    .line 397
    :cond_2
    iget-object v0, p0, Landroidx/compose/material3/MenuKt$DropdownMenuContent$1$1;->$expandedState:Landroidx/compose/animation/core/MutableTransitionState;

    invoke-virtual {v0}, Landroidx/compose/animation/core/MutableTransitionState;->getTargetState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    move v1, v2

    .line 395
    :cond_3
    :goto_1
    invoke-interface {p1, v1}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->setScaleY(F)V

    .line 399
    iget-boolean v0, p0, Landroidx/compose/material3/MenuKt$DropdownMenuContent$1$1;->$isInspecting:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Landroidx/compose/material3/MenuKt$DropdownMenuContent$1$1;->$alpha$delegate:Landroidx/compose/runtime/State;

    invoke-static {v0}, Landroidx/compose/material3/MenuKt;->access$DropdownMenuContent_Qj0Zi0g$lambda$3(Landroidx/compose/runtime/State;)F

    move-result v2

    goto :goto_2

    .line 400
    :cond_4
    iget-object v0, p0, Landroidx/compose/material3/MenuKt$DropdownMenuContent$1$1;->$expandedState:Landroidx/compose/animation/core/MutableTransitionState;

    invoke-virtual {v0}, Landroidx/compose/animation/core/MutableTransitionState;->getTargetState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    .line 398
    :goto_2
    invoke-interface {p1, v2}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->setAlpha(F)V

    .line 401
    iget-object p0, p0, Landroidx/compose/material3/MenuKt$DropdownMenuContent$1$1;->$transformOriginState:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/graphics/TransformOrigin;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/TransformOrigin;->unbox-impl()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->setTransformOrigin-__ExYCQ(J)V

    return-void
.end method
