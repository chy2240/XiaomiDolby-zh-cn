.class final Landroidx/compose/ui/text/Savers_androidKt$TextMotionSaver$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Savers.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/text/Savers_androidKt$TextMotionSaver$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/ui/text/Savers_androidKt$TextMotionSaver$1;

    invoke-direct {v0}, Landroidx/compose/ui/text/Savers_androidKt$TextMotionSaver$1;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/Savers_androidKt$TextMotionSaver$1;->INSTANCE:Landroidx/compose/ui/text/Savers_androidKt$TextMotionSaver$1;

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
.method public final invoke(Landroidx/compose/runtime/saveable/SaverScope;Landroidx/compose/ui/text/style/TextMotion;)Ljava/lang/Object;
    .locals 0

    .line 49
    invoke-virtual {p2}, Landroidx/compose/ui/text/style/TextMotion;->getLinearity-4e0Vf04$ui_text_release()I

    move-result p0

    invoke-static {p0}, Landroidx/compose/ui/text/style/TextMotion$Linearity;->box-impl(I)Landroidx/compose/ui/text/style/TextMotion$Linearity;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2}, Landroidx/compose/ui/text/style/TextMotion;->getSubpixelTextPositioning$ui_text_release()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 48
    check-cast p1, Landroidx/compose/runtime/saveable/SaverScope;

    check-cast p2, Landroidx/compose/ui/text/style/TextMotion;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/text/Savers_androidKt$TextMotionSaver$1;->invoke(Landroidx/compose/runtime/saveable/SaverScope;Landroidx/compose/ui/text/style/TextMotion;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
