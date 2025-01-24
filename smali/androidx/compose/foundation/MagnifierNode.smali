.class public final Landroidx/compose/foundation/MagnifierNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "Magnifier.android.kt"

# interfaces
.implements Landroidx/compose/ui/node/GlobalPositionAwareModifierNode;
.implements Landroidx/compose/ui/node/DrawModifierNode;
.implements Landroidx/compose/ui/node/SemanticsModifierNode;
.implements Landroidx/compose/ui/node/ObserverModifierNode;


# instance fields
.field private anchorPositionInRootState:Landroidx/compose/runtime/State;

.field private clippingEnabled:Z

.field private cornerRadius:F

.field private density:Landroidx/compose/ui/unit/Density;

.field private drawSignalChannel:Lkotlinx/coroutines/channels/Channel;

.field private elevation:F

.field private final layoutCoordinates$delegate:Landroidx/compose/runtime/MutableState;

.field private magnifier:Landroidx/compose/foundation/PlatformMagnifier;

.field private magnifierCenter:Lkotlin/jvm/functions/Function1;

.field private onSizeChanged:Lkotlin/jvm/functions/Function1;

.field private platformMagnifierFactory:Landroidx/compose/foundation/PlatformMagnifierFactory;

.field private previousSize:Landroidx/compose/ui/unit/IntSize;

.field private size:J

.field private sourceCenter:Lkotlin/jvm/functions/Function1;

.field private sourceCenterInRoot:J

.field private useTextDefault:Z

.field private view:Landroid/view/View;

.field private zoom:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method private constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;FZJFFZLandroidx/compose/foundation/PlatformMagnifierFactory;)V
    .locals 0

    .line 258
    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    .line 246
    iput-object p1, p0, Landroidx/compose/foundation/MagnifierNode;->sourceCenter:Lkotlin/jvm/functions/Function1;

    .line 247
    iput-object p2, p0, Landroidx/compose/foundation/MagnifierNode;->magnifierCenter:Lkotlin/jvm/functions/Function1;

    .line 248
    iput-object p3, p0, Landroidx/compose/foundation/MagnifierNode;->onSizeChanged:Lkotlin/jvm/functions/Function1;

    .line 249
    iput p4, p0, Landroidx/compose/foundation/MagnifierNode;->zoom:F

    .line 250
    iput-boolean p5, p0, Landroidx/compose/foundation/MagnifierNode;->useTextDefault:Z

    .line 251
    iput-wide p6, p0, Landroidx/compose/foundation/MagnifierNode;->size:J

    .line 252
    iput p8, p0, Landroidx/compose/foundation/MagnifierNode;->cornerRadius:F

    .line 253
    iput p9, p0, Landroidx/compose/foundation/MagnifierNode;->elevation:F

    .line 254
    iput-boolean p10, p0, Landroidx/compose/foundation/MagnifierNode;->clippingEnabled:Z

    .line 255
    iput-object p11, p0, Landroidx/compose/foundation/MagnifierNode;->platformMagnifierFactory:Landroidx/compose/foundation/PlatformMagnifierFactory;

    const/4 p1, 0x0

    .line 281
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->neverEqualPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object p2

    invoke-static {p1, p2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/MagnifierNode;->layoutCoordinates$delegate:Landroidx/compose/runtime/MutableState;

    .line 304
    sget-object p1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/compose/foundation/MagnifierNode;->sourceCenterInRoot:J

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;FZJFFZLandroidx/compose/foundation/PlatformMagnifierFactory;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p11}, Landroidx/compose/foundation/MagnifierNode;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;FZJFFZLandroidx/compose/foundation/PlatformMagnifierFactory;)V

    return-void
.end method

.method public static final synthetic access$getDrawSignalChannel$p(Landroidx/compose/foundation/MagnifierNode;)Lkotlinx/coroutines/channels/Channel;
    .locals 0

    .line 245
    iget-object p0, p0, Landroidx/compose/foundation/MagnifierNode;->drawSignalChannel:Lkotlinx/coroutines/channels/Channel;

    return-object p0
.end method

.method public static final synthetic access$getLayoutCoordinates(Landroidx/compose/foundation/MagnifierNode;)Landroidx/compose/ui/layout/LayoutCoordinates;
    .locals 0

    .line 245
    invoke-direct {p0}, Landroidx/compose/foundation/MagnifierNode;->getLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMagnifier$p(Landroidx/compose/foundation/MagnifierNode;)Landroidx/compose/foundation/PlatformMagnifier;
    .locals 0

    .line 245
    iget-object p0, p0, Landroidx/compose/foundation/MagnifierNode;->magnifier:Landroidx/compose/foundation/PlatformMagnifier;

    return-object p0
