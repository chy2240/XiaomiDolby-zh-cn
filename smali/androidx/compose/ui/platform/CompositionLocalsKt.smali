.class public abstract Landroidx/compose/ui/platform/CompositionLocalsKt;
.super Ljava/lang/Object;
.source "CompositionLocals.kt"


# static fields
.field private static final LocalAccessibilityManager:Landroidx/compose/runtime/ProvidableCompositionLocal;

.field private static final LocalAutofill:Landroidx/compose/runtime/ProvidableCompositionLocal;

.field private static final LocalAutofillTree:Landroidx/compose/runtime/ProvidableCompositionLocal;

.field private static final LocalClipboardManager:Landroidx/compose/runtime/ProvidableCompositionLocal;

.field private static final LocalCursorBlinkEnabled:Landroidx/compose/runtime/ProvidableCompositionLocal;

.field private static final LocalDensity:Landroidx/compose/runtime/ProvidableCompositionLocal;

.field private static final LocalFocusManager:Landroidx/compose/runtime/ProvidableCompositionLocal;

.field private static final LocalFontFamilyResolver:Landroidx/compose/runtime/ProvidableCompositionLocal;

.field private static final LocalFontLoader:Landroidx/compose/runtime/ProvidableCompositionLocal;

.field private static final LocalGraphicsContext:Landroidx/compose/runtime/ProvidableCompositionLocal;

.field private static final LocalHapticFeedback:Landroidx/compose/runtime/ProvidableCompositionLocal;

.field private static final LocalInputModeManager:Landroidx/compose/runtime/ProvidableCompositionLocal;

.field private static final LocalLayoutDirection:Landroidx/compose/runtime/ProvidableCompositionLocal;

.field private static final LocalPointerIconService:Landroidx/compose/runtime/ProvidableCompositionLocal;

.field private static final LocalProvidableScrollCaptureInProgress:Landroidx/compose/runtime/ProvidableCompositionLocal;

.field private static final LocalSoftwareKeyboardController:Landroidx/compose/runtime/ProvidableCompositionLocal;

.field private static final LocalTextInputService:Landroidx/compose/runtime/ProvidableCompositionLocal;

.field private static final LocalTextToolbar:Landroidx/compose/runtime/ProvidableCompositionLocal;

.field private static final LocalUriHandler:Landroidx/compose/runtime/ProvidableCompositionLocal;

.field private static final LocalViewConfiguration:Landroidx/compose/runtime/ProvidableCompositionLocal;

