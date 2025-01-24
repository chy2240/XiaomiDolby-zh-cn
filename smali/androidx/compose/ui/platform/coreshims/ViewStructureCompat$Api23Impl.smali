.class abstract Landroidx/compose/ui/platform/coreshims/ViewStructureCompat$Api23Impl;
.super Ljava/lang/Object;
.source "ViewStructureCompat.java"


# direct methods
.method static getExtras(Landroid/view/ViewStructure;)Landroid/os/Bundle;
    .locals 0

    .line 245
    invoke-virtual {p0}, Landroid/view/ViewStructure;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static setClassName(Landroid/view/ViewStructure;Ljava/lang/String;)V
    .locals 0

    .line 232
    invoke-virtual {p0, p1}, Landroid/view/ViewStructure;->setClassName(Ljava/lang/String;)V

    return-void
.end method

.method static setContentDescription(Landroid/view/ViewStructure;Ljava/lang/CharSequence;)V
    .locals 0

    .line 236
    invoke-virtual {p0, p1}, Landroid/view/ViewStructure;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static setDimens(Landroid/view/ViewStructure;IIIIII)V
    .locals 0

    .line 224
    invoke-virtual/range {p0 .. p6}, Landroid/view/ViewStructure;->setDimens(IIIIII)V

    return-void
.end method

.method static setId(Landroid/view/ViewStructure;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 219
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/ViewStructure;->setId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static setText(Landroid/view/ViewStructure;Ljava/lang/CharSequence;)V
    .locals 0

    .line 228
    invoke-virtual {p0, p1}, Landroid/view/ViewStructure;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static setTextStyle(Landroid/view/ViewStructure;FIII)V
    .locals 0

    .line 241
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/ViewStructure;->setTextStyle(FIII)V

    return-void
.end method
