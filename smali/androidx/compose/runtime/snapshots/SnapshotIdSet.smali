.class public final Landroidx/compose/runtime/snapshots/SnapshotIdSet;
.super Ljava/lang/Object;
.source "SnapshotIdSet.kt"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# static fields
.field public static final Companion:Landroidx/compose/runtime/snapshots/SnapshotIdSet$Companion;

.field private static final EMPTY:Landroidx/compose/runtime/snapshots/SnapshotIdSet;


# instance fields
.field private final belowBound:[I

.field private final lowerBound:I

.field private final lowerSet:J

.field private final upperSet:J


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->Companion:Landroidx/compose/runtime/snapshots/SnapshotIdSet$Companion;

    .line 349
    new-instance v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;-><init>(JJI[I)V

    sput-object v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->EMPTY:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    return-void
.end method

.method private constructor <init>(JJI[I)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-wide p1, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->upperSet:J

    .line 45
    iput-wide p3, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerSet:J

    .line 48
    iput p5, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerBound:I

    .line 50
    iput-object p6, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->belowBound:[I

    return-void
.end method

.method public static final synthetic access$getBelowBound$p(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)[I
    .locals 0

    .line 39
    iget-object p0, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->belowBound:[I

    return-object p0
.end method

.method public static final synthetic access$getEMPTY$cp()Landroidx/compose/runtime/snapshots/SnapshotIdSet;
    .locals 1

    .line 39
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->EMPTY:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    return-object v0
.end method

.method public static final synthetic access$getLowerBound$p(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)I
    .locals 0

    .line 39
    iget p0, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerBound:I

    return p0
.end method

.method public static final synthetic access$getLowerSet$p(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)J
    .locals 2

    .line 39
    iget-wide v0, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerSet:J

    return-wide v0
.end method

.method public static final synthetic access$getUpperSet$p(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)J
    .locals 2

    .line 39
    iget-wide v0, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->upperSet:J

    return-wide v0
.end method


# virtual methods
.method public final andNot(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/SnapshotIdSet;
    .locals 11

    .line 217
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->EMPTY:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    if-ne p0, v0, :cond_1

    return-object v0

    .line 219
    :cond_1
    iget v0, p1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerBound:I

    iget v6, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerBound:I

    if-ne v0, v6, :cond_2

    iget-object v0, p1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->belowBound:[I

    iget-object v7, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->belowBound:[I

    if-ne v0, v7, :cond_2

    .line 220
    new-instance v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 221
    iget-wide v1, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->upperSet:J

    iget-wide v3, p1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->upperSet:J

    not-long v3, v3

    and-long v2, v1, v3

    .line 222
    iget-wide v4, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerSet:J

    iget-wide p0, p1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerSet:J

    not-long p0, p0

    and-long/2addr v4, p0

    move-object v1, v0

    .line 220
    invoke-direct/range {v1 .. v7}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;-><init>(JJI[I)V

    goto :goto_3

    .line 313
    :cond_2
    invoke-static {p1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->access$getBelowBound$p(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)[I

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 315
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_3

    aget v4, v0, v3

    .line 227
    invoke-virtual {p0, v4}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->clear(I)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object p0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 318
    :cond_3
    invoke-static {p1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->access$getLowerSet$p(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    const-wide/16 v2, 0x1

    const/16 v6, 0x40

    if-eqz v0, :cond_5

    move v0, v1

    :goto_1
    if-ge v0, v6, :cond_5

    .line 320
    invoke-static {p1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->access$getLowerSet$p(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)J

    move-result-wide v7

    shl-long v9, v2, v0

    and-long/2addr v7, v9

    cmp-long v7, v7, v4

    if-eqz v7, :cond_4

    .line 321
    invoke-static {p1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->access$getLowerBound$p(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)I

    move-result v7

    add-int/2addr v7, v0

    .line 227
    invoke-virtual {p0, v7}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->clear(I)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object p0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 325
    :cond_5
    invoke-static {p1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->access$getUpperSet$p(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)J

    move-result-wide v7

    cmp-long v0, v7, v4

    if-eqz v0, :cond_7

    :goto_2
    if-ge v1, v6, :cond_7

    .line 327
    invoke-static {p1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->access$getUpperSet$p(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)J

    move-result-wide v7

    shl-long v9, v2, v1

    and-long/2addr v7, v9

    cmp-long v0, v7, v4

    if-eqz v0, :cond_6

    add-int/lit8 v0, v1, 0x40

    .line 328
    invoke-static {p1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->access$getLowerBound$p(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)I

    move-result v7

    add-int/2addr v0, v7

    .line 227
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->clear(I)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object p0

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    move-object v0, p0

    :goto_3
    return-object v0
.end method

.method public final clear(I)Landroidx/compose/runtime/snapshots/SnapshotIdSet;
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 160
    iget v5, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerBound:I

    sub-int v2, v1, v5

    const-wide/16 v3, 0x0

    const-wide/16 v6, 0x1

    const/16 v8, 0x40

    if-ltz v2, :cond_0

    if-ge v2, v8, :cond_0

    shl-long v1, v6, v2

    .line 163
    iget-wide v6, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerSet:J

    and-long v8, v6, v1

    cmp-long v3, v8, v3

    if-eqz v3, :cond_5

    .line 164
    new-instance v8, Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 165
    iget-wide v3, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->upperSet:J

    not-long v1, v1

    and-long/2addr v6, v1

    .line 168
    iget-object v9, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->belowBound:[I

    move-object v0, v8

    move-wide v1, v3

    move-wide v3, v6

    move-object v6, v9

    .line 164
    invoke-direct/range {v0 .. v6}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;-><init>(JJI[I)V

    return-object v8

    :cond_0
    if-lt v2, v8, :cond_1

    const/16 v9, 0x80

    if-ge v2, v9, :cond_1

    sub-int/2addr v2, v8

    shl-long v1, v6, v2

    .line 173
    iget-wide v6, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->upperSet:J

    and-long v8, v6, v1

    cmp-long v3, v8, v3

    if-eqz v3, :cond_5

    .line 174
    new-instance v8, Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    not-long v1, v1

    and-long/2addr v1, v6

    .line 176
    iget-wide v3, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerSet:J

    .line 178
    iget-object v6, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->belowBound:[I

    move-object v0, v8

    .line 174
    invoke-direct/range {v0 .. v6}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;-><init>(JJI[I)V

    return-object v8

    :cond_1
    if-gez v2, :cond_5

    .line 182
    iget-object v2, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->belowBound:[I

    if-eqz v2, :cond_5

    .line 184
    invoke-static {v2, v1}, Landroidx/compose/runtime/snapshots/SnapshotIdSetKt;->binarySearch([II)I

    move-result v1

    if-ltz v1, :cond_5

    .line 186
    array-length v3, v2

    add-int/lit8 v4, v3, -0x1

    if-nez v4, :cond_2

    .line 188
    new-instance v1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    iget-wide v6, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->upperSet:J

    iget-wide v8, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerSet:J

    iget v10, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerBound:I

    const/4 v11, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v11}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;-><init>(JJI[I)V

    return-object v1

    .line 190
    :cond_2
    new-array v5, v4, [I

    if-lez v1, :cond_3

    const/4 v6, 0x0

    .line 192
    invoke-static {v2, v5, v6, v6, v1}, Lkotlin/collections/ArraysKt;->copyInto([I[IIII)[I

    :cond_3
    if-ge v1, v4, :cond_4

    add-int/lit8 v4, v1, 0x1

    .line 200
    invoke-static {v2, v5, v1, v4, v3}, Lkotlin/collections/ArraysKt;->copyInto([I[IIII)[I

    .line 207
    :cond_4
    new-instance v1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    iget-wide v13, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->upperSet:J

    iget-wide v2, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerSet:J

    iget v0, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerBound:I

    move-object v12, v1

    move-wide v15, v2

    move/from16 v17, v0

    move-object/from16 v18, v5

    invoke-direct/range {v12 .. v18}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;-><init>(JJI[I)V

    return-object v1

    :cond_5
    return-object v0
.end method

.method public final get(I)Z
    .locals 9

    .line 55
    iget v0, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerBound:I

    sub-int v0, p1, v0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x1

    const/4 v5, 0x1

    const/16 v6, 0x40

    const/4 v7, 0x0

    if-ltz v0, :cond_1

    if-ge v0, v6, :cond_1

    shl-long/2addr v3, v0

    .line 57
    iget-wide p0, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerSet:J

    and-long/2addr p0, v3

    cmp-long p0, p0, v1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v5, v7

    :goto_0
    return v5

    :cond_1
    if-lt v0, v6, :cond_3

    const/16 v8, 0x80

    if-ge v0, v8, :cond_3

    sub-int/2addr v0, v6

    shl-long/2addr v3, v0

    .line 59
    iget-wide p0, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->upperSet:J

    and-long/2addr p0, v3

    cmp-long p0, p0, v1

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v5, v7

    :goto_1
    return v5

    :cond_3
    if-lez v0, :cond_4

    return v7

    .line 62
    :cond_4
    iget-object p0, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->belowBound:[I

    if-eqz p0, :cond_6

    invoke-static {p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotIdSetKt;->binarySearch([II)I

    move-result p0

    if-ltz p0, :cond_5

    goto :goto_2

    :cond_5
    move v5, v7

    :goto_2
    move v7, v5

    :cond_6
    return v7
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .line 280
    new-instance v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;-><init>(Landroidx/compose/runtime/snapshots/SnapshotIdSet;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->sequence(Lkotlin/jvm/functions/Function2;)Lkotlin/sequences/Sequence;

    move-result-object p0

    .line 301
    invoke-interface {p0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public final lowest(I)I
    .locals 5

    .line 335
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->belowBound:[I

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    .line 336
    aget p0, v0, p0

    return p0

    .line 337
    :cond_0
    iget-wide v0, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerSet:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget p0, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerBound:I

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0

    .line 338
    :cond_1
    iget-wide v0, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->upperSet:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    iget p0, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerBound:I

    add-int/lit8 p0, p0, 0x40

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0

    :cond_2
    return p1
.end method

.method public final or(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/SnapshotIdSet;
    .locals 11

    .line 259
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->EMPTY:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    if-ne p0, v0, :cond_1

    return-object p1

    .line 261
    :cond_1
    iget v0, p1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerBound:I

    iget v6, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerBound:I

    if-ne v0, v6, :cond_2

    iget-object v0, p1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->belowBound:[I

    iget-object v7, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->belowBound:[I

    if-ne v0, v7, :cond_2

    .line 262
    new-instance v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 263
    iget-wide v1, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->upperSet:J

    iget-wide v3, p1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->upperSet:J

    or-long v2, v1, v3

    .line 264
    iget-wide v4, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerSet:J

    iget-wide p0, p1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerSet:J

    or-long/2addr v4, p0

    move-object v1, v0

    .line 262
    invoke-direct/range {v1 .. v7}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;-><init>(JJI[I)V

    goto/16 :goto_6

    .line 269
    :cond_2
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->belowBound:[I

    const-wide/16 v1, 0x1

    const/16 v3, 0x40

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    if-nez v0, :cond_8

    .line 313
    invoke-static {p0}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->access$getBelowBound$p(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)[I

    move-result-object v0

    if-eqz v0, :cond_3

    .line 315
    array-length v7, v0

    move v8, v4

    :goto_0
    if-ge v8, v7, :cond_3

    aget v9, v0, v8

    .line 271
    invoke-virtual {p1, v9}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->set(I)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object p1

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 318
    :cond_3
    invoke-static {p0}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->access$getLowerSet$p(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)J

    move-result-wide v7

    cmp-long v0, v7, v5

    if-eqz v0, :cond_5

    move v0, v4

    :goto_1
    if-ge v0, v3, :cond_5

    .line 320
    invoke-static {p0}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->access$getLowerSet$p(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)J

    move-result-wide v7

    shl-long v9, v1, v0

    and-long/2addr v7, v9

    cmp-long v7, v7, v5

    if-eqz v7, :cond_4

    .line 321
    invoke-static {p0}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->access$getLowerBound$p(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)I

    move-result v7

    add-int/2addr v7, v0

    .line 271
    invoke-virtual {p1, v7}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->set(I)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object p1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 325
    :cond_5
    invoke-static {p0}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->access$getUpperSet$p(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)J

    move-result-wide v7

    cmp-long v0, v7, v5

    if-eqz v0, :cond_7

    :goto_2
    if-ge v4, v3, :cond_7

    .line 327
    invoke-static {p0}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->access$getUpperSet$p(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)J

    move-result-wide v7

    shl-long v9, v1, v4

    and-long/2addr v7, v9

    cmp-long v0, v7, v5

    if-eqz v0, :cond_6

    add-int/lit8 v0, v4, 0x40

    .line 328
    invoke-static {p0}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->access$getLowerBound$p(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)I

    move-result v7

    add-int/2addr v0, v7

    .line 271
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->set(I)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object p1

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    move-object v0, p1

    goto :goto_6

    .line 313
    :cond_8
    invoke-static {p1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->access$getBelowBound$p(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)[I

    move-result-object v0

    if-eqz v0, :cond_9

    .line 315
    array-length v7, v0

    move v8, v4

    :goto_3
    if-ge v8, v7, :cond_9

    aget v9, v0, v8

    .line 274
    invoke-virtual {p0, v9}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->set(I)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object p0

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 318
    :cond_9
    invoke-static {p1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->access$getLowerSet$p(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)J

    move-result-wide v7

    cmp-long v0, v7, v5

    if-eqz v0, :cond_b

    move v0, v4

    :goto_4
    if-ge v0, v3, :cond_b

    .line 320
    invoke-static {p1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->access$getLowerSet$p(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)J

    move-result-wide v7

    shl-long v9, v1, v0

    and-long/2addr v7, v9

    cmp-long v7, v7, v5

    if-eqz v7, :cond_a

    .line 321
    invoke-static {p1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->access$getLowerBound$p(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)I

    move-result v7

    add-int/2addr v7, v0

    .line 274
    invoke-virtual {p0, v7}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->set(I)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object p0

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 325
    :cond_b
    invoke-static {p1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->access$getUpperSet$p(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)J

    move-result-wide v7

    cmp-long v0, v7, v5

    if-eqz v0, :cond_d

    :goto_5
    if-ge v4, v3, :cond_d

    .line 327
    invoke-static {p1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->access$getUpperSet$p(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)J

    move-result-wide v7

    shl-long v9, v1, v4

    and-long/2addr v7, v9

    cmp-long v0, v7, v5

    if-eqz v0, :cond_c

    add-int/lit8 v0, v4, 0x40

    .line 328
    invoke-static {p1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->access$getLowerBound$p(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)I

    move-result v7

    add-int/2addr v0, v7

    .line 274
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->set(I)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object p0

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_d
    move-object v0, p0

    :goto_6
    return-object v0
.end method

.method public final set(I)Landroidx/compose/runtime/snapshots/SnapshotIdSet;
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 67
    iget v5, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerBound:I

    sub-int v2, v1, v5

    const-wide/16 v3, 0x1

    const-wide/16 v6, 0x0

    const/16 v8, 0x40

    if-ltz v2, :cond_0

    if-ge v2, v8, :cond_0

    shl-long v1, v3, v2

    .line 70
    iget-wide v3, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerSet:J

    and-long v8, v3, v1

    cmp-long v6, v8, v6

    if-nez v6, :cond_c

    .line 71
    new-instance v7, Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 72
    iget-wide v8, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->upperSet:J

    or-long/2addr v3, v1

    .line 75
    iget-object v6, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->belowBound:[I

    move-object v0, v7

    move-wide v1, v8

    .line 71
    invoke-direct/range {v0 .. v6}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;-><init>(JJI[I)V

    return-object v7

    :cond_0
    const/16 v9, 0x80

    if-lt v2, v8, :cond_1

    if-ge v2, v9, :cond_1

    sub-int/2addr v2, v8

    shl-long v1, v3, v2

    .line 80
    iget-wide v3, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->upperSet:J

    and-long v8, v3, v1

    cmp-long v6, v8, v6

    if-nez v6, :cond_c

    .line 81
    new-instance v7, Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    or-long/2addr v1, v3

    .line 83
    iget-wide v3, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerSet:J

    .line 85
    iget-object v6, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->belowBound:[I

    move-object v0, v7

    .line 81
    invoke-direct/range {v0 .. v6}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;-><init>(JJI[I)V

    return-object v7

    :cond_1
    if-lt v2, v9, :cond_a

    .line 89
    invoke-virtual/range {p0 .. p1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_c

    .line 91
    iget-wide v11, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->upperSet:J

    .line 92
    iget-wide v13, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerSet:J

    .line 93
    iget v2, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerBound:I

    add-int/lit8 v5, v1, 0x1

    .line 95
    div-int/2addr v5, v8

    mul-int/2addr v5, v8

    const/4 v9, 0x0

    move-wide v14, v13

    move-wide v12, v11

    :goto_0
    if-ge v2, v5, :cond_7

    cmp-long v11, v14, v6

    if-eqz v11, :cond_5

    if-nez v9, :cond_2

    .line 101
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 102
    iget-object v11, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->belowBound:[I

    if-eqz v11, :cond_2

    .line 13600
    array-length v10, v11

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v10, :cond_2

    aget v7, v11, v6

    .line 102
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v8, :cond_4

    shl-long v10, v3, v6

    and-long/2addr v10, v14

    const-wide/16 v17, 0x0

    cmp-long v7, v10, v17

    if-eqz v7, :cond_3

    add-int v7, v6, v2

    .line 106
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    const-wide/16 v6, 0x0

    :cond_5
    cmp-long v10, v12, v6

    if-nez v10, :cond_6

    move/from16 v16, v5

    move-wide v14, v6

    goto :goto_3

    :cond_6
    add-int/lit8 v2, v2, 0x40

    move-wide v14, v12

    move-wide v12, v6

    goto :goto_0

    :cond_7
    move/from16 v16, v2

    .line 120
    :goto_3
    new-instance v2, Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    if-eqz v9, :cond_9

    .line 124
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v3

    if-nez v3, :cond_8

    goto :goto_4

    :cond_8
    move-object/from16 v17, v3

    goto :goto_5

    :cond_9
    :goto_4
    iget-object v0, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->belowBound:[I

    move-object/from16 v17, v0

    :goto_5
    move-object v11, v2

    .line 120
    invoke-direct/range {v11 .. v17}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;-><init>(JJI[I)V

    .line 126
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->set(I)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v0

    return-object v0

    .line 130
    :cond_a
    iget-object v2, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->belowBound:[I

    if-nez v2, :cond_b

    new-instance v7, Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    iget-wide v2, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->upperSet:J

    iget-wide v8, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerSet:J

    filled-new-array/range {p1 .. p1}, [I

    move-result-object v6

    move-object v0, v7

    move-wide v1, v2

    move-wide v3, v8

    invoke-direct/range {v0 .. v6}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;-><init>(JJI[I)V

    return-object v7

    .line 132
    :cond_b
    invoke-static {v2, v1}, Landroidx/compose/runtime/snapshots/SnapshotIdSetKt;->binarySearch([II)I

    move-result v3

    if-gez v3, :cond_c

    add-int/lit8 v3, v3, 0x1

    neg-int v3, v3

    .line 135
    array-length v4, v2

    add-int/lit8 v5, v4, 0x1

    .line 136
    new-array v12, v5, [I

    const/4 v5, 0x0

    .line 137
    invoke-static {v2, v12, v5, v5, v3}, Lkotlin/collections/ArraysKt;->copyInto([I[IIII)[I

    add-int/lit8 v5, v3, 0x1

    .line 143
    invoke-static {v2, v12, v5, v3, v4}, Lkotlin/collections/ArraysKt;->copyInto([I[IIII)[I

    .line 149
    aput v1, v12, v3

    .line 150
    new-instance v1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    iget-wide v7, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->upperSet:J

    iget-wide v9, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerSet:J

    iget v11, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerBound:I

    move-object v6, v1

    invoke-direct/range {v6 .. v12}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;-><init>(JJI[I)V

    return-object v1

    :cond_c
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1549
    new-instance v2, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1621
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 344
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 1621
    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/16 v9, 0x3f

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 345
    invoke-static/range {v2 .. v10}, Landroidx/compose/runtime/snapshots/ListUtilsKt;->fastJoinToString$default(Ljava/util/List;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 343
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
