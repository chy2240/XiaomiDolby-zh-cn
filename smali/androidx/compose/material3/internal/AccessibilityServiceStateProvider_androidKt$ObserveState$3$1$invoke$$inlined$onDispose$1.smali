.class public final Landroidx/compose/material3/internal/AccessibilityServiceStateProvider_androidKt$ObserveState$3$1$invoke$$inlined$onDispose$1;
.super Ljava/lang/Object;
.source "Effects.kt"

# interfaces
.implements Landroidx/compose/runtime/DisposableEffectResult;


# instance fields
.field final synthetic $lifecycleOwner$inlined:Landroidx/lifecycle/LifecycleOwner;

.field final synthetic $observer$inlined:Landroidx/lifecycle/LifecycleEventObserver;

.field final synthetic $onDispose$inlined:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/LifecycleEventObserver;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/internal/AccessibilityServiceStateProvider_androidKt$ObserveState$3$1$invoke$$inlined$onDispose$1;->$onDispose$inlined:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Landroidx/compose/material3/internal/AccessibilityServiceStateProvider_androidKt$ObserveState$3$1$invoke$$inlined$onDispose$1;->$lifecycleOwner$inlined:Landroidx/lifecycle/LifecycleOwner;

    iput-object p3, p0, Landroidx/compose/material3/internal/AccessibilityServiceStateProvider_androidKt$ObserveState$3$1$invoke$$inlined$onDispose$1;->$observer$inlined:Landroidx/lifecycle/LifecycleEventObserver;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 64
    iget-object v0, p0, Landroidx/compose/material3/internal/AccessibilityServiceStateProvider_androidKt$ObserveState$3$1$invoke$$inlined$onDispose$1;->$onDispose$inlined:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Landroidx/compose/material3/internal/AccessibilityServiceStateProvider_androidKt$ObserveState$3$1$invoke$$inlined$onDispose$1;->$lifecycleOwner$inlined:Landroidx/lifecycle/LifecycleOwner;

    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    iget-object p0, p0, Landroidx/compose/material3/internal/AccessibilityServiceStateProvider_androidKt$ObserveState$3$1$invoke$$inlined$onDispose$1;->$observer$inlined:Landroidx/lifecycle/LifecycleEventObserver;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method
