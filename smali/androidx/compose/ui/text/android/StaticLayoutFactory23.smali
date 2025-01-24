.class final Landroidx/compose/ui/text/android/StaticLayoutFactory23;
.super Ljava/lang/Object;
.source "StaticLayoutFactory.android.kt"

# interfaces
.implements Landroidx/compose/ui/text/android/StaticLayoutFactoryImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Landroidx/compose/ui/text/android/StaticLayoutParams;)Landroid/text/StaticLayout;
    .locals 4

    .line 163
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->getStart()I

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->getEnd()I

    move-result v1

    invoke-virtual {p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->getWidth()I

    move-result v3

    invoke-static {p0, v0, v1, v2, v3}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object p0

    .line 165
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->getTextDir()Landroid/text/TextDirectionHeuristic;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    .line 166
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    .line 167
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->getMaxLines()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    .line 168
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    .line 169
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->getEllipsizedWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/text/StaticLayout$Builder;->setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;

    .line 170
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->getLineSpacingExtra()F

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->getLineSpacingMultiplier()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    .line 171
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->getIncludePadding()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    .line 172
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->getBreakStrategy()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    .line 173
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->getHyphenationFrequency()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    .line 174
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->getLeftIndents()[I

    move-result-object v0

    invoke-virtual {p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->getRightIndents()[I

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/text/StaticLayout$Builder;->setIndents([I[I)Landroid/text/StaticLayout$Builder;

    .line 176
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->getJustificationMode()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/ui/text/android/StaticLayoutFactory26;->setJustificationMode(Landroid/text/StaticLayout$Builder;I)V

    .line 181
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->getUseFallbackLineSpacing()Z

    move-result v0

    .line 179
    invoke-static {p0, v0}, Landroidx/compose/ui/text/android/StaticLayoutFactory28;->setUseLineSpacingFromFallbacks(Landroid/text/StaticLayout$Builder;Z)V

    .line 187
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->getLineBreakStyle()I

    move-result v0

    .line 188
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->getLineBreakWordStyle()I

    move-result p1

    .line 185
    invoke-static {p0, v0, p1}, Landroidx/compose/ui/text/android/StaticLayoutFactory33;->setLineBreakConfig(Landroid/text/StaticLayout$Builder;II)V

    .line 192
    invoke-virtual {p0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object p0

    return-object p0
.end method

.method public isFallbackLineSpacingEnabled(Landroid/text/StaticLayout;Z)Z
    .locals 0

    .line 200
    invoke-static {p1}, Landroidx/compose/ui/text/android/StaticLayoutFactory33;->isFallbackLineSpacingEnabled(Landroid/text/StaticLayout;)Z

    move-result p0

    return p0
.end method
