.class public final Landroidx/window/embedding/EmbeddingAnimationBackground$ColorBackground;
.super Landroidx/window/embedding/EmbeddingAnimationBackground;
.source "EmbeddingAnimationBackground.kt"


# instance fields
.field private final color:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, v0}, Landroidx/window/embedding/EmbeddingAnimationBackground;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 40
    iput p1, p0, Landroidx/window/embedding/EmbeddingAnimationBackground$ColorBackground;->color:I

    .line 44
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    const/16 p1, 0xff

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Background color must be opaque"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 51
    :cond_0
    instance-of v1, p1, Landroidx/window/embedding/EmbeddingAnimationBackground$ColorBackground;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 52
    :cond_1
    iget p0, p0, Landroidx/window/embedding/EmbeddingAnimationBackground$ColorBackground;->color:I

    check-cast p1, Landroidx/window/embedding/EmbeddingAnimationBackground$ColorBackground;

    iget p1, p1, Landroidx/window/embedding/EmbeddingAnimationBackground$ColorBackground;->color:I

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 0

    .line 55
    iget p0, p0, Landroidx/window/embedding/EmbeddingAnimationBackground$ColorBackground;->color:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ColorBackground{color:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/window/embedding/EmbeddingAnimationBackground$ColorBackground;->color:I

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
