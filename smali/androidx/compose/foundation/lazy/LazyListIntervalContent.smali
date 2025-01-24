.class public final Landroidx/compose/foundation/lazy/LazyListIntervalContent;
.super Landroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent;
.source "LazyListIntervalContent.kt"

# interfaces
.implements Landroidx/compose/foundation/lazy/LazyListScope;


# instance fields
.field private _headerIndexes:Landroidx/collection/MutableIntList;

.field private final intervals:Landroidx/compose/foundation/lazy/layout/MutableIntervalList;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent;-><init>()V

    .line 32
    new-instance v0, Landroidx/compose/foundation/lazy/layout/MutableIntervalList;

    invoke-direct {v0}, Landroidx/compose/foundation/lazy/layout/MutableIntervalList;-><init>()V

    iput-object v0, p0, Landroidx/compose/foundation/lazy/LazyListIntervalContent;->intervals:Landroidx/compose/foundation/lazy/layout/MutableIntervalList;

    .line 39
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getHeaderIndexes()Landroidx/collection/IntList;
    .locals 0

    .line 36
    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListIntervalContent;->_headerIndexes:Landroidx/collection/MutableIntList;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/collection/IntListKt;->emptyIntList()Landroidx/collection/IntList;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public bridge synthetic getIntervals()Landroidx/compose/foundation/lazy/layout/IntervalList;
    .locals 0

    .line 28
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListIntervalContent;->getIntervals()Landroidx/compose/foundation/lazy/layout/MutableIntervalList;

    move-result-object p0

    return-object p0
.end method

.method public getIntervals()Landroidx/compose/foundation/lazy/layout/MutableIntervalList;
    .locals 0

    .line 32
    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListIntervalContent;->intervals:Landroidx/compose/foundation/lazy/layout/MutableIntervalList;

    return-object p0
.end method

.method public item(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)V
    .locals 3

    .line 55
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListIntervalContent;->getIntervals()Landroidx/compose/foundation/lazy/layout/MutableIntervalList;

    move-result-object p0

    .line 57
    new-instance v0, Landroidx/compose/foundation/lazy/LazyListInterval;

    if-eqz p1, :cond_0

    .line 55
    new-instance v1, Landroidx/compose/foundation/lazy/LazyListIntervalContent$item$1;

    invoke-direct {v1, p1}, Landroidx/compose/foundation/lazy/LazyListIntervalContent$item$1;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance p1, Landroidx/compose/foundation/lazy/LazyListIntervalContent$item$2;

    invoke-direct {p1, p2}, Landroidx/compose/foundation/lazy/LazyListIntervalContent$item$2;-><init>(Ljava/lang/Object;)V

    .line 60
    new-instance p2, Landroidx/compose/foundation/lazy/LazyListIntervalContent$item$3;

    invoke-direct {p2, p3}, Landroidx/compose/foundation/lazy/LazyListIntervalContent$item$3;-><init>(Lkotlin/jvm/functions/Function3;)V

    const p3, -0x3c36593a

    const/4 v2, 0x1

    invoke-static {p3, v2, p2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object p2

    .line 57
    invoke-direct {v0, v1, p1, p2}, Landroidx/compose/foundation/lazy/LazyListInterval;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    .line 55
    invoke-virtual {p0, v2, v0}, Landroidx/compose/foundation/lazy/layout/MutableIntervalList;->addInterval(ILjava/lang/Object;)V

    return-void
.end method

.method public items(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V
    .locals 1

    .line 48
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListIntervalContent;->getIntervals()Landroidx/compose/foundation/lazy/layout/MutableIntervalList;

    move-result-object p0

    .line 50
    new-instance v0, Landroidx/compose/foundation/lazy/LazyListInterval;

    invoke-direct {v0, p2, p3, p4}, Landroidx/compose/foundation/lazy/LazyListInterval;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    .line 48
    invoke-virtual {p0, p1, v0}, Landroidx/compose/foundation/lazy/layout/MutableIntervalList;->addInterval(ILjava/lang/Object;)V

    return-void
.end method
