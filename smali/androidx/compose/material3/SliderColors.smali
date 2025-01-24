.class public final Landroidx/compose/material3/SliderColors;
.super Ljava/lang/Object;
.source "Slider.kt"


# instance fields
.field private final activeTickColor:J

.field private final activeTrackColor:J

.field private final disabledActiveTickColor:J

.field private final disabledActiveTrackColor:J

.field private final disabledInactiveTickColor:J

.field private final disabledInactiveTrackColor:J

.field private final disabledThumbColor:J

.field private final inactiveTickColor:J

.field private final inactiveTrackColor:J

.field private final thumbColor:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method private constructor <init>(JJJJJJJJJJ)V
    .locals 3

    move-object v0, p0

    .line 1762
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p1

    .line 1764
    iput-wide v1, v0, Landroidx/compose/material3/SliderColors;->thumbColor:J

    move-wide v1, p3

    .line 1765
    iput-wide v1, v0, Landroidx/compose/material3/SliderColors;->activeTrackColor:J

    move-wide v1, p5

    .line 1766
    iput-wide v1, v0, Landroidx/compose/material3/SliderColors;->activeTickColor:J

    move-wide v1, p7

    .line 1767
    iput-wide v1, v0, Landroidx/compose/material3/SliderColors;->inactiveTrackColor:J

    move-wide v1, p9

    .line 1768
    iput-wide v1, v0, Landroidx/compose/material3/SliderColors;->inactiveTickColor:J

    move-wide v1, p11

    .line 1769
    iput-wide v1, v0, Landroidx/compose/material3/SliderColors;->disabledThumbColor:J

    move-wide/from16 v1, p13

    .line 1770
    iput-wide v1, v0, Landroidx/compose/material3/SliderColors;->disabledActiveTrackColor:J

    move-wide/from16 v1, p15

    .line 1771
    iput-wide v1, v0, Landroidx/compose/material3/SliderColors;->disabledActiveTickColor:J

    move-wide/from16 v1, p17

    .line 1772
    iput-wide v1, v0, Landroidx/compose/material3/SliderColors;->disabledInactiveTrackColor:J

    move-wide/from16 v1, p19

    .line 1773
    iput-wide v1, v0, Landroidx/compose/material3/SliderColors;->disabledInactiveTickColor:J

    return-void
.end method

