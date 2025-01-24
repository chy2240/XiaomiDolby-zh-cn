.class public final Landroidx/compose/foundation/gestures/LongPressResult$Released;
.super Landroidx/compose/foundation/gestures/LongPressResult;
.source "TapGestureDetector.kt"


# instance fields
.field private final finalUpChange:Landroidx/compose/ui/input/pointer/PointerInputChange;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/input/pointer/PointerInputChange;)V
    .locals 1

    const/4 v0, 0x0

    .line 428
    invoke-direct {p0, v0}, Landroidx/compose/foundation/gestures/LongPressResult;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Landroidx/compose/foundation/gestures/LongPressResult$Released;->finalUpChange:Landroidx/compose/ui/input/pointer/PointerInputChange;

    return-void
.end method


# virtual methods
.method public final getFinalUpChange()Landroidx/compose/ui/input/pointer/PointerInputChange;
    .locals 0

    .line 428
    iget-object p0, p0, Landroidx/compose/foundation/gestures/LongPressResult$Released;->finalUpChange:Landroidx/compose/ui/input/pointer/PointerInputChange;

    return-object p0
.end method
