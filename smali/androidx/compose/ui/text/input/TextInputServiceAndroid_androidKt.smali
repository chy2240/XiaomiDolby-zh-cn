.class public abstract Landroidx/compose/ui/text/input/TextInputServiceAndroid_androidKt;
.super Ljava/lang/Object;
.source "TextInputServiceAndroid.android.kt"


# direct methods
.method public static synthetic $r8$lambda$nEtFUEU03rhWZ7PGABg9OjqaO2E(Ljava/lang/Runnable;J)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/text/input/TextInputServiceAndroid_androidKt;->asExecutor$lambda$2$lambda$1(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$qQ8zHHsFvyXcidaMIrvwPglQwQQ(Landroid/view/Choreographer;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/compose/ui/text/input/TextInputServiceAndroid_androidKt;->asExecutor$lambda$2(Landroid/view/Choreographer;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final synthetic access$updateWithEmojiCompat(Landroid/view/inputmethod/EditorInfo;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/text/input/TextInputServiceAndroid_androidKt;->updateWithEmojiCompat(Landroid/view/inputmethod/EditorInfo;)V

    return-void
.end method

.method public static final asExecutor(Landroid/view/Choreographer;)Ljava/util/concurrent/Executor;
    .locals 1

    .line 568
    new-instance v0, Landroidx/compose/ui/text/input/TextInputServiceAndroid_androidKt$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroidx/compose/ui/text/input/TextInputServiceAndroid_androidKt$$ExternalSyntheticLambda0;-><init>(Landroid/view/Choreographer;)V

    return-object v0
.end method

.method private static final asExecutor$lambda$2(Landroid/view/Choreographer;Ljava/lang/Runnable;)V
    .locals 1

    .line 569
    new-instance v0, Landroidx/compose/ui/text/input/TextInputServiceAndroid_androidKt$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Landroidx/compose/ui/text/input/TextInputServiceAndroid_androidKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method private static final asExecutor$lambda$2$lambda$1(Ljava/lang/Runnable;J)V
    .locals 0

    .line 569
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private static final hasFlag(II)Z
    .locals 0

    .line 0
    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final update(Landroid/view/inputmethod/EditorInfo;Landroidx/compose/ui/text/input/ImeOptions;Landroidx/compose/ui/text/input/TextFieldValue;)V
    .locals 7

    .line 481
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/ImeOptions;->getImeAction-eUduSuo()I

    move-result v0

    .line 482
    sget-object v1, Landroidx/compose/ui/text/input/ImeAction;->Companion:Landroidx/compose/ui/text/input/ImeAction$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/text/input/ImeAction$Companion;->getDefault-eUduSuo()I

    move-result v2

    invoke-static {v0, v2}, Landroidx/compose/ui/text/input/ImeAction;->equals-impl0(II)Z

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x6

    const/4 v6, 0x1

    if-eqz v2, :cond_1

    .line 483
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/ImeOptions;->getSingleLine()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 492
    :cond_1
    invoke-virtual {v1}, Landroidx/compose/ui/text/input/ImeAction$Companion;->getNone-eUduSuo()I

    move-result v2

    invoke-static {v0, v2}, Landroidx/compose/ui/text/input/ImeAction;->equals-impl0(II)Z

    move-result v2

    if-eqz v2, :cond_2

    move v5, v6

    goto :goto_0

    .line 493
    :cond_2
    invoke-virtual {v1}, Landroidx/compose/ui/text/input/ImeAction$Companion;->getGo-eUduSuo()I

    move-result v2

    invoke-static {v0, v2}, Landroidx/compose/ui/text/input/ImeAction;->equals-impl0(II)Z

    move-result v2

    if-eqz v2, :cond_3

    move v5, v4

    goto :goto_0

    .line 494
    :cond_3
    invoke-virtual {v1}, Landroidx/compose/ui/text/input/ImeAction$Companion;->getNext-eUduSuo()I

    move-result v2

    invoke-static {v0, v2}, Landroidx/compose/ui/text/input/ImeAction;->equals-impl0(II)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v5, 0x5

    goto :goto_0

    .line 495
    :cond_4
    invoke-virtual {v1}, Landroidx/compose/ui/text/input/ImeAction$Companion;->getPrevious-eUduSuo()I

    move-result v2

    invoke-static {v0, v2}, Landroidx/compose/ui/text/input/ImeAction;->equals-impl0(II)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v5, 0x7

    goto :goto_0

    .line 496
    :cond_5
    invoke-virtual {v1}, Landroidx/compose/ui/text/input/ImeAction$Companion;->getSearch-eUduSuo()I

    move-result v2

    invoke-static {v0, v2}, Landroidx/compose/ui/text/input/ImeAction;->equals-impl0(II)Z

    move-result v2

    if-eqz v2, :cond_6

    move v5, v3

    goto :goto_0

    .line 497
    :cond_6
    invoke-virtual {v1}, Landroidx/compose/ui/text/input/ImeAction$Companion;->getSend-eUduSuo()I

    move-result v2

    invoke-static {v0, v2}, Landroidx/compose/ui/text/input/ImeAction;->equals-impl0(II)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v5, 0x4

    goto :goto_0

    .line 498
    :cond_7
    invoke-virtual {v1}, Landroidx/compose/ui/text/input/ImeAction$Companion;->getDone-eUduSuo()I

    move-result v2

    invoke-static {v0, v2}, Landroidx/compose/ui/text/input/ImeAction;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 480
    :goto_0
    iput v5, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 501
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/ImeOptions;->getPlatformImeOptions()Landroidx/compose/ui/text/input/PlatformImeOptions;

    .line 502
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/ImeOptions;->getKeyboardType-PjHm6EE()I

    move-result v0

    .line 503
    sget-object v2, Landroidx/compose/ui/text/input/KeyboardType;->Companion:Landroidx/compose/ui/text/input/KeyboardType$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/text/input/KeyboardType$Companion;->getText-PjHm6EE()I

    move-result v5

    invoke-static {v0, v5}, Landroidx/compose/ui/text/input/KeyboardType;->equals-impl0(II)Z

    move-result v5

    if-eqz v5, :cond_8

    iput v6, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto/16 :goto_1

    .line 504
    :cond_8
    invoke-virtual {v2}, Landroidx/compose/ui/text/input/KeyboardType$Companion;->getAscii-PjHm6EE()I

    move-result v5

    invoke-static {v0, v5}, Landroidx/compose/ui/text/input/KeyboardType;->equals-impl0(II)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 505
    iput v6, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 506
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v2, -0x80000000

    or-int/2addr v0, v2

    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto :goto_1

    .line 508
    :cond_9
    invoke-virtual {v2}, Landroidx/compose/ui/text/input/KeyboardType$Companion;->getNumber-PjHm6EE()I

    move-result v5

    invoke-static {v0, v5}, Landroidx/compose/ui/text/input/KeyboardType;->equals-impl0(II)Z

    move-result v5

    if-eqz v5, :cond_a

    iput v4, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_1

    .line 509
    :cond_a
    invoke-virtual {v2}, Landroidx/compose/ui/text/input/KeyboardType$Companion;->getPhone-PjHm6EE()I

    move-result v4

    invoke-static {v0, v4}, Landroidx/compose/ui/text/input/KeyboardType;->equals-impl0(II)Z

    move-result v4

    if-eqz v4, :cond_b

    iput v3, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_1

    .line 510
    :cond_b
    invoke-virtual {v2}, Landroidx/compose/ui/text/input/KeyboardType$Companion;->getUri-PjHm6EE()I

    move-result v3

    invoke-static {v0, v3}, Landroidx/compose/ui/text/input/KeyboardType;->equals-impl0(II)Z

    move-result v3

    if-eqz v3, :cond_c

    const/16 v0, 0x11

    .line 511
    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_1

    .line 512
    :cond_c
    invoke-virtual {v2}, Landroidx/compose/ui/text/input/KeyboardType$Companion;->getEmail-PjHm6EE()I

    move-result v3

    invoke-static {v0, v3}, Landroidx/compose/ui/text/input/KeyboardType;->equals-impl0(II)Z

    move-result v3

    if-eqz v3, :cond_d

    const/16 v0, 0x21

    .line 513
    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_1

    .line 515
    :cond_d
    invoke-virtual {v2}, Landroidx/compose/ui/text/input/KeyboardType$Companion;->getPassword-PjHm6EE()I

    move-result v3

    invoke-static {v0, v3}, Landroidx/compose/ui/text/input/KeyboardType;->equals-impl0(II)Z

    move-result v3

    if-eqz v3, :cond_e

    const/16 v0, 0x81

    .line 516
    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_1

    .line 518
    :cond_e
    invoke-virtual {v2}, Landroidx/compose/ui/text/input/KeyboardType$Companion;->getNumberPassword-PjHm6EE()I

    move-result v3

    invoke-static {v0, v3}, Landroidx/compose/ui/text/input/KeyboardType;->equals-impl0(II)Z

    move-result v3

    if-eqz v3, :cond_f

    const/16 v0, 0x12

    .line 519
    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_1

    .line 522
    :cond_f
    invoke-virtual {v2}, Landroidx/compose/ui/text/input/KeyboardType$Companion;->getDecimal-PjHm6EE()I

    move-result v2

    invoke-static {v0, v2}, Landroidx/compose/ui/text/input/KeyboardType;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_15

    const/16 v0, 0x2002

    .line 523
    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 528
    :goto_1
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/ImeOptions;->getSingleLine()Z

    move-result v0

    if-nez v0, :cond_10

    .line 529
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-static {v0, v6}, Landroidx/compose/ui/text/input/TextInputServiceAndroid_androidKt;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 531
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/high16 v2, 0x20000

    or-int/2addr v0, v2

    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 533
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/ImeOptions;->getImeAction-eUduSuo()I

    move-result v0

    invoke-virtual {v1}, Landroidx/compose/ui/text/input/ImeAction$Companion;->getDefault-eUduSuo()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/ui/text/input/ImeAction;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 534
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 539
    :cond_10
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-static {v0, v6}, Landroidx/compose/ui/text/input/TextInputServiceAndroid_androidKt;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 540
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/ImeOptions;->getCapitalization-IUNYP9k()I

    move-result v0

    .line 541
    sget-object v1, Landroidx/compose/ui/text/input/KeyboardCapitalization;->Companion:Landroidx/compose/ui/text/input/KeyboardCapitalization$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/text/input/KeyboardCapitalization$Companion;->getCharacters-IUNYP9k()I

    move-result v2

    invoke-static {v0, v2}, Landroidx/compose/ui/text/input/KeyboardCapitalization;->equals-impl0(II)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 542
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_2

    .line 544
    :cond_11
    invoke-virtual {v1}, Landroidx/compose/ui/text/input/KeyboardCapitalization$Companion;->getWords-IUNYP9k()I

    move-result v2

    invoke-static {v0, v2}, Landroidx/compose/ui/text/input/KeyboardCapitalization;->equals-impl0(II)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 545
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_2

    .line 547
    :cond_12
    invoke-virtual {v1}, Landroidx/compose/ui/text/input/KeyboardCapitalization$Companion;->getSentences-IUNYP9k()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/ui/text/input/KeyboardCapitalization;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 548
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 555
    :cond_13
    :goto_2
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/ImeOptions;->getAutoCorrect()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 556
    iget p1, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const v0, 0x8000

    or-int/2addr p1, v0

    iput p1, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 560
    :cond_14
    invoke-virtual {p2}, Landroidx/compose/ui/text/input/TextFieldValue;->getSelection-d9O1mEE()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result p1

    iput p1, p0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 561
    invoke-virtual {p2}, Landroidx/compose/ui/text/input/TextFieldValue;->getSelection-d9O1mEE()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result p1

    iput p1, p0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 563
    invoke-virtual {p2}, Landroidx/compose/ui/text/input/TextFieldValue;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/core/view/inputmethod/EditorInfoCompat;->setInitialSurroundingText(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;)V

    .line 565
    iget p1, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 p2, 0x2000000

    or-int/2addr p1, p2

    iput p1, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    return-void

    .line 523
    :cond_15
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 525
    const-string p1, "Invalid Keyboard Type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 498
    :cond_16
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 499
    const-string p1, "invalid ImeAction"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final updateWithEmojiCompat(Landroid/view/inputmethod/EditorInfo;)V
    .locals 1

    .line 471
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->isConfigured()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 475
    :cond_0
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->get()Landroidx/emoji2/text/EmojiCompat;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/emoji2/text/EmojiCompat;->updateEditorInfo(Landroid/view/inputmethod/EditorInfo;)V

    return-void
.end method
