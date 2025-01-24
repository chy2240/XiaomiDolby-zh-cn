.class public final Landroidx/window/embedding/OverlayAttributes;
.super Ljava/lang/Object;
.source "OverlayAttributes.kt"


# instance fields
.field private final bounds:Landroidx/window/embedding/EmbeddingBounds;


# direct methods
.method public constructor <init>(Landroidx/window/embedding/EmbeddingBounds;)V
    .locals 1

    const-string v0, "bounds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Landroidx/window/embedding/OverlayAttributes;->bounds:Landroidx/window/embedding/EmbeddingBounds;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 38
    :cond_0
    instance-of v0, p1, Landroidx/window/embedding/OverlayAttributes;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 39
    :cond_1
    iget-object p0, p0, Landroidx/window/embedding/OverlayAttributes;->bounds:Landroidx/window/embedding/EmbeddingBounds;

    check-cast p1, Landroidx/window/embedding/OverlayAttributes;

    iget-object p1, p1, Landroidx/window/embedding/OverlayAttributes;->bounds:Landroidx/window/embedding/EmbeddingBounds;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final getBounds()Landroidx/window/embedding/EmbeddingBounds;
    .locals 0

    .line 31
    iget-object p0, p0, Landroidx/window/embedding/OverlayAttributes;->bounds:Landroidx/window/embedding/EmbeddingBounds;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    .line 42
    iget-object p0, p0, Landroidx/window/embedding/OverlayAttributes;->bounds:Landroidx/window/embedding/EmbeddingBounds;

    invoke-virtual {p0}, Landroidx/window/embedding/EmbeddingBounds;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroidx/window/embedding/OverlayAttributes;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": {bounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/window/embedding/OverlayAttributes;->bounds:Landroidx/window/embedding/EmbeddingBounds;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
