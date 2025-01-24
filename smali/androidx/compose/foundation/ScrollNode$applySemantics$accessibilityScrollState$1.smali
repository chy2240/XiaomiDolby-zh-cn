.class final Landroidx/compose/foundation/ScrollNode$applySemantics$accessibilityScrollState$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Scroll.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Landroidx/compose/foundation/ScrollNode;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/ScrollNode;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/foundation/ScrollNode$applySemantics$accessibilityScrollState$1;->this$0:Landroidx/compose/foundation/ScrollNode;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Float;
    .locals 0

    .line 430
    iget-object p0, p0, Landroidx/compose/foundation/ScrollNode$applySemantics$accessibilityScrollState$1;->this$0:Landroidx/compose/foundation/ScrollNode;

    invoke-virtual {p0}, Landroidx/compose/foundation/ScrollNode;->getState()Landroidx/compose/foundation/ScrollState;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/foundation/ScrollState;->getValue()I

    move-result p0

    int-to-float p0, p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 428
    invoke-virtual {p0}, Landroidx/compose/foundation/ScrollNode$applySemantics$accessibilityScrollState$1;->invoke()Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
