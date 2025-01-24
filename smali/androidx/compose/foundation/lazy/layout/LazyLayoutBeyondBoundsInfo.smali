.class public final Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;
.super Ljava/lang/Object;
.source "LazyLayoutBeyondBoundsInfo.kt"


# static fields
.field public static final $stable:I


# instance fields
.field private final beyondBoundsItems:Landroidx/compose/runtime/collection/MutableVector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    sget v0, Landroidx/compose/runtime/collection/MutableVector;->$stable:I

    sput v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1130
    new-instance v0, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v1, 0x10

    new-array v1, v1, [Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo$Interval;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 48
    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;->beyondBoundsItems:Landroidx/compose/runtime/collection/MutableVector;

    return-void
.end method


# virtual methods
.method public final addInterval(II)Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo$Interval;
    .locals 1

    .line 60
    new-instance v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo$Interval;

    invoke-direct {v0, p1, p2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo$Interval;-><init>(II)V

    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;->beyondBoundsItems:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final getEnd()I
    .locals 5

    .line 87
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;->beyondBoundsItems:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo$Interval;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo$Interval;->getEnd()I

    move-result v0

    .line 88
    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;->beyondBoundsItems:Landroidx/compose/runtime/collection/MutableVector;

    .line 434
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v1

    if-lez v1, :cond_2

    .line 437
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object p0

    const/4 v2, 0x0

    .line 439
    :cond_0
    aget-object v3, p0, v2

    check-cast v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo$Interval;

    .line 89
    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo$Interval;->getEnd()I

    move-result v4

    if-le v4, v0, :cond_1

    .line 90
    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo$Interval;->getEnd()I

    move-result v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    if-lt v2, v1, :cond_0

    :cond_2
    return v0
.end method

.method public final getStart()I
    .locals 6

    .line 74
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;->beyondBoundsItems:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo$Interval;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo$Interval;->getStart()I

    move-result v0

    .line 75
    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;->beyondBoundsItems:Landroidx/compose/runtime/collection/MutableVector;

    .line 434
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_2

    .line 437
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object p0

    move v3, v2

    .line 439
    :cond_0
    aget-object v4, p0, v3

    check-cast v4, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo$Interval;

    .line 76
    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo$Interval;->getStart()I

    move-result v5

    if-ge v5, v0, :cond_1

    .line 77
    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo$Interval;->getStart()I

    move-result v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    if-lt v3, v1, :cond_0

    :cond_2
    if-ltz v0, :cond_3

    const/4 v2, 0x1

    :cond_3
    if-nez v2, :cond_4

    .line 80
    const-string p0, "negative minIndex"

    .line 98
    invoke-static {p0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :cond_4
    return v0
.end method

.method public final hasIntervals()Z
    .locals 0

    .line 69
    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;->beyondBoundsItems:Landroidx/compose/runtime/collection/MutableVector;

    .line 545
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final removeInterval(Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo$Interval;)V
    .locals 0

    .line 65
    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;->beyondBoundsItems:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/collection/MutableVector;->remove(Ljava/lang/Object;)Z

    return-void
.end method
