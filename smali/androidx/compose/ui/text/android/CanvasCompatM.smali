.class final Landroidx/compose/ui/text/android/CanvasCompatM;
.super Ljava/lang/Object;
.source "TextAndroidCanvas.android.kt"


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/text/android/CanvasCompatM;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/ui/text/android/CanvasCompatM;

    invoke-direct {v0}, Landroidx/compose/ui/text/android/CanvasCompatM;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/android/CanvasCompatM;->INSTANCE:Landroidx/compose/ui/text/android/CanvasCompatM;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 780
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final drawTextRun(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;)V
    .locals 0

    .line 810
    invoke-virtual/range {p1 .. p10}, Landroid/graphics/Canvas;->drawTextRun(Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public final drawTextRun(Landroid/graphics/Canvas;[CIIIIFFZLandroid/graphics/Paint;)V
    .locals 0

    .line 795
    invoke-virtual/range {p1 .. p10}, Landroid/graphics/Canvas;->drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V

    return-void
.end method
