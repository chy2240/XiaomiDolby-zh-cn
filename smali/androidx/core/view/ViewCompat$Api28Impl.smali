.class abstract Landroidx/core/view/ViewCompat$Api28Impl;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# direct methods
.method static getAccessibilityPaneTitle(Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 0

    .line 5653
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityPaneTitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static isAccessibilityHeading(Landroid/view/View;)Z
    .locals 0

    .line 5666
    invoke-virtual {p0}, Landroid/view/View;->isAccessibilityHeading()Z

    move-result p0

    return p0
.end method

.method static isScreenReaderFocusable(Landroid/view/View;)Z
    .locals 0

    .line 5670
    invoke-virtual {p0}, Landroid/view/View;->isScreenReaderFocusable()Z

    move-result p0

    return p0
.end method

.method static setAccessibilityHeading(Landroid/view/View;Z)V
    .locals 0

    .line 5662
    invoke-virtual {p0, p1}, Landroid/view/View;->setAccessibilityHeading(Z)V

    return-void
.end method

.method static setAccessibilityPaneTitle(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 0

    .line 5658
    invoke-virtual {p0, p1}, Landroid/view/View;->setAccessibilityPaneTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static setScreenReaderFocusable(Landroid/view/View;Z)V
    .locals 0

    .line 5674
    invoke-virtual {p0, p1}, Landroid/view/View;->setScreenReaderFocusable(Z)V

    return-void
.end method
