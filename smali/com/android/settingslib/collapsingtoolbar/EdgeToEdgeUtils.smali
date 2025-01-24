.class public abstract Lcom/android/settingslib/collapsingtoolbar/EdgeToEdgeUtils;
.super Ljava/lang/Object;
.source "EdgeToEdgeUtils.java"


# direct methods
.method public static synthetic $r8$lambda$X-sJs1jhCJ_AfAoM7l8bjCQAQBY(Landroidx/activity/ComponentActivity;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/settingslib/collapsingtoolbar/EdgeToEdgeUtils;->lambda$enable$0(Landroidx/activity/ComponentActivity;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method public static enable(Landroidx/activity/ComponentActivity;)V
    .locals 2

    .line 44
    invoke-static {p0}, Landroidx/activity/EdgeToEdge;->enable(Landroidx/activity/ComponentActivity;)V

    const v0, 0x1020002

    .line 46
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/settingslib/collapsingtoolbar/EdgeToEdgeUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settingslib/collapsingtoolbar/EdgeToEdgeUtils$$ExternalSyntheticLambda0;-><init>(Landroidx/activity/ComponentActivity;)V

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    return-void
.end method

.method private static synthetic lambda$enable$0(Landroidx/activity/ComponentActivity;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 2

    .line 49
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v0

    .line 50
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v1

    or-int/2addr v0, v1

    .line 51
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->displayCutout()I

    move-result v1

    or-int/2addr v0, v1

    .line 48
    invoke-virtual {p2, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p2

    .line 52
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    .line 53
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->statusBars()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Insets;->top:I

    .line 55
    iget v0, p2, Landroidx/core/graphics/Insets;->left:I

    iget v1, p2, Landroidx/core/graphics/Insets;->right:I

    iget p2, p2, Landroidx/core/graphics/Insets;->bottom:I

    invoke-virtual {p1, v0, p0, v1, p2}, Landroid/view/View;->setPadding(IIII)V

    .line 59
    sget-object p0, Landroidx/core/view/WindowInsetsCompat;->CONSUMED:Landroidx/core/view/WindowInsetsCompat;

    return-object p0
.end method
