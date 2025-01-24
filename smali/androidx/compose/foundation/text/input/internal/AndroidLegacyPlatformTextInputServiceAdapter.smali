.class public final Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter;
.super Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter;
.source "LegacyPlatformTextInputServiceAdapter.android.kt"


# instance fields
.field private backingStylusHandwritingTrigger:Lkotlinx/coroutines/flow/MutableSharedFlow;

.field private currentRequest:Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;

.field private job:Lkotlinx/coroutines/Job;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter;-><init>()V

    return-void
.end method

.method public static final synthetic access$getStylusHandwritingTrigger(Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter;)Lkotlinx/coroutines/flow/MutableSharedFlow;
    .locals 0

    .line 64
    invoke-direct {p0}, Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter;->getStylusHandwritingTrigger()Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setCurrentRequest$p(Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter;Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;)V
    .locals 0

    .line 64
    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter;->currentRequest:Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;

    return-void
.end method

.method public static final synthetic access$startInput$localToScreen(Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter$LegacyPlatformTextInputNode;[F)V
    .locals 0

    .line 64
    invoke-static {p0, p1}, Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter;->startInput$localToScreen(Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter$LegacyPlatformTextInputNode;[F)V

    return-void
.end method

.method private final getStylusHandwritingTrigger()Lkotlinx/coroutines/flow/MutableSharedFlow;
    .locals 5

    .line 72
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter;->backingStylusHandwritingTrigger:Lkotlinx/coroutines/flow/MutableSharedFlow;

    if-eqz v0, :cond_0

    return-object v0

    .line 76
    :cond_0
    invoke-static {}, Landroidx/compose/foundation/text/handwriting/StylusHandwriting_androidKt;->isStylusHandwritingSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    .line 81
    :cond_1
    sget-object v0, Lkotlinx/coroutines/channels/BufferOverflow;->DROP_LATEST:Lkotlinx/coroutines/channels/BufferOverflow;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 79
    invoke-static {v3, v4, v0, v2, v1}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;ILjava/lang/Object;)Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object v0

    .line 83
    iput-object v0, p0, Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter;->backingStylusHandwritingTrigger:Lkotlinx/coroutines/flow/MutableSharedFlow;

    return-object v0
.end method

.method private final startInput(Lkotlin/jvm/functions/Function1;)V
    .locals 3

    .line 115
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter;->getTextInputModifierNode()Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter$LegacyPlatformTextInputNode;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 125
    :cond_0
    new-instance v1, Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter$startInput$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v0, v2}, Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter$startInput$2;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter;Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter$LegacyPlatformTextInputNode;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v0, v1}, Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter$LegacyPlatformTextInputNode;->launchTextInputSession(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    move-result-object p1

    .line 124
    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter;->job:Lkotlinx/coroutines/Job;

    return-void
.end method

.method private static final startInput$localToScreen(Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter$LegacyPlatformTextInputNode;[F)V
    .locals 1

    .line 118
    invoke-interface {p0}, Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter$LegacyPlatformTextInputNode;->getLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Landroidx/compose/ui/layout/LayoutCoordinates;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    goto :goto_1

    .line 119
    :cond_1
    invoke-static {p0, p1}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->transformToScreen-EL8BTi8(Landroidx/compose/ui/layout/LayoutCoordinates;[F)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public notifyFocusedRect(Landroidx/compose/ui/geometry/Rect;)V
    .locals 0

    .line 173
    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter;->currentRequest:Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->notifyFocusedRect(Landroidx/compose/ui/geometry/Rect;)V

    :cond_0
    return-void
.end method

.method public startInput()V
    .locals 1

    const/4 v0, 0x0

    .line 107
    invoke-direct {p0, v0}, Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter;->startInput(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public startInput(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/ImeOptions;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 7

    .line 92
    new-instance v6, Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter$startInput$1;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter$startInput$1;-><init>(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter;Landroidx/compose/ui/text/input/ImeOptions;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    invoke-direct {p0, v6}, Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter;->startInput(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public startStylusHandwriting()V
    .locals 1

    .line 198
    invoke-direct {p0}, Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter;->getStylusHandwritingTrigger()Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {p0, v0}, Lkotlinx/coroutines/flow/MutableSharedFlow;->tryEmit(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public stopInput()V
    .locals 3

    .line 163
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter;->job:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 164
    :cond_0
    iput-object v1, p0, Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter;->job:Lkotlinx/coroutines/Job;

    .line 165
    invoke-direct {p0}, Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter;->getStylusHandwritingTrigger()Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableSharedFlow;->resetReplayCache()V

    :cond_1
    return-void
.end method

.method public updateState(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/TextFieldValue;)V
    .locals 0

    .line 169
    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter;->currentRequest:Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->updateState(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/TextFieldValue;)V

    :cond_0
    return-void
.end method

.method public updateTextLayoutResult(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/ui/text/TextLayoutResult;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;)V
    .locals 6

    .line 184
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter;->currentRequest:Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->updateTextLayoutResult(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/ui/text/TextLayoutResult;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;)V

    :cond_0
    return-void
.end method
