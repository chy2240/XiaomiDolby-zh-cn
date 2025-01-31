.class final Landroidx/compose/ui/text/android/StaticLayoutParams;
.super Ljava/lang/Object;
.source "StaticLayoutFactory.android.kt"


# instance fields
.field private final alignment:Landroid/text/Layout$Alignment;

.field private final breakStrategy:I

.field private final ellipsize:Landroid/text/TextUtils$TruncateAt;

.field private final ellipsizedWidth:I

.field private final end:I

.field private final hyphenationFrequency:I

.field private final includePadding:Z

.field private final justificationMode:I

.field private final leftIndents:[I

.field private final lineBreakStyle:I

.field private final lineBreakWordStyle:I

.field private final lineSpacingExtra:F

.field private final lineSpacingMultiplier:F

.field private final maxLines:I

.field private final paint:Landroid/text/TextPaint;

.field private final rightIndents:[I

.field private final start:I

.field private final text:Ljava/lang/CharSequence;

.field private final textDir:Landroid/text/TextDirectionHeuristic;

.field private final useFallbackLineSpacing:Z

.field private final width:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;Landroid/text/Layout$Alignment;ILandroid/text/TextUtils$TruncateAt;IFFIZZIIII[I[I)V
    .locals 9

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p5

    move/from16 v4, p8

    move/from16 v5, p10

    move/from16 v6, p11

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v7, p1

    .line 119
    iput-object v7, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->text:Ljava/lang/CharSequence;

    .line 120
    iput v1, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->start:I

    .line 121
    iput v2, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->end:I

    move-object v8, p4

    .line 122
    iput-object v8, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->paint:Landroid/text/TextPaint;

    .line 123
    iput v3, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->width:I

    move-object v8, p6

    .line 124
    iput-object v8, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->textDir:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v8, p7

    .line 125
    iput-object v8, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->alignment:Landroid/text/Layout$Alignment;

    .line 126
    iput v4, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->maxLines:I

    move-object/from16 v8, p9

    .line 127
    iput-object v8, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->ellipsize:Landroid/text/TextUtils$TruncateAt;

    .line 128
    iput v5, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->ellipsizedWidth:I

    .line 129
    iput v6, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->lineSpacingMultiplier:F

    move/from16 v8, p12

    .line 130
    iput v8, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->lineSpacingExtra:F

    move/from16 v8, p13

    .line 131
    iput v8, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->justificationMode:I

    move/from16 v8, p14

    .line 132
    iput-boolean v8, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->includePadding:Z

    move/from16 v8, p15

    .line 133
    iput-boolean v8, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->useFallbackLineSpacing:Z

    move/from16 v8, p16

    .line 134
    iput v8, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->breakStrategy:I

    move/from16 v8, p17

    .line 135
    iput v8, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->lineBreakStyle:I

    move/from16 v8, p18

    .line 136
    iput v8, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->lineBreakWordStyle:I

    move/from16 v8, p19

    .line 137
    iput v8, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->hyphenationFrequency:I

    move-object/from16 v8, p20

    .line 138
    iput-object v8, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->leftIndents:[I

    move-object/from16 v8, p21

    .line 139
    iput-object v8, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->rightIndents:[I

    if-ltz v1, :cond_5

    if-gt v1, v2, :cond_5

    .line 143
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ltz v2, :cond_4

    if-gt v2, v0, :cond_4

    if-ltz v4, :cond_3

    if-ltz v3, :cond_2

    if-ltz v5, :cond_1

    const/4 v0, 0x0

    cmpl-float v0, v6, v0

    if-ltz v0, :cond_0

    return-void

    .line 147
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid lineSpacingMultiplier value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid ellipsizedWidth value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid width value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid maxLines value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid end value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid start value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final getAlignment()Landroid/text/Layout$Alignment;
    .locals 0

    .line 125
    iget-object p0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->alignment:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method public final getBreakStrategy()I
    .locals 0

    .line 134
    iget p0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->breakStrategy:I

    return p0
.end method

.method public final getEllipsize()Landroid/text/TextUtils$TruncateAt;
    .locals 0

    .line 127
    iget-object p0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->ellipsize:Landroid/text/TextUtils$TruncateAt;

    return-object p0
.end method

.method public final getEllipsizedWidth()I
    .locals 0

    .line 128
    iget p0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->ellipsizedWidth:I

    return p0
.end method

.method public final getEnd()I
    .locals 0

    .line 121
    iget p0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->end:I

    return p0
.end method

.method public final getHyphenationFrequency()I
    .locals 0

    .line 137
    iget p0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->hyphenationFrequency:I

    return p0
.end method

.method public final getIncludePadding()Z
    .locals 0

    .line 132
    iget-boolean p0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->includePadding:Z

    return p0
.end method

.method public final getJustificationMode()I
    .locals 0

    .line 131
    iget p0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->justificationMode:I

    return p0
.end method

.method public final getLeftIndents()[I
    .locals 0

    .line 138
    iget-object p0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->leftIndents:[I

    return-object p0
.end method

.method public final getLineBreakStyle()I
    .locals 0

    .line 135
    iget p0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->lineBreakStyle:I

    return p0
.end method

.method public final getLineBreakWordStyle()I
    .locals 0

    .line 136
    iget p0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->lineBreakWordStyle:I

    return p0
.end method

.method public final getLineSpacingExtra()F
    .locals 0

    .line 130
    iget p0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->lineSpacingExtra:F

    return p0
.end method

.method public final getLineSpacingMultiplier()F
    .locals 0

    .line 129
    iget p0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->lineSpacingMultiplier:F

    return p0
.end method

.method public final getMaxLines()I
    .locals 0

    .line 126
    iget p0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->maxLines:I

    return p0
.end method

.method public final getPaint()Landroid/text/TextPaint;
    .locals 0

    .line 122
    iget-object p0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->paint:Landroid/text/TextPaint;

    return-object p0
.end method

.method public final getRightIndents()[I
    .locals 0

    .line 139
    iget-object p0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->rightIndents:[I

    return-object p0
.end method

.method public final getStart()I
    .locals 0

    .line 120
    iget p0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->start:I

    return p0
.end method

.method public final getText()Ljava/lang/CharSequence;
    .locals 0

    .line 119
    iget-object p0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->text:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final getTextDir()Landroid/text/TextDirectionHeuristic;
    .locals 0

    .line 124
    iget-object p0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->textDir:Landroid/text/TextDirectionHeuristic;

    return-object p0
.end method

.method public final getUseFallbackLineSpacing()Z
    .locals 0

    .line 133
    iget-boolean p0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->useFallbackLineSpacing:Z

    return p0
.end method

.method public final getWidth()I
    .locals 0

    .line 123
    iget p0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->width:I

    return p0
.end method
