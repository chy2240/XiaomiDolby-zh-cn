.class public final Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest$createInputConnection$1;
.super Ljava/lang/Object;
.source "LegacyPlatformTextInputServiceAdapter.android.kt"

# interfaces
.implements Landroidx/compose/foundation/text/input/internal/InputEventCallback2;


# instance fields
.field final synthetic this$0:Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest$createInputConnection$1;->this$0:Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionClosed(Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;)V
    .locals 3

    .line 305
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest$createInputConnection$1;->this$0:Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;

    invoke-static {v0}, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->access$getIcs$p(Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 306
    iget-object v2, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest$createInputConnection$1;->this$0:Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;

    invoke-static {v2}, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->access$getIcs$p(Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 307
    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest$createInputConnection$1;->this$0:Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;

    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->access$getIcs$p(Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onEditCommands(Ljava/util/List;)V
    .locals 0

    .line 275
    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest$createInputConnection$1;->this$0:Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;

    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->access$getOnEditCommand$p(Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;)Lkotlin/jvm/functions/Function1;

    move-result-object p0

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onImeAction-KlQnJC8(I)V
    .locals 0

    .line 279
    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest$createInputConnection$1;->this$0:Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;

    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->access$getOnImeActionPerformed$p(Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;)Lkotlin/jvm/functions/Function1;

    move-result-object p0

    invoke-static {p1}, Landroidx/compose/ui/text/input/ImeAction;->box-impl(I)Landroidx/compose/ui/text/input/ImeAction;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;)V
    .locals 0

    .line 283
    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest$createInputConnection$1;->this$0:Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;

    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->access$getBaseInputConnection(Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;)Landroid/view/inputmethod/BaseInputConnection;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    return-void
.end method

.method public onRequestCursorAnchorInfo(ZZZZZZ)V
    .locals 7

    .line 294
    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest$createInputConnection$1;->this$0:Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;

    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->access$getCursorAnchorInfoController$p(Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;)Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->requestUpdate(ZZZZZZ)V

    return-void
.end method