.end method

.method public static final synthetic access$getSourceCenterInRoot$p(Landroidx/compose/foundation/MagnifierNode;)J
    .locals 2

    .line 245
    iget-wide v0, p0, Landroidx/compose/foundation/MagnifierNode;->sourceCenterInRoot:J

    return-wide v0
.end method

.method public static final synthetic access$updateMagnifier(Landroidx/compose/foundation/MagnifierNode;)V
    .locals 0

    .line 245
    invoke-direct {p0}, Landroidx/compose/foundation/MagnifierNode;->updateMagnifier()V

    return-void
.end method

.method private final getAnchorPositionInRoot-F1C5BW0()J
    .locals 2

    .line 292
    iget-object v0, p0, Landroidx/compose/foundation/MagnifierNode;->anchorPositionInRootState:Landroidx/compose/runtime/State;

    if-nez v0, :cond_0

    .line 293
    new-instance v0, Landroidx/compose/foundation/MagnifierNode$anchorPositionInRoot$1;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/MagnifierNode$anchorPositionInRoot$1;-><init>(Landroidx/compose/foundation/MagnifierNode;)V

    invoke-static {v0}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/MagnifierNode;->anchorPositionInRootState:Landroidx/compose/runtime/State;

    .line 297
    :cond_0
    iget-object p0, p0, Landroidx/compose/foundation/MagnifierNode;->anchorPositionInRootState:Landroidx/compose/runtime/State;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/geometry/Offset;

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    sget-object p0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method private final getLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;
    .locals 0

    .line 281
    iget-object p0, p0, Landroidx/compose/foundation/MagnifierNode;->layoutCoordinates$delegate:Landroidx/compose/runtime/MutableState;

    .line 81
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/layout/LayoutCoordinates;

    return-object p0
.end method

