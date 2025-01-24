.class final Landroidx/compose/ui/platform/AndroidComposeViewTranslationCallback;
.super Ljava/lang/Object;
.source "AndroidComposeView.android.kt"

# interfaces
.implements Landroid/view/translation/ViewTranslationCallback;


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/platform/AndroidComposeViewTranslationCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/ui/platform/AndroidComposeViewTranslationCallback;

    invoke-direct {v0}, Landroidx/compose/ui/platform/AndroidComposeViewTranslationCallback;-><init>()V

    sput-object v0, Landroidx/compose/ui/platform/AndroidComposeViewTranslationCallback;->INSTANCE:Landroidx/compose/ui/platform/AndroidComposeViewTranslationCallback;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2537
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClearTranslation(Landroid/view/View;)Z
    .locals 0

    .line 2552
    const-string p0, "null cannot be cast to non-null type androidx.compose.ui.platform.AndroidComposeView"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 2553
    invoke-virtual {p1}, Landroidx/compose/ui/platform/AndroidComposeView;->getContentCaptureManager$ui_release()Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->onClearTranslation$ui_release()V

    const/4 p0, 0x1

    return p0
.end method

.method public onHideTranslation(Landroid/view/View;)Z
    .locals 0

    .line 2546
    const-string p0, "null cannot be cast to non-null type androidx.compose.ui.platform.AndroidComposeView"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 2547
    invoke-virtual {p1}, Landroidx/compose/ui/platform/AndroidComposeView;->getContentCaptureManager$ui_release()Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->onHideTranslation$ui_release()V

    const/4 p0, 0x1

    return p0
.end method

.method public onShowTranslation(Landroid/view/View;)Z
    .locals 0

    .line 2540
    const-string p0, "null cannot be cast to non-null type androidx.compose.ui.platform.AndroidComposeView"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 2541
    invoke-virtual {p1}, Landroidx/compose/ui/platform/AndroidComposeView;->getContentCaptureManager$ui_release()Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->onShowTranslation$ui_release()V

    const/4 p0, 0x1

    return p0
.end method
