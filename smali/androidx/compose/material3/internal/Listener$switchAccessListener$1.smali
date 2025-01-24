.class public final Landroidx/compose/material3/internal/Listener$switchAccessListener$1;
.super Ljava/lang/Object;
.source "AccessibilityServiceStateProvider.android.kt"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;


# instance fields
.field private final enabled$delegate:Landroidx/compose/runtime/MutableState;

.field final synthetic this$0:Landroidx/compose/material3/internal/Listener;


# direct methods
.method constructor <init>(Landroidx/compose/material3/internal/Listener;)V
    .locals 2

    iput-object p1, p0, Landroidx/compose/material3/internal/Listener$switchAccessListener$1;->this$0:Landroidx/compose/material3/internal/Listener;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p1, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material3/internal/Listener$switchAccessListener$1;->enabled$delegate:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final getEnabled()Z
    .locals 0

    .line 108
    iget-object p0, p0, Landroidx/compose/material3/internal/Listener$switchAccessListener$1;->enabled$delegate:Landroidx/compose/runtime/MutableState;

    .line 81
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public onAccessibilityServicesStateChanged(Landroid/view/accessibility/AccessibilityManager;)V
    .locals 1

    .line 111
    iget-object v0, p0, Landroidx/compose/material3/internal/Listener$switchAccessListener$1;->this$0:Landroidx/compose/material3/internal/Listener;

    invoke-static {v0, p1}, Landroidx/compose/material3/internal/Listener;->access$getSwitchAccessEnabled(Landroidx/compose/material3/internal/Listener;Landroid/view/accessibility/AccessibilityManager;)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/compose/material3/internal/Listener$switchAccessListener$1;->setEnabled(Z)V

    return-void
.end method

.method public final setEnabled(Z)V
    .locals 0

    .line 108
    iget-object p0, p0, Landroidx/compose/material3/internal/Listener$switchAccessListener$1;->enabled$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 109
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method
