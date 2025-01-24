.class public final Landroidx/compose/material/ripple/AndroidRippleNode;
.super Landroidx/compose/material/ripple/RippleNode;
.source "Ripple.android.kt"

# interfaces
.implements Landroidx/compose/material/ripple/RippleHostKey;


# instance fields
.field private rippleContainer:Landroidx/compose/material/ripple/RippleContainer;

.field private rippleHostView:Landroidx/compose/material/ripple/RippleHostView;

.field private rippleSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method private constructor <init>(Landroidx/compose/foundation/interaction/InteractionSource;ZFLandroidx/compose/ui/graphics/ColorProducer;Lkotlin/jvm/functions/Function0;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 113
    invoke-direct/range {v0 .. v6}, Landroidx/compose/material/ripple/RippleNode;-><init>(Landroidx/compose/foundation/interaction/InteractionSource;ZFLandroidx/compose/ui/graphics/ColorProducer;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 136
    sget-object p1, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Size$Companion;->getZero-NH-jbRc()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/compose/material/ripple/AndroidRippleNode;->rippleSize:J

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/foundation/interaction/InteractionSource;ZFLandroidx/compose/ui/graphics/ColorProducer;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Landroidx/compose/material/ripple/AndroidRippleNode;-><init>(Landroidx/compose/foundation/interaction/InteractionSource;ZFLandroidx/compose/ui/graphics/ColorProducer;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final getOrCreateRippleContainer()Landroidx/compose/material/ripple/RippleContainer;
    .locals 1

    .line 192
    iget-object v0, p0, Landroidx/compose/material/ripple/AndroidRippleNode;->rippleContainer:Landroidx/compose/material/ripple/RippleContainer;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 193
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->getLocalView()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroidx/compose/material/ripple/Ripple_androidKt;->access$findNearestViewGroup(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 194
    invoke-static {v0}, Landroidx/compose/material/ripple/Ripple_androidKt;->access$createAndAttachRippleContainerIfNeeded(Landroid/view/ViewGroup;)Landroidx/compose/material/ripple/RippleContainer;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/material/ripple/AndroidRippleNode;->rippleContainer:Landroidx/compose/material/ripple/RippleContainer;

    .line 195
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method private final setRippleHostView(Landroidx/compose/material/ripple/RippleHostView;)V
    .locals 0

    .line 125
    iput-object p1, p0, Landroidx/compose/material/ripple/AndroidRippleNode;->rippleHostView:Landroidx/compose/material/ripple/RippleHostView;

    .line 126
    invoke-static {p0}, Landroidx/compose/ui/node/DrawModifierNodeKt;->invalidateDraw(Landroidx/compose/ui/node/DrawModifierNode;)V

    return-void
.end method


# virtual methods
.method public addRipple(Landroidx/compose/foundation/interaction/PressInteraction$Press;)V
    .locals 11

    .line 162
    invoke-direct {p0}, Landroidx/compose/material/ripple/AndroidRippleNode;->getOrCreateRippleContainer()Landroidx/compose/material/ripple/RippleContainer;

    move-result-object v0

    .line 163
    invoke-virtual {v0, p0}, Landroidx/compose/material/ripple/RippleContainer;->getRippleHostView(Landroidx/compose/material/ripple/RippleHostKey;)Landroidx/compose/material/ripple/RippleHostView;

    move-result-object v0

    .line 166
    invoke-virtual {p0}, Landroidx/compose/material/ripple/RippleNode;->getBounded()Z

    move-result v3

    .line 167
    iget-wide v4, p0, Landroidx/compose/material/ripple/AndroidRippleNode;->rippleSize:J

    .line 168
    invoke-virtual {p0}, Landroidx/compose/material/ripple/RippleNode;->getTargetRadius()F

    move-result v1

    invoke-static {v1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v6

    .line 169
    invoke-virtual {p0}, Landroidx/compose/material/ripple/RippleNode;->getRippleColor-0d7_KjU()J

    move-result-wide v7

    .line 170
    invoke-virtual {p0}, Landroidx/compose/material/ripple/RippleNode;->getRippleAlpha()Lkotlin/jvm/functions/Function0;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/material/ripple/RippleAlpha;

    invoke-virtual {v1}, Landroidx/compose/material/ripple/RippleAlpha;->getPressedAlpha()F

    move-result v9

    .line 164
    new-instance v10, Landroidx/compose/material/ripple/AndroidRippleNode$addRipple$1$1$1;

    invoke-direct {v10, p0}, Landroidx/compose/material/ripple/AndroidRippleNode$addRipple$1$1$1;-><init>(Landroidx/compose/material/ripple/AndroidRippleNode;)V

    move-object v1, v0

    move-object v2, p1

    invoke-virtual/range {v1 .. v10}, Landroidx/compose/material/ripple/RippleHostView;->addRipple-KOepWvA(Landroidx/compose/foundation/interaction/PressInteraction$Press;ZJIJFLkotlin/jvm/functions/Function0;)V

    .line 162
    invoke-direct {p0, v0}, Landroidx/compose/material/ripple/AndroidRippleNode;->setRippleHostView(Landroidx/compose/material/ripple/RippleHostView;)V

    return-void
.end method

.method public drawRipples(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V
    .locals 9

    .line 139
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/material/ripple/AndroidRippleNode;->rippleSize:J

    .line 389
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v0

    .line 142
    iget-object v8, p0, Landroidx/compose/material/ripple/AndroidRippleNode;->rippleHostView:Landroidx/compose/material/ripple/RippleHostView;

    if-eqz v8, :cond_0

    .line 150
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v2

    .line 151
    invoke-virtual {p0}, Landroidx/compose/material/ripple/RippleNode;->getTargetRadius()F

    move-result p1

    invoke-static {p1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v4

    .line 152
    invoke-virtual {p0}, Landroidx/compose/material/ripple/RippleNode;->getRippleColor-0d7_KjU()J

    move-result-wide v5

    .line 153
    invoke-virtual {p0}, Landroidx/compose/material/ripple/RippleNode;->getRippleAlpha()Lkotlin/jvm/functions/Function0;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/material/ripple/RippleAlpha;

    invoke-virtual {p0}, Landroidx/compose/material/ripple/RippleAlpha;->getPressedAlpha()F

    move-result v7

    move-object v1, v8

    .line 149
    invoke-virtual/range {v1 .. v7}, Landroidx/compose/material/ripple/RippleHostView;->updateRippleProperties-biQXAtU(JIJF)V

    .line 156
    invoke-static {v0}, Landroidx/compose/ui/graphics/AndroidCanvas_androidKt;->getNativeCanvas(Landroidx/compose/ui/graphics/Canvas;)Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual {v8, p0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 182
    iget-object v0, p0, Landroidx/compose/material/ripple/AndroidRippleNode;->rippleContainer:Landroidx/compose/material/ripple/RippleContainer;

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {v0, p0}, Landroidx/compose/material/ripple/RippleContainer;->disposeRippleIfNeeded(Landroidx/compose/material/ripple/RippleHostKey;)V

    :cond_0
    return-void
.end method

.method public onResetRippleHostView()V
    .locals 1

    const/4 v0, 0x0

    .line 188
    invoke-direct {p0, v0}, Landroidx/compose/material/ripple/AndroidRippleNode;->setRippleHostView(Landroidx/compose/material/ripple/RippleHostView;)V

    return-void
.end method

.method public removeRipple(Landroidx/compose/foundation/interaction/PressInteraction$Press;)V
    .locals 0

    .line 178
    iget-object p0, p0, Landroidx/compose/material/ripple/AndroidRippleNode;->rippleHostView:Landroidx/compose/material/ripple/RippleHostView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/material/ripple/RippleHostView;->removeRipple()V

    :cond_0
    return-void
.end method
