.class final Landroidx/compose/ui/text/android/CanvasCompatO;
.super Ljava/lang/Object;
.source "TextAndroidCanvas.android.kt"


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/text/android/CanvasCompatO;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/ui/text/android/CanvasCompatO;

    invoke-direct {v0}, Landroidx/compose/ui/text/android/CanvasCompatO;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/android/CanvasCompatO;->INSTANCE:Landroidx/compose/ui/text/android/CanvasCompatO;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 814
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final clipOutPath(Landroid/graphics/Canvas;Landroid/graphics/Path;)Z
    .locals 0

    .line 834
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipOutPath(Landroid/graphics/Path;)Z

    move-result p0

    return p0
.end method

.method public final clipOutRect(Landroid/graphics/Canvas;FFFF)Z
    .locals 0

    .line 826
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->clipOutRect(FFFF)Z

    move-result p0

    return p0
.end method

.method public final clipOutRect(Landroid/graphics/Canvas;IIII)Z
    .locals 0

    .line 830
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->clipOutRect(IIII)Z

    move-result p0

    return p0
.end method

.method public final clipOutRect(Landroid/graphics/Canvas;Landroid/graphics/Rect;)Z
    .locals 0

    .line 822
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipOutRect(Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public final clipOutRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;)Z
    .locals 0

    .line 818
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipOutRect(Landroid/graphics/RectF;)Z

    move-result p0

    return p0
.end method
