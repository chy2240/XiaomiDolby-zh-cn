.class public final Landroidx/compose/ui/platform/LayerMatrixCache;
.super Ljava/lang/Object;
.source "LayerMatrixCache.android.kt"


# instance fields
.field private androidMatrixCache:Landroid/graphics/Matrix;

.field private final getMatrix:Lkotlin/jvm/functions/Function2;

.field private inverseMatrixCache:[F

.field private isDirty:Z

.field private isIdentity:Z

.field private isInverseDirty:Z

.field private isInverseValid:Z

.field private matrixCache:[F

.field private previousAndroidMatrix:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function2;)V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->getMatrix:Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 39
    invoke-static {p1, v0, p1}, Landroidx/compose/ui/graphics/Matrix;->constructor-impl$default([FILkotlin/jvm/internal/DefaultConstructorMarker;)[F

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->matrixCache:[F

    .line 40
    invoke-static {p1, v0, p1}, Landroidx/compose/ui/graphics/Matrix;->constructor-impl$default([FILkotlin/jvm/internal/DefaultConstructorMarker;)[F

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->inverseMatrixCache:[F

    .line 44
    iput-boolean v0, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->isInverseValid:Z

    .line 45
    iput-boolean v0, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->isIdentity:Z

    return-void
.end method


# virtual methods
.method public final calculateInverseMatrix-bWbORWo(Ljava/lang/Object;)[F
    .locals 2

    .line 98
    iget-object v0, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->inverseMatrixCache:[F

    .line 99
    iget-boolean v1, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->isInverseDirty:Z

    if-eqz v1, :cond_0

    .line 100
    invoke-virtual {p0, p1}, Landroidx/compose/ui/platform/LayerMatrixCache;->calculateMatrix-GrdbGEg(Ljava/lang/Object;)[F

    move-result-object p1

    .line 101
    invoke-static {p1, v0}, Landroidx/compose/ui/platform/InvertMatrixKt;->invertTo-JiSxe2E([F[F)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->isInverseValid:Z

    const/4 p1, 0x0

    .line 102
    iput-boolean p1, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->isInverseDirty:Z

    .line 104
    :cond_0
    iget-boolean p0, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->isInverseValid:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final calculateMatrix-GrdbGEg(Ljava/lang/Object;)[F
    .locals 3

    .line 71
    iget-object v0, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->matrixCache:[F

    .line 72
    iget-boolean v1, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->isDirty:Z

    if-nez v1, :cond_0

    return-object v0

    .line 76
    :cond_0
    iget-object v1, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->androidMatrixCache:Landroid/graphics/Matrix;

    if-nez v1, :cond_1

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->androidMatrixCache:Landroid/graphics/Matrix;

    .line 78
    :cond_1
    iget-object v2, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->getMatrix:Lkotlin/jvm/functions/Function2;

    invoke-interface {v2, p1, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object p1, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->previousAndroidMatrix:Landroid/graphics/Matrix;

    if-eqz p1, :cond_2

    .line 81
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 82
    :cond_2
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/AndroidMatrixConversions_androidKt;->setFrom-tU-YjHk([FLandroid/graphics/Matrix;)V

    .line 83
    iput-object p1, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->androidMatrixCache:Landroid/graphics/Matrix;

    .line 84
    iput-object v1, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->previousAndroidMatrix:Landroid/graphics/Matrix;

    :cond_3
    const/4 p1, 0x0

    .line 87
    iput-boolean p1, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->isDirty:Z

    .line 88
    invoke-static {v0}, Landroidx/compose/ui/graphics/MatrixKt;->isIdentity-58bKbWc([F)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->isIdentity:Z

    return-object v0
.end method

.method public final invalidate()V
    .locals 1

    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->isDirty:Z

    .line 64
    iput-boolean v0, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->isInverseDirty:Z

    return-void
.end method

.method public final map(Ljava/lang/Object;Landroidx/compose/ui/geometry/MutableRect;)V
    .locals 0

    .line 108
    invoke-virtual {p0, p1}, Landroidx/compose/ui/platform/LayerMatrixCache;->calculateMatrix-GrdbGEg(Ljava/lang/Object;)[F

    move-result-object p1

    .line 109
    iget-boolean p0, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->isIdentity:Z

    if-nez p0, :cond_0

    .line 110
    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/Matrix;->map-impl([FLandroidx/compose/ui/geometry/MutableRect;)V

    :cond_0
    return-void
.end method

.method public final map-R5De75A(Ljava/lang/Object;J)J
    .locals 0

    .line 124
    invoke-virtual {p0, p1}, Landroidx/compose/ui/platform/LayerMatrixCache;->calculateMatrix-GrdbGEg(Ljava/lang/Object;)[F

    move-result-object p1

    .line 125
    iget-boolean p0, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->isIdentity:Z

    if-nez p0, :cond_0

    .line 126
    invoke-static {p1, p2, p3}, Landroidx/compose/ui/graphics/Matrix;->map-MK-Hz9U([FJ)J

    move-result-wide p2

    :cond_0
    return-wide p2
.end method

.method public final mapInverse(Ljava/lang/Object;Landroidx/compose/ui/geometry/MutableRect;)V
    .locals 0

    .line 115
    invoke-virtual {p0, p1}, Landroidx/compose/ui/platform/LayerMatrixCache;->calculateInverseMatrix-bWbORWo(Ljava/lang/Object;)[F

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    .line 117
    invoke-virtual {p2, p0, p0, p0, p0}, Landroidx/compose/ui/geometry/MutableRect;->set(FFFF)V

    goto :goto_0

    .line 118
    :cond_0
    iget-boolean p0, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->isIdentity:Z

    if-nez p0, :cond_1

    .line 119
    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/Matrix;->map-impl([FLandroidx/compose/ui/geometry/MutableRect;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final mapInverse-R5De75A(Ljava/lang/Object;J)J
    .locals 0

    .line 133
    invoke-virtual {p0, p1}, Landroidx/compose/ui/platform/LayerMatrixCache;->calculateInverseMatrix-bWbORWo(Ljava/lang/Object;)[F

    move-result-object p1

    if-nez p1, :cond_0

    .line 135
    sget-object p0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Offset$Companion;->getInfinite-F1C5BW0()J

    move-result-wide p2

    goto :goto_0

    .line 136
    :cond_0
    iget-boolean p0, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->isIdentity:Z

    if-nez p0, :cond_1

    .line 137
    invoke-static {p1, p2, p3}, Landroidx/compose/ui/graphics/Matrix;->map-MK-Hz9U([FJ)J

    move-result-wide p2

    :cond_1
    :goto_0
    return-wide p2
.end method

.method public final reset()V
    .locals 1

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->isDirty:Z

    .line 50
    iput-boolean v0, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->isInverseDirty:Z

    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->isIdentity:Z

    .line 52
    iput-boolean v0, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->isInverseValid:Z

    .line 53
    iget-object v0, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->matrixCache:[F

    invoke-static {v0}, Landroidx/compose/ui/graphics/Matrix;->reset-impl([F)V

    .line 54
    iget-object p0, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->inverseMatrixCache:[F

    invoke-static {p0}, Landroidx/compose/ui/graphics/Matrix;->reset-impl([F)V

    return-void
.end method
