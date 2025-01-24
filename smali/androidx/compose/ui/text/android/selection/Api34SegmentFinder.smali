.class public final Landroidx/compose/ui/text/android/selection/Api34SegmentFinder;
.super Ljava/lang/Object;
.source "SegmentFinder.android.kt"


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/text/android/selection/Api34SegmentFinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/ui/text/android/selection/Api34SegmentFinder;

    invoke-direct {v0}, Landroidx/compose/ui/text/android/selection/Api34SegmentFinder;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/android/selection/Api34SegmentFinder;->INSTANCE:Landroidx/compose/ui/text/android/selection/Api34SegmentFinder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final toAndroidSegmentFinder$ui_text_release(Landroidx/compose/ui/text/android/selection/SegmentFinder;)Landroid/text/SegmentFinder;
    .locals 0

    .line 225
    new-instance p0, Landroidx/compose/ui/text/android/selection/Api34SegmentFinder$toAndroidSegmentFinder$1;

    invoke-direct {p0, p1}, Landroidx/compose/ui/text/android/selection/Api34SegmentFinder$toAndroidSegmentFinder$1;-><init>(Landroidx/compose/ui/text/android/selection/SegmentFinder;)V

    return-object p0
.end method
