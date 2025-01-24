.class Landroidx/emoji2/text/MetadataRepo$Node;
.super Ljava/lang/Object;
.source "MetadataRepo.java"


# instance fields
.field private final mChildren:Landroid/util/SparseArray;

.field private mData:Landroidx/emoji2/text/TypefaceEmojiRasterizer;


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 237
    invoke-direct {p0, v0}, Landroidx/emoji2/text/MetadataRepo$Node;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .locals 1

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, p1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Landroidx/emoji2/text/MetadataRepo$Node;->mChildren:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method get(I)Landroidx/emoji2/text/MetadataRepo$Node;
    .locals 0

    .line 246
    iget-object p0, p0, Landroidx/emoji2/text/MetadataRepo$Node;->mChildren:Landroid/util/SparseArray;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/emoji2/text/MetadataRepo$Node;

    :goto_0
    return-object p0
.end method

.method final getData()Landroidx/emoji2/text/TypefaceEmojiRasterizer;
    .locals 0

    .line 250
    iget-object p0, p0, Landroidx/emoji2/text/MetadataRepo$Node;->mData:Landroidx/emoji2/text/TypefaceEmojiRasterizer;

    return-object p0
.end method

.method put(Landroidx/emoji2/text/TypefaceEmojiRasterizer;II)V
    .locals 2

    .line 255
    invoke-virtual {p1, p2}, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->getCodepointAt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/emoji2/text/MetadataRepo$Node;->get(I)Landroidx/emoji2/text/MetadataRepo$Node;

    move-result-object v0

    if-nez v0, :cond_0

    .line 257
    new-instance v0, Landroidx/emoji2/text/MetadataRepo$Node;

    invoke-direct {v0}, Landroidx/emoji2/text/MetadataRepo$Node;-><init>()V

    .line 258
    iget-object p0, p0, Landroidx/emoji2/text/MetadataRepo$Node;->mChildren:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->getCodepointAt(I)I

    move-result v1

    invoke-virtual {p0, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    if-le p3, p2, :cond_1

    add-int/lit8 p2, p2, 0x1

    .line 262
    invoke-virtual {v0, p1, p2, p3}, Landroidx/emoji2/text/MetadataRepo$Node;->put(Landroidx/emoji2/text/TypefaceEmojiRasterizer;II)V

    goto :goto_0

    .line 264
    :cond_1
    iput-object p1, v0, Landroidx/emoji2/text/MetadataRepo$Node;->mData:Landroidx/emoji2/text/TypefaceEmojiRasterizer;

    :goto_0
    return-void
.end method
