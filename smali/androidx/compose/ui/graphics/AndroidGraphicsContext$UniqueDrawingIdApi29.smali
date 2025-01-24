.class final Landroidx/compose/ui/graphics/AndroidGraphicsContext$UniqueDrawingIdApi29;
.super Ljava/lang/Object;
.source "AndroidGraphicsContext.android.kt"


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/graphics/AndroidGraphicsContext$UniqueDrawingIdApi29;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/ui/graphics/AndroidGraphicsContext$UniqueDrawingIdApi29;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/AndroidGraphicsContext$UniqueDrawingIdApi29;-><init>()V

    sput-object v0, Landroidx/compose/ui/graphics/AndroidGraphicsContext$UniqueDrawingIdApi29;->INSTANCE:Landroidx/compose/ui/graphics/AndroidGraphicsContext$UniqueDrawingIdApi29;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getUniqueDrawingId(Landroid/view/View;)J
    .locals 2

    .line 211
    invoke-virtual {p0}, Landroid/view/View;->getUniqueDrawingId()J

    move-result-wide v0

    return-wide v0
.end method
