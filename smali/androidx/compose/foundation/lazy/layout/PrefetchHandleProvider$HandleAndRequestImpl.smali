.class final Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;
.super Ljava/lang/Object;
.source "LazyLayoutPrefetchState.kt"

# interfaces
.implements Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;
.implements Landroidx/compose/foundation/lazy/layout/PrefetchRequest;


# instance fields
.field private final constraints:J

.field private hasResolvedNestedPrefetches:Z

.field private final index:I

.field private isCanceled:Z

.field private isMeasured:Z

.field private isUrgent:Z

.field private nestedPrefetchController:Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController;

.field private precomposeHandle:Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;

.field private final prefetchMetrics:Landroidx/compose/foundation/lazy/layout/PrefetchMetrics;

.field final synthetic this$0:Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider;


# direct methods
.method private constructor <init>(Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider;IJLandroidx/compose/foundation/lazy/layout/PrefetchMetrics;)V
    .locals 0

    .line 253
    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->this$0:Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider;

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    iput p2, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->index:I

    .line 255
    iput-wide p3, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->constraints:J

    .line 256
    iput-object p5, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->prefetchMetrics:Landroidx/compose/foundation/lazy/layout/PrefetchMetrics;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider;IJLandroidx/compose/foundation/lazy/layout/PrefetchMetrics;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;-><init>(Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider;IJLandroidx/compose/foundation/lazy/layout/PrefetchMetrics;)V

    return-void
.end method

.method public static final synthetic access$isCanceled$p(Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;)Z
    .locals 0

    .line 252
    iget-boolean p0, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->isCanceled:Z

    return p0
.end method

