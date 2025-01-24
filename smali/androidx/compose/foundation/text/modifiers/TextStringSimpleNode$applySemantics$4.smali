.class final Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$applySemantics$4;
.super Lkotlin/jvm/internal/Lambda;
.source "TextStringSimpleNode.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$applySemantics$4;->this$0:Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Boolean;
    .locals 1

    .line 325
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$applySemantics$4;->this$0:Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;

    invoke-static {v0}, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->access$clearSubstitution(Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;)V

    .line 327
    iget-object p0, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$applySemantics$4;->this$0:Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;

    invoke-static {p0}, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->access$invalidateForTranslate(Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;)V

    .line 329
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 324
    invoke-virtual {p0}, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$applySemantics$4;->invoke()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
