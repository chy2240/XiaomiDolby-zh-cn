.class public final Landroidx/compose/runtime/snapshots/SnapshotWeakSet;
.super Ljava/lang/Object;
.source "SnapshotWeakSet.kt"


# instance fields
.field private hashes:[I

.field private size:I

.field private values:[Landroidx/compose/runtime/internal/WeakReference;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 47
    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->hashes:[I

    .line 48
    new-array v0, v0, [Landroidx/compose/runtime/internal/WeakReference;

    iput-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->values:[Landroidx/compose/runtime/internal/WeakReference;

    return-void
.end method

.method private final find(Ljava/lang/Object;I)I
    .locals 4

    .line 154
    iget v0, p0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->size:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-gt v1, v0, :cond_4

    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    .line 158
    iget-object v3, p0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->hashes:[I

    aget v3, v3, v2

    if-ge v3, p2, :cond_0

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_0
    if-le v3, p2, :cond_1

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    .line 163
    :cond_1
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->values:[Landroidx/compose/runtime/internal/WeakReference;

    aget-object v0, v0, v2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-ne p1, v0, :cond_3

    return v2

    .line 165
    :cond_3
    invoke-direct {p0, v2, p1, p2}, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->findExactIndex(ILjava/lang/Object;I)I

    move-result p0

    return p0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    neg-int p0, v1

    return p0
.end method

.method private final findExactIndex(ILjava/lang/Object;I)I
    .locals 3

    add-int/lit8 v0, p1, -0x1

    :goto_0
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ge v2, v0, :cond_3

    .line 182
    iget-object v2, p0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->hashes:[I

    aget v2, v2, v0

    if-eq v2, p3, :cond_0

    goto :goto_1

    .line 185
    :cond_0
    iget-object v2, p0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->values:[Landroidx/compose/runtime/internal/WeakReference;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    :cond_1
    if-ne v1, p2, :cond_2

    return v0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    add-int/lit8 p1, p1, 0x1

    .line 191
    iget v0, p0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->size:I

    :goto_2
    if-ge p1, v0, :cond_7

    .line 192
    iget-object v2, p0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->hashes:[I

    aget v2, v2, p1

    if-eq v2, p3, :cond_4

    add-int/lit8 p1, p1, 0x1

    neg-int p0, p1

    return p0

    .line 196
    :cond_4
    iget-object v2, p0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->values:[Landroidx/compose/runtime/internal/WeakReference;

    aget-object v2, v2, p1

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    goto :goto_3

    :cond_5
    move-object v2, v1

    :goto_3
    if-ne v2, p2, :cond_6

    return p1

    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 203
    :cond_7
    iget p0, p0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->size:I

    add-int/lit8 p0, p0, 0x1

    neg-int p0, p0

    return p0
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 14

    .line 55
    iget v0, p0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->size:I

    .line 56
    invoke-static {p1}, Landroidx/compose/runtime/internal/Utils_jvmKt;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    if-lez v0, :cond_0

    .line 58
    invoke-direct {p0, p1, v1}, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->find(Ljava/lang/Object;I)I

    move-result v2

    if-ltz v2, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v2, -0x1

    :cond_1
    const/4 v3, 0x1

    add-int/2addr v2, v3

    neg-int v2, v2

    .line 68
    iget-object v4, p0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->values:[Landroidx/compose/runtime/internal/WeakReference;

    array-length v5, v4

    if-ne v0, v5, :cond_2

    mul-int/lit8 v5, v5, 0x2

    .line 71
    new-array v11, v5, [Landroidx/compose/runtime/internal/WeakReference;

    .line 72
    new-array v12, v5, [I

    add-int/lit8 v13, v2, 0x1

    .line 73
    invoke-static {v4, v11, v13, v2, v0}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 79
    iget-object v4, p0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->values:[Landroidx/compose/runtime/internal/WeakReference;

    const/4 v9, 0x6

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v11

    move v8, v2

    invoke-static/range {v4 .. v10}, Lkotlin/collections/ArraysKt;->copyInto$default([Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/lang/Object;)[Ljava/lang/Object;

    .line 80
    iget-object v4, p0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->hashes:[I

    invoke-static {v4, v12, v13, v2, v0}, Lkotlin/collections/ArraysKt;->copyInto([I[IIII)[I

    .line 86
    iget-object v4, p0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->hashes:[I

    move-object v5, v12

    invoke-static/range {v4 .. v10}, Lkotlin/collections/ArraysKt;->copyInto$default([I[IIIIILjava/lang/Object;)[I

    .line 87
    iput-object v11, p0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->values:[Landroidx/compose/runtime/internal/WeakReference;

    .line 88
    iput-object v12, p0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->hashes:[I

    goto :goto_0

    :cond_2
    add-int/lit8 v5, v2, 0x1

    .line 90
    invoke-static {v4, v4, v5, v2, v0}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 96
    iget-object v4, p0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->hashes:[I

    invoke-static {v4, v4, v5, v2, v0}, Lkotlin/collections/ArraysKt;->copyInto([I[IIII)[I

    .line 105
    :goto_0
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->values:[Landroidx/compose/runtime/internal/WeakReference;

    new-instance v4, Landroidx/compose/runtime/internal/WeakReference;

    invoke-direct {v4, p1}, Landroidx/compose/runtime/internal/WeakReference;-><init>(Ljava/lang/Object;)V

    aput-object v4, v0, v2

    .line 106
    iget-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->hashes:[I

    aput v1, p1, v2

    .line 107
    iget p1, p0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->size:I

    add-int/2addr p1, v3

    iput p1, p0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->size:I

    return v3
.end method

.method public final getHashes$runtime_release()[I
    .locals 0

    .line 47
    iget-object p0, p0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->hashes:[I

    return-object p0
.end method

.method public final getSize$runtime_release()I
    .locals 0

    .line 40
    iget p0, p0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->size:I

    return p0
.end method

.method public final getValues$runtime_release()[Landroidx/compose/runtime/internal/WeakReference;
    .locals 0

    .line 48
    iget-object p0, p0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->values:[Landroidx/compose/runtime/internal/WeakReference;

    return-object p0
.end method

.method public final setSize$runtime_release(I)V
    .locals 0

    .line 40
    iput p1, p0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->size:I

    return-void
.end method
