.class final Landroidx/compose/animation/core/VectorConvertersKt$SizeToVector$1;
.super Lkotlin/jvm/internal/Lambda;
.source "VectorConverters.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Landroidx/compose/animation/core/VectorConvertersKt$SizeToVector$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/animation/core/VectorConvertersKt$SizeToVector$1;

    invoke-direct {v0}, Landroidx/compose/animation/core/VectorConvertersKt$SizeToVector$1;-><init>()V

    sput-object v0, Landroidx/compose/animation/core/VectorConvertersKt$SizeToVector$1;->INSTANCE:Landroidx/compose/animation/core/VectorConvertersKt$SizeToVector$1;

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
    .locals 2

    .line 134
    check-cast p1, Landroidx/compose/ui/geometry/Size;

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Size;->unbox-impl()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/animation/core/VectorConvertersKt$SizeToVector$1;->invoke-uvyYCjk(J)Landroidx/compose/animation/core/AnimationVector2D;

    move-result-object p0

    return-object p0
.end method

.method public final invoke-uvyYCjk(J)Landroidx/compose/animation/core/AnimationVector2D;
    .locals 3

    .line 135
    new-instance p0, Landroidx/compose/animation/core/AnimationVector2D;

    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v0, v0

    .line 22
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    const-wide v1, 0xffffffffL

    and-long/2addr p1, v1

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    .line 135
    invoke-direct {p0, v0, p1}, Landroidx/compose/animation/core/AnimationVector2D;-><init>(FF)V

    return-object p0
.end method
