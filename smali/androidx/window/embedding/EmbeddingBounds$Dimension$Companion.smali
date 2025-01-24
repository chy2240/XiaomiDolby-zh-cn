.class public final Landroidx/window/embedding/EmbeddingBounds$Dimension$Companion;
.super Ljava/lang/Object;
.source "EmbeddingBounds.kt"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/window/embedding/EmbeddingBounds$Dimension$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final pixel(I)Landroidx/window/embedding/EmbeddingBounds$Dimension;
    .locals 0

    .line 308
    new-instance p0, Landroidx/window/embedding/EmbeddingBounds$Dimension$Pixel;

    invoke-direct {p0, p1}, Landroidx/window/embedding/EmbeddingBounds$Dimension$Pixel;-><init>(I)V

    return-object p0
.end method

.method public final ratio(F)Landroidx/window/embedding/EmbeddingBounds$Dimension;
    .locals 0

    .line 319
    new-instance p0, Landroidx/window/embedding/EmbeddingBounds$Dimension$Ratio;

    invoke-direct {p0, p1}, Landroidx/window/embedding/EmbeddingBounds$Dimension$Ratio;-><init>(F)V

    return-object p0
.end method
