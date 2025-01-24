.class public final Landroidx/window/embedding/EmbeddingAnimationParams$Builder;
.super Ljava/lang/Object;
.source "EmbeddingAnimationParams.kt"


# instance fields
.field private animationBackground:Landroidx/window/embedding/EmbeddingAnimationBackground;

.field private changeAnimation:Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;

.field private closeAnimation:Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;

.field private openAnimation:Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    sget-object v0, Landroidx/window/embedding/EmbeddingAnimationBackground;->DEFAULT:Landroidx/window/embedding/EmbeddingAnimationBackground;

    iput-object v0, p0, Landroidx/window/embedding/EmbeddingAnimationParams$Builder;->animationBackground:Landroidx/window/embedding/EmbeddingAnimationBackground;

    .line 129
    sget-object v0, Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;->DEFAULT:Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;

    iput-object v0, p0, Landroidx/window/embedding/EmbeddingAnimationParams$Builder;->openAnimation:Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;

    .line 130
    iput-object v0, p0, Landroidx/window/embedding/EmbeddingAnimationParams$Builder;->closeAnimation:Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;

    .line 131
    iput-object v0, p0, Landroidx/window/embedding/EmbeddingAnimationParams$Builder;->changeAnimation:Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;

    return-void
.end method


# virtual methods
.method public final build()Landroidx/window/embedding/EmbeddingAnimationParams;
    .locals 4

    .line 183
    new-instance v0, Landroidx/window/embedding/EmbeddingAnimationParams;

    .line 184
    iget-object v1, p0, Landroidx/window/embedding/EmbeddingAnimationParams$Builder;->animationBackground:Landroidx/window/embedding/EmbeddingAnimationBackground;

    .line 185
    iget-object v2, p0, Landroidx/window/embedding/EmbeddingAnimationParams$Builder;->openAnimation:Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;

    .line 186
    iget-object v3, p0, Landroidx/window/embedding/EmbeddingAnimationParams$Builder;->closeAnimation:Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;

    .line 187
    iget-object p0, p0, Landroidx/window/embedding/EmbeddingAnimationParams$Builder;->changeAnimation:Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;

    .line 183
    invoke-direct {v0, v1, v2, v3, p0}, Landroidx/window/embedding/EmbeddingAnimationParams;-><init>(Landroidx/window/embedding/EmbeddingAnimationBackground;Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;)V

    return-object v0
.end method

.method public final setAnimationBackground(Landroidx/window/embedding/EmbeddingAnimationBackground;)Landroidx/window/embedding/EmbeddingAnimationParams$Builder;
    .locals 1

    const-string v0, "background"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    iput-object p1, p0, Landroidx/window/embedding/EmbeddingAnimationParams$Builder;->animationBackground:Landroidx/window/embedding/EmbeddingAnimationBackground;

    return-object p0
.end method

.method public final setChangeAnimation(Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;)Landroidx/window/embedding/EmbeddingAnimationParams$Builder;
    .locals 1

    const-string v0, "spec"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    iput-object p1, p0, Landroidx/window/embedding/EmbeddingAnimationParams$Builder;->changeAnimation:Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;

    return-object p0
.end method

.method public final setCloseAnimation(Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;)Landroidx/window/embedding/EmbeddingAnimationParams$Builder;
    .locals 1

    const-string v0, "spec"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    iput-object p1, p0, Landroidx/window/embedding/EmbeddingAnimationParams$Builder;->closeAnimation:Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;

    return-object p0
.end method

.method public final setOpenAnimation(Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;)Landroidx/window/embedding/EmbeddingAnimationParams$Builder;
    .locals 1

    const-string v0, "spec"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    iput-object p1, p0, Landroidx/window/embedding/EmbeddingAnimationParams$Builder;->openAnimation:Landroidx/window/embedding/EmbeddingAnimationParams$AnimationSpec;

    return-object p0
.end method
