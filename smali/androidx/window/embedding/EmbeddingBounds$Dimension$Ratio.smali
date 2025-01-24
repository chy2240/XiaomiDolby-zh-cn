.class public final Landroidx/window/embedding/EmbeddingBounds$Dimension$Ratio;
.super Landroidx/window/embedding/EmbeddingBounds$Dimension;
.source "EmbeddingBounds.kt"


# instance fields
.field private final value:F


# direct methods
.method public constructor <init>(F)V
    .locals 4

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dimension in ratio:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/window/embedding/EmbeddingBounds$Dimension;-><init>(Ljava/lang/String;)V

    .line 268
    iput p1, p0, Landroidx/window/embedding/EmbeddingBounds$Dimension$Ratio;->value:F

    float-to-double v0, p1

    const-wide/16 v2, 0x0

    cmpl-double p0, v0, v2

    if-lez p0, :cond_0

    float-to-double p0, p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double p0, p0, v0

    if-gtz p0, :cond_0

    return-void

    .line 272
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Ratio must be in range (0.0, 1.0]"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final times$window_release(I)I
    .locals 0

    .line 275
    iget p0, p0, Landroidx/window/embedding/EmbeddingBounds$Dimension$Ratio;->value:F

    int-to-float p1, p1

    mul-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method
