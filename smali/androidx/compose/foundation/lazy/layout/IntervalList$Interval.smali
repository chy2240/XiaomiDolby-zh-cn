.class public final Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;
.super Ljava/lang/Object;
.source "IntervalList.kt"


# instance fields
.field private final size:I

.field private final startIndex:I

.field private final value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(IILjava/lang/Object;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput p1, p0, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->startIndex:I

    .line 75
    iput p2, p0, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->size:I

    .line 77
    iput-object p3, p0, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->value:Ljava/lang/Object;

    const/4 p0, 0x0

    const/4 p3, 0x1

    if-ltz p1, :cond_0

    move p1, p3

    goto :goto_0

    :cond_0
    move p1, p0

    :goto_0
    if-nez p1, :cond_1

    .line 80
    const-string p1, "startIndex should be >= 0"

    .line 98
    invoke-static {p1}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :cond_1
    if-lez p2, :cond_2

    move p0, p3

    :cond_2
    if-nez p0, :cond_3

    .line 81
    const-string p0, "size should be > 0"

    .line 98
    invoke-static {p0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public final getSize()I
    .locals 0

    .line 75
    iget p0, p0, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->size:I

    return p0
.end method

.method public final getStartIndex()I
    .locals 0

    .line 73
    iget p0, p0, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->startIndex:I

    return p0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 0

    .line 77
    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->value:Ljava/lang/Object;

    return-object p0
.end method
