.class public final Landroidx/compose/material3/ButtonColors;
.super Ljava/lang/Object;
.source "Button.kt"


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

    .line 1080
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1083
    iput-wide p1, p0, Landroidx/compose/material3/ButtonColors;->containerColor:J

    .line 1084
    iput-wide p3, p0, Landroidx/compose/material3/ButtonColors;->contentColor:J

    .line 1085
    iput-wide p5, p0, Landroidx/compose/material3/ButtonColors;->disabledContainerColor:J

    .line 1086
    iput-wide p7, p0, Landroidx/compose/material3/ButtonColors;->disabledContentColor:J

    return-void
.end method

.method public synthetic constructor <init>(JJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p8}, Landroidx/compose/material3/ButtonColors;-><init>(JJJJ)V

    return-void
.end method


# virtual methods
.method public final containerColor-vNxB06k$material3_release(Z)J
    .locals 0

    if-eqz p1, :cond_0

    .line 1112
    iget-wide p0, p0, Landroidx/compose/material3/ButtonColors;->containerColor:J

    goto :goto_0

    :cond_0
    iget-wide p0, p0, Landroidx/compose/material3/ButtonColors;->disabledContainerColor:J

    :goto_0
    return-wide p0
.end method

.method public final contentColor-vNxB06k$material3_release(Z)J
    .locals 0

    if-eqz p1, :cond_0

    .line 1121
    iget-wide p0, p0, Landroidx/compose/material3/ButtonColors;->contentColor:J

    goto :goto_0

    :cond_0
    iget-wide p0, p0, Landroidx/compose/material3/ButtonColors;->disabledContentColor:J

    :goto_0
    return-wide p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 1125
    instance-of v2, p1, Landroidx/compose/material3/ButtonColors;

    if-nez v2, :cond_1

    goto :goto_0

    .line 1127
    :cond_1
    iget-wide v2, p0, Landroidx/compose/material3/ButtonColors;->containerColor:J

    check-cast p1, Landroidx/compose/material3/ButtonColors;

    iget-wide v4, p1, Landroidx/compose/material3/ButtonColors;->containerColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 1128
    :cond_2
    iget-wide v2, p0, Landroidx/compose/material3/ButtonColors;->contentColor:J

    iget-wide v4, p1, Landroidx/compose/material3/ButtonColors;->contentColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 1129
    :cond_3
    iget-wide v2, p0, Landroidx/compose/material3/ButtonColors;->disabledContainerColor:J

    iget-wide v4, p1, Landroidx/compose/material3/ButtonColors;->disabledContainerColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 1130
    :cond_4
    iget-wide v2, p0, Landroidx/compose/material3/ButtonColors;->disabledContentColor:J

    iget-wide p0, p1, Landroidx/compose/material3/ButtonColors;->disabledContentColor:J

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

.method public hashCode()I
    .locals 3

    .line 1136
    iget-wide v0, p0, Landroidx/compose/material3/ButtonColors;->containerColor:J

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 1137
    iget-wide v1, p0, Landroidx/compose/material3/ButtonColors;->contentColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1138
    iget-wide v1, p0, Landroidx/compose/material3/ButtonColors;->disabledContainerColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1139
    iget-wide v1, p0, Landroidx/compose/material3/ButtonColors;->disabledContentColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method
