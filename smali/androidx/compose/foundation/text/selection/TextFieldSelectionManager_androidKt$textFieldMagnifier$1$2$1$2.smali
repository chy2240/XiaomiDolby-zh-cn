.class final Landroidx/compose/foundation/text/selection/TextFieldSelectionManager_androidKt$textFieldMagnifier$1$2$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TextFieldSelectionManager.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $density:Landroidx/compose/ui/unit/Density;

.field final synthetic $magnifierSize$delegate:Landroidx/compose/runtime/MutableState;


# direct methods
.method constructor <init>(Landroidx/compose/ui/unit/Density;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager_androidKt$textFieldMagnifier$1$2$1$2;->$density:Landroidx/compose/ui/unit/Density;

    iput-object p2, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager_androidKt$textFieldMagnifier$1$2$1$2;->$magnifierSize$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 54
    check-cast p1, Landroidx/compose/ui/unit/DpSize;

    invoke-virtual {p1}, Landroidx/compose/ui/unit/DpSize;->unbox-impl()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager_androidKt$textFieldMagnifier$1$2$1$2;->invoke-EaSLcWc(J)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke-EaSLcWc(J)V
    .locals 5

    .line 57
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager_androidKt$textFieldMagnifier$1$2$1$2;->$magnifierSize$delegate:Landroidx/compose/runtime/MutableState;

    .line 58
    iget-object p0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager_androidKt$textFieldMagnifier$1$2$1$2;->$density:Landroidx/compose/ui/unit/Density;

    .line 59
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/DpSize;->getWidth-D9Ej5fM(J)F

    move-result v1

    invoke-interface {p0, v1}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v1

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/DpSize;->getHeight-D9Ej5fM(J)F

    move-result p1

    invoke-interface {p0, p1}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result p0

    int-to-long p1, v1

    const/16 v1, 0x20

    shl-long/2addr p1, v1

    int-to-long v1, p0

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    or-long p0, p1, v1

    .line 30
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/IntSize;->constructor-impl(J)J

    move-result-wide p0

    .line 57
    invoke-static {v0, p0, p1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager_androidKt$textFieldMagnifier$1;->access$invoke$lambda$2(Landroidx/compose/runtime/MutableState;J)V

    return-void
.end method
