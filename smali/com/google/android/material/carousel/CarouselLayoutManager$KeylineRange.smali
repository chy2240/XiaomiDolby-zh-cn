.class Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;
.super Ljava/lang/Object;
.source "CarouselLayoutManager.java"


# instance fields
.field final leftOrTop:Lcom/google/android/material/carousel/KeylineState$Keyline;

.field final rightOrBottom:Lcom/google/android/material/carousel/KeylineState$Keyline;


# direct methods
.method constructor <init>(Lcom/google/android/material/carousel/KeylineState$Keyline;Lcom/google/android/material/carousel/KeylineState$Keyline;)V
    .locals 2

    .line 1622
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1623
    iget v0, p1, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    iget v1, p2, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 1624
    iput-object p1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;->leftOrTop:Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 1625
    iput-object p2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;->rightOrBottom:Lcom/google/android/material/carousel/KeylineState$Keyline;

    return-void
.end method
