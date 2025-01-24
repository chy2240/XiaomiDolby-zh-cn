.class final Landroidx/compose/material3/ExposedDropdownMenu_androidKt$expandable$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ExposedDropdownMenu.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $anchorType:Ljava/lang/String;

.field final synthetic $collapsedDescription:Ljava/lang/String;

.field final synthetic $expanded:Z

.field final synthetic $expandedDescription:Ljava/lang/String;

.field final synthetic $keyboardController:Landroidx/compose/ui/platform/SoftwareKeyboardController;

.field final synthetic $onExpandedChange:Lkotlin/jvm/functions/Function0;

.field final synthetic $toggleDescription:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/platform/SoftwareKeyboardController;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$expandable$2;->$anchorType:Ljava/lang/String;

    iput-boolean p2, p0, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$expandable$2;->$expanded:Z

    iput-object p3, p0, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$expandable$2;->$expandedDescription:Ljava/lang/String;

    iput-object p4, p0, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$expandable$2;->$collapsedDescription:Ljava/lang/String;

    iput-object p5, p0, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$expandable$2;->$toggleDescription:Ljava/lang/String;

    iput-object p6, p0, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$expandable$2;->$onExpandedChange:Lkotlin/jvm/functions/Function0;

    iput-object p7, p0, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$expandable$2;->$keyboardController:Landroidx/compose/ui/platform/SoftwareKeyboardController;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1461
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$expandable$2;->invoke(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V
    .locals 3

    .line 1462
    iget-object v0, p0, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$expandable$2;->$anchorType:Ljava/lang/String;

    sget-object v1, Landroidx/compose/material3/ExposedDropdownMenuAnchorType;->Companion:Landroidx/compose/material3/ExposedDropdownMenuAnchorType$Companion;

    invoke-virtual {v1}, Landroidx/compose/material3/ExposedDropdownMenuAnchorType$Companion;->getSecondaryEditable-oYjWRB4()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/material3/ExposedDropdownMenuAnchorType;->equals-impl0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1463
    sget-object v0, Landroidx/compose/ui/semantics/Role;->Companion:Landroidx/compose/ui/semantics/Role$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/Role$Companion;->getButton-o7Vup1c()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setRole-kuIjeqM(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;I)V

    .line 1464
    iget-boolean v0, p0, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$expandable$2;->$expanded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$expandable$2;->$expandedDescription:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$expandable$2;->$collapsedDescription:Ljava/lang/String;

    :goto_0
    invoke-static {p1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setStateDescription(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    .line 1465
    iget-object v0, p0, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$expandable$2;->$toggleDescription:Ljava/lang/String;

    invoke-static {p1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setContentDescription(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    goto :goto_1

    .line 1467
    :cond_1
    sget-object v0, Landroidx/compose/ui/semantics/Role;->Companion:Landroidx/compose/ui/semantics/Role$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/Role$Companion;->getDropdownList-o7Vup1c()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setRole-kuIjeqM(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;I)V

    .line 1469
    :goto_1
    new-instance v0, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$expandable$2$1;

    iget-object v1, p0, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$expandable$2;->$onExpandedChange:Lkotlin/jvm/functions/Function0;

    iget-object v2, p0, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$expandable$2;->$anchorType:Ljava/lang/String;

    iget-object p0, p0, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$expandable$2;->$keyboardController:Landroidx/compose/ui/platform/SoftwareKeyboardController;

    invoke-direct {v0, v1, v2, p0}, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$expandable$2$1;-><init>(Lkotlin/jvm/functions/Function0;Ljava/lang/String;Landroidx/compose/ui/platform/SoftwareKeyboardController;)V

    const/4 p0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, p0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->onClick$default(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method
