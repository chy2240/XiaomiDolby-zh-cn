.class public final Landroidx/compose/ui/text/android/AndroidLayoutApi34;
.super Ljava/lang/Object;
.source "TextLayout.android.kt"


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/text/android/AndroidLayoutApi34;


# direct methods
.method public static synthetic $r8$lambda$8Qf6Vtl1-pxlFHiMZeMUbAdi_ww(Lkotlin/jvm/functions/Function2;Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/text/android/AndroidLayoutApi34;->getRangeForRect$lambda$0(Lkotlin/jvm/functions/Function2;Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/ui/text/android/AndroidLayoutApi34;

    invoke-direct {v0}, Landroidx/compose/ui/text/android/AndroidLayoutApi34;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/android/AndroidLayoutApi34;->INSTANCE:Landroidx/compose/ui/text/android/AndroidLayoutApi34;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final getRangeForRect$lambda$0(Lkotlin/jvm/functions/Function2;Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 0

    .line 1117
    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final getRangeForRect$ui_text_release(Landroidx/compose/ui/text/android/TextLayout;Landroid/graphics/RectF;ILkotlin/jvm/functions/Function2;)[I
    .locals 2

    const/4 p0, 0x1

    if-ne p3, p0, :cond_0

    .line 1113
    sget-object p0, Landroidx/compose/ui/text/android/selection/Api34SegmentFinder;->INSTANCE:Landroidx/compose/ui/text/android/selection/Api34SegmentFinder;

    new-instance p3, Landroidx/compose/ui/text/android/selection/WordSegmentFinder;

    invoke-virtual {p1}, Landroidx/compose/ui/text/android/TextLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/compose/ui/text/android/TextLayout;->getWordIterator()Landroidx/compose/ui/text/android/selection/WordIterator;

    move-result-object v1

    invoke-direct {p3, v0, v1}, Landroidx/compose/ui/text/android/selection/WordSegmentFinder;-><init>(Ljava/lang/CharSequence;Landroidx/compose/ui/text/android/selection/WordIterator;)V

    invoke-virtual {p0, p3}, Landroidx/compose/ui/text/android/selection/Api34SegmentFinder;->toAndroidSegmentFinder$ui_text_release(Landroidx/compose/ui/text/android/selection/SegmentFinder;)Landroid/text/SegmentFinder;

    move-result-object p0

    goto :goto_0

    .line 1114
    :cond_0
    new-instance p0, Landroid/text/GraphemeClusterSegmentFinder;

    invoke-virtual {p1}, Landroidx/compose/ui/text/android/TextLayout;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p1}, Landroidx/compose/ui/text/android/TextLayout;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Landroid/text/GraphemeClusterSegmentFinder;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;)V

    .line 1117
    :goto_0
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/TextLayout;->getLayout()Landroid/text/Layout;

    move-result-object p1

    new-instance p3, Landroidx/compose/ui/text/android/AndroidLayoutApi34$$ExternalSyntheticLambda0;

    invoke-direct {p3, p4}, Landroidx/compose/ui/text/android/AndroidLayoutApi34$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {p1, p2, p0, p3}, Landroid/text/Layout;->getRangeForRect(Landroid/graphics/RectF;Landroid/text/SegmentFinder;Landroid/text/Layout$TextInclusionStrategy;)[I

    move-result-object p0

    return-object p0
.end method
