.class final Landroidx/compose/ui/platform/AndroidTextToolbar$textActionModeCallback$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AndroidTextToolbar.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Landroidx/compose/ui/platform/AndroidTextToolbar;


# direct methods
.method constructor <init>(Landroidx/compose/ui/platform/AndroidTextToolbar;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidTextToolbar$textActionModeCallback$1;->this$0:Landroidx/compose/ui/platform/AndroidTextToolbar;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 32
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidTextToolbar$textActionModeCallback$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 1

    .line 32
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidTextToolbar$textActionModeCallback$1;->this$0:Landroidx/compose/ui/platform/AndroidTextToolbar;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroidx/compose/ui/platform/AndroidTextToolbar;->access$setActionMode$p(Landroidx/compose/ui/platform/AndroidTextToolbar;Landroid/view/ActionMode;)V

    return-void
.end method
