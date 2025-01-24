.class final Landroidx/compose/ui/platform/InputMethodSession;
.super Ljava/lang/Object;
.source "AndroidPlatformTextInputSession.android.kt"


# instance fields
.field private connections:Landroidx/compose/runtime/collection/MutableVector;

.field private disposed:Z

.field private final lock:Ljava/lang/Object;

.field private final onAllConnectionsClosed:Lkotlin/jvm/functions/Function0;

.field private final request:Landroidx/compose/ui/platform/PlatformTextInputMethodRequest;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/platform/PlatformTextInputMethodRequest;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Landroidx/compose/ui/platform/InputMethodSession;->request:Landroidx/compose/ui/platform/PlatformTextInputMethodRequest;

    .line 119
    iput-object p2, p0, Landroidx/compose/ui/platform/InputMethodSession;->onAllConnectionsClosed:Lkotlin/jvm/functions/Function0;

    .line 121
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/platform/InputMethodSession;->lock:Ljava/lang/Object;

    .line 1130
    new-instance p1, Landroidx/compose/runtime/collection/MutableVector;

    const/16 p2, 0x10

    new-array p2, p2, [Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 122
    iput-object p1, p0, Landroidx/compose/ui/platform/InputMethodSession;->connections:Landroidx/compose/runtime/collection/MutableVector;

    return-void
.end method

.method public static final synthetic access$getConnections$p(Landroidx/compose/ui/platform/InputMethodSession;)Landroidx/compose/runtime/collection/MutableVector;
    .locals 0

    .line 117
    iget-object p0, p0, Landroidx/compose/ui/platform/InputMethodSession;->connections:Landroidx/compose/runtime/collection/MutableVector;

    return-object p0
.end method

.method public static final synthetic access$getOnAllConnectionsClosed$p(Landroidx/compose/ui/platform/InputMethodSession;)Lkotlin/jvm/functions/Function0;
    .locals 0

    .line 117
    iget-object p0, p0, Landroidx/compose/ui/platform/InputMethodSession;->onAllConnectionsClosed:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method


# virtual methods
.method public final createInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2

    .line 136
    iget-object v0, p0, Landroidx/compose/ui/platform/InputMethodSession;->lock:Ljava/lang/Object;

    .line 38
    monitor-enter v0

    .line 137
    :try_start_0
    iget-boolean v1, p0, Landroidx/compose/ui/platform/InputMethodSession;->disposed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    .line 142
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroidx/compose/ui/platform/InputMethodSession;->request:Landroidx/compose/ui/platform/PlatformTextInputMethodRequest;

    invoke-interface {v1, p1}, Landroidx/compose/ui/platform/PlatformTextInputMethodRequest;->createInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    .line 143
    new-instance v1, Landroidx/compose/ui/platform/InputMethodSession$createInputConnection$1$1;

    invoke-direct {v1, p0}, Landroidx/compose/ui/platform/InputMethodSession$createInputConnection$1$1;-><init>(Landroidx/compose/ui/platform/InputMethodSession;)V

    invoke-static {p1, v1}, Landroidx/compose/ui/text/input/NullableInputConnectionWrapper_androidKt;->NullableInputConnectionWrapper(Landroid/view/inputmethod/InputConnection;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/text/input/NullableInputConnectionWrapper;

    move-result-object p1

    .line 163
    iget-object p0, p0, Landroidx/compose/ui/platform/InputMethodSession;->connections:Landroidx/compose/runtime/collection/MutableVector;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final dispose()V
    .locals 6

    const/4 v0, 0x1

    .line 175
    iget-object v1, p0, Landroidx/compose/ui/platform/InputMethodSession;->lock:Ljava/lang/Object;

    .line 38
    monitor-enter v1

    .line 177
    :try_start_0
    iput-boolean v0, p0, Landroidx/compose/ui/platform/InputMethodSession;->disposed:Z

    .line 178
    iget-object v2, p0, Landroidx/compose/ui/platform/InputMethodSession;->connections:Landroidx/compose/runtime/collection/MutableVector;

    .line 434
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v3

    if-lez v3, :cond_2

    .line 437
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v2

    const/4 v4, 0x0

    .line 439
    :cond_0
    aget-object v5, v2, v4

    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 178
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/text/input/NullableInputConnectionWrapper;

    if-eqz v5, :cond_1

    invoke-interface {v5}, Landroidx/compose/ui/text/input/NullableInputConnectionWrapper;->disposeDelegate()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    add-int/2addr v4, v0

    if-lt v4, v3, :cond_0

    .line 179
    :cond_2
    iget-object p0, p0, Landroidx/compose/ui/platform/InputMethodSession;->connections:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    .line 180
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1

    throw p0
.end method

.method public final isActive()Z
    .locals 0

    .line 126
    iget-boolean p0, p0, Landroidx/compose/ui/platform/InputMethodSession;->disposed:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
