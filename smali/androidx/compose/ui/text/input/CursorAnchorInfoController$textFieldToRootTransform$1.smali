.class final Landroidx/compose/ui/text/input/CursorAnchorInfoController$textFieldToRootTransform$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CursorAnchorInfoController.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/text/input/CursorAnchorInfoController$textFieldToRootTransform$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/ui/text/input/CursorAnchorInfoController$textFieldToRootTransform$1;

    invoke-direct {v0}, Landroidx/compose/ui/text/input/CursorAnchorInfoController$textFieldToRootTransform$1;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/input/CursorAnchorInfoController$textFieldToRootTransform$1;->INSTANCE:Landroidx/compose/ui/text/input/CursorAnchorInfoController$textFieldToRootTransform$1;

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
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 47
    check-cast p1, Landroidx/compose/ui/graphics/Matrix;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/Matrix;->unbox-impl()[F

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/input/CursorAnchorInfoController$textFieldToRootTransform$1;->invoke-58bKbWc([F)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke-58bKbWc([F)V
    .locals 0

    .line 0
    return-void
.end method