.method private final recreateMagnifier()V
    .locals 11

    .line 401
    iget-object v0, p0, Landroidx/compose/foundation/MagnifierNode;->magnifier:Landroidx/compose/foundation/PlatformMagnifier;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/compose/foundation/PlatformMagnifier;->dismiss()V

    .line 402
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/MagnifierNode;->view:Landroid/view/View;

    if-nez v0, :cond_1

    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNode_androidKt;->requireView(Landroidx/compose/ui/node/DelegatableNode;)Landroid/view/View;

    move-result-object v0

    :cond_1
    move-object v2, v0

    iput-object v2, p0, Landroidx/compose/foundation/MagnifierNode;->view:Landroid/view/View;

    .line 403
    iget-object v0, p0, Landroidx/compose/foundation/MagnifierNode;->density:Landroidx/compose/ui/unit/Density;

    if-nez v0, :cond_2

    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireDensity(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/unit/Density;

    move-result-object v0

    :cond_2
    move-object v9, v0

    iput-object v9, p0, Landroidx/compose/foundation/MagnifierNode;->density:Landroidx/compose/ui/unit/Density;

    .line 405
    iget-object v1, p0, Landroidx/compose/foundation/MagnifierNode;->platformMagnifierFactory:Landroidx/compose/foundation/PlatformMagnifierFactory;

    .line 407
    iget-boolean v3, p0, Landroidx/compose/foundation/MagnifierNode;->useTextDefault:Z

    .line 408
    iget-wide v4, p0, Landroidx/compose/foundation/MagnifierNode;->size:J

    .line 409
    iget v6, p0, Landroidx/compose/foundation/MagnifierNode;->cornerRadius:F

    .line 410
    iget v7, p0, Landroidx/compose/foundation/MagnifierNode;->elevation:F

    .line 411
    iget-boolean v8, p0, Landroidx/compose/foundation/MagnifierNode;->clippingEnabled:Z

    .line 413
    iget v10, p0, Landroidx/compose/foundation/MagnifierNode;->zoom:F

    .line 405
    invoke-interface/range {v1 .. v10}, Landroidx/compose/foundation/PlatformMagnifierFactory;->create-nHHXs2Y(Landroid/view/View;ZJFFZLandroidx/compose/ui/unit/Density;F)Landroidx/compose/foundation/PlatformMagnifier;

    move-result-object v0

    .line 404
    iput-object v0, p0, Landroidx/compose/foundation/MagnifierNode;->magnifier:Landroidx/compose/foundation/PlatformMagnifier;

    .line 415
    invoke-direct {p0}, Landroidx/compose/foundation/MagnifierNode;->updateSizeIfNecessary()V

    return-void
.end method

.method private final setLayoutCoordinates(Landroidx/compose/ui/layout/LayoutCoordinates;)V
    .locals 0

    .line 281
    iget-object p0, p0, Landroidx/compose/foundation/MagnifierNode;->layoutCoordinates$delegate:Landroidx/compose/runtime/MutableState;

    .line 109
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final updateMagnifier()V
    .locals 9

    .line 419
    iget-object v0, p0, Landroidx/compose/foundation/MagnifierNode;->density:Landroidx/compose/ui/unit/Density;

    if-nez v0, :cond_0

    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireDensity(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/unit/Density;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/MagnifierNode;->density:Landroidx/compose/ui/unit/Density;

    .line 421
    :cond_0
    iget-object v1, p0, Landroidx/compose/foundation/MagnifierNode;->sourceCenter:Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/geometry/Offset;

    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v1

    const-wide v3, 0x7fffffff7fffffffL

    and-long v5, v1, v3

    const-wide v7, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long v5, v5, v7

    if-eqz v5, :cond_5

    .line 425
    invoke-direct {p0}, Landroidx/compose/foundation/MagnifierNode;->getAnchorPositionInRoot-F1C5BW0()J

    move-result-wide v5

    and-long/2addr v5, v3

    cmp-long v5, v5, v7

    if-eqz v5, :cond_5

    .line 426
    invoke-direct {p0}, Landroidx/compose/foundation/MagnifierNode;->getAnchorPositionInRoot-F1C5BW0()J

    move-result-wide v5

    invoke-static {v5, v6, v1, v2}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/compose/foundation/MagnifierNode;->sourceCenterInRoot:J

    .line 430
    iget-object v1, p0, Landroidx/compose/foundation/MagnifierNode;->magnifierCenter:Lkotlin/jvm/functions/Function1;

    if-eqz v1, :cond_2

    .line 431
    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/geometry/Offset;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v0

    .line 432
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v1

    and-long/2addr v1, v3

    cmp-long v1, v1, v7

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 433
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v0

    invoke-direct {p0}, Landroidx/compose/foundation/MagnifierNode;->getAnchorPositionInRoot-F1C5BW0()J

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide v0

    :goto_1
    move-wide v5, v0

    goto :goto_2

    :cond_2
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide v0

    goto :goto_1

    .line 435
    :goto_2
    iget-object v0, p0, Landroidx/compose/foundation/MagnifierNode;->magnifier:Landroidx/compose/foundation/PlatformMagnifier;

    if-nez v0, :cond_3

    .line 436
    invoke-direct {p0}, Landroidx/compose/foundation/MagnifierNode;->recreateMagnifier()V

    .line 439
    :cond_3
    iget-object v2, p0, Landroidx/compose/foundation/MagnifierNode;->magnifier:Landroidx/compose/foundation/PlatformMagnifier;

    if-eqz v2, :cond_4

    .line 440
    iget-wide v3, p0, Landroidx/compose/foundation/MagnifierNode;->sourceCenterInRoot:J

    .line 442
    iget v7, p0, Landroidx/compose/foundation/MagnifierNode;->zoom:F

    .line 439
    invoke-interface/range {v2 .. v7}, Landroidx/compose/foundation/PlatformMagnifier;->update-Wko1d7g(JJF)V

    .line 444
    :cond_4
    invoke-direct {p0}, Landroidx/compose/foundation/MagnifierNode;->updateSizeIfNecessary()V

    return-void

    .line 450
    :cond_5
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/foundation/MagnifierNode;->sourceCenterInRoot:J

    .line 451
    iget-object p0, p0, Landroidx/compose/foundation/MagnifierNode;->magnifier:Landroidx/compose/foundation/PlatformMagnifier;

    if-eqz p0, :cond_6

    invoke-interface {p0}, Landroidx/compose/foundation/PlatformMagnifier;->dismiss()V

    :cond_6
    return-void
.end method

.method private final updateSizeIfNecessary()V
    .locals 5

    .line 455
    iget-object v0, p0, Landroidx/compose/foundation/MagnifierNode;->magnifier:Landroidx/compose/foundation/PlatformMagnifier;

    if-nez v0, :cond_0

    return-void

    .line 456
    :cond_0
    iget-object v1, p0, Landroidx/compose/foundation/MagnifierNode;->density:Landroidx/compose/ui/unit/Density;

    if-nez v1, :cond_1

    return-void

    .line 458
    :cond_1
    invoke-interface {v0}, Landroidx/compose/foundation/PlatformMagnifier;->getSize-YbymL2g()J

    move-result-wide v2

    iget-object v4, p0, Landroidx/compose/foundation/MagnifierNode;->previousSize:Landroidx/compose/ui/unit/IntSize;

    invoke-static {v2, v3, v4}, Landroidx/compose/ui/unit/IntSize;->equals-impl(JLjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 459
    iget-object v2, p0, Landroidx/compose/foundation/MagnifierNode;->onSizeChanged:Lkotlin/jvm/functions/Function1;

    if-eqz v2, :cond_2

    invoke-interface {v0}, Landroidx/compose/foundation/PlatformMagnifier;->getSize-YbymL2g()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntSizeKt;->toSize-ozmzZPI(J)J

    move-result-wide v3

    invoke-interface {v1, v3, v4}, Landroidx/compose/ui/unit/Density;->toDpSize-k-rfVVM(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/unit/DpSize;->box-impl(J)Landroidx/compose/ui/unit/DpSize;

    move-result-object v1

    invoke-interface {v2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    :cond_2
    invoke-interface {v0}, Landroidx/compose/foundation/PlatformMagnifier;->getSize-YbymL2g()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSize;->box-impl(J)Landroidx/compose/ui/unit/IntSize;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/MagnifierNode;->previousSize:Landroidx/compose/ui/unit/IntSize;

    :cond_3
    return-void
.end method


# virtual methods
.method public applySemantics(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V
    .locals 2

    .line 477
    invoke-static {}, Landroidx/compose/foundation/Magnifier_androidKt;->getMagnifierPositionInRoot()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    new-instance v1, Landroidx/compose/foundation/MagnifierNode$applySemantics$1;

    invoke-direct {v1, p0}, Landroidx/compose/foundation/MagnifierNode$applySemantics$1;-><init>(Landroidx/compose/foundation/MagnifierNode;)V

    invoke-interface {p1, v0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    return-void
.end method

.method public draw(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V
    .locals 0

    .line 465
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->drawContent()V

    .line 466
    iget-object p0, p0, Landroidx/compose/foundation/MagnifierNode;->drawSignalChannel:Lkotlinx/coroutines/channels/Channel;

    if-eqz p0, :cond_0

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlinx/coroutines/channels/ChannelResult;->box-impl(Ljava/lang/Object;)Lkotlinx/coroutines/channels/ChannelResult;

    :cond_0
    return-void
.end method

.method public onAttach()V
    .locals 9

    .line 376
    invoke-virtual {p0}, Landroidx/compose/foundation/MagnifierNode;->onObservedReadsChanged()V

    const/4 v0, 0x7

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 377
    invoke-static {v1, v2, v2, v0, v2}, Lkotlinx/coroutines/channels/ChannelKt;->Channel$default(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/channels/Channel;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/MagnifierNode;->drawSignalChannel:Lkotlinx/coroutines/channels/Channel;

    .line 378
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v3

    new-instance v6, Landroidx/compose/foundation/MagnifierNode$onAttach$1;

    invoke-direct {v6, p0, v2}, Landroidx/compose/foundation/MagnifierNode$onAttach$1;-><init>(Landroidx/compose/foundation/MagnifierNode;Lkotlin/coroutines/Continuation;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 392
    iget-object v0, p0, Landroidx/compose/foundation/MagnifierNode;->magnifier:Landroidx/compose/foundation/PlatformMagnifier;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/compose/foundation/PlatformMagnifier;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 393
    iput-object v0, p0, Landroidx/compose/foundation/MagnifierNode;->magnifier:Landroidx/compose/foundation/PlatformMagnifier;

    return-void
.end method

.method public onGloballyPositioned(Landroidx/compose/ui/layout/LayoutCoordinates;)V
    .locals 0

    .line 473
    invoke-direct {p0, p1}, Landroidx/compose/foundation/MagnifierNode;->setLayoutCoordinates(Landroidx/compose/ui/layout/LayoutCoordinates;)V

    return-void
.end method

.method public onObservedReadsChanged()V
    .locals 1

    .line 397
    new-instance v0, Landroidx/compose/foundation/MagnifierNode$onObservedReadsChanged$1;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/MagnifierNode$onObservedReadsChanged$1;-><init>(Landroidx/compose/foundation/MagnifierNode;)V

    invoke-static {p0, v0}, Landroidx/compose/ui/node/ObserverModifierNodeKt;->observeReads(Landroidx/compose/ui/Modifier$Node;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final update-5F03MCQ(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;FZJFFZLkotlin/jvm/functions/Function1;Landroidx/compose/foundation/PlatformMagnifierFactory;)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    move-object/from16 v8, p11

    .line 326
    iget v9, v0, Landroidx/compose/foundation/MagnifierNode;->zoom:F

    .line 327
    iget-wide v10, v0, Landroidx/compose/foundation/MagnifierNode;->size:J

    .line 328
    iget v12, v0, Landroidx/compose/foundation/MagnifierNode;->cornerRadius:F

    .line 329
    iget-boolean v13, v0, Landroidx/compose/foundation/MagnifierNode;->useTextDefault:Z

    .line 330
    iget v14, v0, Landroidx/compose/foundation/MagnifierNode;->elevation:F

    .line 331
    iget-boolean v15, v0, Landroidx/compose/foundation/MagnifierNode;->clippingEnabled:Z

    move/from16 v16, v15

    .line 332
    iget-object v15, v0, Landroidx/compose/foundation/MagnifierNode;->platformMagnifierFactory:Landroidx/compose/foundation/PlatformMagnifierFactory;

    move-object/from16 v17, v15

    .line 333
    iget-object v15, v0, Landroidx/compose/foundation/MagnifierNode;->view:Landroid/view/View;

    move-object/from16 v18, v15

    .line 334
    iget-object v15, v0, Landroidx/compose/foundation/MagnifierNode;->density:Landroidx/compose/ui/unit/Density;

    move-object/from16 v19, v15

    move-object/from16 v15, p1

    .line 336
    iput-object v15, v0, Landroidx/compose/foundation/MagnifierNode;->sourceCenter:Lkotlin/jvm/functions/Function1;

    move-object/from16 v15, p2

    .line 337
    iput-object v15, v0, Landroidx/compose/foundation/MagnifierNode;->magnifierCenter:Lkotlin/jvm/functions/Function1;

    .line 338
    iput v1, v0, Landroidx/compose/foundation/MagnifierNode;->zoom:F

    .line 339
    iput-boolean v2, v0, Landroidx/compose/foundation/MagnifierNode;->useTextDefault:Z

    .line 340
    iput-wide v3, v0, Landroidx/compose/foundation/MagnifierNode;->size:J

    .line 341
    iput v5, v0, Landroidx/compose/foundation/MagnifierNode;->cornerRadius:F

    .line 342
    iput v6, v0, Landroidx/compose/foundation/MagnifierNode;->elevation:F

    .line 343
    iput-boolean v7, v0, Landroidx/compose/foundation/MagnifierNode;->clippingEnabled:Z

    move-object/from16 v15, p10

    .line 344
    iput-object v15, v0, Landroidx/compose/foundation/MagnifierNode;->onSizeChanged:Lkotlin/jvm/functions/Function1;

    .line 345
    iput-object v8, v0, Landroidx/compose/foundation/MagnifierNode;->platformMagnifierFactory:Landroidx/compose/foundation/PlatformMagnifierFactory;

    .line 347
    invoke-static/range {p0 .. p0}, Landroidx/compose/ui/node/DelegatableNode_androidKt;->requireView(Landroidx/compose/ui/node/DelegatableNode;)Landroid/view/View;

    move-result-object v15

    move-object/from16 p1, v15

    .line 348
    invoke-static/range {p0 .. p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireDensity(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/unit/Density;

    move-result-object v15

    move-object/from16 p2, v15

    .line 351
    iget-object v15, v0, Landroidx/compose/foundation/MagnifierNode;->magnifier:Landroidx/compose/foundation/PlatformMagnifier;

    if-eqz v15, :cond_2

    .line 357
    invoke-static {v1, v9}, Landroidx/compose/foundation/Magnifier_androidKt;->equalsIncludingNaN(FF)Z

    move-result v1

    if-nez v1, :cond_0

    .line 358
    invoke-interface/range {p11 .. p11}, Landroidx/compose/foundation/PlatformMagnifierFactory;->getCanUpdateZoom()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 359
    :cond_0
    invoke-static {v3, v4, v10, v11}, Landroidx/compose/ui/unit/DpSize;->equals-impl0(JJ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 360
    invoke-static {v5, v12}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 361
    invoke-static {v6, v14}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v1

    if-eqz v1, :cond_1

    if-ne v2, v13, :cond_1

    move/from16 v1, v16

    if-ne v7, v1, :cond_1

    move-object/from16 v1, v17

    .line 364
    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v2, p1

    move-object/from16 v1, v18

    .line 365
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v2, p2

    move-object/from16 v1, v19

    .line 366
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 369
    :cond_1
    invoke-direct/range {p0 .. p0}, Landroidx/compose/foundation/MagnifierNode;->recreateMagnifier()V

    .line 372
    :cond_2
    invoke-direct/range {p0 .. p0}, Landroidx/compose/foundation/MagnifierNode;->updateMagnifier()V

    return-void
.end method
