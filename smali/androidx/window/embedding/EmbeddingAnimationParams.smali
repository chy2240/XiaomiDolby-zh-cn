.class public final Landroidx/window/embedding/EmbeddingAnimationParams;
.super Ljava/lang/Object;
.source "EmbeddingAnimationParams.kt"


# instance fields
.field private final animationBackground:Landroidx/window/embedding/EmbeddingAnimationBackground;

.field private final changeAnimation:Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;

.field private final closeAnimation:Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;

.field private final openAnimation:Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;


# direct methods
.method public constructor <init>(Landroidx/window/embedding/EmbeddingAnimationBackground;Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;)V
    .locals 1

    const-string v0, "animationBackground"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "openAnimation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "closeAnimation"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "changeAnimation"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Landroidx/window/embedding/EmbeddingAnimationParams;->animationBackground:Landroidx/window/embedding/EmbeddingAnimationBackground;

    .line 43
    iput-object p2, p0, Landroidx/window/embedding/EmbeddingAnimationParams;->openAnimation:Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;

    .line 44
    iput-object p3, p0, Landroidx/window/embedding/EmbeddingAnimationParams;->closeAnimation:Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;

    .line 45
    iput-object p4, p0, Landroidx/window/embedding/EmbeddingAnimationParams;->changeAnimation:Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 109
    :cond_0
    instance-of v1, p1, Landroidx/window/embedding/EmbeddingAnimationParams;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 110
    :cond_1
    iget-object v1, p0, Landroidx/window/embedding/EmbeddingAnimationParams;->animationBackground:Landroidx/window/embedding/EmbeddingAnimationBackground;

    check-cast p1, Landroidx/window/embedding/EmbeddingAnimationParams;

    iget-object v3, p1, Landroidx/window/embedding/EmbeddingAnimationParams;->animationBackground:Landroidx/window/embedding/EmbeddingAnimationBackground;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 111
    iget-object v1, p0, Landroidx/window/embedding/EmbeddingAnimationParams;->openAnimation:Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;

    iget-object v3, p1, Landroidx/window/embedding/EmbeddingAnimationParams;->openAnimation:Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 112
    iget-object v1, p0, Landroidx/window/embedding/EmbeddingAnimationParams;->closeAnimation:Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;

    iget-object v3, p1, Landroidx/window/embedding/EmbeddingAnimationParams;->closeAnimation:Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 113
    iget-object p0, p0, Landroidx/window/embedding/EmbeddingAnimationParams;->changeAnimation:Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;

    iget-object p1, p1, Landroidx/window/embedding/EmbeddingAnimationParams;->changeAnimation:Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 94
    iget-object v0, p0, Landroidx/window/embedding/EmbeddingAnimationParams;->animationBackground:Landroidx/window/embedding/EmbeddingAnimationBackground;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 95
    iget-object v1, p0, Landroidx/window/embedding/EmbeddingAnimationParams;->openAnimation:Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 96
    iget-object v1, p0, Landroidx/window/embedding/EmbeddingAnimationParams;->closeAnimation:Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 97
    iget-object p0, p0, Landroidx/window/embedding/EmbeddingAnimationParams;->changeAnimation:Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroidx/window/embedding/EmbeddingAnimationParams;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":{animationBackground="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    iget-object v1, p0, Landroidx/window/embedding/EmbeddingAnimationParams;->animationBackground:Landroidx/window/embedding/EmbeddingAnimationBackground;

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 123
    const-string v1, ", openAnimation="

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    iget-object v1, p0, Landroidx/window/embedding/EmbeddingAnimationParams;->openAnimation:Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 123
    const-string v1, ", closeAnimation="

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    iget-object v1, p0, Landroidx/window/embedding/EmbeddingAnimationParams;->closeAnimation:Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 124
    const-string v1, ", changeAnimation="

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    iget-object p0, p0, Landroidx/window/embedding/EmbeddingAnimationParams;->changeAnimation:Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;

    .line 122
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 124
    const-string p0, " }"

    .line 122
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
