.class public final Landroidx/window/layout/HardwareFoldingFeature$Companion;
.super Ljava/lang/Object;
.source "HardwareFoldingFeature.kt"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/window/layout/HardwareFoldingFeature$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final validateFeatureBounds$window_release(Landroidx/window/core/Bounds;)V
    .locals 0

    const-string p0, "bounds"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p1}, Landroidx/window/core/Bounds;->getWidth()I

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Landroidx/window/core/Bounds;->getHeight()I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Bounds must be non zero"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 98
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroidx/window/core/Bounds;->getLeft()I

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Landroidx/window/core/Bounds;->getTop()I

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Bounding rectangle must start at the top or left window edge for folding features"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    return-void
.end method
