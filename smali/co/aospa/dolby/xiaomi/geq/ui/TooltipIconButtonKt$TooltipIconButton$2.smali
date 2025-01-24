.class final Lco/aospa/dolby/xiaomi/geq/ui/TooltipIconButtonKt$TooltipIconButton$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TooltipIconButton.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic $icon:Landroidx/compose/ui/graphics/vector/ImageVector;

.field final synthetic $onClick:Lkotlin/jvm/functions/Function0;

.field final synthetic $text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lco/aospa/dolby/xiaomi/geq/ui/TooltipIconButtonKt$TooltipIconButton$2;->$onClick:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lco/aospa/dolby/xiaomi/geq/ui/TooltipIconButtonKt$TooltipIconButton$2;->$icon:Landroidx/compose/ui/graphics/vector/ImageVector;

    iput-object p3, p0, Lco/aospa/dolby/xiaomi/geq/ui/TooltipIconButtonKt$TooltipIconButton$2;->$text:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 35
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lco/aospa/dolby/xiaomi/geq/ui/TooltipIconButtonKt$TooltipIconButton$2;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 13

    and-int/lit8 v0, p2, 0xb

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 36
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    const-string v1, "co.aospa.dolby.xiaomi.geq.ui.TooltipIconButton.<anonymous> (TooltipIconButton.kt:35)"

    const v2, 0x372349d8

    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 37
    :cond_2
    iget-object v3, p0, Lco/aospa/dolby/xiaomi/geq/ui/TooltipIconButtonKt$TooltipIconButton$2;->$onClick:Lkotlin/jvm/functions/Function0;

    .line 38
    new-instance p2, Lco/aospa/dolby/xiaomi/geq/ui/TooltipIconButtonKt$TooltipIconButton$2$1;

    iget-object v0, p0, Lco/aospa/dolby/xiaomi/geq/ui/TooltipIconButtonKt$TooltipIconButton$2;->$icon:Landroidx/compose/ui/graphics/vector/ImageVector;

    iget-object p0, p0, Lco/aospa/dolby/xiaomi/geq/ui/TooltipIconButtonKt$TooltipIconButton$2;->$text:Ljava/lang/String;

    invoke-direct {p2, v0, p0}, Lco/aospa/dolby/xiaomi/geq/ui/TooltipIconButtonKt$TooltipIconButton$2$1;-><init>(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;)V

    const/16 p0, 0x36

    const v0, 0x479bec7a

    const/4 v1, 0x1

    invoke-static {v0, v1, p2, p1, p0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v9

    const/high16 v11, 0x180000

    const/16 v12, 0x3e

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v10, p1

    .line 36
    invoke-static/range {v3 .. v12}, Landroidx/compose/material3/IconButtonKt;->IconButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    :goto_1
    return-void
.end method
