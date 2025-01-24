.class final Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$topTitleAlpha$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CustomizedAppBar.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $colorTransitionFraction:Lkotlin/jvm/functions/Function0;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$topTitleAlpha$1$1;->$colorTransitionFraction:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Float;
    .locals 1

    .line 339
    invoke-static {}, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt;->access$getTopTitleAlphaEasing$p()Landroidx/compose/animation/core/CubicBezierEasing;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$topTitleAlpha$1$1;->$colorTransitionFraction:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/compose/animation/core/CubicBezierEasing;->transform(F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 339
    invoke-virtual {p0}, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$topTitleAlpha$1$1;->invoke()Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