.field private static final LocalWindowInfo:Landroidx/compose/runtime/ProvidableCompositionLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 48
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt$LocalAccessibilityManager$1;->INSTANCE:Landroidx/compose/ui/platform/CompositionLocalsKt$LocalAccessibilityManager$1;

    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->staticCompositionLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalAccessibilityManager:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 57
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt$LocalAutofill$1;->INSTANCE:Landroidx/compose/ui/platform/CompositionLocalsKt$LocalAutofill$1;

    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->staticCompositionLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalAutofill:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 66
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt$LocalAutofillTree$1;->INSTANCE:Landroidx/compose/ui/platform/CompositionLocalsKt$LocalAutofillTree$1;

    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->staticCompositionLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalAutofillTree:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 70
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt$LocalClipboardManager$1;->INSTANCE:Landroidx/compose/ui/platform/CompositionLocalsKt$LocalClipboardManager$1;

    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->staticCompositionLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalClipboardManager:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 83
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt$LocalGraphicsContext$1;->INSTANCE:Landroidx/compose/ui/platform/CompositionLocalsKt$LocalGraphicsContext$1;

    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->staticCompositionLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalGraphicsContext:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 92
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt$LocalDensity$1;->INSTANCE:Landroidx/compose/ui/platform/CompositionLocalsKt$LocalDensity$1;

    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->staticCompositionLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 96
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt$LocalFocusManager$1;->INSTANCE:Landroidx/compose/ui/platform/CompositionLocalsKt$LocalFocusManager$1;

    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->staticCompositionLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalFocusManager:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 106
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt$LocalFontLoader$1;->INSTANCE:Landroidx/compose/ui/platform/CompositionLocalsKt$LocalFontLoader$1;

    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->staticCompositionLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalFontLoader:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 110
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt$LocalFontFamilyResolver$1;->INSTANCE:Landroidx/compose/ui/platform/CompositionLocalsKt$LocalFontFamilyResolver$1;

    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->staticCompositionLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalFontFamilyResolver:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 114
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt$LocalHapticFeedback$1;->INSTANCE:Landroidx/compose/ui/platform/CompositionLocalsKt$LocalHapticFeedback$1;

    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->staticCompositionLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalHapticFeedback:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 121
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt$LocalInputModeManager$1;->INSTANCE:Landroidx/compose/ui/platform/CompositionLocalsKt$LocalInputModeManager$1;

    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->staticCompositionLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalInputModeManager:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 125
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt$LocalLayoutDirection$1;->INSTANCE:Landroidx/compose/ui/platform/CompositionLocalsKt$LocalLayoutDirection$1;

    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->staticCompositionLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalLayoutDirection:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 129
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt$LocalTextInputService$1;->INSTANCE:Landroidx/compose/ui/platform/CompositionLocalsKt$LocalTextInputService$1;

    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->staticCompositionLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalTextInputService:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 137
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt$LocalSoftwareKeyboardController$1;->INSTANCE:Landroidx/compose/ui/platform/CompositionLocalsKt$LocalSoftwareKeyboardController$1;

    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->staticCompositionLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalSoftwareKeyboardController:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 141
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt$LocalTextToolbar$1;->INSTANCE:Landroidx/compose/ui/platform/CompositionLocalsKt$LocalTextToolbar$1;

    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->staticCompositionLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalTextToolbar:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 144
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt$LocalUriHandler$1;->INSTANCE:Landroidx/compose/ui/platform/CompositionLocalsKt$LocalUriHandler$1;

    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->staticCompositionLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalUriHandler:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 148
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt$LocalViewConfiguration$1;->INSTANCE:Landroidx/compose/ui/platform/CompositionLocalsKt$LocalViewConfiguration$1;

    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->staticCompositionLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalViewConfiguration:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 153
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt$LocalWindowInfo$1;->INSTANCE:Landroidx/compose/ui/platform/CompositionLocalsKt$LocalWindowInfo$1;

    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->staticCompositionLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalWindowInfo:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 162
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt$LocalPointerIconService$1;->INSTANCE:Landroidx/compose/ui/platform/CompositionLocalsKt$LocalPointerIconService$1;

    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->staticCompositionLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalPointerIconService:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 165
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt$LocalProvidableScrollCaptureInProgress$1;->INSTANCE:Landroidx/compose/ui/platform/CompositionLocalsKt$LocalProvidableScrollCaptureInProgress$1;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v0, v1, v2}, Landroidx/compose/runtime/CompositionLocalKt;->compositionLocalOf$default(Landroidx/compose/runtime/SnapshotMutationPolicy;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalProvidableScrollCaptureInProgress:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 184
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt$LocalCursorBlinkEnabled$1;->INSTANCE:Landroidx/compose/ui/platform/CompositionLocalsKt$LocalCursorBlinkEnabled$1;

    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->staticCompositionLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalCursorBlinkEnabled:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-void
.end method

.method public static final ProvideCommonCompositionLocals(Landroidx/compose/ui/node/Owner;Landroidx/compose/ui/platform/UriHandler;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    const v4, 0x34224bad

    move-object/from16 v5, p3

    .line 192
    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v5

    and-int/lit8 v6, v3, 0x6

    if-nez v6, :cond_2

    and-int/lit8 v6, v3, 0x8

    if-nez v6, :cond_0

    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_0

    :cond_0
    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    :goto_0
    if-eqz v6, :cond_1

    const/4 v6, 0x4

    goto :goto_1

    :cond_1
    const/4 v6, 0x2

    :goto_1
    or-int/2addr v6, v3

    goto :goto_2

    :cond_2
    move v6, v3

    :goto_2
    and-int/lit8 v7, v3, 0x30

    if-nez v7, :cond_5

    and-int/lit8 v7, v3, 0x40

    if-nez v7, :cond_3

    invoke-interface {v5, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    goto :goto_3

    :cond_3
    invoke-interface {v5, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    :goto_3
    if-eqz v7, :cond_4

    const/16 v7, 0x20

    goto :goto_4

    :cond_4
    const/16 v7, 0x10

    :goto_4
    or-int/2addr v6, v7

    :cond_5
    and-int/lit16 v7, v3, 0x180

    if-nez v7, :cond_7

    invoke-interface {v5, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/16 v7, 0x100

    goto :goto_5

    :cond_6
    const/16 v7, 0x80

    :goto_5
    or-int/2addr v6, v7

    :cond_7
    and-int/lit16 v7, v6, 0x93

    const/16 v8, 0x92

    if-ne v7, v8, :cond_9

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v7

    if-nez v7, :cond_8

    goto :goto_6

    .line 216
    :cond_8
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_7

    .line 192
    :cond_9
    :goto_6
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v7

    if-eqz v7, :cond_a

    const/4 v7, -0x1

    const-string v8, "androidx.compose.ui.platform.ProvideCommonCompositionLocals (CompositionLocals.kt:191)"

    invoke-static {v4, v6, v7, v8}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 194
    :cond_a
    sget-object v4, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalAccessibilityManager:Landroidx/compose/runtime/ProvidableCompositionLocal;

    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/node/Owner;->getAccessibilityManager()Landroidx/compose/ui/platform/AccessibilityManager;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v8

    .line 195
    sget-object v4, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalAutofill:Landroidx/compose/runtime/ProvidableCompositionLocal;

    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/node/Owner;->getAutofill()Landroidx/compose/ui/autofill/Autofill;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v9

    .line 196
    sget-object v4, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalAutofillTree:Landroidx/compose/runtime/ProvidableCompositionLocal;

    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/node/Owner;->getAutofillTree()Landroidx/compose/ui/autofill/AutofillTree;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v10

    .line 197
    sget-object v4, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalClipboardManager:Landroidx/compose/runtime/ProvidableCompositionLocal;

    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/node/Owner;->getClipboardManager()Landroidx/compose/ui/platform/ClipboardManager;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v11

    .line 198
    sget-object v4, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/ProvidableCompositionLocal;

    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/node/Owner;->getDensity()Landroidx/compose/ui/unit/Density;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v12

    .line 199
    sget-object v4, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalFocusManager:Landroidx/compose/runtime/ProvidableCompositionLocal;

    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/node/Owner;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v13

    .line 200
    sget-object v4, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalFontLoader:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 201
    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/node/Owner;->getFontLoader()Landroidx/compose/ui/text/font/Font$ResourceLoader;

    move-result-object v7

    .line 200
    invoke-virtual {v4, v7}, Landroidx/compose/runtime/ProvidableCompositionLocal;->providesDefault(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v14

    .line 202
    sget-object v4, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalFontFamilyResolver:Landroidx/compose/runtime/ProvidableCompositionLocal;

    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/node/Owner;->getFontFamilyResolver()Landroidx/compose/ui/text/font/FontFamily$Resolver;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroidx/compose/runtime/ProvidableCompositionLocal;->providesDefault(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v15

    .line 203
    sget-object v4, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalHapticFeedback:Landroidx/compose/runtime/ProvidableCompositionLocal;

    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/node/Owner;->getHapticFeedBack()Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v16

    .line 204
    sget-object v4, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalInputModeManager:Landroidx/compose/runtime/ProvidableCompositionLocal;

    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/node/Owner;->getInputModeManager()Landroidx/compose/ui/input/InputModeManager;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v17

    .line 205
    sget-object v4, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalLayoutDirection:Landroidx/compose/runtime/ProvidableCompositionLocal;

    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/node/Owner;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v18

    .line 206
    sget-object v4, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalTextInputService:Landroidx/compose/runtime/ProvidableCompositionLocal;

    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/node/Owner;->getTextInputService()Landroidx/compose/ui/text/input/TextInputService;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v19

    .line 207
    sget-object v4, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalSoftwareKeyboardController:Landroidx/compose/runtime/ProvidableCompositionLocal;

    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/node/Owner;->getSoftwareKeyboardController()Landroidx/compose/ui/platform/SoftwareKeyboardController;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v20

    .line 208
    sget-object v4, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalTextToolbar:Landroidx/compose/runtime/ProvidableCompositionLocal;

    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/node/Owner;->getTextToolbar()Landroidx/compose/ui/platform/TextToolbar;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v21

    .line 209
    sget-object v4, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalUriHandler:Landroidx/compose/runtime/ProvidableCompositionLocal;

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v22

    .line 210
    sget-object v4, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalViewConfiguration:Landroidx/compose/runtime/ProvidableCompositionLocal;

    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/node/Owner;->getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v23

    .line 211
    sget-object v4, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalWindowInfo:Landroidx/compose/runtime/ProvidableCompositionLocal;

    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/node/Owner;->getWindowInfo()Landroidx/compose/ui/platform/WindowInfo;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v24

    .line 212
    sget-object v4, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalPointerIconService:Landroidx/compose/runtime/ProvidableCompositionLocal;

    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/node/Owner;->getPointerIconService()Landroidx/compose/ui/input/pointer/PointerIconService;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v25

    .line 213
    sget-object v4, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalGraphicsContext:Landroidx/compose/runtime/ProvidableCompositionLocal;

    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/node/Owner;->getGraphicsContext()Landroidx/compose/ui/graphics/GraphicsContext;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v26

    filled-new-array/range {v8 .. v26}, [Landroidx/compose/runtime/ProvidedValue;

    move-result-object v4

    .line 214
    sget v7, Landroidx/compose/runtime/ProvidedValue;->$stable:I

    shr-int/lit8 v6, v6, 0x3

    and-int/lit8 v6, v6, 0x70

    or-int/2addr v6, v7

    .line 193
    invoke-static {v4, v2, v5, v6}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 216
    :cond_b
    :goto_7
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v4

    if-eqz v4, :cond_c

    new-instance v5, Landroidx/compose/ui/platform/CompositionLocalsKt$ProvideCommonCompositionLocals$1;

    invoke-direct {v5, v0, v1, v2, v3}, Landroidx/compose/ui/platform/CompositionLocalsKt$ProvideCommonCompositionLocals$1;-><init>(Landroidx/compose/ui/node/Owner;Landroidx/compose/ui/platform/UriHandler;Lkotlin/jvm/functions/Function2;I)V

    invoke-interface {v4, v5}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_c
    return-void
.end method

.method public static final synthetic access$noLocalProvidedFor(Ljava/lang/String;)Ljava/lang/Void;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/platform/CompositionLocalsKt;->noLocalProvidedFor(Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public static final getLocalClipboardManager()Landroidx/compose/runtime/ProvidableCompositionLocal;
    .locals 1

    .line 69
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalClipboardManager:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-object v0
.end method

.method public static final getLocalCursorBlinkEnabled()Landroidx/compose/runtime/ProvidableCompositionLocal;
    .locals 1

    .line 184
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalCursorBlinkEnabled:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-object v0
.end method

.method public static final getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;
    .locals 1

    .line 92
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-object v0
.end method

.method public static final getLocalFocusManager()Landroidx/compose/runtime/ProvidableCompositionLocal;
    .locals 1

    .line 95
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalFocusManager:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-object v0
.end method

.method public static final getLocalFontFamilyResolver()Landroidx/compose/runtime/ProvidableCompositionLocal;
    .locals 1

    .line 109
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalFontFamilyResolver:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-object v0
.end method

.method public static final getLocalGraphicsContext()Landroidx/compose/runtime/ProvidableCompositionLocal;
    .locals 1

    .line 82
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalGraphicsContext:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-object v0
.end method

.method public static final getLocalHapticFeedback()Landroidx/compose/runtime/ProvidableCompositionLocal;
    .locals 1

    .line 113
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalHapticFeedback:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-object v0
.end method

.method public static final getLocalInputModeManager()Landroidx/compose/runtime/ProvidableCompositionLocal;
    .locals 1

    .line 120
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalInputModeManager:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-object v0
.end method

.method public static final getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;
    .locals 1

    .line 124
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalLayoutDirection:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-object v0
.end method

.method public static final getLocalPointerIconService()Landroidx/compose/runtime/ProvidableCompositionLocal;
    .locals 1

    .line 162
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalPointerIconService:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-object v0
.end method

.method public static final getLocalProvidableScrollCaptureInProgress()Landroidx/compose/runtime/ProvidableCompositionLocal;
    .locals 1

    .line 165
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalProvidableScrollCaptureInProgress:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-object v0
.end method

.method public static final getLocalScrollCaptureInProgress()Landroidx/compose/runtime/CompositionLocal;
    .locals 1

    .line 172
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalProvidableScrollCaptureInProgress:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-object v0
.end method

.method public static final getLocalSoftwareKeyboardController()Landroidx/compose/runtime/ProvidableCompositionLocal;
    .locals 1

    .line 137
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalSoftwareKeyboardController:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-object v0
.end method

.method public static final getLocalTextToolbar()Landroidx/compose/runtime/ProvidableCompositionLocal;
    .locals 1

    .line 140
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalTextToolbar:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-object v0
.end method

.method public static final getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;
    .locals 1

    .line 147
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalViewConfiguration:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-object v0
.end method

.method public static final getLocalWindowInfo()Landroidx/compose/runtime/ProvidableCompositionLocal;
    .locals 1

    .line 153
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalWindowInfo:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-object v0
.end method

.method private static final noLocalProvidedFor(Ljava/lang/String;)Ljava/lang/Void;
    .locals 3

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CompositionLocal "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not present"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
