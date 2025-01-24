.class final Landroidx/compose/foundation/text/input/internal/RecordingInputConnection$performHandwritingGesture$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RecordingInputConnection.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic this$0:Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection$performHandwritingGesture$1;->this$0:Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 458
    check-cast p1, Landroidx/compose/ui/text/input/EditCommand;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection$performHandwritingGesture$1;->invoke(Landroidx/compose/ui/text/input/EditCommand;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/ui/text/input/EditCommand;)V
    .locals 0

    .line 466
    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection$performHandwritingGesture$1;->this$0:Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;

    invoke-static {p0, p1}, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;->access$addEditCommandWithBatch(Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;Landroidx/compose/ui/text/input/EditCommand;)V

    return-void
.end method
