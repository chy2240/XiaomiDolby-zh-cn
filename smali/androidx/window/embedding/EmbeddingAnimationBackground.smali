.class public abstract Landroidx/window/embedding/EmbeddingAnimationBackground;
.super Ljava/lang/Object;
.source "EmbeddingAnimationBackground.kt"


# static fields
.field public static final Companion:Landroidx/window/embedding/EmbeddingAnimationBackground$Companion;

.field public static final DEFAULT:Landroidx/window/embedding/EmbeddingAnimationBackground;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/window/embedding/EmbeddingAnimationBackground$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/window/embedding/EmbeddingAnimationBackground$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/window/embedding/EmbeddingAnimationBackground;->Companion:Landroidx/window/embedding/EmbeddingAnimationBackground$Companion;

    .line 87
    new-instance v0, Landroidx/window/embedding/EmbeddingAnimationBackground$DefaultBackground;

    invoke-direct {v0}, Landroidx/window/embedding/EmbeddingAnimationBackground$DefaultBackground;-><init>()V

    sput-object v0, Landroidx/window/embedding/EmbeddingAnimationBackground;->DEFAULT:Landroidx/window/embedding/EmbeddingAnimationBackground;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/window/embedding/EmbeddingAnimationBackground;-><init>()V

    return-void
.end method
