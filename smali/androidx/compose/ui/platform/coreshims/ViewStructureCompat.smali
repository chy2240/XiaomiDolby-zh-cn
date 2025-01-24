.class public Landroidx/compose/ui/platform/coreshims/ViewStructureCompat;
.super Ljava/lang/Object;
.source "ViewStructureCompat.java"


# instance fields
.field private final mWrappedObj:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Landroid/view/ViewStructure;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Landroidx/compose/ui/platform/coreshims/ViewStructureCompat;->mWrappedObj:Ljava/lang/Object;

    return-void
.end method

.method public static toViewStructureCompat(Landroid/view/ViewStructure;)Landroidx/compose/ui/platform/coreshims/ViewStructureCompat;
    .locals 1

    .line 54
    new-instance v0, Landroidx/compose/ui/platform/coreshims/ViewStructureCompat;

    invoke-direct {v0, p0}, Landroidx/compose/ui/platform/coreshims/ViewStructureCompat;-><init>(Landroid/view/ViewStructure;)V

    return-object v0
.end method


# virtual methods
.method public getExtras()Landroid/os/Bundle;
    .locals 0

    .line 206
    iget-object p0, p0, Landroidx/compose/ui/platform/coreshims/ViewStructureCompat;->mWrappedObj:Ljava/lang/Object;

    check-cast p0, Landroid/view/ViewStructure;

    invoke-static {p0}, Landroidx/compose/ui/platform/coreshims/ViewStructureCompat$Api23Impl;->getExtras(Landroid/view/ViewStructure;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 0

    .line 126
    iget-object p0, p0, Landroidx/compose/ui/platform/coreshims/ViewStructureCompat;->mWrappedObj:Ljava/lang/Object;

    check-cast p0, Landroid/view/ViewStructure;

    invoke-static {p0, p1}, Landroidx/compose/ui/platform/coreshims/ViewStructureCompat$Api23Impl;->setClassName(Landroid/view/ViewStructure;Ljava/lang/String;)V

    return-void
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 0

    .line 163
    iget-object p0, p0, Landroidx/compose/ui/platform/coreshims/ViewStructureCompat;->mWrappedObj:Ljava/lang/Object;

    check-cast p0, Landroid/view/ViewStructure;

    invoke-static {p0, p1}, Landroidx/compose/ui/platform/coreshims/ViewStructureCompat$Api23Impl;->setContentDescription(Landroid/view/ViewStructure;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setDimens(IIIIII)V
    .locals 7

    .line 187
    iget-object p0, p0, Landroidx/compose/ui/platform/coreshims/ViewStructureCompat;->mWrappedObj:Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Landroid/view/ViewStructure;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/platform/coreshims/ViewStructureCompat$Api23Impl;->setDimens(Landroid/view/ViewStructure;IIIIII)V

    return-void
.end method

.method public setId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 93
    iget-object p0, p0, Landroidx/compose/ui/platform/coreshims/ViewStructureCompat;->mWrappedObj:Ljava/lang/Object;

    check-cast p0, Landroid/view/ViewStructure;

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/ui/platform/coreshims/ViewStructureCompat$Api23Impl;->setId(Landroid/view/ViewStructure;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 110
    iget-object p0, p0, Landroidx/compose/ui/platform/coreshims/ViewStructureCompat;->mWrappedObj:Ljava/lang/Object;

    check-cast p0, Landroid/view/ViewStructure;

    invoke-static {p0, p1}, Landroidx/compose/ui/platform/coreshims/ViewStructureCompat$Api23Impl;->setText(Landroid/view/ViewStructure;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTextStyle(FIII)V
    .locals 0

    .line 147
    iget-object p0, p0, Landroidx/compose/ui/platform/coreshims/ViewStructureCompat;->mWrappedObj:Ljava/lang/Object;

    check-cast p0, Landroid/view/ViewStructure;

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/ui/platform/coreshims/ViewStructureCompat$Api23Impl;->setTextStyle(Landroid/view/ViewStructure;FIII)V

    return-void
.end method

.method public toViewStructure()Landroid/view/ViewStructure;
    .locals 0

    .line 69
    iget-object p0, p0, Landroidx/compose/ui/platform/coreshims/ViewStructureCompat;->mWrappedObj:Ljava/lang/Object;

    check-cast p0, Landroid/view/ViewStructure;

    return-object p0
.end method
