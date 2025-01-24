.class public final Landroidx/compose/ui/text/AnnotatedString$Builder;
.super Ljava/lang/Object;
.source "AnnotatedString.kt"

# interfaces
.implements Ljava/lang/Appendable;


# instance fields
.field private final annotations:Ljava/util/List;

.field private final styleStack:Ljava/util/List;

.field private final text:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Landroidx/compose/ui/text/AnnotatedString$Builder;->text:Ljava/lang/StringBuilder;

    .line 416
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/AnnotatedString$Builder;->styleStack:Ljava/util/List;

    .line 421
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/AnnotatedString$Builder;->annotations:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/16 p1, 0x10

    .line 379
    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/ui/text/AnnotatedString$Builder;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/text/AnnotatedString;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 429
    invoke-direct {p0, v2, v0, v1}, Landroidx/compose/ui/text/AnnotatedString$Builder;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 430
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/AnnotatedString$Builder;->append(Landroidx/compose/ui/text/AnnotatedString;)V

    return-void
.end method


# virtual methods
.method public final addStyle(Landroidx/compose/ui/text/SpanStyle;II)V
    .locals 8

    .line 555
    iget-object p0, p0, Landroidx/compose/ui/text/AnnotatedString$Builder;->annotations:Ljava/util/List;

    new-instance v7, Landroidx/compose/ui/text/AnnotatedString$Builder$MutableRange;

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, v7

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/text/AnnotatedString$Builder$MutableRange;-><init>(Ljava/lang/Object;IILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public append(C)Landroidx/compose/ui/text/AnnotatedString$Builder;
    .locals 1

    .line 504
    iget-object v0, p0, Landroidx/compose/ui/text/AnnotatedString$Builder;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Landroidx/compose/ui/text/AnnotatedString$Builder;
    .locals 1

    .line 470
    instance-of v0, p1, Landroidx/compose/ui/text/AnnotatedString;

    if-eqz v0, :cond_0

    .line 471
    check-cast p1, Landroidx/compose/ui/text/AnnotatedString;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/AnnotatedString$Builder;->append(Landroidx/compose/ui/text/AnnotatedString;)V

    goto :goto_0

    .line 473
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/text/AnnotatedString$Builder;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :goto_0
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Landroidx/compose/ui/text/AnnotatedString$Builder;
    .locals 1

    .line 493
    instance-of v0, p1, Landroidx/compose/ui/text/AnnotatedString;

    if-eqz v0, :cond_0

    .line 494
    check-cast p1, Landroidx/compose/ui/text/AnnotatedString;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/ui/text/AnnotatedString$Builder;->append(Landroidx/compose/ui/text/AnnotatedString;II)V

    goto :goto_0

    .line 496
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/text/AnnotatedString$Builder;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 0

    .line 379
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/AnnotatedString$Builder;->append(C)Landroidx/compose/ui/text/AnnotatedString$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 0

    .line 379
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/AnnotatedString$Builder;->append(Ljava/lang/CharSequence;)Landroidx/compose/ui/text/AnnotatedString$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 0

    .line 379
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/ui/text/AnnotatedString$Builder;->append(Ljava/lang/CharSequence;II)Landroidx/compose/ui/text/AnnotatedString$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final append(Landroidx/compose/ui/text/AnnotatedString;)V
    .locals 9

    .line 514
    iget-object v0, p0, Landroidx/compose/ui/text/AnnotatedString$Builder;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 515
    iget-object v1, p0, Landroidx/compose/ui/text/AnnotatedString$Builder;->text:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/compose/ui/text/AnnotatedString;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    invoke-virtual {p1}, Landroidx/compose/ui/text/AnnotatedString;->getAnnotations$ui_text_release()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 34
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 35
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 36
    check-cast v3, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 518
    iget-object v4, p0, Landroidx/compose/ui/text/AnnotatedString$Builder;->annotations:Ljava/util/List;

    new-instance v5, Landroidx/compose/ui/text/AnnotatedString$Builder$MutableRange;

    invoke-virtual {v3}, Landroidx/compose/ui/text/AnnotatedString$Range;->getItem()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3}, Landroidx/compose/ui/text/AnnotatedString$Range;->getStart()I

    move-result v7

    add-int/2addr v7, v0

    invoke-virtual {v3}, Landroidx/compose/ui/text/AnnotatedString$Range;->getEnd()I

    move-result v8

    add-int/2addr v8, v0

    invoke-virtual {v3}, Landroidx/compose/ui/text/AnnotatedString$Range;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v6, v7, v8, v3}, Landroidx/compose/ui/text/AnnotatedString$Builder$MutableRange;-><init>(Ljava/lang/Object;IILjava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final append(Landroidx/compose/ui/text/AnnotatedString;II)V
    .locals 7

    .line 532
    iget-object v0, p0, Landroidx/compose/ui/text/AnnotatedString$Builder;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 533
    iget-object v1, p0, Landroidx/compose/ui/text/AnnotatedString$Builder;->text:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/compose/ui/text/AnnotatedString;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 535
    invoke-static {p1, p2, p3}, Landroidx/compose/ui/text/AnnotatedStringKt;->access$getLocalAnnotations(Landroidx/compose/ui/text/AnnotatedString;II)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 34
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p2

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_0

    .line 35
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 36
    check-cast v1, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 536
    iget-object v2, p0, Landroidx/compose/ui/text/AnnotatedString$Builder;->annotations:Ljava/util/List;

    .line 537
    new-instance v3, Landroidx/compose/ui/text/AnnotatedString$Builder$MutableRange;

    .line 538
    invoke-virtual {v1}, Landroidx/compose/ui/text/AnnotatedString$Range;->getItem()Ljava/lang/Object;

    move-result-object v4

    .line 539
    invoke-virtual {v1}, Landroidx/compose/ui/text/AnnotatedString$Range;->getStart()I

    move-result v5

    add-int/2addr v5, v0

    .line 540
    invoke-virtual {v1}, Landroidx/compose/ui/text/AnnotatedString$Range;->getEnd()I

    move-result v6

    add-int/2addr v6, v0

    .line 541
    invoke-virtual {v1}, Landroidx/compose/ui/text/AnnotatedString$Range;->getTag()Ljava/lang/String;

    move-result-object v1

    .line 537
    invoke-direct {v3, v4, v5, v6, v1}, Landroidx/compose/ui/text/AnnotatedString$Builder$MutableRange;-><init>(Ljava/lang/Object;IILjava/lang/String;)V

    .line 536
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final toAnnotatedString()Landroidx/compose/ui/text/AnnotatedString;
    .locals 7

    .line 804
    iget-object v0, p0, Landroidx/compose/ui/text/AnnotatedString$Builder;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 805
    iget-object v1, p0, Landroidx/compose/ui/text/AnnotatedString$Builder;->annotations:Ljava/util/List;

    .line 150
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    .line 35
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 151
    check-cast v5, Landroidx/compose/ui/text/AnnotatedString$Builder$MutableRange;

    .line 805
    iget-object v6, p0, Landroidx/compose/ui/text/AnnotatedString$Builder;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Landroidx/compose/ui/text/AnnotatedString$Builder$MutableRange;->toRange(I)Landroidx/compose/ui/text/AnnotatedString$Range;

    move-result-object v5

    .line 151
    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 803
    :cond_0
    new-instance p0, Landroidx/compose/ui/text/AnnotatedString;

    invoke-direct {p0, v0, v2}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object p0
.end method
