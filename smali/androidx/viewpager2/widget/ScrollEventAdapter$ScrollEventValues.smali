.class final Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;
.super Ljava/lang/Object;
.source "ScrollEventAdapter.java"


# instance fields
.field mOffset:F

.field mOffsetPx:I

.field mPosition:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method reset()V
    .locals 1

    const/4 v0, -0x1

    .line 455
    iput v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mPosition:I

    const/4 v0, 0x0

    .line 456
    iput v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mOffset:F

    const/4 v0, 0x0

    .line 457
    iput v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mOffsetPx:I

    return-void
.end method
