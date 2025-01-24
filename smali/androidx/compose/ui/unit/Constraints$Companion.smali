.class public final Landroidx/compose/ui/unit/Constraints$Companion;
.super Ljava/lang/Object;
.source "Constraints.kt"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/compose/ui/unit/Constraints$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fitPrioritizingHeight-Zbe2FdA(IIII)J
    .locals 4

    const p0, 0x3fffe

    .line 334
    invoke-static {p3, p0}, Ljava/lang/Math;->min(II)I

    move-result p3

    const v0, 0x7fffffff

    if-ne p4, v0, :cond_0

    move p4, v0

    goto :goto_0

    .line 339
    :cond_0
    invoke-static {p4, p0}, Ljava/lang/Math;->min(II)I

    move-result p4

    :goto_0
    if-ne p4, v0, :cond_1

    move v1, p3

    goto :goto_1

    :cond_1
    move v1, p4

    :goto_1
    add-int/lit8 v2, v1, 0x1

    .line 492
    invoke-static {v2}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v2

    const/16 v3, 0xd

    if-le v2, v3, :cond_6

    const/16 v1, 0x13

    if-lt v2, v1, :cond_2

    goto :goto_2

    :cond_2
    const/16 p0, 0x11

    if-lt v2, p0, :cond_3

    const p0, 0xfffe

    goto :goto_2

    :cond_3
    const/16 p0, 0x10

    if-lt v2, p0, :cond_4

    const/16 p0, 0x7ffe

    goto :goto_2

    :cond_4
    const/16 p0, 0x1ffe

    :goto_2
    if-ne p2, v0, :cond_5

    goto :goto_3

    .line 343
    :cond_5
    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 344
    :goto_3
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 345
    invoke-static {p0, v0, p3, p4}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints(IIII)J

    move-result-wide p0

    return-wide p0

    .line 493
    :cond_6
    invoke-static {v1}, Landroidx/compose/ui/unit/ConstraintsKt;->throwInvalidConstraintsSizeException(I)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public final fitPrioritizingWidth-Zbe2FdA(IIII)J
    .locals 4

    const p0, 0x3fffe

    .line 298
    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const v0, 0x7fffffff

    if-ne p2, v0, :cond_0

    move p2, v0

    goto :goto_0

    .line 303
    :cond_0
    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p2

    :goto_0
    if-ne p2, v0, :cond_1

    move v1, p1

    goto :goto_1

    :cond_1
    move v1, p2

    :goto_1
    add-int/lit8 v2, v1, 0x1

    .line 492
    invoke-static {v2}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v2

    const/16 v3, 0xd

    if-le v2, v3, :cond_6

    const/16 v1, 0x13

    if-lt v2, v1, :cond_2

    goto :goto_2

    :cond_2
    const/16 p0, 0x11

    if-lt v2, p0, :cond_3

    const p0, 0xfffe

    goto :goto_2

    :cond_3
    const/16 p0, 0x10

    if-lt v2, p0, :cond_4

    const/16 p0, 0x7ffe

    goto :goto_2

    :cond_4
    const/16 p0, 0x1ffe

    :goto_2
    if-ne p4, v0, :cond_5

    goto :goto_3

    .line 307
    :cond_5
    invoke-static {p0, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 308
    :goto_3
    invoke-static {p0, p3}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 309
    invoke-static {p1, p2, p0, v0}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints(IIII)J

    move-result-wide p0

    return-wide p0

    .line 493
    :cond_6
    invoke-static {v1}, Landroidx/compose/ui/unit/ConstraintsKt;->throwInvalidConstraintsSizeException(I)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public final fixed-JhjzzOo(II)J
    .locals 2

    const/4 p0, 0x0

    const/4 v0, 0x1

    if-ltz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, p0

    :goto_0
    if-ltz p2, :cond_1

    move p0, v0

    :cond_1
    and-int/2addr p0, v1

    if-nez p0, :cond_2

    .line 225
    const-string p0, "width and height must be >= 0"

    .line 39
    invoke-static {p0}, Landroidx/compose/ui/unit/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 226
    :cond_2
    invoke-static {p1, p1, p2, p2}, Landroidx/compose/ui/unit/ConstraintsKt;->createConstraints(IIII)J

    move-result-wide p0

    return-wide p0
.end method

.method public final fixedWidth-OenEA2s(I)J
    .locals 1

    const/4 p0, 0x0

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, p0

    :goto_0
    if-nez v0, :cond_1

    .line 232
    const-string v0, "width must be >= 0"

    .line 39
    invoke-static {v0}, Landroidx/compose/ui/unit/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :cond_1
    const v0, 0x7fffffff

    .line 233
    invoke-static {p1, p1, p0, v0}, Landroidx/compose/ui/unit/ConstraintsKt;->createConstraints(IIII)J

    move-result-wide p0

    return-wide p0
.end method
