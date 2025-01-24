.class public final Landroidx/compose/foundation/gestures/BringIntoViewSpec$Companion;
.super Ljava/lang/Object;
.source "BringIntoViewSpec.kt"


# static fields
.field static final synthetic $$INSTANCE:Landroidx/compose/foundation/gestures/BringIntoViewSpec$Companion;

.field private static final DefaultBringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

.field private static final DefaultScrollAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/compose/foundation/gestures/BringIntoViewSpec$Companion;

    invoke-direct {v0}, Landroidx/compose/foundation/gestures/BringIntoViewSpec$Companion;-><init>()V

    sput-object v0, Landroidx/compose/foundation/gestures/BringIntoViewSpec$Companion;->$$INSTANCE:Landroidx/compose/foundation/gestures/BringIntoViewSpec$Companion;

    const/4 v0, 0x0

    const/4 v1, 0x7

    const/4 v2, 0x0

    .line 72
    invoke-static {v2, v2, v0, v1, v0}, Landroidx/compose/animation/core/AnimationSpecKt;->spring$default(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    move-result-object v0

    sput-object v0, Landroidx/compose/foundation/gestures/BringIntoViewSpec$Companion;->DefaultScrollAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;

    .line 74
    new-instance v0, Landroidx/compose/foundation/gestures/BringIntoViewSpec$Companion$DefaultBringIntoViewSpec$1;

    invoke-direct {v0}, Landroidx/compose/foundation/gestures/BringIntoViewSpec$Companion$DefaultBringIntoViewSpec$1;-><init>()V

    sput-object v0, Landroidx/compose/foundation/gestures/BringIntoViewSpec$Companion;->DefaultBringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final defaultCalculateScrollDistance$foundation_release(FFF)F
    .locals 1

    add-float/2addr p2, p1

    const/4 p0, 0x0

    cmpl-float v0, p1, p0

    if-ltz v0, :cond_0

    cmpg-float v0, p2, p3

    if-gtz v0, :cond_0

    :goto_0
    move p1, p0

    goto :goto_1

    :cond_0
    cmpg-float v0, p1, p0

    if-gez v0, :cond_1

    cmpl-float v0, p2, p3

    if-lez v0, :cond_1

    goto :goto_0

    .line 94
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    sub-float/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p3

    cmpg-float p0, p0, p3

    if-gez p0, :cond_2

    goto :goto_1

    :cond_2
    move p1, p2

    :goto_1
    return p1
.end method

.method public final getDefaultBringIntoViewSpec$foundation_release()Landroidx/compose/foundation/gestures/BringIntoViewSpec;
    .locals 0

    .line 74
    sget-object p0, Landroidx/compose/foundation/gestures/BringIntoViewSpec$Companion;->DefaultBringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    return-object p0
.end method

.method public final getDefaultScrollAnimationSpec$foundation_release()Landroidx/compose/animation/core/AnimationSpec;
    .locals 0

    .line 72
    sget-object p0, Landroidx/compose/foundation/gestures/BringIntoViewSpec$Companion;->DefaultScrollAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;

    return-object p0
.end method
