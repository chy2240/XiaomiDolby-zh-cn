.class final Landroidx/compose/ui/platform/AndroidPlatformTextInputSession$startInputMethod$2;
.super Lkotlin/jvm/internal/Lambda;
.source "AndroidPlatformTextInputSession.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $request:Landroidx/compose/ui/platform/PlatformTextInputMethodRequest;

.field final synthetic this$0:Landroidx/compose/ui/platform/AndroidPlatformTextInputSession;


# direct methods
.method constructor <init>(Landroidx/compose/ui/platform/PlatformTextInputMethodRequest;Landroidx/compose/ui/platform/AndroidPlatformTextInputSession;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidPlatformTextInputSession$startInputMethod$2;->$request:Landroidx/compose/ui/platform/PlatformTextInputMethodRequest;

    iput-object p2, p0, Landroidx/compose/ui/platform/AndroidPlatformTextInputSession$startInputMethod$2;->this$0:Landroidx/compose/ui/platform/AndroidPlatformTextInputSession;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lkotlinx/coroutines/CoroutineScope;)Landroidx/compose/ui/platform/InputMethodSession;
    .locals 2

    .line 73
    new-instance p1, Landroidx/compose/ui/platform/InputMethodSession;

    .line 74
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidPlatformTextInputSession$startInputMethod$2;->$request:Landroidx/compose/ui/platform/PlatformTextInputMethodRequest;

    .line 75
    new-instance v1, Landroidx/compose/ui/platform/AndroidPlatformTextInputSession$startInputMethod$2$1;

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidPlatformTextInputSession$startInputMethod$2;->this$0:Landroidx/compose/ui/platform/AndroidPlatformTextInputSession;

    invoke-direct {v1, p0}, Landroidx/compose/ui/platform/AndroidPlatformTextInputSession$startInputMethod$2$1;-><init>(Landroidx/compose/ui/platform/AndroidPlatformTextInputSession;)V

    .line 73
    invoke-direct {p1, v0, v1}, Landroidx/compose/ui/platform/InputMethodSession;-><init>(Landroidx/compose/ui/platform/PlatformTextInputMethodRequest;Lkotlin/jvm/functions/Function0;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 71
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/platform/AndroidPlatformTextInputSession$startInputMethod$2;->invoke(Lkotlinx/coroutines/CoroutineScope;)Landroidx/compose/ui/platform/InputMethodSession;

    move-result-object p0

    return-object p0
.end method
