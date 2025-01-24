.class public final Landroidx/compose/animation/core/FloatTweenSpec;
.super Ljava/lang/Object;
.source "FloatAnimationSpec.kt"

# interfaces
.implements Landroidx/compose/animation/core/FloatAnimationSpec;


# instance fields
.field private final delay:I

.field private final delayNanos:J

.field private final duration:I

.field private final durationNanos:J

.field private final easing:Landroidx/compose/animation/core/Easing;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(IILandroidx/compose/animation/core/Easing;)V
    .locals 4

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    iput p1, p0, Landroidx/compose/animation/core/FloatTweenSpec;->duration:I

    .line 203
    iput p2, p0, Landroidx/compose/animation/core/FloatTweenSpec;->delay:I

    .line 204
    iput-object p3, p0, Landroidx/compose/animation/core/FloatTweenSpec;->easing:Landroidx/compose/animation/core/Easing;

    int-to-long v0, p1

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    .line 206
    iput-wide v0, p0, Landroidx/compose/animation/core/FloatTweenSpec;->durationNanos:J

    int-to-long p1, p2

    mul-long/2addr p1, v2

    .line 208
    iput-wide p1, p0, Landroidx/compose/animation/core/FloatTweenSpec;->delayNanos:J

    return-void
.end method


# virtual methods
.method public getDurationNanos(FFF)J
    .locals 2

    .line 232
    iget-wide p1, p0, Landroidx/compose/animation/core/FloatTweenSpec;->delayNanos:J

    iget-wide v0, p0, Landroidx/compose/animation/core/FloatTweenSpec;->durationNanos:J

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public getValueFromNanos(JFFF)F
    .locals 4

    .line 223
    iget-wide v0, p0, Landroidx/compose/animation/core/FloatTweenSpec;->delayNanos:J

    sub-long/2addr p1, v0

    iget-wide v0, p0, Landroidx/compose/animation/core/FloatTweenSpec;->durationNanos:J

    const-wide/16 v2, 0x0

    cmp-long p5, p1, v2

    if-gez p5, :cond_0

    move-wide p1, v2

    :cond_0
    cmp-long p5, p1, v0

    if-lez p5, :cond_1

    move-wide p1, v0

    .line 217
    :cond_1
    iget p5, p0, Landroidx/compose/animation/core/FloatTweenSpec;->duration:I

    if-nez p5, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    long-to-float p1, p1

    long-to-float p2, v0

    div-float/2addr p1, p2

    .line 218
    :goto_0
    iget-object p0, p0, Landroidx/compose/animation/core/FloatTweenSpec;->easing:Landroidx/compose/animation/core/Easing;

    invoke-interface {p0, p1}, Landroidx/compose/animation/core/Easing;->transform(F)F

    move-result p0

    const/4 p1, 0x1

    int-to-float p1, p1

    sub-float/2addr p1, p0

    mul-float/2addr p3, p1

    mul-float/2addr p4, p0

    add-float/2addr p3, p4

    return p3
.end method

.method public getVelocityFromNanos(JFFF)F
    .locals 9

    .line 223
    iget-wide v0, p0, Landroidx/compose/animation/core/FloatTweenSpec;->delayNanos:J

    sub-long v0, p1, v0

    iget-wide v2, p0, Landroidx/compose/animation/core/FloatTweenSpec;->durationNanos:J

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-gez v6, :cond_0

    move-wide v0, v4

    :cond_0
    cmp-long v6, v0, v2

    if-lez v6, :cond_1

    move-wide v6, v2

    goto :goto_0

    :cond_1
    move-wide v6, v0

    :goto_0
    cmp-long v0, v6, v4

    if-nez v0, :cond_2

    return p5

    :cond_2
    const-wide/32 v0, 0xf4240

    sub-long v1, v6, v0

    move-object v0, p0

    move v3, p3

    move v4, p4

    move v5, p5

    .line 249
    invoke-virtual/range {v0 .. v5}, Landroidx/compose/animation/core/FloatTweenSpec;->getValueFromNanos(JFFF)F

    move-result v8

    move-wide v1, v6

    .line 256
    invoke-virtual/range {v0 .. v5}, Landroidx/compose/animation/core/FloatTweenSpec;->getValueFromNanos(JFFF)F

    move-result v0

    sub-float/2addr v0, v8

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    return v0
.end method
