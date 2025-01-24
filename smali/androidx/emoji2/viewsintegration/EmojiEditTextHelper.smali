.class public final Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;
.super Ljava/lang/Object;
.source "EmojiEditTextHelper.java"


# instance fields
.field private final mEditText:Landroid/widget/EditText;

.field private mEmojiReplaceStrategy:I

.field private mMaxEmojiCount:I

.field private final mTextWatcher:Landroidx/emoji2/viewsintegration/EmojiTextWatcher;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;Z)V
    .locals 1

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 70
    iput v0, p0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;->mMaxEmojiCount:I

    const/4 v0, 0x0

    .line 71
    iput v0, p0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;->mEmojiReplaceStrategy:I

    .line 105
    const-string v0, "editText cannot be null"

    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iput-object p1, p0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;->mEditText:Landroid/widget/EditText;

    .line 107
    new-instance v0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;

    invoke-direct {v0, p1, p2}, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;-><init>(Landroid/widget/EditText;Z)V

    iput-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;->mTextWatcher:Landroidx/emoji2/viewsintegration/EmojiTextWatcher;

    .line 108
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 109
    invoke-static {}, Landroidx/emoji2/viewsintegration/EmojiEditableFactory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setEditableFactory(Landroid/text/Editable$Factory;)V

    return-void
.end method


# virtual methods
.method public getKeyListener(Landroid/text/method/KeyListener;)Landroid/text/method/KeyListener;
    .locals 0

    .line 153
    instance-of p0, p1, Landroidx/emoji2/viewsintegration/EmojiKeyListener;

    if-eqz p0, :cond_0

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 162
    :cond_1
    instance-of p0, p1, Landroid/text/method/NumberKeyListener;

    if-eqz p0, :cond_2

    return-object p1

    .line 168
    :cond_2
    new-instance p0, Landroidx/emoji2/viewsintegration/EmojiKeyListener;

    invoke-direct {p0, p1}, Landroidx/emoji2/viewsintegration/EmojiKeyListener;-><init>(Landroid/text/method/KeyListener;)V

    return-object p0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 187
    :cond_0
    instance-of v0, p1, Landroidx/emoji2/viewsintegration/EmojiInputConnection;

    if-eqz v0, :cond_1

    return-object p1

    .line 192
    :cond_1
    new-instance v0, Landroidx/emoji2/viewsintegration/EmojiInputConnection;

    iget-object p0, p0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-direct {v0, p0, p1, p2}, Landroidx/emoji2/viewsintegration/EmojiInputConnection;-><init>(Landroid/widget/TextView;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V

    return-object v0
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 243
    iget-object p0, p0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;->mTextWatcher:Landroidx/emoji2/viewsintegration/EmojiTextWatcher;

    invoke-virtual {p0, p1}, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->setEnabled(Z)V

    return-void
.end method
