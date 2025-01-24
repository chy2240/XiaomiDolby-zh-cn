.class public final Landroidx/compose/ui/platform/AndroidUiDispatcher$Companion$currentThread$1;
.super Ljava/lang/ThreadLocal;
.source "AndroidUiDispatcher.android.kt"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 164
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic initialValue()Ljava/lang/Object;
    .locals 0

    .line 164
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidUiDispatcher$Companion$currentThread$1;->initialValue()Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    return-object p0
.end method

.method protected initialValue()Lkotlin/coroutines/CoroutineContext;
    .locals 3

    .line 166
    new-instance p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;

    .line 167
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    .line 169
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 168
    invoke-static {v1}, Landroidx/core/os/HandlerCompat;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    .line 166
    invoke-direct {p0, v0, v1, v2}, Landroidx/compose/ui/platform/AndroidUiDispatcher;-><init>(Landroid/view/Choreographer;Landroid/os/Handler;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 172
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidUiDispatcher;->getFrameClock()Landroidx/compose/runtime/MonotonicFrameClock;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlin/coroutines/AbstractCoroutineContextElement;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    return-object p0

    .line 169
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "no Looper on this thread"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
