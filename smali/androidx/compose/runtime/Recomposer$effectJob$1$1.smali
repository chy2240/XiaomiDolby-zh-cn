.class final Landroidx/compose/runtime/Recomposer$effectJob$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Recomposer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic this$0:Landroidx/compose/runtime/Recomposer;


# direct methods
.method constructor <init>(Landroidx/compose/runtime/Recomposer;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/runtime/Recomposer$effectJob$1$1;->this$0:Landroidx/compose/runtime/Recomposer;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 250
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/Recomposer$effectJob$1$1;->invoke(Ljava/lang/Throwable;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 6

    .line 254
    const-string v0, "Recomposer effect job completed"

    invoke-static {v0, p1}, Lkotlinx/coroutines/ExceptionsKt;->CancellationException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    move-result-object v0

    .line 257
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer$effectJob$1$1;->this$0:Landroidx/compose/runtime/Recomposer;

    invoke-static {v1}, Landroidx/compose/runtime/Recomposer;->access$getStateLock$p(Landroidx/compose/runtime/Recomposer;)Ljava/lang/Object;

    move-result-object v1

    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$effectJob$1$1;->this$0:Landroidx/compose/runtime/Recomposer;

    .line 27
    monitor-enter v1

    .line 258
    :try_start_0
    invoke-static {p0}, Landroidx/compose/runtime/Recomposer;->access$getRunnerJob$p(Landroidx/compose/runtime/Recomposer;)Lkotlinx/coroutines/Job;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 260
    invoke-static {p0}, Landroidx/compose/runtime/Recomposer;->access$get_state$p(Landroidx/compose/runtime/Recomposer;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    sget-object v5, Landroidx/compose/runtime/Recomposer$State;->ShuttingDown:Landroidx/compose/runtime/Recomposer$State;

    invoke-interface {v4, v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 264
    invoke-static {p0}, Landroidx/compose/runtime/Recomposer;->access$isClosed$p(Landroidx/compose/runtime/Recomposer;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 267
    invoke-interface {v2, v0}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 268
    :cond_0
    invoke-static {p0}, Landroidx/compose/runtime/Recomposer;->access$getWorkContinuation$p(Landroidx/compose/runtime/Recomposer;)Lkotlinx/coroutines/CancellableContinuation;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 269
    invoke-static {p0}, Landroidx/compose/runtime/Recomposer;->access$getWorkContinuation$p(Landroidx/compose/runtime/Recomposer;)Lkotlinx/coroutines/CancellableContinuation;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    move-object v0, v3

    .line 271
    :goto_1
    invoke-static {p0, v3}, Landroidx/compose/runtime/Recomposer;->access$setWorkContinuation$p(Landroidx/compose/runtime/Recomposer;Lkotlinx/coroutines/CancellableContinuation;)V

    .line 272
    new-instance v3, Landroidx/compose/runtime/Recomposer$effectJob$1$1$1$1;

    invoke-direct {v3, p0, p1}, Landroidx/compose/runtime/Recomposer$effectJob$1$1$1$1;-><init>(Landroidx/compose/runtime/Recomposer;Ljava/lang/Throwable;)V

    invoke-interface {v2, v3}, Lkotlinx/coroutines/Job;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    move-object v3, v0

    goto :goto_2

    .line 284
    :cond_2
    invoke-static {p0, v0}, Landroidx/compose/runtime/Recomposer;->access$setCloseCause$p(Landroidx/compose/runtime/Recomposer;Ljava/lang/Throwable;)V

    .line 285
    invoke-static {p0}, Landroidx/compose/runtime/Recomposer;->access$get_state$p(Landroidx/compose/runtime/Recomposer;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p0

    sget-object p1, Landroidx/compose/runtime/Recomposer$State;->ShutDown:Landroidx/compose/runtime/Recomposer$State;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :goto_2
    monitor-exit v1

    if-eqz v3, :cond_3

    .line 288
    sget-object p0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v3, p0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :cond_3
    return-void

    .line 27
    :goto_3
    monitor-exit v1

    throw p0
.end method
