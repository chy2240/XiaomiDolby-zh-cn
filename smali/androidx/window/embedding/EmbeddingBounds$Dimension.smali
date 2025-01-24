.class public abstract Landroidx/window/embedding/EmbeddingBounds$Dimension;
.super Ljava/lang/Object;
.source "EmbeddingBounds.kt"


# static fields
.field public static final Companion:Landroidx/window/embedding/EmbeddingBounds$Dimension$Companion;

.field public static final DIMENSION_EXPANDED:Landroidx/window/embedding/EmbeddingBounds$Dimension;

.field public static final DIMENSION_HINGE:Landroidx/window/embedding/EmbeddingBounds$Dimension;


# instance fields
.field private final description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/window/embedding/EmbeddingBounds$Dimension$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/window/embedding/EmbeddingBounds$Dimension$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/window/embedding/EmbeddingBounds$Dimension;->Companion:Landroidx/window/embedding/EmbeddingBounds$Dimension$Companion;

    .line 281
    new-instance v0, Landroidx/window/embedding/EmbeddingBounds$Dimension$Ratio;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1}, Landroidx/window/embedding/EmbeddingBounds$Dimension$Ratio;-><init>(F)V

    sput-object v0, Landroidx/window/embedding/EmbeddingBounds$Dimension;->DIMENSION_EXPANDED:Landroidx/window/embedding/EmbeddingBounds$Dimension;

    .line 298
    new-instance v0, Landroidx/window/embedding/EmbeddingBounds$Dimension$Companion$DIMENSION_HINGE$1;

    invoke-direct {v0}, Landroidx/window/embedding/EmbeddingBounds$Dimension$Companion$DIMENSION_HINGE$1;-><init>()V

    sput-object v0, Landroidx/window/embedding/EmbeddingBounds$Dimension;->DIMENSION_HINGE:Landroidx/window/embedding/EmbeddingBounds$Dimension;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "description"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/embedding/EmbeddingBounds$Dimension;->description:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 238
    :cond_0
    instance-of v0, p1, Landroidx/window/embedding/EmbeddingBounds$Dimension;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 239
    :cond_1
    iget-object p0, p0, Landroidx/window/embedding/EmbeddingBounds$Dimension;->description:Ljava/lang/String;

    check-cast p1, Landroidx/window/embedding/EmbeddingBounds$Dimension;

    iget-object p1, p1, Landroidx/window/embedding/EmbeddingBounds$Dimension;->description:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    .line 242
    iget-object p0, p0, Landroidx/window/embedding/EmbeddingBounds$Dimension;->description:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 244
    iget-object p0, p0, Landroidx/window/embedding/EmbeddingBounds$Dimension;->description:Ljava/lang/String;

    return-object p0
.end method
