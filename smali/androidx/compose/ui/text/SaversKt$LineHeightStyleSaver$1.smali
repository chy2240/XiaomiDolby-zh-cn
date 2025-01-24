.class final Landroidx/compose/ui/text/SaversKt$LineHeightStyleSaver$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Savers.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/text/SaversKt$LineHeightStyleSaver$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/ui/text/SaversKt$LineHeightStyleSaver$1;

    invoke-direct {v0}, Landroidx/compose/ui/text/SaversKt$LineHeightStyleSaver$1;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/SaversKt$LineHeightStyleSaver$1;->INSTANCE:Landroidx/compose/ui/text/SaversKt$LineHeightStyleSaver$1;

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
.method public final invoke(Landroidx/compose/runtime/saveable/SaverScope;Landroidx/compose/ui/text/style/LineHeightStyle;)Ljava/lang/Object;
    .locals 0

    .line 530
    invoke-virtual {p2}, Landroidx/compose/ui/text/style/LineHeightStyle;->getAlignment-PIaL0Z0()F

    move-result p0

    invoke-static {p0}, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->box-impl(F)Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2}, Landroidx/compose/ui/text/style/LineHeightStyle;->getTrim-EVpEnUU()I

    move-result p1

    invoke-static {p1}, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;->box-impl(I)Landroidx/compose/ui/text/style/LineHeightStyle$Trim;

    move-result-object p1

    invoke-static {p1}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2}, Landroidx/compose/ui/text/style/LineHeightStyle;->getMode-lzQqcRY()I

    move-result p2

    invoke-static {p2}, Landroidx/compose/ui/text/style/LineHeightStyle$Mode;->box-impl(I)Landroidx/compose/ui/text/style/LineHeightStyle$Mode;

    move-result-object p2

    invoke-static {p2}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 529
    check-cast p1, Landroidx/compose/runtime/saveable/SaverScope;

    check-cast p2, Landroidx/compose/ui/text/style/LineHeightStyle;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/text/SaversKt$LineHeightStyleSaver$1;->invoke(Landroidx/compose/runtime/saveable/SaverScope;Landroidx/compose/ui/text/style/LineHeightStyle;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
