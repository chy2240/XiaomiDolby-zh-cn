.class final Landroidx/compose/material3/internal/AccessibilityServiceStateProvider_androidKt$ObserveState$3$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AccessibilityServiceStateProvider.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $handleEvent:Lkotlin/jvm/functions/Function1;

.field final synthetic $lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

.field final synthetic $onDispose:Lkotlin/jvm/functions/Function0;


# direct methods
.method public static synthetic $r8$lambda$yeEUViOxZWVUw-a-AGb2tQ74neY(Lkotlin/jvm/functions/Function1;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroidx/compose/material3/internal/AccessibilityServiceStateProvider_androidKt$ObserveState$3$1;->invoke$lambda$0(Lkotlin/jvm/functions/Function1;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method constructor <init>(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/material3/internal/AccessibilityServiceStateProvider_androidKt$ObserveState$3$1;->$lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    iput-object p2, p0, Landroidx/compose/material3/internal/AccessibilityServiceStateProvider_androidKt$ObserveState$3$1;->$handleEvent:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Landroidx/compose/material3/internal/AccessibilityServiceStateProvider_androidKt$ObserveState$3$1;->$onDispose:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda$0(Lkotlin/jvm/functions/Function1;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0

    .line 76
    invoke-interface {p0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;
    .locals 2

    .line 76
    iget-object p1, p0, Landroidx/compose/material3/internal/AccessibilityServiceStateProvider_androidKt$ObserveState$3$1;->$handleEvent:Lkotlin/jvm/functions/Function1;

    new-instance v0, Landroidx/compose/material3/internal/AccessibilityServiceStateProvider_androidKt$ObserveState$3$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Landroidx/compose/material3/internal/AccessibilityServiceStateProvider_androidKt$ObserveState$3$1$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 77
    iget-object p1, p0, Landroidx/compose/material3/internal/AccessibilityServiceStateProvider_androidKt$ObserveState$3$1;->$lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 78
    iget-object p1, p0, Landroidx/compose/material3/internal/AccessibilityServiceStateProvider_androidKt$ObserveState$3$1;->$onDispose:Lkotlin/jvm/functions/Function0;

    iget-object p0, p0, Landroidx/compose/material3/internal/AccessibilityServiceStateProvider_androidKt$ObserveState$3$1;->$lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    .line 60
    new-instance v1, Landroidx/compose/material3/internal/AccessibilityServiceStateProvider_androidKt$ObserveState$3$1$invoke$$inlined$onDispose$1;

    invoke-direct {v1, p1, p0, v0}, Landroidx/compose/material3/internal/AccessibilityServiceStateProvider_androidKt$ObserveState$3$1$invoke$$inlined$onDispose$1;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/LifecycleEventObserver;)V

    return-object v1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 75
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/internal/AccessibilityServiceStateProvider_androidKt$ObserveState$3$1;->invoke(Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;

    move-result-object p0

    return-object p0
.end method
