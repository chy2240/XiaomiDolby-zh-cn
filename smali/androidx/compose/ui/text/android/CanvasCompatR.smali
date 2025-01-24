.class final Landroidx/compose/ui/text/android/CanvasCompatR;
.super Ljava/lang/Object;
.source "TextAndroidCanvas.android.kt"


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/text/android/CanvasCompatR;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/ui/text/android/CanvasCompatR;

    invoke-direct {v0}, Landroidx/compose/ui/text/android/CanvasCompatR;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/android/CanvasCompatR;->INSTANCE:Landroidx/compose/ui/text/android/CanvasCompatR;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 905
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final quickReject(Landroid/graphics/Canvas;FFFF)Z
    .locals 0

    .line 917
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->quickReject(FFFF)Z

    move-result p0

    return p0
.end method

.method public final quickReject(Landroid/graphics/Canvas;Landroid/graphics/Path;)Z
    .locals 0

    .line 913
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->quickReject(Landroid/graphics/Path;)Z

    move-result p0

    return p0
.end method

.method public final quickReject(Landroid/graphics/Canvas;Landroid/graphics/RectF;)Z
    .locals 0

    .line 909
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->quickReject(Landroid/graphics/RectF;)Z

    move-result p0

    return p0
.end method
