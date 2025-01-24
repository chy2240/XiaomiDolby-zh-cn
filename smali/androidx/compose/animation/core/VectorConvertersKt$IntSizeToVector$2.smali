.class final Landroidx/compose/animation/core/VectorConvertersKt$IntSizeToVector$2;
.super Lkotlin/jvm/internal/Lambda;
.source "VectorConverters.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Landroidx/compose/animation/core/VectorConvertersKt$IntSizeToVector$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/animation/core/VectorConvertersKt$IntSizeToVector$2;

    invoke-direct {v0}, Landroidx/compose/animation/core/VectorConvertersKt$IntSizeToVector$2;-><init>()V

    sput-object v0, Landroidx/compose/animation/core/VectorConvertersKt$IntSizeToVector$2;->INSTANCE:Landroidx/compose/animation/core/VectorConvertersKt$IntSizeToVector$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 159
    check-cast p1, Landroidx/compose/animation/core/AnimationVector2D;

    invoke-virtual {p0, p1}, Landroidx/compose/animation/core/VectorConvertersKt$IntSizeToVector$2;->invoke-YEO4UFw(Landroidx/compose/animation/core/AnimationVector2D;)J

    move-result-wide p0

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/IntSize;->box-impl(J)Landroidx/compose/ui/unit/IntSize;

    move-result-object p0

    return-object p0
.end method

.method public final invoke-YEO4UFw(Landroidx/compose/animation/core/AnimationVector2D;)J
    .locals 4

    .line 163
    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationVector2D;->getV1()F

    move-result p0

    .line 26
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    const/4 v0, 0x0

    if-gez p0, :cond_0

    move p0, v0

    .line 164
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationVector2D;->getV2()F

    move-result p1

    .line 26
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, p1

    :goto_0
    int-to-long p0, p0

    const/16 v1, 0x20

    shl-long/2addr p0, v1

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    or-long/2addr p0, v0

    .line 30
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/IntSize;->constructor-impl(J)J

    move-result-wide p0

    return-wide p0
.end method
