.class public final Landroidx/compose/foundation/lazy/layout/PrefetchMetrics;
.super Ljava/lang/Object;
.source "LazyLayoutPrefetchState.kt"


# instance fields
.field private averageCompositionTimeNanos:J

.field private final averageCompositionTimeNanosByContentType:Landroidx/collection/MutableObjectLongMap;

.field private averageMeasureTimeNanos:J

.field private final averageMeasureTimeNanosByContentType:Landroidx/collection/MutableObjectLongMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    invoke-static {}, Landroidx/collection/ObjectLongMapKt;->mutableObjectLongMapOf()Landroidx/collection/MutableObjectLongMap;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/PrefetchMetrics;->averageCompositionTimeNanosByContentType:Landroidx/collection/MutableObjectLongMap;

    .line 161
    invoke-static {}, Landroidx/collection/ObjectLongMapKt;->mutableObjectLongMapOf()Landroidx/collection/MutableObjectLongMap;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/PrefetchMetrics;->averageMeasureTimeNanosByContentType:Landroidx/collection/MutableObjectLongMap;

    return-void
.end method

.method public static final synthetic access$calculateAverageTime(Landroidx/compose/foundation/lazy/layout/PrefetchMetrics;JJ)J
    .locals 0

    .line 157
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/lazy/layout/PrefetchMetrics;->calculateAverageTime(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$setAverageCompositionTimeNanos$p(Landroidx/compose/foundation/lazy/layout/PrefetchMetrics;J)V
    .locals 0

    .line 157
    iput-wide p1, p0, Landroidx/compose/foundation/lazy/layout/PrefetchMetrics;->averageCompositionTimeNanos:J

    return-void
.end method

.method public static final synthetic access$setAverageMeasureTimeNanos$p(Landroidx/compose/foundation/lazy/layout/PrefetchMetrics;J)V
    .locals 0

    .line 157
    iput-wide p1, p0, Landroidx/compose/foundation/lazy/layout/PrefetchMetrics;->averageMeasureTimeNanos:J

    return-void
.end method

.method private final calculateAverageTime(JJ)J
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long p0, p3, v0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    int-to-long v0, p0

    .line 211
    div-long/2addr p3, v0

    const/4 p0, 0x3

    int-to-long v2, p0

    mul-long/2addr p3, v2

    div-long/2addr p1, v0

    add-long/2addr p1, p3

    :goto_0
    return-wide p1
.end method


# virtual methods
.method public final getAverageCompositionTimeNanos()J
    .locals 2

    .line 164
    iget-wide v0, p0, Landroidx/compose/foundation/lazy/layout/PrefetchMetrics;->averageCompositionTimeNanos:J

    return-wide v0
.end method

.method public final getAverageCompositionTimeNanosByContentType()Landroidx/collection/MutableObjectLongMap;
    .locals 0

    .line 160
    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/PrefetchMetrics;->averageCompositionTimeNanosByContentType:Landroidx/collection/MutableObjectLongMap;

    return-object p0
.end method

.method public final getAverageMeasureTimeNanos()J
    .locals 2

    .line 168
    iget-wide v0, p0, Landroidx/compose/foundation/lazy/layout/PrefetchMetrics;->averageMeasureTimeNanos:J

    return-wide v0
.end method

.method public final getAverageMeasureTimeNanosByContentType()Landroidx/collection/MutableObjectLongMap;
    .locals 0

    .line 161
    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/PrefetchMetrics;->averageMeasureTimeNanosByContentType:Landroidx/collection/MutableObjectLongMap;

    return-object p0
.end method
