.class final Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodSetEmbeddingRulesValid$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SafeActivityEmbeddingComponentProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;


# direct methods
.method constructor <init>(Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodSetEmbeddingRulesValid$1;->this$0:Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Boolean;
    .locals 3

    .line 313
    iget-object p0, p0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodSetEmbeddingRulesValid$1;->this$0:Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;

    invoke-static {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->access$getActivityEmbeddingComponentClass(Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;)Ljava/lang/Class;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/util/Set;

    aput-object v2, v0, v1

    const-string v1, "setEmbeddingRules"

    invoke-virtual {p0, v1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 314
    sget-object v0, Landroidx/window/reflection/ReflectionUtils;->INSTANCE:Landroidx/window/reflection/ReflectionUtils;

    const-string v1, "setEmbeddingRulesMethod"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Landroidx/window/reflection/ReflectionUtils;->isPublic$window_release(Ljava/lang/reflect/Method;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 311
    invoke-virtual {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodSetEmbeddingRulesValid$1;->invoke()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
