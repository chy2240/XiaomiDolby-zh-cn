.class public final Landroidx/compose/material3/MenuItemColors;
.super Ljava/lang/Object;
.source "Menu.kt"


# instance fields
.field private final disabledLeadingIconColor:J

.field private final disabledTextColor:J

.field private final disabledTrailingIconColor:J

.field private final leadingIconColor:J

.field private final textColor:J

.field private final trailingIconColor:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method private constructor <init>(JJJJJJ)V
    .locals 0

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    iput-wide p1, p0, Landroidx/compose/material3/MenuItemColors;->textColor:J

    .line 281
    iput-wide p3, p0, Landroidx/compose/material3/MenuItemColors;->leadingIconColor:J

    .line 282
    iput-wide p5, p0, Landroidx/compose/material3/MenuItemColors;->trailingIconColor:J

    .line 283
    iput-wide p7, p0, Landroidx/compose/material3/MenuItemColors;->disabledTextColor:J

    .line 284
    iput-wide p9, p0, Landroidx/compose/material3/MenuItemColors;->disabledLeadingIconColor:J

    .line 285
    iput-wide p11, p0, Landroidx/compose/material3/MenuItemColors;->disabledTrailingIconColor:J

    return-void
.end method

.method public synthetic constructor <init>(JJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p12}, Landroidx/compose/material3/MenuItemColors;-><init>(JJJJJJ)V

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

    if-eqz p1, :cond_8

    .line 337
    instance-of v2, p1, Landroidx/compose/material3/MenuItemColors;

    if-nez v2, :cond_1

    goto :goto_0

    .line 339
    :cond_1
    iget-wide v2, p0, Landroidx/compose/material3/MenuItemColors;->textColor:J

    check-cast p1, Landroidx/compose/material3/MenuItemColors;

    iget-wide v4, p1, Landroidx/compose/material3/MenuItemColors;->textColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 340
    :cond_2
    iget-wide v2, p0, Landroidx/compose/material3/MenuItemColors;->leadingIconColor:J

    iget-wide v4, p1, Landroidx/compose/material3/MenuItemColors;->leadingIconColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 341
    :cond_3
    iget-wide v2, p0, Landroidx/compose/material3/MenuItemColors;->trailingIconColor:J

    iget-wide v4, p1, Landroidx/compose/material3/MenuItemColors;->trailingIconColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 342
    :cond_4
    iget-wide v2, p0, Landroidx/compose/material3/MenuItemColors;->disabledTextColor:J

    iget-wide v4, p1, Landroidx/compose/material3/MenuItemColors;->disabledTextColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 343
    :cond_5
    iget-wide v2, p0, Landroidx/compose/material3/MenuItemColors;->disabledLeadingIconColor:J

    iget-wide v4, p1, Landroidx/compose/material3/MenuItemColors;->disabledLeadingIconColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 344
    :cond_6
    iget-wide v2, p0, Landroidx/compose/material3/MenuItemColors;->disabledTrailingIconColor:J

    iget-wide p0, p1, Landroidx/compose/material3/MenuItemColors;->disabledTrailingIconColor:J

    invoke-static {v2, v3, p0, p1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result p0

    if-nez p0, :cond_7

    return v1

    :cond_7
    return v0

    :cond_8
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 350
    iget-wide v0, p0, Landroidx/compose/material3/MenuItemColors;->textColor:J

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 351
    iget-wide v1, p0, Landroidx/compose/material3/MenuItemColors;->leadingIconColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 352
    iget-wide v1, p0, Landroidx/compose/material3/MenuItemColors;->trailingIconColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 353
    iget-wide v1, p0, Landroidx/compose/material3/MenuItemColors;->disabledTextColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 354
    iget-wide v1, p0, Landroidx/compose/material3/MenuItemColors;->disabledLeadingIconColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 355
    iget-wide v1, p0, Landroidx/compose/material3/MenuItemColors;->disabledTrailingIconColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final leadingIconColor-vNxB06k$material3_release(Z)J
    .locals 0

    if-eqz p1, :cond_0

    .line 324
    iget-wide p0, p0, Landroidx/compose/material3/MenuItemColors;->leadingIconColor:J

    goto :goto_0

    :cond_0
    iget-wide p0, p0, Landroidx/compose/material3/MenuItemColors;->disabledLeadingIconColor:J

    :goto_0
    return-wide p0
.end method

.method public final textColor-vNxB06k$material3_release(Z)J
    .locals 0

    if-eqz p1, :cond_0

    .line 315
    iget-wide p0, p0, Landroidx/compose/material3/MenuItemColors;->textColor:J

    goto :goto_0

    :cond_0
    iget-wide p0, p0, Landroidx/compose/material3/MenuItemColors;->disabledTextColor:J

    :goto_0
    return-wide p0
.end method

.method public final trailingIconColor-vNxB06k$material3_release(Z)J
    .locals 0

    if-eqz p1, :cond_0

    .line 333
    iget-wide p0, p0, Landroidx/compose/material3/MenuItemColors;->trailingIconColor:J

    goto :goto_0

    :cond_0
    iget-wide p0, p0, Landroidx/compose/material3/MenuItemColors;->disabledTrailingIconColor:J

    :goto_0
    return-wide p0
.end method
