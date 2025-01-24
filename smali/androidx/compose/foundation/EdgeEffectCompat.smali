.class public final Landroidx/compose/foundation/EdgeEffectCompat;
.super Ljava/lang/Object;
.source "EdgeEffectCompat.android.kt"


# static fields
.field public static final INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/foundation/EdgeEffectCompat;

    invoke-direct {v0}, Landroidx/compose/foundation/EdgeEffectCompat;-><init>()V

    sput-object v0, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final absorbToRelaxIfNeeded(Landroid/widget/EdgeEffect;FFLandroidx/compose/ui/unit/Density;)F
    .locals 1

    .line 79
    invoke-static {p4, p2}, Landroidx/compose/foundation/EdgeEffectCompat_androidKt;->access$flingDistance(Landroidx/compose/ui/unit/Density;F)F

    move-result p4

    .line 80
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/EdgeEffectCompat;->getDistanceCompat(Landroid/widget/EdgeEffect;)F

    move-result v0

    mul-float/2addr v0, p3

    cmpg-float p3, p4, v0

    if-gtz p3, :cond_0

    .line 82
    invoke-static {p2}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p3

    invoke-virtual {p0, p1, p3}, Landroidx/compose/foundation/EdgeEffectCompat;->onAbsorbCompat(Landroid/widget/EdgeEffect;I)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return p2
.end method

.method public final create(Landroid/content/Context;)Landroid/widget/EdgeEffect;
    .locals 1

    .line 36
    sget-object p0, Landroidx/compose/foundation/Api31Impl;->INSTANCE:Landroidx/compose/foundation/Api31Impl;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/compose/foundation/Api31Impl;->create(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/EdgeEffect;

    move-result-object p0

    return-object p0
.end method

.method public final getDistanceCompat(Landroid/widget/EdgeEffect;)F
    .locals 0

    .line 106
    sget-object p0, Landroidx/compose/foundation/Api31Impl;->INSTANCE:Landroidx/compose/foundation/Api31Impl;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/Api31Impl;->getDistance(Landroid/widget/EdgeEffect;)F

    move-result p0

    return p0
.end method

.method public final onAbsorbCompat(Landroid/widget/EdgeEffect;I)V
    .locals 0

    .line 52
    invoke-virtual {p1, p2}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    return-void
.end method

.method public final onPullDistanceCompat(Landroid/widget/EdgeEffect;FF)F
    .locals 0

    .line 44
    sget-object p0, Landroidx/compose/foundation/Api31Impl;->INSTANCE:Landroidx/compose/foundation/Api31Impl;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/Api31Impl;->onPullDistance(Landroid/widget/EdgeEffect;FF)F

    move-result p0

    return p0
.end method

.method public final onReleaseWithOppositeDelta(Landroid/widget/EdgeEffect;F)V
    .locals 0

    .line 96
    instance-of p0, p1, Landroidx/compose/foundation/GlowEdgeEffectCompat;

    if-eqz p0, :cond_0

    .line 97
    check-cast p1, Landroidx/compose/foundation/GlowEdgeEffectCompat;

    invoke-virtual {p1, p2}, Landroidx/compose/foundation/GlowEdgeEffectCompat;->releaseWithOppositeDelta(F)V

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    :goto_0
    return-void
.end method
