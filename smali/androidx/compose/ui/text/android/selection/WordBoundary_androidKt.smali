.class public abstract Landroidx/compose/ui/text/android/selection/WordBoundary_androidKt;
.super Ljava/lang/Object;
.source "WordBoundary.android.kt"


# direct methods
.method public static final getWordEnd(Landroidx/compose/ui/text/android/selection/WordIterator;I)I
    .locals 1

    .line 54
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->nextBoundary(I)I

    move-result v0

    .line 56
    invoke-virtual {p0, v0}, Landroidx/compose/ui/text/android/selection/WordIterator;->isAfterPunctuation(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->getPunctuationEnd(I)I

    move-result p0

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->getNextWordEndOnTwoWordBoundary(I)I

    move-result p0

    :goto_0
    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    goto :goto_1

    :cond_1
    move p1, p0

    :goto_1
    return p1
.end method

.method public static final getWordStart(Landroidx/compose/ui/text/android/selection/WordIterator;I)I
    .locals 1

    .line 31
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->prevBoundary(I)I

    move-result v0

    .line 33
    invoke-virtual {p0, v0}, Landroidx/compose/ui/text/android/selection/WordIterator;->isOnPunctuation(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->getPunctuationBeginning(I)I

    move-result p0

    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->getPrevWordBeginningOnTwoWordsBoundary(I)I

    move-result p0

    :goto_0
    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    goto :goto_1

    :cond_1
    move p1, p0

    :goto_1
    return p1
.end method
