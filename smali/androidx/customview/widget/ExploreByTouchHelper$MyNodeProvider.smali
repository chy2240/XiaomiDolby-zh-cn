.class Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;
.super Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;
.source "ExploreByTouchHelper.java"


# instance fields
.field final synthetic this$0:Landroidx/customview/widget/ExploreByTouchHelper;


# direct methods
.method constructor <init>(Landroidx/customview/widget/ExploreByTouchHelper;)V
    .locals 0

    .line 1252
    iput-object p1, p0, Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;->this$0:Landroidx/customview/widget/ExploreByTouchHelper;

    invoke-direct {p0}, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 0

    .line 1259
    iget-object p0, p0, Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;->this$0:Landroidx/customview/widget/ExploreByTouchHelper;

    .line 1260
    invoke-virtual {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->obtainAccessibilityNodeInfo(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object p0

    .line 1261
    invoke-static {p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->obtain(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object p0

    return-object p0
.end method

.method public findFocus(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1272
    iget-object p1, p0, Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;->this$0:Landroidx/customview/widget/ExploreByTouchHelper;

    iget p1, p1, Landroidx/customview/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;->this$0:Landroidx/customview/widget/ExploreByTouchHelper;

    iget p1, p1, Landroidx/customview/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    :goto_0
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 1276
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;->createAccessibilityNodeInfo(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object p0

    return-object p0
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 0

    .line 1266
    iget-object p0, p0, Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;->this$0:Landroidx/customview/widget/ExploreByTouchHelper;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/customview/widget/ExploreByTouchHelper;->performAction(IILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method
