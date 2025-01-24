.class public abstract Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItemKt;
.super Ljava/lang/Object;
.source "LazyLayoutMeasuredItem.kt"


# static fields
.field private static final LazyLayoutMeasuredItemIndexComparator:Ljava/util/Comparator;


# direct methods
.method public static synthetic $r8$lambda$pFf4caKHsz1Kq6sShD-TB5Q6TBo(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;)I
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItemKt;->LazyLayoutMeasuredItemIndexComparator$lambda$2(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 69
    new-instance v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItemKt$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItemKt$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItemKt;->LazyLayoutMeasuredItemIndexComparator:Ljava/util/Comparator;

    return-void
.end method

.method private static final LazyLayoutMeasuredItemIndexComparator$lambda$2(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;)I
    .locals 0

    .line 69
    invoke-interface {p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getIndex()I

    move-result p0

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getIndex()I

    move-result p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result p0

    return p0
.end method

.method public static final updatedVisibleItems(IILjava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 4

    .line 51
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 53
    :cond_0
    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p3

    .line 34
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 35
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 36
    check-cast v2, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    .line 57
    invoke-interface {v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getIndex()I

    move-result v3

    if-gt p0, v3, :cond_1

    if-gt v3, p1, :cond_1

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 60
    :cond_2
    sget-object p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItemKt;->LazyLayoutMeasuredItemIndexComparator:Ljava/util/Comparator;

    invoke-static {p3, p0}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    return-object p3
.end method
