.class final Landroidx/compose/foundation/AbstractClickableNode$applySemantics$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Clickable.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Landroidx/compose/foundation/AbstractClickableNode;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/AbstractClickableNode;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/foundation/AbstractClickableNode$applySemantics$1;->this$0:Landroidx/compose/foundation/AbstractClickableNode;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Boolean;
    .locals 0

    .line 1303
    iget-object p0, p0, Landroidx/compose/foundation/AbstractClickableNode$applySemantics$1;->this$0:Landroidx/compose/foundation/AbstractClickableNode;

    invoke-virtual {p0}, Landroidx/compose/foundation/AbstractClickableNode;->getOnClick()Lkotlin/jvm/functions/Function0;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 1304
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1301
    invoke-virtual {p0}, Landroidx/compose/foundation/AbstractClickableNode$applySemantics$1;->invoke()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
