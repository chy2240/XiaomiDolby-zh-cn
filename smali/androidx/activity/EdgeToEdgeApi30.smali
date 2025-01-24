.class final Landroidx/activity/EdgeToEdgeApi30;
.super Landroidx/activity/EdgeToEdgeApi29;
.source "EdgeToEdge.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 335
    invoke-direct {p0}, Landroidx/activity/EdgeToEdgeApi29;-><init>()V

    return-void
.end method


# virtual methods
.method public adjustLayoutInDisplayCutoutMode(Landroid/view/Window;)V
    .locals 0

    const-string p0, "window"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 339
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    const/4 p1, 0x3

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    return-void
.end method
