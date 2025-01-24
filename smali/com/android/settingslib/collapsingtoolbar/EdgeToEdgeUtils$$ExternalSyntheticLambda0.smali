.class public final synthetic Lcom/android/settingslib/collapsingtoolbar/EdgeToEdgeUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic f$0:Landroidx/activity/ComponentActivity;


# direct methods
.method public synthetic constructor <init>(Landroidx/activity/ComponentActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/collapsingtoolbar/EdgeToEdgeUtils$$ExternalSyntheticLambda0;->f$0:Landroidx/activity/ComponentActivity;

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settingslib/collapsingtoolbar/EdgeToEdgeUtils$$ExternalSyntheticLambda0;->f$0:Landroidx/activity/ComponentActivity;

    invoke-static {p0, p1, p2}, Lcom/android/settingslib/collapsingtoolbar/EdgeToEdgeUtils;->$r8$lambda$X-sJs1jhCJ_AfAoM7l8bjCQAQBY(Landroidx/activity/ComponentActivity;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method
