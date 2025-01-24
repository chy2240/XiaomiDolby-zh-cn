.class public abstract Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchStateKt;
.super Ljava/lang/Object;
.source "LazyLayoutPrefetchState.kt"


# static fields
.field private static final ZeroConstraints:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 514
    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(IIIIILjava/lang/Object;)J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchStateKt;->ZeroConstraints:J

    return-void
.end method

.method public static final synthetic access$getZeroConstraints$p()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchStateKt;->ZeroConstraints:J

    return-wide v0
.end method

.method public static final traversablePrefetchState(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;)Landroidx/compose/ui/Modifier;
    .locals 1

    if-eqz p1, :cond_1

    .line 486
    new-instance v0, Landroidx/compose/foundation/lazy/layout/TraversablePrefetchStateModifierElement;

    invoke-direct {v0, p1}, Landroidx/compose/foundation/lazy/layout/TraversablePrefetchStateModifierElement;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;)V

    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p1

    :cond_1
    :goto_0
    return-object p0
.end method
