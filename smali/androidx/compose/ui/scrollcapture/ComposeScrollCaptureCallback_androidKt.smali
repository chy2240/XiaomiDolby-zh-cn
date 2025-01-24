.class public abstract Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback_androidKt;
.super Ljava/lang/Object;
.source "ComposeScrollCaptureCallback.android.kt"


# direct methods
.method public static synthetic $r8$lambda$D0mBs1SNEZATJcjSNqO_xrqgagQ(Lkotlinx/coroutines/Job;)V
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback_androidKt;->launchWithCancellationSignal$lambda$0(Lkotlinx/coroutines/Job;)V

    return-void
.end method

.method public static final synthetic access$launchWithCancellationSignal(Lkotlinx/coroutines/CoroutineScope;Landroid/os/CancellationSignal;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback_androidKt;->launchWithCancellationSignal(Lkotlinx/coroutines/CoroutineScope;Landroid/os/CancellationSignal;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    move-result-object p0

    return-object p0
.end method

.method private static final launchWithCancellationSignal(Lkotlinx/coroutines/CoroutineScope;Landroid/os/CancellationSignal;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;
    .locals 6

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p2

    .line 237
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p0

    .line 238
    new-instance p2, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback_androidKt$launchWithCancellationSignal$1;

    invoke-direct {p2, p1}, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback_androidKt$launchWithCancellationSignal$1;-><init>(Landroid/os/CancellationSignal;)V

    invoke-interface {p0, p2}, Lkotlinx/coroutines/Job;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    .line 243
    new-instance p2, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback_androidKt$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback_androidKt$$ExternalSyntheticLambda0;-><init>(Lkotlinx/coroutines/Job;)V

    invoke-virtual {p1, p2}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    return-object p0
.end method

.method private static final launchWithCancellationSignal$lambda$0(Lkotlinx/coroutines/Job;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 243
    invoke-static {p0, v0, v1, v0}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    return-void
.end method
