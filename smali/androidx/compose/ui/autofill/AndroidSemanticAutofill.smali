.class public final Landroidx/compose/ui/autofill/AndroidSemanticAutofill;
.super Ljava/lang/Object;
.source "AndroidSemanticAutofill.android.kt"


# static fields
.field public static final $stable:I

.field public static final Companion:Landroidx/compose/ui/autofill/AndroidSemanticAutofill$Companion;


# instance fields
.field private SendRecurringAutofillEventsIntervalMillis:J

.field private _TEMP_AUTOFILL_FLAG:Z

.field private final autofillChangeChecker:Ljava/lang/Runnable;

.field private autofillManager:Landroidx/compose/ui/autofill/AutofillManagerWrapper;

.field private final boundsUpdateChannel:Lkotlinx/coroutines/channels/Channel;

.field private checkingForSemanticsChanges:Z

.field private currentSemanticsNodes:Landroidx/collection/IntObjectMap;

.field private currentSemanticsNodesInvalidated:Z

.field private final handler:Landroid/os/Handler;

.field private previousSemanticsNodes:Landroidx/collection/MutableIntObjectMap;

.field private previousSemanticsRoot:Landroidx/compose/ui/platform/SemanticsNodeCopy;

.field private final subtreeChangedLayoutNodes:Landroidx/collection/ArraySet;

.field private final view:Landroidx/compose/ui/platform/AndroidComposeView;


# direct methods
.method public static synthetic $r8$lambda$kCiAlDWV6Fxt5Rv_j76LH3GZyfY(Landroidx/compose/ui/autofill/AndroidSemanticAutofill;)V
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->autofillChangeChecker$lambda$1(Landroidx/compose/ui/autofill/AndroidSemanticAutofill;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Landroidx/compose/ui/autofill/AndroidSemanticAutofill$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/autofill/AndroidSemanticAutofill$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->Companion:Landroidx/compose/ui/autofill/AndroidSemanticAutofill$Companion;

    const/16 v0, 0x8

    sput v0, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/platform/AndroidComposeView;)V
    .locals 3

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 78
    new-instance v0, Landroidx/compose/ui/autofill/AutofillManagerWrapperImpl;

    invoke-direct {v0, p1}, Landroidx/compose/ui/autofill/AutofillManagerWrapperImpl;-><init>(Landroidx/compose/ui/platform/AndroidComposeView;)V

    iput-object v0, p0, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->autofillManager:Landroidx/compose/ui/autofill/AutofillManagerWrapper;

    const/4 v0, 0x1

    .line 81
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setImportantForAutofill(I)V

    .line 84
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->handler:Landroid/os/Handler;

    .line 91
    invoke-static {}, Landroidx/collection/IntObjectMapKt;->mutableIntObjectMapOf()Landroidx/collection/MutableIntObjectMap;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->previousSemanticsNodes:Landroidx/collection/MutableIntObjectMap;

    .line 93
    new-instance v1, Landroidx/compose/ui/platform/SemanticsNodeCopy;

    invoke-virtual {p1}, Landroidx/compose/ui/platform/AndroidComposeView;->getSemanticsOwner()Landroidx/compose/ui/semantics/SemanticsOwner;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsOwner;->getUnmergedRootSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object p1

    invoke-static {}, Landroidx/collection/IntObjectMapKt;->intObjectMapOf()Landroidx/collection/IntObjectMap;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroidx/compose/ui/platform/SemanticsNodeCopy;-><init>(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/collection/IntObjectMap;)V

    iput-object v1, p0, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->previousSemanticsRoot:Landroidx/compose/ui/platform/SemanticsNodeCopy;

    .line 96
    new-instance p1, Landroidx/collection/ArraySet;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p1, v1, v0, v2}, Landroidx/collection/ArraySet;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->subtreeChangedLayoutNodes:Landroidx/collection/ArraySet;

    const/4 p1, 0x6

    .line 97
    invoke-static {v0, v2, v2, p1, v2}, Lkotlinx/coroutines/channels/ChannelKt;->Channel$default(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/channels/Channel;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->boundsUpdateChannel:Lkotlinx/coroutines/channels/Channel;

    .line 98
    iput-boolean v0, p0, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->currentSemanticsNodesInvalidated:Z

    const-wide/16 v0, 0x64

    .line 108
    iput-wide v0, p0, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->SendRecurringAutofillEventsIntervalMillis:J

    .line 111
    invoke-static {}, Landroidx/collection/IntObjectMapKt;->intObjectMapOf()Landroidx/collection/IntObjectMap;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->currentSemanticsNodes:Landroidx/collection/IntObjectMap;

    .line 143
    new-instance p1, Landroidx/compose/ui/autofill/AndroidSemanticAutofill$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Landroidx/compose/ui/autofill/AndroidSemanticAutofill$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/ui/autofill/AndroidSemanticAutofill;)V

    iput-object p1, p0, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->autofillChangeChecker:Ljava/lang/Runnable;

    return-void
