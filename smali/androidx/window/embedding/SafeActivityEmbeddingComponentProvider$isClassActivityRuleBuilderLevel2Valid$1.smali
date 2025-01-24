.class final Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassActivityRuleBuilderLevel2Valid$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SafeActivityEmbeddingComponentProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# static fields
.field public static final INSTANCE:Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassActivityRuleBuilderLevel2Valid$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassActivityRuleBuilderLevel2Valid$1;

    invoke-direct {v0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassActivityRuleBuilderLevel2Valid$1;-><init>()V

    sput-object v0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassActivityRuleBuilderLevel2Valid$1;->INSTANCE:Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassActivityRuleBuilderLevel2Valid$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Boolean;
    .locals 5

    .line 524
    const-class p0, Landroidx/window/extensions/embedding/ActivityRule$Builder;

    const/4 v0, 0x2

    .line 527
    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Landroidx/window/extensions/core/util/function/Predicate;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 528
    const-class v1, Landroidx/window/extensions/core/util/function/Predicate;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 526
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 530
    new-array v1, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v1, v2

    const-string v4, "setTag"

    invoke-virtual {p0, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 531
    sget-object v1, Landroidx/window/reflection/ReflectionUtils;->INSTANCE:Landroidx/window/reflection/ReflectionUtils;

    const-string v4, "activityRuleBuilderConstructor"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroidx/window/reflection/ReflectionUtils;->isPublic$window_release(Ljava/lang/reflect/Constructor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 532
    const-string v0, "setTagMethod"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Landroidx/window/reflection/ReflectionUtils;->isPublic$window_release(Ljava/lang/reflect/Method;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 533
    const-class v0, Landroidx/window/extensions/embedding/ActivityRule$Builder;

    invoke-virtual {v1, p0, v0}, Landroidx/window/reflection/ReflectionUtils;->doesReturn$window_release(Ljava/lang/reflect/Method;Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    move v2, v3

    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 523
    invoke-virtual {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isClassActivityRuleBuilderLevel2Valid$1;->invoke()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
