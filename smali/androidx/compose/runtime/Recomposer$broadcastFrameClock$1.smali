.class final Landroidx/compose/runtime/Recomposer$broadcastFrameClock$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Recomposer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Landroidx/compose/runtime/Recomposer;


# direct methods
.method constructor <init>(Landroidx/compose/runtime/Recomposer;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/runtime/Recomposer$broadcastFrameClock$1;->this$0:Landroidx/compose/runtime/Recomposer;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 144
    invoke-virtual {p0}, Landroidx/compose/runtime/Recomposer$broadcastFrameClock$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 4

    .line 145
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$broadcastFrameClock$1;->this$0:Landroidx/compose/runtime/Recomposer;

    invoke-static {v0}, Landroidx/compose/runtime/Recomposer;->access$getStateLock$p(Landroidx/compose/runtime/Recomposer;)Ljava/lang/Object;

    move-result-object v0

    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$broadcastFrameClock$1;->this$0:Landroidx/compose/runtime/Recomposer;

    .line 27
    monitor-enter v0

    .line 146
    :try_start_0
    invoke-static {p0}, Landroidx/compose/runtime/Recomposer;->access$deriveStateLocked(Landroidx/compose/runtime/Recomposer;)Lkotlinx/coroutines/CancellableContinuation;

    move-result-object v1

    .line 147
    invoke-static {p0}, Landroidx/compose/runtime/Recomposer;->access$get_state$p(Landroidx/compose/runtime/Recomposer;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/Recomposer$State;

    sget-object v3, Landroidx/compose/runtime/Recomposer$State;->ShuttingDown:Landroidx/compose/runtime/Recomposer$State;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v2, :cond_1

    .line 27
    monitor-exit v0

    if-eqz v1, :cond_0

    .line 145
    sget-object p0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 154
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v1, p0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 149
    :cond_1
    :try_start_1
    const-string v1, "Recomposer shutdown; frame clock awaiter will never resume"

    .line 150
    invoke-static {p0}, Landroidx/compose/runtime/Recomposer;->access$getCloseCause$p(Landroidx/compose/runtime/Recomposer;)Ljava/lang/Throwable;

    move-result-object p0

    .line 148
    invoke-static {v1, p0}, Lkotlinx/coroutines/ExceptionsKt;->CancellationException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    move-result-object p0

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 27
    monitor-exit v0

    throw p0
.end method
