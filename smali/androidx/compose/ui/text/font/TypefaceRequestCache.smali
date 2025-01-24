.class public final Landroidx/compose/ui/text/font/TypefaceRequestCache;
.super Ljava/lang/Object;
.source "FontFamilyResolver.kt"


# instance fields
.field private final lock:Landroidx/compose/ui/text/platform/SynchronizedObject;

.field private final resultCache:Landroidx/collection/SieveCache;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    invoke-static {}, Landroidx/compose/ui/text/platform/Synchronization_jvmKt;->createSynchronizedObject()Landroidx/compose/ui/text/platform/SynchronizedObject;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/text/font/TypefaceRequestCache;->lock:Landroidx/compose/ui/text/platform/SynchronizedObject;

    .line 170
    new-instance v0, Landroidx/collection/SieveCache;

    const/16 v7, 0x1c

    const/4 v8, 0x0

    const/16 v2, 0x10

    const/16 v3, 0x10

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroidx/collection/SieveCache;-><init>(IILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Landroidx/compose/ui/text/font/TypefaceRequestCache;->resultCache:Landroidx/collection/SieveCache;

    return-void
.end method

.method public static final synthetic access$getResultCache$p(Landroidx/compose/ui/text/font/TypefaceRequestCache;)Landroidx/collection/SieveCache;
    .locals 0

    .line 167
    iget-object p0, p0, Landroidx/compose/ui/text/font/TypefaceRequestCache;->resultCache:Landroidx/collection/SieveCache;

    return-object p0
.end method


# virtual methods
.method public final getLock$ui_text_release()Landroidx/compose/ui/text/platform/SynchronizedObject;
    .locals 0

    .line 168
    iget-object p0, p0, Landroidx/compose/ui/text/font/TypefaceRequestCache;->lock:Landroidx/compose/ui/text/platform/SynchronizedObject;

    return-object p0
.end method

.method public final runCached(Landroidx/compose/ui/text/font/TypefaceRequest;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/State;
    .locals 3

    .line 176
    iget-object v0, p0, Landroidx/compose/ui/text/font/TypefaceRequestCache;->lock:Landroidx/compose/ui/text/platform/SynchronizedObject;

    .line 25
    monitor-enter v0

    .line 177
    :try_start_0
    iget-object v1, p0, Landroidx/compose/ui/text/font/TypefaceRequestCache;->resultCache:Landroidx/collection/SieveCache;

    invoke-virtual {v1, p1}, Landroidx/collection/SieveCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/text/font/TypefaceResult;

    if-eqz v1, :cond_1

    .line 178
    invoke-interface {v1}, Landroidx/compose/ui/text/font/TypefaceResult;->getCacheable()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 179
    monitor-exit v0

    return-object v1

    .line 181
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroidx/compose/ui/text/font/TypefaceRequestCache;->resultCache:Landroidx/collection/SieveCache;

    invoke-virtual {v1, p1}, Landroidx/collection/SieveCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/text/font/TypefaceResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 25
    :cond_1
    :goto_0
    monitor-exit v0

    .line 197
    :try_start_2
    new-instance v0, Landroidx/compose/ui/text/font/TypefaceRequestCache$runCached$currentTypefaceResult$1;

    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/text/font/TypefaceRequestCache$runCached$currentTypefaceResult$1;-><init>(Landroidx/compose/ui/text/font/TypefaceRequestCache;Landroidx/compose/ui/text/font/TypefaceRequest;)V

    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/compose/ui/text/font/TypefaceResult;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 216
    iget-object v0, p0, Landroidx/compose/ui/text/font/TypefaceRequestCache;->lock:Landroidx/compose/ui/text/platform/SynchronizedObject;

    .line 25
    monitor-enter v0

    .line 219
    :try_start_3
    iget-object v1, p0, Landroidx/compose/ui/text/font/TypefaceRequestCache;->resultCache:Landroidx/collection/SieveCache;

    invoke-virtual {v1, p1}, Landroidx/collection/SieveCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-interface {p2}, Landroidx/compose/ui/text/font/TypefaceResult;->getCacheable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 220
    iget-object p0, p0, Landroidx/compose/ui/text/font/TypefaceRequestCache;->resultCache:Landroidx/collection/SieveCache;

    invoke-virtual {p0, p1, p2}, Landroidx/collection/SieveCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    .line 222
    :cond_2
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 25
    monitor-exit v0

    return-object p2

    :goto_2
    monitor-exit v0

    throw p0

    :catch_0
    move-exception p0

    .line 214
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Could not load font"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 25
    :goto_3
    monitor-exit v0

    throw p0
.end method
