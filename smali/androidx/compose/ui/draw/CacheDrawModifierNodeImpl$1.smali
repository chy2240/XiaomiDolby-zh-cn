.class final Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DrawModifier.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;


# direct methods
.method constructor <init>(Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl$1;->this$0:Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/compose/ui/graphics/GraphicsContext;
    .locals 0

    .line 222
    iget-object p0, p0, Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl$1;->this$0:Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;

    invoke-virtual {p0}, Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;->getGraphicsContext()Landroidx/compose/ui/graphics/GraphicsContext;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 222
    invoke-virtual {p0}, Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl$1;->invoke()Landroidx/compose/ui/graphics/GraphicsContext;

    move-result-object p0

    return-object p0
.end method
