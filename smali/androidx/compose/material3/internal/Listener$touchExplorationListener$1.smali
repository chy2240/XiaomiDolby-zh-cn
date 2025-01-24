.class public final Landroidx/compose/material3/internal/Listener$touchExplorationListener$1;
.super Ljava/lang/Object;
.source "AccessibilityServiceStateProvider.android.kt"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;


# instance fields
.field private final enabled$delegate:Landroidx/compose/runtime/MutableState;


# direct methods
.method constructor <init>()V
    .locals 3

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/material3/internal/Listener$touchExplorationListener$1;->enabled$delegate:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final getEnabled()Z
    .locals 0

    .line 95
    iget-object p0, p0, Landroidx/compose/material3/internal/Listener$touchExplorationListener$1;->enabled$delegate:Landroidx/compose/runtime/MutableState;

    .line 81
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public onTouchExplorationStateChanged(Z)V
    .locals 0

    .line 98
    invoke-virtual {p0, p1}, Landroidx/compose/material3/internal/Listener$touchExplorationListener$1;->setEnabled(Z)V

    return-void
.end method

.method public final setEnabled(Z)V
    .locals 0

    .line 95
    iget-object p0, p0, Landroidx/compose/material3/internal/Listener$touchExplorationListener$1;->enabled$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 109
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method
