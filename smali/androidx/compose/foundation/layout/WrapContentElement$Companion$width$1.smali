.class final Landroidx/compose/foundation/layout/WrapContentElement$Companion$width$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Size.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic $align:Landroidx/compose/ui/Alignment$Horizontal;


# direct methods
.method constructor <init>(Landroidx/compose/ui/Alignment$Horizontal;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/foundation/layout/WrapContentElement$Companion$width$1;->$align:Landroidx/compose/ui/Alignment$Horizontal;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 964
    check-cast p1, Landroidx/compose/ui/unit/IntSize;

    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntSize;->unbox-impl()J

    move-result-wide v0

    check-cast p2, Landroidx/compose/ui/unit/LayoutDirection;

    invoke-virtual {p0, v0, v1, p2}, Landroidx/compose/foundation/layout/WrapContentElement$Companion$width$1;->invoke-5SAbXVA(JLandroidx/compose/ui/unit/LayoutDirection;)J

    move-result-wide p0

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/IntOffset;->box-impl(J)Landroidx/compose/ui/unit/IntOffset;

    move-result-object p0

    return-object p0
.end method

.method public final invoke-5SAbXVA(JLandroidx/compose/ui/unit/LayoutDirection;)J
    .locals 2

    .line 965
    iget-object p0, p0, Landroidx/compose/foundation/layout/WrapContentElement$Companion$width$1;->$align:Landroidx/compose/ui/Alignment$Horizontal;

    const/16 v0, 0x20

    shr-long/2addr p1, v0

    long-to-int p1, p1

    const/4 p2, 0x0

    invoke-interface {p0, p2, p1, p3}, Landroidx/compose/ui/Alignment$Horizontal;->align(IILandroidx/compose/ui/unit/LayoutDirection;)I

    move-result p0

    int-to-long p0, p0

    shl-long/2addr p0, v0

    int-to-long p2, p2

    const-wide v0, 0xffffffffL

    and-long/2addr p2, v0

    or-long/2addr p0, p2

    .line 32
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/IntOffset;->constructor-impl(J)J

    move-result-wide p0

    return-wide p0
.end method
