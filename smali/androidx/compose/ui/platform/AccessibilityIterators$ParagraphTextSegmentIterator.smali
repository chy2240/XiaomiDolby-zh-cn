.class public final Landroidx/compose/ui/platform/AccessibilityIterators$ParagraphTextSegmentIterator;
.super Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;
.source "AccessibilityIterators.android.kt"


# static fields
.field public static final Companion:Landroidx/compose/ui/platform/AccessibilityIterators$ParagraphTextSegmentIterator$Companion;

.field private static instance:Landroidx/compose/ui/platform/AccessibilityIterators$ParagraphTextSegmentIterator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Landroidx/compose/ui/platform/AccessibilityIterators$ParagraphTextSegmentIterator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/platform/AccessibilityIterators$ParagraphTextSegmentIterator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/platform/AccessibilityIterators$ParagraphTextSegmentIterator;->Companion:Landroidx/compose/ui/platform/AccessibilityIterators$ParagraphTextSegmentIterator$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 260
    invoke-direct {p0}, Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/compose/ui/platform/AccessibilityIterators$ParagraphTextSegmentIterator;-><init>()V

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Landroidx/compose/ui/platform/AccessibilityIterators$ParagraphTextSegmentIterator;
    .locals 1

    .line 260
    sget-object v0, Landroidx/compose/ui/platform/AccessibilityIterators$ParagraphTextSegmentIterator;->instance:Landroidx/compose/ui/platform/AccessibilityIterators$ParagraphTextSegmentIterator;

    return-object v0
.end method

.method public static final synthetic access$setInstance$cp(Landroidx/compose/ui/platform/AccessibilityIterators$ParagraphTextSegmentIterator;)V
    .locals 0

    .line 260
    sput-object p0, Landroidx/compose/ui/platform/AccessibilityIterators$ParagraphTextSegmentIterator;->instance:Landroidx/compose/ui/platform/AccessibilityIterators$ParagraphTextSegmentIterator;

    return-void
.end method

.method private final isEndBoundary(I)Z
    .locals 2

    if-lez p1, :cond_1

    .line 328
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;->getText()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    .line 329
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-ne p0, v1, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final isStartBoundary(I)Z
    .locals 2

    .line 323
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;->getText()Ljava/lang/String;

    move-result-object p0

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public following(I)[I
    .locals 4

    .line 273
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return-object v1

    :cond_0
    if-lt p1, v0, :cond_1

    return-object v1

    :cond_1
    if-gez p1, :cond_2

    const/4 p1, 0x0

    :cond_2
    :goto_0
    if-ge p1, v0, :cond_3

    .line 284
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_3

    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AccessibilityIterators$ParagraphTextSegmentIterator;->isStartBoundary(I)Z

    move-result v2

    if-nez v2, :cond_3

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    if-lt p1, v0, :cond_4

    return-object v1

    :cond_4
    add-int/lit8 v1, p1, 0x1

    :goto_1
    if-ge v1, v0, :cond_5

    .line 291
    invoke-direct {p0, v1}, Landroidx/compose/ui/platform/AccessibilityIterators$ParagraphTextSegmentIterator;->isEndBoundary(I)Z

    move-result v2

    if-nez v2, :cond_5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 294
    :cond_5
    invoke-virtual {p0, p1, v1}, Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;->getRange(II)[I

    move-result-object p0

    return-object p0
.end method

.method public preceding(I)[I
    .locals 3

    .line 298
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return-object v1

    :cond_0
    if-gtz p1, :cond_1

    return-object v1

    :cond_1
    if-le p1, v0, :cond_2

    move p1, v0

    :cond_2
    :goto_0
    if-lez p1, :cond_3

    .line 309
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;->getText()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_3

    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AccessibilityIterators$ParagraphTextSegmentIterator;->isEndBoundary(I)Z

    move-result v0

    if-nez v0, :cond_3

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_3
    if-gtz p1, :cond_4

    return-object v1

    :cond_4
    add-int/lit8 v0, p1, -0x1

    :goto_1
    if-lez v0, :cond_5

    .line 316
    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/AccessibilityIterators$ParagraphTextSegmentIterator;->isStartBoundary(I)Z

    move-result v1

    if-nez v1, :cond_5

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 319
    :cond_5
    invoke-virtual {p0, v0, p1}, Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;->getRange(II)[I

    move-result-object p0

    return-object p0
.end method
