.class final Landroidx/compose/ui/node/IntStack;
.super Ljava/lang/Object;
.source "MyersDiff.kt"


# instance fields
.field private lastIndex:I

.field private stack:[I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 398
    new-array p1, p1, [I

    iput-object p1, p0, Landroidx/compose/ui/node/IntStack;->stack:[I

    return-void
.end method

.method private final compareDiagonal(II)Z
    .locals 3

    .line 486
    iget-object p0, p0, Landroidx/compose/ui/node/IntStack;->stack:[I

    .line 487
    aget v0, p0, p1

    .line 488
    aget v1, p0, p2

    const/4 v2, 0x1

    if-lt v0, v1, :cond_1

    if-ne v0, v1, :cond_0

    add-int/2addr p1, v2

    .line 489
    aget p1, p0, p1

    add-int/2addr p2, v2

    aget p0, p0, p2

    if-gt p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
.end method

.method private final partition(III)I
    .locals 2

    sub-int v0, p1, p3

    :goto_0
    if-ge p1, p2, :cond_1

    .line 468
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/node/IntStack;->compareDiagonal(II)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/2addr v0, p3

    .line 470
    invoke-direct {p0, v0, p1}, Landroidx/compose/ui/node/IntStack;->swapDiagonal(II)V

    :cond_0
    add-int/2addr p1, p3

    goto :goto_0

    :cond_1
    add-int/2addr v0, p3

    .line 474
    invoke-direct {p0, v0, p2}, Landroidx/compose/ui/node/IntStack;->swapDiagonal(II)V

    return v0
.end method

.method private final quickSort(III)V
    .locals 2

    if-ge p1, p2, :cond_0

    .line 458
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/ui/node/IntStack;->partition(III)I

    move-result v0

    sub-int v1, v0, p3

    .line 459
    invoke-direct {p0, p1, v1, p3}, Landroidx/compose/ui/node/IntStack;->quickSort(III)V

    add-int/2addr v0, p3

    .line 460
    invoke-direct {p0, v0, p2, p3}, Landroidx/compose/ui/node/IntStack;->quickSort(III)V

    :cond_0
    return-void
.end method

.method private final swapDiagonal(II)V
    .locals 2

    .line 479
    iget-object p0, p0, Landroidx/compose/ui/node/IntStack;->stack:[I

    .line 480
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/node/MyersDiffKt;->access$swap([III)V

    add-int/lit8 v0, p1, 0x1

    add-int/lit8 v1, p2, 0x1

    .line 481
    invoke-static {p0, v0, v1}, Landroidx/compose/ui/node/MyersDiffKt;->access$swap([III)V

    add-int/lit8 p1, p1, 0x2

    add-int/lit8 p2, p2, 0x2

    .line 482
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/node/MyersDiffKt;->access$swap([III)V

    return-void
.end method


# virtual methods
.method public final get(I)I
    .locals 0

    .line 401
    iget-object p0, p0, Landroidx/compose/ui/node/IntStack;->stack:[I

    aget p0, p0, p1

    return p0
.end method

.method public final getSize()I
    .locals 0

    .line 404
    iget p0, p0, Landroidx/compose/ui/node/IntStack;->lastIndex:I

    return p0
.end method

.method public final isNotEmpty()Z
    .locals 0

    .line 442
    iget p0, p0, Landroidx/compose/ui/node/IntStack;->lastIndex:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final pop()I
    .locals 2

    .line 440
    iget-object v0, p0, Landroidx/compose/ui/node/IntStack;->stack:[I

    iget v1, p0, Landroidx/compose/ui/node/IntStack;->lastIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroidx/compose/ui/node/IntStack;->lastIndex:I

    aget p0, v0, v1

    return p0
.end method

.method public final pushDiagonal(III)V
    .locals 4

    .line 429
    iget v0, p0, Landroidx/compose/ui/node/IntStack;->lastIndex:I

    add-int/lit8 v1, v0, 0x3

    .line 430
    iget-object v2, p0, Landroidx/compose/ui/node/IntStack;->stack:[I

    array-length v3, v2

    if-lt v1, v3, :cond_0

    .line 431
    array-length v3, v2

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    const-string v3, "copyOf(this, newSize)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Landroidx/compose/ui/node/IntStack;->stack:[I

    .line 433
    :cond_0
    iget-object v2, p0, Landroidx/compose/ui/node/IntStack;->stack:[I

    add-int/2addr p1, p3

    .line 434
    aput p1, v2, v0

    add-int/lit8 p1, v0, 0x1

    add-int/2addr p2, p3

    .line 435
    aput p2, v2, p1

    add-int/lit8 v0, v0, 0x2

    .line 436
    aput p3, v2, v0

    .line 437
    iput v1, p0, Landroidx/compose/ui/node/IntStack;->lastIndex:I

    return-void
.end method

.method public final pushRange(IIII)V
    .locals 4

    .line 412
    iget v0, p0, Landroidx/compose/ui/node/IntStack;->lastIndex:I

    add-int/lit8 v1, v0, 0x4

    .line 413
    iget-object v2, p0, Landroidx/compose/ui/node/IntStack;->stack:[I

    array-length v3, v2

    if-lt v1, v3, :cond_0

    .line 414
    array-length v3, v2

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    const-string v3, "copyOf(this, newSize)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Landroidx/compose/ui/node/IntStack;->stack:[I

    .line 416
    :cond_0
    iget-object v2, p0, Landroidx/compose/ui/node/IntStack;->stack:[I

    .line 417
    aput p1, v2, v0

    add-int/lit8 p1, v0, 0x1

    .line 418
    aput p2, v2, p1

    add-int/lit8 p1, v0, 0x2

    .line 419
    aput p3, v2, p1

    add-int/lit8 v0, v0, 0x3

    .line 420
    aput p4, v2, v0

    .line 421
    iput v1, p0, Landroidx/compose/ui/node/IntStack;->lastIndex:I

    return-void
.end method

.method public final sortDiagonals()V
    .locals 3

    .line 449
    iget v0, p0, Landroidx/compose/ui/node/IntStack;->lastIndex:I

    .line 450
    rem-int/lit8 v1, v0, 0x3

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-nez v1, :cond_1

    const-string v1, "Array size not a multiple of 3"

    .line 44
    invoke-static {v1}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x3

    if-le v0, v1, :cond_2

    sub-int/2addr v0, v1

    .line 452
    invoke-direct {p0, v2, v0, v1}, Landroidx/compose/ui/node/IntStack;->quickSort(III)V

    :cond_2
    return-void
.end method
