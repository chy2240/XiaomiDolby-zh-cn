.class final Landroidx/compose/foundation/layout/PaddingKt$padding$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Padding.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $bottom:F

.field final synthetic $end:F

.field final synthetic $start:F

.field final synthetic $top:F


# direct methods
.method constructor <init>(FFFF)V
    .locals 0

    .line 0
    iput p1, p0, Landroidx/compose/foundation/layout/PaddingKt$padding$1;->$start:F

    iput p2, p0, Landroidx/compose/foundation/layout/PaddingKt$padding$1;->$top:F

    iput p3, p0, Landroidx/compose/foundation/layout/PaddingKt$padding$1;->$end:F

    iput p4, p0, Landroidx/compose/foundation/layout/PaddingKt$padding$1;->$bottom:F

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 53
    invoke-static {p1}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/layout/PaddingKt$padding$1;->invoke(Landroidx/compose/ui/platform/InspectorInfo;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/ui/platform/InspectorInfo;)V
    .locals 0

    const/4 p0, 0x0

    .line 61
    throw p0
.end method
