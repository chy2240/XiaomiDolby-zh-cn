.class final Landroidx/compose/ui/text/android/CanvasCompatQ;
.super Ljava/lang/Object;
.source "TextAndroidCanvas.android.kt"


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/text/android/CanvasCompatQ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/ui/text/android/CanvasCompatQ;

    invoke-direct {v0}, Landroidx/compose/ui/text/android/CanvasCompatQ;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/android/CanvasCompatQ;->INSTANCE:Landroidx/compose/ui/text/android/CanvasCompatQ;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 838
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final disableZ(Landroid/graphics/Canvas;)V
    .locals 0

    .line 846
    invoke-virtual {p1}, Landroid/graphics/Canvas;->disableZ()V

    return-void
.end method

.method public final drawColor(Landroid/graphics/Canvas;ILandroid/graphics/BlendMode;)V
    .locals 0

    .line 854
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/BlendMode;)V

    return-void
.end method

.method public final drawColor(Landroid/graphics/Canvas;J)V
    .locals 0

    .line 850
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawColor(J)V

    return-void
.end method

.method public final drawColor(Landroid/graphics/Canvas;JLandroid/graphics/BlendMode;)V
    .locals 0

    .line 858
    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Canvas;->drawColor(JLandroid/graphics/BlendMode;)V

    return-void
.end method

.method public final drawDoubleRoundRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFLandroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    .locals 0

    .line 871
    invoke-virtual/range {p1 .. p8}, Landroid/graphics/Canvas;->drawDoubleRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final drawDoubleRoundRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;[FLandroid/graphics/RectF;[FLandroid/graphics/Paint;)V
    .locals 0

    .line 882
    invoke-virtual/range {p1 .. p6}, Landroid/graphics/Canvas;->drawDoubleRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/RectF;[FLandroid/graphics/Paint;)V

    return-void
.end method

.method public final drawRenderNode(Landroid/graphics/Canvas;Landroid/graphics/RenderNode;)V
    .locals 0

    .line 901
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    return-void
.end method

.method public final drawTextRun(Landroid/graphics/Canvas;Landroid/graphics/text/MeasuredText;IIIIFFZLandroid/graphics/Paint;)V
    .locals 0

    .line 897
    invoke-virtual/range {p1 .. p10}, Landroid/graphics/Canvas;->drawTextRun(Landroid/graphics/text/MeasuredText;IIIIFFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public final enableZ(Landroid/graphics/Canvas;)V
    .locals 0

    .line 842
    invoke-virtual {p1}, Landroid/graphics/Canvas;->enableZ()V

    return-void
.end method
