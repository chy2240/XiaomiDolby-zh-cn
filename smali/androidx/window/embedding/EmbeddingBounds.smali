.class public final Landroidx/window/embedding/EmbeddingBounds;
.super Ljava/lang/Object;
.source "EmbeddingBounds.kt"


# static fields
.field public static final BOUNDS_EXPANDED:Landroidx/window/embedding/EmbeddingBounds;

.field public static final BOUNDS_HINGE_BOTTOM:Landroidx/window/embedding/EmbeddingBounds;

.field public static final BOUNDS_HINGE_LEFT:Landroidx/window/embedding/EmbeddingBounds;

.field public static final BOUNDS_HINGE_RIGHT:Landroidx/window/embedding/EmbeddingBounds;

.field public static final BOUNDS_HINGE_TOP:Landroidx/window/embedding/EmbeddingBounds;

.field public static final Companion:Landroidx/window/embedding/EmbeddingBounds$Companion;


# instance fields
.field private final alignment:Landroidx/window/embedding/EmbeddingBounds$Alignment;

.field private final height:Landroidx/window/embedding/EmbeddingBounds$Dimension;

.field private final width:Landroidx/window/embedding/EmbeddingBounds$Dimension;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroidx/window/embedding/EmbeddingBounds$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/window/embedding/EmbeddingBounds$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/window/embedding/EmbeddingBounds;->Companion:Landroidx/window/embedding/EmbeddingBounds$Companion;

    .line 327
    new-instance v0, Landroidx/window/embedding/EmbeddingBounds;

    sget-object v1, Landroidx/window/embedding/EmbeddingBounds$Alignment;->ALIGN_TOP:Landroidx/window/embedding/EmbeddingBounds$Alignment;

    sget-object v2, Landroidx/window/embedding/EmbeddingBounds$Dimension;->DIMENSION_EXPANDED:Landroidx/window/embedding/EmbeddingBounds$Dimension;

    invoke-direct {v0, v1, v2, v2}, Landroidx/window/embedding/EmbeddingBounds;-><init>(Landroidx/window/embedding/EmbeddingBounds$Alignment;Landroidx/window/embedding/EmbeddingBounds$Dimension;Landroidx/window/embedding/EmbeddingBounds$Dimension;)V

    sput-object v0, Landroidx/window/embedding/EmbeddingBounds;->BOUNDS_EXPANDED:Landroidx/window/embedding/EmbeddingBounds;

    .line 335
    new-instance v0, Landroidx/window/embedding/EmbeddingBounds;

    sget-object v3, Landroidx/window/embedding/EmbeddingBounds$Dimension;->DIMENSION_HINGE:Landroidx/window/embedding/EmbeddingBounds$Dimension;

    invoke-direct {v0, v1, v2, v3}, Landroidx/window/embedding/EmbeddingBounds;-><init>(Landroidx/window/embedding/EmbeddingBounds$Alignment;Landroidx/window/embedding/EmbeddingBounds$Dimension;Landroidx/window/embedding/EmbeddingBounds$Dimension;)V

    sput-object v0, Landroidx/window/embedding/EmbeddingBounds;->BOUNDS_HINGE_TOP:Landroidx/window/embedding/EmbeddingBounds;

    .line 343
    new-instance v0, Landroidx/window/embedding/EmbeddingBounds;

    sget-object v1, Landroidx/window/embedding/EmbeddingBounds$Alignment;->ALIGN_LEFT:Landroidx/window/embedding/EmbeddingBounds$Alignment;

    invoke-direct {v0, v1, v3, v2}, Landroidx/window/embedding/EmbeddingBounds;-><init>(Landroidx/window/embedding/EmbeddingBounds$Alignment;Landroidx/window/embedding/EmbeddingBounds$Dimension;Landroidx/window/embedding/EmbeddingBounds$Dimension;)V

    sput-object v0, Landroidx/window/embedding/EmbeddingBounds;->BOUNDS_HINGE_LEFT:Landroidx/window/embedding/EmbeddingBounds;

    .line 351
    new-instance v0, Landroidx/window/embedding/EmbeddingBounds;

    sget-object v1, Landroidx/window/embedding/EmbeddingBounds$Alignment;->ALIGN_BOTTOM:Landroidx/window/embedding/EmbeddingBounds$Alignment;

    invoke-direct {v0, v1, v2, v3}, Landroidx/window/embedding/EmbeddingBounds;-><init>(Landroidx/window/embedding/EmbeddingBounds$Alignment;Landroidx/window/embedding/EmbeddingBounds$Dimension;Landroidx/window/embedding/EmbeddingBounds$Dimension;)V

    sput-object v0, Landroidx/window/embedding/EmbeddingBounds;->BOUNDS_HINGE_BOTTOM:Landroidx/window/embedding/EmbeddingBounds;

    .line 359
    new-instance v0, Landroidx/window/embedding/EmbeddingBounds;

    sget-object v1, Landroidx/window/embedding/EmbeddingBounds$Alignment;->ALIGN_RIGHT:Landroidx/window/embedding/EmbeddingBounds$Alignment;

    invoke-direct {v0, v1, v3, v2}, Landroidx/window/embedding/EmbeddingBounds;-><init>(Landroidx/window/embedding/EmbeddingBounds$Alignment;Landroidx/window/embedding/EmbeddingBounds$Dimension;Landroidx/window/embedding/EmbeddingBounds$Dimension;)V

    sput-object v0, Landroidx/window/embedding/EmbeddingBounds;->BOUNDS_HINGE_RIGHT:Landroidx/window/embedding/EmbeddingBounds;

    return-void
