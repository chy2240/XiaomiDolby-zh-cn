.class public final Landroidx/compose/ui/platform/AccessibilityIterators$ParagraphTextSegmentIterator$Companion;
.super Ljava/lang/Object;
.source "AccessibilityIterators.android.kt"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/compose/ui/platform/AccessibilityIterators$ParagraphTextSegmentIterator$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Landroidx/compose/ui/platform/AccessibilityIterators$ParagraphTextSegmentIterator;
    .locals 1

    .line 265
    invoke-static {}, Landroidx/compose/ui/platform/AccessibilityIterators$ParagraphTextSegmentIterator;->access$getInstance$cp()Landroidx/compose/ui/platform/AccessibilityIterators$ParagraphTextSegmentIterator;

    move-result-object p0

    if-nez p0, :cond_0

    .line 266
    new-instance p0, Landroidx/compose/ui/platform/AccessibilityIterators$ParagraphTextSegmentIterator;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/AccessibilityIterators$ParagraphTextSegmentIterator;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p0}, Landroidx/compose/ui/platform/AccessibilityIterators$ParagraphTextSegmentIterator;->access$setInstance$cp(Landroidx/compose/ui/platform/AccessibilityIterators$ParagraphTextSegmentIterator;)V

    .line 268
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/AccessibilityIterators$ParagraphTextSegmentIterator;->access$getInstance$cp()Landroidx/compose/ui/platform/AccessibilityIterators$ParagraphTextSegmentIterator;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type androidx.compose.ui.platform.AccessibilityIterators.ParagraphTextSegmentIterator"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
