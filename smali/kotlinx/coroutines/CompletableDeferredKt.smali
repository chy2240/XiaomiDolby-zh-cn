.class public abstract Lkotlinx/coroutines/CompletableDeferredKt;
.super Ljava/lang/Object;
.source "CompletableDeferred.kt"


# direct methods
.method public static final CompletableDeferred(Lkotlinx/coroutines/Job;)Lkotlinx/coroutines/CompletableDeferred;
    .locals 1

    .line 68
    new-instance v0, Lkotlinx/coroutines/CompletableDeferredImpl;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/CompletableDeferredImpl;-><init>(Lkotlinx/coroutines/Job;)V

    return-object v0
.end method
