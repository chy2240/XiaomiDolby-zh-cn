.class public final Landroidx/compose/runtime/internal/RememberEventDispatcher;
.super Ljava/lang/Object;
.source "RememberEventDispatcher.kt"

# interfaces
.implements Landroidx/compose/runtime/RememberManager;


# instance fields
.field private final abandoning:Ljava/util/Set;

.field private final afters:Landroidx/collection/MutableIntList;

.field private currentRememberingList:Ljava/util/List;

.field private final leaving:Ljava/util/List;

.field private pausedPlaceholders:Landroidx/collection/MutableScatterMap;

.field private final pending:Ljava/util/List;

.field private final priorities:Landroidx/collection/MutableIntList;

.field private releasing:Landroidx/collection/MutableScatterSet;

.field private final remembering:Ljava/util/List;

.field private final sideEffects:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .locals 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->abandoning:Ljava/util/Set;

    .line 58
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->remembering:Ljava/util/List;

    .line 59
    iput-object p1, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->currentRememberingList:Ljava/util/List;

    .line 60
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->leaving:Ljava/util/List;

    .line 61
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->sideEffects:Ljava/util/List;

    .line 66
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->pending:Ljava/util/List;

    .line 67
    new-instance p1, Landroidx/collection/MutableIntList;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Landroidx/collection/MutableIntList;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->priorities:Landroidx/collection/MutableIntList;

    .line 68
    new-instance p1, Landroidx/collection/MutableIntList;

    invoke-direct {p1, v0, v1, v2}, Landroidx/collection/MutableIntList;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->afters:Landroidx/collection/MutableIntList;

    return-void
.end method

