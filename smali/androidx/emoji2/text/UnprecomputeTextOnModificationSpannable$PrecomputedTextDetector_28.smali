.class Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable$PrecomputedTextDetector_28;
.super Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable$PrecomputedTextDetector;
.source "UnprecomputeTextOnModificationSpannable.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 173
    invoke-direct {p0}, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable$PrecomputedTextDetector;-><init>()V

    return-void
.end method


# virtual methods
.method isPrecomputedText(Ljava/lang/CharSequence;)Z
    .locals 0

    .line 177
    instance-of p0, p1, Landroid/text/PrecomputedText;

    return p0
.end method
