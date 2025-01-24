.class public Landroidx/emoji2/text/EmojiCompat$DefaultSpanFactory;
.super Ljava/lang/Object;
.source "EmojiCompat.java"

# interfaces
.implements Landroidx/emoji2/text/EmojiCompat$SpanFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createSpan(Landroidx/emoji2/text/TypefaceEmojiRasterizer;)Landroidx/emoji2/text/EmojiSpan;
    .locals 0

    .line 1233
    new-instance p0, Landroidx/emoji2/text/TypefaceEmojiSpan;

    invoke-direct {p0, p1}, Landroidx/emoji2/text/TypefaceEmojiSpan;-><init>(Landroidx/emoji2/text/TypefaceEmojiRasterizer;)V

    return-object p0
.end method
