.class public final Landroidx/compose/ui/graphics/colorspace/ColorSpaces;
.super Ljava/lang/Object;
.source "ColorSpaces.kt"


# static fields
.field private static final Aces:Landroidx/compose/ui/graphics/colorspace/Rgb;

.field private static final Acescg:Landroidx/compose/ui/graphics/colorspace/Rgb;

.field private static final AdobeRgb:Landroidx/compose/ui/graphics/colorspace/Rgb;

.field private static final Bt2020:Landroidx/compose/ui/graphics/colorspace/Rgb;

.field private static final Bt2020Hlg:Landroidx/compose/ui/graphics/colorspace/Rgb;

.field private static final Bt2020HlgTransferParameters:Landroidx/compose/ui/graphics/colorspace/TransferParameters;

.field private static final Bt2020Pq:Landroidx/compose/ui/graphics/colorspace/Rgb;

.field private static final Bt2020PqTransferParameters:Landroidx/compose/ui/graphics/colorspace/TransferParameters;

.field private static final Bt2020Primaries:[F

.field private static final Bt709:Landroidx/compose/ui/graphics/colorspace/Rgb;

.field private static final CieLab:Landroidx/compose/ui/graphics/colorspace/ColorSpace;

.field private static final CieXyz:Landroidx/compose/ui/graphics/colorspace/ColorSpace;

.field private static final ColorSpacesArray:[Landroidx/compose/ui/graphics/colorspace/ColorSpace;

.field private static final DciP3:Landroidx/compose/ui/graphics/colorspace/Rgb;

.field private static final DisplayP3:Landroidx/compose/ui/graphics/colorspace/Rgb;

.field private static final ExtendedSrgb:Landroidx/compose/ui/graphics/colorspace/Rgb;

.field public static final INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

.field private static final LinearExtendedSrgb:Landroidx/compose/ui/graphics/colorspace/Rgb;

.field private static final LinearSrgb:Landroidx/compose/ui/graphics/colorspace/Rgb;

.field private static final NoneTransferParameters:Landroidx/compose/ui/graphics/colorspace/TransferParameters;

.field private static final Ntsc1953:Landroidx/compose/ui/graphics/colorspace/Rgb;

.field private static final Ntsc1953Primaries:[F

.field private static final Oklab:Landroidx/compose/ui/graphics/colorspace/ColorSpace;

.field private static final ProPhotoRgb:Landroidx/compose/ui/graphics/colorspace/Rgb;

.field private static final SmpteC:Landroidx/compose/ui/graphics/colorspace/Rgb;

.field private static final Srgb:Landroidx/compose/ui/graphics/colorspace/Rgb;

.field private static final SrgbPrimaries:[F

.field private static final SrgbTransferParameters:Landroidx/compose/ui/graphics/colorspace/TransferParameters;

.field private static final Unspecified:Landroidx/compose/ui/graphics/colorspace/Rgb;


# direct methods
.method public static synthetic $r8$lambda$3pJx8VbJyoy1Mhd1Gp6VtQUyqb0(D)D
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Bt2020Pq$lambda$5(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic $r8$lambda$9WZGo8jxmhcanMko0p70vdir2pY(D)D
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->ExtendedSrgb$lambda$0(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic $r8$lambda$AyiskdJteqqpndP2U9BlZsbNuXM(D)D
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Bt2020Hlg$lambda$2(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic $r8$lambda$IXEQ4vD6oEHkwbndx1MokNnMWXM(D)D
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Bt2020Pq$lambda$4(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic $r8$lambda$ri4swWY4EFQdKU1W_SyLqgkcz7Q(D)D
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->ExtendedSrgb$lambda$1(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic $r8$lambda$w7qdwzC4n7jEeM4vCg-OLdhdNEA(D)D
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Bt2020Hlg$lambda$3(D)D

    move-result-wide p0

    return-wide p0
.end method

.method static constructor <clinit>()V
    .locals 77

    new-instance v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;-><init>()V

    sput-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    const/4 v0, 0x6

    .line 28
    new-array v12, v0, [F

    fill-array-data v12, :array_0

    sput-object v12, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->SrgbPrimaries:[F

    .line 29
    new-array v13, v0, [F

    fill-array-data v13, :array_1

    sput-object v13, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Ntsc1953Primaries:[F

    .line 30
    new-array v14, v0, [F

    fill-array-data v14, :array_2

    sput-object v14, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Bt2020Primaries:[F

    .line 32
    new-instance v32, Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    move-object/from16 v15, v32

    const/16 v30, 0x60

    const/16 v31, 0x0

    const-wide v16, 0x4003333333333333L    # 2.4

    const-wide v18, 0x3fee54edcd0aeb60L    # 0.9478672985781991

    const-wide v20, 0x3faab1232f514a03L    # 0.05213270142180095

    const-wide v22, 0x3fb3d0722149b580L    # 0.07739938080495357

    const-wide v24, 0x3fa4b5dcc63f1412L    # 0.04045

    const-wide/16 v26, 0x0

    const-wide/16 v28, 0x0

    invoke-direct/range {v15 .. v31}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;-><init>(DDDDDDDILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v32, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->SrgbTransferParameters:Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    .line 34
    new-instance v15, Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    move-object/from16 v33, v15

    const/16 v48, 0x60

    const/16 v49, 0x0

    const-wide v34, 0x400199999999999aL    # 2.2

    const-wide v36, 0x3fee54edcd0aeb60L    # 0.9478672985781991

    const-wide v38, 0x3faab1232f514a03L    # 0.05213270142180095

    const-wide v40, 0x3fb3d0722149b580L    # 0.07739938080495357

    const-wide v42, 0x3fa4b5dcc63f1412L    # 0.04045

    const-wide/16 v44, 0x0

    const-wide/16 v46, 0x0

    invoke-direct/range {v33 .. v49}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;-><init>(DDDDDDDILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v15, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->NoneTransferParameters:Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    .line 38
    new-instance v31, Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    const-wide v27, 0x3fe1eac9e840f18dL    # 0.55991073

    const-wide v29, -0x401a1076f23e9022L    # -0.685490157

    const-wide/high16 v17, -0x3ff8000000000000L    # -3.0

    const-wide/high16 v19, 0x4000000000000000L    # 2.0

    const-wide/high16 v21, 0x4000000000000000L    # 2.0

    const-wide v23, 0x40165e05183e19b4L    # 5.591816309728916

    const-wide v25, 0x3fd23803fd659be6L    # 0.28466892

    move-object/from16 v16, v31

    invoke-direct/range {v16 .. v30}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;-><init>(DDDDDDD)V

    sput-object v31, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Bt2020HlgTransferParameters:Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    .line 50
    new-instance v16, Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    const-wide v44, -0x3fcd500000000000L    # -18.6875

    const-wide v46, 0x40191c0d56e7162bL    # 6.277394636015326

    const-wide/high16 v34, -0x4000000000000000L    # -2.0

    const-wide v36, -0x40071dce7cd03537L    # -1.555223

    const-wide v38, 0x3ffdc46b69db65edL    # 1.860454

    const-wide v40, 0x3f89f9b5860989b1L    # 0.012683313515655966

    const-wide v42, 0x4032da0000000000L    # 18.8515625

    move-object/from16 v33, v16

    invoke-direct/range {v33 .. v47}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;-><init>(DDDDDDD)V

    sput-object v16, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Bt2020PqTransferParameters:Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    .line 65
    new-instance v7, Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-object/from16 v48, v7

    sget-object v17, Landroidx/compose/ui/graphics/colorspace/Illuminant;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/Illuminant;

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->getD65()Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    move-result-object v4

    const/4 v6, 0x0

    const-string v2, "sRGB IEC61966-2.1"

    move-object v1, v7

    move-object v3, v12

    move-object/from16 v5, v32

    invoke-direct/range {v1 .. v6}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;Landroidx/compose/ui/graphics/colorspace/TransferParameters;I)V

    sput-object v7, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Srgb:Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 72
    new-instance v10, Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-object/from16 v49, v10

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->getD65()Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    move-result-object v4

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    const-string v2, "sRGB IEC61966-2.1 (Linear)"

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    const/4 v7, 0x0

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;DFFI)V

    sput-object v10, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->LinearSrgb:Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 79
    new-instance v18, Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-object/from16 v50, v18

    .line 82
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->getD65()Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    move-result-object v4

    .line 84
    new-instance v6, Landroidx/compose/ui/graphics/colorspace/ColorSpaces$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces$$ExternalSyntheticLambda0;-><init>()V

    .line 85
    new-instance v7, Landroidx/compose/ui/graphics/colorspace/ColorSpaces$$ExternalSyntheticLambda1;

    invoke-direct {v7}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces$$ExternalSyntheticLambda1;-><init>()V

    const v9, 0x40198937    # 2.399f

    const/4 v11, 0x2

    .line 79
    const-string v2, "scRGB-nl IEC 61966-2-2:2003"

    const/4 v5, 0x0

    const v8, -0x40b374bc    # -0.799f

    move-object/from16 v1, v18

    move-object/from16 v10, v32

    invoke-direct/range {v1 .. v11}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;[FLandroidx/compose/ui/graphics/colorspace/DoubleFunction;Landroidx/compose/ui/graphics/colorspace/DoubleFunction;FFLandroidx/compose/ui/graphics/colorspace/TransferParameters;I)V

    sput-object v18, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->ExtendedSrgb:Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 97
    new-instance v10, Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-object/from16 v51, v10

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->getD65()Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    move-result-object v4

    const v8, 0x40eff7cf    # 7.499f

    const/4 v9, 0x3

    const-string v2, "scRGB IEC 61966-2-2:2003"

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    const/high16 v7, -0x41000000    # -0.5f

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;DFFI)V

    sput-object v10, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->LinearExtendedSrgb:Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 104
    new-instance v1, Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-object/from16 v52, v1

    .line 106
    new-array v2, v0, [F

    fill-array-data v2, :array_3

    .line 107
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->getD65()Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    move-result-object v21

    .line 108
    new-instance v22, Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    move-object/from16 v53, v22

    const/16 v68, 0x60

    const/16 v69, 0x0

    const-wide v54, 0x4001c71c71c71c72L    # 2.2222222222222223

    const-wide v56, 0x3fed1e0c942633b7L    # 0.9099181073703367

    const-wide v58, 0x3fb70f9b5ece624dL    # 0.09008189262966333

    const-wide v60, 0x3fcc71c71c71c71cL    # 0.2222222222222222

    const-wide v62, 0x3fb4bc6a7ef9db23L    # 0.081

    const-wide/16 v64, 0x0

    const-wide/16 v66, 0x0

    invoke-direct/range {v53 .. v69}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;-><init>(DDDDDDDILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v23, 0x4

    .line 104
    const-string v19, "Rec. ITU-R BT.709-5"

    move-object/from16 v18, v1

    move-object/from16 v20, v2

    invoke-direct/range {v18 .. v23}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;Landroidx/compose/ui/graphics/colorspace/TransferParameters;I)V

    sput-object v1, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Bt709:Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 117
    new-instance v1, Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-object/from16 v53, v1

    .line 119
    new-array v5, v0, [F

    fill-array-data v5, :array_4

    .line 120
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->getD65()Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    move-result-object v6

    .line 121
    new-instance v7, Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    move-object/from16 v54, v7

    const/16 v69, 0x60

    const/16 v70, 0x0

    const-wide v55, 0x4001c71c71c71c72L    # 2.2222222222222223

    const-wide v57, 0x3fed1c03d1b450c3L    # 0.9096697898662786

    const-wide v59, 0x3fb71fe1725d79e9L    # 0.09033021013372146

    const-wide v61, 0x3fcc71c71c71c71cL    # 0.2222222222222222

    const-wide v63, 0x3fb4d9e83e425aeeL    # 0.08145

    const-wide/16 v65, 0x0

    const-wide/16 v67, 0x0

    invoke-direct/range {v54 .. v70}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;-><init>(DDDDDDDILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v8, 0x5

    .line 117
    const-string v4, "Rec. ITU-R BT.2020-1"

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;Landroidx/compose/ui/graphics/colorspace/TransferParameters;I)V

    sput-object v1, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Bt2020:Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 130
    new-instance v1, Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-object/from16 v54, v1

    .line 132
    new-array v2, v0, [F

    fill-array-data v2, :array_5

    .line 133
    new-instance v3, Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    const v4, 0x3ea0c49c    # 0.314f

    const v5, 0x3eb3b646    # 0.351f

    invoke-direct {v3, v4, v5}, Landroidx/compose/ui/graphics/colorspace/WhitePoint;-><init>(FF)V

    const/high16 v25, 0x3f800000    # 1.0f

    const/16 v26, 0x6

    .line 130
    const-string v19, "SMPTE RP 431-2-2007 DCI (P3)"

    const-wide v22, 0x4004cccccccccccdL    # 2.6

    const/16 v24, 0x0

    move-object/from16 v18, v1

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    invoke-direct/range {v18 .. v26}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;DFFI)V

    sput-object v1, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->DciP3:Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 145
    new-instance v7, Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-object/from16 v55, v7

    .line 147
    new-array v3, v0, [F

    fill-array-data v3, :array_6

    .line 148
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->getD65()Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    move-result-object v4

    const/4 v6, 0x7

    .line 145
    const-string v2, "Display P3"

    move-object v1, v7

    move-object/from16 v5, v32

    invoke-direct/range {v1 .. v6}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;Landroidx/compose/ui/graphics/colorspace/TransferParameters;I)V

    sput-object v7, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->DisplayP3:Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 158
    new-instance v7, Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-object/from16 v56, v7

    .line 161
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->getC()Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    move-result-object v4

    .line 162
    new-instance v5, Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    move-object/from16 v57, v5

    const/16 v72, 0x60

    const/16 v73, 0x0

    const-wide v58, 0x4001c71c71c71c72L    # 2.2222222222222223

    const-wide v60, 0x3fed1e0c942633b7L    # 0.9099181073703367

    const-wide v62, 0x3fb70f9b5ece624dL    # 0.09008189262966333

    const-wide v64, 0x3fcc71c71c71c71cL    # 0.2222222222222222

    const-wide v66, 0x3fb4bc6a7ef9db23L    # 0.081

    const-wide/16 v68, 0x0

    const-wide/16 v70, 0x0

    invoke-direct/range {v57 .. v73}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;-><init>(DDDDDDDILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v6, 0x8

    .line 158
    const-string v2, "NTSC (1953)"

    move-object v1, v7

    move-object v3, v13

    invoke-direct/range {v1 .. v6}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;Landroidx/compose/ui/graphics/colorspace/TransferParameters;I)V

    sput-object v7, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Ntsc1953:Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 171
    new-instance v1, Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-object/from16 v57, v1

    .line 173
    new-array v2, v0, [F

    fill-array-data v2, :array_7

    .line 174
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->getD65()Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    move-result-object v21

    .line 175
    new-instance v22, Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    move-object/from16 v58, v22

    const/16 v73, 0x60

    const/16 v74, 0x0

    const-wide v59, 0x4001c71c71c71c72L    # 2.2222222222222223

    const-wide v61, 0x3fed1e0c942633b7L    # 0.9099181073703367

    const-wide v63, 0x3fb70f9b5ece624dL    # 0.09008189262966333

    const-wide v65, 0x3fcc71c71c71c71cL    # 0.2222222222222222

    const-wide v67, 0x3fb4bc6a7ef9db23L    # 0.081

    const-wide/16 v69, 0x0

    const-wide/16 v71, 0x0

    invoke-direct/range {v58 .. v74}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;-><init>(DDDDDDDILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v23, 0x9

    .line 171
    const-string v19, "SMPTE-C RGB"

    move-object/from16 v18, v1

    move-object/from16 v20, v2

    invoke-direct/range {v18 .. v23}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;Landroidx/compose/ui/graphics/colorspace/TransferParameters;I)V

    sput-object v1, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->SmpteC:Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 184
    new-instance v1, Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-object/from16 v58, v1

    .line 186
    new-array v5, v0, [F

    fill-array-data v5, :array_8

    .line 187
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->getD65()Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    move-result-object v6

    const/high16 v10, 0x3f800000    # 1.0f

    const/16 v11, 0xa

    .line 184
    const-string v4, "Adobe RGB (1998)"

    const-wide v7, 0x400199999999999aL    # 2.2

    const/4 v9, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;DFFI)V

    sput-object v1, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->AdobeRgb:Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 199
    new-instance v1, Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-object/from16 v59, v1

    .line 201
    new-array v2, v0, [F

    fill-array-data v2, :array_9

    .line 202
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->getD50()Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    move-result-object v21

    .line 203
    new-instance v22, Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    move-object/from16 v60, v22

    const/16 v75, 0x60

    const/16 v76, 0x0

    const-wide v61, 0x3ffccccccccccccdL    # 1.8

    const-wide/high16 v63, 0x3ff0000000000000L    # 1.0

    const-wide/16 v65, 0x0

    const-wide/high16 v67, 0x3fb0000000000000L    # 0.0625

    const-wide v69, 0x3f9fff79c842fa51L    # 0.031248

    const-wide/16 v73, 0x0

    invoke-direct/range {v60 .. v76}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;-><init>(DDDDDDDILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v23, 0xb

    .line 199
    const-string v19, "ROMM RGB ISO 22028-2:2013"

    move-object/from16 v18, v1

    move-object/from16 v20, v2

    invoke-direct/range {v18 .. v23}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;Landroidx/compose/ui/graphics/colorspace/TransferParameters;I)V

    sput-object v1, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->ProPhotoRgb:Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 212
    new-instance v1, Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-object/from16 v60, v1

    .line 214
    new-array v5, v0, [F

    fill-array-data v5, :array_a

    .line 215
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->getD60()Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    move-result-object v6

    const v10, 0x477fe000    # 65504.0f

    const/16 v11, 0xc

    .line 212
    const-string v4, "SMPTE ST 2065-1:2012 ACES"

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    const v9, -0x38802000    # -65504.0f

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;DFFI)V

    sput-object v1, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Aces:Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 227
    new-instance v1, Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-object/from16 v61, v1

    .line 229
    new-array v0, v0, [F

    fill-array-data v0, :array_b

    .line 230
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->getD60()Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    move-result-object v21

    const v25, 0x477fe000    # 65504.0f

    const/16 v26, 0xd

    .line 227
    const-string v19, "Academy S-2014-004 ACEScg"

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    const v24, -0x38802000    # -65504.0f

    move-object/from16 v18, v1

    move-object/from16 v20, v0

    invoke-direct/range {v18 .. v26}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;DFFI)V

    sput-object v1, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Acescg:Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 249
    new-instance v0, Landroidx/compose/ui/graphics/colorspace/Xyz;

    move-object/from16 v62, v0

    const-string v1, "Generic XYZ"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/graphics/colorspace/Xyz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->CieXyz:Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    .line 263
    new-instance v0, Landroidx/compose/ui/graphics/colorspace/Lab;

    move-object/from16 v63, v0

    const-string v1, "Generic L*a*b*"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/graphics/colorspace/Lab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->CieLab:Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    .line 267
    new-instance v0, Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-object/from16 v64, v0

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->getD65()Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    move-result-object v4

    const/16 v6, 0x10

    const-string v2, "None"

    move-object v1, v0

    move-object v3, v12

    move-object v5, v15

    invoke-direct/range {v1 .. v6}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;Landroidx/compose/ui/graphics/colorspace/TransferParameters;I)V

    sput-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Unspecified:Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 281
    new-instance v0, Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-object/from16 v65, v0

    .line 284
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->getD65()Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    move-result-object v4

    .line 286
    new-instance v6, Landroidx/compose/ui/graphics/colorspace/ColorSpaces$$ExternalSyntheticLambda2;

    invoke-direct {v6}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces$$ExternalSyntheticLambda2;-><init>()V

    .line 287
    new-instance v7, Landroidx/compose/ui/graphics/colorspace/ColorSpaces$$ExternalSyntheticLambda3;

    invoke-direct {v7}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces$$ExternalSyntheticLambda3;-><init>()V

    const/high16 v9, 0x3f800000    # 1.0f

    const/16 v11, 0x11

    .line 281
    const-string v2, "Hybrid Log Gamma encoding"

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    move-object v3, v14

    move-object/from16 v10, v31

    invoke-direct/range {v1 .. v11}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;[FLandroidx/compose/ui/graphics/colorspace/DoubleFunction;Landroidx/compose/ui/graphics/colorspace/DoubleFunction;FFLandroidx/compose/ui/graphics/colorspace/TransferParameters;I)V

    sput-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Bt2020Hlg:Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 306
    new-instance v0, Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-object/from16 v66, v0

    .line 309
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->getD65()Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    move-result-object v4

    .line 311
    new-instance v6, Landroidx/compose/ui/graphics/colorspace/ColorSpaces$$ExternalSyntheticLambda4;

    invoke-direct {v6}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces$$ExternalSyntheticLambda4;-><init>()V

    .line 312
    new-instance v7, Landroidx/compose/ui/graphics/colorspace/ColorSpaces$$ExternalSyntheticLambda5;

    invoke-direct {v7}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces$$ExternalSyntheticLambda5;-><init>()V

    const/16 v11, 0x12

    .line 306
    const-string v2, "Perceptual Quantizer encoding"

    move-object v1, v0

    move-object/from16 v10, v16

    invoke-direct/range {v1 .. v11}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;[FLandroidx/compose/ui/graphics/colorspace/DoubleFunction;Landroidx/compose/ui/graphics/colorspace/DoubleFunction;FFLandroidx/compose/ui/graphics/colorspace/TransferParameters;I)V

    sput-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Bt2020Pq:Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 331
    new-instance v0, Landroidx/compose/ui/graphics/colorspace/Oklab;

    move-object/from16 v67, v0

    const-string v1, "Oklab"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/graphics/colorspace/Oklab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Oklab:Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    .line 384
    filled-new-array/range {v48 .. v67}, [Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    move-result-object v0

    .line 364
    sput-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->ColorSpacesArray:[Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f23d70a    # 0.64f
        0x3ea8f5c3    # 0.33f
        0x3e99999a    # 0.3f
        0x3f19999a    # 0.6f
        0x3e19999a    # 0.15f
        0x3d75c28f    # 0.06f
    .end array-data

    :array_1
    .array-data 4
        0x3f2b851f    # 0.67f
        0x3ea8f5c3    # 0.33f
        0x3e570a3d    # 0.21f
        0x3f35c28f    # 0.71f
        0x3e0f5c29    # 0.14f
        0x3da3d70a    # 0.08f
    .end array-data

    :array_2
    .array-data 4
        0x3f353f7d    # 0.708f
        0x3e958106    # 0.292f
        0x3e2e147b    # 0.17f
        0x3f4c0831    # 0.797f
        0x3e0624dd    # 0.131f
        0x3d3c6a7f    # 0.046f
    .end array-data

    :array_3
    .array-data 4
        0x3f23d70a    # 0.64f
        0x3ea8f5c3    # 0.33f
        0x3e99999a    # 0.3f
        0x3f19999a    # 0.6f
        0x3e19999a    # 0.15f
        0x3d75c28f    # 0.06f
    .end array-data

    :array_4
    .array-data 4
        0x3f353f7d    # 0.708f
        0x3e958106    # 0.292f
        0x3e2e147b    # 0.17f
        0x3f4c0831    # 0.797f
        0x3e0624dd    # 0.131f
        0x3d3c6a7f    # 0.046f
    .end array-data

    :array_5
    .array-data 4
        0x3f2e147b    # 0.68f
        0x3ea3d70a    # 0.32f
        0x3e87ae14    # 0.265f
        0x3f30a3d7    # 0.69f
        0x3e19999a    # 0.15f
        0x3d75c28f    # 0.06f
    .end array-data

    :array_6
    .array-data 4
        0x3f2e147b    # 0.68f
        0x3ea3d70a    # 0.32f
        0x3e87ae14    # 0.265f
        0x3f30a3d7    # 0.69f
        0x3e19999a    # 0.15f
        0x3d75c28f    # 0.06f
    .end array-data

    :array_7
    .array-data 4
        0x3f2147ae    # 0.63f
        0x3eae147b    # 0.34f
        0x3e9eb852    # 0.31f
        0x3f1851ec    # 0.595f
        0x3e1eb852    # 0.155f
        0x3d8f5c29    # 0.07f
    .end array-data

    :array_8
    .array-data 4
        0x3f23d70a    # 0.64f
        0x3ea8f5c3    # 0.33f
        0x3e570a3d    # 0.21f
        0x3f35c28f    # 0.71f
        0x3e19999a    # 0.15f
        0x3d75c28f    # 0.06f
    .end array-data

    :array_9
    .array-data 4
        0x3f3c154d    # 0.7347f
        0x3e87d567    # 0.2653f
        0x3e236e2f    # 0.1596f
        0x3f572474    # 0.8404f
        0x3d15e9e2    # 0.0366f
        0x38d1b717    # 1.0E-4f
    .end array-data

    :array_a
    .array-data 4
        0x3f3c154d    # 0.7347f
        0x3e87d567    # 0.2653f
        0x0
        0x3f800000    # 1.0f
        0x38d1b717    # 1.0E-4f
        -0x42624dd3    # -0.077f
    .end array-data

    :array_b
    .array-data 4
        0x3f36872b    # 0.713f
        0x3e960419    # 0.293f
        0x3e28f5c3    # 0.165f
        0x3f547ae1    # 0.83f
        0x3e03126f    # 0.128f
        0x3d343958    # 0.044f
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final Bt2020Hlg$lambda$2(D)D
    .locals 2

    .line 286
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    sget-object v1, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Bt2020HlgTransferParameters:Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    invoke-virtual {v0, v1, p0, p1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->transferHlgOetf$ui_graphics_release(Landroidx/compose/ui/graphics/colorspace/TransferParameters;D)D

    move-result-wide p0

    return-wide p0
.end method

.method private static final Bt2020Hlg$lambda$3(D)D
    .locals 2

    .line 287
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    sget-object v1, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Bt2020HlgTransferParameters:Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    invoke-virtual {v0, v1, p0, p1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->transferHlgEotf$ui_graphics_release(Landroidx/compose/ui/graphics/colorspace/TransferParameters;D)D

    move-result-wide p0

    return-wide p0
.end method

.method private static final Bt2020Pq$lambda$4(D)D
    .locals 2

    .line 311
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    sget-object v1, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Bt2020PqTransferParameters:Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    invoke-virtual {v0, v1, p0, p1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->transferSt2048Oetf$ui_graphics_release(Landroidx/compose/ui/graphics/colorspace/TransferParameters;D)D

    move-result-wide p0

    return-wide p0
.end method

.method private static final Bt2020Pq$lambda$5(D)D
    .locals 2

    .line 312
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    sget-object v1, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Bt2020PqTransferParameters:Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    invoke-virtual {v0, v1, p0, p1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->transferSt2048Eotf$ui_graphics_release(Landroidx/compose/ui/graphics/colorspace/TransferParameters;D)D

    move-result-wide p0

    return-wide p0
.end method

.method private static final ExtendedSrgb$lambda$0(D)D
    .locals 12

    const-wide v8, 0x3fa4b5dcc63f1412L    # 0.04045

    const-wide v10, 0x4003333333333333L    # 2.4

    const-wide v2, 0x3fee54edcd0aeb60L    # 0.9478672985781991

    const-wide v4, 0x3faab1232f514a03L    # 0.05213270142180095

    const-wide v6, 0x3fb3d0722149b580L    # 0.07739938080495357

    move-wide v0, p0

    .line 84
    invoke-static/range {v0 .. v11}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->absRcpResponse(DDDDDD)D

    move-result-wide p0

    return-wide p0
.end method

.method private static final ExtendedSrgb$lambda$1(D)D
    .locals 12

    const-wide v8, 0x3fa4b5dcc63f1412L    # 0.04045

    const-wide v10, 0x4003333333333333L    # 2.4

    const-wide v2, 0x3fee54edcd0aeb60L    # 0.9478672985781991

    const-wide v4, 0x3faab1232f514a03L    # 0.05213270142180095

    const-wide v6, 0x3fb3d0722149b580L    # 0.07739938080495357

    move-wide v0, p0

    .line 85
    invoke-static/range {v0 .. v11}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->absResponse(DDDDDD)D

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public final getAces()Landroidx/compose/ui/graphics/colorspace/Rgb;
    .locals 0

    .line 211
    sget-object p0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Aces:Landroidx/compose/ui/graphics/colorspace/Rgb;

    return-object p0
.end method

.method public final getAcescg()Landroidx/compose/ui/graphics/colorspace/Rgb;
    .locals 0

    .line 226
    sget-object p0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Acescg:Landroidx/compose/ui/graphics/colorspace/Rgb;

    return-object p0
.end method

.method public final getAdobeRgb()Landroidx/compose/ui/graphics/colorspace/Rgb;
    .locals 0

    .line 183
    sget-object p0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->AdobeRgb:Landroidx/compose/ui/graphics/colorspace/Rgb;

    return-object p0
.end method

.method public final getBt2020()Landroidx/compose/ui/graphics/colorspace/Rgb;
    .locals 0

    .line 116
    sget-object p0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Bt2020:Landroidx/compose/ui/graphics/colorspace/Rgb;

    return-object p0
.end method

.method public final getBt2020Hlg()Landroidx/compose/ui/graphics/colorspace/Rgb;
    .locals 0

    .line 280
    sget-object p0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Bt2020Hlg:Landroidx/compose/ui/graphics/colorspace/Rgb;

    return-object p0
.end method

.method public final getBt2020Pq()Landroidx/compose/ui/graphics/colorspace/Rgb;
    .locals 0

    .line 305
    sget-object p0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Bt2020Pq:Landroidx/compose/ui/graphics/colorspace/Rgb;

    return-object p0
.end method

.method public final getBt709()Landroidx/compose/ui/graphics/colorspace/Rgb;
    .locals 0

    .line 103
    sget-object p0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Bt709:Landroidx/compose/ui/graphics/colorspace/Rgb;

    return-object p0
.end method

.method public final getCieLab()Landroidx/compose/ui/graphics/colorspace/ColorSpace;
    .locals 0

    .line 263
    sget-object p0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->CieLab:Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    return-object p0
.end method

.method public final getCieXyz()Landroidx/compose/ui/graphics/colorspace/ColorSpace;
    .locals 0

    .line 249
    sget-object p0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->CieXyz:Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    return-object p0
.end method

.method public final getColorSpacesArray$ui_graphics_release()[Landroidx/compose/ui/graphics/colorspace/ColorSpace;
    .locals 0

    .line 363
    sget-object p0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->ColorSpacesArray:[Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    return-object p0
.end method

.method public final getDciP3()Landroidx/compose/ui/graphics/colorspace/Rgb;
    .locals 0

    .line 129
    sget-object p0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->DciP3:Landroidx/compose/ui/graphics/colorspace/Rgb;

    return-object p0
.end method

.method public final getDisplayP3()Landroidx/compose/ui/graphics/colorspace/Rgb;
    .locals 0

    .line 144
    sget-object p0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->DisplayP3:Landroidx/compose/ui/graphics/colorspace/Rgb;

    return-object p0
.end method

.method public final getExtendedSrgb()Landroidx/compose/ui/graphics/colorspace/Rgb;
    .locals 0

    .line 78
    sget-object p0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->ExtendedSrgb:Landroidx/compose/ui/graphics/colorspace/Rgb;

    return-object p0
.end method

.method public final getLinearExtendedSrgb()Landroidx/compose/ui/graphics/colorspace/Rgb;
    .locals 0

    .line 96
    sget-object p0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->LinearExtendedSrgb:Landroidx/compose/ui/graphics/colorspace/Rgb;

    return-object p0
.end method

.method public final getLinearSrgb()Landroidx/compose/ui/graphics/colorspace/Rgb;
    .locals 0

    .line 71
    sget-object p0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->LinearSrgb:Landroidx/compose/ui/graphics/colorspace/Rgb;

    return-object p0
.end method

.method public final getNtsc1953()Landroidx/compose/ui/graphics/colorspace/Rgb;
    .locals 0

    .line 157
    sget-object p0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Ntsc1953:Landroidx/compose/ui/graphics/colorspace/Rgb;

    return-object p0
.end method

.method public final getNtsc1953Primaries$ui_graphics_release()[F
    .locals 0

    .line 29
    sget-object p0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Ntsc1953Primaries:[F

    return-object p0
.end method

.method public final getOklab()Landroidx/compose/ui/graphics/colorspace/ColorSpace;
    .locals 0

    .line 331
    sget-object p0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Oklab:Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    return-object p0
.end method

.method public final getProPhotoRgb()Landroidx/compose/ui/graphics/colorspace/Rgb;
    .locals 0

    .line 198
    sget-object p0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->ProPhotoRgb:Landroidx/compose/ui/graphics/colorspace/Rgb;

    return-object p0
.end method

.method public final getSmpteC()Landroidx/compose/ui/graphics/colorspace/Rgb;
    .locals 0

    .line 170
    sget-object p0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->SmpteC:Landroidx/compose/ui/graphics/colorspace/Rgb;

    return-object p0
.end method

.method public final getSrgb()Landroidx/compose/ui/graphics/colorspace/Rgb;
    .locals 0

    .line 64
    sget-object p0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Srgb:Landroidx/compose/ui/graphics/colorspace/Rgb;

    return-object p0
.end method

.method public final getSrgbPrimaries$ui_graphics_release()[F
    .locals 0

    .line 28
    sget-object p0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->SrgbPrimaries:[F

    return-object p0
.end method

.method public final getUnspecified$ui_graphics_release()Landroidx/compose/ui/graphics/colorspace/Rgb;
    .locals 0

    .line 266
    sget-object p0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Unspecified:Landroidx/compose/ui/graphics/colorspace/Rgb;

    return-object p0
.end method

.method public final transferHlgEotf$ui_graphics_release(Landroidx/compose/ui/graphics/colorspace/TransferParameters;D)D
    .locals 19

    const-wide/16 v0, 0x0

    cmpg-double v0, p2, v0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    if-gez v0, :cond_0

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    mul-double v5, p2, v3

    .line 414
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->getA()D

    move-result-wide v7

    .line 415
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->getB()D

    move-result-wide v9

    .line 416
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->getC()D

    move-result-wide v11

    .line 417
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->getD()D

    move-result-wide v13

    .line 418
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->getE()D

    move-result-wide v15

    .line 419
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->getF()D

    move-result-wide v17

    add-double v17, v17, v1

    mul-double/2addr v7, v5

    cmpg-double v0, v7, v1

    if-gtz v0, :cond_1

    .line 423
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    goto :goto_1

    :cond_1
    sub-double/2addr v5, v15

    mul-double/2addr v5, v11

    .line 425
    invoke-static {v5, v6}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    add-double/2addr v0, v13

    :goto_1
    mul-double v17, v17, v3

    mul-double v17, v17, v0

    return-wide v17
.end method

.method public final transferHlgOetf$ui_graphics_release(Landroidx/compose/ui/graphics/colorspace/TransferParameters;D)D
    .locals 19

    const-wide/16 v0, 0x0

    cmpg-double v0, p2, v0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    if-gez v0, :cond_0

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    mul-double v5, p2, v3

    .line 392
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->getA()D

    move-result-wide v7

    div-double v7, v1, v7

    .line 393
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->getB()D

    move-result-wide v9

    div-double v9, v1, v9

    .line 394
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->getC()D

    move-result-wide v11

    div-double v11, v1, v11

    .line 395
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->getD()D

    move-result-wide v13

    .line 396
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->getE()D

    move-result-wide v15

    .line 397
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->getF()D

    move-result-wide v17

    add-double v17, v17, v1

    div-double v5, v5, v17

    cmpg-double v0, v5, v1

    if-gtz v0, :cond_1

    .line 402
    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double/2addr v7, v0

    goto :goto_1

    :cond_1
    sub-double/2addr v5, v13

    .line 404
    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    mul-double/2addr v11, v0

    add-double v7, v11, v15

    :goto_1
    mul-double/2addr v3, v7

    return-wide v3
.end method

.method public final transferSt2048Eotf$ui_graphics_release(Landroidx/compose/ui/graphics/colorspace/TransferParameters;D)D
    .locals 10

    const-wide/16 v0, 0x0

    cmpg-double p0, p2, v0

    if-gez p0, :cond_0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    goto :goto_0

    :cond_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    :goto_0
    mul-double/2addr p2, v2

    .line 449
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->getA()D

    move-result-wide v4

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->getB()D

    move-result-wide v6

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->getC()D

    move-result-wide v8

    invoke-static {p2, p3, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    invoke-static {v4, v5, v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(DD)D

    move-result-wide v0

    .line 450
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->getD()D

    move-result-wide v4

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->getE()D

    move-result-wide v6

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->getC()D

    move-result-wide v8

    invoke-static {p2, p3, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p2

    mul-double/2addr v6, p2

    add-double/2addr v4, v6

    div-double/2addr v0, v4

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->getF()D

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    mul-double/2addr v2, p0

    return-wide v2
.end method

.method public final transferSt2048Oetf$ui_graphics_release(Landroidx/compose/ui/graphics/colorspace/TransferParameters;D)D
    .locals 19

    const-wide/16 v0, 0x0

    cmpg-double v2, p2, v0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    if-gez v2, :cond_0

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    goto :goto_0

    :cond_0
    move-wide v5, v3

    :goto_0
    mul-double v7, p2, v5

    .line 434
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->getA()D

    move-result-wide v9

    neg-double v9, v9

    .line 435
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->getD()D

    move-result-wide v11

    .line 436
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->getF()D

    move-result-wide v13

    div-double v13, v3, v13

    .line 437
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->getB()D

    move-result-wide v15

    .line 438
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->getE()D

    move-result-wide v0

    neg-double v0, v0

    .line 439
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->getC()D

    move-result-wide v17

    div-double v3, v3, v17

    .line 441
    invoke-static {v7, v8, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v17

    mul-double v11, v11, v17

    add-double/2addr v9, v11

    const-wide/16 v11, 0x0

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    .line 442
    invoke-static {v7, v8, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    mul-double/2addr v0, v7

    add-double/2addr v15, v0

    div-double/2addr v9, v15

    invoke-static {v9, v10, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double/2addr v5, v0

    return-wide v5
.end method
