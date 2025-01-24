.class public abstract Landroidx/compose/foundation/text/selection/SelectionMagnifierKt;
.super Ljava/lang/Object;
.source "SelectionMagnifier.kt"


# static fields
.field private static final MagnifierSpringSpec:Landroidx/compose/animation/core/SpringSpec;

.field private static final OffsetDisplacementThreshold:J

.field private static final UnspecifiedAnimationVector2D:Landroidx/compose/animation/core/AnimationVector2D;

.field private static final UnspecifiedSafeOffsetVectorConverter:Landroidx/compose/animation/core/TwoWayConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 37
    new-instance v0, Landroidx/compose/animation/core/AnimationVector2D;

    const/high16 v1, 0x7fc00000    # Float.NaN

    invoke-direct {v0, v1, v1}, Landroidx/compose/animation/core/AnimationVector2D;-><init>(FF)V

    sput-object v0, Landroidx/compose/foundation/text/selection/SelectionMagnifierKt;->UnspecifiedAnimationVector2D:Landroidx/compose/animation/core/AnimationVector2D;

    .line 41
    sget-object v0, Landroidx/compose/foundation/text/selection/SelectionMagnifierKt$UnspecifiedSafeOffsetVectorConverter$1;->INSTANCE:Landroidx/compose/foundation/text/selection/SelectionMagnifierKt$UnspecifiedSafeOffsetVectorConverter$1;

    sget-object v1, Landroidx/compose/foundation/text/selection/SelectionMagnifierKt$UnspecifiedSafeOffsetVectorConverter$2;->INSTANCE:Landroidx/compose/foundation/text/selection/SelectionMagnifierKt$UnspecifiedSafeOffsetVectorConverter$2;

    invoke-static {v0, v1}, Landroidx/compose/animation/core/VectorConvertersKt;->TwoWayConverter(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v0

    sput-object v0, Landroidx/compose/foundation/text/selection/SelectionMagnifierKt;->UnspecifiedSafeOffsetVectorConverter:Landroidx/compose/animation/core/TwoWayConverter;

    const v0, 0x3c23d70a    # 0.01f

    .line 53
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v1, v1

    .line 54
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v3, v0

    const/16 v0, 0x20

    shl-long v0, v1, v0

    const-wide v5, 0xffffffffL

    and-long v2, v3, v5

    or-long/2addr v0, v2

    .line 30
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v0

    .line 53
    sput-wide v0, Landroidx/compose/foundation/text/selection/SelectionMagnifierKt;->OffsetDisplacementThreshold:J

    .line 55
    new-instance v8, Landroidx/compose/animation/core/SpringSpec;

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v5

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Landroidx/compose/animation/core/SpringSpec;-><init>(FFLjava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v8, Landroidx/compose/foundation/text/selection/SelectionMagnifierKt;->MagnifierSpringSpec:Landroidx/compose/animation/core/SpringSpec;

    return-void
.end method

.method public static final synthetic access$getUnspecifiedAnimationVector2D$p()Landroidx/compose/animation/core/AnimationVector2D;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/foundation/text/selection/SelectionMagnifierKt;->UnspecifiedAnimationVector2D:Landroidx/compose/animation/core/AnimationVector2D;

    return-object v0
.end method

.method public static final synthetic access$rememberAnimatedMagnifierPosition(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/text/selection/SelectionMagnifierKt;->rememberAnimatedMagnifierPosition(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$rememberAnimatedMagnifierPosition$lambda$1(Landroidx/compose/runtime/State;)J
    .locals 2

    .line 1
    invoke-static {p0}, Landroidx/compose/foundation/text/selection/SelectionMagnifierKt;->rememberAnimatedMagnifierPosition$lambda$1(Landroidx/compose/runtime/State;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final animatedSelectionMagnifier(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;
    .locals 1

    .line 64
    new-instance v0, Landroidx/compose/foundation/text/selection/SelectionMagnifierKt$animatedSelectionMagnifier$1;

    invoke-direct {v0, p1, p2}, Landroidx/compose/foundation/text/selection/SelectionMagnifierKt$animatedSelectionMagnifier$1;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-static {p0, p2, v0, p1, p2}, Landroidx/compose/ui/ComposedModifierKt;->composed$default(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final getMagnifierSpringSpec()Landroidx/compose/animation/core/SpringSpec;
    .locals 1

    .line 55
    sget-object v0, Landroidx/compose/foundation/text/selection/SelectionMagnifierKt;->MagnifierSpringSpec:Landroidx/compose/animation/core/SpringSpec;

    return-object v0
.end method

.method private static final rememberAnimatedMagnifierPosition(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 9

    .line 76
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "androidx.compose.foundation.text.selection.rememberAnimatedMagnifierPosition (SelectionMagnifier.kt:75)"

    const v2, -0x5ec259b1

    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 1166
    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object p2

    .line 1167
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne p2, v1, :cond_1

    .line 77
    invoke-static {p0}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object p2

    .line 1169
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 77
    :cond_1
    check-cast p2, Landroidx/compose/runtime/State;

    .line 1166
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object p0

    .line 1167
    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne p0, v1, :cond_2

    .line 80
    new-instance p0, Landroidx/compose/animation/core/Animatable;

    invoke-static {p2}, Landroidx/compose/foundation/text/selection/SelectionMagnifierKt;->rememberAnimatedMagnifierPosition$lambda$1(Landroidx/compose/runtime/State;)J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v3

    sget-object v4, Landroidx/compose/foundation/text/selection/SelectionMagnifierKt;->UnspecifiedSafeOffsetVectorConverter:Landroidx/compose/animation/core/TwoWayConverter;

    sget-wide v1, Landroidx/compose/foundation/text/selection/SelectionMagnifierKt;->OffsetDisplacementThreshold:J

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v5

    const/16 v7, 0x8

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Landroidx/compose/animation/core/Animatable;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1169
    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 78
    :cond_2
    check-cast p0, Landroidx/compose/animation/core/Animatable;

    .line 82
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    .line 1166
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_3

    .line 1167
    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v3, v0, :cond_4

    .line 82
    :cond_3
    new-instance v3, Landroidx/compose/foundation/text/selection/SelectionMagnifierKt$rememberAnimatedMagnifierPosition$1$1;

    const/4 v0, 0x0

    invoke-direct {v3, p2, p0, v0}, Landroidx/compose/foundation/text/selection/SelectionMagnifierKt$rememberAnimatedMagnifierPosition$1$1;-><init>(Landroidx/compose/runtime/State;Landroidx/compose/animation/core/Animatable;Lkotlin/coroutines/Continuation;)V

    .line 1169
    invoke-interface {p1, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 82
    :cond_4
    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 p2, 0x6

    invoke-static {v1, v3, p1, p2}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 104
    invoke-virtual {p0}, Landroidx/compose/animation/core/Animatable;->asState()Landroidx/compose/runtime/State;

    move-result-object p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_5
    return-object p0
.end method

.method private static final rememberAnimatedMagnifierPosition$lambda$1(Landroidx/compose/runtime/State;)J
    .locals 2

    .line 81
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/geometry/Offset;

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v0

    return-wide v0
.end method