.end method

.method public constructor <init>(Landroidx/window/embedding/EmbeddingBounds$Alignment;Landroidx/window/embedding/EmbeddingBounds$Dimension;Landroidx/window/embedding/EmbeddingBounds$Dimension;)V
    .locals 1

    const-string v0, "alignment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "width"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "height"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Landroidx/window/embedding/EmbeddingBounds;->alignment:Landroidx/window/embedding/EmbeddingBounds$Alignment;

    iput-object p2, p0, Landroidx/window/embedding/EmbeddingBounds;->width:Landroidx/window/embedding/EmbeddingBounds$Dimension;

    iput-object p3, p0, Landroidx/window/embedding/EmbeddingBounds;->height:Landroidx/window/embedding/EmbeddingBounds$Dimension;

    return-void
.end method

.method private final getOnlyFoldingFeatureOrNull(Landroidx/window/layout/WindowLayoutInfo;)Landroidx/window/layout/FoldingFeature;
    .locals 2

    .line 102
    invoke-virtual {p1}, Landroidx/window/layout/WindowLayoutInfo;->getDisplayFeatures()Ljava/util/List;

    move-result-object p0

    .line 800
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 809
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroidx/window/layout/FoldingFeature;

    if-eqz v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 103
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    const/4 p0, 0x0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/window/layout/FoldingFeature;

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method private final isHorizontal(Landroidx/window/layout/WindowLayoutInfo;)Z
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Landroidx/window/embedding/EmbeddingBounds;->getOnlyFoldingFeatureOrNull(Landroidx/window/layout/WindowLayoutInfo;)Landroidx/window/layout/FoldingFeature;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 89
    :cond_0
    invoke-interface {p0}, Landroidx/window/layout/FoldingFeature;->getOrientation()Landroidx/window/layout/FoldingFeature$Orientation;

    move-result-object p0

    sget-object p1, Landroidx/window/layout/FoldingFeature$Orientation;->HORIZONTAL:Landroidx/window/layout/FoldingFeature$Orientation;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private final isVertical(Landroidx/window/layout/WindowLayoutInfo;)Z
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Landroidx/window/embedding/EmbeddingBounds;->getOnlyFoldingFeatureOrNull(Landroidx/window/layout/WindowLayoutInfo;)Landroidx/window/layout/FoldingFeature;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 94
    :cond_0
    invoke-interface {p0}, Landroidx/window/layout/FoldingFeature;->getOrientation()Landroidx/window/layout/FoldingFeature$Orientation;

    move-result-object p0

    sget-object p1, Landroidx/window/layout/FoldingFeature$Orientation;->VERTICAL:Landroidx/window/layout/FoldingFeature$Orientation;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 67
    :cond_0
    instance-of v1, p1, Landroidx/window/embedding/EmbeddingBounds;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 68
    :cond_1
    iget-object v1, p0, Landroidx/window/embedding/EmbeddingBounds;->alignment:Landroidx/window/embedding/EmbeddingBounds$Alignment;

    check-cast p1, Landroidx/window/embedding/EmbeddingBounds;

    iget-object v3, p1, Landroidx/window/embedding/EmbeddingBounds;->alignment:Landroidx/window/embedding/EmbeddingBounds$Alignment;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/window/embedding/EmbeddingBounds;->width:Landroidx/window/embedding/EmbeddingBounds$Dimension;

    iget-object v3, p1, Landroidx/window/embedding/EmbeddingBounds;->width:Landroidx/window/embedding/EmbeddingBounds$Dimension;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Landroidx/window/embedding/EmbeddingBounds;->height:Landroidx/window/embedding/EmbeddingBounds$Dimension;

    iget-object p1, p1, Landroidx/window/embedding/EmbeddingBounds;->height:Landroidx/window/embedding/EmbeddingBounds$Dimension;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final getAlignment()Landroidx/window/embedding/EmbeddingBounds$Alignment;
    .locals 0

    .line 53
    iget-object p0, p0, Landroidx/window/embedding/EmbeddingBounds;->alignment:Landroidx/window/embedding/EmbeddingBounds$Alignment;

    return-object p0
