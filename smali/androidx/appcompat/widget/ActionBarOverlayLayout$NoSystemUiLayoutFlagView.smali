.class final Landroidx/appcompat/widget/ActionBarOverlayLayout$NoSystemUiLayoutFlagView;
.super Landroid/view/View;
.source "ActionBarOverlayLayout.java"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 168
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 169
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method public getWindowSystemUiVisibility()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method
