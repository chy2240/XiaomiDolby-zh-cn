.class public final Landroidx/core/view/WindowInsetsControllerCompat;
.super Ljava/lang/Object;
.source "WindowInsetsControllerCompat.java"


# instance fields
.field private final mImpl:Landroidx/core/view/WindowInsetsControllerCompat$Impl;


# direct methods
.method public constructor <init>(Landroid/view/Window;Landroid/view/View;)V
    .locals 1

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    new-instance v0, Landroidx/core/view/SoftwareKeyboardControllerCompat;

    invoke-direct {v0, p2}, Landroidx/core/view/SoftwareKeyboardControllerCompat;-><init>(Landroid/view/View;)V

    .line 131
    new-instance p2, Landroidx/core/view/WindowInsetsControllerCompat$Impl35;

    invoke-direct {p2, p1, p0, v0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl35;-><init>(Landroid/view/Window;Landroidx/core/view/WindowInsetsControllerCompat;Landroidx/core/view/SoftwareKeyboardControllerCompat;)V

    iput-object p2, p0, Landroidx/core/view/WindowInsetsControllerCompat;->mImpl:Landroidx/core/view/WindowInsetsControllerCompat$Impl;

    return-void
.end method

.method private constructor <init>(Landroid/view/WindowInsetsController;)V
    .locals 2

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v0, Landroidx/core/view/WindowInsetsControllerCompat$Impl35;

    new-instance v1, Landroidx/core/view/SoftwareKeyboardControllerCompat;

    invoke-direct {v1, p1}, Landroidx/core/view/SoftwareKeyboardControllerCompat;-><init>(Landroid/view/WindowInsetsController;)V

    invoke-direct {v0, p1, p0, v1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl35;-><init>(Landroid/view/WindowInsetsController;Landroidx/core/view/WindowInsetsControllerCompat;Landroidx/core/view/SoftwareKeyboardControllerCompat;)V

    iput-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat;->mImpl:Landroidx/core/view/WindowInsetsControllerCompat$Impl;

    return-void
.end method

.method public static toWindowInsetsControllerCompat(Landroid/view/WindowInsetsController;)Landroidx/core/view/WindowInsetsControllerCompat;
    .locals 1

    .line 159
    new-instance v0, Landroidx/core/view/WindowInsetsControllerCompat;

    invoke-direct {v0, p0}, Landroidx/core/view/WindowInsetsControllerCompat;-><init>(Landroid/view/WindowInsetsController;)V

    return-object v0
.end method


# virtual methods
.method public setAppearanceLightNavigationBars(Z)V
    .locals 0

    .line 265
    iget-object p0, p0, Landroidx/core/view/WindowInsetsControllerCompat;->mImpl:Landroidx/core/view/WindowInsetsControllerCompat$Impl;

    invoke-virtual {p0, p1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl;->setAppearanceLightNavigationBars(Z)V

    return-void
.end method

.method public setAppearanceLightStatusBars(Z)V
    .locals 0

    .line 231
    iget-object p0, p0, Landroidx/core/view/WindowInsetsControllerCompat;->mImpl:Landroidx/core/view/WindowInsetsControllerCompat$Impl;

    invoke-virtual {p0, p1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl;->setAppearanceLightStatusBars(Z)V

    return-void
.end method

.method public show(I)V
    .locals 0

    .line 183
    iget-object p0, p0, Landroidx/core/view/WindowInsetsControllerCompat;->mImpl:Landroidx/core/view/WindowInsetsControllerCompat$Impl;

    invoke-virtual {p0, p1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl;->show(I)V

    return-void
.end method
