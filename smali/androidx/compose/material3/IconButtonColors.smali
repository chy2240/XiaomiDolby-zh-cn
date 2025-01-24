.class public final Landroidx/compose/material3/IconButtonColors;
.super Ljava/lang/Object;
.source "IconButton.kt"


# instance fields
.field private final containerColor:J

.field private final contentColor:J

.field private final disabledContainerColor:J

.field private final disabledContentColor:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method private constructor <init>(JJJJ)V
    .locals 0

    .line 2016
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2018
    iput-wide p1, p0, Landroidx/compose/material3/IconButtonColors;->containerColor:J

    .line 2019
    iput-wide p3, p0, Landroidx/compose/material3/IconButtonColors;->contentColor:J

    .line 2020
    iput-wide p5, p0, Landroidx/compose/material3/IconButtonColors;->disabledContainerColor:J

    .line 2021
    iput-wide p7, p0, Landroidx/compose/material3/IconButtonColors;->disabledContentColor:J

    return-void
.end method

.method public synthetic constructor <init>(JJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p8}, Landroidx/compose/material3/IconButtonColors;-><init>(JJJJ)V

    return-void
.end method

.method public static synthetic copy-jRlVdoo$default(Landroidx/compose/material3/IconButtonColors;JJJJILjava/lang/Object;)Landroidx/compose/material3/IconButtonColors;
    .locals 9

    move-object v0, p0

    and-int/lit8 v1, p9, 0x1

    if-eqz v1, :cond_0

    .line 2029
    iget-wide v1, v0, Landroidx/compose/material3/IconButtonColors;->containerColor:J

    goto :goto_0

    :cond_0
    move-wide v1, p1

    :goto_0
    and-int/lit8 v3, p9, 0x2

    if-eqz v3, :cond_1

    .line 2030
    iget-wide v3, v0, Landroidx/compose/material3/IconButtonColors;->contentColor:J

    goto :goto_1

    :cond_1
    move-wide v3, p3

    :goto_1
    and-int/lit8 v5, p9, 0x4

    if-eqz v5, :cond_2

    .line 2031
    iget-wide v5, v0, Landroidx/compose/material3/IconButtonColors;->disabledContainerColor:J

    goto :goto_2

    :cond_2
    move-wide v5, p5

    :goto_2
    and-int/lit8 v7, p9, 0x8

    if-eqz v7, :cond_3

    .line 2032
    iget-wide v7, v0, Landroidx/compose/material3/IconButtonColors;->disabledContentColor:J

    goto :goto_3

    :cond_3
    move-wide/from16 v7, p7

    :goto_3
    move-wide p1, v1

    move-wide p3, v3

    move-wide p5, v5

    move-wide/from16 p7, v7

    .line 2028
    invoke-virtual/range {p0 .. p8}, Landroidx/compose/material3/IconButtonColors;->copy-jRlVdoo(JJJJ)Landroidx/compose/material3/IconButtonColors;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final containerColor-vNxB06k$material3_release(Z)J
    .locals 0

    if-eqz p1, :cond_0

    .line 2048
    iget-wide p0, p0, Landroidx/compose/material3/IconButtonColors;->containerColor:J

    goto :goto_0

    :cond_0
    iget-wide p0, p0, Landroidx/compose/material3/IconButtonColors;->disabledContainerColor:J

    :goto_0
    return-wide p0
.end method

.method public final contentColor-vNxB06k$material3_release(Z)J
    .locals 0

    if-eqz p1, :cond_0

    .line 2057
    iget-wide p0, p0, Landroidx/compose/material3/IconButtonColors;->contentColor:J

    goto :goto_0

    :cond_0
    iget-wide p0, p0, Landroidx/compose/material3/IconButtonColors;->disabledContentColor:J

    :goto_0
    return-wide p0
.end method

.method public final copy-jRlVdoo(JJJJ)Landroidx/compose/material3/IconButtonColors;
    .locals 15

    move-object v0, p0

    const-wide/16 v1, 0x10

    cmp-long v3, p1, v1

    if-eqz v3, :cond_0

    move-wide/from16 v6, p1

    goto :goto_0

    .line 2035
    :cond_0
    iget-wide v3, v0, Landroidx/compose/material3/IconButtonColors;->containerColor:J

    move-wide v6, v3

    :goto_0
    cmp-long v3, p3, v1

    if-eqz v3, :cond_1

    move-wide/from16 v8, p3

    goto :goto_1

    .line 2036
    :cond_1
    iget-wide v3, v0, Landroidx/compose/material3/IconButtonColors;->contentColor:J

    move-wide v8, v3

    :goto_1
    cmp-long v3, p5, v1

    if-eqz v3, :cond_2

    move-wide/from16 v10, p5

    goto :goto_2

    .line 2037
    :cond_2
    iget-wide v3, v0, Landroidx/compose/material3/IconButtonColors;->disabledContainerColor:J

    move-wide v10, v3

    :goto_2
    cmp-long v1, p7, v1

    if-eqz v1, :cond_3

    move-wide/from16 v12, p7

    goto :goto_3

    .line 2038
    :cond_3
    iget-wide v0, v0, Landroidx/compose/material3/IconButtonColors;->disabledContentColor:J

    move-wide v12, v0

    .line 2034
    :goto_3
    new-instance v0, Landroidx/compose/material3/IconButtonColors;

    const/4 v14, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v14}, Landroidx/compose/material3/IconButtonColors;-><init>(JJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 2061
    instance-of v2, p1, Landroidx/compose/material3/IconButtonColors;

    if-nez v2, :cond_1

    goto :goto_0

    .line 2063
    :cond_1
    iget-wide v2, p0, Landroidx/compose/material3/IconButtonColors;->containerColor:J

    check-cast p1, Landroidx/compose/material3/IconButtonColors;

    iget-wide v4, p1, Landroidx/compose/material3/IconButtonColors;->containerColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 2064
    :cond_2
    iget-wide v2, p0, Landroidx/compose/material3/IconButtonColors;->contentColor:J

    iget-wide v4, p1, Landroidx/compose/material3/IconButtonColors;->contentColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 2065
    :cond_3
    iget-wide v2, p0, Landroidx/compose/material3/IconButtonColors;->disabledContainerColor:J

    iget-wide v4, p1, Landroidx/compose/material3/IconButtonColors;->disabledContainerColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 2066
    :cond_4
    iget-wide v2, p0, Landroidx/compose/material3/IconButtonColors;->disabledContentColor:J

    iget-wide p0, p1, Landroidx/compose/material3/IconButtonColors;->disabledContentColor:J

    invoke-static {v2, v3, p0, p1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result p0

    if-nez p0, :cond_5

    return v1

    :cond_5
    return v0

    :cond_6
    :goto_0
    return v1
.end method

.method public final getContentColor-0d7_KjU()J
    .locals 2

    .line 2019
    iget-wide v0, p0, Landroidx/compose/material3/IconButtonColors;->contentColor:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .line 2072
    iget-wide v0, p0, Landroidx/compose/material3/IconButtonColors;->containerColor:J

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2073
    iget-wide v1, p0, Landroidx/compose/material3/IconButtonColors;->contentColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 2074
    iget-wide v1, p0, Landroidx/compose/material3/IconButtonColors;->disabledContainerColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 2075
    iget-wide v1, p0, Landroidx/compose/material3/IconButtonColors;->disabledContentColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method
