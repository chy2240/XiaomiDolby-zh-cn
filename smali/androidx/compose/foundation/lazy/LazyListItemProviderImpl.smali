.class final Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;
.super Ljava/lang/Object;
.source "LazyListItemProvider.kt"

# interfaces
.implements Landroidx/compose/foundation/lazy/LazyListItemProvider;


# instance fields
.field private final intervalContent:Landroidx/compose/foundation/lazy/LazyListIntervalContent;

.field private final itemScope:Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

.field private final keyIndexMap:Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

.field private final state:Landroidx/compose/foundation/lazy/LazyListState;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/lazy/LazyListIntervalContent;Landroidx/compose/foundation/lazy/LazyItemScopeImpl;Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->state:Landroidx/compose/foundation/lazy/LazyListState;

    .line 72
    iput-object p2, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->intervalContent:Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    .line 73
    iput-object p3, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->itemScope:Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 74
    iput-object p4, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->keyIndexMap:Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    return-void
.end method

.method public static final synthetic access$getIntervalContent$p(Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;)Landroidx/compose/foundation/lazy/LazyListIntervalContent;
    .locals 0

    .line 68
    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->intervalContent:Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    return-object p0
.end method


# virtual methods
.method public Item(ILjava/lang/Object;Landroidx/compose/runtime/Composer;I)V
    .locals 7

    const v0, -0x1b900aca

    .line 81
    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p3

    and-int/lit8 v1, p4, 0x6

    if-nez v1, :cond_1

    invoke-interface {p3, p1}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, p4

    goto :goto_1

    :cond_1
    move v1, p4

    :goto_1
    and-int/lit8 v2, p4, 0x30

    if-nez v2, :cond_3

    invoke-interface {p3, p2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x20

    goto :goto_2

    :cond_2
    const/16 v2, 0x10

    :goto_2
    or-int/2addr v1, v2

    :cond_3
    and-int/lit16 v2, p4, 0x180

    if-nez v2, :cond_5

    invoke-interface {p3, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x100

    goto :goto_3

    :cond_4
    const/16 v2, 0x80

    :goto_3
    or-int/2addr v1, v2

    :cond_5
    and-int/lit16 v2, v1, 0x93

    const/16 v3, 0x92

    if-ne v2, v3, :cond_7

    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_4

    .line 87
    :cond_6
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_5

    .line 81
    :cond_7
    :goto_4
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, -0x1

    const-string v3, "androidx.compose.foundation.lazy.LazyListItemProviderImpl.Item (LazyListItemProvider.kt:80)"

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 82
    :cond_8
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->state:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListState;->getPinnedItems$foundation_release()Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;

    move-result-object v3

    new-instance v0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl$Item$1;

    invoke-direct {v0, p0, p1}, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl$Item$1;-><init>(Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;I)V

    const/16 v2, 0x36

    const v4, -0x3128503e

    const/4 v5, 0x1

    invoke-static {v4, v5, v0, p3, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v4

    shr-int/lit8 v0, v1, 0x3

    and-int/lit8 v0, v0, 0xe

    or-int/lit16 v0, v0, 0xc00

    shl-int/lit8 v1, v1, 0x3

    and-int/lit8 v1, v1, 0x70

    or-int v6, v0, v1

    move-object v1, p2

    move v2, p1

    move-object v5, p3

    invoke-static/range {v1 .. v6}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItemKt;->LazyLayoutPinnableItem(Ljava/lang/Object;ILandroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 87
    :cond_9
    :goto_5
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object p3

    if-eqz p3, :cond_a

    new-instance v0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl$Item$2;

    invoke-direct {v0, p0, p1, p2, p4}, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl$Item$2;-><init>(Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;ILjava/lang/Object;I)V

    invoke-interface {p3, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_a
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 101
    :cond_0
    instance-of v0, p1, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 105
    :cond_1
    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->intervalContent:Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    check-cast p1, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;

    iget-object p1, p1, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->intervalContent:Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getContentType(I)Ljava/lang/Object;
    .locals 0

    .line 92
    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->intervalContent:Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent;->getContentType(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getHeaderIndexes()Landroidx/collection/IntList;
    .locals 0

    .line 95
    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->intervalContent:Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListIntervalContent;->getHeaderIndexes()Landroidx/collection/IntList;

    move-result-object p0

    return-object p0
.end method

.method public getIndex(Ljava/lang/Object;)I
    .locals 0

    .line 97
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->getKeyIndexMap()Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    move-result-object p0

    invoke-interface {p0, p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;->getIndex(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public getItemCount()I
    .locals 0

    .line 78
    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->intervalContent:Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent;->getItemCount()I

    move-result p0

    return p0
.end method

.method public getItemScope()Landroidx/compose/foundation/lazy/LazyItemScopeImpl;
    .locals 0

    .line 73
    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->itemScope:Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    return-object p0
.end method

.method public getKey(I)Ljava/lang/Object;
    .locals 1

    .line 90
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->getKeyIndexMap()Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;->getKey(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->intervalContent:Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent;->getKey(I)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getKeyIndexMap()Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;
    .locals 0

    .line 74
    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->keyIndexMap:Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    .line 109
    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->intervalContent:Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method
