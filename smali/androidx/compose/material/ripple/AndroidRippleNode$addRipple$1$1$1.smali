.class final Landroidx/compose/material/ripple/AndroidRippleNode$addRipple$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Ripple.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Landroidx/compose/material/ripple/AndroidRippleNode;


# direct methods
.method constructor <init>(Landroidx/compose/material/ripple/AndroidRippleNode;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/material/ripple/AndroidRippleNode$addRipple$1$1$1;->this$0:Landroidx/compose/material/ripple/AndroidRippleNode;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 164
    invoke-virtual {p0}, Landroidx/compose/material/ripple/AndroidRippleNode$addRipple$1$1$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 0

    .line 171
    iget-object p0, p0, Landroidx/compose/material/ripple/AndroidRippleNode$addRipple$1$1$1;->this$0:Landroidx/compose/material/ripple/AndroidRippleNode;

    invoke-static {p0}, Landroidx/compose/ui/node/DrawModifierNodeKt;->invalidateDraw(Landroidx/compose/ui/node/DrawModifierNode;)V

    return-void
.end method
