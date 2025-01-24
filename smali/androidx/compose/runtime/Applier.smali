.class public interface abstract Landroidx/compose/runtime/Applier;
.super Ljava/lang/Object;
.source "Applier.kt"


# virtual methods
.method public apply(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;)V
    .locals 0

    .line 180
    invoke-interface {p0}, Landroidx/compose/runtime/Applier;->getCurrent()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public abstract clear()V
.end method

.method public abstract down(Ljava/lang/Object;)V
.end method

.method public abstract getCurrent()Ljava/lang/Object;
.end method

.method public abstract insertBottomUp(ILjava/lang/Object;)V
.end method

.method public abstract insertTopDown(ILjava/lang/Object;)V
.end method

.method public abstract move(III)V
.end method

.method public onBeginChanges()V
    .locals 0

    .line 0
    return-void
.end method

.method public onEndChanges()V
    .locals 0

    .line 0
    return-void
.end method

.method public abstract remove(II)V
.end method

.method public reuse()V
    .locals 1

    .line 185
    invoke-interface {p0}, Landroidx/compose/runtime/Applier;->getCurrent()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;->onReuse()V

    :cond_1
    return-void
.end method

.method public abstract up()V
.end method
