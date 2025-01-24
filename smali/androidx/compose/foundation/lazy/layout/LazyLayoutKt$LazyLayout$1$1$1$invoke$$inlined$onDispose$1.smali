.class public final Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$LazyLayout$1$1$1$invoke$$inlined$onDispose$1;
.super Ljava/lang/Object;
.source "Effects.kt"

# interfaces
.implements Landroidx/compose/runtime/DisposableEffectResult;


# instance fields
.field final synthetic $prefetchState$inlined:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$LazyLayout$1$1$1$invoke$$inlined$onDispose$1;->$prefetchState$inlined:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 68
    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$LazyLayout$1$1$1$invoke$$inlined$onDispose$1;->$prefetchState$inlined:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;->setPrefetchHandleProvider$foundation_release(Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider;)V

    return-void
.end method
