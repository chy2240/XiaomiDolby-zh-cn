.class final Landroidx/emoji2/text/EmojiProcessor;
.super Ljava/lang/Object;
.source "EmojiProcessor.java"


# instance fields
.field private final mEmojiAsDefaultStyleExceptions:[I

.field private mGlyphChecker:Landroidx/emoji2/text/EmojiCompat$GlyphChecker;

.field private final mMetadataRepo:Landroidx/emoji2/text/MetadataRepo;

.field private final mSpanFactory:Landroidx/emoji2/text/EmojiCompat$SpanFactory;

.field private final mUseEmojiAsDefaultStyle:Z


# direct methods
.method constructor <init>(Landroidx/emoji2/text/MetadataRepo;Landroidx/emoji2/text/EmojiCompat$SpanFactory;Landroidx/emoji2/text/EmojiCompat$GlyphChecker;Z[ILjava/util/Set;)V
    .locals 0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p2, p0, Landroidx/emoji2/text/EmojiProcessor;->mSpanFactory:Landroidx/emoji2/text/EmojiCompat$SpanFactory;

    .line 133
    iput-object p1, p0, Landroidx/emoji2/text/EmojiProcessor;->mMetadataRepo:Landroidx/emoji2/text/MetadataRepo;

    .line 134
    iput-object p3, p0, Landroidx/emoji2/text/EmojiProcessor;->mGlyphChecker:Landroidx/emoji2/text/EmojiCompat$GlyphChecker;

    .line 135
    iput-boolean p4, p0, Landroidx/emoji2/text/EmojiProcessor;->mUseEmojiAsDefaultStyle:Z

    .line 136
    iput-object p5, p0, Landroidx/emoji2/text/EmojiProcessor;->mEmojiAsDefaultStyleExceptions:[I

    .line 137
    invoke-direct {p0, p6}, Landroidx/emoji2/text/EmojiProcessor;->initExclusions(Ljava/util/Set;)V

    return-void
.end method

.method private static delete(Landroid/text/Editable;Landroid/view/KeyEvent;Z)Z
    .locals 6

    .line 459
    invoke-static {p1}, Landroidx/emoji2/text/EmojiProcessor;->hasModifiers(Landroid/view/KeyEvent;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    .line 463
    :cond_0
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result p1

    .line 464
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 465
    invoke-static {p1, v1}, Landroidx/emoji2/text/EmojiProcessor;->hasInvalidSelection(II)Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    .line 469
    :cond_1
    const-class v2, Landroidx/emoji2/text/EmojiSpan;

    invoke-interface {p0, p1, v1, v2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/emoji2/text/EmojiSpan;

    if-eqz v1, :cond_6

    .line 470
    array-length v2, v1

    if-lez v2, :cond_6

    .line 471
    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_6

    .line 473
    aget-object v4, v1, v3

    .line 474
    invoke-interface {p0, v4}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 475
    invoke-interface {p0, v4}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    if-eqz p2, :cond_2

    if-eq v5, p1, :cond_4

    :cond_2
    if-nez p2, :cond_3

    if-eq v4, p1, :cond_4

    :cond_3
    if-le p1, v5, :cond_5

    if-ge p1, v4, :cond_5

    .line 479
    :cond_4
    invoke-interface {p0, v5, v4}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    const/4 p0, 0x1

    return p0

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    return v0
.end method

.method static handleDeleteSurroundingText(Landroid/view/inputmethod/InputConnection;Landroid/text/Editable;IIZ)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    if-nez p0, :cond_0

    goto/16 :goto_1

    :cond_0
    if-ltz p2, :cond_7

    if-gez p3, :cond_1

    goto/16 :goto_1

    .line 516
    :cond_1
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 517
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 519
    invoke-static {v1, v2}, Landroidx/emoji2/text/EmojiProcessor;->hasInvalidSelection(II)Z

    move-result v3

    if-eqz v3, :cond_2

    return v0

    :cond_2
    if-eqz p4, :cond_4

    .line 528
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 527
    invoke-static {p1, v1, p2}, Landroidx/emoji2/text/EmojiProcessor$CodepointIndexFinder;->findIndexBackward(Ljava/lang/CharSequence;II)I

    move-result p2

    .line 530
    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 529
    invoke-static {p1, v2, p3}, Landroidx/emoji2/text/EmojiProcessor$CodepointIndexFinder;->findIndexForward(Ljava/lang/CharSequence;II)I

    move-result p3

    const/4 p4, -0x1

    if-eq p2, p4, :cond_3

    if-ne p3, p4, :cond_5

    :cond_3
    return v0

    :cond_4
    sub-int/2addr v1, p2

    .line 537
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    add-int/2addr v2, p3

    .line 538
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p3

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 541
    :cond_5
    const-class p4, Landroidx/emoji2/text/EmojiSpan;

    invoke-interface {p1, p2, p3, p4}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Landroidx/emoji2/text/EmojiSpan;

    if-eqz p4, :cond_7

    .line 542
    array-length v1, p4

    if-lez v1, :cond_7

    .line 543
    array-length v1, p4

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_6

    .line 545
    aget-object v3, p4, v2

    .line 546
    invoke-interface {p1, v3}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 547
    invoke-interface {p1, v3}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 548
    invoke-static {v4, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 549
    invoke-static {v3, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 552
    :cond_6
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 553
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p4

    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 555
    invoke-interface {p0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 556
    invoke-interface {p1, p2, p3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 557
    invoke-interface {p0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    const/4 p0, 0x1

    return p0

    :cond_7
    :goto_1
    return v0
.end method

.method static handleOnKeyDown(Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/16 v0, 0x43

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    const/16 v0, 0x70

    if-eq p1, v0, :cond_0

    move p1, v2

    goto :goto_0

    .line 442
    :cond_0
    invoke-static {p0, p2, v1}, Landroidx/emoji2/text/EmojiProcessor;->delete(Landroid/text/Editable;Landroid/view/KeyEvent;Z)Z

    move-result p1

    goto :goto_0

    .line 439
    :cond_1
    invoke-static {p0, p2, v2}, Landroidx/emoji2/text/EmojiProcessor;->delete(Landroid/text/Editable;Landroid/view/KeyEvent;Z)Z

    move-result p1

    :goto_0
    if-eqz p1, :cond_2

    .line 450
    invoke-static {p0}, Landroid/text/method/MetaKeyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    return v1

    :cond_2
    return v2
.end method

.method private hasGlyph(Ljava/lang/CharSequence;IILandroidx/emoji2/text/TypefaceEmojiRasterizer;)Z
    .locals 1

    .line 587
    invoke-virtual {p4}, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->getHasGlyph()I

    move-result v0

    if-nez v0, :cond_0

    .line 588
    iget-object p0, p0, Landroidx/emoji2/text/EmojiProcessor;->mGlyphChecker:Landroidx/emoji2/text/EmojiCompat$GlyphChecker;

    .line 589
    invoke-virtual {p4}, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->getSdkAdded()S

    move-result v0

    .line 588
    invoke-interface {p0, p1, p2, p3, v0}, Landroidx/emoji2/text/EmojiCompat$GlyphChecker;->hasGlyph(Ljava/lang/CharSequence;III)Z

    move-result p0

    .line 590
    invoke-virtual {p4, p0}, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->setHasGlyph(Z)V

    .line 593
    :cond_0
    invoke-virtual {p4}, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->getHasGlyph()I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static hasInvalidSelection(II)Z
    .locals 1

    .line 0
    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    if-eq p1, v0, :cond_1

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static hasModifiers(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 569
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result p0

    invoke-static {p0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private initExclusions(Ljava/util/Set;)V
    .locals 8

    .line 141
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 144
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 145
    new-instance v2, Ljava/lang/String;

    array-length v1, v0

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v1}, Ljava/lang/String;-><init>([III)V

    .line 146
    new-instance v7, Landroidx/emoji2/text/EmojiProcessor$MarkExclusionCallback;

    invoke-direct {v7, v2}, Landroidx/emoji2/text/EmojiProcessor$MarkExclusionCallback;-><init>(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Landroidx/emoji2/text/EmojiProcessor;->process(Ljava/lang/CharSequence;IIIZLandroidx/emoji2/text/EmojiProcessor$EmojiProcessCallback;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private process(Ljava/lang/CharSequence;IIIZLandroidx/emoji2/text/EmojiProcessor$EmojiProcessCallback;)Ljava/lang/Object;
    .locals 8

    .line 364
    new-instance v0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;

    iget-object v1, p0, Landroidx/emoji2/text/EmojiProcessor;->mMetadataRepo:Landroidx/emoji2/text/MetadataRepo;

    invoke-virtual {v1}, Landroidx/emoji2/text/MetadataRepo;->getRootNode()Landroidx/emoji2/text/MetadataRepo$Node;

    move-result-object v1

    iget-boolean v2, p0, Landroidx/emoji2/text/EmojiProcessor;->mUseEmojiAsDefaultStyle:Z

    iget-object v3, p0, Landroidx/emoji2/text/EmojiProcessor;->mEmojiAsDefaultStyleExceptions:[I

    invoke-direct {v0, v1, v2, v3}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;-><init>(Landroidx/emoji2/text/MetadataRepo$Node;Z[I)V

    .line 368
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    move v4, v2

    move v5, v3

    move v2, v1

    :cond_0
    :goto_0
    move v1, p2

    :cond_1
    :goto_1
    if-ge p2, p3, :cond_7

    if-ge v4, p4, :cond_7

    if-eqz v5, :cond_7

    .line 372
    invoke-virtual {v0, v2}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->check(I)I

    move-result v6

    if-eq v6, v3, :cond_5

    const/4 v7, 0x2

    if-eq v6, v7, :cond_4

    const/4 v7, 0x3

    if-eq v6, v7, :cond_2

    goto :goto_1

    :cond_2
    if-nez p5, :cond_3

    .line 390
    invoke-virtual {v0}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->getFlushMetadata()Landroidx/emoji2/text/TypefaceEmojiRasterizer;

    move-result-object v6

    .line 389
    invoke-direct {p0, p1, v1, p2, v6}, Landroidx/emoji2/text/EmojiProcessor;->hasGlyph(Ljava/lang/CharSequence;IILandroidx/emoji2/text/TypefaceEmojiRasterizer;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 392
    :cond_3
    invoke-virtual {v0}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->getFlushMetadata()Landroidx/emoji2/text/TypefaceEmojiRasterizer;

    move-result-object v5

    .line 391
    invoke-interface {p6, p1, v1, p2, v5}, Landroidx/emoji2/text/EmojiProcessor$EmojiProcessCallback;->handleEmoji(Ljava/lang/CharSequence;IILandroidx/emoji2/text/TypefaceEmojiRasterizer;)Z

    move-result v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 383
    :cond_4
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    add-int/2addr p2, v6

    if-ge p2, p3, :cond_1

    .line 385
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    goto :goto_1

    .line 376
    :cond_5
    invoke-static {p1, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Character;->charCount(I)I

    move-result p2

    add-int/2addr v1, p2

    if-ge v1, p3, :cond_6

    .line 379
    invoke-static {p1, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result p2

    move v2, p2

    :cond_6
    move p2, v1

    goto :goto_1

    .line 404
    :cond_7
    invoke-virtual {v0}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->isInFlushableState()Z

    move-result p3

    if-eqz p3, :cond_9

    if-ge v4, p4, :cond_9

    if-eqz v5, :cond_9

    if-nez p5, :cond_8

    .line 406
    invoke-virtual {v0}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->getCurrentMetadata()Landroidx/emoji2/text/TypefaceEmojiRasterizer;

    move-result-object p3

    .line 405
    invoke-direct {p0, p1, v1, p2, p3}, Landroidx/emoji2/text/EmojiProcessor;->hasGlyph(Ljava/lang/CharSequence;IILandroidx/emoji2/text/TypefaceEmojiRasterizer;)Z

    move-result p0

    if-nez p0, :cond_9

    .line 408
    :cond_8
    invoke-virtual {v0}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->getCurrentMetadata()Landroidx/emoji2/text/TypefaceEmojiRasterizer;

    move-result-object p0

    .line 407
    invoke-interface {p6, p1, v1, p2, p0}, Landroidx/emoji2/text/EmojiProcessor$EmojiProcessCallback;->handleEmoji(Ljava/lang/CharSequence;IILandroidx/emoji2/text/TypefaceEmojiRasterizer;)Z

    .line 413
    :cond_9
    invoke-interface {p6}, Landroidx/emoji2/text/EmojiProcessor$EmojiProcessCallback;->getResult()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method getEmojiEnd(Ljava/lang/CharSequence;I)I
    .locals 9

    if-ltz p2, :cond_2

    .line 245
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lt p2, v0, :cond_0

    goto :goto_0

    .line 249
    :cond_0
    instance-of v0, p1, Landroid/text/Spanned;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 250
    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    add-int/lit8 v2, p2, 0x1

    .line 251
    const-class v3, Landroidx/emoji2/text/EmojiSpan;

    invoke-interface {v0, p2, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroidx/emoji2/text/EmojiSpan;

    .line 252
    array-length v3, v2

    if-lez v3, :cond_1

    .line 253
    aget-object p0, v2, v1

    invoke-interface {v0, p0}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_1
    add-int/lit8 v0, p2, -0x10

    .line 258
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 259
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v1, p2, 0x10

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 260
    new-instance v8, Landroidx/emoji2/text/EmojiProcessor$EmojiProcessLookupCallback;

    invoke-direct {v8, p2}, Landroidx/emoji2/text/EmojiProcessor$EmojiProcessLookupCallback;-><init>(I)V

    const v6, 0x7fffffff

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v8}, Landroidx/emoji2/text/EmojiProcessor;->process(Ljava/lang/CharSequence;IIIZLandroidx/emoji2/text/EmojiProcessor$EmojiProcessCallback;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/emoji2/text/EmojiProcessor$EmojiProcessLookupCallback;

    iget p0, p0, Landroidx/emoji2/text/EmojiProcessor$EmojiProcessLookupCallback;->end:I

    return p0

    :cond_2
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method getEmojiStart(Ljava/lang/CharSequence;I)I
    .locals 9

    if-ltz p2, :cond_2

    .line 222
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lt p2, v0, :cond_0

    goto :goto_0

    .line 226
    :cond_0
    instance-of v0, p1, Landroid/text/Spanned;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 227
    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    add-int/lit8 v2, p2, 0x1

    .line 228
    const-class v3, Landroidx/emoji2/text/EmojiSpan;

    invoke-interface {v0, p2, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroidx/emoji2/text/EmojiSpan;

    .line 229
    array-length v3, v2

    if-lez v3, :cond_1

    .line 230
    aget-object p0, v2, v1

    invoke-interface {v0, p0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_1
    add-int/lit8 v0, p2, -0x10

    .line 235
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 236
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v1, p2, 0x10

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 237
    new-instance v8, Landroidx/emoji2/text/EmojiProcessor$EmojiProcessLookupCallback;

    invoke-direct {v8, p2}, Landroidx/emoji2/text/EmojiProcessor$EmojiProcessLookupCallback;-><init>(I)V

    const v6, 0x7fffffff

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v8}, Landroidx/emoji2/text/EmojiProcessor;->process(Ljava/lang/CharSequence;IIIZLandroidx/emoji2/text/EmojiProcessor$EmojiProcessCallback;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/emoji2/text/EmojiProcessor$EmojiProcessLookupCallback;

    iget p0, p0, Landroidx/emoji2/text/EmojiProcessor$EmojiProcessLookupCallback;->start:I

    return p0

    :cond_2
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method process(Ljava/lang/CharSequence;IIIZ)Ljava/lang/CharSequence;
    .locals 9

    .line 288
    instance-of v0, p1, Landroidx/emoji2/text/SpannableBuilder;

    if-eqz v0, :cond_0

    .line 290
    move-object v1, p1

    check-cast v1, Landroidx/emoji2/text/SpannableBuilder;

    invoke-virtual {v1}, Landroidx/emoji2/text/SpannableBuilder;->beginBatchEdit()V

    :cond_0
    if-nez v0, :cond_3

    .line 298
    :try_start_0
    instance-of v1, p1, Landroid/text/Spannable;

    if-eqz v1, :cond_1

    goto :goto_0

    .line 300
    :cond_1
    instance-of v1, p1, Landroid/text/Spanned;

    if-eqz v1, :cond_2

    .line 303
    move-object v1, p1

    check-cast v1, Landroid/text/Spanned;

    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v3, p3, 0x1

    const-class v4, Landroidx/emoji2/text/EmojiSpan;

    invoke-interface {v1, v2, v3, v4}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v1

    if-gt v1, p3, :cond_2

    .line 307
    new-instance v1, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;

    invoke-direct {v1, p1}, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 299
    :cond_3
    :goto_0
    new-instance v1, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;

    move-object v2, p1

    check-cast v2, Landroid/text/Spannable;

    invoke-direct {v1, v2}, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;-><init>(Landroid/text/Spannable;)V

    :goto_1
    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 312
    const-class v3, Landroidx/emoji2/text/EmojiSpan;

    invoke-virtual {v1, p2, p3, v3}, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroidx/emoji2/text/EmojiSpan;

    if-eqz v3, :cond_5

    .line 313
    array-length v4, v3

    if-lez v4, :cond_5

    .line 316
    array-length v4, v3

    move v5, v2

    :goto_2
    if-ge v5, v4, :cond_5

    .line 318
    aget-object v6, v3, v5

    .line 319
    invoke-virtual {v1, v6}, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    .line 320
    invoke-virtual {v1, v6}, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    if-eq v7, p3, :cond_4

    .line 326
    invoke-virtual {v1, v6}, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->removeSpan(Ljava/lang/Object;)V

    .line 328
    :cond_4
    invoke-static {v7, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 329
    invoke-static {v8, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    move v3, p2

    move v4, p3

    if-eq v3, v4, :cond_b

    .line 334
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-lt v3, p2, :cond_6

    goto :goto_3

    :cond_6
    const p2, 0x7fffffff

    if-eq p4, p2, :cond_7

    if-eqz v1, :cond_7

    .line 341
    invoke-virtual {v1}, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->length()I

    move-result p2

    const-class p3, Landroidx/emoji2/text/EmojiSpan;

    invoke-virtual {v1, v2, p2, p3}, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroidx/emoji2/text/EmojiSpan;

    array-length p2, p2

    sub-int/2addr p4, p2

    :cond_7
    move v5, p4

    .line 344
    new-instance v7, Landroidx/emoji2/text/EmojiProcessor$EmojiProcessAddSpanCallback;

    iget-object p2, p0, Landroidx/emoji2/text/EmojiProcessor;->mSpanFactory:Landroidx/emoji2/text/EmojiCompat$SpanFactory;

    invoke-direct {v7, v1, p2}, Landroidx/emoji2/text/EmojiProcessor$EmojiProcessAddSpanCallback;-><init>(Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;Landroidx/emoji2/text/EmojiCompat$SpanFactory;)V

    move-object v1, p0

    move-object v2, p1

    move v6, p5

    invoke-direct/range {v1 .. v7}, Landroidx/emoji2/text/EmojiProcessor;->process(Ljava/lang/CharSequence;IIIZLandroidx/emoji2/text/EmojiProcessor$EmojiProcessCallback;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;

    if-eqz p0, :cond_9

    .line 349
    invoke-virtual {p0}, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->getUnwrappedSpannable()Landroid/text/Spannable;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_8

    .line 355
    check-cast p1, Landroidx/emoji2/text/SpannableBuilder;

    invoke-virtual {p1}, Landroidx/emoji2/text/SpannableBuilder;->endBatchEdit()V

    :cond_8
    return-object p0

    :cond_9
    if-eqz v0, :cond_a

    move-object p0, p1

    check-cast p0, Landroidx/emoji2/text/SpannableBuilder;

    invoke-virtual {p0}, Landroidx/emoji2/text/SpannableBuilder;->endBatchEdit()V

    :cond_a
    return-object p1

    :cond_b
    :goto_3
    if-eqz v0, :cond_c

    move-object p0, p1

    check-cast p0, Landroidx/emoji2/text/SpannableBuilder;

    invoke-virtual {p0}, Landroidx/emoji2/text/SpannableBuilder;->endBatchEdit()V

    :cond_c
    return-object p1

    :goto_4
    if-eqz v0, :cond_d

    check-cast p1, Landroidx/emoji2/text/SpannableBuilder;

    invoke-virtual {p1}, Landroidx/emoji2/text/SpannableBuilder;->endBatchEdit()V

    .line 357
    :cond_d
    throw p0
.end method
