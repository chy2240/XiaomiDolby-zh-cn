.class Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper$Impl29;
.super Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper$Impl23;
.source "AppCompatTextViewAutoSizeHelper.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 132
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper$Impl23;-><init>()V

    return-void
.end method


# virtual methods
.method computeAndSetTextDirection(Landroid/text/StaticLayout$Builder;Landroid/widget/TextView;)V
    .locals 0

    .line 142
    invoke-virtual {p2}, Landroid/widget/TextView;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    return-void
.end method

.method isHorizontallyScrollable(Landroid/widget/TextView;)Z
    .locals 0

    .line 136
    invoke-virtual {p1}, Landroid/widget/TextView;->isHorizontallyScrollable()Z

    move-result p0

    return p0
.end method
