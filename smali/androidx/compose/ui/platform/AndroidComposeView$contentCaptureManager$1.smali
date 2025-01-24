.class final synthetic Landroidx/compose/ui/platform/AndroidComposeView$contentCaptureManager$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "AndroidComposeView.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 7

    .line 0
    const-string v5, "getContentCaptureSessionCompat(Landroid/view/View;)Landroidx/compose/ui/platform/coreshims/ContentCaptureSessionCompat;"

    const/4 v6, 0x1

    const/4 v1, 0x0

    const-class v3, Landroidx/compose/ui/platform/AndroidComposeView_androidKt;

    const-string v4, "getContentCaptureSessionCompat"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/compose/ui/platform/coreshims/ContentCaptureSessionCompat;
    .locals 0

    .line 436
    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    invoke-static {p0}, Landroidx/compose/ui/platform/AndroidComposeView_androidKt;->access$getContentCaptureSessionCompat(Landroid/view/View;)Landroidx/compose/ui/platform/coreshims/ContentCaptureSessionCompat;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 436
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView$contentCaptureManager$1;->invoke()Landroidx/compose/ui/platform/coreshims/ContentCaptureSessionCompat;

    move-result-object p0

    return-object p0
.end method
