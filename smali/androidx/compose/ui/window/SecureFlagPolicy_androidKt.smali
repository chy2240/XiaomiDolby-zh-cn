.class public abstract Landroidx/compose/ui/window/SecureFlagPolicy_androidKt;
.super Ljava/lang/Object;
.source "SecureFlagPolicy.android.kt"


# direct methods
.method public static final shouldApplySecureFlag(Landroidx/compose/ui/window/SecureFlagPolicy;Z)Z
    .locals 2

    .line 42
    sget-object v0, Landroidx/compose/ui/window/SecureFlagPolicy_androidKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    move p1, v0

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
