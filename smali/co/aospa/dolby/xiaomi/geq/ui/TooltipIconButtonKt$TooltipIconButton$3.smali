.class final Lco/aospa/dolby/xiaomi/geq/ui/TooltipIconButtonKt$TooltipIconButton$3;
.super Lkotlin/jvm/internal/Lambda;
.source "TooltipIconButton.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic $$changed:I

.field final synthetic $icon:Landroidx/compose/ui/graphics/vector/ImageVector;

.field final synthetic $onClick:Lkotlin/jvm/functions/Function0;

.field final synthetic $text:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)V
    .locals 0

    .line 0
    iput-object p1, p0, Lco/aospa/dolby/xiaomi/geq/ui/TooltipIconButtonKt$TooltipIconButton$3;->$icon:Landroidx/compose/ui/graphics/vector/ImageVector;

    iput-object p2, p0, Lco/aospa/dolby/xiaomi/geq/ui/TooltipIconButtonKt$TooltipIconButton$3;->$text:Ljava/lang/String;

    iput-object p3, p0, Lco/aospa/dolby/xiaomi/geq/ui/TooltipIconButtonKt$TooltipIconButton$3;->$onClick:Lkotlin/jvm/functions/Function0;

    iput p4, p0, Lco/aospa/dolby/xiaomi/geq/ui/TooltipIconButtonKt$TooltipIconButton$3;->$$changed:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lco/aospa/dolby/xiaomi/geq/ui/TooltipIconButtonKt$TooltipIconButton$3;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 2

    .line 0
    iget-object p2, p0, Lco/aospa/dolby/xiaomi/geq/ui/TooltipIconButtonKt$TooltipIconButton$3;->$icon:Landroidx/compose/ui/graphics/vector/ImageVector;

    iget-object v0, p0, Lco/aospa/dolby/xiaomi/geq/ui/TooltipIconButtonKt$TooltipIconButton$3;->$text:Ljava/lang/String;

    iget-object v1, p0, Lco/aospa/dolby/xiaomi/geq/ui/TooltipIconButtonKt$TooltipIconButton$3;->$onClick:Lkotlin/jvm/functions/Function0;

    iget p0, p0, Lco/aospa/dolby/xiaomi/geq/ui/TooltipIconButtonKt$TooltipIconButton$3;->$$changed:I

    or-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result p0

    invoke-static {p2, v0, v1, p1, p0}, Lco/aospa/dolby/xiaomi/geq/ui/TooltipIconButtonKt;->TooltipIconButton(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    return-void
.end method
