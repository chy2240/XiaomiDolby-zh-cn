.class Lcom/google/android/material/carousel/CarouselOrientationHelper$2;
.super Lcom/google/android/material/carousel/CarouselOrientationHelper;
.source "CarouselOrientationHelper.java"


# instance fields
.field final synthetic val$carouselLayoutManager:Lcom/google/android/material/carousel/CarouselLayoutManager;


# direct methods
.method constructor <init>(ILcom/google/android/material/carousel/CarouselLayoutManager;)V
    .locals 0

    .line 248
    iput-object p2, p0, Lcom/google/android/material/carousel/CarouselOrientationHelper$2;->val$carouselLayoutManager:Lcom/google/android/material/carousel/CarouselLayoutManager;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/carousel/CarouselOrientationHelper;-><init>(ILcom/google/android/material/carousel/CarouselOrientationHelper$1;)V

    return-void
.end method


# virtual methods
.method public getMaskMargins(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)F
    .locals 0

    .line 291
    iget p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p0, p1

    int-to-float p0, p0

    return p0
.end method

.method getParentBottom()I
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselOrientationHelper$2;->val$carouselLayoutManager:Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    iget-object p0, p0, Lcom/google/android/material/carousel/CarouselOrientationHelper$2;->val$carouselLayoutManager:Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method getParentEnd()I
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselOrientationHelper$2;->val$carouselLayoutManager:Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselOrientationHelper$2;->getParentLeft()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselOrientationHelper$2;->getParentRight()I

    move-result p0

    :goto_0
    return p0
.end method

.method getParentLeft()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method getParentRight()I
    .locals 0

    .line 261
    iget-object p0, p0, Lcom/google/android/material/carousel/CarouselOrientationHelper$2;->val$carouselLayoutManager:Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result p0

    return p0
.end method

.method getParentStart()I
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselOrientationHelper$2;->val$carouselLayoutManager:Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselOrientationHelper$2;->getParentRight()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselOrientationHelper$2;->getParentLeft()I

    move-result p0

    :goto_0
    return p0
.end method

.method getParentTop()I
    .locals 0

    .line 271
    iget-object p0, p0, Lcom/google/android/material/carousel/CarouselOrientationHelper$2;->val$carouselLayoutManager:Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result p0

    return p0
.end method

.method public layoutDecoratedWithMargins(Landroid/view/View;II)V
    .locals 6

    .line 281
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselOrientationHelper$2;->val$carouselLayoutManager:Lcom/google/android/material/carousel/CarouselLayoutManager;

    .line 284
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselOrientationHelper$2;->getParentTop()I

    move-result v3

    .line 286
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselOrientationHelper$2;->getParentBottom()I

    move-result v5

    move-object v1, p1

    move v2, p2

    move v4, p3

    .line 281
    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    return-void
.end method

.method public offsetChild(Landroid/view/View;Landroid/graphics/Rect;FF)V
    .locals 0

    .line 334
    iget p0, p2, Landroid/graphics/Rect;->left:I

    int-to-float p0, p0

    add-float/2addr p0, p3

    sub-float/2addr p4, p0

    float-to-int p0, p4

    .line 335
    invoke-virtual {p1, p0}, Landroid/view/View;->offsetLeftAndRight(I)V

    return-void
.end method
