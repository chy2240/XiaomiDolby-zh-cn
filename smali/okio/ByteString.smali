.class public Lokio/ByteString;
.super Ljava/lang/Object;
.source "ByteString.kt"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# static fields
.field public static final Companion:Lokio/ByteString$Companion;

.field public static final EMPTY:Lokio/ByteString;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final data:[B

.field private transient hashCode:I

.field private transient utf8:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokio/ByteString$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokio/ByteString$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    .line 231
    new-instance v0, Lokio/ByteString;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lokio/ByteString;-><init>([B)V

    sput-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lokio/ByteString;->data:[B

    return-void
.end method

.method public static final encodeUtf8(Ljava/lang/String;)Lokio/ByteString;
    .locals 1

    .line 0
    sget-object v0, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    invoke-virtual {v0, p0}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object p0

    return-object p0
.end method

.method private final readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 199
    sget-object v1, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    invoke-virtual {v1, p1, v0}, Lokio/ByteString$Companion;->read(Ljava/io/InputStream;I)Lokio/ByteString;

    move-result-object p1

    const-class v0, Lokio/ByteString;

    .line 200
    const-string v1, "data"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 201
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 202
    iget-object p1, p1, Lokio/ByteString;->data:[B

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private final writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lokio/ByteString;->data:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 208
    iget-object p0, p0, Lokio/ByteString;->data:[B

    invoke-virtual {p1, p0}, Ljava/io/ObjectOutputStream;->write([B)V

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 59
    check-cast p1, Lokio/ByteString;

    invoke-virtual {p0, p1}, Lokio/ByteString;->compareTo(Lokio/ByteString;)I

    move-result p0

    return p0
.end method

.method public compareTo(Lokio/ByteString;)I
    .locals 9

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result v0

    .line 254
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v1

    .line 256
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, -0x1

    const/4 v6, 0x1

    if-ge v4, v2, :cond_2

    .line 258
    invoke-virtual {p0, v4}, Lokio/ByteString;->getByte(I)B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    .line 259
    invoke-virtual {p1, v4}, Lokio/ByteString;->getByte(I)B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    if-ne v7, v8, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    if-ge v7, v8, :cond_1

    :goto_1
    move v3, v5

    goto :goto_2

    :cond_1
    move v3, v6

    goto :goto_2

    :cond_2
    if-ne v0, v1, :cond_3

    goto :goto_2

    :cond_3
    if-ge v0, v1, :cond_1

    goto :goto_1

    :goto_2
    return v3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    goto :goto_0

    .line 237
    :cond_0
    instance-of v1, p1, Lokio/ByteString;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lokio/ByteString;

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v1

    invoke-virtual {p0}, Lokio/ByteString;->getData$external__okio__android_common__okio_lib()[B

    move-result-object v3

    array-length v3, v3

    if-ne v1, v3, :cond_1

    invoke-virtual {p0}, Lokio/ByteString;->getData$external__okio__android_common__okio_lib()[B

    move-result-object v1

    invoke-virtual {p0}, Lokio/ByteString;->getData$external__okio__android_common__okio_lib()[B

    move-result-object p0

    array-length p0, p0

    invoke-virtual {p1, v2, v1, v2, p0}, Lokio/ByteString;->rangeEquals(I[BII)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0
.end method

.method public final getByte(I)B
    .locals 0

    .line 123
    invoke-virtual {p0, p1}, Lokio/ByteString;->internalGet$external__okio__android_common__okio_lib(I)B

    move-result p0

    return p0
.end method

.method public final getData$external__okio__android_common__okio_lib()[B
    .locals 0

    .line 61
    iget-object p0, p0, Lokio/ByteString;->data:[B

    return-object p0
.end method

.method public final getHashCode$external__okio__android_common__okio_lib()I
    .locals 0

    .line 63
    iget p0, p0, Lokio/ByteString;->hashCode:I

    return p0
.end method

.method public getSize$external__okio__android_common__okio_lib()I
    .locals 0

    .line 148
    invoke-virtual {p0}, Lokio/ByteString;->getData$external__okio__android_common__okio_lib()[B

    move-result-object p0

    array-length p0, p0

    return p0
.end method

.method public final getUtf8$external__okio__android_common__okio_lib()Ljava/lang/String;
    .locals 0

    .line 64
    iget-object p0, p0, Lokio/ByteString;->utf8:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    .line 244
    invoke-virtual {p0}, Lokio/ByteString;->getHashCode$external__okio__android_common__okio_lib()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 246
    :cond_0
    invoke-virtual {p0}, Lokio/ByteString;->getData$external__okio__android_common__okio_lib()[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    .line 247
    invoke-virtual {p0, v0}, Lokio/ByteString;->setHashCode$external__okio__android_common__okio_lib(I)V

    :goto_0
    return v0
.end method

.method public hex()Ljava/lang/String;
    .locals 8

    .line 64
    invoke-virtual {p0}, Lokio/ByteString;->getData$external__okio__android_common__okio_lib()[B

    move-result-object v0

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    .line 66
    invoke-virtual {p0}, Lokio/ByteString;->getData$external__okio__android_common__okio_lib()[B

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v4, p0, v2

    add-int/lit8 v5, v3, 0x1

    .line 67
    invoke-static {}, Lokio/internal/-ByteString;->getHEX_DIGIT_CHARS()[C

    move-result-object v6

    shr-int/lit8 v7, v4, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    aput-char v6, v0, v3

    add-int/lit8 v3, v3, 0x2

    .line 68
    invoke-static {}, Lokio/internal/-ByteString;->getHEX_DIGIT_CHARS()[C

    move-result-object v6

    and-int/lit8 v4, v4, 0xf

    .line 74
    aget-char v4, v6, v4

    aput-char v4, v0, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 70
    :cond_0
    invoke-static {v0}, Lkotlin/text/StringsKt;->concatToString([C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public internalArray$external__okio__android_common__okio_lib()[B
    .locals 0

    .line 154
    invoke-virtual {p0}, Lokio/ByteString;->getData$external__okio__android_common__okio_lib()[B

    move-result-object p0

    return-object p0
.end method

.method public internalGet$external__okio__android_common__okio_lib(I)B
    .locals 0

    .line 145
    invoke-virtual {p0}, Lokio/ByteString;->getData$external__okio__android_common__okio_lib()[B

    move-result-object p0

    aget-byte p0, p0, p1

    return p0
.end method

.method public rangeEquals(ILokio/ByteString;II)Z
    .locals 1

    const-string v0, "other"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Lokio/ByteString;->getData$external__okio__android_common__okio_lib()[B

    move-result-object p0

    invoke-virtual {p2, p3, p0, p1, p4}, Lokio/ByteString;->rangeEquals(I[BII)Z

    move-result p0

    return p0
.end method

.method public rangeEquals(I[BII)Z
    .locals 1

    const-string v0, "other"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p1, :cond_0

    .line 172
    invoke-virtual {p0}, Lokio/ByteString;->getData$external__okio__android_common__okio_lib()[B

    move-result-object v0

    array-length v0, v0

    sub-int/2addr v0, p4

    if-gt p1, v0, :cond_0

    if-ltz p3, :cond_0

    .line 173
    array-length v0, p2

    sub-int/2addr v0, p4

    if-gt p3, v0, :cond_0

    .line 174
    invoke-virtual {p0}, Lokio/ByteString;->getData$external__okio__android_common__okio_lib()[B

    move-result-object p0

    invoke-static {p0, p1, p2, p3, p4}, Lokio/-SegmentedByteString;->arrayRangeEquals([BI[BII)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final setHashCode$external__okio__android_common__okio_lib(I)V
    .locals 0

    .line 63
    iput p1, p0, Lokio/ByteString;->hashCode:I

    return-void
.end method

.method public final setUtf8$external__okio__android_common__okio_lib(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lokio/ByteString;->utf8:Ljava/lang/String;

    return-void
.end method

.method public final size()I
    .locals 0

    .line 127
    invoke-virtual {p0}, Lokio/ByteString;->getSize$external__okio__android_common__okio_lib()I

    move-result p0

    return p0
.end method

.method public final startsWith(Lokio/ByteString;)Z
    .locals 2

    const-string v0, "prefix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v1, v0}, Lokio/ByteString;->rangeEquals(ILokio/ByteString;II)Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 19

    .line 322
    invoke-virtual/range {p0 .. p0}, Lokio/ByteString;->getData$external__okio__android_common__okio_lib()[B

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_0

    const-string v0, "[size=0]"

    goto/16 :goto_1

    .line 324
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lokio/ByteString;->getData$external__okio__android_common__okio_lib()[B

    move-result-object v0

    const/16 v1, 0x40

    invoke-static {v0, v1}, Lokio/internal/-ByteString;->access$codePointIndexToCharIndex([BI)I

    move-result v0

    const/4 v2, -0x1

    .line 325
    const-string v3, "\u2026]"

    const-string v4, "[size="

    const/4 v5, 0x0

    const-string v6, "]"

    if-ne v0, v2, :cond_5

    .line 326
    invoke-virtual/range {p0 .. p0}, Lokio/ByteString;->getData$external__okio__android_common__okio_lib()[B

    move-result-object v0

    array-length v0, v0

    if-gt v0, v1, :cond_1

    .line 327
    invoke-virtual/range {p0 .. p0}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[hex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 329
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lokio/ByteString;->getData$external__okio__android_common__okio_lib()[B

    move-result-object v0

    array-length v0, v0

    move-object/from16 v2, p0

    .line 131
    invoke-static {v2, v1}, Lokio/-SegmentedByteString;->resolveDefaultParameter(Lokio/ByteString;I)I

    move-result v1

    .line 133
    invoke-virtual/range {p0 .. p0}, Lokio/ByteString;->getData$external__okio__android_common__okio_lib()[B

    move-result-object v6

    array-length v6, v6

    if-gt v1, v6, :cond_4

    if-ltz v1, :cond_3

    .line 138
    invoke-virtual/range {p0 .. p0}, Lokio/ByteString;->getData$external__okio__android_common__okio_lib()[B

    move-result-object v6

    array-length v6, v6

    if-ne v1, v6, :cond_2

    goto :goto_0

    .line 141
    :cond_2
    new-instance v6, Lokio/ByteString;

    invoke-virtual/range {p0 .. p0}, Lokio/ByteString;->getData$external__okio__android_common__okio_lib()[B

    move-result-object v2

    invoke-static {v2, v5, v1}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object v1

    invoke-direct {v6, v1}, Lokio/ByteString;-><init>([B)V

    move-object v2, v6

    .line 329
    :goto_0
    invoke-virtual {v2}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " hex="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 136
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "endIndex < beginIndex"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lokio/ByteString;->getData$external__okio__android_common__okio_lib()[B

    move-result-object v0

    array-length v0, v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endIndex > length("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    move-object/from16 v2, p0

    .line 333
    invoke-virtual/range {p0 .. p0}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v1

    .line 334
    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v5, "substring(...)"

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v11, 0x4

    const/4 v12, 0x0

    .line 335
    const-string v8, "\\"

    const-string v9, "\\\\"

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/16 v17, 0x4

    const/16 v18, 0x0

    .line 336
    const-string v14, "\n"

    const-string v15, "\\n"

    const/16 v16, 0x0

    invoke-static/range {v13 .. v18}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 337
    const-string v8, "\r"

    const-string v9, "\\r"

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 338
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 339
    invoke-virtual/range {p0 .. p0}, Lokio/ByteString;->getData$external__okio__android_common__okio_lib()[B

    move-result-object v0

    array-length v0, v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " text="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 341
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public utf8()Ljava/lang/String;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lokio/ByteString;->getUtf8$external__okio__android_common__okio_lib()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 46
    invoke-virtual {p0}, Lokio/ByteString;->internalArray$external__okio__android_common__okio_lib()[B

    move-result-object v0

    invoke-static {v0}, Lokio/_JvmPlatformKt;->toUtf8String([B)Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-virtual {p0, v0}, Lokio/ByteString;->setUtf8$external__okio__android_common__okio_lib(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method
