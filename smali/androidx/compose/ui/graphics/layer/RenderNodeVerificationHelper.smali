.class public final Landroidx/compose/ui/graphics/layer/RenderNodeVerificationHelper;
.super Ljava/lang/Object;
.source "GraphicsLayerV29.android.kt"


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/graphics/layer/RenderNodeVerificationHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/ui/graphics/layer/RenderNodeVerificationHelper;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/layer/RenderNodeVerificationHelper;-><init>()V

    sput-object v0, Landroidx/compose/ui/graphics/layer/RenderNodeVerificationHelper;->INSTANCE:Landroidx/compose/ui/graphics/layer/RenderNodeVerificationHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final setRenderEffect(Landroid/graphics/RenderNode;Landroidx/compose/ui/graphics/RenderEffect;)V
    .locals 0

    const/4 p0, 0x0

    .line 294
    invoke-virtual {p1, p0}, Landroid/graphics/RenderNode;->setRenderEffect(Landroid/graphics/RenderEffect;)Z

    return-void
.end method
