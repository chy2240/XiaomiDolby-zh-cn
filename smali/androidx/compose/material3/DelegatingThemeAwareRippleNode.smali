.class final Landroidx/compose/material3/DelegatingThemeAwareRippleNode;
.super Landroidx/compose/ui/node/DelegatingNode;
.source "Ripple.kt"

# interfaces
.implements Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;
.implements Landroidx/compose/ui/node/ObserverModifierNode;


# instance fields
.field private final bounded:Z

.field private final color:Landroidx/compose/ui/graphics/ColorProducer;

.field private final interactionSource:Landroidx/compose/foundation/interaction/InteractionSource;

.field private final radius:F

.field private rippleNode:Landroidx/compose/ui/node/DelegatableNode;


# direct methods
.method private constructor <init>(Landroidx/compose/foundation/interaction/InteractionSource;ZFLandroidx/compose/ui/graphics/ColorProducer;)V
    .locals 0

    .line 243
    invoke-direct {p0}, Landroidx/compose/ui/node/DelegatingNode;-><init>()V

    .line 239
    iput-object p1, p0, Landroidx/compose/material3/DelegatingThemeAwareRippleNode;->interactionSource:Landroidx/compose/foundation/interaction/InteractionSource;

    .line 240
    iput-boolean p2, p0, Landroidx/compose/material3/DelegatingThemeAwareRippleNode;->bounded:Z

    .line 241
    iput p3, p0, Landroidx/compose/material3/DelegatingThemeAwareRippleNode;->radius:F

    .line 242
    iput-object p4, p0, Landroidx/compose/material3/DelegatingThemeAwareRippleNode;->color:Landroidx/compose/ui/graphics/ColorProducer;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/foundation/interaction/InteractionSource;ZFLandroidx/compose/ui/graphics/ColorProducer;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/material3/DelegatingThemeAwareRippleNode;-><init>(Landroidx/compose/foundation/interaction/InteractionSource;ZFLandroidx/compose/ui/graphics/ColorProducer;)V

    return-void
.end method

.method public static final synthetic access$attachNewRipple(Landroidx/compose/material3/DelegatingThemeAwareRippleNode;)V
    .locals 0

    .line 238
    invoke-direct {p0}, Landroidx/compose/material3/DelegatingThemeAwareRippleNode;->attachNewRipple()V

    return-void
.end method

.method public static final synthetic access$getColor$p(Landroidx/compose/material3/DelegatingThemeAwareRippleNode;)Landroidx/compose/ui/graphics/ColorProducer;
    .locals 0

    .line 238
    iget-object p0, p0, Landroidx/compose/material3/DelegatingThemeAwareRippleNode;->color:Landroidx/compose/ui/graphics/ColorProducer;

    return-object p0
.end method

.method public static final synthetic access$getRippleNode$p(Landroidx/compose/material3/DelegatingThemeAwareRippleNode;)Landroidx/compose/ui/node/DelegatableNode;
    .locals 0

    .line 238
    iget-object p0, p0, Landroidx/compose/material3/DelegatingThemeAwareRippleNode;->rippleNode:Landroidx/compose/ui/node/DelegatableNode;

    return-object p0
.end method

.method public static final synthetic access$removeRipple(Landroidx/compose/material3/DelegatingThemeAwareRippleNode;)V
    .locals 0

    .line 238
    invoke-direct {p0}, Landroidx/compose/material3/DelegatingThemeAwareRippleNode;->removeRipple()V

    return-void
.end method

.method private final attachNewRipple()V
    .locals 5

    .line 271
    new-instance v0, Landroidx/compose/material3/DelegatingThemeAwareRippleNode$attachNewRipple$calculateColor$1;

    invoke-direct {v0, p0}, Landroidx/compose/material3/DelegatingThemeAwareRippleNode$attachNewRipple$calculateColor$1;-><init>(Landroidx/compose/material3/DelegatingThemeAwareRippleNode;)V

    .line 287
    new-instance v1, Landroidx/compose/material3/DelegatingThemeAwareRippleNode$attachNewRipple$calculateRippleAlpha$1;

    invoke-direct {v1, p0}, Landroidx/compose/material3/DelegatingThemeAwareRippleNode$attachNewRipple$calculateRippleAlpha$1;-><init>(Landroidx/compose/material3/DelegatingThemeAwareRippleNode;)V

    .line 297
    iget-object v2, p0, Landroidx/compose/material3/DelegatingThemeAwareRippleNode;->interactionSource:Landroidx/compose/foundation/interaction/InteractionSource;

    .line 298
    iget-boolean v3, p0, Landroidx/compose/material3/DelegatingThemeAwareRippleNode;->bounded:Z

    .line 299
    iget v4, p0, Landroidx/compose/material3/DelegatingThemeAwareRippleNode;->radius:F

    .line 296
    invoke-static {v2, v3, v4, v0, v1}, Landroidx/compose/material/ripple/RippleKt;->createRippleModifierNode-TDGSqEk(Landroidx/compose/foundation/interaction/InteractionSource;ZFLandroidx/compose/ui/graphics/ColorProducer;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/node/DelegatableNode;

    move-result-object v0

    .line 295
    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/DelegatingNode;->delegate(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    move-result-object v0

    .line 294
    iput-object v0, p0, Landroidx/compose/material3/DelegatingThemeAwareRippleNode;->rippleNode:Landroidx/compose/ui/node/DelegatableNode;

    return-void
.end method

.method private final removeRipple()V
    .locals 1

    .line 307
    iget-object v0, p0, Landroidx/compose/material3/DelegatingThemeAwareRippleNode;->rippleNode:Landroidx/compose/ui/node/DelegatableNode;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/DelegatingNode;->undelegate(Landroidx/compose/ui/node/DelegatableNode;)V

    :cond_0
    const/4 v0, 0x0

    .line 308
    iput-object v0, p0, Landroidx/compose/material3/DelegatingThemeAwareRippleNode;->rippleNode:Landroidx/compose/ui/node/DelegatableNode;

    return-void
.end method

.method private final updateConfiguration()V
    .locals 1

    .line 260
    new-instance v0, Landroidx/compose/material3/DelegatingThemeAwareRippleNode$updateConfiguration$1;

    invoke-direct {v0, p0}, Landroidx/compose/material3/DelegatingThemeAwareRippleNode$updateConfiguration$1;-><init>(Landroidx/compose/material3/DelegatingThemeAwareRippleNode;)V

    invoke-static {p0, v0}, Landroidx/compose/ui/node/ObserverModifierNodeKt;->observeReads(Landroidx/compose/ui/Modifier$Node;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method public onAttach()V
    .locals 0

    .line 247
    invoke-direct {p0}, Landroidx/compose/material3/DelegatingThemeAwareRippleNode;->updateConfiguration()V

    return-void
.end method

.method public onObservedReadsChanged()V
    .locals 0

    .line 251
    invoke-direct {p0}, Landroidx/compose/material3/DelegatingThemeAwareRippleNode;->updateConfiguration()V

    return-void
.end method
