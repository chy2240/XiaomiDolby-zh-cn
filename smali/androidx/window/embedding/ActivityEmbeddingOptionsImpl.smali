.class public final Landroidx/window/embedding/ActivityEmbeddingOptionsImpl;
.super Ljava/lang/Object;
.source "ActivityEmbeddingOptionsImpl.kt"


# static fields
.field public static final INSTANCE:Landroidx/window/embedding/ActivityEmbeddingOptionsImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/window/embedding/ActivityEmbeddingOptionsImpl;

    invoke-direct {v0}, Landroidx/window/embedding/ActivityEmbeddingOptionsImpl;-><init>()V

    sput-object v0, Landroidx/window/embedding/ActivityEmbeddingOptionsImpl;->INSTANCE:Landroidx/window/embedding/ActivityEmbeddingOptionsImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getDimension(Landroid/os/Bundle;Ljava/lang/String;)Landroidx/window/embedding/EmbeddingBounds$Dimension;
    .locals 1

    .line 218
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 219
    const-string p1, "androidx.window.embedding.EmbeddingBounds.dimension_type"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const-string v0, "androidx.window.embedding.EmbeddingBounds.dimension_value"

    sparse-switch p2, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string p2, "ratio"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 223
    sget-object p1, Landroidx/window/embedding/EmbeddingBounds$Dimension;->Companion:Landroidx/window/embedding/EmbeddingBounds$Dimension$Companion;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/window/embedding/EmbeddingBounds$Dimension$Companion;->ratio(F)Landroidx/window/embedding/EmbeddingBounds$Dimension;

    move-result-object p0

    goto :goto_0

    .line 219
    :sswitch_1
    const-string p2, "pixel"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 225
    sget-object p1, Landroidx/window/embedding/EmbeddingBounds$Dimension;->Companion:Landroidx/window/embedding/EmbeddingBounds$Dimension$Companion;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/window/embedding/EmbeddingBounds$Dimension$Companion;->pixel(I)Landroidx/window/embedding/EmbeddingBounds$Dimension;

    move-result-object p0

    goto :goto_0

    .line 219
    :sswitch_2
    const-string p0, "hinge"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 221
    sget-object p0, Landroidx/window/embedding/EmbeddingBounds$Dimension;->DIMENSION_HINGE:Landroidx/window/embedding/EmbeddingBounds$Dimension;

    goto :goto_0

    .line 219
    :sswitch_3
    const-string p0, "expanded"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 220
    sget-object p0, Landroidx/window/embedding/EmbeddingBounds$Dimension;->DIMENSION_EXPANDED:Landroidx/window/embedding/EmbeddingBounds$Dimension;

    :goto_0
    return-object p0

    .line 226
    :cond_0
    :goto_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Illegal type "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :sswitch_data_0
    .sparse-switch
        -0x73945347 -> :sswitch_3
        0x5eaf12b -> :sswitch_2
        0x65bd286 -> :sswitch_1
        0x674500b -> :sswitch_0
    .end sparse-switch
.end method

.method private final getEmbeddingBounds(Landroid/os/Bundle;)Landroidx/window/embedding/EmbeddingBounds;
    .locals 4

    .line 204
    const-string v0, "androidx.window.embedding.EmbeddingBounds"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 205
    :cond_0
    new-instance v0, Landroidx/window/embedding/EmbeddingBounds;

    .line 206
    new-instance v1, Landroidx/window/embedding/EmbeddingBounds$Alignment;

    const-string v2, "androidx.window.embedding.EmbeddingBounds.alignment"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Landroidx/window/embedding/EmbeddingBounds$Alignment;-><init>(I)V

    .line 207
    const-string v2, "androidx.window.embedding.EmbeddingBounds.width"

    invoke-direct {p0, p1, v2}, Landroidx/window/embedding/ActivityEmbeddingOptionsImpl;->getDimension(Landroid/os/Bundle;Ljava/lang/String;)Landroidx/window/embedding/EmbeddingBounds$Dimension;

    move-result-object v2

    .line 208
    const-string v3, "androidx.window.embedding.EmbeddingBounds.height"

    invoke-direct {p0, p1, v3}, Landroidx/window/embedding/ActivityEmbeddingOptionsImpl;->getDimension(Landroid/os/Bundle;Ljava/lang/String;)Landroidx/window/embedding/EmbeddingBounds$Dimension;

    move-result-object p0

    .line 205
    invoke-direct {v0, v1, v2, p0}, Landroidx/window/embedding/EmbeddingBounds;-><init>(Landroidx/window/embedding/EmbeddingBounds$Alignment;Landroidx/window/embedding/EmbeddingBounds$Dimension;Landroidx/window/embedding/EmbeddingBounds$Dimension;)V

    return-object v0
.end method


# virtual methods
.method public final getOverlayAttributes$window_release(Landroid/os/Bundle;)Landroidx/window/embedding/OverlayAttributes;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    invoke-direct {p0, p1}, Landroidx/window/embedding/ActivityEmbeddingOptionsImpl;->getEmbeddingBounds(Landroid/os/Bundle;)Landroidx/window/embedding/EmbeddingBounds;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 200
    :cond_0
    new-instance p1, Landroidx/window/embedding/OverlayAttributes;

    invoke-direct {p1, p0}, Landroidx/window/embedding/OverlayAttributes;-><init>(Landroidx/window/embedding/EmbeddingBounds;)V

    return-object p1
.end method

.method public final putActivityStackAlignment$window_release(Landroid/os/Bundle;Landroidx/window/embedding/EmbeddingBounds;)V
    .locals 0

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "embeddingBounds"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    invoke-virtual {p2}, Landroidx/window/embedding/EmbeddingBounds;->getAlignment()Landroidx/window/embedding/EmbeddingBounds$Alignment;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/window/embedding/EmbeddingBounds$Alignment;->getValue$window_release()I

    move-result p0

    const-string p2, "androidx.window.embedding.ActivityStackAlignment"

    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
