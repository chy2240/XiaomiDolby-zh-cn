.class final Landroidx/compose/ui/text/SaversKt$ColorSaver$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Savers.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/text/SaversKt$ColorSaver$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/ui/text/SaversKt$ColorSaver$1;

    invoke-direct {v0}, Landroidx/compose/ui/text/SaversKt$ColorSaver$1;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/SaversKt$ColorSaver$1;->INSTANCE:Landroidx/compose/ui/text/SaversKt$ColorSaver$1;

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
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 443
    check-cast p1, Landroidx/compose/runtime/saveable/SaverScope;

    check-cast p2, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {p2}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroidx/compose/ui/text/SaversKt$ColorSaver$1;->invoke-4WTKRHQ(Landroidx/compose/runtime/saveable/SaverScope;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke-4WTKRHQ(Landroidx/compose/runtime/saveable/SaverScope;J)Ljava/lang/Object;
    .locals 0

    const-wide/16 p0, 0x10

    cmp-long p0, p2, p0

    if-nez p0, :cond_0

    .line 446
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 448
    :cond_0
    invoke-static {p2, p3}, Landroidx/compose/ui/graphics/ColorKt;->toArgb-8_81llA(J)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_0
    return-object p0
.end method
