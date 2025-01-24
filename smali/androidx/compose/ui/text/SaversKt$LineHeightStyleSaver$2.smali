.class final Landroidx/compose/ui/text/SaversKt$LineHeightStyleSaver$2;
.super Lkotlin/jvm/internal/Lambda;
.source "Savers.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/text/SaversKt$LineHeightStyleSaver$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/ui/text/SaversKt$LineHeightStyleSaver$2;

    invoke-direct {v0}, Landroidx/compose/ui/text/SaversKt$LineHeightStyleSaver$2;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/SaversKt$LineHeightStyleSaver$2;->INSTANCE:Landroidx/compose/ui/text/SaversKt$LineHeightStyleSaver$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Landroidx/compose/ui/text/style/LineHeightStyle;
    .locals 4

    .line 532
    const-string p0, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/List;

    .line 533
    new-instance p0, Landroidx/compose/ui/text/style/LineHeightStyle;

    const/4 v0, 0x0

    .line 534
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 93
    check-cast v0, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->unbox-impl()F

    move-result v0

    const/4 v2, 0x1

    .line 535
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 93
    check-cast v2, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;->unbox-impl()I

    move-result v2

    const/4 v3, 0x2

    .line 536
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 93
    check-cast p1, Landroidx/compose/ui/text/style/LineHeightStyle$Mode;

    goto :goto_2

    :cond_2
    move-object p1, v1

    :goto_2
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/compose/ui/text/style/LineHeightStyle$Mode;->unbox-impl()I

    move-result p1

    .line 533
    invoke-direct {p0, v0, v2, p1, v1}, Landroidx/compose/ui/text/style/LineHeightStyle;-><init>(FIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 529
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/SaversKt$LineHeightStyleSaver$2;->invoke(Ljava/lang/Object;)Landroidx/compose/ui/text/style/LineHeightStyle;

    move-result-object p0

    return-object p0
.end method
