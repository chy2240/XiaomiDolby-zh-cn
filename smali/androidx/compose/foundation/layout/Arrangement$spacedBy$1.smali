.class final Landroidx/compose/foundation/layout/Arrangement$spacedBy$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Arrangement.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# static fields
.field public static final INSTANCE:Landroidx/compose/foundation/layout/Arrangement$spacedBy$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/foundation/layout/Arrangement$spacedBy$1;

    invoke-direct {v0}, Landroidx/compose/foundation/layout/Arrangement$spacedBy$1;-><init>()V

    sput-object v0, Landroidx/compose/foundation/layout/Arrangement$spacedBy$1;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement$spacedBy$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(ILandroidx/compose/ui/unit/LayoutDirection;)Ljava/lang/Integer;
    .locals 1

    .line 298
    sget-object p0, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/Alignment$Companion;->getStart()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1, p2}, Landroidx/compose/ui/Alignment$Horizontal;->align(IILandroidx/compose/ui/unit/LayoutDirection;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 297
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Landroidx/compose/ui/unit/LayoutDirection;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/layout/Arrangement$spacedBy$1;->invoke(ILandroidx/compose/ui/unit/LayoutDirection;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
