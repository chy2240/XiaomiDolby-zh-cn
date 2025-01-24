.class public Lcom/google/android/material/motion/MaterialBottomContainerBackHelper;
.super Lcom/google/android/material/motion/MaterialBackAnimationHelper;
.source "MaterialBottomContainerBackHelper.java"


# instance fields
.field private final maxScaleXDistance:F

.field private final maxScaleYDistance:F


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 51
    invoke-direct {p0, p1}, Lcom/google/android/material/motion/MaterialBackAnimationHelper;-><init>(Landroid/view/View;)V

    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 54
    sget v0, Lcom/google/android/material/R$dimen;->m3_back_progress_bottom_container_max_scale_x_distance:I

    .line 55
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/google/android/material/motion/MaterialBottomContainerBackHelper;->maxScaleXDistance:F

    .line 56
    sget v0, Lcom/google/android/material/R$dimen;->m3_back_progress_bottom_container_max_scale_y_distance:I

    .line 57
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/google/android/material/motion/MaterialBottomContainerBackHelper;->maxScaleYDistance:F

    return-void
.end method


# virtual methods
.method public updateBackProgress(F)V
    .locals 6

    .line 74
    invoke-virtual {p0, p1}, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->interpolateProgress(F)F

    move-result p1

    .line 76
    iget-object v0, p0, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 77
    iget-object v1, p0, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    cmpg-float v3, v0, v2

    if-lez v3, :cond_2

    cmpg-float v3, v1, v2

    if-gtz v3, :cond_0

    goto :goto_2

    .line 82
    :cond_0
    iget v3, p0, Lcom/google/android/material/motion/MaterialBottomContainerBackHelper;->maxScaleXDistance:F

    div-float/2addr v3, v0

    .line 83
    iget v0, p0, Lcom/google/android/material/motion/MaterialBottomContainerBackHelper;->maxScaleYDistance:F

    div-float/2addr v0, v1

    .line 84
    invoke-static {v2, v3, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v3

    .line 85
    invoke-static {v2, v0, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v3, v0, v3

    sub-float p1, v0, p1

    .line 88
    iget-object v4, p0, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setScaleX(F)V

    .line 89
    iget-object v4, p0, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setPivotY(F)V

    .line 90
    iget-object v1, p0, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setScaleY(F)V

    .line 92
    iget-object p0, p0, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->view:Landroid/view/View;

    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 93
    check-cast p0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 94
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 95
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 97
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setPivotY(F)V

    cmpl-float v5, p1, v2

    if-eqz v5, :cond_1

    div-float v5, v3, p1

    goto :goto_1

    :cond_1
    move v5, v0

    .line 98
    :goto_1
    invoke-virtual {v4, v5}, Landroid/view/View;->setScaleY(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method
