.class public final Landroidx/compose/ui/window/DialogWrapper$3;
.super Landroidx/core/view/WindowInsetsAnimationCompat$Callback;
.source "AndroidDialog.android.kt"


# instance fields
.field final synthetic $frameLayout:Landroid/widget/FrameLayout;

.field final synthetic this$0:Landroidx/compose/ui/window/DialogWrapper;


# direct methods
.method constructor <init>(Landroidx/compose/ui/window/DialogWrapper;Landroid/widget/FrameLayout;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/window/DialogWrapper$3;->this$0:Landroidx/compose/ui/window/DialogWrapper;

    iput-object p2, p0, Landroidx/compose/ui/window/DialogWrapper$3;->$frameLayout:Landroid/widget/FrameLayout;

    const/4 p1, 0x1

    .line 351
    invoke-direct {p0, p1}, Landroidx/core/view/WindowInsetsAnimationCompat$Callback;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onProgress(Landroidx/core/view/WindowInsetsCompat;Ljava/util/List;)Landroidx/core/view/WindowInsetsCompat;
    .locals 4

    .line 356
    iget-object p2, p0, Landroidx/compose/ui/window/DialogWrapper$3;->this$0:Landroidx/compose/ui/window/DialogWrapper;

    invoke-static {p2}, Landroidx/compose/ui/window/DialogWrapper;->access$getProperties$p(Landroidx/compose/ui/window/DialogWrapper;)Landroidx/compose/ui/window/DialogProperties;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/compose/ui/window/DialogProperties;->getDecorFitsSystemWindows()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 359
    :cond_0
    iget-object p2, p0, Landroidx/compose/ui/window/DialogWrapper$3;->this$0:Landroidx/compose/ui/window/DialogWrapper;

    invoke-static {p2}, Landroidx/compose/ui/window/DialogWrapper;->access$getDialogLayout$p(Landroidx/compose/ui/window/DialogWrapper;)Landroidx/compose/ui/window/DialogLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLeft()I

    move-result p2

    const/4 v0, 0x0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 360
    iget-object v1, p0, Landroidx/compose/ui/window/DialogWrapper$3;->this$0:Landroidx/compose/ui/window/DialogWrapper;

    invoke-static {v1}, Landroidx/compose/ui/window/DialogWrapper;->access$getDialogLayout$p(Landroidx/compose/ui/window/DialogWrapper;)Landroidx/compose/ui/window/DialogLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 361
    iget-object v2, p0, Landroidx/compose/ui/window/DialogWrapper$3;->$frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    iget-object v3, p0, Landroidx/compose/ui/window/DialogWrapper$3;->this$0:Landroidx/compose/ui/window/DialogWrapper;

    invoke-static {v3}, Landroidx/compose/ui/window/DialogWrapper;->access$getDialogLayout$p(Landroidx/compose/ui/window/DialogWrapper;)Landroidx/compose/ui/window/DialogLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 362
    iget-object v3, p0, Landroidx/compose/ui/window/DialogWrapper$3;->$frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    iget-object p0, p0, Landroidx/compose/ui/window/DialogWrapper$3;->this$0:Landroidx/compose/ui/window/DialogWrapper;

    invoke-static {p0}, Landroidx/compose/ui/window/DialogWrapper;->access$getDialogLayout$p(Landroidx/compose/ui/window/DialogWrapper;)Landroidx/compose/ui/window/DialogLayout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBottom()I

    move-result p0

    sub-int/2addr v3, p0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result p0

    if-nez p2, :cond_1

    if-nez v1, :cond_1

    if-nez v2, :cond_1

    if-nez p0, :cond_1

    goto :goto_0

    .line 380
    :cond_1
    invoke-virtual {p1, p2, v1, v2, p0}, Landroidx/core/view/WindowInsetsCompat;->inset(IIII)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public onStart(Landroidx/core/view/WindowInsetsAnimationCompat;Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;)Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;
    .locals 4

    .line 356
    iget-object p1, p0, Landroidx/compose/ui/window/DialogWrapper$3;->this$0:Landroidx/compose/ui/window/DialogWrapper;

    invoke-static {p1}, Landroidx/compose/ui/window/DialogWrapper;->access$getProperties$p(Landroidx/compose/ui/window/DialogWrapper;)Landroidx/compose/ui/window/DialogProperties;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/ui/window/DialogProperties;->getDecorFitsSystemWindows()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 359
    :cond_0
    iget-object p1, p0, Landroidx/compose/ui/window/DialogWrapper$3;->this$0:Landroidx/compose/ui/window/DialogWrapper;

    invoke-static {p1}, Landroidx/compose/ui/window/DialogWrapper;->access$getDialogLayout$p(Landroidx/compose/ui/window/DialogWrapper;)Landroidx/compose/ui/window/DialogLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLeft()I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 360
    iget-object v1, p0, Landroidx/compose/ui/window/DialogWrapper$3;->this$0:Landroidx/compose/ui/window/DialogWrapper;

    invoke-static {v1}, Landroidx/compose/ui/window/DialogWrapper;->access$getDialogLayout$p(Landroidx/compose/ui/window/DialogWrapper;)Landroidx/compose/ui/window/DialogLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 361
    iget-object v2, p0, Landroidx/compose/ui/window/DialogWrapper$3;->$frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    iget-object v3, p0, Landroidx/compose/ui/window/DialogWrapper$3;->this$0:Landroidx/compose/ui/window/DialogWrapper;

    invoke-static {v3}, Landroidx/compose/ui/window/DialogWrapper;->access$getDialogLayout$p(Landroidx/compose/ui/window/DialogWrapper;)Landroidx/compose/ui/window/DialogLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 362
    iget-object v3, p0, Landroidx/compose/ui/window/DialogWrapper$3;->$frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    iget-object p0, p0, Landroidx/compose/ui/window/DialogWrapper$3;->this$0:Landroidx/compose/ui/window/DialogWrapper;

    invoke-static {p0}, Landroidx/compose/ui/window/DialogWrapper;->access$getDialogLayout$p(Landroidx/compose/ui/window/DialogWrapper;)Landroidx/compose/ui/window/DialogLayout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBottom()I

    move-result p0

    sub-int/2addr v3, p0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result p0

    if-nez p1, :cond_1

    if-nez v1, :cond_1

    if-nez v2, :cond_1

    if-nez p0, :cond_1

    goto :goto_0

    .line 374
    :cond_1
    invoke-static {p1, v1, v2, p0}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;->inset(Landroidx/core/graphics/Insets;)Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;

    move-result-object p2

    :goto_0
    return-object p2
.end method
