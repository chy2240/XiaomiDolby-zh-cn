.class public final Landroidx/compose/foundation/ClipScrollableContainerKt$VerticalScrollableClipModifier$1;
.super Ljava/lang/Object;
.source "ClipScrollableContainer.kt"

# interfaces
.implements Landroidx/compose/ui/graphics/Shape;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createOutline-Pq9zytI(JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)Landroidx/compose/ui/graphics/Outline;
    .locals 4

    .line 93
    invoke-static {}, Landroidx/compose/foundation/ClipScrollableContainerKt;->getMaxSupportedElevation()F

    move-result p0

    invoke-interface {p4, p0}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result p0

    int-to-float p0, p0

    .line 94
    new-instance p3, Landroidx/compose/ui/graphics/Outline$Rectangle;

    .line 95
    new-instance p4, Landroidx/compose/ui/geometry/Rect;

    neg-float v0, p0

    const/16 v1, 0x20

    shr-long v1, p1, v1

    long-to-int v1, v1

    .line 22
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    add-float/2addr v1, p0

    const-wide v2, 0xffffffffL

    and-long p0, p1, v2

    long-to-int p0, p0

    .line 22
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    const/4 p1, 0x0

    .line 95
    invoke-direct {p4, v0, p1, v1, p0}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    .line 94
    invoke-direct {p3, p4}, Landroidx/compose/ui/graphics/Outline$Rectangle;-><init>(Landroidx/compose/ui/geometry/Rect;)V

    return-object p3
.end method
