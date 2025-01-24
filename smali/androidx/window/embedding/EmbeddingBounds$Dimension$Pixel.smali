.class public final Landroidx/window/embedding/EmbeddingBounds$Dimension$Pixel;
.super Landroidx/window/embedding/EmbeddingBounds$Dimension;
.source "EmbeddingBounds.kt"


# instance fields
.field private final value:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dimension in pixel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/window/embedding/EmbeddingBounds$Dimension;-><init>(Ljava/lang/String;)V

    .line 251
    iput p1, p0, Landroidx/window/embedding/EmbeddingBounds$Dimension$Pixel;->value:I

    const/4 p0, 0x1

    if-lt p1, p0, :cond_0

    return-void

    .line 255
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Pixel value must be a positive integer."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getValue$window_release()I
    .locals 0

    .line 251
    iget p0, p0, Landroidx/window/embedding/EmbeddingBounds$Dimension$Pixel;->value:I

    return p0
.end method
