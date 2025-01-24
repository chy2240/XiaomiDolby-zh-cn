.class public abstract Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierLocalKt;
.super Ljava/lang/Object;
.source "LazyLayoutBeyondBoundsModifierLocal.kt"


# direct methods
.method public static final synthetic access$unsupportedDirection()Ljava/lang/Void;
    .locals 1

    .line 1
    invoke-static {}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierLocalKt;->unsupportedDirection()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public static final lazyLayoutBeyondBoundsModifier(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;ZLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/foundation/gestures/Orientation;Z)Landroidx/compose/ui/Modifier;
    .locals 6

    if-nez p6, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    new-instance p6, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierElement;

    move-object v0, p6

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierElement;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;ZLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/foundation/gestures/Orientation;)V

    .line 61
    invoke-interface {p0, p6}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static final unsupportedDirection()Ljava/lang/Void;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 256
    const-string v1, "Lazy list does not support beyond bounds layout for the specified direction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
