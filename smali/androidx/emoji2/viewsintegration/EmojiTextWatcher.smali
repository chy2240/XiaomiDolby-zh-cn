.class final Landroidx/emoji2/viewsintegration/EmojiTextWatcher;
.super Ljava/lang/Object;
.source "EmojiTextWatcher.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private final mEditText:Landroid/widget/EditText;

.field private mEmojiReplaceStrategy:I

.field private mEnabled:Z

.field private final mExpectInitializedEmojiCompat:Z

.field private mInitCallback:Landroidx/emoji2/text/EmojiCompat$InitCallback;

.field private mLastEditLength:I

.field private mLastEditPosition:I

.field private mMaxEmojiCount:I


# direct methods
.method constructor <init>(Landroid/widget/EditText;Z)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 43
    iput v0, p0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->mMaxEmojiCount:I

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->mEmojiReplaceStrategy:I

    .line 51
    iput-object p1, p0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->mEditText:Landroid/widget/EditText;

    .line 52
    iput-boolean p2, p0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->mExpectInitializedEmojiCompat:Z

    const/4 p1, 0x1

    .line 53
    iput-boolean p1, p0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->mEnabled:Z

    return-void
.end method

.method static processTextOnEnablingEvent(Landroid/widget/EditText;I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    if-eqz p0, :cond_0

    .line 171
    invoke-virtual {p0}, Landroid/widget/EditText;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 172
    invoke-virtual {p0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object p0

    .line 174
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result p1

    .line 175
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 177
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->get()Landroidx/emoji2/text/EmojiCompat;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroidx/emoji2/text/EmojiCompat;->process(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 179
    invoke-static {p0, p1, v0}, Landroidx/emoji2/viewsintegration/EmojiInputFilter;->updateSelection(Landroid/text/Spannable;II)V

    :cond_0
    return-void
.end method

.method private shouldSkipForDisabledOrNotConfigured()Z
    .locals 1

    .line 80
    iget-boolean v0, p0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->mEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->mExpectInitializedEmojiCompat:Z

    if-nez p0, :cond_0

    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->isConfigured()Z

    move-result p0

    if-nez p0, :cond_0

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


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 7

    .line 90
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->shouldSkipForDisabledOrNotConfigured()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    iget v3, p0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->mLastEditPosition:I

    .line 94
    iget v0, p0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->mLastEditLength:I

    if-lez v0, :cond_3

    .line 97
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->get()Landroidx/emoji2/text/EmojiCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/emoji2/text/EmojiCompat;->getLoadState()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 p1, 0x3

    if-eq v1, p1, :cond_2

    goto :goto_0

    .line 99
    :cond_1
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->get()Landroidx/emoji2/text/EmojiCompat;

    move-result-object v1

    add-int v4, v3, v0

    iget v5, p0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->mMaxEmojiCount:I

    iget v6, p0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->mEmojiReplaceStrategy:I

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroidx/emoji2/text/EmojiCompat;->process(Ljava/lang/CharSequence;IIII)Ljava/lang/CharSequence;

    goto :goto_0

    .line 104
    :cond_2
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->get()Landroidx/emoji2/text/EmojiCompat;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->getInitCallback()Landroidx/emoji2/text/EmojiCompat$InitCallback;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/emoji2/text/EmojiCompat;->registerInitCallback(Landroidx/emoji2/text/EmojiCompat$InitCallback;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 0
    return-void
.end method

.method getInitCallback()Landroidx/emoji2/text/EmojiCompat$InitCallback;
    .locals 2

    .line 118
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->mInitCallback:Landroidx/emoji2/text/EmojiCompat$InitCallback;

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher$InitCallbackImpl;

    iget-object v1, p0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->mEditText:Landroid/widget/EditText;

    invoke-direct {v0, v1}, Landroidx/emoji2/viewsintegration/EmojiTextWatcher$InitCallbackImpl;-><init>(Landroid/widget/EditText;)V

    iput-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->mInitCallback:Landroidx/emoji2/text/EmojiCompat$InitCallback;

    .line 121
    :cond_0
    iget-object p0, p0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->mInitCallback:Landroidx/emoji2/text/EmojiCompat$InitCallback;

    return-object p0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 75
    iput p2, p0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->mLastEditPosition:I

    .line 76
    iput p4, p0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->mLastEditLength:I

    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    .line 129
    iget-boolean v0, p0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->mEnabled:Z

    if-eq v0, p1, :cond_1

    .line 130
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->mInitCallback:Landroidx/emoji2/text/EmojiCompat$InitCallback;

    if-eqz v0, :cond_0

    .line 131
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->get()Landroidx/emoji2/text/EmojiCompat;

    move-result-object v0

    iget-object v1, p0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->mInitCallback:Landroidx/emoji2/text/EmojiCompat$InitCallback;

    invoke-virtual {v0, v1}, Landroidx/emoji2/text/EmojiCompat;->unregisterInitCallback(Landroidx/emoji2/text/EmojiCompat$InitCallback;)V

    .line 133
    :cond_0
    iput-boolean p1, p0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->mEnabled:Z

    if-eqz p1, :cond_1

    .line 135
    iget-object p0, p0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->mEditText:Landroid/widget/EditText;

    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->get()Landroidx/emoji2/text/EmojiCompat;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/emoji2/text/EmojiCompat;->getLoadState()I

    move-result p1

    invoke-static {p0, p1}, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->processTextOnEnablingEvent(Landroid/widget/EditText;I)V

    :cond_1
    return-void
.end method
