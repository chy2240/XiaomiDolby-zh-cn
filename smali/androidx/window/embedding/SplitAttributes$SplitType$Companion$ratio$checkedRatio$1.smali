.class final Landroidx/window/embedding/SplitAttributes$SplitType$Companion$ratio$checkedRatio$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SplitAttributes.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $ratio:F


# direct methods
.method constructor <init>(F)V
    .locals 0

    .line 0
    iput p1, p0, Landroidx/window/embedding/SplitAttributes$SplitType$Companion$ratio$checkedRatio$1;->$ratio:F

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(F)Ljava/lang/Boolean;
    .locals 4

    .line 184
    iget p1, p0, Landroidx/window/embedding/SplitAttributes$SplitType$Companion$ratio$checkedRatio$1;->$ratio:F

    float-to-double v0, p1

    const-wide/16 v2, 0x0

    cmpg-double p1, v2, v0

    if-gtz p1, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double p1, v0, v2

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Float;

    move-result-object p1

    iget p0, p0, Landroidx/window/embedding/SplitAttributes$SplitType$Companion$ratio$checkedRatio$1;->$ratio:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {p1, p0}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 180
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/window/embedding/SplitAttributes$SplitType$Companion$ratio$checkedRatio$1;->invoke(F)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
