.class public final Landroidx/compose/ui/platform/DecodeHelper;
.super Ljava/lang/Object;
.source "AndroidClipboardManager.android.kt"


# instance fields
.field private final parcel:Landroid/os/Parcel;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/platform/DecodeHelper;->parcel:Landroid/os/Parcel;

    const/4 p0, 0x0

    .line 343
    invoke-static {p1, p0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 344
    array-length v1, p1

    invoke-virtual {v0, p1, p0, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 345
    invoke-virtual {v0, p0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method

.method private final dataAvailable()I
    .locals 0

    .line 520
    iget-object p0, p0, Landroidx/compose/ui/platform/DecodeHelper;->parcel:Landroid/os/Parcel;

    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result p0

    return p0
.end method

.method private final decodeBaselineShift-y9eOQZs()F
    .locals 0

    .line 469
    invoke-direct {p0}, Landroidx/compose/ui/platform/DecodeHelper;->decodeFloat()F

    move-result p0

    invoke-static {p0}, Landroidx/compose/ui/text/style/BaselineShift;->constructor-impl(F)F

    move-result p0

    return p0
.end method

.method private final decodeByte()B
    .locals 0

    .line 500
    iget-object p0, p0, Landroidx/compose/ui/platform/DecodeHelper;->parcel:Landroid/os/Parcel;

    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result p0

    return p0
.end method

.method private final decodeFloat()F
    .locals 0

    .line 512
    iget-object p0, p0, Landroidx/compose/ui/platform/DecodeHelper;->parcel:Landroid/os/Parcel;

    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result p0

    return p0
.end method

.method private final decodeInt()I
    .locals 0

    .line 504
    iget-object p0, p0, Landroidx/compose/ui/platform/DecodeHelper;->parcel:Landroid/os/Parcel;

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    return p0
.end method

.method private final decodeShadow()Landroidx/compose/ui/graphics/Shadow;
    .locals 10

    .line 492
    new-instance v7, Landroidx/compose/ui/graphics/Shadow;

    .line 493
    invoke-virtual {p0}, Landroidx/compose/ui/platform/DecodeHelper;->decodeColor-0d7_KjU()J

    move-result-wide v1

    .line 494
    invoke-direct {p0}, Landroidx/compose/ui/platform/DecodeHelper;->decodeFloat()F

    move-result v0

    invoke-direct {p0}, Landroidx/compose/ui/platform/DecodeHelper;->decodeFloat()F

    move-result v3

    .line 53
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v4, v0

    .line 54
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v8, v0

    const/16 v0, 0x20

    shl-long v3, v4, v0

    const-wide v5, 0xffffffffL

    and-long/2addr v5, v8

    or-long/2addr v3, v5

    .line 30
    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v3

    .line 495
    invoke-direct {p0}, Landroidx/compose/ui/platform/DecodeHelper;->decodeFloat()F

    move-result v5

    const/4 v6, 0x0

    move-object v0, v7

    .line 492
    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/graphics/Shadow;-><init>(JJFLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7
.end method

.method private final decodeString()Ljava/lang/String;
    .locals 0

    .line 516
    iget-object p0, p0, Landroidx/compose/ui/platform/DecodeHelper;->parcel:Landroid/os/Parcel;

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final decodeTextDecoration()Landroidx/compose/ui/text/style/TextDecoration;
    .locals 5

    .line 477
    invoke-direct {p0}, Landroidx/compose/ui/platform/DecodeHelper;->decodeInt()I

    move-result p0

    .line 478
    sget-object v0, Landroidx/compose/ui/text/style/TextDecoration;->Companion:Landroidx/compose/ui/text/style/TextDecoration$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextDecoration$Companion;->getLineThrough()Landroidx/compose/ui/text/style/TextDecoration;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/text/style/TextDecoration;->getMask()I

    move-result v1

    and-int/2addr v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 479
    :goto_0
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextDecoration$Companion;->getUnderline()Landroidx/compose/ui/text/style/TextDecoration;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/ui/text/style/TextDecoration;->getMask()I

    move-result v4

    and-int/2addr p0, v4

    if-eqz p0, :cond_1

    move v2, v3

    :cond_1
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    .line 481
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextDecoration$Companion;->getLineThrough()Landroidx/compose/ui/text/style/TextDecoration;

    move-result-object p0

    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextDecoration$Companion;->getUnderline()Landroidx/compose/ui/text/style/TextDecoration;

    move-result-object v1

    filled-new-array {p0, v1}, [Landroidx/compose/ui/text/style/TextDecoration;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/compose/ui/text/style/TextDecoration$Companion;->combine(Ljava/util/List;)Landroidx/compose/ui/text/style/TextDecoration;

    move-result-object p0

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    .line 483
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextDecoration$Companion;->getLineThrough()Landroidx/compose/ui/text/style/TextDecoration;

    move-result-object p0

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    .line 485
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextDecoration$Companion;->getUnderline()Landroidx/compose/ui/text/style/TextDecoration;

    move-result-object p0

    goto :goto_1

    .line 487
    :cond_4
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextDecoration$Companion;->getNone()Landroidx/compose/ui/text/style/TextDecoration;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private final decodeTextGeometricTransform()Landroidx/compose/ui/text/style/TextGeometricTransform;
    .locals 2

    .line 473
    new-instance v0, Landroidx/compose/ui/text/style/TextGeometricTransform;

    invoke-direct {p0}, Landroidx/compose/ui/platform/DecodeHelper;->decodeFloat()F

    move-result v1

    invoke-direct {p0}, Landroidx/compose/ui/platform/DecodeHelper;->decodeFloat()F

    move-result p0

    invoke-direct {v0, v1, p0}, Landroidx/compose/ui/text/style/TextGeometricTransform;-><init>(FF)V

    return-object v0
.end method

.method private final decodeULong-s-VKNKU()J
    .locals 2

    .line 508
    iget-object p0, p0, Landroidx/compose/ui/platform/DecodeHelper;->parcel:Landroid/os/Parcel;

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final decodeColor-0d7_KjU()J
    .locals 2

    .line 427
    invoke-direct {p0}, Landroidx/compose/ui/platform/DecodeHelper;->decodeULong-s-VKNKU()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->constructor-impl(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final decodeFontStyle-_-LCdwA()I
    .locals 1

    .line 451
    invoke-direct {p0}, Landroidx/compose/ui/platform/DecodeHelper;->decodeByte()B

    move-result p0

    if-nez p0, :cond_0

    .line 452
    sget-object p0, Landroidx/compose/ui/text/font/FontStyle;->Companion:Landroidx/compose/ui/text/font/FontStyle$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/text/font/FontStyle$Companion;->getNormal-_-LCdwA()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 453
    sget-object p0, Landroidx/compose/ui/text/font/FontStyle;->Companion:Landroidx/compose/ui/text/font/FontStyle$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/text/font/FontStyle$Companion;->getItalic-_-LCdwA()I

    move-result p0

    goto :goto_0

    .line 454
    :cond_1
    sget-object p0, Landroidx/compose/ui/text/font/FontStyle;->Companion:Landroidx/compose/ui/text/font/FontStyle$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/text/font/FontStyle$Companion;->getNormal-_-LCdwA()I

    move-result p0

    :goto_0
    return p0
.end method

.method public final decodeFontSynthesis-GVVA2EU()I
    .locals 1

    .line 459
    invoke-direct {p0}, Landroidx/compose/ui/platform/DecodeHelper;->decodeByte()B

    move-result p0

    if-nez p0, :cond_0

    .line 460
    sget-object p0, Landroidx/compose/ui/text/font/FontSynthesis;->Companion:Landroidx/compose/ui/text/font/FontSynthesis$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/text/font/FontSynthesis$Companion;->getNone-GVVA2EU()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 461
    sget-object p0, Landroidx/compose/ui/text/font/FontSynthesis;->Companion:Landroidx/compose/ui/text/font/FontSynthesis$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/text/font/FontSynthesis$Companion;->getAll-GVVA2EU()I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    .line 462
    sget-object p0, Landroidx/compose/ui/text/font/FontSynthesis;->Companion:Landroidx/compose/ui/text/font/FontSynthesis$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/text/font/FontSynthesis$Companion;->getStyle-GVVA2EU()I

    move-result p0

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p0, v0, :cond_3

    .line 463
    sget-object p0, Landroidx/compose/ui/text/font/FontSynthesis;->Companion:Landroidx/compose/ui/text/font/FontSynthesis$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/text/font/FontSynthesis$Companion;->getWeight-GVVA2EU()I

    move-result p0

    goto :goto_0

    .line 464
    :cond_3
    sget-object p0, Landroidx/compose/ui/text/font/FontSynthesis;->Companion:Landroidx/compose/ui/text/font/FontSynthesis$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/text/font/FontSynthesis$Companion;->getNone-GVVA2EU()I

    move-result p0

    :goto_0
    return p0
.end method

.method public final decodeFontWeight()Landroidx/compose/ui/text/font/FontWeight;
    .locals 1

    .line 447
    new-instance v0, Landroidx/compose/ui/text/font/FontWeight;

    invoke-direct {p0}, Landroidx/compose/ui/platform/DecodeHelper;->decodeInt()I

    move-result p0

    invoke-direct {v0, p0}, Landroidx/compose/ui/text/font/FontWeight;-><init>(I)V

    return-object v0
.end method

.method public final decodeSpanStyle()Landroidx/compose/ui/text/SpanStyle;
    .locals 22

    .line 350
    new-instance v15, Landroidx/compose/ui/platform/MutableSpanStyle;

    move-object v0, v15

    const/16 v19, 0x3fff

    const/16 v20, 0x0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v16, 0x0

    move-object/from16 v21, v15

    move-wide/from16 v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v0 .. v20}, Landroidx/compose/ui/platform/MutableSpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, p0

    .line 351
    :goto_0
    iget-object v1, v0, Landroidx/compose/ui/platform/DecodeHelper;->parcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataAvail()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 352
    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/platform/DecodeHelper;->decodeByte()B

    move-result v1

    const/16 v3, 0x8

    if-ne v1, v2, :cond_1

    .line 354
    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/platform/DecodeHelper;->dataAvailable()I

    move-result v1

    if-lt v1, v3, :cond_0

    .line 355
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/platform/DecodeHelper;->decodeColor-0d7_KjU()J

    move-result-wide v1

    move-object/from16 v4, v21

    invoke-virtual {v4, v1, v2}, Landroidx/compose/ui/platform/MutableSpanStyle;->setColor-8_81llA(J)V

    goto :goto_0

    :cond_0
    move-object/from16 v4, v21

    goto/16 :goto_2

    :cond_1
    move-object/from16 v4, v21

    const/4 v5, 0x2

    const/4 v6, 0x5

    if-ne v1, v5, :cond_3

    .line 360
    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/platform/DecodeHelper;->dataAvailable()I

    move-result v1

    if-lt v1, v6, :cond_d

    .line 361
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/platform/DecodeHelper;->decodeTextUnit-XSAIIZE()J

    move-result-wide v1

    invoke-virtual {v4, v1, v2}, Landroidx/compose/ui/platform/MutableSpanStyle;->setFontSize--R2X_6o(J)V

    :cond_2
    :goto_1
    move-object/from16 v21, v4

    goto :goto_0

    :cond_3
    const/4 v5, 0x3

    const/4 v7, 0x4

    if-ne v1, v5, :cond_4

    .line 366
    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/platform/DecodeHelper;->dataAvailable()I

    move-result v1

    if-lt v1, v7, :cond_d

    .line 367
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/platform/DecodeHelper;->decodeFontWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroidx/compose/ui/platform/MutableSpanStyle;->setFontWeight(Landroidx/compose/ui/text/font/FontWeight;)V

    goto :goto_1

    :cond_4
    if-ne v1, v7, :cond_5

    .line 372
    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/platform/DecodeHelper;->dataAvailable()I

    move-result v1

    if-lt v1, v2, :cond_d

    .line 373
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/platform/DecodeHelper;->decodeFontStyle-_-LCdwA()I

    move-result v1

    invoke-static {v1}, Landroidx/compose/ui/text/font/FontStyle;->box-impl(I)Landroidx/compose/ui/text/font/FontStyle;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroidx/compose/ui/platform/MutableSpanStyle;->setFontStyle-mLjRB2g(Landroidx/compose/ui/text/font/FontStyle;)V

    goto :goto_1

    :cond_5
    if-ne v1, v6, :cond_6

    .line 378
    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/platform/DecodeHelper;->dataAvailable()I

    move-result v1

    if-lt v1, v2, :cond_d

    .line 379
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/platform/DecodeHelper;->decodeFontSynthesis-GVVA2EU()I

    move-result v1

    invoke-static {v1}, Landroidx/compose/ui/text/font/FontSynthesis;->box-impl(I)Landroidx/compose/ui/text/font/FontSynthesis;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroidx/compose/ui/platform/MutableSpanStyle;->setFontSynthesis-tDdu0R4(Landroidx/compose/ui/text/font/FontSynthesis;)V

    goto :goto_1

    :cond_6
    const/4 v2, 0x6

    if-ne v1, v2, :cond_7

    .line 383
    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/platform/DecodeHelper;->decodeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroidx/compose/ui/platform/MutableSpanStyle;->setFontFeatureSettings(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    const/4 v2, 0x7

    if-ne v1, v2, :cond_8

    .line 385
    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/platform/DecodeHelper;->dataAvailable()I

    move-result v1

    if-lt v1, v6, :cond_d

    .line 386
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/platform/DecodeHelper;->decodeTextUnit-XSAIIZE()J

    move-result-wide v1

    invoke-virtual {v4, v1, v2}, Landroidx/compose/ui/platform/MutableSpanStyle;->setLetterSpacing--R2X_6o(J)V

    goto :goto_1

    :cond_8
    if-ne v1, v3, :cond_9

    .line 391
    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/platform/DecodeHelper;->dataAvailable()I

    move-result v1

    if-lt v1, v7, :cond_d

    .line 392
    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/platform/DecodeHelper;->decodeBaselineShift-y9eOQZs()F

    move-result v1

    invoke-static {v1}, Landroidx/compose/ui/text/style/BaselineShift;->box-impl(F)Landroidx/compose/ui/text/style/BaselineShift;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroidx/compose/ui/platform/MutableSpanStyle;->setBaselineShift-_isdbwI(Landroidx/compose/ui/text/style/BaselineShift;)V

    goto :goto_1

    :cond_9
    const/16 v2, 0x9

    if-ne v1, v2, :cond_a

    .line 397
    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/platform/DecodeHelper;->dataAvailable()I

    move-result v1

    if-lt v1, v3, :cond_d

    .line 398
    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/platform/DecodeHelper;->decodeTextGeometricTransform()Landroidx/compose/ui/text/style/TextGeometricTransform;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroidx/compose/ui/platform/MutableSpanStyle;->setTextGeometricTransform(Landroidx/compose/ui/text/style/TextGeometricTransform;)V

    goto :goto_1

    :cond_a
    const/16 v2, 0xa

    if-ne v1, v2, :cond_b

    .line 403
    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/platform/DecodeHelper;->dataAvailable()I

    move-result v1

    if-lt v1, v3, :cond_d

    .line 404
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/platform/DecodeHelper;->decodeColor-0d7_KjU()J

    move-result-wide v1

    invoke-virtual {v4, v1, v2}, Landroidx/compose/ui/platform/MutableSpanStyle;->setBackground-8_81llA(J)V

    goto/16 :goto_1

    :cond_b
    const/16 v2, 0xb

    if-ne v1, v2, :cond_c

    .line 409
    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/platform/DecodeHelper;->dataAvailable()I

    move-result v1

    if-lt v1, v7, :cond_d

    .line 410
    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/platform/DecodeHelper;->decodeTextDecoration()Landroidx/compose/ui/text/style/TextDecoration;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroidx/compose/ui/platform/MutableSpanStyle;->setTextDecoration(Landroidx/compose/ui/text/style/TextDecoration;)V

    goto/16 :goto_1

    :cond_c
    const/16 v2, 0xc

    if-ne v1, v2, :cond_2

    .line 415
    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/platform/DecodeHelper;->dataAvailable()I

    move-result v1

    const/16 v2, 0x14

    if-lt v1, v2, :cond_d

    .line 416
    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/platform/DecodeHelper;->decodeShadow()Landroidx/compose/ui/graphics/Shadow;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroidx/compose/ui/platform/MutableSpanStyle;->setShadow(Landroidx/compose/ui/graphics/Shadow;)V

    goto/16 :goto_1

    .line 423
    :cond_d
    :goto_2
    invoke-virtual {v4}, Landroidx/compose/ui/platform/MutableSpanStyle;->toSpanStyle()Landroidx/compose/ui/text/SpanStyle;

    move-result-object v0

    return-object v0
.end method

.method public final decodeTextUnit-XSAIIZE()J
    .locals 4

    .line 433
    invoke-direct {p0}, Landroidx/compose/ui/platform/DecodeHelper;->decodeByte()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 434
    sget-object v0, Landroidx/compose/ui/unit/TextUnitType;->Companion:Landroidx/compose/ui/unit/TextUnitType$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/TextUnitType$Companion;->getSp-UIouoOA()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 435
    sget-object v0, Landroidx/compose/ui/unit/TextUnitType;->Companion:Landroidx/compose/ui/unit/TextUnitType$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/TextUnitType$Companion;->getEm-UIouoOA()J

    move-result-wide v0

    goto :goto_0

    .line 436
    :cond_1
    sget-object v0, Landroidx/compose/ui/unit/TextUnitType;->Companion:Landroidx/compose/ui/unit/TextUnitType$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/TextUnitType$Companion;->getUnspecified-UIouoOA()J

    move-result-wide v0

    .line 438
    :goto_0
    sget-object v2, Landroidx/compose/ui/unit/TextUnitType;->Companion:Landroidx/compose/ui/unit/TextUnitType$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/unit/TextUnitType$Companion;->getUnspecified-UIouoOA()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 439
    sget-object p0, Landroidx/compose/ui/unit/TextUnit;->Companion:Landroidx/compose/ui/unit/TextUnit$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/unit/TextUnit$Companion;->getUnspecified-XSAIIZE()J

    move-result-wide v0

    return-wide v0

    .line 441
    :cond_2
    invoke-direct {p0}, Landroidx/compose/ui/platform/DecodeHelper;->decodeFloat()F

    move-result p0

    .line 442
    invoke-static {p0, v0, v1}, Landroidx/compose/ui/unit/TextUnitKt;->TextUnit-anM5pPY(FJ)J

    move-result-wide v0

    return-wide v0
.end method
