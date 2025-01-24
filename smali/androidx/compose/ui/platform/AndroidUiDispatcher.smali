.class public final Landroidx/compose/ui/platform/AndroidUiDispatcher;
.super Lkotlinx/coroutines/CoroutineDispatcher;
.source "AndroidUiDispatcher.android.kt"


# static fields
.field public static final $stable:I

.field public static final Companion:Landroidx/compose/ui/platform/AndroidUiDispatcher$Companion;

.field private static final Main$delegate:Lkotlin/Lazy;

.field private static final currentThread:Ljava/lang/ThreadLocal;


# instance fields
.field private final choreographer:Landroid/view/Choreographer;

.field private final dispatchCallback:Landroidx/compose/ui/platform/AndroidUiDispatcher$dispatchCallback$1;

.field private final frameClock:Landroidx/compose/runtime/MonotonicFrameClock;

.field private final handler:Landroid/os/Handler;

.field private final lock:Ljava/lang/Object;

.field private scheduledFrameDispatch:Z

.field private scheduledTrampolineDispatch:Z

.field private spareToRunOnFrame:Ljava/util/List;

.field private toRunOnFrame:Ljava/util/List;

.field private final toRunTrampolined:Lkotlin/collections/ArrayDeque;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/platform/AndroidUiDispatcher$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/platform/AndroidUiDispatcher$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->Companion:Landroidx/compose/ui/platform/AndroidUiDispatcher$Companion;

    const/16 v0, 0x8

    sput v0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->$stable:I

    .line 152
    sget-object v0, Landroidx/compose/ui/platform/AndroidUiDispatcher$Companion$Main$2;->INSTANCE:Landroidx/compose/ui/platform/AndroidUiDispatcher$Companion$Main$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->Main$delegate:Lkotlin/Lazy;

    .line 164
    new-instance v0, Landroidx/compose/ui/platform/AndroidUiDispatcher$Companion$currentThread$1;

    invoke-direct {v0}, Landroidx/compose/ui/platform/AndroidUiDispatcher$Companion$currentThread$1;-><init>()V

    sput-object v0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->currentThread:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>(Landroid/view/Choreographer;Landroid/os/Handler;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lkotlinx/coroutines/CoroutineDispatcher;-><init>()V

    .line 42
    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->choreographer:Landroid/view/Choreographer;

    iput-object p2, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->handler:Landroid/os/Handler;

    .line 46
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->lock:Ljava/lang/Object;

    .line 48
    new-instance p2, Lkotlin/collections/ArrayDeque;

    invoke-direct {p2}, Lkotlin/collections/ArrayDeque;-><init>()V

    iput-object p2, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->toRunTrampolined:Lkotlin/collections/ArrayDeque;

    .line 49
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->toRunOnFrame:Ljava/util/List;

    .line 50
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->spareToRunOnFrame:Ljava/util/List;

    .line 55
    new-instance p2, Landroidx/compose/ui/platform/AndroidUiDispatcher$dispatchCallback$1;

    invoke-direct {p2, p0}, Landroidx/compose/ui/platform/AndroidUiDispatcher$dispatchCallback$1;-><init>(Landroidx/compose/ui/platform/AndroidUiDispatcher;)V

    iput-object p2, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->dispatchCallback:Landroidx/compose/ui/platform/AndroidUiDispatcher$dispatchCallback$1;

    .line 131
    new-instance p2, Landroidx/compose/ui/platform/AndroidUiFrameClock;

    invoke-direct {p2, p1, p0}, Landroidx/compose/ui/platform/AndroidUiFrameClock;-><init>(Landroid/view/Choreographer;Landroidx/compose/ui/platform/AndroidUiDispatcher;)V

    iput-object p2, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->frameClock:Landroidx/compose/runtime/MonotonicFrameClock;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/Choreographer;Landroid/os/Handler;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/platform/AndroidUiDispatcher;-><init>(Landroid/view/Choreographer;Landroid/os/Handler;)V

    return-void
.end method

.method public static final synthetic access$getCurrentThread$cp()Ljava/lang/ThreadLocal;
    .locals 1

    .line 41
    sget-object v0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->currentThread:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method public static final synthetic access$getHandler$p(Landroidx/compose/ui/platform/AndroidUiDispatcher;)Landroid/os/Handler;
    .locals 0

    .line 41
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic access$getLock$p(Landroidx/compose/ui/platform/AndroidUiDispatcher;)Ljava/lang/Object;
    .locals 0

    .line 41
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->lock:Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic access$getMain$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 41
    sget-object v0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->Main$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic access$getToRunOnFrame$p(Landroidx/compose/ui/platform/AndroidUiDispatcher;)Ljava/util/List;
    .locals 0

    .line 41
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->toRunOnFrame:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$performFrameDispatch(Landroidx/compose/ui/platform/AndroidUiDispatcher;J)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/platform/AndroidUiDispatcher;->performFrameDispatch(J)V

    return-void
.end method

.method public static final synthetic access$performTrampolineDispatch(Landroidx/compose/ui/platform/AndroidUiDispatcher;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidUiDispatcher;->performTrampolineDispatch()V

    return-void
.end method

.method public static final synthetic access$setScheduledFrameDispatch$p(Landroidx/compose/ui/platform/AndroidUiDispatcher;Z)V
    .locals 0

    .line 41
    iput-boolean p1, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->scheduledFrameDispatch:Z

    return-void
.end method

.method private final nextTask()Ljava/lang/Runnable;
    .locals 1

    .line 73
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->lock:Ljava/lang/Object;

    .line 38
    monitor-enter v0

    .line 73
    :try_start_0
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->toRunTrampolined:Lkotlin/collections/ArrayDeque;

    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->removeFirstOrNull()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private final performFrameDispatch(J)V
    .locals 4

    .line 98
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->lock:Ljava/lang/Object;

    .line 38
    monitor-enter v0

    .line 99
    :try_start_0
    iget-boolean v1, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->scheduledFrameDispatch:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 100
    :try_start_1
    iput-boolean v1, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->scheduledFrameDispatch:Z

    .line 101
    iget-object v2, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->toRunOnFrame:Ljava/util/List;

    .line 102
    iget-object v3, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->spareToRunOnFrame:Ljava/util/List;

    iput-object v3, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->toRunOnFrame:Ljava/util/List;

    .line 103
    iput-object v2, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->spareToRunOnFrame:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    monitor-exit v0

    .line 106
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    if-ge v1, p0, :cond_1

    .line 108
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Choreographer$FrameCallback;

    invoke-interface {v0, p1, p2}, Landroid/view/Choreographer$FrameCallback;->doFrame(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 110
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->clear()V

    return-void

    :catchall_0
    move-exception p0

    .line 38
    monitor-exit v0

    throw p0
.end method

.method private final performTrampolineDispatch()V
    .locals 2

    .line 77
    :cond_0
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidUiDispatcher;->nextTask()Ljava/lang/Runnable;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 79
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 80
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidUiDispatcher;->nextTask()Ljava/lang/Runnable;

    move-result-object v0

    goto :goto_0

    .line 87
    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->lock:Ljava/lang/Object;

    .line 38
    monitor-enter v0

    .line 88
    :try_start_0
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->toRunTrampolined:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v1}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 89
    iput-boolean v1, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->scheduledTrampolineDispatch:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    const/4 v1, 0x1

    .line 38
    :goto_1
    monitor-exit v0

    if-nez v1, :cond_0

    return-void

    :goto_2
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    .locals 2

    .line 134
    iget-object p1, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->lock:Ljava/lang/Object;

    .line 38
    monitor-enter p1

    .line 135
    :try_start_0
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->toRunTrampolined:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0, p2}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 136
    iget-boolean p2, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->scheduledTrampolineDispatch:Z

    if-nez p2, :cond_0

    const/4 p2, 0x1

    .line 137
    iput-boolean p2, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->scheduledTrampolineDispatch:Z

    .line 138
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->handler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->dispatchCallback:Landroidx/compose/ui/platform/AndroidUiDispatcher$dispatchCallback$1;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 139
    iget-boolean v0, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->scheduledFrameDispatch:Z

    if-nez v0, :cond_0

    .line 140
    iput-boolean p2, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->scheduledFrameDispatch:Z

    .line 141
    iget-object p2, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->choreographer:Landroid/view/Choreographer;

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->dispatchCallback:Landroidx/compose/ui/platform/AndroidUiDispatcher$dispatchCallback$1;

    invoke-virtual {p2, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 144
    :cond_0
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1

    throw p0
.end method

.method public final getChoreographer()Landroid/view/Choreographer;
    .locals 0

    .line 42
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->choreographer:Landroid/view/Choreographer;

    return-object p0
.end method

.method public final getFrameClock()Landroidx/compose/runtime/MonotonicFrameClock;
    .locals 0

    .line 131
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->frameClock:Landroidx/compose/runtime/MonotonicFrameClock;

    return-object p0
.end method

.method public final postFrameCallback$ui_release(Landroid/view/Choreographer$FrameCallback;)V
    .locals 2

    .line 114
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->lock:Ljava/lang/Object;

    .line 38
    monitor-enter v0

    .line 115
    :try_start_0
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->toRunOnFrame:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    iget-boolean p1, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->scheduledFrameDispatch:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 117
    iput-boolean p1, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->scheduledFrameDispatch:Z

    .line 118
    iget-object p1, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->choreographer:Landroid/view/Choreographer;

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->dispatchCallback:Landroidx/compose/ui/platform/AndroidUiDispatcher$dispatchCallback$1;

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 120
    :cond_0
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public final removeFrameCallback$ui_release(Landroid/view/Choreographer$FrameCallback;)V
    .locals 1

    .line 124
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->lock:Ljava/lang/Object;

    .line 38
    monitor-enter v0

    .line 124
    :try_start_0
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->toRunOnFrame:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
