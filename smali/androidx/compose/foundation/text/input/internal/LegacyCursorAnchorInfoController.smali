.class public final Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;
.super Ljava/lang/Object;
.source "LegacyCursorAnchorInfoController.android.kt"


# instance fields
.field private final androidMatrix:Landroid/graphics/Matrix;

.field private final builder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

.field private decorationBoxBounds:Landroidx/compose/ui/geometry/Rect;

.field private hasPendingImmediateRequest:Z

.field private includeCharacterBounds:Z

.field private includeEditorBounds:Z

.field private includeInsertionMarker:Z

.field private includeLineBounds:Z

.field private innerTextFieldBounds:Landroidx/compose/ui/geometry/Rect;

.field private final inputMethodManager:Landroidx/compose/foundation/text/input/internal/InputMethodManager;

.field private final localToScreen:Lkotlin/jvm/functions/Function1;

.field private final lock:Ljava/lang/Object;

.field private final matrix:[F

.field private monitorEnabled:Z

.field private offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

.field private textFieldValue:Landroidx/compose/ui/text/input/TextFieldValue;

.field private textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/input/internal/InputMethodManager;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->localToScreen:Lkotlin/jvm/functions/Function1;

    .line 29
    iput-object p2, p0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->inputMethodManager:Landroidx/compose/foundation/text/input/internal/InputMethodManager;

    .line 31
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->lock:Ljava/lang/Object;

    .line 47
    new-instance p1, Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-direct {p1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->builder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 48
    invoke-static {p1, p2, p1}, Landroidx/compose/ui/graphics/Matrix;->constructor-impl$default([FILkotlin/jvm/internal/DefaultConstructorMarker;)[F

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->matrix:[F

    .line 49
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->androidMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method private final updateCursorAnchorInfo()V
    .locals 12

    .line 138
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->inputMethodManager:Landroidx/compose/foundation/text/input/internal/InputMethodManager;

    invoke-interface {v0}, Landroidx/compose/foundation/text/input/internal/InputMethodManager;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->matrix:[F

    invoke-static {v0}, Landroidx/compose/ui/graphics/Matrix;->reset-impl([F)V

    .line 142
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->localToScreen:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->matrix:[F

    invoke-static {v1}, Landroidx/compose/ui/graphics/Matrix;->box-impl([F)Landroidx/compose/ui/graphics/Matrix;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->matrix:[F

    iget-object v1, p0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->decorationBoxBounds:Landroidx/compose/ui/geometry/Rect;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v1

    neg-float v1, v1

    iget-object v2, p0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->decorationBoxBounds:Landroidx/compose/ui/geometry/Rect;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v2

    neg-float v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/Matrix;->translate-impl([FFFF)V

    .line 145
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->androidMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->matrix:[F

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/AndroidMatrixConversions_androidKt;->setFrom-EL8BTi8(Landroid/graphics/Matrix;[F)V

    .line 147
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->inputMethodManager:Landroidx/compose/foundation/text/input/internal/InputMethodManager;

    .line 148
    iget-object v1, p0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->builder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 149
    iget-object v2, p0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->textFieldValue:Landroidx/compose/ui/text/input/TextFieldValue;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 150
    iget-object v3, p0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 151
    iget-object v4, p0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 152
    iget-object v5, p0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->androidMatrix:Landroid/graphics/Matrix;

    .line 153
    iget-object v6, p0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->innerTextFieldBounds:Landroidx/compose/ui/geometry/Rect;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 154
    iget-object v7, p0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->decorationBoxBounds:Landroidx/compose/ui/geometry/Rect;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 155
    iget-boolean v8, p0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->includeInsertionMarker:Z

    .line 156
    iget-boolean v9, p0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->includeCharacterBounds:Z

    .line 157
    iget-boolean v10, p0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->includeEditorBounds:Z

    .line 158
    iget-boolean v11, p0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->includeLineBounds:Z

    .line 148
    invoke-static/range {v1 .. v11}, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoBuilder_androidKt;->build(Landroid/view/inputmethod/CursorAnchorInfo$Builder;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/ui/text/TextLayoutResult;Landroid/graphics/Matrix;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;ZZZZ)Landroid/view/inputmethod/CursorAnchorInfo;

    move-result-object v1

    .line 147
    invoke-interface {v0, v1}, Landroidx/compose/foundation/text/input/internal/InputMethodManager;->updateCursorAnchorInfo(Landroid/view/inputmethod/CursorAnchorInfo;)V

    const/4 v0, 0x0

    .line 162
    iput-boolean v0, p0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->hasPendingImmediateRequest:Z

    return-void
.end method


# virtual methods
.method public final invalidate()V
    .locals 2

    .line 129
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 130
    :try_start_0
    iput-object v1, p0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->textFieldValue:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 131
    iput-object v1, p0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 132
    iput-object v1, p0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    .line 133
    iput-object v1, p0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->innerTextFieldBounds:Landroidx/compose/ui/geometry/Rect;

    .line 134
    iput-object v1, p0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->decorationBoxBounds:Landroidx/compose/ui/geometry/Rect;

    .line 135
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final requestUpdate(ZZZZZZ)V
    .locals 1

    .line 76
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 77
    :try_start_0
    iput-boolean p3, p0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->includeInsertionMarker:Z

    .line 78
    iput-boolean p4, p0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->includeCharacterBounds:Z

    .line 79
    iput-boolean p5, p0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->includeEditorBounds:Z

    .line 80
    iput-boolean p6, p0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->includeLineBounds:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 83
    iput-boolean p1, p0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->hasPendingImmediateRequest:Z

    .line 84
    iget-object p1, p0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->textFieldValue:Landroidx/compose/ui/text/input/TextFieldValue;

    if-eqz p1, :cond_0

    .line 85
    invoke-direct {p0}, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->updateCursorAnchorInfo()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 88
    :cond_0
    :goto_0
    iput-boolean p2, p0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->monitorEnabled:Z

    .line 89
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public final updateTextLayoutResult(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/ui/text/TextLayoutResult;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;)V
    .locals 1

    .line 109
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 110
    :try_start_0
    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->textFieldValue:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 111
    iput-object p2, p0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 112
    iput-object p3, p0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    .line 113
    iput-object p4, p0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->innerTextFieldBounds:Landroidx/compose/ui/geometry/Rect;

    .line 114
    iput-object p5, p0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->decorationBoxBounds:Landroidx/compose/ui/geometry/Rect;

    .line 116
    iget-boolean p1, p0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->hasPendingImmediateRequest:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->monitorEnabled:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 117
    :cond_0
    :goto_0
    invoke-direct {p0}, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->updateCursorAnchorInfo()V

    .line 119
    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method
