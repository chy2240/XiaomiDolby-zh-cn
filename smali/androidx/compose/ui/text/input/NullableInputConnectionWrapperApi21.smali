.class abstract Landroidx/compose/ui/text/input/NullableInputConnectionWrapperApi21;
.super Ljava/lang/Object;
.source "NullableInputConnectionWrapper.android.kt"

# interfaces
.implements Landroidx/compose/ui/text/input/NullableInputConnectionWrapper;


# instance fields
.field private delegate:Landroid/view/inputmethod/InputConnection;

.field private final onConnectionClosed:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Landroid/view/inputmethod/InputConnection;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p2, p0, Landroidx/compose/ui/text/input/NullableInputConnectionWrapperApi21;->onConnectionClosed:Lkotlin/jvm/functions/Function1;

    .line 89
    iput-object p1, p0, Landroidx/compose/ui/text/input/NullableInputConnectionWrapperApi21;->delegate:Landroid/view/inputmethod/InputConnection;

    return-void
.end method


# virtual methods
.method public beginBatchEdit()Z
    .locals 0

    .line 148
    iget-object p0, p0, Landroidx/compose/ui/text/input/NullableInputConnectionWrapperApi21;->delegate:Landroid/view/inputmethod/InputConnection;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public clearMetaKeyStates(I)Z
    .locals 0

    .line 154
    iget-object p0, p0, Landroidx/compose/ui/text/input/NullableInputConnectionWrapperApi21;->delegate:Landroid/view/inputmethod/InputConnection;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/view/inputmethod/InputConnection;->clearMetaKeyStates(I)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final closeConnection()V
    .locals 1

    .line 100
    iget-object v0, p0, Landroidx/compose/ui/text/input/NullableInputConnectionWrapperApi21;->delegate:Landroid/view/inputmethod/InputConnection;

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p0}, Landroidx/compose/ui/text/input/NullableInputConnectionWrapperApi21;->disposeDelegate()V

    .line 102
    iget-object v0, p0, Landroidx/compose/ui/text/input/NullableInputConnectionWrapperApi21;->onConnectionClosed:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method protected abstract closeDelegate(Landroid/view/inputmethod/InputConnection;)V
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .locals 0

    .line 136
    iget-object p0, p0, Landroidx/compose/ui/text/input/NullableInputConnectionWrapperApi21;->delegate:Landroid/view/inputmethod/InputConnection;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z
    .locals 0

    .line 139
    iget-object p0, p0, Landroidx/compose/ui/text/input/NullableInputConnectionWrapperApi21;->delegate:Landroid/view/inputmethod/InputConnection;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/view/inputmethod/InputConnection;->commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 0

    .line 133
    iget-object p0, p0, Landroidx/compose/ui/text/input/NullableInputConnectionWrapperApi21;->delegate:Landroid/view/inputmethod/InputConnection;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public deleteSurroundingText(II)Z
    .locals 0

    .line 120
    iget-object p0, p0, Landroidx/compose/ui/text/input/NullableInputConnectionWrapperApi21;->delegate:Landroid/view/inputmethod/InputConnection;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final disposeDelegate()V
    .locals 1

    .line 93
    iget-object v0, p0, Landroidx/compose/ui/text/input/NullableInputConnectionWrapperApi21;->delegate:Landroid/view/inputmethod/InputConnection;

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0, v0}, Landroidx/compose/ui/text/input/NullableInputConnectionWrapperApi21;->closeDelegate(Landroid/view/inputmethod/InputConnection;)V

    const/4 v0, 0x0

    .line 95
    iput-object v0, p0, Landroidx/compose/ui/text/input/NullableInputConnectionWrapperApi21;->delegate:Landroid/view/inputmethod/InputConnection;

    :cond_0
    return-void
.end method

