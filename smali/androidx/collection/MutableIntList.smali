.class public final Landroidx/collection/MutableIntList;
.super Landroidx/collection/IntList;
.source "IntList.kt"


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 548
    invoke-direct {p0, p1, v0}, Landroidx/collection/IntList;-><init>(ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/16 p1, 0x10

    .line 548
    :cond_0
    invoke-direct {p0, p1}, Landroidx/collection/MutableIntList;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final add(I)Z
    .locals 3

    .line 559
    iget v0, p0, Landroidx/collection/IntList;->_size:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroidx/collection/MutableIntList;->ensureCapacity(I)V

    .line 560
    iget-object v0, p0, Landroidx/collection/IntList;->content:[I

    iget v2, p0, Landroidx/collection/IntList;->_size:I

    aput p1, v0, v2

    add-int/2addr v2, v1

    .line 561
    iput v2, p0, Landroidx/collection/IntList;->_size:I

    return v1
.end method

.method public final addAll(I[I)Z
    .locals 8

    const-string v0, "elements"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p1, :cond_0

    .line 597
    iget v0, p0, Landroidx/collection/IntList;->_size:I

    if-gt p1, v0, :cond_0

    goto :goto_0

    .line 598
    :cond_0
    const-string v0, ""

    invoke-static {v0}, Landroidx/collection/internal/RuntimeHelpersKt;->throwIndexOutOfBoundsException(Ljava/lang/String;)V

    .line 600
    :goto_0
    array-length v0, p2

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 601
    :cond_1
    iget v0, p0, Landroidx/collection/IntList;->_size:I

    array-length v1, p2

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroidx/collection/MutableIntList;->ensureCapacity(I)V

    .line 602
    iget-object v2, p0, Landroidx/collection/IntList;->content:[I

    .line 603
    iget v0, p0, Landroidx/collection/IntList;->_size:I

    if-eq p1, v0, :cond_2

    .line 606
    array-length v1, p2

    add-int/2addr v1, p1

    .line 604
    invoke-static {v2, v2, v1, p1, v0}, Lkotlin/collections/ArraysKt;->copyInto([I[IIII)[I

    :cond_2
    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    move v3, p1

    .line 611
    invoke-static/range {v1 .. v7}, Lkotlin/collections/ArraysKt;->copyInto$default([I[IIIIILjava/lang/Object;)[I

    .line 612
    iget p1, p0, Landroidx/collection/IntList;->_size:I

    array-length p2, p2

    add-int/2addr p1, p2

    iput p1, p0, Landroidx/collection/IntList;->_size:I

    const/4 p0, 0x1

    return p0
.end method

.method public final ensureCapacity(I)V
    .locals 2

    .line 702
    iget-object v0, p0, Landroidx/collection/IntList;->content:[I

    .line 703
    array-length v1, v0

    if-ge v1, p1, :cond_0

    .line 704
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 705
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    const-string v0, "copyOf(this, newSize)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/collection/IntList;->content:[I

    :cond_0
    return-void
.end method

.method public final removeAt(I)I
    .locals 4

    if-ltz p1, :cond_0

    .line 770
    iget v0, p0, Landroidx/collection/IntList;->_size:I

    if-ge p1, v0, :cond_0

    goto :goto_0

    .line 771
    :cond_0
    const-string v0, "Index must be between 0 and size"

    invoke-static {v0}, Landroidx/collection/internal/RuntimeHelpersKt;->throwIndexOutOfBoundsException(Ljava/lang/String;)V

    .line 773
    :goto_0
    iget-object v0, p0, Landroidx/collection/IntList;->content:[I

    .line 774
    aget v1, v0, p1

    .line 69
    iget v2, p0, Landroidx/collection/IntList;->_size:I

    add-int/lit8 v3, v2, -0x1

    if-eq p1, v3, :cond_1

    add-int/lit8 v3, p1, 0x1

    .line 776
    invoke-static {v0, v0, p1, v3, v2}, Lkotlin/collections/ArraysKt;->copyInto([I[IIII)[I

    .line 783
    :cond_1
    iget p1, p0, Landroidx/collection/IntList;->_size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/collection/IntList;->_size:I

    return v1
.end method

.method public final set(II)I
    .locals 1

    if-ltz p1, :cond_0

    .line 854
    iget v0, p0, Landroidx/collection/IntList;->_size:I

    if-ge p1, v0, :cond_0

    goto :goto_0

    .line 855
    :cond_0
    const-string v0, "Index must be between 0 and size"

    invoke-static {v0}, Landroidx/collection/internal/RuntimeHelpersKt;->throwIndexOutOfBoundsException(Ljava/lang/String;)V

    .line 857
    :goto_0
    iget-object p0, p0, Landroidx/collection/IntList;->content:[I

    .line 858
    aget v0, p0, p1

    .line 859
    aput p2, p0, p1

    return v0
.end method
