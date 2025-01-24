.class public final Landroidx/compose/ui/geometry/MutableRect;
.super Ljava/lang/Object;
.source "MutableRect.kt"


# instance fields
.field private bottom:F

.field private left:F

.field private right:F

.field private top:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/geometry/MutableRect;->left:F

    iput p2, p0, Landroidx/compose/ui/geometry/MutableRect;->top:F

    iput p3, p0, Landroidx/compose/ui/geometry/MutableRect;->right:F

    iput p4, p0, Landroidx/compose/ui/geometry/MutableRect;->bottom:F

    return-void
.end method


# virtual methods
.method public final getBottom()F
    .locals 0

    .line 34
    iget p0, p0, Landroidx/compose/ui/geometry/MutableRect;->bottom:F

    return p0
.end method

.method public final getLeft()F
    .locals 0

    .line 34
    iget p0, p0, Landroidx/compose/ui/geometry/MutableRect;->left:F

    return p0
.end method

.method public final getRight()F
    .locals 0

    .line 34
    iget p0, p0, Landroidx/compose/ui/geometry/MutableRect;->right:F

    return p0
.end method

.method public final getTop()F
    .locals 0

    .line 34
    iget p0, p0, Landroidx/compose/ui/geometry/MutableRect;->top:F

    return p0
.end method

.method public final intersect(FFFF)V
    .locals 1

    .line 98
    iget v0, p0, Landroidx/compose/ui/geometry/MutableRect;->left:F

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Landroidx/compose/ui/geometry/MutableRect;->left:F

    .line 99
    iget p1, p0, Landroidx/compose/ui/geometry/MutableRect;->top:F

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Landroidx/compose/ui/geometry/MutableRect;->top:F

    .line 100
    iget p1, p0, Landroidx/compose/ui/geometry/MutableRect;->right:F

    invoke-static {p3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Landroidx/compose/ui/geometry/MutableRect;->right:F

    .line 101
    iget p1, p0, Landroidx/compose/ui/geometry/MutableRect;->bottom:F

    invoke-static {p4, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Landroidx/compose/ui/geometry/MutableRect;->bottom:F

    return-void
.end method

.method public final isEmpty()Z
    .locals 4

    .line 66
    iget v0, p0, Landroidx/compose/ui/geometry/MutableRect;->left:F

    iget v1, p0, Landroidx/compose/ui/geometry/MutableRect;->right:F

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget v3, p0, Landroidx/compose/ui/geometry/MutableRect;->top:F

    iget p0, p0, Landroidx/compose/ui/geometry/MutableRect;->bottom:F

    cmpl-float p0, v3, p0

    if-ltz p0, :cond_1

    move v1, v2

    :cond_1
    or-int p0, v0, v1

    return p0
.end method

.method public final set(FFFF)V
    .locals 0

    .line 186
    iput p1, p0, Landroidx/compose/ui/geometry/MutableRect;->left:F

    .line 187
    iput p2, p0, Landroidx/compose/ui/geometry/MutableRect;->top:F

    .line 188
    iput p3, p0, Landroidx/compose/ui/geometry/MutableRect;->right:F

    .line 189
    iput p4, p0, Landroidx/compose/ui/geometry/MutableRect;->bottom:F

    return-void
.end method

.method public final setBottom(F)V
    .locals 0

    .line 34
    iput p1, p0, Landroidx/compose/ui/geometry/MutableRect;->bottom:F

    return-void
.end method

.method public final setLeft(F)V
    .locals 0

    .line 34
    iput p1, p0, Landroidx/compose/ui/geometry/MutableRect;->left:F

    return-void
.end method

.method public final setRight(F)V
    .locals 0

    .line 34
    iput p1, p0, Landroidx/compose/ui/geometry/MutableRect;->right:F

    return-void
.end method

.method public final setTop(F)V
    .locals 0

    .line 34
    iput p1, p0, Landroidx/compose/ui/geometry/MutableRect;->top:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MutableRect("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    iget v1, p0, Landroidx/compose/ui/geometry/MutableRect;->left:F

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/GeometryUtilsKt;->toStringAsFixed(FI)Ljava/lang/String;

    move-result-object v1

    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    iget v3, p0, Landroidx/compose/ui/geometry/MutableRect;->top:F

    invoke-static {v3, v2}, Landroidx/compose/ui/geometry/GeometryUtilsKt;->toStringAsFixed(FI)Ljava/lang/String;

    move-result-object v3

    .line 193
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    iget v3, p0, Landroidx/compose/ui/geometry/MutableRect;->right:F

    invoke-static {v3, v2}, Landroidx/compose/ui/geometry/GeometryUtilsKt;->toStringAsFixed(FI)Ljava/lang/String;

    move-result-object v3

    .line 193
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    iget p0, p0, Landroidx/compose/ui/geometry/MutableRect;->bottom:F

    invoke-static {p0, v2}, Landroidx/compose/ui/geometry/GeometryUtilsKt;->toStringAsFixed(FI)Ljava/lang/String;

    move-result-object p0

    .line 193
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final translate(FF)V
    .locals 1

    .line 76
    iget v0, p0, Landroidx/compose/ui/geometry/MutableRect;->left:F

    add-float/2addr v0, p1

    iput v0, p0, Landroidx/compose/ui/geometry/MutableRect;->left:F

    .line 77
    iget v0, p0, Landroidx/compose/ui/geometry/MutableRect;->top:F

    add-float/2addr v0, p2

    iput v0, p0, Landroidx/compose/ui/geometry/MutableRect;->top:F

    .line 78
    iget v0, p0, Landroidx/compose/ui/geometry/MutableRect;->right:F

    add-float/2addr v0, p1

    iput v0, p0, Landroidx/compose/ui/geometry/MutableRect;->right:F

    .line 79
    iget p1, p0, Landroidx/compose/ui/geometry/MutableRect;->bottom:F

    add-float/2addr p1, p2

    iput p1, p0, Landroidx/compose/ui/geometry/MutableRect;->bottom:F

    return-void
.end method

.method public final translate-k-4lQ0M(J)V
    .locals 3

    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v0, v0

    .line 22
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    const-wide v1, 0xffffffffL

    and-long/2addr p1, v1

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    .line 69
    invoke-virtual {p0, v0, p1}, Landroidx/compose/ui/geometry/MutableRect;->translate(FF)V

    return-void
.end method
