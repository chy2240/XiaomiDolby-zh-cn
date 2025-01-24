.class final Landroidx/compose/ui/window/PopupLayoutHelperImpl29;
.super Landroidx/compose/ui/window/PopupLayoutHelperImpl;
.source "AndroidPopup.android.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 924
    invoke-direct {p0}, Landroidx/compose/ui/window/PopupLayoutHelperImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public setGestureExclusionRects(Landroid/view/View;II)V
    .locals 2

    const/4 p0, 0x1

    .line 926
    new-array p0, p0, [Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v0, p0, v1

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setSystemGestureExclusionRects(Ljava/util/List;)V

    return-void
.end method
