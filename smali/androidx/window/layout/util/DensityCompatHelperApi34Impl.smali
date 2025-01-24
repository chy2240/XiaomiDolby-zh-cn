.class final Landroidx/window/layout/util/DensityCompatHelperApi34Impl;
.super Ljava/lang/Object;
.source "DensityCompatHelper.kt"

# interfaces
.implements Landroidx/window/layout/util/DensityCompatHelper;


# static fields
.field public static final INSTANCE:Landroidx/window/layout/util/DensityCompatHelperApi34Impl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/window/layout/util/DensityCompatHelperApi34Impl;

    invoke-direct {v0}, Landroidx/window/layout/util/DensityCompatHelperApi34Impl;-><init>()V

    sput-object v0, Landroidx/window/layout/util/DensityCompatHelperApi34Impl;->INSTANCE:Landroidx/window/layout/util/DensityCompatHelperApi34Impl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public density(Landroid/content/res/Configuration;Landroid/view/WindowMetrics;)F
    .locals 0

    const-string p0, "configuration"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "windowMetrics"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/view/WindowMetrics;->getDensity()F

    move-result p0

    return p0
.end method
