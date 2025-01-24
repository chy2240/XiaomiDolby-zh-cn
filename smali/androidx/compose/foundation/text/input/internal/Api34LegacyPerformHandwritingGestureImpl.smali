.class final Landroidx/compose/foundation/text/input/internal/Api34LegacyPerformHandwritingGestureImpl;
.super Ljava/lang/Object;
.source "RecordingInputConnection.android.kt"


# static fields
.field public static final INSTANCE:Landroidx/compose/foundation/text/input/internal/Api34LegacyPerformHandwritingGestureImpl;


# direct methods
.method public static synthetic $r8$lambda$aGp0jeiOUY8Ac53b9z6I_BIj-So(Ljava/util/function/IntConsumer;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/compose/foundation/text/input/internal/Api34LegacyPerformHandwritingGestureImpl;->performHandwritingGesture$lambda$0(Ljava/util/function/IntConsumer;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/foundation/text/input/internal/Api34LegacyPerformHandwritingGestureImpl;

    invoke-direct {v0}, Landroidx/compose/foundation/text/input/internal/Api34LegacyPerformHandwritingGestureImpl;-><init>()V

    sput-object v0, Landroidx/compose/foundation/text/input/internal/Api34LegacyPerformHandwritingGestureImpl;->INSTANCE:Landroidx/compose/foundation/text/input/internal/Api34LegacyPerformHandwritingGestureImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 587
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final performHandwritingGesture$lambda$0(Ljava/util/function/IntConsumer;I)V
    .locals 0

    .line 609
    invoke-interface {p0, p1}, Ljava/util/function/IntConsumer;->accept(I)V

    return-void
.end method


# virtual methods
.method public final performHandwritingGesture(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroid/view/inputmethod/HandwritingGesture;Landroidx/compose/ui/platform/ViewConfiguration;Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;Lkotlin/jvm/functions/Function1;)V
    .locals 6

    if-eqz p1, :cond_0

    .line 600
    sget-object v0, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->INSTANCE:Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move-object v4, p4

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->performHandwritingGesture$foundation_release(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroid/view/inputmethod/HandwritingGesture;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/platform/ViewConfiguration;Lkotlin/jvm/functions/Function1;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    :goto_0
    if-nez p6, :cond_1

    return-void

    :cond_1
    if-eqz p5, :cond_2

    .line 609
    new-instance p1, Landroidx/compose/foundation/text/input/internal/Api34LegacyPerformHandwritingGestureImpl$$ExternalSyntheticLambda0;

    invoke-direct {p1, p6, p0}, Landroidx/compose/foundation/text/input/internal/Api34LegacyPerformHandwritingGestureImpl$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/IntConsumer;I)V

    invoke-interface {p5, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 611
    :cond_2
    invoke-interface {p6, p0}, Ljava/util/function/IntConsumer;->accept(I)V

    :goto_1
    return-void
.end method

.method public final previewHandwritingGesture(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroid/view/inputmethod/PreviewableHandwritingGesture;Landroid/os/CancellationSignal;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 621
    sget-object p0, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->INSTANCE:Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;

    invoke-virtual {p0, p1, p3, p2, p4}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->previewHandwritingGesture$foundation_release(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroid/view/inputmethod/PreviewableHandwritingGesture;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroid/os/CancellationSignal;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
