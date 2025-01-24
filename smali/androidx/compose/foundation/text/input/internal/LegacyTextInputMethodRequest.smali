.class public final Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;
.super Ljava/lang/Object;
.source "LegacyPlatformTextInputServiceAdapter.android.kt"

# interfaces
.implements Landroidx/compose/ui/platform/PlatformTextInputMethodRequest;


# instance fields
.field private final baseInputConnection$delegate:Lkotlin/Lazy;

.field private final cursorAnchorInfoController:Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;

.field private focusedRect:Landroid/graphics/Rect;

.field private ics:Ljava/util/List;

.field private imeOptions:Landroidx/compose/ui/text/input/ImeOptions;

.field private final inputMethodManager:Landroidx/compose/foundation/text/input/internal/InputMethodManager;

.field private legacyTextFieldState:Landroidx/compose/foundation/text/LegacyTextFieldState;

.field private onEditCommand:Lkotlin/jvm/functions/Function1;

.field private onImeActionPerformed:Lkotlin/jvm/functions/Function1;

.field private state:Landroidx/compose/ui/text/input/TextFieldValue;

.field private textFieldSelectionManager:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

.field private final view:Landroid/view/View;

.field private viewConfiguration:Landroidx/compose/ui/platform/ViewConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/input/internal/InputMethodManager;)V
    .locals 7

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->view:Landroid/view/View;

    .line 206
    iput-object p3, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->inputMethodManager:Landroidx/compose/foundation/text/input/internal/InputMethodManager;

    .line 213
    sget-object p1, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest$onEditCommand$1;->INSTANCE:Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest$onEditCommand$1;

    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->onEditCommand:Lkotlin/jvm/functions/Function1;

    .line 214
    sget-object p1, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest$onImeActionPerformed$1;->INSTANCE:Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest$onImeActionPerformed$1;

    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->onImeActionPerformed:Lkotlin/jvm/functions/Function1;

    .line 220
    new-instance p1, Landroidx/compose/ui/text/input/TextFieldValue;

    sget-object v0, Landroidx/compose/ui/text/TextRange;->Companion:Landroidx/compose/ui/text/TextRange$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/TextRange$Companion;->getZero-d9O1mEE()J

    move-result-wide v2

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v1, ""

    const/4 v4, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/text/input/TextFieldValue;-><init>(Ljava/lang/String;JLandroidx/compose/ui/text/TextRange;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->state:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 223
    sget-object p1, Landroidx/compose/ui/text/input/ImeOptions;->Companion:Landroidx/compose/ui/text/input/ImeOptions$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/text/input/ImeOptions$Companion;->getDefault()Landroidx/compose/ui/text/input/ImeOptions;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->imeOptions:Landroidx/compose/ui/text/input/ImeOptions;

    .line 231
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->ics:Ljava/util/List;

    .line 235
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest$baseInputConnection$2;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest$baseInputConnection$2;-><init>(Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;)V

    invoke-static {p1, v0}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->baseInputConnection$delegate:Lkotlin/Lazy;

    .line 241
    new-instance p1, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;

    invoke-direct {p1, p2, p3}, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/input/internal/InputMethodManager;)V

    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->cursorAnchorInfoController:Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;

    return-void
.end method

.method public static final synthetic access$getBaseInputConnection(Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;)Landroid/view/inputmethod/BaseInputConnection;
    .locals 0

    .line 203
    invoke-direct {p0}, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->getBaseInputConnection()Landroid/view/inputmethod/BaseInputConnection;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCursorAnchorInfoController$p(Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;)Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;
    .locals 0

    .line 203
    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->cursorAnchorInfoController:Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;

    return-object p0
.end method

