.class Landroidx/emoji2/text/MetadataListReader$OffsetInfo;
.super Ljava/lang/Object;
.source "MetadataListReader.java"


# instance fields
.field private final mLength:J

.field private final mStartOffset:J


# direct methods
.method constructor <init>(JJ)V
    .locals 0

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput-wide p1, p0, Landroidx/emoji2/text/MetadataListReader$OffsetInfo;->mStartOffset:J

    .line 170
    iput-wide p3, p0, Landroidx/emoji2/text/MetadataListReader$OffsetInfo;->mLength:J

    return-void
.end method


# virtual methods
.method getStartOffset()J
    .locals 2

    .line 174
    iget-wide v0, p0, Landroidx/emoji2/text/MetadataListReader$OffsetInfo;->mStartOffset:J

    return-wide v0
.end method
