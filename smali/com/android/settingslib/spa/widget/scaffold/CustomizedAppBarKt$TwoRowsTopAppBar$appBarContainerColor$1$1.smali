.class final Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$appBarContainerColor$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CustomizedAppBar.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $colorTransitionFraction:Lkotlin/jvm/functions/Function0;

.field final synthetic $colors:Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;


# direct methods
.method constructor <init>(Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$appBarContainerColor$1$1;->$colors:Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;

    iput-object p2, p0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$appBarContainerColor$1$1;->$colorTransitionFraction:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 2

    .line 328
    invoke-virtual {p0}, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$appBarContainerColor$1$1;->invoke-0d7_KjU()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object p0

    return-object p0
.end method

.method public final invoke-0d7_KjU()J
    .locals 2

    .line 328
    iget-object v0, p0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$appBarContainerColor$1$1;->$colors:Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;

    iget-object p0, p0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$appBarContainerColor$1$1;->$colorTransitionFraction:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;->containerColor-vNxB06k(F)J

    move-result-wide v0

    return-wide v0
.end method
