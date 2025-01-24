.class public Lcom/google/android/material/motion/MaterialSideContainerBackHelper;
.super Lcom/google/android/material/motion/MaterialBackAnimationHelper;
.source "MaterialSideContainerBackHelper.java"


# instance fields
.field private final maxScaleXDistanceGrow:F

.field private final maxScaleXDistanceShrink:F

.field private final maxScaleYDistance:F


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 59
    invoke-direct {p0, p1}, Lcom/google/android/material/motion/MaterialBackAnimationHelper;-><init>(Landroid/view/View;)V

    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 62
    sget v0, Lcom/google/android/material/R$dimen;->m3_back_progress_side_container_max_scale_x_distance_shrink:I

    .line 63
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/google/android/material/motion/MaterialSideContainerBackHelper;->maxScaleXDistanceShrink:F

    .line 64
    sget v0, Lcom/google/android/material/R$dimen;->m3_back_progress_side_container_max_scale_x_distance_grow:I

    .line 65
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/google/android/material/motion/MaterialSideContainerBackHelper;->maxScaleXDistanceGrow:F

    .line 66
    sget v0, Lcom/google/android/material/R$dimen;->m3_back_progress_side_container_max_scale_y_distance:I

    .line 67
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/google/android/material/motion/MaterialSideContainerBackHelper;->maxScaleYDistance:F

    return-void
.end method

.method private checkAbsoluteGravity(II)Z
    .locals 0

    .line 182
    iget-object p0, p0, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->view:Landroid/view/View;

    .line 183
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p0

    invoke-static {p1, p0}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result p0

    and-int/2addr p0, p2

    if-ne p0, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public updateBackProgress(FZI)V
    .locals 9

    .line 85
    invoke-virtual {p0, p1}, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->interpolateProgress(F)F

    move-result p1

    const/4 v0, 0x3

    .line 86
    invoke-direct {p0, p3, v0}, Lcom/google/android/material/motion/MaterialSideContainerBackHelper;->checkAbsoluteGravity(II)Z

    move-result p3

    const/4 v0, 0x0

    if-ne p2, p3, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, v0

    .line 90
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 91
    iget-object v2, p0, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v3, v1

    const/4 v4, 0x0

    cmpg-float v5, v3, v4

    if-lez v5, :cond_7

    int-to-float v2, v2

    cmpg-float v5, v2, v4

    if-gtz v5, :cond_1

    goto/16 :goto_7

    .line 97
    :cond_1
    iget v5, p0, Lcom/google/android/material/motion/MaterialSideContainerBackHelper;->maxScaleXDistanceShrink:F

    div-float/2addr v5, v3

    .line 98
    iget v6, p0, Lcom/google/android/material/motion/MaterialSideContainerBackHelper;->maxScaleXDistanceGrow:F

    div-float/2addr v6, v3

    .line 99
    iget v7, p0, Lcom/google/android/material/motion/MaterialSideContainerBackHelper;->maxScaleYDistance:F

    div-float/2addr v7, v2

    .line 101
    iget-object v2, p0, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->view:Landroid/view/View;

    if-eqz p3, :cond_2

    move v3, v4

    :cond_2
    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotX(F)V

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    neg-float v6, v5

    .line 103
    :goto_1
    invoke-static {v4, v6, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    add-float v5, v2, v3

    .line 105
    iget-object v6, p0, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setScaleX(F)V

    .line 106
    invoke-static {v4, v7, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result p1

    sub-float p1, v3, p1

    .line 108
    iget-object v6, p0, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v6, p1}, Landroid/view/View;->setScaleY(F)V

    .line 110
    iget-object p0, p0, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->view:Landroid/view/View;

    instance-of v6, p0, Landroid/view/ViewGroup;

    if-eqz v6, :cond_7

    .line 111
    check-cast p0, Landroid/view/ViewGroup;

    .line 112
    :goto_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v0, v6, :cond_7

    .line 113
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-eqz p3, :cond_4

    .line 118
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    sub-int v7, v1, v7

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    :goto_3
    int-to-float v7, v7

    goto :goto_4

    .line 119
    :cond_4
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v7

    neg-int v7, v7

    goto :goto_3

    .line 116
    :goto_4
    invoke-virtual {v6, v7}, Landroid/view/View;->setPivotX(F)V

    .line 120
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setPivotY(F)V

    if-eqz p2, :cond_5

    sub-float v7, v3, v2

    goto :goto_5

    :cond_5
    move v7, v3

    :goto_5
    cmpl-float v8, p1, v4

    if-eqz v8, :cond_6

    div-float v8, v5, p1

    mul-float/2addr v8, v7

    goto :goto_6

    :cond_6
    move v8, v3

    .line 123
    :goto_6
    invoke-virtual {v6, v7}, Landroid/view/View;->setScaleX(F)V

    .line 124
    invoke-virtual {v6, v8}, Landroid/view/View;->setScaleY(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    :goto_7
    return-void
.end method
