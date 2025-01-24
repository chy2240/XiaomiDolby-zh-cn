.class final Lco/aospa/dolby/xiaomi/geq/ui/TooltipIconButtonKt$TooltipIconButton$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TooltipIconButton.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic $icon:Landroidx/compose/ui/graphics/vector/ImageVector;

.field final synthetic $text:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lco/aospa/dolby/xiaomi/geq/ui/TooltipIconButtonKt$TooltipIconButton$2$1;->$icon:Landroidx/compose/ui/graphics/vector/ImageVector;

    iput-object p2, p0, Lco/aospa/dolby/xiaomi/geq/ui/TooltipIconButtonKt$TooltipIconButton$2$1;->$text:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 38
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lco/aospa/dolby/xiaomi/geq/ui/TooltipIconButtonKt$TooltipIconButton$2$1;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 11

    and-int/lit8 v0, p2, 0xb

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 39
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_1

    .line 39
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    const-string v1, "co.aospa.dolby.xiaomi.geq.ui.TooltipIconButton.<anonymous>.<anonymous> (TooltipIconButton.kt:38)"

    const v2, 0x479bec7a

    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 40
    :cond_2
    iget-object v3, p0, Lco/aospa/dolby/xiaomi/geq/ui/TooltipIconButtonKt$TooltipIconButton$2$1;->$icon:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 41
    iget-object v4, p0, Lco/aospa/dolby/xiaomi/geq/ui/TooltipIconButtonKt$TooltipIconButton$2$1;->$text:Ljava/lang/String;

    .line 42
    sget-object p0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    const/16 p2, 0x18

    int-to-float p2, p2

    .line 109
    invoke-static {p2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p2

    .line 42
    invoke-static {p0, p2}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v5

    const/16 v9, 0x180

    const/16 v10, 0x8

    const-wide/16 v6, 0x0

    move-object v8, p1

    .line 39
    invoke-static/range {v3 .. v10}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    :goto_1
    return-void
.end method
