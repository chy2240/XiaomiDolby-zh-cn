.class public final Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl$Companion;
.super Ljava/lang/Object;
.source "AndroidGraphicsLayer.android.kt"


# static fields
.field static final synthetic $$INSTANCE:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl$Companion;

.field private static final DefaultDrawBlock:Lkotlin/jvm/functions/Function1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl$Companion;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl$Companion;-><init>()V

    sput-object v0, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl$Companion;->$$INSTANCE:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl$Companion;

    .line 950
    sget-object v0, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl$Companion$DefaultDrawBlock$1;->INSTANCE:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl$Companion$DefaultDrawBlock$1;

    sput-object v0, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl$Companion;->DefaultDrawBlock:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 949
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
