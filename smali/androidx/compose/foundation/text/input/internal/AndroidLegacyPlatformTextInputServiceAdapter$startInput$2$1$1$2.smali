.class final Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter$startInput$2$1$1$2;
.super Ljava/lang/Object;
.source "LegacyPlatformTextInputServiceAdapter.android.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field final synthetic $inputMethodManager:Landroidx/compose/foundation/text/input/internal/InputMethodManager;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/text/input/internal/InputMethodManager;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter$startInput$2$1$1$2;->$inputMethodManager:Landroidx/compose/foundation/text/input/internal/InputMethodManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 142
    check-cast p1, Lkotlin/Unit;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter$startInput$2$1$1$2;->emit(Lkotlin/Unit;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final emit(Lkotlin/Unit;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 143
    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter$startInput$2$1$1$2;->$inputMethodManager:Landroidx/compose/foundation/text/input/internal/InputMethodManager;

    invoke-interface {p0}, Landroidx/compose/foundation/text/input/internal/InputMethodManager;->startStylusHandwriting()V

    .line 144
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
