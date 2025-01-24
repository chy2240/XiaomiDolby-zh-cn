.class final Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$stickingItems$1;
.super Lkotlin/jvm/internal/Lambda;
.source "LazyListMeasure.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $measuredItemProvider:Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$stickingItems$1;->$measuredItemProvider:Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(I)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    .locals 6

    .line 408
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$stickingItems$1;->$measuredItemProvider:Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-wide/16 v2, 0x0

    move v1, p1

    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getAndMeasure-0kLqBqw$default(Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;IJILjava/lang/Object;)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 400
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$stickingItems$1;->invoke(I)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object p0

    return-object p0
.end method
