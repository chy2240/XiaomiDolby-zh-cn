.class final Lkotlinx/coroutines/CoroutineDispatcher$Key$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CoroutineDispatcher.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Lkotlinx/coroutines/CoroutineDispatcher$Key$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lkotlinx/coroutines/CoroutineDispatcher$Key$1;

    invoke-direct {v0}, Lkotlinx/coroutines/CoroutineDispatcher$Key$1;-><init>()V

    sput-object v0, Lkotlinx/coroutines/CoroutineDispatcher$Key$1;->INSTANCE:Lkotlinx/coroutines/CoroutineDispatcher$Key$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 38
    check-cast p1, Lkotlin/coroutines/CoroutineContext$Element;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/CoroutineDispatcher$Key$1;->invoke(Lkotlin/coroutines/CoroutineContext$Element;)Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlin/coroutines/CoroutineContext$Element;)Lkotlinx/coroutines/CoroutineDispatcher;
    .locals 0

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    instance-of p0, p1, Lkotlinx/coroutines/CoroutineDispatcher;

    if-eqz p0, :cond_0

    check-cast p1, Lkotlinx/coroutines/CoroutineDispatcher;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
