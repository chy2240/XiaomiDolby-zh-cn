.class public abstract Landroidx/compose/ui/text/android/PaintExtensions_androidKt;
.super Ljava/lang/Object;
.source "PaintExtensions.android.kt"


# direct methods
.method private static final extendWith(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2

    .line 80
    iget v0, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 81
    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 82
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method private static final fillStringBounds(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Rect;)V
    .locals 0

    .line 94
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/ui/text/android/Paint29;->getTextBounds(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Rect;)V

    return-void
.end method

.method public static final getCharSequenceBounds(Landroid/text/TextPaint;Ljava/lang/CharSequence;II)Landroid/graphics/Rect;
    .locals 12

    .line 35
    const-class v0, Landroid/text/style/MetricAffectingSpan;

    .line 36
    instance-of v1, p1, Landroid/text/Spanned;

    if-eqz v1, :cond_4

    move-object v1, p1

    check-cast v1, Landroid/text/Spanned;

    invoke-static {v1, v0, p2, p3}, Landroidx/compose/ui/text/android/SpannedExtensions_androidKt;->hasSpan(Landroid/text/Spanned;Ljava/lang/Class;II)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    .line 40
    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 41
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 42
    new-instance v4, Landroid/text/TextPaint;

    invoke-direct {v4}, Landroid/text/TextPaint;-><init>()V

    :goto_0
    if-ge p2, p3, :cond_3

    .line 45
    invoke-interface {v1, p2, p3, v0}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v5

    .line 46
    invoke-interface {v1, p2, v5, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/MetricAffectingSpan;

    .line 47
    invoke-virtual {v4, p0}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 48
    array-length v7, v6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_2

    aget-object v9, v6, v8

    .line 49
    invoke-interface {v1, v9}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v10

    .line 50
    invoke-interface {v1, v9}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    if-eq v10, v11, :cond_1

    .line 54
    invoke-virtual {v9, v4}, Landroid/text/style/MetricAffectingSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 58
    :cond_2
    invoke-static {v4, p1, p2, v5, v3}, Landroidx/compose/ui/text/android/PaintExtensions_androidKt;->fillStringBounds(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Rect;)V

    .line 59
    invoke-static {v2, v3}, Landroidx/compose/ui/text/android/PaintExtensions_androidKt;->extendWith(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    move p2, v5

    goto :goto_0

    :cond_3
    return-object v2

    .line 37
    :cond_4
    :goto_2
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/text/android/PaintExtensions_androidKt;->getStringBounds(Landroid/graphics/Paint;Ljava/lang/CharSequence;II)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static final getStringBounds(Landroid/graphics/Paint;Ljava/lang/CharSequence;II)Landroid/graphics/Rect;
    .locals 1

    .line 87
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 88
    invoke-static {p0, p1, p2, p3, v0}, Landroidx/compose/ui/text/android/PaintExtensions_androidKt;->fillStringBounds(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Rect;)V

    return-object v0
.end method
