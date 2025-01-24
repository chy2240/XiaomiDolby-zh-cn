.class Landroidx/emoji2/text/EmojiCompat$CompatInternal$1;
.super Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoaderCallback;
.source "EmojiCompat.java"


# instance fields
.field final synthetic this$0:Landroidx/emoji2/text/EmojiCompat$CompatInternal;


# direct methods
.method constructor <init>(Landroidx/emoji2/text/EmojiCompat$CompatInternal;)V
    .locals 0

    .line 1655
    iput-object p1, p0, Landroidx/emoji2/text/EmojiCompat$CompatInternal$1;->this$0:Landroidx/emoji2/text/EmojiCompat$CompatInternal;

    invoke-direct {p0}, Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoaderCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/Throwable;)V
    .locals 0

    .line 1663
    iget-object p0, p0, Landroidx/emoji2/text/EmojiCompat$CompatInternal$1;->this$0:Landroidx/emoji2/text/EmojiCompat$CompatInternal;

    invoke-static {p0}, Landroidx/emoji2/text/EmojiCompat$CompatInternal;->access$000(Landroidx/emoji2/text/EmojiCompat$CompatInternal;)Landroidx/emoji2/text/EmojiCompat;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/emoji2/text/EmojiCompat;->onMetadataLoadFailed(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onLoaded(Landroidx/emoji2/text/MetadataRepo;)V
    .locals 0

    .line 1658
    iget-object p0, p0, Landroidx/emoji2/text/EmojiCompat$CompatInternal$1;->this$0:Landroidx/emoji2/text/EmojiCompat$CompatInternal;

    invoke-virtual {p0, p1}, Landroidx/emoji2/text/EmojiCompat$CompatInternal;->onMetadataLoadSuccess(Landroidx/emoji2/text/MetadataRepo;)V

    return-void
.end method