.end method

.method public final getHeight()Landroidx/window/embedding/EmbeddingBounds$Dimension;
    .locals 0

    .line 53
    iget-object p0, p0, Landroidx/window/embedding/EmbeddingBounds;->height:Landroidx/window/embedding/EmbeddingBounds$Dimension;

    return-object p0
.end method

.method public final getHeightInPixel$window_release(Landroidx/window/core/Bounds;Landroidx/window/layout/WindowLayoutInfo;)I
    .locals 3

    const-string v0, "parentContainerBounds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "windowLayoutInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    invoke-virtual {p1}, Landroidx/window/core/Bounds;->getHeight()I

    move-result v0

    .line 153
    invoke-virtual {p0, p2}, Landroidx/window/embedding/EmbeddingBounds;->shouldUseFallbackDimensionForHeight$window_release(Landroidx/window/layout/WindowLayoutInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    sget-object v1, Landroidx/window/embedding/EmbeddingBounds$Dimension;->Companion:Landroidx/window/embedding/EmbeddingBounds$Dimension$Companion;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v1, v2}, Landroidx/window/embedding/EmbeddingBounds$Dimension$Companion;->ratio(F)Landroidx/window/embedding/EmbeddingBounds$Dimension;

    move-result-object v1

    goto :goto_0

    .line 156
    :cond_0
    iget-object v1, p0, Landroidx/window/embedding/EmbeddingBounds;->height:Landroidx/window/embedding/EmbeddingBounds$Dimension;

    .line 159
    :goto_0
    instance-of v2, v1, Landroidx/window/embedding/EmbeddingBounds$Dimension$Ratio;

    if-eqz v2, :cond_1

    check-cast v1, Landroidx/window/embedding/EmbeddingBounds$Dimension$Ratio;

    invoke-virtual {v1, v0}, Landroidx/window/embedding/EmbeddingBounds$Dimension$Ratio;->times$window_release(I)I

    move-result p0

    return p0

    .line 160
    :cond_1
    instance-of v2, v1, Landroidx/window/embedding/EmbeddingBounds$Dimension$Pixel;

    if-eqz v2, :cond_2

    check-cast v1, Landroidx/window/embedding/EmbeddingBounds$Dimension$Pixel;

    invoke-virtual {v1}, Landroidx/window/embedding/EmbeddingBounds$Dimension$Pixel;->getValue$window_release()I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    .line 161
    :cond_2
    sget-object v0, Landroidx/window/embedding/EmbeddingBounds$Dimension;->DIMENSION_HINGE:Landroidx/window/embedding/EmbeddingBounds$Dimension;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 163
    invoke-direct {p0, p2}, Landroidx/window/embedding/EmbeddingBounds;->getOnlyFoldingFeatureOrNull(Landroidx/window/layout/WindowLayoutInfo;)Landroidx/window/layout/FoldingFeature;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Landroidx/window/layout/DisplayFeature;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 164
    iget-object v1, p0, Landroidx/window/embedding/EmbeddingBounds;->alignment:Landroidx/window/embedding/EmbeddingBounds$Alignment;

    .line 165
    sget-object v2, Landroidx/window/embedding/EmbeddingBounds$Alignment;->ALIGN_TOP:Landroidx/window/embedding/EmbeddingBounds$Alignment;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 166
    iget p0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroidx/window/core/Bounds;->getTop()I

    move-result p1

    :goto_1
    sub-int/2addr p0, p1

    goto :goto_2

    .line 168
    :cond_3
    sget-object v2, Landroidx/window/embedding/EmbeddingBounds$Alignment;->ALIGN_BOTTOM:Landroidx/window/embedding/EmbeddingBounds$Alignment;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 169
    invoke-virtual {p1}, Landroidx/window/core/Bounds;->getBottom()I

    move-result p0

    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :goto_2
    return p0

    .line 172
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled condition to get height in pixel! embeddingBounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 174
    const-string p0, " taskBounds="

    .line 173
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 174
    const-string p0, " windowLayoutInfo="

    .line 173
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 172
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unhandled width dimension="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/window/embedding/EmbeddingBounds;->width:Landroidx/window/embedding/EmbeddingBounds$Dimension;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getWidth()Landroidx/window/embedding/EmbeddingBounds$Dimension;
    .locals 0

    .line 53
    iget-object p0, p0, Landroidx/window/embedding/EmbeddingBounds;->width:Landroidx/window/embedding/EmbeddingBounds$Dimension;

    return-object p0
