.class Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate$1;
.super Lcom/google/android/material/appbar/AppBarLayout$Behavior$DragCallback;
.source "CollapsingToolbarDelegate.java"


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate;


# direct methods
.method constructor <init>(Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate$1;->this$0:Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate;

    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout$Behavior$DragCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public canDrag(Lcom/google/android/material/appbar/AppBarLayout;)Z
    .locals 0

    .line 246
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
