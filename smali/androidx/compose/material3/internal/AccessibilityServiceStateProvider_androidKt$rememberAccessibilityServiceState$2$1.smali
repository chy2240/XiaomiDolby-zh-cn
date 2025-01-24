.class final Landroidx/compose/material3/internal/AccessibilityServiceStateProvider_androidKt$rememberAccessibilityServiceState$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AccessibilityServiceStateProvider.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field final synthetic $listener:Landroidx/compose/material3/internal/Listener;


# direct methods
.method constructor <init>(Landroidx/compose/material3/internal/Listener;Landroid/view/accessibility/AccessibilityManager;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/material3/internal/AccessibilityServiceStateProvider_androidKt$rememberAccessibilityServiceState$2$1;->$listener:Landroidx/compose/material3/internal/Listener;

    iput-object p2, p0, Landroidx/compose/material3/internal/AccessibilityServiceStateProvider_androidKt$rememberAccessibilityServiceState$2$1;->$accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 63
    invoke-virtual {p0}, Landroidx/compose/material3/internal/AccessibilityServiceStateProvider_androidKt$rememberAccessibilityServiceState$2$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 1

    .line 63
    iget-object v0, p0, Landroidx/compose/material3/internal/AccessibilityServiceStateProvider_androidKt$rememberAccessibilityServiceState$2$1;->$listener:Landroidx/compose/material3/internal/Listener;

    iget-object p0, p0, Landroidx/compose/material3/internal/AccessibilityServiceStateProvider_androidKt$rememberAccessibilityServiceState$2$1;->$accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, p0}, Landroidx/compose/material3/internal/Listener;->unregister(Landroid/view/accessibility/AccessibilityManager;)V

    return-void
.end method
