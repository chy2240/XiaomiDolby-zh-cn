.class public final Landroidx/compose/ui/text/android/selection/Api34SegmentFinder$toAndroidSegmentFinder$1;
.super Landroid/text/SegmentFinder;
.source "SegmentFinder.android.kt"


# instance fields
.field final synthetic $this_toAndroidSegmentFinder:Landroidx/compose/ui/text/android/selection/SegmentFinder;


# direct methods
.method constructor <init>(Landroidx/compose/ui/text/android/selection/SegmentFinder;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/text/android/selection/Api34SegmentFinder$toAndroidSegmentFinder$1;->$this_toAndroidSegmentFinder:Landroidx/compose/ui/text/android/selection/SegmentFinder;

    .line 225
    invoke-direct {p0}, Landroid/text/SegmentFinder;-><init>()V

    return-void
.end method


# virtual methods
.method public nextEndBoundary(I)I
    .locals 0

    .line 236
    iget-object p0, p0, Landroidx/compose/ui/text/android/selection/Api34SegmentFinder$toAndroidSegmentFinder$1;->$this_toAndroidSegmentFinder:Landroidx/compose/ui/text/android/selection/SegmentFinder;

    invoke-interface {p0, p1}, Landroidx/compose/ui/text/android/selection/SegmentFinder;->nextEndBoundary(I)I

    move-result p0

    return p0
.end method

.method public nextStartBoundary(I)I
    .locals 0

    .line 233
    iget-object p0, p0, Landroidx/compose/ui/text/android/selection/Api34SegmentFinder$toAndroidSegmentFinder$1;->$this_toAndroidSegmentFinder:Landroidx/compose/ui/text/android/selection/SegmentFinder;

    invoke-interface {p0, p1}, Landroidx/compose/ui/text/android/selection/SegmentFinder;->nextStartBoundary(I)I

    move-result p0

    return p0
.end method

.method public previousEndBoundary(I)I
    .locals 0

    .line 230
    iget-object p0, p0, Landroidx/compose/ui/text/android/selection/Api34SegmentFinder$toAndroidSegmentFinder$1;->$this_toAndroidSegmentFinder:Landroidx/compose/ui/text/android/selection/SegmentFinder;

    invoke-interface {p0, p1}, Landroidx/compose/ui/text/android/selection/SegmentFinder;->previousEndBoundary(I)I

    move-result p0

    return p0
.end method

.method public previousStartBoundary(I)I
    .locals 0

    .line 227
    iget-object p0, p0, Landroidx/compose/ui/text/android/selection/Api34SegmentFinder$toAndroidSegmentFinder$1;->$this_toAndroidSegmentFinder:Landroidx/compose/ui/text/android/selection/SegmentFinder;

    invoke-interface {p0, p1}, Landroidx/compose/ui/text/android/selection/SegmentFinder;->previousStartBoundary(I)I

    move-result p0

    return p0
.end method
