.class public abstract Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsKt;
.super Ljava/lang/Object;
.source "LazyLayoutSemantics.kt"


# direct methods
.method public static final estimatedLazyMaxScrollOffset(IIZ)F
    .locals 0

    if-eqz p2, :cond_0

    .line 263
    invoke-static {p0, p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsKt;->estimatedLazyScrollOffset(II)F

    move-result p0

    const/16 p1, 0x64

    int-to-float p1, p1

    add-float/2addr p0, p1

    goto :goto_0

    .line 266
    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsKt;->estimatedLazyScrollOffset(II)F

    move-result p0

    :goto_0
    return p0
.end method

.method public static final estimatedLazyScrollOffset(II)F
    .locals 0

    .line 0
    mul-int/lit16 p0, p0, 0x1f4

    add-int/2addr p1, p0

    int-to-float p0, p1

    return p0
.end method

.method public static final lazyLayoutSemantics(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;Landroidx/compose/foundation/gestures/Orientation;ZZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
    .locals 8

    .line 49
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p6

    if-eqz p6, :cond_0

    const/4 p6, -0x1

    const-string v0, "androidx.compose.foundation.lazy.layout.lazyLayoutSemantics (LazyLayoutSemantics.kt:48)"

    const v1, 0x3fc8fe51

    invoke-static {v1, p7, p6, v0}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 50
    :cond_0
    new-instance p6, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifier;

    move-object v2, p6

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v2 .. v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifier;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;Landroidx/compose/foundation/gestures/Orientation;ZZ)V

    .line 49
    invoke-interface {p0, p6}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1
    return-object p0
.end method
