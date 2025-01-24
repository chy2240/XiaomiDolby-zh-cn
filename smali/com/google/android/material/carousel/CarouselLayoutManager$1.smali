.class Lcom/google/android/material/carousel/CarouselLayoutManager$1;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "CarouselLayoutManager.java"


# instance fields
.field final synthetic this$0:Lcom/google/android/material/carousel/CarouselLayoutManager;


# direct methods
.method constructor <init>(Lcom/google/android/material/carousel/CarouselLayoutManager;Landroid/content/Context;)V
    .locals 0

    .line 1198
    iput-object p1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager$1;->this$0:Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public calculateDxToMakeVisible(Landroid/view/View;I)I
    .locals 0

    .line 1207
    iget-object p2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager$1;->this$0:Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-static {p2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->access$000(Lcom/google/android/material/carousel/CarouselLayoutManager;)Lcom/google/android/material/carousel/KeylineStateList;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager$1;->this$0:Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {p2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isHorizontal()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 1212
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager$1;->this$0:Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->calculateScrollDeltaToMakePositionVisible(I)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public calculateDyToMakeVisible(Landroid/view/View;I)I
    .locals 0

    .line 1217
    iget-object p2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager$1;->this$0:Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-static {p2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->access$000(Lcom/google/android/material/carousel/CarouselLayoutManager;)Lcom/google/android/material/carousel/KeylineStateList;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager$1;->this$0:Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {p2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isHorizontal()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 1222
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager$1;->this$0:Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->calculateScrollDeltaToMakePositionVisible(I)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 0

    .line 1202
    iget-object p0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager$1;->this$0:Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {p0, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method
