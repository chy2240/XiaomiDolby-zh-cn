.class Landroidx/transition/ChangeBounds$3;
.super Landroid/util/Property;
.source "ChangeBounds.java"


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .line 89
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/view/View;)Landroid/graphics/PointF;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 89
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroidx/transition/ChangeBounds$3;->get(Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public set(Landroid/view/View;Landroid/graphics/PointF;)V
    .locals 2

    .line 92
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p0

    .line 93
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    .line 94
    iget v1, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 95
    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 96
    invoke-static {p1, p0, v0, v1, p2}, Landroidx/transition/ViewUtils;->setLeftTopRightBottom(Landroid/view/View;IIII)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 89
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2}, Landroidx/transition/ChangeBounds$3;->set(Landroid/view/View;Landroid/graphics/PointF;)V

    return-void
.end method
