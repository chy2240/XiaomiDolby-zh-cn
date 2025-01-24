.class final Landroidx/compose/ui/platform/AndroidPlatformTextInputSession$startInputMethod$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AndroidPlatformTextInputSession.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Landroidx/compose/ui/platform/AndroidPlatformTextInputSession;


# direct methods
.method constructor <init>(Landroidx/compose/ui/platform/AndroidPlatformTextInputSession;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidPlatformTextInputSession$startInputMethod$2$1;->this$0:Landroidx/compose/ui/platform/AndroidPlatformTextInputSession;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 75
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidPlatformTextInputSession$startInputMethod$2$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 2

    .line 75
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidPlatformTextInputSession$startInputMethod$2$1;->this$0:Landroidx/compose/ui/platform/AndroidPlatformTextInputSession;

    invoke-static {p0}, Landroidx/compose/ui/platform/AndroidPlatformTextInputSession;->access$getCoroutineScope$p(Landroidx/compose/ui/platform/AndroidPlatformTextInputSession;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel$default(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    return-void
.end method
