.class public final Landroidx/compose/runtime/internal/AtomicInt;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "Atomic.jvm.kt"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final add(I)I
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result p0

    return p0
.end method

.method public final bridge byteValue()B
    .locals 0

    .line 24
    invoke-virtual {p0}, Landroidx/compose/runtime/internal/AtomicInt;->toByte()B

    move-result p0

    return p0
.end method

.method public final bridge doubleValue()D
    .locals 2

    .line 24
    invoke-virtual {p0}, Landroidx/compose/runtime/internal/AtomicInt;->toDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public final bridge floatValue()F
    .locals 0

    .line 24
    invoke-virtual {p0}, Landroidx/compose/runtime/internal/AtomicInt;->toFloat()F

    move-result p0

    return p0
.end method

.method public final bridge intValue()I
    .locals 0

    .line 24
    invoke-virtual {p0}, Landroidx/compose/runtime/internal/AtomicInt;->toInt()I

    move-result p0

    return p0
.end method

.method public final bridge longValue()J
    .locals 2

    .line 24
    invoke-virtual {p0}, Landroidx/compose/runtime/internal/AtomicInt;->toLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public final bridge shortValue()S
    .locals 0

    .line 24
    invoke-virtual {p0}, Landroidx/compose/runtime/internal/AtomicInt;->toShort()S

    move-result p0

    return p0
.end method

.method public toByte()B
    .locals 0

    .line 28
    invoke-virtual {p0}, Landroidx/compose/runtime/internal/AtomicInt;->intValue()I

    move-result p0

    int-to-byte p0, p0

    return p0
.end method

.method public bridge toDouble()D
    .locals 2

    .line 24
    invoke-super {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge toFloat()F
    .locals 0

    .line 24
    invoke-super {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->floatValue()F

    move-result p0

    return p0
.end method

.method public bridge toInt()I
    .locals 0

    .line 24
    invoke-super {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result p0

    return p0
.end method

.method public bridge toLong()J
    .locals 2

    .line 24
    invoke-super {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public toShort()S
    .locals 0

    .line 30
    invoke-virtual {p0}, Landroidx/compose/runtime/internal/AtomicInt;->intValue()I

    move-result p0

    int-to-short p0, p0

    return p0
.end method
