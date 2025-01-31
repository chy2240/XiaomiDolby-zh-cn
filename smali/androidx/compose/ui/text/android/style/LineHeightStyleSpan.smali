.class public final Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;
.super Ljava/lang/Object;
.source "LineHeightStyleSpan.android.kt"

# interfaces
.implements Landroid/text/style/LineHeightSpan;


# instance fields
.field private ascent:I

.field private descent:I

.field private final endIndex:I

.field private firstAscent:I

.field private firstAscentDiff:I

.field private lastDescent:I

.field private lastDescentDiff:I

.field private final lineHeight:F

.field private final preserveMinimumHeight:Z

.field private final startIndex:I

.field private final topRatio:F

.field private final trimFirstLineTop:Z

.field private final trimLastLineBottom:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(FIIZZFZ)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->lineHeight:F

    .line 45
    iput p2, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->startIndex:I

    .line 46
    iput p3, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->endIndex:I

    .line 47
    iput-boolean p4, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->trimFirstLineTop:Z

    .line 48
    iput-boolean p5, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->trimLastLineBottom:Z

    .line 49
    iput p6, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->topRatio:F

    .line 50
    iput-boolean p7, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->preserveMinimumHeight:Z

    const/high16 p1, -0x80000000

    .line 53
    iput p1, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->firstAscent:I

    .line 54
    iput p1, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->ascent:I

    .line 55
    iput p1, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->descent:I

    .line 56
    iput p1, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->lastDescent:I

    const/4 p0, 0x0

    cmpg-float p0, p0, p6

    if-gtz p0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    cmpg-float p0, p6, p0

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p0, -0x40800000    # -1.0f

    cmpg-float p0, p6, p0

    if-nez p0, :cond_1

    :goto_0
    return-void

    .line 67
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "topRatio should be in [0..1] range or -1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final calculateTargetMetrics(Landroid/graphics/Paint$FontMetricsInt;)V
    .locals 4

    .line 97
    invoke-static {p1}, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan_androidKt;->lineHeight(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    .line 98
    iget v1, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->lineHeight:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-float v1, v1

    float-to-int v1, v1

    sub-int v0, v1, v0

    .line 102
    iget-boolean v2, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->preserveMinimumHeight:Z

    if-eqz v2, :cond_0

    if-gtz v0, :cond_0

    .line 103
    iget v0, p1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput v0, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->ascent:I

    .line 104
    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iput p1, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->descent:I

    .line 105
    iput v0, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->firstAscent:I

    .line 106
    iput p1, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->lastDescent:I

    const/4 p1, 0x0

    .line 107
    iput p1, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->firstAscentDiff:I

    .line 108
    iput p1, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->lastDescentDiff:I

    return-void

    .line 113
    :cond_0
    iget v2, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->topRatio:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpg-float v3, v2, v3

    if-nez v3, :cond_1

    .line 114
    iget v2, p1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {p1}, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan_androidKt;->lineHeight(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    :cond_1
    if-gtz v0, :cond_2

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-double v2, v0

    .line 122
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    :goto_0
    double-to-float v0, v2

    float-to-int v0, v0

    goto :goto_1

    :cond_2
    int-to-float v0, v0

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v2

    mul-float/2addr v0, v3

    float-to-double v2, v0

    .line 125
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    goto :goto_0

    .line 128
    :goto_1
    iget v2, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr v0, v2

    iput v0, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->descent:I

    sub-int v1, v0, v1

    .line 129
    iput v1, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->ascent:I

    .line 131
    iget-boolean v3, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->trimFirstLineTop:Z

    if-eqz v3, :cond_3

    iget v1, p1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    :cond_3
    iput v1, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->firstAscent:I

    .line 132
    iget-boolean v3, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->trimLastLineBottom:Z

    if-eqz v3, :cond_4

    move v0, v2

    :cond_4
    iput v0, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->lastDescent:I

    .line 133
    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr p1, v1

    iput p1, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->firstAscentDiff:I

    sub-int/2addr v0, v2

    .line 134
    iput v0, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->lastDescentDiff:I

    return-void
.end method


# virtual methods
.method public chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V
    .locals 0

    .line 78
    invoke-static {p6}, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan_androidKt;->lineHeight(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result p1

    if-gtz p1, :cond_0

    return-void

    .line 82
    :cond_0
    iget p1, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->startIndex:I

    const/4 p4, 0x0

    const/4 p5, 0x1

    if-ne p2, p1, :cond_1

    move p1, p5

    goto :goto_0

    :cond_1
    move p1, p4

    .line 83
    :goto_0
    iget p2, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->endIndex:I

    if-ne p3, p2, :cond_2

    move p4, p5

    :cond_2
    if-eqz p1, :cond_3

    if-eqz p4, :cond_3

    .line 86
    iget-boolean p2, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->trimFirstLineTop:Z

    if-eqz p2, :cond_3

    iget-boolean p2, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->trimLastLineBottom:Z

    if-eqz p2, :cond_3

    return-void

    .line 88
    :cond_3
    iget p2, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->firstAscent:I

    const/high16 p3, -0x80000000

    if-ne p2, p3, :cond_4

    .line 89
    invoke-direct {p0, p6}, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->calculateTargetMetrics(Landroid/graphics/Paint$FontMetricsInt;)V

    :cond_4
    if-eqz p1, :cond_5

    .line 92
    iget p1, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->firstAscent:I

    goto :goto_1

    :cond_5
    iget p1, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->ascent:I

    :goto_1
    iput p1, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    if-eqz p4, :cond_6

    .line 93
    iget p0, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->lastDescent:I

    goto :goto_2

    :cond_6
    iget p0, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->descent:I

    :goto_2
    iput p0, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    return-void
.end method

.method public final copy$ui_text_release(IIZ)Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;
    .locals 9

    .line 142
    new-instance v8, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

    .line 143
    iget v1, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->lineHeight:F

    .line 147
    iget-boolean v5, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->trimLastLineBottom:Z

    .line 148
    iget v6, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->topRatio:F

    .line 149
    iget-boolean v7, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->preserveMinimumHeight:Z

    move-object v0, v8

    move v2, p1

    move v3, p2

    move v4, p3

    .line 142
    invoke-direct/range {v0 .. v7}, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;-><init>(FIIZZFZ)V

    return-object v8
.end method

.method public final getFirstAscentDiff()I
    .locals 0

    .line 59
    iget p0, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->firstAscentDiff:I

    return p0
.end method

.method public final getLastDescentDiff()I
    .locals 0

    .line 63
    iget p0, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->lastDescentDiff:I

    return p0
.end method

.method public final getTrimLastLineBottom()Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->trimLastLineBottom:Z

    return p0
.end method