.method private final isComposed()Z
    .locals 0

    .line 263
    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->precomposeHandle:Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final isValid()Z
    .locals 1

    .line 270
    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->isCanceled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->this$0:Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider;

    invoke-static {v0}, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider;->access$getItemContentFactory$p(Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider;)Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;->getItemProvider()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;

    invoke-interface {v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;->getItemCount()I

    move-result v0

    iget p0, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->index:I

    if-ltz p0, :cond_0

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final performComposition()V
    .locals 4

    .line 369
    invoke-direct {p0}, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 370
    const-string v0, "Callers should check whether the request is still valid before calling performComposition()"

    .line 98
    invoke-static {v0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 373
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->precomposeHandle:Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    const-string v0, "Request was already composed!"

    .line 98
    invoke-static {v0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 374
    :cond_2
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->this$0:Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider;

    invoke-static {v0}, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider;->access$getItemContentFactory$p(Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider;)Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;->getItemProvider()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;

    .line 375
    iget v1, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->index:I

    invoke-interface {v0, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;->getKey(I)Ljava/lang/Object;

    move-result-object v1

    .line 376
    iget v2, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->index:I

    invoke-interface {v0, v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;->getContentType(I)Ljava/lang/Object;

    move-result-object v0

    .line 377
    iget-object v2, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->this$0:Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider;

    invoke-static {v2}, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider;->access$getItemContentFactory$p(Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider;)Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;

    move-result-object v2

    iget v3, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->index:I

    invoke-virtual {v2, v3, v1, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;->getContent(ILjava/lang/Object;Ljava/lang/Object;)Lkotlin/jvm/functions/Function2;

    move-result-object v0

    .line 378
    iget-object v2, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->this$0:Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider;

    invoke-static {v2}, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider;->access$getSubcomposeLayoutState$p(Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider;)Landroidx/compose/ui/layout/SubcomposeLayoutState;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroidx/compose/ui/layout/SubcomposeLayoutState;->precompose(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->precomposeHandle:Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;

    return-void
.end method

.method private final performMeasure-BRTryo0(J)V
    .locals 2

    .line 382
    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->isCanceled:Z

    if-eqz v0, :cond_0

    .line 383
    const-string v0, "Callers should check whether the request is still valid before calling performMeasure()"

    .line 98
    invoke-static {v0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 386
    :cond_0
    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->isMeasured:Z

    if-eqz v0, :cond_1

    const-string v0, "Request was already measured!"

    .line 98
    invoke-static {v0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    .line 387
    iput-boolean v0, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->isMeasured:Z

    .line 389
    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->precomposeHandle:Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;

    if-eqz p0, :cond_3

    .line 392
    invoke-interface {p0}, Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;->getPlaceablesCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 393
    invoke-interface {p0, v1, p1, p2}, Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;->premeasure-0kLqBqw(IJ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 390
    :cond_3
    const-string p0, "performComposition() must be called before performMeasure()"

    .line 110
    invoke-static {p0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentExceptionForNullCheck(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method private final resolveNestedPrefetchStates()Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController;
    .locals 4

    .line 399
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->precomposeHandle:Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;

    if-eqz v0, :cond_1

    .line 403
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 404
    new-instance v2, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl$resolveNestedPrefetchStates$1;

    invoke-direct {v2, v1}, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl$resolveNestedPrefetchStates$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    const-string v3, "androidx.compose.foundation.lazy.layout.TraversablePrefetchStateNode"

    invoke-interface {v0, v3, v2}, Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;->traverseDescendants(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    .line 410
    iget-object v0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    new-instance v1, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController;

    invoke-direct {v1, p0, v0}, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController;-><init>(Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 400
    :cond_1
    const-string p0, "Should precompose before resolving nested prefetch states"

    .line 110
    invoke-static {p0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentExceptionForNullCheck(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method private final shouldExecute(Landroidx/compose/foundation/lazy/layout/PrefetchRequestScope;J)Z
    .locals 2

    .line 285
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/PrefetchRequestScope;->availableTimeNanos()J

    move-result-wide v0

    .line 288
    iget-boolean p0, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->isUrgent:Z

    if-eqz p0, :cond_0

    const-wide/16 p0, 0x0

    cmp-long p0, v0, p0

    if-gtz p0, :cond_1

    :cond_0
    cmp-long p0, p2, v0

    if-gez p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 273
    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->isCanceled:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 274
    iput-boolean v0, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->isCanceled:Z

    .line 275
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->precomposeHandle:Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;->dispose()V

    :cond_0
    const/4 v0, 0x0

    .line 276
    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->precomposeHandle:Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;

    :cond_1
    return-void
.end method

.method public execute(Landroidx/compose/foundation/lazy/layout/PrefetchRequestScope;)Z
    .locals 11

    .line 292
    invoke-direct {p0}, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->isValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 296
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->this$0:Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider;

    invoke-static {v0}, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider;->access$getItemContentFactory$p(Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider;)Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;->getItemProvider()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;

    iget v2, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->index:I

    invoke-interface {v0, v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;->getContentType(I)Ljava/lang/Object;

    move-result-object v0

    .line 298
    invoke-direct {p0}, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->isComposed()Z

    move-result v2

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    if-nez v2, :cond_4

    if-eqz v0, :cond_1

    .line 302
    iget-object v2, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->prefetchMetrics:Landroidx/compose/foundation/lazy/layout/PrefetchMetrics;

    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/layout/PrefetchMetrics;->getAverageCompositionTimeNanosByContentType()Landroidx/collection/MutableObjectLongMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/collection/ObjectLongMap;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 306
    iget-object v2, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->prefetchMetrics:Landroidx/compose/foundation/lazy/layout/PrefetchMetrics;

    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/layout/PrefetchMetrics;->getAverageCompositionTimeNanosByContentType()Landroidx/collection/MutableObjectLongMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/collection/ObjectLongMap;->get(Ljava/lang/Object;)J

    move-result-wide v6

    goto :goto_0

    .line 307
    :cond_1
    iget-object v2, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->prefetchMetrics:Landroidx/compose/foundation/lazy/layout/PrefetchMetrics;

    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/layout/PrefetchMetrics;->getAverageCompositionTimeNanos()J

    move-result-wide v6

    .line 308
    :goto_0
    invoke-direct {p0, p1, v6, v7}, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->shouldExecute(Landroidx/compose/foundation/lazy/layout/PrefetchRequestScope;J)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 309
    iget-object v2, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->prefetchMetrics:Landroidx/compose/foundation/lazy/layout/PrefetchMetrics;

    .line 34
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 310
    const-string v8, "compose:lazy:prefetch:compose"

    .line 26
    invoke-static {v8}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 310
    :try_start_0
    invoke-direct {p0}, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->performComposition()V

    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 36
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    sub-long/2addr v8, v6

    if-eqz v0, :cond_2

    .line 179
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/layout/PrefetchMetrics;->getAverageCompositionTimeNanosByContentType()Landroidx/collection/MutableObjectLongMap;

    move-result-object v6

    invoke-virtual {v6, v0, v3, v4}, Landroidx/collection/ObjectLongMap;->getOrDefault(Ljava/lang/Object;J)J

    move-result-wide v6

    .line 181
    invoke-static {v2, v8, v9, v6, v7}, Landroidx/compose/foundation/lazy/layout/PrefetchMetrics;->access$calculateAverageTime(Landroidx/compose/foundation/lazy/layout/PrefetchMetrics;JJ)J

    move-result-wide v6

    .line 182
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/layout/PrefetchMetrics;->getAverageCompositionTimeNanosByContentType()Landroidx/collection/MutableObjectLongMap;

    move-result-object v10

    invoke-virtual {v10, v0, v6, v7}, Landroidx/collection/MutableObjectLongMap;->set(Ljava/lang/Object;J)V

    .line 185
    :cond_2
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/layout/PrefetchMetrics;->getAverageCompositionTimeNanos()J

    move-result-wide v6

    invoke-static {v2, v8, v9, v6, v7}, Landroidx/compose/foundation/lazy/layout/PrefetchMetrics;->access$calculateAverageTime(Landroidx/compose/foundation/lazy/layout/PrefetchMetrics;JJ)J

    move-result-wide v6

    .line 184
    invoke-static {v2, v6, v7}, Landroidx/compose/foundation/lazy/layout/PrefetchMetrics;->access$setAverageCompositionTimeNanos$p(Landroidx/compose/foundation/lazy/layout/PrefetchMetrics;J)V

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 30
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0

    :cond_3
    return v5

    .line 322
    :cond_4
    :goto_1
    iget-boolean v2, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->isUrgent:Z

    if-nez v2, :cond_8

    .line 327
    iget-boolean v2, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->hasResolvedNestedPrefetches:Z

    if-nez v2, :cond_6

    .line 328
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/PrefetchRequestScope;->availableTimeNanos()J

    move-result-wide v6

    cmp-long v2, v6, v3

    if-lez v2, :cond_5

    .line 329
    const-string v2, "compose:lazy:prefetch:resolve-nested"

    .line 26
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 330
    :try_start_1
    invoke-direct {p0}, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->resolveNestedPrefetchStates()Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController;

    move-result-object v2

    iput-object v2, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->nestedPrefetchController:Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController;

    .line 331
    iput-boolean v5, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->hasResolvedNestedPrefetches:Z

    .line 332
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 30
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_2

    :catchall_1
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0

    :cond_5
    return v5

    .line 339
    :cond_6
    :goto_2
    iget-object v2, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->nestedPrefetchController:Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController;

    if-eqz v2, :cond_7

    invoke-virtual {v2, p1}, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController;->executeNestedPrefetches(Landroidx/compose/foundation/lazy/layout/PrefetchRequestScope;)Z

    move-result v2

    goto :goto_3

    :cond_7
    move v2, v1

    :goto_3
    if-eqz v2, :cond_8

    return v5

    .line 345
    :cond_8
    iget-boolean v2, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->isMeasured:Z

    if-nez v2, :cond_c

    iget-wide v6, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->constraints:J

    invoke-static {v6, v7}, Landroidx/compose/ui/unit/Constraints;->isZero-impl(J)Z

    move-result v2

    if-nez v2, :cond_c

    if-eqz v0, :cond_9

    .line 349
    iget-object v2, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->prefetchMetrics:Landroidx/compose/foundation/lazy/layout/PrefetchMetrics;

    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/layout/PrefetchMetrics;->getAverageMeasureTimeNanosByContentType()Landroidx/collection/MutableObjectLongMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/collection/ObjectLongMap;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 353
    iget-object v2, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->prefetchMetrics:Landroidx/compose/foundation/lazy/layout/PrefetchMetrics;

    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/layout/PrefetchMetrics;->getAverageMeasureTimeNanosByContentType()Landroidx/collection/MutableObjectLongMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/collection/ObjectLongMap;->get(Ljava/lang/Object;)J

    move-result-wide v6

    goto :goto_4

    .line 354
    :cond_9
    iget-object v2, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->prefetchMetrics:Landroidx/compose/foundation/lazy/layout/PrefetchMetrics;

    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/layout/PrefetchMetrics;->getAverageMeasureTimeNanos()J

    move-result-wide v6

    .line 355
    :goto_4
    invoke-direct {p0, p1, v6, v7}, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->shouldExecute(Landroidx/compose/foundation/lazy/layout/PrefetchRequestScope;J)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 356
    iget-object p1, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->prefetchMetrics:Landroidx/compose/foundation/lazy/layout/PrefetchMetrics;

    .line 34
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    .line 357
    const-string v2, "compose:lazy:prefetch:measure"

    .line 26
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 357
    :try_start_2
    iget-wide v7, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->constraints:J

    invoke-direct {p0, v7, v8}, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->performMeasure-BRTryo0(J)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 30
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 36
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    sub-long/2addr v7, v5

    if-eqz v0, :cond_a

    .line 195
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/layout/PrefetchMetrics;->getAverageMeasureTimeNanosByContentType()Landroidx/collection/MutableObjectLongMap;

    move-result-object p0

    invoke-virtual {p0, v0, v3, v4}, Landroidx/collection/ObjectLongMap;->getOrDefault(Ljava/lang/Object;J)J

    move-result-wide v2

    .line 197
    invoke-static {p1, v7, v8, v2, v3}, Landroidx/compose/foundation/lazy/layout/PrefetchMetrics;->access$calculateAverageTime(Landroidx/compose/foundation/lazy/layout/PrefetchMetrics;JJ)J

    move-result-wide v2

    .line 198
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/layout/PrefetchMetrics;->getAverageMeasureTimeNanosByContentType()Landroidx/collection/MutableObjectLongMap;

    move-result-object p0

    invoke-virtual {p0, v0, v2, v3}, Landroidx/collection/MutableObjectLongMap;->set(Ljava/lang/Object;J)V

    .line 200
    :cond_a
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/layout/PrefetchMetrics;->getAverageMeasureTimeNanos()J

    move-result-wide v2

    invoke-static {p1, v7, v8, v2, v3}, Landroidx/compose/foundation/lazy/layout/PrefetchMetrics;->access$calculateAverageTime(Landroidx/compose/foundation/lazy/layout/PrefetchMetrics;JJ)J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Landroidx/compose/foundation/lazy/layout/PrefetchMetrics;->access$setAverageMeasureTimeNanos$p(Landroidx/compose/foundation/lazy/layout/PrefetchMetrics;J)V

    goto :goto_5

    :catchall_2
    move-exception p0

    .line 30
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0

    :cond_b
    return v5

    :cond_c
    :goto_5
    return v1
.end method

.method public markAsUrgent()V
    .locals 1

    const/4 v0, 0x1

    .line 281
    iput-boolean v0, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->isUrgent:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HandleAndRequestImpl { index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", constraints = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->constraints:J

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Constraints;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isComposed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    invoke-direct {p0}, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->isComposed()Z

    move-result v1

    .line 414
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 415
    const-string v1, ", isMeasured = "

    .line 414
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    iget-boolean v1, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->isMeasured:Z

    .line 414
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 415
    const-string v1, ", isCanceled = "

    .line 414
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    iget-boolean p0, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->isCanceled:Z

    .line 414
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 415
    const-string p0, " }"

    .line 414
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
