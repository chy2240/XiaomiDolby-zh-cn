.class public abstract Landroidx/compose/animation/core/VectorizedAnimationSpecKt;
.super Ljava/lang/Object;
.source "VectorizedAnimationSpec.kt"


# static fields
.field private static final EmptyArcSpline:Landroidx/compose/animation/core/ArcSpline;

.field private static final EmptyFloatArray:[F

.field private static final EmptyIntArray:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x0

    .line 1034
    new-array v1, v0, [I

    sput-object v1, Landroidx/compose/animation/core/VectorizedAnimationSpecKt;->EmptyIntArray:[I

    .line 1035
    new-array v0, v0, [F

    sput-object v0, Landroidx/compose/animation/core/VectorizedAnimationSpecKt;->EmptyFloatArray:[F

    .line 1037
    new-instance v0, Landroidx/compose/animation/core/ArcSpline;

    const/4 v1, 0x2

    new-array v2, v1, [I

    new-array v3, v1, [F

    new-array v4, v1, [F

    new-array v1, v1, [F

    filled-new-array {v4, v1}, [[F

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Landroidx/compose/animation/core/ArcSpline;-><init>([I[F[[F)V

    sput-object v0, Landroidx/compose/animation/core/VectorizedAnimationSpecKt;->EmptyArcSpline:Landroidx/compose/animation/core/ArcSpline;

    return-void
.end method

.method public static final synthetic access$createSpringAnimations(Landroidx/compose/animation/core/AnimationVector;FF)Landroidx/compose/animation/core/Animations;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/animation/core/VectorizedAnimationSpecKt;->createSpringAnimations(Landroidx/compose/animation/core/AnimationVector;FF)Landroidx/compose/animation/core/Animations;

    move-result-object p0

    return-object p0
.end method

.method private static final createSpringAnimations(Landroidx/compose/animation/core/AnimationVector;FF)Landroidx/compose/animation/core/Animations;
    .locals 1

    if-eqz p0, :cond_0

    .line 884
    new-instance v0, Landroidx/compose/animation/core/VectorizedAnimationSpecKt$createSpringAnimations$1;

    invoke-direct {v0, p0, p1, p2}, Landroidx/compose/animation/core/VectorizedAnimationSpecKt$createSpringAnimations$1;-><init>(Landroidx/compose/animation/core/AnimationVector;FF)V

    goto :goto_0

    .line 893
    :cond_0
    new-instance v0, Landroidx/compose/animation/core/VectorizedAnimationSpecKt$createSpringAnimations$2;

    invoke-direct {v0, p1, p2}, Landroidx/compose/animation/core/VectorizedAnimationSpecKt$createSpringAnimations$2;-><init>(FF)V

    :goto_0
    return-object v0
.end method
