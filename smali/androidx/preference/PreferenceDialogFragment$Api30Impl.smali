.class abstract Landroidx/preference/PreferenceDialogFragment$Api30Impl;
.super Ljava/lang/Object;
.source "PreferenceDialogFragment.java"


# direct methods
.method static showIme(Landroid/view/Window;)V
    .locals 1

    .line 330
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object p0

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    invoke-interface {p0, v0}, Landroid/view/WindowInsetsController;->show(I)V

    return-void
.end method
