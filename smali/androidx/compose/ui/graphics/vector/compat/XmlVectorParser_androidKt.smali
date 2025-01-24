.class public abstract Landroidx/compose/ui/graphics/vector/compat/XmlVectorParser_androidKt;
.super Ljava/lang/Object;
.source "XmlVectorParser.android.kt"


# static fields
.field private static final FILL_TYPE_WINDING:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public static final createVectorImageBuilder(Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 145
    sget-object v2, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->INSTANCE:Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->getSTYLEABLE_VECTOR_DRAWABLE_TYPE_ARRAY()[I

    move-result-object v3

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    .line 141
    invoke-virtual {v0, v4, v1, v5, v3}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 152
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->getSTYLEABLE_VECTOR_DRAWABLE_AUTO_MIRRORED()I

    move-result v5

    const/4 v6, 0x0

    .line 149
    const-string v7, "autoMirrored"

    invoke-virtual {v0, v3, v7, v5, v6}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedBoolean(Landroid/content/res/TypedArray;Ljava/lang/String;IZ)Z

    move-result v17

    .line 160
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->getSTYLEABLE_VECTOR_DRAWABLE_VIEWPORT_WIDTH()I

    move-result v5

    .line 157
    const-string v6, "viewportWidth"

    const/4 v7, 0x0

    invoke-virtual {v0, v3, v6, v5, v7}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v12

    .line 167
    const-string v5, "viewportHeight"

    .line 168
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->getSTYLEABLE_VECTOR_DRAWABLE_VIEWPORT_HEIGHT()I

    move-result v6

    .line 165
    invoke-virtual {v0, v3, v5, v6, v7}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v13

    cmpg-float v5, v12, v7

    if-lez v5, :cond_8

    cmpg-float v5, v13, v7

    if-lez v5, :cond_7

    .line 183
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->getSTYLEABLE_VECTOR_DRAWABLE_WIDTH()I

    move-result v5

    invoke-virtual {v0, v3, v5, v7}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getDimension(Landroid/content/res/TypedArray;IF)F

    move-result v5

    .line 185
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->getSTYLEABLE_VECTOR_DRAWABLE_HEIGHT()I

    move-result v6

    invoke-virtual {v0, v3, v6, v7}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getDimension(Landroid/content/res/TypedArray;IF)F

    move-result v6

    .line 188
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->getSTYLEABLE_VECTOR_DRAWABLE_TINT()I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 189
    new-instance v7, Landroid/util/TypedValue;

    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    .line 190
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->getSTYLEABLE_VECTOR_DRAWABLE_TINT()I

    move-result v8

    invoke-virtual {v3, v8, v7}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 195
    iget v7, v7, Landroid/util/TypedValue;->type:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 196
    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v7

    :goto_0
    move-wide v14, v7

    goto :goto_1

    .line 202
    :cond_0
    const-string v7, "tint"

    .line 203
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->getSTYLEABLE_VECTOR_DRAWABLE_TINT()I

    move-result v8

    .line 199
    invoke-virtual {v0, v3, v1, v7, v8}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedColorStateList(Landroid/content/res/TypedArray;Landroid/content/res/Resources$Theme;Ljava/lang/String;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 206
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-static {v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    move-result-wide v7

    goto :goto_0

    .line 208
    :cond_1
    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v7

    goto :goto_0

    .line 212
    :cond_2
    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v7

    goto :goto_0

    .line 216
    :goto_1
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->getSTYLEABLE_VECTOR_DRAWABLE_TINT_MODE()I

    move-result v1

    const/4 v2, -0x1

    invoke-virtual {v0, v3, v1, v2}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getInt(Landroid/content/res/TypedArray;II)I

    move-result v0

    if-eq v0, v2, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    const/16 v1, 0x9

    if-eq v0, v1, :cond_3

    packed-switch v0, :pswitch_data_0

    .line 228
    sget-object v0, Landroidx/compose/ui/graphics/BlendMode;->Companion:Landroidx/compose/ui/graphics/BlendMode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/BlendMode$Companion;->getSrcIn-0nO6VwU()I

    move-result v0

    :goto_2
    move/from16 v16, v0

    goto :goto_3

    .line 227
    :pswitch_0
    sget-object v0, Landroidx/compose/ui/graphics/BlendMode;->Companion:Landroidx/compose/ui/graphics/BlendMode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/BlendMode$Companion;->getPlus-0nO6VwU()I

    move-result v0

    goto :goto_2

    .line 226
    :pswitch_1
    sget-object v0, Landroidx/compose/ui/graphics/BlendMode;->Companion:Landroidx/compose/ui/graphics/BlendMode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/BlendMode$Companion;->getScreen-0nO6VwU()I

    move-result v0

    goto :goto_2

    .line 225
    :pswitch_2
    sget-object v0, Landroidx/compose/ui/graphics/BlendMode;->Companion:Landroidx/compose/ui/graphics/BlendMode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/BlendMode$Companion;->getModulate-0nO6VwU()I

    move-result v0

    goto :goto_2

    .line 222
    :cond_3
    sget-object v0, Landroidx/compose/ui/graphics/BlendMode;->Companion:Landroidx/compose/ui/graphics/BlendMode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/BlendMode$Companion;->getSrcAtop-0nO6VwU()I

    move-result v0

    goto :goto_2

    .line 221
    :cond_4
    sget-object v0, Landroidx/compose/ui/graphics/BlendMode;->Companion:Landroidx/compose/ui/graphics/BlendMode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/BlendMode$Companion;->getSrcIn-0nO6VwU()I

    move-result v0

    goto :goto_2

    .line 220
    :cond_5
    sget-object v0, Landroidx/compose/ui/graphics/BlendMode;->Companion:Landroidx/compose/ui/graphics/BlendMode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/BlendMode$Companion;->getSrcOver-0nO6VwU()I

    move-result v0

    goto :goto_2

    .line 231
    :cond_6
    sget-object v0, Landroidx/compose/ui/graphics/BlendMode;->Companion:Landroidx/compose/ui/graphics/BlendMode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/BlendMode$Companion;->getSrcIn-0nO6VwU()I

    move-result v0

    goto :goto_2

    .line 234
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v5, v0

    .line 119
    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v10

    .line 235
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v6, v0

    .line 119
    invoke-static {v6}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v11

    .line 237
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 239
    new-instance v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/4 v9, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v19}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 177
    :cond_7
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<VectorGraphic> tag requires viewportHeight > 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 177
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_8
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<VectorGraphic> tag requires viewportWidth > 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 173
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final getStrokeLineCap-CSYIeUk(II)I
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    sget-object p0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getSquare-KaPHkGw()I

    move-result p1

    goto :goto_0

    .line 68
    :cond_1
    sget-object p0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getRound-KaPHkGw()I

    move-result p1

    goto :goto_0

    .line 67
    :cond_2
    sget-object p0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result p1

    :goto_0
    return p1
.end method

.method private static final getStrokeLineJoin-kLtJ_vA(II)I
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    sget-object p0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result p1

    goto :goto_0

    .line 76
    :cond_1
    sget-object p0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getRound-LxFBmk8()I

    move-result p1

    goto :goto_0

    .line 75
    :cond_2
    sget-object p0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getMiter-LxFBmk8()I

    move-result p1

    :goto_0
    return p1
.end method

.method public static final isAtEnd(Lorg/xmlpull/v1/XmlPullParser;)Z
    .locals 2

    .line 82
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    if-ge v0, v1, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private static final obtainBrushFromComplexColor(Landroidx/core/content/res/ComplexColorCompat;)Landroidx/compose/ui/graphics/Brush;
    .locals 4

    .line 394
    invoke-virtual {p0}, Landroidx/core/content/res/ComplexColorCompat;->willDraw()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 395
    invoke-virtual {p0}, Landroidx/core/content/res/ComplexColorCompat;->getShader()Landroid/graphics/Shader;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 397
    invoke-static {v0}, Landroidx/compose/ui/graphics/BrushKt;->ShaderBrush(Landroid/graphics/Shader;)Landroidx/compose/ui/graphics/ShaderBrush;

    move-result-object v1

    goto :goto_0

    .line 399
    :cond_0
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    invoke-virtual {p0}, Landroidx/core/content/res/ComplexColorCompat;->getColor()I

    move-result p0

    invoke-static {p0}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    move-result-wide v2

    invoke-direct {v0, v2, v3, v1}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v1, v0

    :cond_1
    :goto_0
    return-object v1
.end method

.method public static final parseClipPath(Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroidx/compose/ui/graphics/vector/ImageVector$Builder;)V
    .locals 16

    move-object/from16 v0, p0

    .line 416
    sget-object v1, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->INSTANCE:Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->getSTYLEABLE_VECTOR_DRAWABLE_CLIP_PATH()[I

    move-result-object v2

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    .line 412
    invoke-virtual {v0, v3, v4, v5, v2}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 420
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->getSTYLEABLE_VECTOR_DRAWABLE_CLIP_PATH_NAME()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getString(Landroid/content/res/TypedArray;I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v3, ""

    :cond_0
    move-object v5, v3

    .line 421
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->getSTYLEABLE_VECTOR_DRAWABLE_CLIP_PATH_PATH_DATA()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getString(Landroid/content/res/TypedArray;I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 422
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getEmptyPath()Ljava/util/List;

    move-result-object v0

    :goto_0
    move-object v13, v0

    goto :goto_1

    :cond_1
    iget-object v0, v0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->pathParser:Landroidx/compose/ui/graphics/vector/PathParser;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v3, v4}, Landroidx/compose/ui/graphics/vector/PathParser;->pathStringToNodes$default(Landroidx/compose/ui/graphics/vector/PathParser;Ljava/lang/String;Ljava/util/ArrayList;ILjava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 423
    :goto_1
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    const/16 v14, 0xfe

    const/4 v15, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v4, p4

    .line 428
    invoke-static/range {v4 .. v15}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addGroup$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/lang/String;FFFFFFFLjava/util/List;ILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    return-void
.end method

.method public static final parseCurrentVectorNode(Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Landroidx/compose/ui/graphics/vector/ImageVector$Builder;I)I
    .locals 4

    .line 96
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getXmlParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    const-string v2, "group"

    if-eq v0, v1, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_1

    .line 112
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getXmlParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    add-int/lit8 p5, p5, 0x1

    const/4 p0, 0x0

    move p1, p0

    :goto_0
    if-ge p1, p5, :cond_1

    .line 113
    invoke-virtual {p4}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->clearGroup()Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return p0

    .line 98
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getXmlParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v3, -0x624e8b7e

    if-eq v1, v3, :cond_7

    const v3, 0x346425

    if-eq v1, v3, :cond_5

    const v3, 0x5e0f67f

    if-eq v1, v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    .line 107
    :cond_4
    invoke-static {p0, p1, p3, p2, p4}, Landroidx/compose/ui/graphics/vector/compat/XmlVectorParser_androidKt;->parseGroup(Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroidx/compose/ui/graphics/vector/ImageVector$Builder;)V

    goto :goto_1

    .line 98
    :cond_5
    const-string v1, "path"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_1

    .line 100
    :cond_6
    invoke-static {p0, p1, p3, p2, p4}, Landroidx/compose/ui/graphics/vector/compat/XmlVectorParser_androidKt;->parsePath(Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroidx/compose/ui/graphics/vector/ImageVector$Builder;)V

    goto :goto_1

    .line 98
    :cond_7
    const-string v1, "clip-path"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_1

    .line 103
    :cond_8
    invoke-static {p0, p1, p3, p2, p4}, Landroidx/compose/ui/graphics/vector/compat/XmlVectorParser_androidKt;->parseClipPath(Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroidx/compose/ui/graphics/vector/ImageVector$Builder;)V

    add-int/lit8 p5, p5, 0x1

    :cond_9
    :goto_1
    return p5
.end method

.method public static final parseGroup(Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroidx/compose/ui/graphics/vector/ImageVector$Builder;)V
    .locals 16

    move-object/from16 v0, p0

    .line 438
    sget-object v1, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->INSTANCE:Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->getSTYLEABLE_VECTOR_DRAWABLE_GROUP()[I

    move-result-object v2

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-virtual {v0, v3, v4, v5, v2}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 451
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->getSTYLEABLE_VECTOR_DRAWABLE_GROUP_ROTATION()I

    move-result v3

    .line 448
    const-string v4, "rotation"

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v4, v3, v5}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v8

    .line 456
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->getSTYLEABLE_VECTOR_DRAWABLE_GROUP_PIVOT_X()I

    move-result v3

    invoke-virtual {v0, v2, v3, v5}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getFloat(Landroid/content/res/TypedArray;IF)F

    move-result v9

    .line 458
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->getSTYLEABLE_VECTOR_DRAWABLE_GROUP_PIVOT_Y()I

    move-result v3

    invoke-virtual {v0, v2, v3, v5}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getFloat(Landroid/content/res/TypedArray;IF)F

    move-result v10

    .line 465
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->getSTYLEABLE_VECTOR_DRAWABLE_GROUP_SCALE_X()I

    move-result v3

    .line 462
    const-string v4, "scaleX"

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, v4, v3, v6}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v11

    .line 473
    const-string v3, "scaleY"

    .line 474
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->getSTYLEABLE_VECTOR_DRAWABLE_GROUP_SCALE_Y()I

    move-result v4

    .line 471
    invoke-virtual {v0, v2, v3, v4, v6}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v12

    .line 481
    const-string v3, "translateX"

    .line 482
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->getSTYLEABLE_VECTOR_DRAWABLE_GROUP_TRANSLATE_X()I

    move-result v4

    .line 479
    invoke-virtual {v0, v2, v3, v4, v5}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v13

    .line 488
    const-string v3, "translateY"

    .line 489
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->getSTYLEABLE_VECTOR_DRAWABLE_GROUP_TRANSLATE_Y()I

    move-result v4

    .line 486
    invoke-virtual {v0, v2, v3, v4, v5}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v14

    .line 494
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->getSTYLEABLE_VECTOR_DRAWABLE_GROUP_NAME()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getString(Landroid/content/res/TypedArray;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    move-object v7, v0

    .line 496
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 507
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getEmptyPath()Ljava/util/List;

    move-result-object v15

    move-object/from16 v6, p4

    .line 498
    invoke-virtual/range {v6 .. v15}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addGroup(Ljava/lang/String;FFFFFFFLjava/util/List;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    return-void
.end method

.method public static final parsePath(Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroidx/compose/ui/graphics/vector/ImageVector$Builder;)V
    .locals 25

    move-object/from16 v6, p0

    .line 258
    sget-object v7, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->INSTANCE:Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->getSTYLEABLE_VECTOR_DRAWABLE_PATH()[I

    move-result-object v0

    move-object/from16 v1, p1

    move-object/from16 v8, p2

    move-object/from16 v2, p3

    invoke-virtual {v6, v1, v8, v2, v0}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 260
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getXmlParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    const-string v1, "pathData"

    invoke-static {v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 268
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->getSTYLEABLE_VECTOR_DRAWABLE_PATH_NAME()I

    move-result v0

    invoke-virtual {v6, v9, v0}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getString(Landroid/content/res/TypedArray;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    move-object v13, v0

    .line 270
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->getSTYLEABLE_VECTOR_DRAWABLE_PATH_PATH_DATA()I

    move-result v0

    invoke-virtual {v6, v9, v0}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getString(Landroid/content/res/TypedArray;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 273
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getEmptyPath()Ljava/util/List;

    move-result-object v0

    :goto_0
    move-object v11, v0

    goto :goto_1

    .line 275
    :cond_1
    iget-object v1, v6, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->pathParser:Landroidx/compose/ui/graphics/vector/PathParser;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, v0, v3, v2, v3}, Landroidx/compose/ui/graphics/vector/PathParser;->pathStringToNodes$default(Landroidx/compose/ui/graphics/vector/PathParser;Ljava/lang/String;Ljava/util/ArrayList;ILjava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 283
    :goto_1
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->getSTYLEABLE_VECTOR_DRAWABLE_PATH_FILL_COLOR()I

    move-result v4

    const/4 v5, 0x0

    .line 279
    const-string v3, "fillColor"

    move-object/from16 v0, p0

    move-object v1, v9

    move-object/from16 v2, p2

    invoke-virtual/range {v0 .. v5}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedComplexColor(Landroid/content/res/TypedArray;Landroid/content/res/Resources$Theme;Ljava/lang/String;II)Landroidx/core/content/res/ComplexColorCompat;

    move-result-object v10

    .line 289
    const-string v0, "fillAlpha"

    .line 290
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->getSTYLEABLE_VECTOR_DRAWABLE_PATH_FILL_ALPHA()I

    move-result v1

    const/high16 v12, 0x3f800000    # 1.0f

    .line 287
    invoke-virtual {v6, v9, v0, v1, v12}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v15

    .line 296
    const-string v0, "strokeLineCap"

    .line 297
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->getSTYLEABLE_VECTOR_DRAWABLE_PATH_STROKE_LINE_CAP()I

    move-result v1

    const/4 v2, -0x1

    .line 294
    invoke-virtual {v6, v9, v0, v1, v2}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedInt(Landroid/content/res/TypedArray;Ljava/lang/String;II)I

    move-result v0

    .line 300
    sget-object v1, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/vector/compat/XmlVectorParser_androidKt;->getStrokeLineCap-CSYIeUk(II)I

    move-result v19

    .line 304
    const-string v0, "strokeLineJoin"

    .line 305
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->getSTYLEABLE_VECTOR_DRAWABLE_PATH_STROKE_LINE_JOIN()I

    move-result v1

    .line 302
    invoke-virtual {v6, v9, v0, v1, v2}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedInt(Landroid/content/res/TypedArray;Ljava/lang/String;II)I

    move-result v0

    .line 308
    sget-object v1, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/vector/compat/XmlVectorParser_androidKt;->getStrokeLineJoin-kLtJ_vA(II)I

    move-result v20

    .line 312
    const-string v0, "strokeMiterLimit"

    .line 313
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->getSTYLEABLE_VECTOR_DRAWABLE_PATH_STROKE_MITER_LIMIT()I

    move-result v1

    .line 310
    invoke-virtual {v6, v9, v0, v1, v12}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v21

    .line 321
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->getSTYLEABLE_VECTOR_DRAWABLE_PATH_STROKE_COLOR()I

    move-result v4

    .line 317
    const-string v3, "strokeColor"

    move-object/from16 v0, p0

    move-object v1, v9

    move-object/from16 v2, p2

    invoke-virtual/range {v0 .. v5}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedComplexColor(Landroid/content/res/TypedArray;Landroid/content/res/Resources$Theme;Ljava/lang/String;II)Landroidx/core/content/res/ComplexColorCompat;

    move-result-object v0

    .line 327
    const-string v1, "strokeAlpha"

    .line 328
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->getSTYLEABLE_VECTOR_DRAWABLE_PATH_STROKE_ALPHA()I

    move-result v2

    .line 325
    invoke-virtual {v6, v9, v1, v2, v12}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v17

    .line 334
    const-string v1, "strokeWidth"

    .line 335
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->getSTYLEABLE_VECTOR_DRAWABLE_PATH_STROKE_WIDTH()I

    move-result v2

    .line 332
    invoke-virtual {v6, v9, v1, v2, v12}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v18

    .line 342
    const-string v1, "trimPathEnd"

    .line 343
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->getSTYLEABLE_VECTOR_DRAWABLE_PATH_TRIM_PATH_END()I

    move-result v2

    .line 340
    invoke-virtual {v6, v9, v1, v2, v12}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v23

    .line 349
    const-string v1, "trimPathOffset"

    .line 350
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->getSTYLEABLE_VECTOR_DRAWABLE_PATH_TRIM_PATH_OFFSET()I

    move-result v2

    const/4 v3, 0x0

    .line 347
    invoke-virtual {v6, v9, v1, v2, v3}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v24

    .line 356
    const-string v1, "trimPathStart"

    .line 357
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->getSTYLEABLE_VECTOR_DRAWABLE_PATH_TRIM_PATH_START()I

    move-result v2

    .line 354
    invoke-virtual {v6, v9, v1, v2, v3}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v22

    .line 365
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->getSTYLEABLE_VECTOR_DRAWABLE_PATH_TRIM_PATH_FILLTYPE()I

    move-result v1

    .line 366
    sget v2, Landroidx/compose/ui/graphics/vector/compat/XmlVectorParser_androidKt;->FILL_TYPE_WINDING:I

    .line 362
    const-string v3, "fillType"

    invoke-virtual {v6, v9, v3, v1, v2}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedInt(Landroid/content/res/TypedArray;Ljava/lang/String;II)I

    move-result v1

    .line 369
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 371
    invoke-static {v10}, Landroidx/compose/ui/graphics/vector/compat/XmlVectorParser_androidKt;->obtainBrushFromComplexColor(Landroidx/core/content/res/ComplexColorCompat;)Landroidx/compose/ui/graphics/Brush;

    move-result-object v14

    .line 372
    invoke-static {v0}, Landroidx/compose/ui/graphics/vector/compat/XmlVectorParser_androidKt;->obtainBrushFromComplexColor(Landroidx/core/content/res/ComplexColorCompat;)Landroidx/compose/ui/graphics/Brush;

    move-result-object v16

    .line 373
    sget-object v0, Landroidx/compose/ui/graphics/PathFillType;->Companion:Landroidx/compose/ui/graphics/PathFillType$Companion;

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/PathFillType$Companion;->getNonZero-Rg-k1Os()I

    move-result v0

    :goto_2
    move v12, v0

    goto :goto_3

    :cond_2
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/PathFillType$Companion;->getEvenOdd-Rg-k1Os()I

    move-result v0

    goto :goto_2

    :goto_3
    move-object/from16 v10, p4

    .line 375
    invoke-virtual/range {v10 .. v24}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM(Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFF)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    return-void

    .line 264
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No path data available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final seekToStartTag(Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/XmlPullParser;
    .locals 3

    .line 124
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    :goto_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 127
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    return-object p0

    .line 130
    :cond_1
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v0, "No start tag found"

    invoke-direct {p0, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
