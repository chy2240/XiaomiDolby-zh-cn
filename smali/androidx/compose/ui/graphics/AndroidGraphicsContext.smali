.class final Landroidx/compose/ui/graphics/AndroidGraphicsContext;
.super Ljava/lang/Object;
.source "AndroidGraphicsContext.android.kt"

# interfaces
.implements Landroidx/compose/ui/graphics/GraphicsContext;


# static fields
.field public static final Companion:Landroidx/compose/ui/graphics/AndroidGraphicsContext$Companion;

.field private static isRenderNodeCompatible:Z


# instance fields
.field private final componentCallback:Landroid/content/ComponentCallbacks2;

.field private final lock:Ljava/lang/Object;

.field private final ownerView:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/graphics/AndroidGraphicsContext$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/AndroidGraphicsContext$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/graphics/AndroidGraphicsContext;->Companion:Landroidx/compose/ui/graphics/AndroidGraphicsContext$Companion;

    const/4 v0, 0x1

    .line 204
    sput-boolean v0, Landroidx/compose/ui/graphics/AndroidGraphicsContext;->isRenderNodeCompatible:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/graphics/AndroidGraphicsContext;->ownerView:Landroid/view/ViewGroup;

    .line 47
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/graphics/AndroidGraphicsContext;->lock:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 127
    iput-object p1, p0, Landroidx/compose/ui/graphics/AndroidGraphicsContext;->componentCallback:Landroid/content/ComponentCallbacks2;

    return-void
.end method

.method private final getUniqueDrawingId(Landroid/view/View;)J
    .locals 0

    .line 198
    invoke-static {p1}, Landroidx/compose/ui/graphics/AndroidGraphicsContext$UniqueDrawingIdApi29;->getUniqueDrawingId(Landroid/view/View;)J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public createGraphicsLayer()Landroidx/compose/ui/graphics/layer/GraphicsLayer;
    .locals 9

    .line 148
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidGraphicsContext;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 149
    :try_start_0
    iget-object v1, p0, Landroidx/compose/ui/graphics/AndroidGraphicsContext;->ownerView:Landroid/view/ViewGroup;

    invoke-direct {p0, v1}, Landroidx/compose/ui/graphics/AndroidGraphicsContext;->getUniqueDrawingId(Landroid/view/View;)J

    move-result-wide v3

    .line 152
    new-instance p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;-><init>(JLandroidx/compose/ui/graphics/CanvasHolder;Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 172
    new-instance v1, Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;-><init>(Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;Landroidx/compose/ui/graphics/layer/LayerManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public releaseGraphicsLayer(Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 0

    .line 181
    iget-object p0, p0, Landroidx/compose/ui/graphics/AndroidGraphicsContext;->lock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->release$ui_graphics_release()V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
