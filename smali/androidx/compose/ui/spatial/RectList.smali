.class public final Landroidx/compose/ui/spatial/RectList;
.super Ljava/lang/Object;
.source "RectList.kt"


# instance fields
.field public items:[J

.field public itemsSize:I

.field public stack:[J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc0

    .line 64
    new-array v1, v0, [J

    iput-object v1, p0, Landroidx/compose/ui/spatial/RectList;->items:[J

    .line 79
    new-array v0, v0, [J

    iput-object v0, p0, Landroidx/compose/ui/spatial/RectList;->stack:[J

    return-void
.end method

.method public static synthetic insert$default(Landroidx/compose/ui/spatial/RectList;IIIIIIZZILjava/lang/Object;)V
    .locals 11

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    move v8, v1

    goto :goto_0

    :cond_0
    move/from16 v8, p6

    :goto_0
    and-int/lit8 v1, v0, 0x40

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move v9, v2

    goto :goto_1

    :cond_1
    move/from16 v9, p7

    :goto_1
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_2

    move v10, v2

    goto :goto_2

    :cond_2
    move/from16 v10, p8

    :goto_2
    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    .line 132
    invoke-virtual/range {v2 .. v10}, Landroidx/compose/ui/spatial/RectList;->insert(IIIIIIZZ)V

    return-void
.end method

.method private final updateSubhierarchy(JII)V
    .locals 20

    move-object/from16 v0, p0

    .line 290
    iget-object v1, v0, Landroidx/compose/ui/spatial/RectList;->items:[J

    .line 291
    iget-object v2, v0, Landroidx/compose/ui/spatial/RectList;->stack:[J

    .line 292
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/spatial/RectList;->getSize()I

    move-result v0

    const/4 v3, 0x0

    .line 293
    aput-wide p1, v2, v3

    const/4 v3, 0x1

    :cond_0
    if-lez v3, :cond_4

    add-int/lit8 v3, v3, -0x1

    .line 296
    aget-wide v4, v2, v3

    long-to-int v6, v4

    const v7, 0x3ffffff

    and-int/2addr v6, v7

    const/16 v8, 0x1a

    shr-long v9, v4, v8

    long-to-int v9, v9

    and-int/2addr v9, v7

    const/16 v10, 0x34

    shr-long/2addr v4, v10

    long-to-int v4, v4

    const/16 v5, 0x3ff

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_1

    move v4, v0

    goto :goto_0

    :cond_1
    add-int/2addr v4, v9

    :goto_0
    if-ltz v9, :cond_4

    .line 302
    :goto_1
    array-length v11, v1

    add-int/lit8 v11, v11, -0x2

    if-ge v9, v11, :cond_0

    if-ge v9, v4, :cond_0

    add-int/lit8 v11, v9, 0x2

    .line 304
    aget-wide v11, v1, v11

    shr-long v13, v11, v8

    long-to-int v13, v13

    and-int/2addr v13, v7

    if-ne v13, v6, :cond_3

    .line 306
    aget-wide v13, v1, v9

    add-int/lit8 v15, v9, 0x1

    .line 307
    aget-wide v7, v1, v15

    const/16 v16, 0x20

    move/from16 p2, v6

    shr-long v5, v13, v16

    long-to-int v5, v5

    add-int v5, v5, p3

    long-to-int v6, v13

    add-int v6, v6, p4

    int-to-long v13, v5

    shl-long v13, v13, v16

    int-to-long v5, v6

    const-wide v17, 0xffffffffL

    and-long v5, v5, v17

    or-long/2addr v5, v13

    .line 655
    aput-wide v5, v1, v9

    shr-long v5, v7, v16

    long-to-int v5, v5

    add-int v5, v5, p3

    long-to-int v6, v7

    add-int v6, v6, p4

    int-to-long v7, v5

    shl-long v7, v7, v16

    int-to-long v5, v6

    and-long v5, v5, v17

    or-long/2addr v5, v7

    .line 655
    aput-wide v5, v1, v15

    shr-long v5, v11, v10

    long-to-int v5, v5

    const/16 v6, 0x3ff

    and-int/2addr v5, v6

    if-lez v5, :cond_2

    add-int/lit8 v5, v3, 0x1

    add-int/lit8 v7, v9, 0x3

    const-wide v13, -0xffffffc000001L

    and-long/2addr v11, v13

    const v8, 0x3ffffff

    and-int/2addr v7, v8

    int-to-long v13, v7

    const/16 v7, 0x1a

    shl-long/2addr v13, v7

    or-long/2addr v11, v13

    .line 683
    aput-wide v11, v2, v3

    move v3, v5

    goto :goto_2

    :cond_2
    const/16 v7, 0x1a

    const v8, 0x3ffffff

    goto :goto_2

    :cond_3
    move/from16 p2, v6

    move v6, v5

    move/from16 v19, v8

    move v8, v7

    move/from16 v7, v19

    :goto_2
    add-int/lit8 v9, v9, 0x3

    move v5, v6

    move/from16 v6, p2

    move/from16 v19, v8

    move v8, v7

    move/from16 v7, v19

    goto :goto_1

    :cond_4
    return-void
.end method


# virtual methods
.method public final allocateItemsIndex$ui_release()I
    .locals 4

    .line 101
    iget-object v0, p0, Landroidx/compose/ui/spatial/RectList;->items:[J

    .line 102
    iget v1, p0, Landroidx/compose/ui/spatial/RectList;->itemsSize:I

    add-int/lit8 v2, v1, 0x3

    .line 103
    iput v2, p0, Landroidx/compose/ui/spatial/RectList;->itemsSize:I

    .line 104
    array-length v3, v0

    if-gt v3, v2, :cond_0

    mul-int/lit8 v3, v3, 0x2

    .line 106
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 107
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    const-string v3, "copyOf(this, newSize)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/compose/ui/spatial/RectList;->items:[J

    .line 108
    iget-object v0, p0, Landroidx/compose/ui/spatial/RectList;->stack:[J

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/compose/ui/spatial/RectList;->stack:[J

    :cond_0
    return v1
.end method

.method public final defragment()V
    .locals 10

    .line 590
    iget-object v0, p0, Landroidx/compose/ui/spatial/RectList;->items:[J

    .line 591
    iget v1, p0, Landroidx/compose/ui/spatial/RectList;->itemsSize:I

    .line 592
    iget-object v2, p0, Landroidx/compose/ui/spatial/RectList;->stack:[J

    const/4 v3, 0x0

    move v4, v3

    .line 595
    :goto_0
    array-length v5, v0

    add-int/lit8 v5, v5, -0x2

    if-ge v3, v5, :cond_1

    .line 596
    array-length v5, v2

    add-int/lit8 v5, v5, -0x2

    if-ge v4, v5, :cond_1

    if-ge v3, v1, :cond_1

    add-int/lit8 v5, v3, 0x2

    .line 598
    aget-wide v6, v0, v5

    const-wide v8, 0x3fffffffffffffffL    # 1.9999999999999998

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    .line 599
    aget-wide v6, v0, v3

    aput-wide v6, v2, v4

    add-int/lit8 v6, v4, 0x1

    add-int/lit8 v7, v3, 0x1

    .line 600
    aget-wide v7, v0, v7

    aput-wide v7, v2, v6

    add-int/lit8 v6, v4, 0x2

    .line 601
    aget-wide v7, v0, v5

    aput-wide v7, v2, v6

    add-int/lit8 v4, v4, 0x3

    :cond_0
    add-int/lit8 v3, v3, 0x3

    goto :goto_0

    .line 606
    :cond_1
    iput v4, p0, Landroidx/compose/ui/spatial/RectList;->itemsSize:I

    .line 611
    iput-object v2, p0, Landroidx/compose/ui/spatial/RectList;->items:[J

    .line 612
    iput-object v0, p0, Landroidx/compose/ui/spatial/RectList;->stack:[J

    return-void
.end method

.method public final getSize()I
    .locals 0

    .line 90
    iget p0, p0, Landroidx/compose/ui/spatial/RectList;->itemsSize:I

    div-int/lit8 p0, p0, 0x3

    return p0
.end method

.method public final insert(IIIIIIZZ)V
    .locals 7

    .line 143
    invoke-virtual {p0}, Landroidx/compose/ui/spatial/RectList;->allocateItemsIndex$ui_release()I

    move-result v0

    .line 144
    iget-object p0, p0, Landroidx/compose/ui/spatial/RectList;->items:[J

    int-to-long v1, p2

    const/16 p2, 0x20

    shl-long/2addr v1, p2

    int-to-long v3, p3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    or-long/2addr v1, v3

    .line 655
    aput-wide v1, p0, v0

    add-int/lit8 p3, v0, 0x1

    int-to-long v1, p4

    shl-long/2addr v1, p2

    int-to-long p4, p5

    and-long/2addr p4, v5

    or-long/2addr p4, v1

    .line 655
    aput-wide p4, p0, p3

    add-int/lit8 p2, v0, 0x2

    int-to-long p3, p8

    const/16 p5, 0x3f

    shl-long/2addr p3, p5

    int-to-long p7, p7

    const/16 p5, 0x3e

    shl-long/2addr p7, p5

    or-long/2addr p3, p7

    const/4 p5, 0x0

    int-to-long p7, p5

    const/16 p5, 0x34

    shl-long/2addr p7, p5

    or-long/2addr p3, p7

    const p7, 0x3ffffff

    and-int p8, p6, p7

    int-to-long v1, p8

    const/16 v3, 0x1a

    shl-long/2addr v1, v3

    or-long/2addr p3, v1

    and-int/2addr p1, p7

    int-to-long v1, p1

    or-long/2addr p3, v1

    .line 673
    aput-wide p3, p0, p2

    if-gez p6, :cond_0

    return-void

    :cond_0
    add-int/lit8 p1, v0, -0x3

    :goto_0
    if-lez p1, :cond_2

    add-int/lit8 p2, p1, 0x2

    .line 155
    aget-wide p3, p0, p2

    long-to-int p6, p3

    and-int/2addr p6, p7

    if-ne p6, p8, :cond_1

    sub-int/2addr v0, p1

    const-wide p6, -0x3ff0000000000001L    # -3.9999999999999996

    and-long/2addr p3, p6

    and-int/lit16 p1, v0, 0x3ff

    int-to-long p6, p1

    shl-long p5, p6, p5

    or-long/2addr p3, p5

    .line 687
    aput-wide p3, p0, p2

    return-void

    :cond_1
    add-int/lit8 p1, p1, -0x3

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final move(IIIII)Z
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    const v3, 0x3ffffff

    and-int v4, p1, v3

    .line 232
    iget-object v5, v0, Landroidx/compose/ui/spatial/RectList;->items:[J

    .line 233
    iget v6, v0, Landroidx/compose/ui/spatial/RectList;->itemsSize:I

    const/4 v8, 0x0

    .line 235
    :goto_0
    array-length v9, v5

    add-int/lit8 v9, v9, -0x2

    if-ge v8, v9, :cond_4

    if-ge v8, v6, :cond_4

    add-int/lit8 v9, v8, 0x2

    .line 237
    aget-wide v9, v5, v9

    long-to-int v11, v9

    and-int/2addr v11, v3

    if-ne v11, v4, :cond_3

    .line 240
    aget-wide v11, v5, v8

    int-to-long v13, v1

    const/16 v4, 0x20

    shl-long/2addr v13, v4

    int-to-long v3, v2

    const-wide v15, 0xffffffffL

    and-long/2addr v3, v15

    or-long/2addr v3, v13

    .line 655
    aput-wide v3, v5, v8

    add-int/lit8 v3, v8, 0x1

    move/from16 v13, p4

    int-to-long v13, v13

    const/16 v4, 0x20

    shl-long/2addr v13, v4

    move/from16 v6, p5

    move/from16 v17, v8

    int-to-long v7, v6

    and-long v6, v7, v15

    or-long/2addr v6, v13

    .line 655
    aput-wide v6, v5, v3

    shr-long v3, v11, v4

    long-to-int v3, v3

    sub-int/2addr v1, v3

    long-to-int v3, v11

    sub-int/2addr v2, v3

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v4, v3

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    if-eqz v2, :cond_1

    move v7, v3

    goto :goto_2

    :cond_1
    const/4 v7, 0x0

    :goto_2
    or-int/2addr v4, v7

    if-eqz v4, :cond_2

    add-int/lit8 v8, v17, 0x3

    const-wide v4, -0xffffffc000001L

    and-long/2addr v4, v9

    const v7, 0x3ffffff

    and-int v6, v8, v7

    int-to-long v6, v6

    const/16 v8, 0x1a

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    .line 246
    invoke-direct {v0, v4, v5, v1, v2}, Landroidx/compose/ui/spatial/RectList;->updateSubhierarchy(JII)V

    :cond_2
    return v3

    :cond_3
    move/from16 v13, p4

    move v7, v3

    move/from16 v17, v8

    add-int/lit8 v8, v17, 0x3

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public final remove(I)Z
    .locals 7

    const v0, 0x3ffffff

    and-int/2addr p1, v0

    .line 178
    iget-object v1, p0, Landroidx/compose/ui/spatial/RectList;->items:[J

    .line 179
    iget p0, p0, Landroidx/compose/ui/spatial/RectList;->itemsSize:I

    const/4 v2, 0x0

    move v3, v2

    .line 181
    :goto_0
    array-length v4, v1

    add-int/lit8 v4, v4, -0x2

    if-ge v3, v4, :cond_1

    if-ge v3, p0, :cond_1

    add-int/lit8 v4, v3, 0x2

    .line 184
    aget-wide v5, v1, v4

    long-to-int v5, v5

    and-int/2addr v5, v0

    if-ne v5, p1, :cond_0

    const-wide/16 p0, -0x1

    .line 189
    aput-wide p0, v1, v3

    const/4 v0, 0x1

    add-int/2addr v3, v0

    .line 190
    aput-wide p0, v1, v3

    const-wide p0, 0x3fffffffffffffffL    # 1.9999999999999998

    .line 191
    aput-wide p0, v1, v4

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x3

    goto :goto_0

    :cond_1
    return v2
.end method

.method public final update(IIIII)Z
    .locals 8

    const v0, 0x3ffffff

    and-int/2addr p1, v0

    .line 207
    iget-object v1, p0, Landroidx/compose/ui/spatial/RectList;->items:[J

    .line 208
    iget p0, p0, Landroidx/compose/ui/spatial/RectList;->itemsSize:I

    const/4 v2, 0x0

    move v3, v2

    .line 210
    :goto_0
    array-length v4, v1

    add-int/lit8 v4, v4, -0x2

    if-ge v3, v4, :cond_1

    if-ge v3, p0, :cond_1

    add-int/lit8 v4, v3, 0x2

    .line 212
    aget-wide v4, v1, v4

    long-to-int v4, v4

    and-int/2addr v4, v0

    if-ne v4, p1, :cond_0

    int-to-long p0, p2

    const/16 p2, 0x20

    shl-long/2addr p0, p2

    int-to-long v4, p3

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    or-long/2addr p0, v4

    .line 655
    aput-wide p0, v1, v3

    const/4 p0, 0x1

    add-int/2addr v3, p0

    int-to-long p3, p4

    shl-long p1, p3, p2

    int-to-long p3, p5

    and-long/2addr p3, v6

    or-long/2addr p1, p3

    .line 655
    aput-wide p1, v1, v3

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x3

    goto :goto_0

    :cond_1
    return v2
.end method
