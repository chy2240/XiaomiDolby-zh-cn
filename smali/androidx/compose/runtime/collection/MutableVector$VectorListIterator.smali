.class final Landroidx/compose/runtime/collection/MutableVector$VectorListIterator;
.super Ljava/lang/Object;
.source "MutableVector.kt"

# interfaces
.implements Ljava/util/ListIterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# instance fields
.field private index:I

.field private final list:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;I)V
    .locals 0

    .line 842
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/collection/MutableVector$VectorListIterator;->list:Ljava/util/List;

    iput p2, p0, Landroidx/compose/runtime/collection/MutableVector$VectorListIterator;->index:I

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2

    .line 876
    iget-object v0, p0, Landroidx/compose/runtime/collection/MutableVector$VectorListIterator;->list:Ljava/util/List;

    iget v1, p0, Landroidx/compose/runtime/collection/MutableVector$VectorListIterator;->index:I

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 877
    iget p1, p0, Landroidx/compose/runtime/collection/MutableVector$VectorListIterator;->index:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/compose/runtime/collection/MutableVector$VectorListIterator;->index:I

    return-void
.end method

.method public hasNext()Z
    .locals 1

    .line 846
    iget v0, p0, Landroidx/compose/runtime/collection/MutableVector$VectorListIterator;->index:I

    iget-object p0, p0, Landroidx/compose/runtime/collection/MutableVector$VectorListIterator;->list:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasPrevious()Z
    .locals 0

    .line 859
    iget p0, p0, Landroidx/compose/runtime/collection/MutableVector$VectorListIterator;->index:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    .line 850
    iget-object v0, p0, Landroidx/compose/runtime/collection/MutableVector$VectorListIterator;->list:Ljava/util/List;

    iget v1, p0, Landroidx/compose/runtime/collection/MutableVector$VectorListIterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/compose/runtime/collection/MutableVector$VectorListIterator;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public nextIndex()I
    .locals 0

    .line 863
    iget p0, p0, Landroidx/compose/runtime/collection/MutableVector$VectorListIterator;->index:I

    return p0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1

    .line 867
    iget v0, p0, Landroidx/compose/runtime/collection/MutableVector$VectorListIterator;->index:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/compose/runtime/collection/MutableVector$VectorListIterator;->index:I

    .line 868
    iget-object p0, p0, Landroidx/compose/runtime/collection/MutableVector$VectorListIterator;->list:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public previousIndex()I
    .locals 0

    .line 872
    iget p0, p0, Landroidx/compose/runtime/collection/MutableVector$VectorListIterator;->index:I

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public remove()V
    .locals 1

    .line 854
    iget v0, p0, Landroidx/compose/runtime/collection/MutableVector$VectorListIterator;->index:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/compose/runtime/collection/MutableVector$VectorListIterator;->index:I

    .line 855
    iget-object p0, p0, Landroidx/compose/runtime/collection/MutableVector$VectorListIterator;->list:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1

    .line 881
    iget-object v0, p0, Landroidx/compose/runtime/collection/MutableVector$VectorListIterator;->list:Ljava/util/List;

    iget p0, p0, Landroidx/compose/runtime/collection/MutableVector$VectorListIterator;->index:I

    invoke-interface {v0, p0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
