.class public abstract Lokio/internal/-Buffer;
.super Ljava/lang/Object;
.source "Buffer.kt"


# static fields
.field private static final HEX_DIGIT_BYTES:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const-string v0, "0123456789abcdef"

    invoke-static {v0}, Lokio/_JvmPlatformKt;->asUtf8ToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lokio/internal/-Buffer;->HEX_DIGIT_BYTES:[B

    return-void
.end method

.method public static final rangeEquals(Lokio/Segment;I[BII)Z
    .locals 5

    const-string v0, "segment"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bytes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iget v0, p0, Lokio/Segment;->limit:I

    .line 65
    iget-object v1, p0, Lokio/Segment;->data:[B

    :goto_0
    if-ge p3, p4, :cond_2

    if-ne p1, v0, :cond_0

    .line 70
    iget-object p0, p0, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 71
    iget-object p1, p0, Lokio/Segment;->data:[B

    .line 72
    iget v0, p0, Lokio/Segment;->pos:I

    .line 73
    iget v1, p0, Lokio/Segment;->limit:I

    move v4, v1

    move-object v1, p1

    move p1, v0

    move v0, v4

    .line 76
    :cond_0
    aget-byte v2, v1, p1

    aget-byte v3, p2, p3

    if-eq v2, v3, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static final selectPrefix(Lokio/Buffer;Lokio/Options;Z)I
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "options"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    iget-object v0, v0, Lokio/Buffer;->head:Lokio/Segment;

    const/4 v1, -0x2

    const/4 v3, -0x1

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    return v1

    .line 151
    :cond_1
    iget-object v4, v0, Lokio/Segment;->data:[B

    .line 152
    iget v5, v0, Lokio/Segment;->pos:I

    .line 153
    iget v6, v0, Lokio/Segment;->limit:I

    .line 155
    invoke-virtual/range {p1 .. p1}, Lokio/Options;->getTrie$external__okio__android_common__okio_lib()[I

    move-result-object v2

    const/4 v7, 0x0

    move-object v9, v0

    move v10, v3

    move v8, v7

    :goto_1
    add-int/lit8 v11, v8, 0x1

    .line 162
    aget v12, v2, v8

    add-int/lit8 v8, v8, 0x2

    .line 164
    aget v11, v2, v11

    if-eq v11, v3, :cond_2

    move v10, v11

    :cond_2
    if-nez v9, :cond_3

    goto :goto_4

    :cond_3
    const/4 v11, 0x0

    if-gez v12, :cond_b

    mul-int/lit8 v12, v12, -0x1

    add-int v13, v8, v12

    :goto_2
    add-int/lit8 v12, v5, 0x1

    .line 178
    aget-byte v5, v4, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v14, v8, 0x1

    .line 179
    aget v8, v2, v8

    if-eq v5, v8, :cond_4

    return v10

    :cond_4
    if-ne v14, v13, :cond_5

    const/4 v5, 0x1

    goto :goto_3

    :cond_5
    move v5, v7

    :goto_3
    if-ne v12, v6, :cond_9

    .line 184
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v4, v9, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 185
    iget v6, v4, Lokio/Segment;->pos:I

    .line 186
    iget-object v8, v4, Lokio/Segment;->data:[B

    .line 187
    iget v9, v4, Lokio/Segment;->limit:I

    if-ne v4, v0, :cond_8

    if-eqz v5, :cond_6

    move-object v4, v8

    move-object v8, v11

    goto :goto_5

    :cond_6
    :goto_4
    if-eqz p2, :cond_7

    return v1

    :cond_7
    return v10

    :cond_8
    move-object/from16 v16, v8

    move-object v8, v4

    move-object/from16 v4, v16

    goto :goto_5

    :cond_9
    move-object v8, v9

    move v9, v6

    move v6, v12

    :goto_5
    if-eqz v5, :cond_a

    .line 195
    aget v5, v2, v14

    move v13, v6

    move v6, v9

    move-object v9, v8

    goto :goto_7

    :cond_a
    move v5, v6

    move v6, v9

    move-object v9, v8

    move v8, v14

    goto :goto_2

    :cond_b
    add-int/lit8 v13, v5, 0x1

    .line 202
    aget-byte v5, v4, v5

    and-int/lit16 v5, v5, 0xff

    add-int v14, v8, v12

    :goto_6
    if-ne v8, v14, :cond_c

    return v10

    .line 207
    :cond_c
    aget v15, v2, v8

    if-ne v5, v15, :cond_f

    add-int/2addr v8, v12

    .line 208
    aget v5, v2, v8

    if-ne v13, v6, :cond_d

    .line 217
    iget-object v9, v9, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 218
    iget v4, v9, Lokio/Segment;->pos:I

    .line 219
    iget-object v6, v9, Lokio/Segment;->data:[B

    .line 220
    iget v8, v9, Lokio/Segment;->limit:I

    move v13, v4

    move-object v4, v6

    move v6, v8

    if-ne v9, v0, :cond_d

    move-object v9, v11

    :cond_d
    :goto_7
    if-ltz v5, :cond_e

    return v5

    :cond_e
    neg-int v8, v5

    move v5, v13

    goto/16 :goto_1

    :cond_f
    add-int/lit8 v8, v8, 0x1

    goto :goto_6
.end method

.method public static synthetic selectPrefix$default(Lokio/Buffer;Lokio/Options;ZILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 147
    :cond_0
    invoke-static {p0, p1, p2}, Lokio/internal/-Buffer;->selectPrefix(Lokio/Buffer;Lokio/Options;Z)I

    move-result p0

    return p0
.end method
