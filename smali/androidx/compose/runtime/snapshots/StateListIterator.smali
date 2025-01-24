.class final Landroidx/compose/runtime/snapshots/StateListIterator;
.super Ljava/lang/Object;
.source "SnapshotStateList.kt"

# interfaces
.implements Ljava/util/ListIterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# instance fields
.field private index:I

.field private lastRequested:I

.field private final list:Landroidx/compose/runtime/snapshots/SnapshotStateList;

.field private structure:I


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/snapshots/SnapshotStateList;I)V
    .locals 0

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/StateListIterator;->list:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    add-int/lit8 p2, p2, -0x1

    .line 319
    iput p2, p0, Landroidx/compose/runtime/snapshots/StateListIterator;->index:I

    const/4 p2, -0x1

    .line 320
    iput p2, p0, Landroidx/compose/runtime/snapshots/StateListIterator;->lastRequested:I

    .line 321
    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->getStructure$runtime_release()I

    move-result p1

    iput p1, p0, Landroidx/compose/runtime/snapshots/StateListIterator;->structure:I

    return-void
.end method

.method private final validateModification()V
    .locals 1

    .line 370
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/StateListIterator;->list:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->getStructure$runtime_release()I

    move-result v0

    iget p0, p0, Landroidx/compose/runtime/snapshots/StateListIterator;->structure:I

    if-ne v0, p0, :cond_0

    return-void

    .line 371
    :cond_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2

    .line 337
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/StateListIterator;->validateModification()V

    .line 338
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/StateListIterator;->list:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    iget v1, p0, Landroidx/compose/runtime/snapshots/StateListIterator;->index:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(ILjava/lang/Object;)V

    const/4 p1, -0x1

    .line 339
    iput p1, p0, Landroidx/compose/runtime/snapshots/StateListIterator;->lastRequested:I

    .line 340
    iget p1, p0, Landroidx/compose/runtime/snapshots/StateListIterator;->index:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/compose/runtime/snapshots/StateListIterator;->index:I

    .line 341
    iget-object p1, p0, Landroidx/compose/runtime/snapshots/StateListIterator;->list:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->getStructure$runtime_release()I

    move-result p1

    iput p1, p0, Landroidx/compose/runtime/snapshots/StateListIterator;->structure:I

    return-void
.end method

.method public hasNext()Z
    .locals 2

    .line 344
    iget v0, p0, Landroidx/compose/runtime/snapshots/StateListIterator;->index:I

    iget-object p0, p0, Landroidx/compose/runtime/snapshots/StateListIterator;->list:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    move-result p0

    const/4 v1, 0x1

    sub-int/2addr p0, v1

    if-ge v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasPrevious()Z
    .locals 0

    .line 323
    iget p0, p0, Landroidx/compose/runtime/snapshots/StateListIterator;->index:I

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .line 347
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/StateListIterator;->validateModification()V

    .line 348
    iget v0, p0, Landroidx/compose/runtime/snapshots/StateListIterator;->index:I

    add-int/lit8 v0, v0, 0x1

    .line 349
    iput v0, p0, Landroidx/compose/runtime/snapshots/StateListIterator;->lastRequested:I

    .line 350
    iget-object v1, p0, Landroidx/compose/runtime/snapshots/StateListIterator;->list:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/runtime/snapshots/SnapshotStateListKt;->access$validateRange(II)V

    .line 351
    iget-object v1, p0, Landroidx/compose/runtime/snapshots/StateListIterator;->list:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    move-result-object v1

    iput v0, p0, Landroidx/compose/runtime/snapshots/StateListIterator;->index:I

    return-object v1
.end method

.method public nextIndex()I
    .locals 0

    .line 325
    iget p0, p0, Landroidx/compose/runtime/snapshots/StateListIterator;->index:I

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2

    .line 328
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/StateListIterator;->validateModification()V

    .line 329
    iget v0, p0, Landroidx/compose/runtime/snapshots/StateListIterator;->index:I

    iget-object v1, p0, Landroidx/compose/runtime/snapshots/StateListIterator;->list:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/runtime/snapshots/SnapshotStateListKt;->access$validateRange(II)V

    .line 330
    iget v0, p0, Landroidx/compose/runtime/snapshots/StateListIterator;->index:I

    iput v0, p0, Landroidx/compose/runtime/snapshots/StateListIterator;->lastRequested:I

    .line 331
    iget-object v1, p0, Landroidx/compose/runtime/snapshots/StateListIterator;->list:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Landroidx/compose/runtime/snapshots/StateListIterator;->index:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroidx/compose/runtime/snapshots/StateListIterator;->index:I

    return-object v0
.end method

.method public previousIndex()I
    .locals 0

    .line 334
    iget p0, p0, Landroidx/compose/runtime/snapshots/StateListIterator;->index:I

    return p0
.end method

.method public remove()V
    .locals 2

    .line 355
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/StateListIterator;->validateModification()V

    .line 356
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/StateListIterator;->list:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    iget v1, p0, Landroidx/compose/runtime/snapshots/StateListIterator;->index:I

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->remove(I)Ljava/lang/Object;

    .line 357
    iget v0, p0, Landroidx/compose/runtime/snapshots/StateListIterator;->index:I

    const/4 v1, -0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/compose/runtime/snapshots/StateListIterator;->index:I

    .line 358
    iput v1, p0, Landroidx/compose/runtime/snapshots/StateListIterator;->lastRequested:I

    .line 359
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/StateListIterator;->list:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->getStructure$runtime_release()I

    move-result v0

    iput v0, p0, Landroidx/compose/runtime/snapshots/StateListIterator;->structure:I

    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 2

    .line 363
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/StateListIterator;->validateModification()V

    .line 364
    iget v0, p0, Landroidx/compose/runtime/snapshots/StateListIterator;->lastRequested:I

    if-ltz v0, :cond_0

    .line 365
    iget-object v1, p0, Landroidx/compose/runtime/snapshots/StateListIterator;->list:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {v1, v0, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 366
    iget-object p1, p0, Landroidx/compose/runtime/snapshots/StateListIterator;->list:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->getStructure$runtime_release()I

    move-result p1

    iput p1, p0, Landroidx/compose/runtime/snapshots/StateListIterator;->structure:I

    return-void

    .line 364
    :cond_0
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateListKt;->access$invalidIteratorSet()Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method
