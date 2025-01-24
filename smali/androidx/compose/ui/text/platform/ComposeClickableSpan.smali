.class final Landroidx/compose/ui/text/platform/ComposeClickableSpan;
.super Landroid/text/style/ClickableSpan;
.source "URLSpanCache.android.kt"


# instance fields
.field private final link:Landroidx/compose/ui/text/LinkAnnotation;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/text/LinkAnnotation;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/platform/ComposeClickableSpan;->link:Landroidx/compose/ui/text/LinkAnnotation;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 77
    iget-object p0, p0, Landroidx/compose/ui/text/platform/ComposeClickableSpan;->link:Landroidx/compose/ui/text/LinkAnnotation;

    invoke-virtual {p0}, Landroidx/compose/ui/text/LinkAnnotation;->getLinkInteractionListener()Landroidx/compose/ui/text/LinkInteractionListener;

    return-void
.end method
