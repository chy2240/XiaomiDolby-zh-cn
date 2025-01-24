.class public interface abstract Landroidx/compose/runtime/PersistentCompositionLocalMap;
.super Ljava/lang/Object;
.source "CompositionLocalMap.kt"

# interfaces
.implements Ljava/util/Map;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;
.implements Landroidx/compose/runtime/CompositionLocalMap;
.implements Landroidx/compose/runtime/CompositionLocalAccessorScope;


# virtual methods
.method public abstract builder()Landroidx/compose/runtime/PersistentCompositionLocalMap$Builder;
.end method

.method public getCurrentValue(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;
    .locals 0

    .line 65
    invoke-static {p0, p1}, Landroidx/compose/runtime/CompositionLocalMapKt;->read(Landroidx/compose/runtime/PersistentCompositionLocalMap;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public abstract putValue(Landroidx/compose/runtime/CompositionLocal;Landroidx/compose/runtime/ValueHolder;)Landroidx/compose/runtime/PersistentCompositionLocalMap;
.end method
