.class final Landroidx/compose/material3/OutlinedTextFieldDefaults$DecorationBox$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TextFieldDefaults.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic $colors:Landroidx/compose/material3/TextFieldColors;

.field final synthetic $enabled:Z

.field final synthetic $interactionSource:Landroidx/compose/foundation/interaction/InteractionSource;

.field final synthetic $isError:Z


# direct methods
.method constructor <init>(ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/material3/TextFieldColors;)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Landroidx/compose/material3/OutlinedTextFieldDefaults$DecorationBox$1;->$enabled:Z

    iput-boolean p2, p0, Landroidx/compose/material3/OutlinedTextFieldDefaults$DecorationBox$1;->$isError:Z

    iput-object p3, p0, Landroidx/compose/material3/OutlinedTextFieldDefaults$DecorationBox$1;->$interactionSource:Landroidx/compose/foundation/interaction/InteractionSource;

    iput-object p4, p0, Landroidx/compose/material3/OutlinedTextFieldDefaults$DecorationBox$1;->$colors:Landroidx/compose/material3/TextFieldColors;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1158
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/OutlinedTextFieldDefaults$DecorationBox$1;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p2

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 1159
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 1168
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_1

    .line 1159
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, -0x1

    const-string v3, "androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox.<anonymous> (TextFieldDefaults.kt:1158)"

    const v4, -0x56576ca2

    invoke-static {v4, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    sget-object v5, Landroidx/compose/material3/OutlinedTextFieldDefaults;->INSTANCE:Landroidx/compose/material3/OutlinedTextFieldDefaults;

    .line 1160
    iget-boolean v6, v0, Landroidx/compose/material3/OutlinedTextFieldDefaults$DecorationBox$1;->$enabled:Z

    .line 1161
    iget-boolean v7, v0, Landroidx/compose/material3/OutlinedTextFieldDefaults$DecorationBox$1;->$isError:Z

    .line 1162
    iget-object v8, v0, Landroidx/compose/material3/OutlinedTextFieldDefaults$DecorationBox$1;->$interactionSource:Landroidx/compose/foundation/interaction/InteractionSource;

    .line 1163
    sget-object v9, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 1164
    iget-object v10, v0, Landroidx/compose/material3/OutlinedTextFieldDefaults$DecorationBox$1;->$colors:Landroidx/compose/material3/TextFieldColors;

    const/4 v0, 0x6

    move-object/from16 v1, p1

    .line 1165
    invoke-virtual {v5, v1, v0}, Landroidx/compose/material3/OutlinedTextFieldDefaults;->getShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v11

    .line 1166
    invoke-virtual {v5}, Landroidx/compose/material3/OutlinedTextFieldDefaults;->getFocusedBorderThickness-D9Ej5fM()F

    move-result v12

    .line 1167
    invoke-virtual {v5}, Landroidx/compose/material3/OutlinedTextFieldDefaults;->getUnfocusedBorderThickness-D9Ej5fM()F

    move-result v13

    const v15, 0x6d80c00

    const/16 v16, 0x0

    move-object/from16 v14, p1

    .line 1159
    invoke-virtual/range {v5 .. v16}, Landroidx/compose/material3/OutlinedTextFieldDefaults;->Container-4EFweAY(ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/ui/graphics/Shape;FFLandroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    :goto_1
    return-void
.end method
