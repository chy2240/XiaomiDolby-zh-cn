.class public final Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;
.super Ljava/lang/Object;
.source "VelocityTracker.kt"


# instance fields
.field private index:I

.field private final isDataDifferential:Z

.field private final minSampleSize:I

.field private final reusableDataPointsArray:[F

.field private final reusableTimeArray:[F

.field private final reusableVelocityCoefficients:[F

.field private final samples:[Landroidx/compose/ui/input/pointer/util/DataPointAtTime;

.field private final strategy:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(ZLandroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;)V
    .locals 2

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-boolean p1, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->isDataDifferential:Z

    .line 135
    iput-object p2, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->strategy:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;

    if-eqz p1, :cond_1

    .line 139
    sget-object p1, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;->Lsq2:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;

    invoke-virtual {p2, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 140
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Lsq2 not (yet) supported for differential axes"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 166
    :cond_1
    :goto_0
    sget-object p1, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p1, p2, :cond_3

    if-ne p1, v1, :cond_2

    move v1, v0

    goto :goto_1

    .line 168
    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 166
    :cond_3
    :goto_1
    iput v1, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->minSampleSize:I

    const/16 p1, 0x14

    .line 191
    new-array p2, p1, [Landroidx/compose/ui/input/pointer/util/DataPointAtTime;

    iput-object p2, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->samples:[Landroidx/compose/ui/input/pointer/util/DataPointAtTime;

    .line 195
    new-array p2, p1, [F

    iput-object p2, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->reusableDataPointsArray:[F

    .line 196
    new-array p1, p1, [F

    iput-object p1, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->reusableTimeArray:[F

    .line 199
    new-array p1, v0, [F

    iput-object p1, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->reusableVelocityCoefficients:[F

    return-void
.end method

.method public synthetic constructor <init>(ZLandroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 135
    sget-object p2, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;->Lsq2:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;

    .line 128
    :cond_1
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;-><init>(ZLandroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;)V

    return-void
.end method

.method private final calculateLeastSquaresVelocity([F[FI)F
    .locals 1

    .line 324
    :try_start_0
    iget-object p0, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->reusableVelocityCoefficients:[F

    const/4 v0, 0x2

    invoke-static {p2, p1, p3, v0, p0}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->polyFitLeastSquares([F[FII[F)[F

    move-result-object p0

    const/4 p1, 0x1

    aget p0, p0, p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final addDataPoint(JF)V
    .locals 1

    .line 213
    iget v0, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->index:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x14

    iput v0, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->index:I

    .line 214
    iget-object p0, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->samples:[Landroidx/compose/ui/input/pointer/util/DataPointAtTime;

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->access$set([Landroidx/compose/ui/input/pointer/util/DataPointAtTime;IJF)V

    return-void
.end method

.method public final calculateVelocity()F
    .locals 14

    .line 226
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->reusableDataPointsArray:[F

    .line 227
    iget-object v1, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->reusableTimeArray:[F

    .line 229
    iget v2, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->index:I

    .line 232
    iget-object v3, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->samples:[Landroidx/compose/ui/input/pointer/util/DataPointAtTime;

    aget-object v3, v3, v2

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return v4

    :cond_0
    const/4 v5, 0x0

    move-object v6, v3

    .line 239
    :goto_0
    iget-object v7, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->samples:[Landroidx/compose/ui/input/pointer/util/DataPointAtTime;

    aget-object v7, v7, v2

    const/4 v8, 0x1

    if-nez v7, :cond_1

    goto :goto_3

    .line 241
    :cond_1
    invoke-virtual {v3}, Landroidx/compose/ui/input/pointer/util/DataPointAtTime;->getTime()J

    move-result-wide v9

    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/util/DataPointAtTime;->getTime()J

    move-result-wide v11

    sub-long/2addr v9, v11

    long-to-float v9, v9

    .line 242
    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/util/DataPointAtTime;->getTime()J

    move-result-wide v10

    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/util/DataPointAtTime;->getTime()J

    move-result-wide v12

    sub-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    long-to-float v6, v10

    .line 244
    iget-object v10, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->strategy:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;

    sget-object v11, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;->Lsq2:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;

    if-eq v10, v11, :cond_3

    iget-boolean v10, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->isDataDifferential:Z

    if-eqz v10, :cond_2

    goto :goto_1

    :cond_2
    move-object v10, v3

    goto :goto_2

    :cond_3
    :goto_1
    move-object v10, v7

    :goto_2
    const/high16 v11, 0x42c80000    # 100.0f

    cmpl-float v11, v9, v11

    if-gtz v11, :cond_7

    const/high16 v11, 0x42200000    # 40.0f

    cmpl-float v6, v6, v11

    if-lez v6, :cond_4

    goto :goto_3

    .line 253
    :cond_4
    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/util/DataPointAtTime;->getDataPoint()F

    move-result v6

    aput v6, v0, v5

    neg-float v6, v9

    .line 254
    aput v6, v1, v5

    const/16 v6, 0x14

    if-nez v2, :cond_5

    move v2, v6

    :cond_5
    sub-int/2addr v2, v8

    add-int/lit8 v5, v5, 0x1

    if-lt v5, v6, :cond_6

    goto :goto_3

    :cond_6
    move-object v6, v10

    goto :goto_0

    .line 260
    :cond_7
    :goto_3
    iget v2, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->minSampleSize:I

    if-lt v5, v2, :cond_a

    .line 262
    iget-object v2, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->strategy:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;

    sget-object v3, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    if-eq v2, v8, :cond_9

    const/4 v3, 0x2

    if-ne v2, v3, :cond_8

    .line 267
    invoke-direct {p0, v0, v1, v5}, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->calculateLeastSquaresVelocity([F[FI)F

    move-result p0

    goto :goto_4

    :cond_8
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 264
    :cond_9
    iget-boolean p0, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->isDataDifferential:Z

    invoke-static {v0, v1, v5, p0}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->access$calculateImpulseVelocity([F[FIZ)F

    move-result p0

    :goto_4
    const/16 v0, 0x3e8

    int-to-float v0, v0

    mul-float/2addr p0, v0

    return p0

    :cond_a
    return v4
.end method

.method public final calculateVelocity(F)F
    .locals 3

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 291
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maximumVelocity should be a positive value. You specified="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 44
    invoke-static {v1}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 293
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->calculateVelocity()F

    move-result p0

    cmpg-float v1, p0, v0

    if-nez v1, :cond_2

    goto :goto_1

    .line 295
    :cond_2
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    cmpl-float v0, p0, v0

    if-lez v0, :cond_4

    .line 298
    invoke-static {p0, p1}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result v0

    goto :goto_1

    :cond_4
    neg-float p1, p1

    .line 300
    invoke-static {p0, p1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v0

    :goto_1
    return v0
.end method

.method public final resetTracking()V
    .locals 6

    .line 306
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->samples:[Landroidx/compose/ui/input/pointer/util/DataPointAtTime;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/collections/ArraysKt;->fill$default([Ljava/lang/Object;Ljava/lang/Object;IIILjava/lang/Object;)V

    const/4 v0, 0x0

    .line 307
    iput v0, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->index:I

    return-void
.end method
