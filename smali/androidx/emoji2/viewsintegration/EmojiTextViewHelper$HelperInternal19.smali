.class Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;
.super Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal;
.source "EmojiTextViewHelper.java"


# instance fields
.field private final mEmojiInputFilter:Landroidx/emoji2/viewsintegration/EmojiInputFilter;

.field private mEnabled:Z

.field private final mTextView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    .line 316
    invoke-direct {p0}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal;-><init>()V

    .line 317
    iput-object p1, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;->mTextView:Landroid/widget/TextView;

    const/4 v0, 0x1

    .line 318
    iput-boolean v0, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;->mEnabled:Z

    .line 319
    new-instance v0, Landroidx/emoji2/viewsintegration/EmojiInputFilter;

    invoke-direct {v0, p1}, Landroidx/emoji2/viewsintegration/EmojiInputFilter;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;->mEmojiInputFilter:Landroidx/emoji2/viewsintegration/EmojiInputFilter;

    return-void
.end method

.method private addEmojiInputFilterIfMissing([Landroid/text/InputFilter;)[Landroid/text/InputFilter;
    .locals 5

    .line 359
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 361
    aget-object v3, p1, v2

    iget-object v4, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;->mEmojiInputFilter:Landroidx/emoji2/viewsintegration/EmojiInputFilter;

    if-ne v3, v4, :cond_0

    return-object p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 365
    :cond_1
    array-length v2, p1

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [Landroid/text/InputFilter;

    .line 366
    invoke-static {p1, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 367
    iget-object p0, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;->mEmojiInputFilter:Landroidx/emoji2/viewsintegration/EmojiInputFilter;

    aput-object p0, v2, v0

    return-object v2
.end method

.method private getEmojiInputFilterPositionArray([Landroid/text/InputFilter;)Landroid/util/SparseArray;
    .locals 3

    .line 403
    new-instance p0, Landroid/util/SparseArray;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/util/SparseArray;-><init>(I)V

    const/4 v0, 0x0

    .line 404
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 405
    aget-object v1, p1, v0

    instance-of v2, v1, Landroidx/emoji2/viewsintegration/EmojiInputFilter;

    if-eqz v2, :cond_0

    .line 406
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private removeEmojiInputFilterIfPresent([Landroid/text/InputFilter;)[Landroid/text/InputFilter;
    .locals 5

    .line 379
    invoke-direct {p0, p1}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;->getEmojiInputFilterPositionArray([Landroid/text/InputFilter;)Landroid/util/SparseArray;

    move-result-object p0

    .line 380
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 385
    :cond_0
    array-length v0, p1

    .line 386
    array-length v1, p1

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    sub-int/2addr v1, v2

    .line 387
    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_2

    .line 390
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v4

    if-gez v4, :cond_1

    .line 391
    aget-object v4, p1, v2

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private unwrapForDisabled(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;
    .locals 0

    .line 429
    instance-of p0, p1, Landroidx/emoji2/viewsintegration/EmojiTransformationMethod;

    if-eqz p0, :cond_0

    .line 430
    check-cast p1, Landroidx/emoji2/viewsintegration/EmojiTransformationMethod;

    .line 432
    invoke-virtual {p1}, Landroidx/emoji2/viewsintegration/EmojiTransformationMethod;->getOriginalTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method private updateFilters()V
    .locals 2

    .line 336
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getFilters()[Landroid/text/InputFilter;

    move-result-object v0

    .line 337
    iget-object v1, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;->getFilters([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method private wrapForEnabled(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;
    .locals 0

    .line 446
    instance-of p0, p1, Landroidx/emoji2/viewsintegration/EmojiTransformationMethod;

    if-eqz p0, :cond_0

    return-object p1

    .line 448
    :cond_0
    instance-of p0, p1, Landroid/text/method/PasswordTransformationMethod;

    if-eqz p0, :cond_1

    return-object p1

    .line 451
    :cond_1
    new-instance p0, Landroidx/emoji2/viewsintegration/EmojiTransformationMethod;

    invoke-direct {p0, p1}, Landroidx/emoji2/viewsintegration/EmojiTransformationMethod;-><init>(Landroid/text/method/TransformationMethod;)V

    return-object p0
.end method


# virtual methods
.method getFilters([Landroid/text/InputFilter;)[Landroid/text/InputFilter;
    .locals 1

    .line 343
    iget-boolean v0, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;->mEnabled:Z

    if-nez v0, :cond_0

    .line 345
    invoke-direct {p0, p1}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;->removeEmojiInputFilterIfPresent([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    move-result-object p0

    return-object p0

    .line 347
    :cond_0
    invoke-direct {p0, p1}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;->addEmojiInputFilterIfMissing([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    move-result-object p0

    return-object p0
.end method

.method public isEnabled()Z
    .locals 0

    .line 473
    iget-boolean p0, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;->mEnabled:Z

    return p0
.end method

.method setAllCaps(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 460
    invoke-virtual {p0}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;->updateTransformationMethod()V

    :cond_0
    return-void
.end method

.method setEnabled(Z)V
    .locals 0

    .line 466
    iput-boolean p1, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;->mEnabled:Z

    .line 467
    invoke-virtual {p0}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;->updateTransformationMethod()V

    .line 468
    invoke-direct {p0}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;->updateFilters()V

    return-void
.end method

.method setEnabledUnsafe(Z)V
    .locals 0

    .line 484
    iput-boolean p1, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;->mEnabled:Z

    return-void
.end method

.method updateTransformationMethod()V
    .locals 1

    .line 327
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;->mTextView:Landroid/widget/TextView;

    .line 328
    invoke-virtual {v0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;->wrapTransformationMethod(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;

    move-result-object v0

    .line 329
    iget-object p0, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    return-void
.end method

.method wrapTransformationMethod(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;
    .locals 1

    .line 416
    iget-boolean v0, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 417
    invoke-direct {p0, p1}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;->wrapForEnabled(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;

    move-result-object p0

    return-object p0

    .line 419
    :cond_0
    invoke-direct {p0, p1}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;->unwrapForDisabled(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;

    move-result-object p0

    return-object p0
.end method
