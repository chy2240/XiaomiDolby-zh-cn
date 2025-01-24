.class public final Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;
.super Ljava/lang/Object;
.source "SnapshotDoubleIndexHeap.kt"


# instance fields
.field private firstFreeHandle:I

.field private handles:[I

.field private index:[I

.field private size:I

.field private values:[I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 42
    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->values:[I

    .line 45
    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->index:[I

    .line 51
    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    add-int/lit8 v3, v2, 0x1

    aput v3, v1, v2

    move v2, v3

    goto :goto_0

    :cond_0
    iput-object v1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->handles:[I

    return-void
.end method

.method private final allocateHandle()I
    .locals 9

    .line 178
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->handles:[I

    array-length v0, v0

    .line 179
    iget v1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->firstFreeHandle:I

    if-lt v1, v0, :cond_1

    mul-int/lit8 v0, v0, 0x2

    .line 180
    new-array v8, v0, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    add-int/lit8 v2, v1, 0x1

    aput v2, v8, v1

    move v1, v2

    goto :goto_0

    .line 181
    :cond_0
    iget-object v1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->handles:[I

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, v8

    invoke-static/range {v1 .. v7}, Lkotlin/collections/ArraysKt;->copyInto$default([I[IIIIILjava/lang/Object;)[I

    .line 182
    iput-object v8, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->handles:[I

    .line 184
    :cond_1
    iget v0, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->firstFreeHandle:I

    .line 185
    iget-object v1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->handles:[I

    aget v1, v1, v0

    iput v1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->firstFreeHandle:I

    return v0
.end method

.method private final ensure(I)V
    .locals 10

    .line 165
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->values:[I

    array-length v1, v0

    if-gt p1, v1, :cond_0

    return-void

    :cond_0
    mul-int/lit8 v1, v1, 0x2

    .line 168
    new-array p1, v1, [I

    .line 169
    new-array v9, v1, [I

    const/16 v5, 0xe

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    .line 170
    invoke-static/range {v0 .. v6}, Lkotlin/collections/ArraysKt;->copyInto$default([I[IIIIILjava/lang/Object;)[I

    .line 171
    iget-object v2, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->index:[I

    const/16 v7, 0xe

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, v9

    invoke-static/range {v2 .. v8}, Lkotlin/collections/ArraysKt;->copyInto$default([I[IIIIILjava/lang/Object;)[I

    .line 172
    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->values:[I

    .line 173
    iput-object v9, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->index:[I

    return-void
.end method

.method private final freeHandle(I)V
    .locals 2

    .line 194
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->handles:[I

    iget v1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->firstFreeHandle:I

    aput v1, v0, p1

    .line 195
    iput p1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->firstFreeHandle:I

    return-void
.end method

.method private final shiftDown(I)V
    .locals 6

    .line 126
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->values:[I

    .line 127
    iget v1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->size:I

    shr-int/lit8 v1, v1, 0x1

    :goto_0
    if-ge p1, v1, :cond_2

    add-int/lit8 v2, p1, 0x1

    shl-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v2, -0x1

    .line 132
    iget v4, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->size:I

    if-ge v2, v4, :cond_1

    aget v4, v0, v2

    aget v5, v0, v3

    if-ge v4, v5, :cond_1

    .line 133
    aget v3, v0, p1

    if-ge v4, v3, :cond_0

    .line 134
    invoke-direct {p0, v2, p1}, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->swap(II)V

    move p1, v2

    goto :goto_0

    :cond_0
    return-void

    .line 137
    :cond_1
    aget v2, v0, v3

    aget v4, v0, p1

    if-ge v2, v4, :cond_2

    .line 138
    invoke-direct {p0, v3, p1}, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->swap(II)V

    move p1, v3

    goto :goto_0

    :cond_2
    return-void
.end method

.method private final shiftUp(I)V
    .locals 4

    .line 107
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->values:[I

    .line 108
    aget v1, v0, p1

    :goto_0
    if-lez p1, :cond_0

    add-int/lit8 v2, p1, 0x1

    shr-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, -0x1

    .line 112
    aget v3, v0, v2

    if-le v3, v1, :cond_0

    .line 113
    invoke-direct {p0, v2, p1}, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->swap(II)V

    move p1, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final swap(II)V
    .locals 4

    .line 150
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->values:[I

    .line 151
    iget-object v1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->index:[I

    .line 152
    iget-object p0, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->handles:[I

    .line 153
    aget v2, v0, p1

    .line 154
    aget v3, v0, p2

    aput v3, v0, p1

    .line 155
    aput v2, v0, p2

    .line 156
    aget v0, v1, p1

    .line 157
    aget v2, v1, p2

    aput v2, v1, p1

    .line 158
    aput v0, v1, p2

    .line 159
    aget v0, v1, p1

    aput p1, p0, v0

    .line 160
    aget p1, v1, p2

    aput p2, p0, p1

    return-void
.end method


# virtual methods
.method public final add(I)I
    .locals 3

    .line 63
    iget v0, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->ensure(I)V

    .line 64
    iget v0, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->size:I

    .line 65
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->allocateHandle()I

    move-result v1

    .line 66
    iget-object v2, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->values:[I

    aput p1, v2, v0

    .line 67
    iget-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->index:[I

    aput v1, p1, v0

    .line 68
    iget-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->handles:[I

    aput v0, p1, v1

    .line 69
    invoke-direct {p0, v0}, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->shiftUp(I)V

    return v1
.end method

.method public final lowestOrDefault(I)I
    .locals 1

    .line 56
    iget v0, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->size:I

    if-lez v0, :cond_0

    iget-object p0, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->values:[I

    const/4 p1, 0x0

    aget p1, p0, p1

    :cond_0
    return p1
.end method

.method public final remove(I)V
    .locals 2

    .line 79
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->handles:[I

    aget v0, v0, p1

    .line 80
    iget v1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->size:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v0, v1}, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->swap(II)V

    .line 81
    iget v1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->size:I

    .line 82
    invoke-direct {p0, v0}, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->shiftUp(I)V

    .line 83
    invoke-direct {p0, v0}, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->shiftDown(I)V

    .line 84
    invoke-direct {p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->freeHandle(I)V

    return-void
.end method
