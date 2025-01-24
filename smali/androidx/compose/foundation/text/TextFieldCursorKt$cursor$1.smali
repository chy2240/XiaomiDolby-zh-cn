.class final Landroidx/compose/foundation/text/TextFieldCursorKt$cursor$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TextFieldCursor.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field final synthetic $cursorBrush:Landroidx/compose/ui/graphics/Brush;

.field final synthetic $offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

.field final synthetic $state:Landroidx/compose/foundation/text/LegacyTextFieldState;

.field final synthetic $value:Landroidx/compose/ui/text/input/TextFieldValue;


# direct methods
.method constructor <init>(Landroidx/compose/ui/graphics/Brush;Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/OffsetMapping;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/foundation/text/TextFieldCursorKt$cursor$1;->$cursorBrush:Landroidx/compose/ui/graphics/Brush;

    iput-object p2, p0, Landroidx/compose/foundation/text/TextFieldCursorKt$cursor$1;->$state:Landroidx/compose/foundation/text/LegacyTextFieldState;

    iput-object p3, p0, Landroidx/compose/foundation/text/TextFieldCursorKt$cursor$1;->$value:Landroidx/compose/ui/text/input/TextFieldValue;

    iput-object p4, p0, Landroidx/compose/foundation/text/TextFieldCursorKt$cursor$1;->$offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
    .locals 8

    const v0, -0x5097aed    # -6.4000205E35f

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "androidx.compose.foundation.text.cursor.<anonymous> (TextFieldCursor.kt:44)"

    .line 45
    invoke-static {v0, p3, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalCursorBlinkEnabled()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object p3

    .line 75
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p3

    .line 45
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    .line 46
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v0

    .line 1166
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_1

    .line 1167
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v1, v0, :cond_2

    .line 46
    :cond_1
    new-instance v1, Landroidx/compose/foundation/text/input/internal/CursorAnimationState;

    invoke-direct {v1, p3}, Landroidx/compose/foundation/text/input/internal/CursorAnimationState;-><init>(Z)V

    .line 1169
    invoke-interface {p2, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 46
    :cond_2
    move-object v3, v1

    check-cast v3, Landroidx/compose/foundation/text/input/internal/CursorAnimationState;

    .line 48
    iget-object p3, p0, Landroidx/compose/foundation/text/TextFieldCursorKt$cursor$1;->$cursorBrush:Landroidx/compose/ui/graphics/Brush;

    instance-of v0, p3, Landroidx/compose/ui/graphics/SolidColor;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    check-cast p3, Landroidx/compose/ui/graphics/SolidColor;

    invoke-virtual {p3}, Landroidx/compose/ui/graphics/SolidColor;->getValue-0d7_KjU()J

    move-result-wide v4

    const-wide/16 v6, 0x10

    cmp-long p3, v4, v6

    if-nez p3, :cond_3

    move p3, v1

    goto :goto_0

    :cond_3
    const/4 p3, 0x1

    .line 53
    :goto_0
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalWindowInfo()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    .line 75
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/platform/WindowInfo;

    .line 53
    invoke-interface {v0}, Landroidx/compose/ui/platform/WindowInfo;->isWindowFocused()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 55
    iget-object v0, p0, Landroidx/compose/foundation/text/TextFieldCursorKt$cursor$1;->$state:Landroidx/compose/foundation/text/LegacyTextFieldState;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/LegacyTextFieldState;->getHasFocus()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroidx/compose/foundation/text/TextFieldCursorKt$cursor$1;->$value:Landroidx/compose/ui/text/input/TextFieldValue;

    invoke-virtual {v0}, Landroidx/compose/ui/text/input/TextFieldValue;->getSelection-d9O1mEE()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz p3, :cond_8

    .line 57
    iget-object p3, p0, Landroidx/compose/foundation/text/TextFieldCursorKt$cursor$1;->$value:Landroidx/compose/ui/text/input/TextFieldValue;

    invoke-virtual {p3}, Landroidx/compose/ui/text/input/TextFieldValue;->getAnnotatedString()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object p3

    iget-object v0, p0, Landroidx/compose/foundation/text/TextFieldCursorKt$cursor$1;->$value:Landroidx/compose/ui/text/input/TextFieldValue;

    invoke-virtual {v0}, Landroidx/compose/ui/text/input/TextFieldValue;->getSelection-d9O1mEE()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/ui/text/TextRange;->box-impl(J)Landroidx/compose/ui/text/TextRange;

    move-result-object v0

    invoke-interface {p2, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    .line 1166
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v2, :cond_4

    .line 1167
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v4, v2, :cond_5

    .line 57
    :cond_4
    new-instance v4, Landroidx/compose/foundation/text/TextFieldCursorKt$cursor$1$1$1;

    const/4 v2, 0x0

    invoke-direct {v4, v3, v2}, Landroidx/compose/foundation/text/TextFieldCursorKt$cursor$1$1$1;-><init>(Landroidx/compose/foundation/text/input/internal/CursorAnimationState;Lkotlin/coroutines/Continuation;)V

    .line 1169
    invoke-interface {p2, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 57
    :cond_5
    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-static {p3, v0, v4, p2, v1}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 60
    invoke-interface {p2, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result p3

    iget-object v0, p0, Landroidx/compose/foundation/text/TextFieldCursorKt$cursor$1;->$offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr p3, v0

    iget-object v0, p0, Landroidx/compose/foundation/text/TextFieldCursorKt$cursor$1;->$value:Landroidx/compose/ui/text/input/TextFieldValue;

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr p3, v0

    iget-object v0, p0, Landroidx/compose/foundation/text/TextFieldCursorKt$cursor$1;->$state:Landroidx/compose/foundation/text/LegacyTextFieldState;

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr p3, v0

    iget-object v0, p0, Landroidx/compose/foundation/text/TextFieldCursorKt$cursor$1;->$cursorBrush:Landroidx/compose/ui/graphics/Brush;

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr p3, v0

    iget-object v4, p0, Landroidx/compose/foundation/text/TextFieldCursorKt$cursor$1;->$offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    iget-object v5, p0, Landroidx/compose/foundation/text/TextFieldCursorKt$cursor$1;->$value:Landroidx/compose/ui/text/input/TextFieldValue;

    iget-object v6, p0, Landroidx/compose/foundation/text/TextFieldCursorKt$cursor$1;->$state:Landroidx/compose/foundation/text/LegacyTextFieldState;

    iget-object v7, p0, Landroidx/compose/foundation/text/TextFieldCursorKt$cursor$1;->$cursorBrush:Landroidx/compose/ui/graphics/Brush;

    .line 1166
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object p0

    if-nez p3, :cond_6

    .line 1167
    sget-object p3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p3

    if-ne p0, p3, :cond_7

    .line 60
    :cond_6
    new-instance p0, Landroidx/compose/foundation/text/TextFieldCursorKt$cursor$1$2$1;

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Landroidx/compose/foundation/text/TextFieldCursorKt$cursor$1$2$1;-><init>(Landroidx/compose/foundation/text/input/internal/CursorAnimationState;Landroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/graphics/Brush;)V

    .line 1169
    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 60
    :cond_7
    check-cast p0, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, p0}, Landroidx/compose/ui/draw/DrawModifierKt;->drawWithContent(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    goto :goto_1

    .line 88
    :cond_8
    sget-object p0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 54
    :goto_1
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_9
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 44
    check-cast p1, Landroidx/compose/ui/Modifier;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/text/TextFieldCursorKt$cursor$1;->invoke(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method
