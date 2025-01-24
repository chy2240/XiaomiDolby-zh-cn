.class public final Landroidx/compose/ui/text/platform/AndroidTextPaint;
.super Landroid/text/TextPaint;
.source "AndroidTextPaint.android.kt"


# instance fields
.field private backingBlendMode:I

.field private backingComposePaint:Landroidx/compose/ui/graphics/Paint;

.field private brush:Landroidx/compose/ui/graphics/Brush;

.field private brushSize:Landroidx/compose/ui/geometry/Size;

.field private drawStyle:Landroidx/compose/ui/graphics/drawscope/DrawStyle;

.field private shaderState:Landroidx/compose/runtime/State;

.field private shadow:Landroidx/compose/ui/graphics/Shadow;

.field private textDecoration:Landroidx/compose/ui/text/style/TextDecoration;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Landroid/text/TextPaint;-><init>(I)V

    .line 49
    iput p2, p0, Landroid/text/TextPaint;->density:F

    .line 61
    sget-object p1, Landroidx/compose/ui/text/style/TextDecoration;->Companion:Landroidx/compose/ui/text/style/TextDecoration$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/text/style/TextDecoration$Companion;->getNone()Landroidx/compose/ui/text/style/TextDecoration;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->textDecoration:Landroidx/compose/ui/text/style/TextDecoration;

    .line 63
    sget-object p1, Landroidx/compose/ui/graphics/drawscope/DrawScope;->Companion:Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;->getDefaultBlendMode-0nO6VwU()I

    move-result p1

    iput p1, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->backingBlendMode:I

    .line 65
    sget-object p1, Landroidx/compose/ui/graphics/Shadow;->Companion:Landroidx/compose/ui/graphics/Shadow$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/Shadow$Companion;->getNone()Landroidx/compose/ui/graphics/Shadow;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->shadow:Landroidx/compose/ui/graphics/Shadow;

    return-void
.end method

.method private final clearShader()V
    .locals 1

    const/4 v0, 0x0

    .line 179
    iput-object v0, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->shaderState:Landroidx/compose/runtime/State;

    .line 180
    iput-object v0, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->brush:Landroidx/compose/ui/graphics/Brush;

    .line 181
    iput-object v0, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->brushSize:Landroidx/compose/ui/geometry/Size;

    .line 182
    invoke-virtual {p0, v0}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method private final getComposePaint()Landroidx/compose/ui/graphics/Paint;
    .locals 1

    .line 56
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->backingComposePaint:Landroidx/compose/ui/graphics/Paint;

    if-eqz v0, :cond_0

    return-object v0

    .line 58
    :cond_0
    invoke-static {p0}, Landroidx/compose/ui/graphics/AndroidPaint_androidKt;->asComposePaint(Landroid/graphics/Paint;)Landroidx/compose/ui/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->backingComposePaint:Landroidx/compose/ui/graphics/Paint;

    return-object v0
.end method


# virtual methods
.method public final getBlendMode-0nO6VwU()I
    .locals 0

    .line 169
    iget p0, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->backingBlendMode:I

    return p0
.end method

.method public final setBlendMode-s9anfk8(I)V
    .locals 1

    .line 172
    iget v0, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->backingBlendMode:I

    invoke-static {p1, v0}, Landroidx/compose/ui/graphics/BlendMode;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 173
    :cond_0
    invoke-direct {p0}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->getComposePaint()Landroidx/compose/ui/graphics/Paint;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/compose/ui/graphics/Paint;->setBlendMode-s9anfk8(I)V

    .line 174
    iput p1, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->backingBlendMode:I

    return-void
.end method

