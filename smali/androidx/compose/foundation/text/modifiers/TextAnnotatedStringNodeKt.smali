.class public abstract Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNodeKt;
.super Ljava/lang/Object;
.source "TextAnnotatedStringNode.kt"


# direct methods
.method public static final hasLinks(Landroidx/compose/ui/text/AnnotatedString;)Z
    .locals 2

    .line 581
    invoke-virtual {p0}, Landroidx/compose/ui/text/AnnotatedString;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroidx/compose/ui/text/AnnotatedString;->hasLinkAnnotations(II)Z

    move-result p0

    return p0
.end method
