.class Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;
.super Ljava/lang/Object;
.source "MetadataListReader.java"

# interfaces
.implements Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;


# instance fields
.field private final mByteBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    iput-object p1, p0, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 314
    sget-object p0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public getPosition()J
    .locals 2

    .line 339
    iget-object p0, p0, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public readTag()I
    .locals 0

    .line 329
    iget-object p0, p0, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    return p0
.end method

.method public readUnsignedInt()J
    .locals 2

    .line 324
    iget-object p0, p0, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    invoke-static {p0}, Landroidx/emoji2/text/MetadataListReader;->toUnsignedInt(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public readUnsignedShort()I
    .locals 0

    .line 319
    iget-object p0, p0, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p0

    invoke-static {p0}, Landroidx/emoji2/text/MetadataListReader;->toUnsignedShort(S)I

    move-result p0

    return p0
.end method

.method public skip(I)V
    .locals 1

    .line 334
    iget-object p0, p0, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method
