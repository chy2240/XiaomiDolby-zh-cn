.class final Landroidx/activity/ComponentActivity$onBackPressedDispatcher$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ComponentActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Landroidx/activity/ComponentActivity;


# direct methods
.method public static synthetic $r8$lambda$7nDo5shEc-znL0-0m1RgMrbFSRc(Landroidx/activity/ComponentActivity;Landroidx/activity/OnBackPressedDispatcher;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/activity/ComponentActivity$onBackPressedDispatcher$2;->invoke$lambda$2$lambda$1(Landroidx/activity/ComponentActivity;Landroidx/activity/OnBackPressedDispatcher;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CHhhchKgxv4troYgPiLxbYJzGns(Landroidx/activity/ComponentActivity;)V
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/activity/ComponentActivity$onBackPressedDispatcher$2;->invoke$lambda$0(Landroidx/activity/ComponentActivity;)V

    return-void
.end method

.method constructor <init>(Landroidx/activity/ComponentActivity;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/activity/ComponentActivity$onBackPressedDispatcher$2;->this$0:Landroidx/activity/ComponentActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda$0(Landroidx/activity/ComponentActivity;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 603
    :try_start_0
    invoke-static {p0}, Landroidx/activity/ComponentActivity;->access$onBackPressed$s1027565324(Landroidx/activity/ComponentActivity;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 610
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 611
    const-string v1, "Attempt to invoke virtual method \'android.os.Handler android.app.FragmentHostCallback.getHandler()\' on a null object reference"

    .line 610
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 615
    :cond_0
    throw p0

    :catch_1
    move-exception p0

    .line 605
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Can not perform this action after onSaveInstanceState"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    .line 606
    :cond_1
    throw p0
.end method

.method private static final invoke$lambda$2$lambda$1(Landroidx/activity/ComponentActivity;Landroidx/activity/OnBackPressedDispatcher;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$dispatcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 623
    invoke-static {p0, p1}, Landroidx/activity/ComponentActivity;->access$addObserverForBackInvoker(Landroidx/activity/ComponentActivity;Landroidx/activity/OnBackPressedDispatcher;)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/activity/OnBackPressedDispatcher;
    .locals 3

    .line 598
    new-instance v0, Landroidx/activity/OnBackPressedDispatcher;

    .line 619
    iget-object v1, p0, Landroidx/activity/ComponentActivity$onBackPressedDispatcher$2;->this$0:Landroidx/activity/ComponentActivity;

    new-instance v2, Landroidx/activity/ComponentActivity$onBackPressedDispatcher$2$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Landroidx/activity/ComponentActivity$onBackPressedDispatcher$2$$ExternalSyntheticLambda0;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 598
    invoke-direct {v0, v2}, Landroidx/activity/OnBackPressedDispatcher;-><init>(Ljava/lang/Runnable;)V

    .line 619
    iget-object p0, p0, Landroidx/activity/ComponentActivity$onBackPressedDispatcher$2;->this$0:Landroidx/activity/ComponentActivity;

    .line 621
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 622
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Landroidx/activity/ComponentActivity$onBackPressedDispatcher$2$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Landroidx/activity/ComponentActivity$onBackPressedDispatcher$2$$ExternalSyntheticLambda1;-><init>(Landroidx/activity/ComponentActivity;Landroidx/activity/OnBackPressedDispatcher;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 626
    :cond_0
    invoke-static {p0, v0}, Landroidx/activity/ComponentActivity;->access$addObserverForBackInvoker(Landroidx/activity/ComponentActivity;Landroidx/activity/OnBackPressedDispatcher;)V

    :goto_0
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 597
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity$onBackPressedDispatcher$2;->invoke()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object p0

    return-object p0
.end method
