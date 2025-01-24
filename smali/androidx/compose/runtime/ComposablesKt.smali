.class public abstract Landroidx/compose/runtime/ComposablesKt;
.super Ljava/lang/Object;
.source "Composables.kt"


# direct methods
.method public static final getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I
    .locals 3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "androidx.compose.runtime.<get-currentCompositeKeyHash> (Composables.kt:213)"

    const v2, 0x1f4264f3

    .line 214
    invoke-static {v2, p1, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->getCompoundKeyHash()I

    move-result p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1
    return p0
.end method

.method public static final getCurrentRecomposeScope(Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/RecomposeScope;
    .locals 3

    .line 185
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "androidx.compose.runtime.<get-currentRecomposeScope> (Composables.kt:184)"

    const v2, 0x178a93e7

    invoke-static {v2, p1, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 186
    :cond_0
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->getRecomposeScope()Landroidx/compose/runtime/RecomposeScope;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 187
    invoke-interface {p0, p1}, Landroidx/compose/runtime/Composer;->recordUsed(Landroidx/compose/runtime/RecomposeScope;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1
    return-object p1

    .line 186
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "no recompose scope found"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final invalidApplier()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 452
    const-string v1, "Invalid applier"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final rememberCompositionContext(Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/CompositionContext;
    .locals 3

    .line 462
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "androidx.compose.runtime.rememberCompositionContext (Composables.kt:461)"

    const v2, -0x457c7c0c

    invoke-static {v2, p1, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 463
    :cond_0
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->buildContext()Landroidx/compose/runtime/CompositionContext;

    move-result-object p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1
    return-object p0
.end method
