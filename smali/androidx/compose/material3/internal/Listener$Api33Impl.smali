.class final Landroidx/compose/material3/internal/Listener$Api33Impl;
.super Ljava/lang/Object;
.source "AccessibilityServiceStateProvider.android.kt"


# static fields
.field public static final INSTANCE:Landroidx/compose/material3/internal/Listener$Api33Impl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/material3/internal/Listener$Api33Impl;

    invoke-direct {v0}, Landroidx/compose/material3/internal/Listener$Api33Impl;-><init>()V

    sput-object v0, Landroidx/compose/material3/internal/Listener$Api33Impl;->INSTANCE:Landroidx/compose/material3/internal/Listener$Api33Impl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final addAccessibilityServicesStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;)V
    .locals 0

    .line 166
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityServicesStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;)V

    return-void
.end method

.method public static final removeAccessibilityServicesStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;)V
    .locals 0

    .line 174
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityManager;->removeAccessibilityServicesStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;)Z

    return-void
.end method