.end method

.method private static final autofillChangeChecker$lambda$1(Landroidx/compose/ui/autofill/AndroidSemanticAutofill;)V
    .locals 4

    .line 144
    iget-object v0, p0, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Landroidx/compose/ui/node/Owner;->measureAndLayout$default(Landroidx/compose/ui/node/Owner;ZILjava/lang/Object;)V

    .line 145
    invoke-virtual {p0}, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->getCurrentSemanticsNodes$ui_release()Landroidx/collection/IntObjectMap;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->checkForAutofillPropertyChanges(Landroidx/collection/IntObjectMap;)V

    .line 146
    invoke-direct {p0}, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->updateSemanticsCopy()V

    .line 147
    iput-boolean v3, p0, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->checkingForSemanticsChanges:Z

    return-void
.end method

.method private final checkForAutofillPropertyChanges(Landroidx/collection/IntObjectMap;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 352
    iget-object v2, v1, Landroidx/collection/IntObjectMap;->keys:[I

    .line 316
    iget-object v3, v1, Landroidx/collection/IntObjectMap;->metadata:[J

    .line 317
    array-length v4, v3

    add-int/lit8 v4, v4, -0x2

    if-ltz v4, :cond_c

    const/4 v6, 0x0

    .line 320
    :goto_0
    aget-wide v7, v3, v6

    not-long v9, v7

    const/4 v11, 0x7

    shl-long/2addr v9, v11

    and-long/2addr v9, v7

    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v9, v11

    cmp-long v9, v9, v11

    if-eqz v9, :cond_b

    sub-int v9, v6, v4

    not-int v9, v9

    ushr-int/lit8 v9, v9, 0x1f

    const/16 v10, 0x8

    rsub-int/lit8 v9, v9, 0x8

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v9, :cond_a

    const-wide/16 v12, 0xff

    and-long/2addr v12, v7

    const-wide/16 v14, 0x80

    cmp-long v12, v12, v14

    if-gez v12, :cond_9

    shl-int/lit8 v12, v6, 0x3

    add-int/2addr v12, v11

    .line 354
    aget v12, v2, v12

    .line 156
    iget-object v13, v0, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->previousSemanticsNodes:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {v13, v12}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/compose/ui/platform/SemanticsNodeCopy;

    .line 158
    invoke-virtual {v1, v12}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;

    if-eqz v14, :cond_0

    invoke-virtual {v14}, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;->getSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v14

    goto :goto_2

    :cond_0
    const/4 v14, 0x0

    :goto_2
    if-eqz v14, :cond_8

    if-nez v13, :cond_1

    goto/16 :goto_5

    .line 170
    :cond_1
    invoke-virtual {v13}, Landroidx/compose/ui/platform/SemanticsNodeCopy;->getUnmergedConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v5

    sget-object v16, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/semantics/SemanticsProperties;->getEditableText()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v15

    invoke-static {v5, v15}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/text/AnnotatedString;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroidx/compose/ui/text/AnnotatedString;->getText()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_2
    const/4 v5, 0x0

    .line 171
    :goto_3
    invoke-virtual {v14}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v15

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/semantics/SemanticsProperties;->getEditableText()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v10

    invoke-static {v15, v10}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/ui/text/AnnotatedString;

    if-eqz v10, :cond_3

    invoke-virtual {v10}, Landroidx/compose/ui/text/AnnotatedString;->getText()Ljava/lang/String;

    move-result-object v15

    goto :goto_4

    :cond_3
    const/4 v15, 0x0

    .line 172
    :goto_4
    invoke-static {v5, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    if-eqz v15, :cond_4

    .line 173
    invoke-direct {v0, v12, v15}, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->notifyAutofillValueChanged(ILjava/lang/Object;)V

    .line 177
    :cond_4
    invoke-virtual {v13}, Landroidx/compose/ui/platform/SemanticsNodeCopy;->getUnmergedConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v5

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/semantics/SemanticsProperties;->getFocused()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v10

    invoke-static {v5, v10}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    .line 178
    invoke-virtual {v14}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v10

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/semantics/SemanticsProperties;->getFocused()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v15

    invoke-static {v10, v15}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    .line 179
    sget-object v15, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v5, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_5

    invoke-static {v10, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 180
    invoke-direct {v0, v12}, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->notifyViewEntered(I)V

    .line 182
    :cond_5
    invoke-static {v5, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {v10, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 183
    invoke-direct {v0, v12}, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->notifyViewExited(I)V

    .line 188
    :cond_6
    invoke-virtual {v13}, Landroidx/compose/ui/platform/SemanticsNodeCopy;->isTransparent()Z

    move-result v5

    .line 189
    invoke-virtual {v14}, Landroidx/compose/ui/semantics/SemanticsNode;->isTransparent$ui_release()Z

    move-result v10

    if-eq v5, v10, :cond_7

    .line 191
    invoke-direct {v0, v12, v10}, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->notifyVisibilityChanged(IZ)V

    :cond_7
    :goto_5
    const/16 v5, 0x8

    goto :goto_6

    .line 159
    :cond_8
    const-string v0, "no value for specified key"

    .line 65
    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateExceptionForNullCheck(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    :cond_9
    move v5, v10

    :goto_6
    shr-long/2addr v7, v5

    add-int/lit8 v11, v11, 0x1

    move v10, v5

    goto/16 :goto_1

    :cond_a
    move v5, v10

    if-ne v9, v5, :cond_c

    :cond_b
    if-eq v6, v4, :cond_c

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_c
    return-void
.end method

.method private final notifyAutofillValueChanged(ILjava/lang/Object;)V
    .locals 0

    .line 224
    invoke-virtual {p0}, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->getCurrentSemanticsNodes$ui_release()Landroidx/collection/IntObjectMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;->getSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 225
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object p1, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsProperties;->getContentDataType$ui_release()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 228
    :cond_1
    sget-object p0, Landroidx/compose/ui/autofill/ContentDataType;->Companion:Landroidx/compose/ui/autofill/ContentDataType$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/autofill/ContentDataType$Companion;->getText-A48pgw8()I

    .line 233
    invoke-virtual {p0}, Landroidx/compose/ui/autofill/ContentDataType$Companion;->getDate-A48pgw8()I

    .line 235
    invoke-virtual {p0}, Landroidx/compose/ui/autofill/ContentDataType$Companion;->getList-A48pgw8()I

    .line 237
    invoke-virtual {p0}, Landroidx/compose/ui/autofill/ContentDataType$Companion;->getToggle-A48pgw8()I

    .line 240
    new-instance p0, Lkotlin/NotImplementedError;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "An operation is not implemented: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "b/138604541: Add Autofill support for ContentDataType.None"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final notifyViewEntered(I)V
    .locals 1

    .line 214
    invoke-virtual {p0}, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->getCurrentSemanticsNodes$ui_release()Landroidx/collection/IntObjectMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;->getAdjustedBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 215
    iget-object p0, p0, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->autofillManager:Landroidx/compose/ui/autofill/AutofillManagerWrapper;

    invoke-interface {p0, p1, v0}, Landroidx/compose/ui/autofill/AutofillManagerWrapper;->notifyViewEntered(ILandroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method private final notifyViewExited(I)V
    .locals 0

    .line 220
    iget-object p0, p0, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->autofillManager:Landroidx/compose/ui/autofill/AutofillManagerWrapper;

    invoke-interface {p0, p1}, Landroidx/compose/ui/autofill/AutofillManagerWrapper;->notifyViewExited(I)V

    return-void
.end method

.method private final notifyVisibilityChanged(IZ)V
    .locals 0

    .line 246
    iget-object p0, p0, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->autofillManager:Landroidx/compose/ui/autofill/AutofillManagerWrapper;

    xor-int/lit8 p2, p2, 0x1

    invoke-interface {p0, p1, p2}, Landroidx/compose/ui/autofill/AutofillManagerWrapper;->notifyViewVisibilityChanged(IZ)V

    return-void
.end method

.method private final updateSemanticsCopy()V
    .locals 16

    move-object/from16 v0, p0

    .line 134
    iget-object v1, v0, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->previousSemanticsNodes:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {v1}, Landroidx/collection/MutableIntObjectMap;->clear()V

    .line 135
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->getCurrentSemanticsNodes$ui_release()Landroidx/collection/IntObjectMap;

    move-result-object v1

    .line 344
    iget-object v2, v1, Landroidx/collection/IntObjectMap;->keys:[I

    .line 345
    iget-object v3, v1, Landroidx/collection/IntObjectMap;->values:[Ljava/lang/Object;

    .line 316
    iget-object v1, v1, Landroidx/collection/IntObjectMap;->metadata:[J

    .line 317
    array-length v4, v1

    add-int/lit8 v4, v4, -0x2

    if-ltz v4, :cond_3

    const/4 v6, 0x0

    .line 320
    :goto_0
    aget-wide v7, v1, v6

    not-long v9, v7

    const/4 v11, 0x7

    shl-long/2addr v9, v11

    and-long/2addr v9, v7

    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v9, v11

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    sub-int v9, v6, v4

    not-int v9, v9

    ushr-int/lit8 v9, v9, 0x1f

    const/16 v10, 0x8

    rsub-int/lit8 v9, v9, 0x8

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v9, :cond_1

    const-wide/16 v12, 0xff

    and-long/2addr v12, v7

    const-wide/16 v14, 0x80

    cmp-long v12, v12, v14

    if-gez v12, :cond_0

    shl-int/lit8 v12, v6, 0x3

    add-int/2addr v12, v11

    .line 347
    aget v13, v2, v12

    aget-object v12, v3, v12

    check-cast v12, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;

    .line 136
    iget-object v14, v0, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->previousSemanticsNodes:Landroidx/collection/MutableIntObjectMap;

    .line 137
    new-instance v15, Landroidx/compose/ui/platform/SemanticsNodeCopy;

    invoke-virtual {v12}, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;->getSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->getCurrentSemanticsNodes$ui_release()Landroidx/collection/IntObjectMap;

    move-result-object v5

    invoke-direct {v15, v12, v5}, Landroidx/compose/ui/platform/SemanticsNodeCopy;-><init>(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/collection/IntObjectMap;)V

    .line 136
    invoke-virtual {v14, v13, v15}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    :cond_0
    shr-long/2addr v7, v10

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    if-ne v9, v10, :cond_3

    :cond_2
    if-eq v6, v4, :cond_3

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 140
    :cond_3
    new-instance v1, Landroidx/compose/ui/platform/SemanticsNodeCopy;

    iget-object v2, v0, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v2}, Landroidx/compose/ui/platform/AndroidComposeView;->getSemanticsOwner()Landroidx/compose/ui/semantics/SemanticsOwner;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsOwner;->getUnmergedRootSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->getCurrentSemanticsNodes$ui_release()Landroidx/collection/IntObjectMap;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroidx/compose/ui/platform/SemanticsNodeCopy;-><init>(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/collection/IntObjectMap;)V

    .line 139
    iput-object v1, v0, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->previousSemanticsRoot:Landroidx/compose/ui/platform/SemanticsNodeCopy;

    return-void
.end method


# virtual methods
.method public final getCurrentSemanticsNodes$ui_release()Landroidx/collection/IntObjectMap;
    .locals 1

    .line 113
    iget-boolean v0, p0, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->currentSemanticsNodesInvalidated:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 114
    iput-boolean v0, p0, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->currentSemanticsNodesInvalidated:Z

    .line 115
    iget-object v0, p0, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->getSemanticsOwner()Landroidx/compose/ui/semantics/SemanticsOwner;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/platform/SemanticsUtils_androidKt;->getAllUncoveredSemanticsNodesToIntObjectMap(Landroidx/compose/ui/semantics/SemanticsOwner;)Landroidx/collection/IntObjectMap;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->currentSemanticsNodes:Landroidx/collection/IntObjectMap;

    .line 117
    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->currentSemanticsNodes:Landroidx/collection/IntObjectMap;

    return-object p0
.end method

.method public final getView()Landroidx/compose/ui/platform/AndroidComposeView;
    .locals 0

    .line 77
    iget-object p0, p0, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    return-object p0
.end method

.method public final get_TEMP_AUTOFILL_FLAG$ui_release()Z
    .locals 0

    .line 101
    iget-boolean p0, p0, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->_TEMP_AUTOFILL_FLAG:Z

    return p0
.end method

.method public final onLayoutChange$ui_release(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 1

    const/4 v0, 0x1

    .line 206
    iput-boolean v0, p0, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->currentSemanticsNodesInvalidated:Z

    .line 208
    iget-object v0, p0, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->subtreeChangedLayoutNodes:Landroidx/collection/ArraySet;

    invoke-virtual {v0, p1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 209
    iget-object p0, p0, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->boundsUpdateChannel:Lkotlinx/coroutines/channels/Channel;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final onSemanticsChange$ui_release()V
    .locals 2

    const/4 v0, 0x1

    .line 198
    iput-boolean v0, p0, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->currentSemanticsNodesInvalidated:Z

    .line 199
    iget-boolean v1, p0, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->checkingForSemanticsChanges:Z

    if-nez v1, :cond_0

    .line 200
    iput-boolean v0, p0, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->checkingForSemanticsChanges:Z

    .line 201
    iget-object v0, p0, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->handler:Landroid/os/Handler;

    iget-object p0, p0, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->autofillChangeChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final onTextFillHelper$ui_release(ILjava/lang/String;)V
    .locals 2

    .line 256
    invoke-virtual {p0}, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->getCurrentSemanticsNodes$ui_release()Landroidx/collection/IntObjectMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;->getSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, p1

    :goto_0
    if-eqz p0, :cond_1

    .line 258
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 259
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsActions;->getOnAutofillText$ui_release()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz p0, :cond_1

    .line 260
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/AccessibilityAction;->getAction()Lkotlin/Function;

    move-result-object p0

    check-cast p0, Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_1

    .line 261
    new-instance v0, Landroidx/compose/ui/text/AnnotatedString;

    const/4 v1, 0x2

    invoke-direct {v0, p2, p1, v1, p1}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    :cond_1
    return-void
.end method
