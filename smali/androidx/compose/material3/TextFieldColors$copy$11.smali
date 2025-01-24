.class final Landroidx/compose/material3/TextFieldColors$copy$11;
.super Lkotlin/jvm/internal/Lambda;
.source "TextFieldDefaults.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Landroidx/compose/material3/TextFieldColors;


# direct methods
.method constructor <init>(Landroidx/compose/material3/TextFieldColors;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/material3/TextFieldColors$copy$11;->this$0:Landroidx/compose/material3/TextFieldColors;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/compose/foundation/text/selection/TextSelectionColors;
    .locals 0

    .line 1656
    iget-object p0, p0, Landroidx/compose/material3/TextFieldColors$copy$11;->this$0:Landroidx/compose/material3/TextFieldColors;

    invoke-virtual {p0}, Landroidx/compose/material3/TextFieldColors;->getTextSelectionColors()Landroidx/compose/foundation/text/selection/TextSelectionColors;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1656
    invoke-virtual {p0}, Landroidx/compose/material3/TextFieldColors$copy$11;->invoke()Landroidx/compose/foundation/text/selection/TextSelectionColors;

    move-result-object p0

    return-object p0
.end method
