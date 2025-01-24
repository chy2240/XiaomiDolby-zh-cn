.class final Landroidx/compose/ui/text/Savers_androidKt$TextMotionSaver$2;
.super Lkotlin/jvm/internal/Lambda;
.source "Savers.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/text/Savers_androidKt$TextMotionSaver$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/ui/text/Savers_androidKt$TextMotionSaver$2;

    invoke-direct {v0}, Landroidx/compose/ui/text/Savers_androidKt$TextMotionSaver$2;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/Savers_androidKt$TextMotionSaver$2;->INSTANCE:Landroidx/compose/ui/text/Savers_androidKt$TextMotionSaver$2;

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
.method public final invoke(Ljava/lang/Object;)Landroidx/compose/ui/text/style/TextMotion;
    .locals 3

    .line 51
    const-string p0, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/List;

    .line 52
    new-instance p0, Landroidx/compose/ui/text/style/TextMotion;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 93
    check-cast v0, Landroidx/compose/ui/text/style/TextMotion$Linearity;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextMotion$Linearity;->unbox-impl()I

    move-result v0

    const/4 v2, 0x1

    .line 52
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 93
    check-cast p1, Ljava/lang/Boolean;

    goto :goto_1

    :cond_1
    move-object p1, v1

    :goto_1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 52
    invoke-direct {p0, v0, p1, v1}, Landroidx/compose/ui/text/style/TextMotion;-><init>(IZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/Savers_androidKt$TextMotionSaver$2;->invoke(Ljava/lang/Object;)Landroidx/compose/ui/text/style/TextMotion;

    move-result-object p0

    return-object p0
.end method
