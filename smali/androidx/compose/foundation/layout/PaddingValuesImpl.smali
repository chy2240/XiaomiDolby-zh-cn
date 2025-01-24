.class public final Landroidx/compose/foundation/layout/PaddingValuesImpl;
.super Ljava/lang/Object;
.source "Padding.kt"

# interfaces
.implements Landroidx/compose/foundation/layout/PaddingValues;


# instance fields
.field private final bottom:F

.field private final end:F

.field private final start:F

.field private final top:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method private constructor <init>(FFFF)V
    .locals 2

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    iput p1, p0, Landroidx/compose/foundation/layout/PaddingValuesImpl;->start:F

    .line 288
    iput p2, p0, Landroidx/compose/foundation/layout/PaddingValuesImpl;->top:F

    .line 289
    iput p3, p0, Landroidx/compose/foundation/layout/PaddingValuesImpl;->end:F

    .line 290
    iput p4, p0, Landroidx/compose/foundation/layout/PaddingValuesImpl;->bottom:F

    const/4 p0, 0x0

    cmpl-float p1, p1, p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-nez p1, :cond_1

    .line 294
    const-string p1, "Start padding must be non-negative"

    .line 94
    invoke-static {p1}, Landroidx/compose/foundation/layout/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :cond_1
    cmpl-float p1, p2, p0

    if-ltz p1, :cond_2

    move p1, v1

    goto :goto_1

    :cond_2
    move p1, v0

    :goto_1
    if-nez p1, :cond_3

    .line 295
    const-string p1, "Top padding must be non-negative"

    .line 94
    invoke-static {p1}, Landroidx/compose/foundation/layout/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :cond_3
    cmpl-float p1, p3, p0

    if-ltz p1, :cond_4

    move p1, v1

    goto :goto_2

    :cond_4
    move p1, v0

    :goto_2
    if-nez p1, :cond_5

    .line 296
    const-string p1, "End padding must be non-negative"

    .line 94
    invoke-static {p1}, Landroidx/compose/foundation/layout/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :cond_5
    cmpl-float p0, p4, p0

    if-ltz p0, :cond_6

    move v0, v1

    :cond_6
    if-nez v0, :cond_7

    .line 297
    const-string p0, "Bottom padding must be non-negative"

    .line 94
    invoke-static {p0}, Landroidx/compose/foundation/layout/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public synthetic constructor <init>(FFFFLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/layout/PaddingValuesImpl;-><init>(FFFF)V

    return-void
.end method


# virtual methods
.method public calculateBottomPadding-D9Ej5fM()F
    .locals 0

    .line 308
    iget p0, p0, Landroidx/compose/foundation/layout/PaddingValuesImpl;->bottom:F

    return p0
.end method

.method public calculateLeftPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F
    .locals 1

    .line 301
    sget-object v0, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne p1, v0, :cond_0

    iget p0, p0, Landroidx/compose/foundation/layout/PaddingValuesImpl;->start:F

    goto :goto_0

    :cond_0
    iget p0, p0, Landroidx/compose/foundation/layout/PaddingValuesImpl;->end:F

    :goto_0
    return p0
.end method

.method public calculateRightPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F
    .locals 1

    .line 306
    sget-object v0, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne p1, v0, :cond_0

    iget p0, p0, Landroidx/compose/foundation/layout/PaddingValuesImpl;->end:F

    goto :goto_0

    :cond_0
    iget p0, p0, Landroidx/compose/foundation/layout/PaddingValuesImpl;->start:F

    :goto_0
    return p0
.end method

.method public calculateTopPadding-D9Ej5fM()F
    .locals 0

    .line 303
    iget p0, p0, Landroidx/compose/foundation/layout/PaddingValuesImpl;->top:F

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 311
    instance-of v0, p1, Landroidx/compose/foundation/layout/PaddingValuesImpl;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 312
    :cond_0
    iget v0, p0, Landroidx/compose/foundation/layout/PaddingValuesImpl;->start:F

    check-cast p1, Landroidx/compose/foundation/layout/PaddingValuesImpl;

    iget v2, p1, Landroidx/compose/foundation/layout/PaddingValuesImpl;->start:F

    invoke-static {v0, v2}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 313
    iget v0, p0, Landroidx/compose/foundation/layout/PaddingValuesImpl;->top:F

    iget v2, p1, Landroidx/compose/foundation/layout/PaddingValuesImpl;->top:F

    invoke-static {v0, v2}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 314
    iget v0, p0, Landroidx/compose/foundation/layout/PaddingValuesImpl;->end:F

    iget v2, p1, Landroidx/compose/foundation/layout/PaddingValuesImpl;->end:F

    invoke-static {v0, v2}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 315
    iget p0, p0, Landroidx/compose/foundation/layout/PaddingValuesImpl;->bottom:F

    iget p1, p1, Landroidx/compose/foundation/layout/PaddingValuesImpl;->bottom:F

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 319
    iget v0, p0, Landroidx/compose/foundation/layout/PaddingValuesImpl;->start:F

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->hashCode-impl(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/foundation/layout/PaddingValuesImpl;->top:F

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->hashCode-impl(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/foundation/layout/PaddingValuesImpl;->end:F

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->hashCode-impl(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Landroidx/compose/foundation/layout/PaddingValuesImpl;->bottom:F

    invoke-static {p0}, Landroidx/compose/ui/unit/Dp;->hashCode-impl(F)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PaddingValues(start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/foundation/layout/PaddingValuesImpl;->start:F

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->toString-impl(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/foundation/layout/PaddingValuesImpl;->top:F

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->toString-impl(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/foundation/layout/PaddingValuesImpl;->end:F

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->toString-impl(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/compose/foundation/layout/PaddingValuesImpl;->bottom:F

    invoke-static {p0}, Landroidx/compose/ui/unit/Dp;->toString-impl(F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
