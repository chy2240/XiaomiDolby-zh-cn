.class final Landroidx/emoji2/text/EmojiCompat$CompatInternal;
.super Ljava/lang/Object;
.source "EmojiCompat.java"


# instance fields
.field private final mEmojiCompat:Landroidx/emoji2/text/EmojiCompat;

.field private volatile mMetadataRepo:Landroidx/emoji2/text/MetadataRepo;

.field private volatile mProcessor:Landroidx/emoji2/text/EmojiProcessor;


# direct methods
.method constructor <init>(Landroidx/emoji2/text/EmojiCompat;)V
    .locals 0

    .line 1649
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1650
    iput-object p1, p0, Landroidx/emoji2/text/EmojiCompat$CompatInternal;->mEmojiCompat:Landroidx/emoji2/text/EmojiCompat;

    return-void
.end method

.method static synthetic access$000(Landroidx/emoji2/text/EmojiCompat$CompatInternal;)Landroidx/emoji2/text/EmojiCompat;
    .locals 0

    .line 1636
    iget-object p0, p0, Landroidx/emoji2/text/EmojiCompat$CompatInternal;->mEmojiCompat:Landroidx/emoji2/text/EmojiCompat;

    return-object p0
.end method


# virtual methods
.method getEmojiEnd(Ljava/lang/CharSequence;I)I
    .locals 0

    .line 1711
    iget-object p0, p0, Landroidx/emoji2/text/EmojiCompat$CompatInternal;->mProcessor:Landroidx/emoji2/text/EmojiProcessor;

    invoke-virtual {p0, p1, p2}, Landroidx/emoji2/text/EmojiProcessor;->getEmojiEnd(Ljava/lang/CharSequence;I)I

    move-result p0

    return p0
.end method

.method getEmojiStart(Ljava/lang/CharSequence;I)I
    .locals 0

    .line 1707
    iget-object p0, p0, Landroidx/emoji2/text/EmojiCompat$CompatInternal;->mProcessor:Landroidx/emoji2/text/EmojiProcessor;

    invoke-virtual {p0, p1, p2}, Landroidx/emoji2/text/EmojiProcessor;->getEmojiStart(Ljava/lang/CharSequence;I)I

    move-result p0

    return p0
.end method

.method loadMetadata()V
    .locals 2

    .line 1655
    :try_start_0
    new-instance v0, Landroidx/emoji2/text/EmojiCompat$CompatInternal$1;

    invoke-direct {v0, p0}, Landroidx/emoji2/text/EmojiCompat$CompatInternal$1;-><init>(Landroidx/emoji2/text/EmojiCompat$CompatInternal;)V

    .line 1666
    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat$CompatInternal;->mEmojiCompat:Landroidx/emoji2/text/EmojiCompat;

    iget-object v1, v1, Landroidx/emoji2/text/EmojiCompat;->mMetadataLoader:Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoader;

    invoke-interface {v1, v0}, Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoader;->load(Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoaderCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1668
    iget-object p0, p0, Landroidx/emoji2/text/EmojiCompat$CompatInternal;->mEmojiCompat:Landroidx/emoji2/text/EmojiCompat;

    invoke-virtual {p0, v0}, Landroidx/emoji2/text/EmojiCompat;->onMetadataLoadFailed(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method onMetadataLoadSuccess(Landroidx/emoji2/text/MetadataRepo;)V
    .locals 8

    if-nez p1, :cond_0

    .line 1675
    iget-object p0, p0, Landroidx/emoji2/text/EmojiCompat$CompatInternal;->mEmojiCompat:Landroidx/emoji2/text/EmojiCompat;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "metadataRepo cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/emoji2/text/EmojiCompat;->onMetadataLoadFailed(Ljava/lang/Throwable;)V

    return-void

    .line 1680
    :cond_0
    iput-object p1, p0, Landroidx/emoji2/text/EmojiCompat$CompatInternal;->mMetadataRepo:Landroidx/emoji2/text/MetadataRepo;

    .line 1681
    new-instance p1, Landroidx/emoji2/text/EmojiProcessor;

    iget-object v2, p0, Landroidx/emoji2/text/EmojiCompat$CompatInternal;->mMetadataRepo:Landroidx/emoji2/text/MetadataRepo;

    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat$CompatInternal;->mEmojiCompat:Landroidx/emoji2/text/EmojiCompat;

    .line 1683
    invoke-static {v0}, Landroidx/emoji2/text/EmojiCompat;->access$100(Landroidx/emoji2/text/EmojiCompat;)Landroidx/emoji2/text/EmojiCompat$SpanFactory;

    move-result-object v3

    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat$CompatInternal;->mEmojiCompat:Landroidx/emoji2/text/EmojiCompat;

    .line 1684
    invoke-static {v0}, Landroidx/emoji2/text/EmojiCompat;->access$200(Landroidx/emoji2/text/EmojiCompat;)Landroidx/emoji2/text/EmojiCompat$GlyphChecker;

    move-result-object v4

    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat$CompatInternal;->mEmojiCompat:Landroidx/emoji2/text/EmojiCompat;

    iget-boolean v5, v0, Landroidx/emoji2/text/EmojiCompat;->mUseEmojiAsDefaultStyle:Z

    iget-object v6, v0, Landroidx/emoji2/text/EmojiCompat;->mEmojiAsDefaultStyleExceptions:[I

    .line 1687
    invoke-static {}, Landroidx/emoji2/text/EmojiExclusions;->getEmojiExclusions()Ljava/util/Set;

    move-result-object v7

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Landroidx/emoji2/text/EmojiProcessor;-><init>(Landroidx/emoji2/text/MetadataRepo;Landroidx/emoji2/text/EmojiCompat$SpanFactory;Landroidx/emoji2/text/EmojiCompat$GlyphChecker;Z[ILjava/util/Set;)V

    iput-object p1, p0, Landroidx/emoji2/text/EmojiCompat$CompatInternal;->mProcessor:Landroidx/emoji2/text/EmojiProcessor;

    .line 1690
    iget-object p0, p0, Landroidx/emoji2/text/EmojiCompat$CompatInternal;->mEmojiCompat:Landroidx/emoji2/text/EmojiCompat;

    invoke-virtual {p0}, Landroidx/emoji2/text/EmojiCompat;->onMetadataLoadSuccess()V

    return-void
.end method

.method process(Ljava/lang/CharSequence;IIIZ)Ljava/lang/CharSequence;
    .locals 6

    .line 1716
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat$CompatInternal;->mProcessor:Landroidx/emoji2/text/EmojiProcessor;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/emoji2/text/EmojiProcessor;->process(Ljava/lang/CharSequence;IIIZ)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method updateEditorInfoAttrs(Landroid/view/inputmethod/EditorInfo;)V
    .locals 3

    .line 1720
    iget-object v0, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat$CompatInternal;->mMetadataRepo:Landroidx/emoji2/text/MetadataRepo;

    invoke-virtual {v1}, Landroidx/emoji2/text/MetadataRepo;->getMetadataVersion()I

    move-result v1

    const-string v2, "android.support.text.emoji.emojiCompat_metadataVersion"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1721
    iget-object p1, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    iget-object p0, p0, Landroidx/emoji2/text/EmojiCompat$CompatInternal;->mEmojiCompat:Landroidx/emoji2/text/EmojiCompat;

    iget-boolean p0, p0, Landroidx/emoji2/text/EmojiCompat;->mReplaceAll:Z

    const-string v0, "android.support.text.emoji.emojiCompat_replaceAll"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
