.class public final Landroidx/compose/ui/text/android/selection/WordIterator;
.super Ljava/lang/Object;
.source "WordIterator.android.kt"


# static fields
.field public static final $stable:I

.field public static final Companion:Landroidx/compose/ui/text/android/selection/WordIterator$Companion;


# instance fields
.field private final charSequence:Ljava/lang/CharSequence;

.field private final end:I

.field private final iterator:Ljava/text/BreakIterator;

.field private final start:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Landroidx/compose/ui/text/android/selection/WordIterator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/text/android/selection/WordIterator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/text/android/selection/WordIterator;->Companion:Landroidx/compose/ui/text/android/selection/WordIterator$Companion;

    const/16 v0, 0x8

    sput v0, Landroidx/compose/ui/text/android/selection/WordIterator;->$stable:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILjava/util/Locale;)V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/android/selection/WordIterator;->charSequence:Ljava/lang/CharSequence;

    if-ltz p2, :cond_1

    .line 43
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p2, v0, :cond_1

    if-ltz p3, :cond_0

    .line 44
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p3, v0, :cond_0

    .line 45
    invoke-static {p4}, Ljava/text/BreakIterator;->getWordInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    move-result-object p4

    iput-object p4, p0, Landroidx/compose/ui/text/android/selection/WordIterator;->iterator:Ljava/text/BreakIterator;

    add-int/lit8 v0, p2, -0x32

    const/4 v1, 0x0

    .line 46
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroidx/compose/ui/text/android/selection/WordIterator;->start:I

    .line 47
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v1, p3, 0x32

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroidx/compose/ui/text/android/selection/WordIterator;->end:I

    .line 48
    new-instance p0, Landroidx/compose/ui/text/android/CharSequenceCharacterIterator;

    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/ui/text/android/CharSequenceCharacterIterator;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {p4, p0}, Ljava/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    return-void

    .line 44
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "input end index is outside the CharSequence"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 43
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "input start index is outside the CharSequence"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final checkOffsetIsValid(I)V
    .locals 2

    .line 318
    iget v0, p0, Landroidx/compose/ui/text/android/selection/WordIterator;->start:I

    iget v1, p0, Landroidx/compose/ui/text/android/selection/WordIterator;->end:I

    if-gt p1, v1, :cond_0

    if-gt v0, p1, :cond_0

    return-void

    .line 319
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid offset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". Valid range is ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Landroidx/compose/ui/text/android/selection/WordIterator;->start:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " , "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/compose/ui/text/android/selection/WordIterator;->end:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 318
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final getBeginning(IZ)I
    .locals 1

    .line 208
    invoke-direct {p0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->checkOffsetIsValid(I)V

    .line 209
    invoke-direct {p0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->isOnLetterOrDigitOrEmoji(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 211
    invoke-direct {p0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->isBoundary(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    invoke-direct {p0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->isAfterLetterOrDigitOrEmoji(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 217
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->prevBoundary(I)I

    move-result p1

    :cond_1
    :goto_0
    return p1

    .line 220
    :cond_2
    invoke-direct {p0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->isAfterLetterOrDigitOrEmoji(I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 221
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->prevBoundary(I)I

    move-result p0

    return p0

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method private final getEnd(IZ)I
    .locals 1

    .line 242
    invoke-direct {p0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->checkOffsetIsValid(I)V

    .line 243
    invoke-direct {p0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->isAfterLetterOrDigitOrEmoji(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 245
    invoke-direct {p0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->isBoundary(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    invoke-direct {p0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->isOnLetterOrDigitOrEmoji(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 250
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->nextBoundary(I)I

    move-result p1

    :cond_1
    :goto_0
    return p1

    .line 253
    :cond_2
    invoke-direct {p0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->isOnLetterOrDigitOrEmoji(I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 254
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->nextBoundary(I)I

    move-result p0

    return p0

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method private final isAfterLetterOrDigitOrEmoji(I)Z
    .locals 3

    .line 275
    iget v0, p0, Landroidx/compose/ui/text/android/selection/WordIterator;->start:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget v2, p0, Landroidx/compose/ui/text/android/selection/WordIterator;->end:I

    if-gt p1, v2, :cond_2

    if-gt v0, p1, :cond_2

    .line 276
    iget-object v0, p0, Landroidx/compose/ui/text/android/selection/WordIterator;->charSequence:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 277
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 278
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/text/android/selection/WordIterator;->charSequence:Ljava/lang/CharSequence;

    sub-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 280
    :cond_1
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->isConfigured()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 281
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->get()Landroidx/emoji2/text/EmojiCompat;

    move-result-object v0

    .line 282
    invoke-virtual {v0}, Landroidx/emoji2/text/EmojiCompat;->getLoadState()I

    move-result v2

    if-ne v2, v1, :cond_2

    .line 283
    iget-object p0, p0, Landroidx/compose/ui/text/android/selection/WordIterator;->charSequence:Ljava/lang/CharSequence;

    invoke-virtual {v0, p0, p1}, Landroidx/emoji2/text/EmojiCompat;->getEmojiStart(Ljava/lang/CharSequence;I)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private final isBoundary(I)Z
    .locals 2

    .line 328
    invoke-direct {p0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->checkOffsetIsValid(I)V

    .line 329
    iget-object v0, p0, Landroidx/compose/ui/text/android/selection/WordIterator;->iterator:Ljava/text/BreakIterator;

    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->isBoundary(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 332
    invoke-direct {p0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->isOnLetterOrDigitOrEmoji(I)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, p1, -0x1

    .line 333
    invoke-direct {p0, v0}, Landroidx/compose/ui/text/android/selection/WordIterator;->isOnLetterOrDigitOrEmoji(I)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    .line 334
    invoke-direct {p0, v0}, Landroidx/compose/ui/text/android/selection/WordIterator;->isOnLetterOrDigitOrEmoji(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    if-lez p1, :cond_2

    .line 338
    iget-object v1, p0, Landroidx/compose/ui/text/android/selection/WordIterator;->charSequence:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, v0

    if-ge p1, v1, :cond_2

    .line 339
    invoke-direct {p0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->isHiraganaKatakanaBoundary(I)Z

    move-result v1

    if-nez v1, :cond_1

    add-int/2addr p1, v0

    invoke-direct {p0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->isHiraganaKatakanaBoundary(I)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method private final isHiraganaKatakanaBoundary(I)Z
    .locals 4

    .line 344
    iget-object v0, p0, Landroidx/compose/ui/text/android/selection/WordIterator;->charSequence:Ljava/lang/CharSequence;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    .line 345
    sget-object v2, Ljava/lang/Character$UnicodeBlock;->HIRAGANA:Ljava/lang/Character$UnicodeBlock;

    .line 344
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Landroidx/compose/ui/text/android/selection/WordIterator;->charSequence:Ljava/lang/CharSequence;

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    sget-object v3, Ljava/lang/Character$UnicodeBlock;->KATAKANA:Ljava/lang/Character$UnicodeBlock;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 347
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/text/android/selection/WordIterator;->charSequence:Ljava/lang/CharSequence;

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 348
    iget-object p0, p0, Landroidx/compose/ui/text/android/selection/WordIterator;->charSequence:Ljava/lang/CharSequence;

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object p0

    .line 349
    sget-object p1, Ljava/lang/Character$UnicodeBlock;->KATAKANA:Ljava/lang/Character$UnicodeBlock;

    .line 348
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final isOnLetterOrDigitOrEmoji(I)Z
    .locals 3

    .line 299
    iget v0, p0, Landroidx/compose/ui/text/android/selection/WordIterator;->start:I

    iget v1, p0, Landroidx/compose/ui/text/android/selection/WordIterator;->end:I

    if-ge p1, v1, :cond_2

    if-gt v0, p1, :cond_2

    .line 300
    iget-object v0, p0, Landroidx/compose/ui/text/android/selection/WordIterator;->charSequence:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 301
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 302
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/text/android/selection/WordIterator;->charSequence:Ljava/lang/CharSequence;

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 304
    :cond_1
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->isConfigured()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 305
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->get()Landroidx/emoji2/text/EmojiCompat;

    move-result-object v0

    .line 306
    invoke-virtual {v0}, Landroidx/emoji2/text/EmojiCompat;->getLoadState()I

    move-result v2

    if-ne v2, v1, :cond_2

    .line 307
    iget-object p0, p0, Landroidx/compose/ui/text/android/selection/WordIterator;->charSequence:Ljava/lang/CharSequence;

    invoke-virtual {v0, p0, p1}, Landroidx/emoji2/text/EmojiCompat;->getEmojiStart(Ljava/lang/CharSequence;I)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private final isPunctuationEndBoundary(I)Z
    .locals 1

    .line 265
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->isOnPunctuation(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->isAfterPunctuation(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final isPunctuationStartBoundary(I)Z
    .locals 1

    .line 261
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->isOnPunctuation(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->isAfterPunctuation(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final getNextWordEndOnTwoWordBoundary(I)I
    .locals 1

    const/4 v0, 0x1

    .line 129
    invoke-direct {p0, p1, v0}, Landroidx/compose/ui/text/android/selection/WordIterator;->getEnd(IZ)I

    move-result p0

    return p0
.end method

.method public final getPrevWordBeginningOnTwoWordsBoundary(I)I
    .locals 1

    const/4 v0, 0x1

    .line 112
    invoke-direct {p0, p1, v0}, Landroidx/compose/ui/text/android/selection/WordIterator;->getBeginning(IZ)I

    move-result p0

    return p0
.end method

.method public final getPunctuationBeginning(I)I
    .locals 1

    .line 139
    invoke-direct {p0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->checkOffsetIsValid(I)V

    :goto_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 141
    invoke-direct {p0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->isPunctuationStartBoundary(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->prevBoundary(I)I

    move-result p1

    goto :goto_0

    :cond_0
    return p1
.end method

.method public final getPunctuationEnd(I)I
    .locals 1

    .line 155
    invoke-direct {p0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->checkOffsetIsValid(I)V

    :goto_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 157
    invoke-direct {p0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->isPunctuationEndBoundary(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->nextBoundary(I)I

    move-result p1

    goto :goto_0

    :cond_0
    return p1
.end method

.method public final isAfterPunctuation(I)Z
    .locals 2

    .line 172
    iget v0, p0, Landroidx/compose/ui/text/android/selection/WordIterator;->start:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroidx/compose/ui/text/android/selection/WordIterator;->end:I

    if-gt p1, v1, :cond_0

    if-gt v0, p1, :cond_0

    .line 173
    iget-object p0, p0, Landroidx/compose/ui/text/android/selection/WordIterator;->charSequence:Ljava/lang/CharSequence;

    invoke-static {p0, p1}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result p0

    .line 174
    sget-object p1, Landroidx/compose/ui/text/android/selection/WordIterator;->Companion:Landroidx/compose/ui/text/android/selection/WordIterator$Companion;

    invoke-virtual {p1, p0}, Landroidx/compose/ui/text/android/selection/WordIterator$Companion;->isPunctuation$ui_text_release(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isOnPunctuation(I)Z
    .locals 2

    .line 186
    iget v0, p0, Landroidx/compose/ui/text/android/selection/WordIterator;->start:I

    iget v1, p0, Landroidx/compose/ui/text/android/selection/WordIterator;->end:I

    if-ge p1, v1, :cond_0

    if-gt v0, p1, :cond_0

    .line 187
    iget-object p0, p0, Landroidx/compose/ui/text/android/selection/WordIterator;->charSequence:Ljava/lang/CharSequence;

    invoke-static {p0, p1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result p0

    .line 188
    sget-object p1, Landroidx/compose/ui/text/android/selection/WordIterator;->Companion:Landroidx/compose/ui/text/android/selection/WordIterator$Companion;

    invoke-virtual {p1, p0}, Landroidx/compose/ui/text/android/selection/WordIterator$Companion;->isPunctuation$ui_text_release(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final nextBoundary(I)I
    .locals 1

    .line 59
    invoke-direct {p0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->checkOffsetIsValid(I)V

    .line 60
    iget-object v0, p0, Landroidx/compose/ui/text/android/selection/WordIterator;->iterator:Ljava/text/BreakIterator;

    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->following(I)I

    move-result p1

    add-int/lit8 v0, p1, -0x1

    .line 64
    invoke-direct {p0, v0}, Landroidx/compose/ui/text/android/selection/WordIterator;->isOnLetterOrDigitOrEmoji(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-direct {p0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->isOnLetterOrDigitOrEmoji(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-direct {p0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->isHiraganaKatakanaBoundary(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->nextBoundary(I)I

    move-result p0

    return p0

    :cond_0
    return p1
.end method

.method public final prevBoundary(I)I
    .locals 1

    .line 83
    invoke-direct {p0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->checkOffsetIsValid(I)V

    .line 84
    iget-object v0, p0, Landroidx/compose/ui/text/android/selection/WordIterator;->iterator:Ljava/text/BreakIterator;

    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->preceding(I)I

    move-result p1

    .line 88
    invoke-direct {p0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->isOnLetterOrDigitOrEmoji(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-direct {p0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->isAfterLetterOrDigitOrEmoji(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-direct {p0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->isHiraganaKatakanaBoundary(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->prevBoundary(I)I

    move-result p1

    :cond_0
    return p1
.end method