.method public endBatchEdit()Z
    .locals 0

    .line 150
    iget-object p0, p0, Landroidx/compose/ui/text/input/NullableInputConnectionWrapperApi21;->delegate:Landroid/view/inputmethod/InputConnection;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public finishComposingText()Z
    .locals 0

    .line 130
    iget-object p0, p0, Landroidx/compose/ui/text/input/NullableInputConnectionWrapperApi21;->delegate:Landroid/view/inputmethod/InputConnection;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getCursorCapsMode(I)I
    .locals 0

    .line 114
    iget-object p0, p0, Landroidx/compose/ui/text/input/NullableInputConnectionWrapperApi21;->delegate:Landroid/view/inputmethod/InputConnection;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/view/inputmethod/InputConnection;->getCursorCapsMode(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected final getDelegate()Landroid/view/inputmethod/InputConnection;
    .locals 0

    .line 89
    iget-object p0, p0, Landroidx/compose/ui/text/input/NullableInputConnectionWrapperApi21;->delegate:Landroid/view/inputmethod/InputConnection;

    return-object p0
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 0

    .line 117
    iget-object p0, p0, Landroidx/compose/ui/text/input/NullableInputConnectionWrapperApi21;->delegate:Landroid/view/inputmethod/InputConnection;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    new-instance p0, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {p0}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    :cond_1
    return-object p0
.end method

.method public getSelectedText(I)Ljava/lang/CharSequence;
    .locals 0

    .line 112
    iget-object p0, p0, Landroidx/compose/ui/text/input/NullableInputConnectionWrapperApi21;->delegate:Landroid/view/inputmethod/InputConnection;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    const-string p0, ""

    :cond_1
    return-object p0
.end method

.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .locals 0

    .line 110
    iget-object p0, p0, Landroidx/compose/ui/text/input/NullableInputConnectionWrapperApi21;->delegate:Landroid/view/inputmethod/InputConnection;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .locals 0

    .line 107
    iget-object p0, p0, Landroidx/compose/ui/text/input/NullableInputConnectionWrapperApi21;->delegate:Landroid/view/inputmethod/InputConnection;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public performContextMenuAction(I)Z
    .locals 0

    .line 146
    iget-object p0, p0, Landroidx/compose/ui/text/input/NullableInputConnectionWrapperApi21;->delegate:Landroid/view/inputmethod/InputConnection;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/view/inputmethod/InputConnection;->performContextMenuAction(I)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public performEditorAction(I)Z
    .locals 0

    .line 143
    iget-object p0, p0, Landroidx/compose/ui/text/input/NullableInputConnectionWrapperApi21;->delegate:Landroid/view/inputmethod/InputConnection;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 0

    .line 160
    iget-object p0, p0, Landroidx/compose/ui/text/input/NullableInputConnectionWrapperApi21;->delegate:Landroid/view/inputmethod/InputConnection;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Landroid/view/inputmethod/InputConnection;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public reportFullscreenMode(Z)Z
    .locals 0

    .line 157
    iget-object p0, p0, Landroidx/compose/ui/text/input/NullableInputConnectionWrapperApi21;->delegate:Landroid/view/inputmethod/InputConnection;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/view/inputmethod/InputConnection;->reportFullscreenMode(Z)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public requestCursorUpdates(I)Z
    .locals 0

    .line 163
    iget-object p0, p0, Landroidx/compose/ui/text/input/NullableInputConnectionWrapperApi21;->delegate:Landroid/view/inputmethod/InputConnection;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/view/inputmethod/InputConnection;->requestCursorUpdates(I)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 152
    iget-object p0, p0, Landroidx/compose/ui/text/input/NullableInputConnectionWrapperApi21;->delegate:Landroid/view/inputmethod/InputConnection;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setComposingRegion(II)Z
    .locals 0

    .line 128
    iget-object p0, p0, Landroidx/compose/ui/text/input/NullableInputConnectionWrapperApi21;->delegate:Landroid/view/inputmethod/InputConnection;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 0

    .line 125
    iget-object p0, p0, Landroidx/compose/ui/text/input/NullableInputConnectionWrapperApi21;->delegate:Landroid/view/inputmethod/InputConnection;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setSelection(II)Z
    .locals 0

    .line 141
    iget-object p0, p0, Landroidx/compose/ui/text/input/NullableInputConnectionWrapperApi21;->delegate:Landroid/view/inputmethod/InputConnection;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