.method private final dispatchRememberList(Ljava/util/List;)V
    .locals 4

    .line 34
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 35
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 36
    check-cast v2, Landroidx/compose/runtime/RememberObserver;

    .line 174
    iget-object v3, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->abandoning:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 175
    invoke-interface {v2}, Landroidx/compose/runtime/RememberObserver;->onRemembered()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final processPendingLeaving(I)V
    .locals 11

    .line 220
    iget-object v0, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->pending:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    move-object v3, v1

    move-object v4, v3

    move-object v5, v4

    .line 225
    :goto_0
    iget-object v6, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->afters:Landroidx/collection/MutableIntList;

    .line 64
    iget v7, v6, Landroidx/collection/IntList;->_size:I

    .line 225
    const-string v8, "null cannot be cast to non-null type androidx.collection.MutableIntList"

    const/4 v9, 0x1

    if-ge v2, v7, :cond_2

    .line 226
    invoke-virtual {v6, v2}, Landroidx/collection/IntList;->get(I)I

    move-result v6

    if-gt p1, v6, :cond_1

    .line 227
    iget-object v6, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->pending:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v6

    .line 228
    iget-object v7, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->afters:Landroidx/collection/MutableIntList;

    invoke-virtual {v7, v2}, Landroidx/collection/MutableIntList;->removeAt(I)I

    move-result v7

    .line 229
    iget-object v10, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->priorities:Landroidx/collection/MutableIntList;

    invoke-virtual {v10, v2}, Landroidx/collection/MutableIntList;->removeAt(I)I

    move-result v10

    if-nez v3, :cond_0

    .line 232
    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 233
    new-instance v5, Landroidx/collection/MutableIntList;

    invoke-direct {v5, v0, v9, v1}, Landroidx/collection/MutableIntList;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v5, v7}, Landroidx/collection/MutableIntList;->add(I)Z

    .line 234
    new-instance v4, Landroidx/collection/MutableIntList;

    invoke-direct {v4, v0, v9, v1}, Landroidx/collection/MutableIntList;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v4, v10}, Landroidx/collection/MutableIntList;->add(I)Z

    goto :goto_0

    .line 236
    :cond_0
    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    invoke-virtual {v5, v7}, Landroidx/collection/MutableIntList;->add(I)Z

    .line 240
    invoke-virtual {v4, v10}, Landroidx/collection/MutableIntList;->add(I)Z

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_7

    .line 247
    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v9

    :goto_1
    if-ge v0, p1, :cond_6

    add-int/lit8 v1, v0, 0x1

    .line 272
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    move v6, v1

    :goto_2
    if-ge v6, v2, :cond_5

    .line 273
    invoke-virtual {v5, v0}, Landroidx/collection/IntList;->get(I)I

    move-result v7

    .line 274
    invoke-virtual {v5, v6}, Landroidx/collection/IntList;->get(I)I

    move-result v8

    if-lt v7, v8, :cond_3

    if-ne v8, v7, :cond_4

    .line 277
    invoke-virtual {v4, v0}, Landroidx/collection/IntList;->get(I)I

    move-result v7

    invoke-virtual {v4, v6}, Landroidx/collection/IntList;->get(I)I

    move-result v8

    if-ge v7, v8, :cond_4

    .line 279
    :cond_3
    invoke-static {v3, v0, v6}, Landroidx/compose/runtime/internal/RememberEventDispatcherKt;->access$swap(Ljava/util/List;II)V

    .line 280
    invoke-static {v4, v0, v6}, Landroidx/compose/runtime/internal/RememberEventDispatcherKt;->access$swap(Landroidx/collection/MutableIntList;II)V

    .line 281
    invoke-static {v5, v0, v6}, Landroidx/compose/runtime/internal/RememberEventDispatcherKt;->access$swap(Landroidx/collection/MutableIntList;II)V

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_1

    .line 285
    :cond_6
    iget-object p0, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->leaving:Ljava/util/List;

    invoke-interface {p0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_7
    return-void
.end method

.method private final recordLeaving(Ljava/lang/Object;III)V
    .locals 0

    .line 209
    invoke-direct {p0, p2}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->processPendingLeaving(I)V

    if-ltz p4, :cond_0

    if-ge p4, p2, :cond_0

    .line 211
    iget-object p2, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->pending:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    iget-object p1, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->priorities:Landroidx/collection/MutableIntList;

    invoke-virtual {p1, p3}, Landroidx/collection/MutableIntList;->add(I)Z

    .line 213
    iget-object p0, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->afters:Landroidx/collection/MutableIntList;

    invoke-virtual {p0, p4}, Landroidx/collection/MutableIntList;->add(I)Z

    goto :goto_0

    .line 215
    :cond_0
    iget-object p0, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->leaving:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public deactivating(Landroidx/compose/runtime/ComposeNodeLifecycleCallback;III)V
    .locals 0

    .line 94
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->recordLeaving(Ljava/lang/Object;III)V

    return-void
.end method

.method public final dispatchAbandons()V
    .locals 2

    .line 189
    iget-object v0, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->abandoning:Ljava/util/Set;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 190
    const-string v0, "Compose:abandons"

    .line 45
    sget-object v1, Landroidx/compose/runtime/internal/Trace;->INSTANCE:Landroidx/compose/runtime/internal/Trace;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/internal/Trace;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 191
    :try_start_0
    iget-object p0, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->abandoning:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 194
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/RememberObserver;

    .line 196
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 197
    invoke-interface {v1}, Landroidx/compose/runtime/RememberObserver;->onAbandoned()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 199
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    sget-object p0, Landroidx/compose/runtime/internal/Trace;->INSTANCE:Landroidx/compose/runtime/internal/Trace;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/internal/Trace;->endSection(Ljava/lang/Object;)V

    goto :goto_2

    :goto_1
    sget-object v1, Landroidx/compose/runtime/internal/Trace;->INSTANCE:Landroidx/compose/runtime/internal/Trace;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/internal/Trace;->endSection(Ljava/lang/Object;)V

    throw p0

    :cond_1
    :goto_2
    return-void
.end method

.method public final dispatchRememberObservers()V
    .locals 6

    const/4 v0, -0x1

    const/high16 v1, -0x80000000

    .line 142
    invoke-direct {p0, v1}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->processPendingLeaving(I)V

    .line 145
    iget-object v1, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->leaving:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 146
    const-string v1, "Compose:onForgotten"

    .line 45
    sget-object v2, Landroidx/compose/runtime/internal/Trace;->INSTANCE:Landroidx/compose/runtime/internal/Trace;

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/internal/Trace;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 147
    :try_start_0
    iget-object v2, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->releasing:Landroidx/collection/MutableScatterSet;

    .line 148
    iget-object v3, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->leaving:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ge v0, v3, :cond_3

    .line 149
    iget-object v4, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->leaving:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 150
    instance-of v5, v4, Landroidx/compose/runtime/RememberObserver;

    if-eqz v5, :cond_0

    .line 151
    iget-object v5, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->abandoning:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 152
    move-object v5, v4

    check-cast v5, Landroidx/compose/runtime/RememberObserver;

    invoke-interface {v5}, Landroidx/compose/runtime/RememberObserver;->onForgotten()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 154
    :cond_0
    :goto_1
    instance-of v5, v4, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    if-eqz v5, :cond_2

    if-eqz v2, :cond_1

    .line 156
    invoke-virtual {v2, v4}, Landroidx/collection/ScatterSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 157
    check-cast v4, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    invoke-interface {v4}, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;->onRelease()V

    goto :goto_2

    .line 159
    :cond_1
    check-cast v4, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    invoke-interface {v4}, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;->onDeactivate()V

    :cond_2
    :goto_2
    add-int/2addr v3, v0

    goto :goto_0

    .line 163
    :cond_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    sget-object v0, Landroidx/compose/runtime/internal/Trace;->INSTANCE:Landroidx/compose/runtime/internal/Trace;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/internal/Trace;->endSection(Ljava/lang/Object;)V

    goto :goto_4

    :goto_3
    sget-object v0, Landroidx/compose/runtime/internal/Trace;->INSTANCE:Landroidx/compose/runtime/internal/Trace;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/internal/Trace;->endSection(Ljava/lang/Object;)V

    throw p0

    .line 167
    :cond_4
    :goto_4
    iget-object v0, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->remembering:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 45
    sget-object v0, Landroidx/compose/runtime/internal/Trace;->INSTANCE:Landroidx/compose/runtime/internal/Trace;

    const-string v1, "Compose:onRemembered"

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/internal/Trace;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 168
    :try_start_1
    iget-object v2, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->remembering:Ljava/util/List;

    invoke-direct {p0, v2}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->dispatchRememberList(Ljava/util/List;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 49
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/internal/Trace;->endSection(Ljava/lang/Object;)V

    goto :goto_5

    :catchall_1
    move-exception p0

    sget-object v0, Landroidx/compose/runtime/internal/Trace;->INSTANCE:Landroidx/compose/runtime/internal/Trace;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/internal/Trace;->endSection(Ljava/lang/Object;)V

    throw p0

    :cond_5
    :goto_5
    return-void
.end method

.method public final dispatchSideEffects()V
    .locals 5

    .line 180
    iget-object v0, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->sideEffects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 181
    const-string v0, "Compose:sideeffects"

    .line 45
    sget-object v1, Landroidx/compose/runtime/internal/Trace;->INSTANCE:Landroidx/compose/runtime/internal/Trace;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/internal/Trace;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 182
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->sideEffects:Ljava/util/List;

    .line 34
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 35
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 36
    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 182
    invoke-interface {v4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 183
    :cond_0
    iget-object p0, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->sideEffects:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 184
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    sget-object p0, Landroidx/compose/runtime/internal/Trace;->INSTANCE:Landroidx/compose/runtime/internal/Trace;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/internal/Trace;->endSection(Ljava/lang/Object;)V

    goto :goto_2

    :goto_1
    sget-object v1, Landroidx/compose/runtime/internal/Trace;->INSTANCE:Landroidx/compose/runtime/internal/Trace;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/internal/Trace;->endSection(Ljava/lang/Object;)V

    throw p0

    :cond_1
    :goto_2
    return-void
.end method

.method public endResumingScope(Landroidx/compose/runtime/RecomposeScopeImpl;)V
    .locals 0

    .line 130
    iget-object p0, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->pausedPlaceholders:Landroidx/collection/MutableScatterMap;

    if-eqz p0, :cond_0

    .line 132
    invoke-virtual {p0, p1}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public forgetting(Landroidx/compose/runtime/RememberObserver;III)V
    .locals 0

    .line 81
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->recordLeaving(Ljava/lang/Object;III)V

    return-void
.end method

.method public releasing(Landroidx/compose/runtime/ComposeNodeLifecycleCallback;III)V
    .locals 1

    .line 104
    iget-object v0, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->releasing:Landroidx/collection/MutableScatterSet;

    if-nez v0, :cond_0

    invoke-static {}, Landroidx/collection/ScatterSetKt;->mutableScatterSetOf()Landroidx/collection/MutableScatterSet;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->releasing:Landroidx/collection/MutableScatterSet;

    .line 106
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/collection/MutableScatterSet;->plusAssign(Ljava/lang/Object;)V

    .line 107
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->recordLeaving(Ljava/lang/Object;III)V

    return-void
.end method

.method public remembering(Landroidx/compose/runtime/RememberObserver;)V
    .locals 0

    .line 72
    iget-object p0, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->currentRememberingList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public sideEffect(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 85
    iget-object p0, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->sideEffects:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public startResumingScope(Landroidx/compose/runtime/RecomposeScopeImpl;)V
    .locals 0

    .line 120
    iget-object p0, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->pausedPlaceholders:Landroidx/collection/MutableScatterMap;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
