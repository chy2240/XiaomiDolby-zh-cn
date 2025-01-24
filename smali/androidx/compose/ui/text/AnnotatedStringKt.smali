.class public abstract Landroidx/compose/ui/text/AnnotatedStringKt;
.super Ljava/lang/Object;
.source "AnnotatedString.kt"


# static fields
.field private static final EmptyAnnotatedString:Landroidx/compose/ui/text/AnnotatedString;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1324
    new-instance v0, Landroidx/compose/ui/text/AnnotatedString;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, ""

    invoke-direct {v0, v3, v1, v2, v1}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/text/AnnotatedStringKt;->EmptyAnnotatedString:Landroidx/compose/ui/text/AnnotatedString;

    return-void
.end method

.method public static final synthetic access$constructAnnotationsFromSpansAndParagraphs(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/text/AnnotatedStringKt;->constructAnnotationsFromSpansAndParagraphs(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$filterRanges(Ljava/util/List;II)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/text/AnnotatedStringKt;->filterRanges(Ljava/util/List;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getLocalAnnotations(Landroidx/compose/ui/text/AnnotatedString;II)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/text/AnnotatedStringKt;->getLocalAnnotations(Landroidx/compose/ui/text/AnnotatedString;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$substringWithoutParagraphStyles(Landroidx/compose/ui/text/AnnotatedString;II)Landroidx/compose/ui/text/AnnotatedString;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/text/AnnotatedStringKt;->substringWithoutParagraphStyles(Landroidx/compose/ui/text/AnnotatedString;II)Landroidx/compose/ui/text/AnnotatedString;

    move-result-object p0

    return-object p0
.end method

.method private static final constructAnnotationsFromSpansAndParagraphs(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 5

    .line 863
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_2

    .line 865
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 867
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object p0, p1

    goto :goto_2

    .line 870
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    .line 35
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 36
    check-cast v4, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 871
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 34
    :cond_3
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p0

    :goto_1
    if-ge v2, p0, :cond_4

    .line 35
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 36
    check-cast v1, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 872
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    move-object p0, v0

    :goto_2
    return-object p0
.end method

.method public static final contains(IIII)Z
    .locals 2

    .line 0
    const/4 v0, 0x0

    if-gt p0, p2, :cond_3

    if-gt p3, p1, :cond_3

    const/4 v1, 0x1

    if-ne p1, p3, :cond_2

    if-ne p2, p3, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    if-ne p0, p1, :cond_1

    move p0, v1

    goto :goto_1

    :cond_1
    move p0, v0

    :goto_1
    if-ne p2, p0, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    return v0
.end method

.method public static final emptyAnnotatedString()Landroidx/compose/ui/text/AnnotatedString;
    .locals 1

    .line 1327
    sget-object v0, Landroidx/compose/ui/text/AnnotatedStringKt;->EmptyAnnotatedString:Landroidx/compose/ui/text/AnnotatedString;

    return-object v0
.end method

.method private static final filterRanges(Ljava/util/List;II)Ljava/util/List;
    .locals 9

    if-gt p1, p2, :cond_4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1339
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 35
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 1340
    check-cast v4, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 1256
    invoke-virtual {v4}, Landroidx/compose/ui/text/AnnotatedString$Range;->getStart()I

    move-result v5

    invoke-virtual {v4}, Landroidx/compose/ui/text/AnnotatedString$Range;->getEnd()I

    move-result v6

    invoke-static {p1, p2, v5, v6}, Landroidx/compose/ui/text/AnnotatedStringKt;->intersect(IIII)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1257
    new-instance v5, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 1258
    invoke-virtual {v4}, Landroidx/compose/ui/text/AnnotatedString$Range;->getItem()Ljava/lang/Object;

    move-result-object v6

    .line 1259
    invoke-virtual {v4}, Landroidx/compose/ui/text/AnnotatedString$Range;->getStart()I

    move-result v7

    invoke-static {p1, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    sub-int/2addr v7, p1

    .line 1260
    invoke-virtual {v4}, Landroidx/compose/ui/text/AnnotatedString$Range;->getEnd()I

    move-result v8

    invoke-static {p2, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    sub-int/2addr v8, p1

    .line 1261
    invoke-virtual {v4}, Landroidx/compose/ui/text/AnnotatedString$Range;->getTag()Ljava/lang/String;

    move-result-object v4

    .line 1257
    invoke-direct {v5, v6, v7, v8, v4}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(Ljava/lang/Object;IILjava/lang/String;)V

    .line 1340
    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1264
    :cond_2
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    move-object v0, v1

    :goto_1
    return-object v0

    .line 1252
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "start ("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") should be less than or equal to end ("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static final getLocalAnnotations(Landroidx/compose/ui/text/AnnotatedString;II)Ljava/util/List;
    .locals 8

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    return-object v0

    .line 970
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/text/AnnotatedString;->getAnnotations$ui_text_release()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    if-nez p1, :cond_2

    .line 972
    invoke-virtual {p0}, Landroidx/compose/ui/text/AnnotatedString;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lt p2, p0, :cond_2

    return-object v1

    .line 1339
    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    .line 35
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 1340
    check-cast v3, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 975
    invoke-virtual {v3}, Landroidx/compose/ui/text/AnnotatedString$Range;->getStart()I

    move-result v4

    invoke-virtual {v3}, Landroidx/compose/ui/text/AnnotatedString$Range;->getEnd()I

    move-result v5

    invoke-static {p1, p2, v4, v5}, Landroidx/compose/ui/text/AnnotatedStringKt;->intersect(IIII)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 977
    invoke-virtual {v3}, Landroidx/compose/ui/text/AnnotatedString$Range;->getTag()Ljava/lang/String;

    move-result-object v4

    .line 978
    invoke-virtual {v3}, Landroidx/compose/ui/text/AnnotatedString$Range;->getItem()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/text/AnnotatedString$Annotation;

    .line 979
    invoke-virtual {v3}, Landroidx/compose/ui/text/AnnotatedString$Range;->getStart()I

    move-result v6

    invoke-static {v6, p1, p2}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v6

    sub-int/2addr v6, p1

    .line 980
    invoke-virtual {v3}, Landroidx/compose/ui/text/AnnotatedString$Range;->getEnd()I

    move-result v3

    invoke-static {v3, p1, p2}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v3

    sub-int/2addr v3, p1

    .line 976
    new-instance v7, Landroidx/compose/ui/text/AnnotatedString$Range;

    invoke-direct {v7, v5, v6, v3, v4}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(Ljava/lang/Object;IILjava/lang/String;)V

    .line 1340
    invoke-interface {p0, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object p0
.end method

.method private static final getLocalSpanStyles(Landroidx/compose/ui/text/AnnotatedString;II)Ljava/util/List;
    .locals 7

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    return-object v0

    .line 926
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/text/AnnotatedString;->getSpanStylesOrNull$ui_text_release()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    if-nez p1, :cond_2

    .line 928
    invoke-virtual {p0}, Landroidx/compose/ui/text/AnnotatedString;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lt p2, p0, :cond_2

    return-object v1

    .line 1339
    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    .line 35
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 1340
    check-cast v3, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 931
    invoke-virtual {v3}, Landroidx/compose/ui/text/AnnotatedString$Range;->getStart()I

    move-result v4

    invoke-virtual {v3}, Landroidx/compose/ui/text/AnnotatedString$Range;->getEnd()I

    move-result v5

    invoke-static {p1, p2, v4, v5}, Landroidx/compose/ui/text/AnnotatedStringKt;->intersect(IIII)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 932
    new-instance v4, Landroidx/compose/ui/text/AnnotatedString$Range;

    invoke-virtual {v3}, Landroidx/compose/ui/text/AnnotatedString$Range;->getItem()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3}, Landroidx/compose/ui/text/AnnotatedString$Range;->getStart()I

    move-result v6

    invoke-static {v6, p1, p2}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v6

    sub-int/2addr v6, p1

    invoke-virtual {v3}, Landroidx/compose/ui/text/AnnotatedString$Range;->getEnd()I

    move-result v3

    invoke-static {v3, p1, p2}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v3

    sub-int/2addr v3, p1

    invoke-direct {v4, v5, v6, v3}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(Ljava/lang/Object;II)V

    .line 1340
    invoke-interface {p0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object p0
.end method

.method public static final intersect(IIII)Z
    .locals 2

    .line 1320
    invoke-static {p0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 1321
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/text/AnnotatedStringKt;->contains(IIII)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1322
    invoke-static {p2, p3, p0, p1}, Landroidx/compose/ui/text/AnnotatedStringKt;->contains(IIII)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static final normalizedParagraphStyles(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/ParagraphStyle;)Ljava/util/List;
    .locals 10

    .line 893
    invoke-virtual {p0}, Landroidx/compose/ui/text/AnnotatedString;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 894
    invoke-virtual {p0}, Landroidx/compose/ui/text/AnnotatedString;->getParagraphStylesOrNull$ui_text_release()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    .line 897
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 34
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v2, :cond_2

    .line 35
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 36
    check-cast v6, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 898
    invoke-virtual {v6}, Landroidx/compose/ui/text/AnnotatedString$Range;->component1()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/text/ParagraphStyle;

    invoke-virtual {v6}, Landroidx/compose/ui/text/AnnotatedString$Range;->component2()I

    move-result v8

    invoke-virtual {v6}, Landroidx/compose/ui/text/AnnotatedString$Range;->component3()I

    move-result v6

    if-eq v8, v5, :cond_1

    .line 900
    new-instance v9, Landroidx/compose/ui/text/AnnotatedString$Range;

    invoke-direct {v9, p1, v5, v8}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(Ljava/lang/Object;II)V

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 902
    :cond_1
    new-instance v5, Landroidx/compose/ui/text/AnnotatedString$Range;

    invoke-virtual {p1, v7}, Landroidx/compose/ui/text/ParagraphStyle;->merge(Landroidx/compose/ui/text/ParagraphStyle;)Landroidx/compose/ui/text/ParagraphStyle;

    move-result-object v7

    invoke-direct {v5, v7, v8, v6}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(Ljava/lang/Object;II)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    move v5, v6

    goto :goto_0

    :cond_2
    if-eq v5, v0, :cond_3

    .line 906
    new-instance p0, Landroidx/compose/ui/text/AnnotatedString$Range;

    invoke-direct {p0, p1, v5, v0}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(Ljava/lang/Object;II)V

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 910
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 911
    new-instance p0, Landroidx/compose/ui/text/AnnotatedString$Range;

    invoke-direct {p0, p1, v3, v3}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(Ljava/lang/Object;II)V

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v1
.end method

.method private static final substringWithoutParagraphStyles(Landroidx/compose/ui/text/AnnotatedString;II)Landroidx/compose/ui/text/AnnotatedString;
    .locals 3

    .line 995
    new-instance v0, Landroidx/compose/ui/text/AnnotatedString;

    if-eq p1, p2, :cond_0

    .line 996
    invoke-virtual {p0}, Landroidx/compose/ui/text/AnnotatedString;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 997
    :goto_0
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/text/AnnotatedStringKt;->getLocalSpanStyles(Landroidx/compose/ui/text/AnnotatedString;II)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    .line 995
    :cond_1
    invoke-direct {v0, v1, p0}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method
