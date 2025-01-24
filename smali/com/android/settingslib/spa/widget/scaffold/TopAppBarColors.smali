.class final Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;
.super Ljava/lang/Object;
.source "CustomizedAppBar.kt"


# instance fields
.field private final actionIconContentColor:J

.field private final containerColor:J

.field private final navigationIconContentColor:J

.field private final scrolledContainerColor:J

.field private final titleContentColor:J


# direct methods
.method private constructor <init>(JJJJJ)V
    .locals 0

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    iput-wide p1, p0, Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;->containerColor:J

    .line 176
    iput-wide p3, p0, Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;->scrolledContainerColor:J

    .line 177
    iput-wide p5, p0, Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;->navigationIconContentColor:J

    .line 178
    iput-wide p7, p0, Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;->titleContentColor:J

    .line 179
    iput-wide p9, p0, Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;->actionIconContentColor:J

    return-void
.end method

.method public synthetic constructor <init>(JJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p10}, Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;-><init>(JJJJJ)V

    return-void
.end method


# virtual methods
.method public final containerColor-vNxB06k(F)J
    .locals 4

    .line 195
    iget-wide v0, p0, Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;->containerColor:J

    .line 196
    iget-wide v2, p0, Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;->scrolledContainerColor:J

    .line 197
    invoke-static {}, Landroidx/compose/animation/core/EasingKt;->getFastOutLinearInEasing()Landroidx/compose/animation/core/Easing;

    move-result-object p0

    invoke-interface {p0, p1}, Landroidx/compose/animation/core/Easing;->transform(F)F

    move-result p0

    .line 194
    invoke-static {v0, v1, v2, v3, p0}, Landroidx/compose/ui/graphics/ColorKt;->lerp-jxsXWHM(JJF)J

    move-result-wide p0

    return-wide p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_7

    .line 203
    instance-of v2, p1, Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;

    if-nez v2, :cond_1

    goto :goto_0

    .line 205
    :cond_1
    iget-wide v2, p0, Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;->containerColor:J

    check-cast p1, Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;

    iget-wide v4, p1, Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;->containerColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 206
    :cond_2
    iget-wide v2, p0, Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;->scrolledContainerColor:J

    iget-wide v4, p1, Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;->scrolledContainerColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 207
    :cond_3
    iget-wide v2, p0, Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;->navigationIconContentColor:J

    iget-wide v4, p1, Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;->navigationIconContentColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 208
    :cond_4
    iget-wide v2, p0, Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;->titleContentColor:J

    iget-wide v4, p1, Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;->titleContentColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 209
    :cond_5
    iget-wide v2, p0, Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;->actionIconContentColor:J

    iget-wide p0, p1, Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;->actionIconContentColor:J

    invoke-static {v2, v3, p0, p1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result p0

    if-nez p0, :cond_6

    return v1

    :cond_6
    return v0

    :cond_7
    :goto_0
    return v1
.end method

.method public final getActionIconContentColor-0d7_KjU()J
    .locals 2

    .line 179
    iget-wide v0, p0, Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;->actionIconContentColor:J

    return-wide v0
.end method

.method public final getNavigationIconContentColor-0d7_KjU()J
    .locals 2

    .line 177
    iget-wide v0, p0, Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;->navigationIconContentColor:J

    return-wide v0
.end method

.method public final getTitleContentColor-0d7_KjU()J
    .locals 2

    .line 178
    iget-wide v0, p0, Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;->titleContentColor:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .line 215
    iget-wide v0, p0, Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;->containerColor:J

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 216
    iget-wide v1, p0, Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;->scrolledContainerColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 217
    iget-wide v1, p0, Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;->navigationIconContentColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 218
    iget-wide v1, p0, Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;->titleContentColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 219
    iget-wide v1, p0, Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;->actionIconContentColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method
