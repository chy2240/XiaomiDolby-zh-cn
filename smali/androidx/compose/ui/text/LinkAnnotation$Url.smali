.class public final Landroidx/compose/ui/text/LinkAnnotation$Url;
.super Landroidx/compose/ui/text/LinkAnnotation;
.source "LinkAnnotation.kt"


# instance fields
.field private final styles:Landroidx/compose/ui/text/TextLinkStyles;

.field private final url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/compose/ui/text/TextLinkStyles;Landroidx/compose/ui/text/LinkInteractionListener;)V
    .locals 0

    const/4 p3, 0x0

    .line 52
    invoke-direct {p0, p3}, Landroidx/compose/ui/text/LinkAnnotation;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 49
    iput-object p1, p0, Landroidx/compose/ui/text/LinkAnnotation$Url;->url:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Landroidx/compose/ui/text/LinkAnnotation$Url;->styles:Landroidx/compose/ui/text/TextLinkStyles;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/compose/ui/text/TextLinkStyles;Landroidx/compose/ui/text/LinkInteractionListener;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    .line 48
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/ui/text/LinkAnnotation$Url;-><init>(Ljava/lang/String;Landroidx/compose/ui/text/TextLinkStyles;Landroidx/compose/ui/text/LinkInteractionListener;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 64
    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/text/LinkAnnotation$Url;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 66
    :cond_1
    iget-object v1, p0, Landroidx/compose/ui/text/LinkAnnotation$Url;->url:Ljava/lang/String;

    check-cast p1, Landroidx/compose/ui/text/LinkAnnotation$Url;

    iget-object v3, p1, Landroidx/compose/ui/text/LinkAnnotation$Url;->url:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 67
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/ui/text/LinkAnnotation$Url;->getStyles()Landroidx/compose/ui/text/TextLinkStyles;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/compose/ui/text/LinkAnnotation$Url;->getStyles()Landroidx/compose/ui/text/TextLinkStyles;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 68
    :cond_3
    invoke-virtual {p0}, Landroidx/compose/ui/text/LinkAnnotation$Url;->getLinkInteractionListener()Landroidx/compose/ui/text/LinkInteractionListener;

    invoke-virtual {p1}, Landroidx/compose/ui/text/LinkAnnotation$Url;->getLinkInteractionListener()Landroidx/compose/ui/text/LinkInteractionListener;

    const/4 p0, 0x0

    invoke-static {p0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public getLinkInteractionListener()Landroidx/compose/ui/text/LinkInteractionListener;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getStyles()Landroidx/compose/ui/text/TextLinkStyles;
    .locals 0

    .line 50
    iget-object p0, p0, Landroidx/compose/ui/text/LinkAnnotation$Url;->styles:Landroidx/compose/ui/text/TextLinkStyles;

    return-object p0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Landroidx/compose/ui/text/LinkAnnotation$Url;->url:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    .line 74
    iget-object v0, p0, Landroidx/compose/ui/text/LinkAnnotation$Url;->url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 75
    invoke-virtual {p0}, Landroidx/compose/ui/text/LinkAnnotation$Url;->getStyles()Landroidx/compose/ui/text/TextLinkStyles;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/compose/ui/text/TextLinkStyles;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 76
    invoke-virtual {p0}, Landroidx/compose/ui/text/LinkAnnotation$Url;->getLinkInteractionListener()Landroidx/compose/ui/text/LinkInteractionListener;

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LinkAnnotation.Url(url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/compose/ui/text/LinkAnnotation$Url;->url:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