.method public synthetic constructor <init>(JJJJJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p20}, Landroidx/compose/material3/SliderColors;-><init>(JJJJJJJJJJ)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_c

    .line 1827
    instance-of v2, p1, Landroidx/compose/material3/SliderColors;

    if-nez v2, :cond_1

    goto :goto_0

    .line 1829
    :cond_1
    iget-wide v2, p0, Landroidx/compose/material3/SliderColors;->thumbColor:J

    check-cast p1, Landroidx/compose/material3/SliderColors;

    iget-wide v4, p1, Landroidx/compose/material3/SliderColors;->thumbColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 1830
    :cond_2
    iget-wide v2, p0, Landroidx/compose/material3/SliderColors;->activeTrackColor:J

    iget-wide v4, p1, Landroidx/compose/material3/SliderColors;->activeTrackColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 1831
    :cond_3
    iget-wide v2, p0, Landroidx/compose/material3/SliderColors;->activeTickColor:J

    iget-wide v4, p1, Landroidx/compose/material3/SliderColors;->activeTickColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 1832
    :cond_4
    iget-wide v2, p0, Landroidx/compose/material3/SliderColors;->inactiveTrackColor:J

    iget-wide v4, p1, Landroidx/compose/material3/SliderColors;->inactiveTrackColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 1833
    :cond_5
    iget-wide v2, p0, Landroidx/compose/material3/SliderColors;->inactiveTickColor:J

    iget-wide v4, p1, Landroidx/compose/material3/SliderColors;->inactiveTickColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 1834
    :cond_6
    iget-wide v2, p0, Landroidx/compose/material3/SliderColors;->disabledThumbColor:J

    iget-wide v4, p1, Landroidx/compose/material3/SliderColors;->disabledThumbColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 1835
    :cond_7
    iget-wide v2, p0, Landroidx/compose/material3/SliderColors;->disabledActiveTrackColor:J

    iget-wide v4, p1, Landroidx/compose/material3/SliderColors;->disabledActiveTrackColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 1836
    :cond_8
    iget-wide v2, p0, Landroidx/compose/material3/SliderColors;->disabledActiveTickColor:J

    iget-wide v4, p1, Landroidx/compose/material3/SliderColors;->disabledActiveTickColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    .line 1837
    :cond_9
    iget-wide v2, p0, Landroidx/compose/material3/SliderColors;->disabledInactiveTrackColor:J

    iget-wide v4, p1, Landroidx/compose/material3/SliderColors;->disabledInactiveTrackColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 1838
    :cond_a
    iget-wide v2, p0, Landroidx/compose/material3/SliderColors;->disabledInactiveTickColor:J

    iget-wide p0, p1, Landroidx/compose/material3/SliderColors;->disabledInactiveTickColor:J

    invoke-static {v2, v3, p0, p1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result p0

    if-nez p0, :cond_b

    return v1

    :cond_b
    return v0

    :cond_c
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 1844
    iget-wide v0, p0, Landroidx/compose/material3/SliderColors;->thumbColor:J

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 1845
    iget-wide v1, p0, Landroidx/compose/material3/SliderColors;->activeTrackColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1846
    iget-wide v1, p0, Landroidx/compose/material3/SliderColors;->activeTickColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1847
    iget-wide v1, p0, Landroidx/compose/material3/SliderColors;->inactiveTrackColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1848
    iget-wide v1, p0, Landroidx/compose/material3/SliderColors;->inactiveTickColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1849
    iget-wide v1, p0, Landroidx/compose/material3/SliderColors;->disabledThumbColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1850
    iget-wide v1, p0, Landroidx/compose/material3/SliderColors;->disabledActiveTrackColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1851
    iget-wide v1, p0, Landroidx/compose/material3/SliderColors;->disabledActiveTickColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1852
    iget-wide v1, p0, Landroidx/compose/material3/SliderColors;->disabledInactiveTrackColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1853
    iget-wide v1, p0, Landroidx/compose/material3/SliderColors;->disabledInactiveTickColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final thumbColor-vNxB06k$material3_release(Z)J
    .locals 0

    if-eqz p1, :cond_0

    .line 1807
    iget-wide p0, p0, Landroidx/compose/material3/SliderColors;->thumbColor:J

    goto :goto_0

    :cond_0
    iget-wide p0, p0, Landroidx/compose/material3/SliderColors;->disabledThumbColor:J

    :goto_0
    return-wide p0
.end method

.method public final tickColor-WaAFU9c$material3_release(ZZ)J
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 1820
    iget-wide p0, p0, Landroidx/compose/material3/SliderColors;->activeTickColor:J

    goto :goto_0

    :cond_0
    iget-wide p0, p0, Landroidx/compose/material3/SliderColors;->inactiveTickColor:J

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 1822
    iget-wide p0, p0, Landroidx/compose/material3/SliderColors;->disabledActiveTickColor:J

    goto :goto_0

    :cond_2
    iget-wide p0, p0, Landroidx/compose/material3/SliderColors;->disabledInactiveTickColor:J

    :goto_0
    return-wide p0
.end method

.method public final trackColor-WaAFU9c$material3_release(ZZ)J
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 1812
    iget-wide p0, p0, Landroidx/compose/material3/SliderColors;->activeTrackColor:J

    goto :goto_0

    :cond_0
    iget-wide p0, p0, Landroidx/compose/material3/SliderColors;->inactiveTrackColor:J

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 1814
    iget-wide p0, p0, Landroidx/compose/material3/SliderColors;->disabledActiveTrackColor:J

    goto :goto_0

    :cond_2
    iget-wide p0, p0, Landroidx/compose/material3/SliderColors;->disabledInactiveTrackColor:J

    :goto_0
    return-wide p0
.end method
