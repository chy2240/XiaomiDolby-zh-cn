.class public final Lokio/Buffer$UnsafeCursor;
.super Ljava/lang/Object;
.source "Buffer.kt"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public buffer:Lokio/Buffer;

.field public data:[B

.field public end:I

.field public offset:J

.field private segment:Lokio/Segment;

.field public start:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 613
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 620
    iput-wide v0, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    const/4 v0, -0x1

    .line 624
    iput v0, p0, Lokio/Buffer$UnsafeCursor;->start:I

    .line 626
    iput v0, p0, Lokio/Buffer$UnsafeCursor;->end:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 1721
    iget-object v0, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1723
    iput-object v0, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    .line 1724
    invoke-virtual {p0, v0}, Lokio/Buffer$UnsafeCursor;->setSegment$external__okio__android_common__okio_lib(Lokio/Segment;)V

    const-wide/16 v1, -0x1

    .line 1725
    iput-wide v1, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 1726
    iput-object v0, p0, Lokio/Buffer$UnsafeCursor;->data:[B

    const/4 v0, -0x1

    .line 1727
    iput v0, p0, Lokio/Buffer$UnsafeCursor;->start:I

    .line 1728
    iput v0, p0, Lokio/Buffer$UnsafeCursor;->end:I

    return-void

    .line 1721
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "not attached to a buffer"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setSegment$external__okio__android_common__okio_lib(Lokio/Segment;)V
    .locals 0

    .line 618
    iput-object p1, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    return-void
.end method
