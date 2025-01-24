.class final Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$colorTransitionFraction$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CustomizedAppBar.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $scrollBehavior:Landroidx/compose/material3/TopAppBarScrollBehavior;


# direct methods
.method constructor <init>(Landroidx/compose/material3/TopAppBarScrollBehavior;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$colorTransitionFraction$1$1;->$scrollBehavior:Landroidx/compose/material3/TopAppBarScrollBehavior;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Float;
    .locals 0

    .line 327
    iget-object p0, p0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$colorTransitionFraction$1$1;->$scrollBehavior:Landroidx/compose/material3/TopAppBarScrollBehavior;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroidx/compose/material3/TopAppBarScrollBehavior;->getState()Landroidx/compose/material3/TopAppBarState;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/material3/TopAppBarState;->getCollapsedFraction()F

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 327
    invoke-virtual {p0}, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$colorTransitionFraction$1$1;->invoke()Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
