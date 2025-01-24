.class final Landroidx/compose/foundation/text/TextFieldScrollerPosition$Companion$Saver$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TextFieldScroll.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# static fields
.field public static final INSTANCE:Landroidx/compose/foundation/text/TextFieldScrollerPosition$Companion$Saver$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/foundation/text/TextFieldScrollerPosition$Companion$Saver$1;

    invoke-direct {v0}, Landroidx/compose/foundation/text/TextFieldScrollerPosition$Companion$Saver$1;-><init>()V

    sput-object v0, Landroidx/compose/foundation/text/TextFieldScrollerPosition$Companion$Saver$1;->INSTANCE:Landroidx/compose/foundation/text/TextFieldScrollerPosition$Companion$Saver$1;

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
    .locals 0

    .line 370
    check-cast p1, Landroidx/compose/runtime/saveable/SaverScope;

    check-cast p2, Landroidx/compose/foundation/text/TextFieldScrollerPosition;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/text/TextFieldScrollerPosition$Companion$Saver$1;->invoke(Landroidx/compose/runtime/saveable/SaverScope;Landroidx/compose/foundation/text/TextFieldScrollerPosition;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/saveable/SaverScope;Landroidx/compose/foundation/text/TextFieldScrollerPosition;)Ljava/util/List;
    .locals 0

    .line 371
    invoke-virtual {p2}, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->getOffset()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p2}, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->getOrientation()Landroidx/compose/foundation/gestures/Orientation;

    move-result-object p1

    sget-object p2, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