.method public final setBrush-12SF9DM(Landroidx/compose/ui/graphics/Brush;JF)V
    .locals 4

    if-nez p1, :cond_0

    .line 113
    invoke-direct {p0}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->clearShader()V

    goto :goto_2

    .line 116
    :cond_0
    instance-of v0, p1, Landroidx/compose/ui/graphics/SolidColor;

    if-eqz v0, :cond_1

    .line 117
    check-cast p1, Landroidx/compose/ui/graphics/SolidColor;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/SolidColor;->getValue-0d7_KjU()J

    move-result-wide p1

    invoke-static {p1, p2, p4}, Landroidx/compose/ui/text/style/TextDrawStyleKt;->modulate-DxMtmZc(JF)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setColor-8_81llA(J)V

    goto :goto_2

    .line 126
    :cond_1
    instance-of v0, p1, Landroidx/compose/ui/graphics/ShaderBrush;

    if-eqz v0, :cond_7

    .line 127
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->brush:Landroidx/compose/ui/graphics/Brush;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->brushSize:Landroidx/compose/ui/geometry/Size;

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Size;->unbox-impl()J

    move-result-wide v2

    invoke-static {v2, v3, p2, p3}, Landroidx/compose/ui/geometry/Size;->equals-impl0(JJ)Z

    move-result v0

    :goto_0
    if-nez v0, :cond_5

    :cond_3
    const-wide v2, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long v0, p2, v2

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    if-eqz v1, :cond_5

    .line 129
    iput-object p1, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->brush:Landroidx/compose/ui/graphics/Brush;

    .line 130
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Size;->box-impl(J)Landroidx/compose/ui/geometry/Size;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->brushSize:Landroidx/compose/ui/geometry/Size;

    .line 131
    new-instance v0, Landroidx/compose/ui/text/platform/AndroidTextPaint$setBrush$1;

    invoke-direct {v0, p1, p2, p3}, Landroidx/compose/ui/text/platform/AndroidTextPaint$setBrush$1;-><init>(Landroidx/compose/ui/graphics/Brush;J)V

    invoke-static {v0}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->shaderState:Landroidx/compose/runtime/State;

    .line 134
    :cond_5
    invoke-direct {p0}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->getComposePaint()Landroidx/compose/ui/graphics/Paint;

    move-result-object p1

    iget-object p2, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->shaderState:Landroidx/compose/runtime/State;

    if-eqz p2, :cond_6

    invoke-interface {p2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Shader;

    goto :goto_1

    :cond_6
    const/4 p2, 0x0

    :goto_1
    invoke-interface {p1, p2}, Landroidx/compose/ui/graphics/Paint;->setShader(Landroid/graphics/Shader;)V

    .line 135
    invoke-static {p0, p4}, Landroidx/compose/ui/text/platform/AndroidTextPaint_androidKt;->setAlpha(Landroid/text/TextPaint;F)V

    :cond_7
    :goto_2
    return-void
.end method

.method public final setColor-8_81llA(J)V
    .locals 2

    const-wide/16 v0, 0x10

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 103
    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/ColorKt;->toArgb-8_81llA(J)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 104
    invoke-direct {p0}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->clearShader()V

    :cond_0
    return-void
.end method

.method public final setDrawStyle(Landroidx/compose/ui/graphics/drawscope/DrawStyle;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->drawStyle:Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 143
    iput-object p1, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->drawStyle:Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    .line 145
    sget-object v0, Landroidx/compose/ui/graphics/drawscope/Fill;->INSTANCE:Landroidx/compose/ui/graphics/drawscope/Fill;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_0

    .line 153
    :cond_1
    instance-of v0, p1, Landroidx/compose/ui/graphics/drawscope/Stroke;

    if-eqz v0, :cond_2

    .line 154
    invoke-direct {p0}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->getComposePaint()Landroidx/compose/ui/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/graphics/PaintingStyle;->Companion:Landroidx/compose/ui/graphics/PaintingStyle$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/PaintingStyle$Companion;->getStroke-TiuSbCo()I

    move-result v1

    invoke-interface {v0, v1}, Landroidx/compose/ui/graphics/Paint;->setStyle-k9PVt8s(I)V

    .line 155
    invoke-direct {p0}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->getComposePaint()Landroidx/compose/ui/graphics/Paint;

    move-result-object v0

    check-cast p1, Landroidx/compose/ui/graphics/drawscope/Stroke;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/drawscope/Stroke;->getWidth()F

    move-result v1

    invoke-interface {v0, v1}, Landroidx/compose/ui/graphics/Paint;->setStrokeWidth(F)V

    .line 156
    invoke-direct {p0}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->getComposePaint()Landroidx/compose/ui/graphics/Paint;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/drawscope/Stroke;->getMiter()F

    move-result v1

    invoke-interface {v0, v1}, Landroidx/compose/ui/graphics/Paint;->setStrokeMiterLimit(F)V

    .line 157
    invoke-direct {p0}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->getComposePaint()Landroidx/compose/ui/graphics/Paint;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/drawscope/Stroke;->getJoin-LxFBmk8()I

    move-result v1

    invoke-interface {v0, v1}, Landroidx/compose/ui/graphics/Paint;->setStrokeJoin-Ww9F2mQ(I)V

    .line 158
    invoke-direct {p0}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->getComposePaint()Landroidx/compose/ui/graphics/Paint;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/drawscope/Stroke;->getCap-KaPHkGw()I

    move-result v1

    invoke-interface {v0, v1}, Landroidx/compose/ui/graphics/Paint;->setStrokeCap-BeK7IIE(I)V

    .line 159
    invoke-direct {p0}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->getComposePaint()Landroidx/compose/ui/graphics/Paint;

    move-result-object p0

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/drawscope/Stroke;->getPathEffect()Landroidx/compose/ui/graphics/PathEffect;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Landroidx/compose/ui/graphics/Paint;->setPathEffect(Landroidx/compose/ui/graphics/PathEffect;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final setShadow(Landroidx/compose/ui/graphics/Shadow;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->shadow:Landroidx/compose/ui/graphics/Shadow;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 87
    iput-object p1, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->shadow:Landroidx/compose/ui/graphics/Shadow;

    .line 88
    sget-object v0, Landroidx/compose/ui/graphics/Shadow;->Companion:Landroidx/compose/ui/graphics/Shadow$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Shadow$Companion;->getNone()Landroidx/compose/ui/graphics/Shadow;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 89
    invoke-virtual {p0}, Landroid/text/TextPaint;->clearShadowLayer()V

    goto :goto_0

    .line 92
    :cond_1
    iget-object p1, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->shadow:Landroidx/compose/ui/graphics/Shadow;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/Shadow;->getBlurRadius()F

    move-result p1

    invoke-static {p1}, Landroidx/compose/ui/text/platform/extensions/TextPaintExtensions_androidKt;->correctBlurRadius(F)F

    move-result p1

    .line 93
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->shadow:Landroidx/compose/ui/graphics/Shadow;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Shadow;->getOffset-F1C5BW0()J

    move-result-wide v0

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    .line 22
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 94
    iget-object v1, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->shadow:Landroidx/compose/ui/graphics/Shadow;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Shadow;->getOffset-F1C5BW0()J

    move-result-wide v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    long-to-int v1, v1

    .line 22
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    .line 95
    iget-object v2, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->shadow:Landroidx/compose/ui/graphics/Shadow;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Shadow;->getColor-0d7_KjU()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/ColorKt;->toArgb-8_81llA(J)I

    move-result v2

    .line 91
    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final setTextDecoration(Landroidx/compose/ui/text/style/TextDecoration;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->textDecoration:Landroidx/compose/ui/text/style/TextDecoration;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 78
    iput-object p1, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->textDecoration:Landroidx/compose/ui/text/style/TextDecoration;

    .line 79
    sget-object v0, Landroidx/compose/ui/text/style/TextDecoration;->Companion:Landroidx/compose/ui/text/style/TextDecoration$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextDecoration$Companion;->getUnderline()Landroidx/compose/ui/text/style/TextDecoration;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/compose/ui/text/style/TextDecoration;->contains(Landroidx/compose/ui/text/style/TextDecoration;)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 80
    iget-object p1, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->textDecoration:Landroidx/compose/ui/text/style/TextDecoration;

    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextDecoration$Companion;->getLineThrough()Landroidx/compose/ui/text/style/TextDecoration;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/compose/ui/text/style/TextDecoration;->contains(Landroidx/compose/ui/text/style/TextDecoration;)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/text/TextPaint;->setStrikeThruText(Z)V

    :cond_1
    return-void
.end method