.method public static final synthetic access$getIcs$p(Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;)Ljava/util/List;
    .locals 0

    .line 203
    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->ics:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getOnEditCommand$p(Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 203
    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->onEditCommand:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic access$getOnImeActionPerformed$p(Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 203
    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->onImeActionPerformed:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method private final getBaseInputConnection()Landroid/view/inputmethod/BaseInputConnection;
    .locals 0

    .line 234
    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->baseInputConnection$delegate:Lkotlin/Lazy;

    .line 235
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/BaseInputConnection;

    return-object p0
.end method

.method private final restartInputImmediately()V
    .locals 0

    .line 423
    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->inputMethodManager:Landroidx/compose/foundation/text/input/internal/InputMethodManager;

    invoke-interface {p0}, Landroidx/compose/foundation/text/input/internal/InputMethodManager;->restartInput()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 0

    .line 203
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->createInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;

    move-result-object p0

    return-object p0
.end method

.method public createInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;
    .locals 17

    move-object/from16 v0, p0

    .line 266
    iget-object v1, v0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->state:Landroidx/compose/ui/text/input/TextFieldValue;

    invoke-virtual {v1}, Landroidx/compose/ui/text/input/TextFieldValue;->getText()Ljava/lang/String;

    move-result-object v3

    iget-object v1, v0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->state:Landroidx/compose/ui/text/input/TextFieldValue;

    invoke-virtual {v1}, Landroidx/compose/ui/text/input/TextFieldValue;->getSelection-d9O1mEE()J

    move-result-wide v4

    iget-object v6, v0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->imeOptions:Landroidx/compose/ui/text/input/ImeOptions;

    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v9}, Landroidx/compose/foundation/text/input/internal/EditorInfo_androidKt;->update-pLxbY9I$default(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;JLandroidx/compose/ui/text/input/ImeOptions;[Ljava/lang/String;ILjava/lang/Object;)V

    .line 267
    invoke-static/range {p1 .. p1}, Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter_androidKt;->access$updateWithEmojiCompat(Landroid/view/inputmethod/EditorInfo;)V

    .line 270
    iget-object v11, v0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->state:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 271
    iget-object v1, v0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->imeOptions:Landroidx/compose/ui/text/input/ImeOptions;

    invoke-virtual {v1}, Landroidx/compose/ui/text/input/ImeOptions;->getAutoCorrect()Z

    move-result v13

    .line 273
    new-instance v12, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest$createInputConnection$1;

    invoke-direct {v12, v0}, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest$createInputConnection$1;-><init>(Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;)V

    .line 313
    iget-object v14, v0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->legacyTextFieldState:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 314
    iget-object v15, v0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->textFieldSelectionManager:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 315
    iget-object v1, v0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->viewConfiguration:Landroidx/compose/ui/platform/ViewConfiguration;

    .line 269
    new-instance v2, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;

    move-object v10, v2

    move-object/from16 v16, v1

    invoke-direct/range {v10 .. v16}, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;-><init>(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/foundation/text/input/internal/InputEventCallback2;ZLandroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/platform/ViewConfiguration;)V

    .line 318
    iget-object v0, v0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->ics:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v2
.end method

.method public final getView()Landroid/view/View;
    .locals 0

    .line 204
    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->view:Landroid/view/View;

    return-object p0
.end method

.method public final notifyFocusedRect(Landroidx/compose/ui/geometry/Rect;)V
    .locals 4

    .line 382
    new-instance v0, Landroid/graphics/Rect;

    .line 383
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v1

    invoke-static {v1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v1

    .line 384
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v2

    invoke-static {v2}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v2

    .line 385
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v3

    invoke-static {v3}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v3

    .line 386
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result p1

    invoke-static {p1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p1

    .line 382
    invoke-direct {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 381
    iput-object v0, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->focusedRect:Landroid/graphics/Rect;

    .line 395
    iget-object p1, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->ics:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 396
    iget-object p1, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->focusedRect:Landroid/graphics/Rect;

    if-eqz p1, :cond_0

    .line 399
    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->view:Landroid/view/View;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    :cond_0
    return-void
.end method

.method public final startInput(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter$LegacyPlatformTextInputNode;Landroidx/compose/ui/text/input/ImeOptions;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 256
    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->state:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 257
    iput-object p3, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->imeOptions:Landroidx/compose/ui/text/input/ImeOptions;

    .line 258
    iput-object p4, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->onEditCommand:Lkotlin/jvm/functions/Function1;

    .line 259
    iput-object p5, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->onImeActionPerformed:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 260
    invoke-interface {p2}, Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter$LegacyPlatformTextInputNode;->getLegacyTextFieldState()Landroidx/compose/foundation/text/LegacyTextFieldState;

    move-result-object p3

    goto :goto_0

    :cond_0
    move-object p3, p1

    :goto_0
    iput-object p3, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->legacyTextFieldState:Landroidx/compose/foundation/text/LegacyTextFieldState;

    if-eqz p2, :cond_1

    .line 261
    invoke-interface {p2}, Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter$LegacyPlatformTextInputNode;->getTextFieldSelectionManager()Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    move-result-object p3

    goto :goto_1

    :cond_1
    move-object p3, p1

    :goto_1
    iput-object p3, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->textFieldSelectionManager:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    if-eqz p2, :cond_2

    .line 262
    invoke-interface {p2}, Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter$LegacyPlatformTextInputNode;->getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;

    move-result-object p1

    :cond_2
    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->viewConfiguration:Landroidx/compose/ui/platform/ViewConfiguration;

    return-void
.end method

.method public final updateState(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/TextFieldValue;)V
    .locals 6

    .line 334
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->state:Landroidx/compose/ui/text/input/TextFieldValue;

    invoke-virtual {v0}, Landroidx/compose/ui/text/input/TextFieldValue;->getSelection-d9O1mEE()J

    move-result-wide v0

    invoke-virtual {p2}, Landroidx/compose/ui/text/input/TextFieldValue;->getSelection-d9O1mEE()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/text/TextRange;->equals-impl0(JJ)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 335
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->state:Landroidx/compose/ui/text/input/TextFieldValue;

    invoke-virtual {v0}, Landroidx/compose/ui/text/input/TextFieldValue;->getComposition-MzsxiRA()Landroidx/compose/ui/text/TextRange;

    move-result-object v0

    invoke-virtual {p2}, Landroidx/compose/ui/text/input/TextFieldValue;->getComposition-MzsxiRA()Landroidx/compose/ui/text/TextRange;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 336
    :goto_1
    iput-object p2, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->state:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 338
    iget-object v2, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->ics:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move v3, v1

    :goto_2
    if-ge v3, v2, :cond_3

    .line 339
    iget-object v4, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->ics:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;

    if-nez v4, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v4, p2}, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;->setTextFieldValue$foundation_release(Landroidx/compose/ui/text/input/TextFieldValue;)V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 341
    :cond_3
    iget-object v2, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->cursorAnchorInfoController:Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;

    invoke-virtual {v2}, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->invalidate()V

    .line 343
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v0, :cond_6

    .line 349
    iget-object p1, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->inputMethodManager:Landroidx/compose/foundation/text/input/internal/InputMethodManager;

    .line 350
    invoke-virtual {p2}, Landroidx/compose/ui/text/input/TextFieldValue;->getSelection-d9O1mEE()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v0

    .line 351
    invoke-virtual {p2}, Landroidx/compose/ui/text/input/TextFieldValue;->getSelection-d9O1mEE()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result p2

    .line 352
    iget-object v1, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->state:Landroidx/compose/ui/text/input/TextFieldValue;

    invoke-virtual {v1}, Landroidx/compose/ui/text/input/TextFieldValue;->getComposition-MzsxiRA()Landroidx/compose/ui/text/TextRange;

    move-result-object v1

    const/4 v2, -0x1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroidx/compose/ui/text/TextRange;->unbox-impl()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v1

    goto :goto_4

    :cond_4
    move v1, v2

    .line 353
    :goto_4
    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->state:Landroidx/compose/ui/text/input/TextFieldValue;

    invoke-virtual {p0}, Landroidx/compose/ui/text/input/TextFieldValue;->getComposition-MzsxiRA()Landroidx/compose/ui/text/TextRange;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroidx/compose/ui/text/TextRange;->unbox-impl()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v2

    .line 349
    :cond_5
    invoke-interface {p1, v0, p2, v1, v2}, Landroidx/compose/foundation/text/input/internal/InputMethodManager;->updateSelection(IIII)V

    :cond_6
    return-void

    :cond_7
    if-eqz p1, :cond_9

    .line 361
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/TextFieldValue;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroidx/compose/ui/text/input/TextFieldValue;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 364
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/TextFieldValue;->getSelection-d9O1mEE()J

    move-result-wide v2

    invoke-virtual {p2}, Landroidx/compose/ui/text/input/TextFieldValue;->getSelection-d9O1mEE()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/text/TextRange;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Landroidx/compose/ui/text/input/TextFieldValue;->getComposition-MzsxiRA()Landroidx/compose/ui/text/TextRange;

    move-result-object p1

    invoke-virtual {p2}, Landroidx/compose/ui/text/input/TextFieldValue;->getComposition-MzsxiRA()Landroidx/compose/ui/text/TextRange;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 372
    :cond_8
    invoke-direct {p0}, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->restartInputImmediately()V

    goto :goto_6

    .line 374
    :cond_9
    iget-object p1, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->ics:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_5
    if-ge v1, p1, :cond_b

    .line 375
    iget-object p2, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->ics:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;

    if-eqz p2, :cond_a

    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->state:Landroidx/compose/ui/text/input/TextFieldValue;

    iget-object v2, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->inputMethodManager:Landroidx/compose/foundation/text/input/internal/InputMethodManager;

    invoke-virtual {p2, v0, v2}, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;->updateInputState(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/foundation/text/input/internal/InputMethodManager;)V

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_b
    :goto_6
    return-void
.end method

.method public final updateTextLayoutResult(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/ui/text/TextLayoutResult;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;)V
    .locals 6

    .line 411
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->cursorAnchorInfoController:Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->updateTextLayoutResult(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/ui/text/TextLayoutResult;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;)V

    return-void
.end method
