.class Landroidx/emoji2/text/EmojiCompatInitializer$BackgroundDefaultConfig;
.super Landroidx/emoji2/text/EmojiCompat$Config;
.source "EmojiCompatInitializer.java"


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 142
    new-instance v0, Landroidx/emoji2/text/EmojiCompatInitializer$BackgroundDefaultLoader;

    invoke-direct {v0, p1}, Landroidx/emoji2/text/EmojiCompatInitializer$BackgroundDefaultLoader;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Landroidx/emoji2/text/EmojiCompat$Config;-><init>(Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoader;)V

    const/4 p1, 0x1

    .line 143
    invoke-virtual {p0, p1}, Landroidx/emoji2/text/EmojiCompat$Config;->setMetadataLoadStrategy(I)Landroidx/emoji2/text/EmojiCompat$Config;

    return-void
.end method
