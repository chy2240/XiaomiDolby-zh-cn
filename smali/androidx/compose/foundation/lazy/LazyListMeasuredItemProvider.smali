.class public abstract Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;
.super Ljava/lang/Object;
.source "LazyListMeasuredItemProvider.kt"

# interfaces
.implements Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItemProvider;


# instance fields
.field private final childConstraints:J

.field private final itemProvider:Landroidx/compose/foundation/lazy/LazyListItemProvider;

.field private final measureScope:Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method private constructor <init>(JZLandroidx/compose/foundation/lazy/LazyListItemProvider;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;)V
    .locals 6

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p4, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->itemProvider:Landroidx/compose/foundation/lazy/LazyListItemProvider;

    .line 33
    iput-object p5, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->measureScope:Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;

    const p4, 0x7fffffff

    if-eqz p3, :cond_0

    .line 38
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result p5

    move v1, p5

    goto :goto_0

    :cond_0
    move v1, p4

    :goto_0
    if-nez p3, :cond_1

    .line 39
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result p4

    :cond_1
    move v3, p4

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 37
    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(IIIIILjava/lang/Object;)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->childConstraints:J

    return-void
.end method

.method public synthetic constructor <init>(JZLandroidx/compose/foundation/lazy/LazyListItemProvider;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;-><init>(JZLandroidx/compose/foundation/lazy/LazyListItemProvider;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;)V

    return-void
.end method

.method public static synthetic getAndMeasure-0kLqBqw$default(Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;IJILjava/lang/Object;)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 51
    iget-wide p2, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->childConstraints:J

    .line 49
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getAndMeasure-0kLqBqw(IJ)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getAndMeasure-0kLqBqw"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract createItem-X9ElhV4(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/List;J)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
.end method

.method public getAndMeasure--hBUhpc(IIIJ)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    .locals 0

    .line 43
    invoke-virtual {p0, p1, p4, p5}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getAndMeasure-0kLqBqw(IJ)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getAndMeasure--hBUhpc(IIIJ)Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;
    .locals 0

    .line 28
    invoke-virtual/range {p0 .. p5}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getAndMeasure--hBUhpc(IIIJ)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object p0

    return-object p0
.end method

.method public final getAndMeasure-0kLqBqw(IJ)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    .locals 8

    .line 53
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->itemProvider:Landroidx/compose/foundation/lazy/LazyListItemProvider;

    invoke-interface {v0, p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    .line 54
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->itemProvider:Landroidx/compose/foundation/lazy/LazyListItemProvider;

    invoke-interface {v0, p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;->getContentType(I)Ljava/lang/Object;

    move-result-object v4

    .line 55
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->measureScope:Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;

    invoke-interface {v0, p1, p2, p3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->measure-0kLqBqw(IJ)Ljava/util/List;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-wide v6, p2

    .line 56
    invoke-virtual/range {v1 .. v7}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->createItem-X9ElhV4(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/List;J)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object p0

    return-object p0
.end method

.method public final getChildConstraints-msEJaDk()J
    .locals 2

    .line 36
    iget-wide v0, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->childConstraints:J

    return-wide v0
.end method

.method public final getHeaderIndexes()Landroidx/collection/IntList;
    .locals 0

    .line 67
    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->itemProvider:Landroidx/compose/foundation/lazy/LazyListItemProvider;

    invoke-interface {p0}, Landroidx/compose/foundation/lazy/LazyListItemProvider;->getHeaderIndexes()Landroidx/collection/IntList;

    move-result-object p0

    return-object p0
.end method

.method public final getKeyIndexMap()Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;
    .locals 0

    .line 64
    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->itemProvider:Landroidx/compose/foundation/lazy/LazyListItemProvider;

    invoke-interface {p0}, Landroidx/compose/foundation/lazy/LazyListItemProvider;->getKeyIndexMap()Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    move-result-object p0

    return-object p0
.end method