.end method

.method public final getWidthInPixel$window_release(Landroidx/window/core/Bounds;Landroidx/window/layout/WindowLayoutInfo;)I
    .locals 3

    const-string v0, "parentContainerBounds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "windowLayoutInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p1}, Landroidx/window/core/Bounds;->getWidth()I

    move-result v0

    .line 114
    invoke-virtual {p0, p2}, Landroidx/window/embedding/EmbeddingBounds;->shouldUseFallbackDimensionForWidth$window_release(Landroidx/window/layout/WindowLayoutInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    sget-object v1, Landroidx/window/embedding/EmbeddingBounds$Dimension;->Companion:Landroidx/window/embedding/EmbeddingBounds$Dimension$Companion;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v1, v2}, Landroidx/window/embedding/EmbeddingBounds$Dimension$Companion;->ratio(F)Landroidx/window/embedding/EmbeddingBounds$Dimension;

    move-result-object v1

    goto :goto_0

    .line 117
    :cond_0
    iget-object v1, p0, Landroidx/window/embedding/EmbeddingBounds;->width:Landroidx/window/embedding/EmbeddingBounds$Dimension;

    .line 120
    :goto_0
    instance-of v2, v1, Landroidx/window/embedding/EmbeddingBounds$Dimension$Ratio;

    if-eqz v2, :cond_1

    check-cast v1, Landroidx/window/embedding/EmbeddingBounds$Dimension$Ratio;

    invoke-virtual {v1, v0}, Landroidx/window/embedding/EmbeddingBounds$Dimension$Ratio;->times$window_release(I)I

    move-result p0

    return p0

    .line 121
    :cond_1
    instance-of v2, v1, Landroidx/window/embedding/EmbeddingBounds$Dimension$Pixel;

    if-eqz v2, :cond_2

    check-cast v1, Landroidx/window/embedding/EmbeddingBounds$Dimension$Pixel;

    invoke-virtual {v1}, Landroidx/window/embedding/EmbeddingBounds$Dimension$Pixel;->getValue$window_release()I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    .line 122
    :cond_2
    sget-object v0, Landroidx/window/embedding/EmbeddingBounds$Dimension;->DIMENSION_HINGE:Landroidx/window/embedding/EmbeddingBounds$Dimension;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 124
    invoke-direct {p0, p2}, Landroidx/window/embedding/EmbeddingBounds;->getOnlyFoldingFeatureOrNull(Landroidx/window/layout/WindowLayoutInfo;)Landroidx/window/layout/FoldingFeature;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Landroidx/window/layout/DisplayFeature;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 125
    iget-object v1, p0, Landroidx/window/embedding/EmbeddingBounds;->alignment:Landroidx/window/embedding/EmbeddingBounds$Alignment;

    .line 126
    sget-object v2, Landroidx/window/embedding/EmbeddingBounds$Alignment;->ALIGN_LEFT:Landroidx/window/embedding/EmbeddingBounds$Alignment;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 127
    iget p0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroidx/window/core/Bounds;->getLeft()I

    move-result p1

    :goto_1
    sub-int/2addr p0, p1

    goto :goto_2

    .line 129
    :cond_3
    sget-object v2, Landroidx/window/embedding/EmbeddingBounds$Alignment;->ALIGN_RIGHT:Landroidx/window/embedding/EmbeddingBounds$Alignment;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 130
    invoke-virtual {p1}, Landroidx/window/core/Bounds;->getRight()I

    move-result p0

    iget p1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :goto_2
    return p0

    .line 133
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled condition to get height in pixel! embeddingBounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 135
    const-string p0, " taskBounds="

    .line 134
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 135
    const-string p0, " windowLayoutInfo="

    .line 134
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 133
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unhandled width dimension="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/window/embedding/EmbeddingBounds;->width:Landroidx/window/embedding/EmbeddingBounds$Dimension;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hashCode()I
    .locals 2

    .line 59
    iget-object v0, p0, Landroidx/window/embedding/EmbeddingBounds;->alignment:Landroidx/window/embedding/EmbeddingBounds$Alignment;

    invoke-virtual {v0}, Landroidx/window/embedding/EmbeddingBounds$Alignment;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 60
    iget-object v1, p0, Landroidx/window/embedding/EmbeddingBounds;->width:Landroidx/window/embedding/EmbeddingBounds$Dimension;

    invoke-virtual {v1}, Landroidx/window/embedding/EmbeddingBounds$Dimension;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 61
    iget-object p0, p0, Landroidx/window/embedding/EmbeddingBounds;->height:Landroidx/window/embedding/EmbeddingBounds$Dimension;

    invoke-virtual {p0}, Landroidx/window/embedding/EmbeddingBounds$Dimension;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final shouldUseFallbackDimensionForHeight$window_release(Landroidx/window/layout/WindowLayoutInfo;)Z
    .locals 2

    const-string v0, "windowLayoutInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Landroidx/window/embedding/EmbeddingBounds;->height:Landroidx/window/embedding/EmbeddingBounds$Dimension;

    sget-object v1, Landroidx/window/embedding/EmbeddingBounds$Dimension;->DIMENSION_HINGE:Landroidx/window/embedding/EmbeddingBounds$Dimension;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 84
    :cond_0
    invoke-direct {p0, p1}, Landroidx/window/embedding/EmbeddingBounds;->isHorizontal(Landroidx/window/layout/WindowLayoutInfo;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Landroidx/window/embedding/EmbeddingBounds$Alignment;->ALIGN_LEFT:Landroidx/window/embedding/EmbeddingBounds$Alignment;

    sget-object v0, Landroidx/window/embedding/EmbeddingBounds$Alignment;->ALIGN_RIGHT:Landroidx/window/embedding/EmbeddingBounds$Alignment;

    filled-new-array {p1, v0}, [Landroidx/window/embedding/EmbeddingBounds$Alignment;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Landroidx/window/embedding/EmbeddingBounds;->alignment:Landroidx/window/embedding/EmbeddingBounds$Alignment;

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public final shouldUseFallbackDimensionForWidth$window_release(Landroidx/window/layout/WindowLayoutInfo;)Z
    .locals 2

    const-string v0, "windowLayoutInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Landroidx/window/embedding/EmbeddingBounds;->width:Landroidx/window/embedding/EmbeddingBounds$Dimension;

    sget-object v1, Landroidx/window/embedding/EmbeddingBounds$Dimension;->DIMENSION_HINGE:Landroidx/window/embedding/EmbeddingBounds$Dimension;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 76
    :cond_0
    invoke-direct {p0, p1}, Landroidx/window/embedding/EmbeddingBounds;->isVertical(Landroidx/window/layout/WindowLayoutInfo;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Landroidx/window/embedding/EmbeddingBounds$Alignment;->ALIGN_TOP:Landroidx/window/embedding/EmbeddingBounds$Alignment;

    sget-object v0, Landroidx/window/embedding/EmbeddingBounds$Alignment;->ALIGN_BOTTOM:Landroidx/window/embedding/EmbeddingBounds$Alignment;

    filled-new-array {p1, v0}, [Landroidx/window/embedding/EmbeddingBounds$Alignment;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Landroidx/window/embedding/EmbeddingBounds;->alignment:Landroidx/window/embedding/EmbeddingBounds$Alignment;

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bounds:{alignment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/window/embedding/EmbeddingBounds;->alignment:Landroidx/window/embedding/EmbeddingBounds$Alignment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/window/embedding/EmbeddingBounds;->width:Landroidx/window/embedding/EmbeddingBounds$Dimension;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/window/embedding/EmbeddingBounds;->height:Landroidx/window/embedding/EmbeddingBounds$Dimension;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
