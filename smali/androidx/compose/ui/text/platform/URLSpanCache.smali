.class public final Landroidx/compose/ui/text/platform/URLSpanCache;
.super Ljava/lang/Object;
.source "URLSpanCache.android.kt"


# instance fields
.field private final linkSpansWithListenerByAnnotation:Ljava/util/WeakHashMap;

.field private final spansByAnnotation:Ljava/util/WeakHashMap;

.field private final urlSpansByAnnotation:Ljava/util/WeakHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroidx/compose/ui/text/platform/URLSpanCache;->spansByAnnotation:Ljava/util/WeakHashMap;

    .line 53
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroidx/compose/ui/text/platform/URLSpanCache;->urlSpansByAnnotation:Ljava/util/WeakHashMap;

    .line 55
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroidx/compose/ui/text/platform/URLSpanCache;->linkSpansWithListenerByAnnotation:Ljava/util/WeakHashMap;

    return-void
.end method


# virtual methods
.method public final toClickableSpan(Landroidx/compose/ui/text/AnnotatedString$Range;)Landroid/text/style/ClickableSpan;
    .locals 2

    .line 70
    iget-object p0, p0, Landroidx/compose/ui/text/platform/URLSpanCache;->linkSpansWithListenerByAnnotation:Ljava/util/WeakHashMap;

    .line 95
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Landroidx/compose/ui/text/platform/ComposeClickableSpan;

    invoke-virtual {p1}, Landroidx/compose/ui/text/AnnotatedString$Range;->getItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/text/LinkAnnotation;

    invoke-direct {v0, v1}, Landroidx/compose/ui/text/platform/ComposeClickableSpan;-><init>(Landroidx/compose/ui/text/LinkAnnotation;)V

    .line 98
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    :cond_0
    check-cast v0, Landroid/text/style/ClickableSpan;

    return-object v0
.end method

.method public final toURLSpan(Landroidx/compose/ui/text/AnnotatedString$Range;)Landroid/text/style/URLSpan;
    .locals 2

    .line 63
    iget-object p0, p0, Landroidx/compose/ui/text/platform/URLSpanCache;->urlSpansByAnnotation:Ljava/util/WeakHashMap;

    .line 88
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Landroid/text/style/URLSpan;

    invoke-virtual {p1}, Landroidx/compose/ui/text/AnnotatedString$Range;->getItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/text/LinkAnnotation$Url;

    invoke-virtual {v1}, Landroidx/compose/ui/text/LinkAnnotation$Url;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :cond_0
    check-cast v0, Landroid/text/style/URLSpan;

    return-object v0
.end method

.method public final toURLSpan(Landroidx/compose/ui/text/UrlAnnotation;)Landroid/text/style/URLSpan;
    .locals 2

    .line 59
    iget-object p0, p0, Landroidx/compose/ui/text/platform/URLSpanCache;->spansByAnnotation:Ljava/util/WeakHashMap;

    .line 81
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Landroid/text/style/URLSpan;

    invoke-virtual {p1}, Landroidx/compose/ui/text/UrlAnnotation;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    :cond_0
    check-cast v0, Landroid/text/style/URLSpan;

    return-object v0
.end method
