.class Landroidx/dynamicanimation/animation/DynamicAnimation$7;
.super Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;
.source "DynamicAnimation.java"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 151
    invoke-direct {p0, p1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;-><init>(Ljava/lang/String;Landroidx/dynamicanimation/animation/DynamicAnimation$1;)V

    return-void
.end method


# virtual methods
.method public getValue(Landroid/view/View;)F
    .locals 0

    .line 159
    invoke-virtual {p1}, Landroid/view/View;->getRotationX()F

    move-result p0

    return p0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 0

    .line 151
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation$7;->getValue(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method public setValue(Landroid/view/View;F)V
    .locals 0

    .line 154
    invoke-virtual {p1, p2}, Landroid/view/View;->setRotationX(F)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 151
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation$7;->setValue(Landroid/view/View;F)V

    return-void
.end method
