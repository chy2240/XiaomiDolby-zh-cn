.class public abstract Landroidx/compose/foundation/gestures/TapGestureDetector_androidKt;
.super Ljava/lang/Object;
.source "TapGestureDetector.android.kt"


# direct methods
.method public static final isDeepPress(Landroidx/compose/ui/input/pointer/PointerEvent;)Z
    .locals 1

    .line 23
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/PointerEvent;->getClassification()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
