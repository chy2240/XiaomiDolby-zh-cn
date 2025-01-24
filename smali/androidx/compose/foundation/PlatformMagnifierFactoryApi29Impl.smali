.class public final Landroidx/compose/foundation/PlatformMagnifierFactoryApi29Impl;
.super Ljava/lang/Object;
.source "PlatformMagnifier.android.kt"

# interfaces
.implements Landroidx/compose/foundation/PlatformMagnifierFactory;


# static fields
.field public static final INSTANCE:Landroidx/compose/foundation/PlatformMagnifierFactoryApi29Impl;

.field private static final canUpdateZoom:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/foundation/PlatformMagnifierFactoryApi29Impl;

    invoke-direct {v0}, Landroidx/compose/foundation/PlatformMagnifierFactoryApi29Impl;-><init>()V

    sput-object v0, Landroidx/compose/foundation/PlatformMagnifierFactoryApi29Impl;->INSTANCE:Landroidx/compose/foundation/PlatformMagnifierFactoryApi29Impl;

    const/4 v0, 0x1

    .line 125
    sput-boolean v0, Landroidx/compose/foundation/PlatformMagnifierFactoryApi29Impl;->canUpdateZoom:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic create-nHHXs2Y(Landroid/view/View;ZJFFZLandroidx/compose/ui/unit/Density;F)Landroidx/compose/foundation/PlatformMagnifier;
    .locals 0

    .line 123
    invoke-virtual/range {p0 .. p9}, Landroidx/compose/foundation/PlatformMagnifierFactoryApi29Impl;->create-nHHXs2Y(Landroid/view/View;ZJFFZLandroidx/compose/ui/unit/Density;F)Landroidx/compose/foundation/PlatformMagnifierFactoryApi29Impl$PlatformMagnifierImpl;

    move-result-object p0

    return-object p0
.end method

.method public create-nHHXs2Y(Landroid/view/View;ZJFFZLandroidx/compose/ui/unit/Density;F)Landroidx/compose/foundation/PlatformMagnifierFactoryApi29Impl$PlatformMagnifierImpl;
    .locals 2

    if-eqz p2, :cond_0

    .line 142
    new-instance p0, Landroidx/compose/foundation/PlatformMagnifierFactoryApi29Impl$PlatformMagnifierImpl;

    new-instance p2, Landroid/widget/Magnifier;

    invoke-direct {p2, p1}, Landroid/widget/Magnifier;-><init>(Landroid/view/View;)V

    invoke-direct {p0, p2}, Landroidx/compose/foundation/PlatformMagnifierFactoryApi29Impl$PlatformMagnifierImpl;-><init>(Landroid/widget/Magnifier;)V

    return-object p0

    .line 145
    :cond_0
    invoke-interface {p8, p3, p4}, Landroidx/compose/ui/unit/Density;->toSize-XkaWNTQ(J)J

    move-result-wide p2

    .line 146
    invoke-interface {p8, p5}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result p0

    .line 147
    invoke-interface {p8, p6}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result p4

    .line 152
    new-instance p5, Landroid/widget/Magnifier$Builder;

    invoke-direct {p5, p1}, Landroid/widget/Magnifier$Builder;-><init>(Landroid/view/View;)V

    const-wide v0, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long p1, p2, v0

    if-eqz p1, :cond_1

    const/16 p1, 0x20

    shr-long v0, p2, p1

    long-to-int p1, v0

    .line 22
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    .line 154
    invoke-static {p1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p1

    const-wide v0, 0xffffffffL

    and-long/2addr p2, v0

    long-to-int p2, p2

    .line 22
    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    .line 154
    invoke-static {p2}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p2

    invoke-virtual {p5, p1, p2}, Landroid/widget/Magnifier$Builder;->setSize(II)Landroid/widget/Magnifier$Builder;

    .line 156
    :cond_1
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-nez p1, :cond_2

    .line 157
    invoke-virtual {p5, p0}, Landroid/widget/Magnifier$Builder;->setCornerRadius(F)Landroid/widget/Magnifier$Builder;

    .line 159
    :cond_2
    invoke-static {p4}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-nez p0, :cond_3

    .line 160
    invoke-virtual {p5, p4}, Landroid/widget/Magnifier$Builder;->setElevation(F)Landroid/widget/Magnifier$Builder;

    .line 162
    :cond_3
    invoke-static {p9}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-nez p0, :cond_4

    .line 163
    invoke-virtual {p5, p9}, Landroid/widget/Magnifier$Builder;->setInitialZoom(F)Landroid/widget/Magnifier$Builder;

    .line 165
    :cond_4
    invoke-virtual {p5, p7}, Landroid/widget/Magnifier$Builder;->setClippingEnabled(Z)Landroid/widget/Magnifier$Builder;

    .line 166
    invoke-virtual {p5}, Landroid/widget/Magnifier$Builder;->build()Landroid/widget/Magnifier;

    move-result-object p0

    .line 169
    new-instance p1, Landroidx/compose/foundation/PlatformMagnifierFactoryApi29Impl$PlatformMagnifierImpl;

    invoke-direct {p1, p0}, Landroidx/compose/foundation/PlatformMagnifierFactoryApi29Impl$PlatformMagnifierImpl;-><init>(Landroid/widget/Magnifier;)V

    return-object p1
.end method

.method public getCanUpdateZoom()Z
    .locals 0

    .line 125
    sget-boolean p0, Landroidx/compose/foundation/PlatformMagnifierFactoryApi29Impl;->canUpdateZoom:Z

    return p0
.end method
