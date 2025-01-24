.class public final Landroidx/window/embedding/SplitAttributes$Builder;
.super Ljava/lang/Object;
.source "SplitAttributes.kt"


# instance fields
.field private animationParams:Landroidx/window/embedding/EmbeddingAnimationParams;

.field private dividerAttributes:Landroidx/window/embedding/DividerAttributes;

.field private layoutDirection:Landroidx/window/embedding/SplitAttributes$LayoutDirection;

.field private splitType:Landroidx/window/embedding/SplitAttributes$SplitType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 415
    sget-object v0, Landroidx/window/embedding/SplitAttributes$SplitType;->SPLIT_TYPE_EQUAL:Landroidx/window/embedding/SplitAttributes$SplitType;

    iput-object v0, p0, Landroidx/window/embedding/SplitAttributes$Builder;->splitType:Landroidx/window/embedding/SplitAttributes$SplitType;

    .line 416
    sget-object v0, Landroidx/window/embedding/SplitAttributes$LayoutDirection;->LOCALE:Landroidx/window/embedding/SplitAttributes$LayoutDirection;

    iput-object v0, p0, Landroidx/window/embedding/SplitAttributes$Builder;->layoutDirection:Landroidx/window/embedding/SplitAttributes$LayoutDirection;

    .line 417
    new-instance v0, Landroidx/window/embedding/EmbeddingAnimationParams$Builder;

    invoke-direct {v0}, Landroidx/window/embedding/EmbeddingAnimationParams$Builder;-><init>()V

    invoke-virtual {v0}, Landroidx/window/embedding/EmbeddingAnimationParams$Builder;->build()Landroidx/window/embedding/EmbeddingAnimationParams;

    move-result-object v0

    iput-object v0, p0, Landroidx/window/embedding/SplitAttributes$Builder;->animationParams:Landroidx/window/embedding/EmbeddingAnimationParams;

    .line 418
    sget-object v0, Landroidx/window/embedding/DividerAttributes;->NO_DIVIDER:Landroidx/window/embedding/DividerAttributes;

    iput-object v0, p0, Landroidx/window/embedding/SplitAttributes$Builder;->dividerAttributes:Landroidx/window/embedding/DividerAttributes;

    return-void
.end method


# virtual methods
.method public final build()Landroidx/window/embedding/SplitAttributes;
    .locals 4

    .line 490
    new-instance v0, Landroidx/window/embedding/SplitAttributes;

    iget-object v1, p0, Landroidx/window/embedding/SplitAttributes$Builder;->splitType:Landroidx/window/embedding/SplitAttributes$SplitType;

    iget-object v2, p0, Landroidx/window/embedding/SplitAttributes$Builder;->layoutDirection:Landroidx/window/embedding/SplitAttributes$LayoutDirection;

    iget-object v3, p0, Landroidx/window/embedding/SplitAttributes$Builder;->animationParams:Landroidx/window/embedding/EmbeddingAnimationParams;

    iget-object p0, p0, Landroidx/window/embedding/SplitAttributes$Builder;->dividerAttributes:Landroidx/window/embedding/DividerAttributes;

    invoke-direct {v0, v1, v2, v3, p0}, Landroidx/window/embedding/SplitAttributes;-><init>(Landroidx/window/embedding/SplitAttributes$SplitType;Landroidx/window/embedding/SplitAttributes$LayoutDirection;Landroidx/window/embedding/EmbeddingAnimationParams;Landroidx/window/embedding/DividerAttributes;)V

    return-object v0
.end method

.method public final setAnimationParams(Landroidx/window/embedding/EmbeddingAnimationParams;)Landroidx/window/embedding/SplitAttributes$Builder;
    .locals 1

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 474
    iput-object p1, p0, Landroidx/window/embedding/SplitAttributes$Builder;->animationParams:Landroidx/window/embedding/EmbeddingAnimationParams;

    return-object p0
.end method

.method public final setDividerAttributes(Landroidx/window/embedding/DividerAttributes;)Landroidx/window/embedding/SplitAttributes$Builder;
    .locals 1

    const-string v0, "dividerAttributes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 480
    iput-object p1, p0, Landroidx/window/embedding/SplitAttributes$Builder;->dividerAttributes:Landroidx/window/embedding/DividerAttributes;

    return-object p0
.end method

.method public final setLayoutDirection(Landroidx/window/embedding/SplitAttributes$LayoutDirection;)Landroidx/window/embedding/SplitAttributes$Builder;
    .locals 1

    const-string v0, "layoutDirection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 449
    iput-object p1, p0, Landroidx/window/embedding/SplitAttributes$Builder;->layoutDirection:Landroidx/window/embedding/SplitAttributes$LayoutDirection;

    return-object p0
.end method

.method public final setSplitType(Landroidx/window/embedding/SplitAttributes$SplitType;)Landroidx/window/embedding/SplitAttributes$Builder;
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 437
    iput-object p1, p0, Landroidx/window/embedding/SplitAttributes$Builder;->splitType:Landroidx/window/embedding/SplitAttributes$SplitType;

    return-object p0
.end method
