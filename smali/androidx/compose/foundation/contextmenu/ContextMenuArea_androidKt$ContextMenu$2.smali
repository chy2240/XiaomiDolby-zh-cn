.class final Landroidx/compose/foundation/contextmenu/ContextMenuArea_androidKt$ContextMenu$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ContextMenuArea.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic $$changed:I

.field final synthetic $$default:I

.field final synthetic $contextMenuBuilderBlock:Lkotlin/jvm/functions/Function1;

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $onDismiss:Lkotlin/jvm/functions/Function0;

.field final synthetic $state:Landroidx/compose/foundation/contextmenu/ContextMenuState;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/contextmenu/ContextMenuState;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;II)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/foundation/contextmenu/ContextMenuArea_androidKt$ContextMenu$2;->$state:Landroidx/compose/foundation/contextmenu/ContextMenuState;

    iput-object p2, p0, Landroidx/compose/foundation/contextmenu/ContextMenuArea_androidKt$ContextMenu$2;->$onDismiss:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Landroidx/compose/foundation/contextmenu/ContextMenuArea_androidKt$ContextMenu$2;->$modifier:Landroidx/compose/ui/Modifier;

    iput-object p4, p0, Landroidx/compose/foundation/contextmenu/ContextMenuArea_androidKt$ContextMenu$2;->$contextMenuBuilderBlock:Lkotlin/jvm/functions/Function1;

    iput p5, p0, Landroidx/compose/foundation/contextmenu/ContextMenuArea_androidKt$ContextMenu$2;->$$changed:I

    iput p6, p0, Landroidx/compose/foundation/contextmenu/ContextMenuArea_androidKt$ContextMenu$2;->$$default:I

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

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/contextmenu/ContextMenuArea_androidKt$ContextMenu$2;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 7

    .line 0
    iget-object v0, p0, Landroidx/compose/foundation/contextmenu/ContextMenuArea_androidKt$ContextMenu$2;->$state:Landroidx/compose/foundation/contextmenu/ContextMenuState;

    iget-object v1, p0, Landroidx/compose/foundation/contextmenu/ContextMenuArea_androidKt$ContextMenu$2;->$onDismiss:Lkotlin/jvm/functions/Function0;

    iget-object v2, p0, Landroidx/compose/foundation/contextmenu/ContextMenuArea_androidKt$ContextMenu$2;->$modifier:Landroidx/compose/ui/Modifier;

    iget-object v3, p0, Landroidx/compose/foundation/contextmenu/ContextMenuArea_androidKt$ContextMenu$2;->$contextMenuBuilderBlock:Lkotlin/jvm/functions/Function1;

    iget p2, p0, Landroidx/compose/foundation/contextmenu/ContextMenuArea_androidKt$ContextMenu$2;->$$changed:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v5

    iget v6, p0, Landroidx/compose/foundation/contextmenu/ContextMenuArea_androidKt$ContextMenu$2;->$$default:I

    move-object v4, p1

    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/contextmenu/ContextMenuArea_androidKt;->ContextMenu(Landroidx/compose/foundation/contextmenu/ContextMenuState;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    return-void
.end method
