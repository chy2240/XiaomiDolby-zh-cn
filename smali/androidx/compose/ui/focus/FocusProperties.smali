.class public interface abstract Landroidx/compose/ui/focus/FocusProperties;
.super Ljava/lang/Object;
.source "FocusProperties.kt"


# virtual methods
.method public abstract getCanFocus()Z
.end method

.method public getDown()Landroidx/compose/ui/focus/FocusRequester;
    .locals 0

    .line 70
    sget-object p0, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusRequester$Companion;->getDefault()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object p0

    return-object p0
.end method

.method public getEnd()Landroidx/compose/ui/focus/FocusRequester;
    .locals 0

    .line 108
    sget-object p0, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusRequester$Companion;->getDefault()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object p0

    return-object p0
.end method

.method public getEnter()Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 127
    sget-object p0, Landroidx/compose/ui/focus/FocusProperties$enter$1;->INSTANCE:Landroidx/compose/ui/focus/FocusProperties$enter$1;

    return-object p0
.end method

.method public getExit()Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 146
    sget-object p0, Landroidx/compose/ui/focus/FocusProperties$exit$1;->INSTANCE:Landroidx/compose/ui/focus/FocusProperties$exit$1;

    return-object p0
.end method

.method public getLeft()Landroidx/compose/ui/focus/FocusRequester;
    .locals 0

    .line 79
    sget-object p0, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusRequester$Companion;->getDefault()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object p0

    return-object p0
.end method

.method public getNext()Landroidx/compose/ui/focus/FocusRequester;
    .locals 0

    .line 43
    sget-object p0, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusRequester$Companion;->getDefault()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object p0

    return-object p0
.end method

.method public getPrevious()Landroidx/compose/ui/focus/FocusRequester;
    .locals 0

    .line 52
    sget-object p0, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusRequester$Companion;->getDefault()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object p0

    return-object p0
.end method

.method public getRight()Landroidx/compose/ui/focus/FocusRequester;
    .locals 0

    .line 88
    sget-object p0, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusRequester$Companion;->getDefault()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object p0

    return-object p0
.end method

.method public getStart()Landroidx/compose/ui/focus/FocusRequester;
    .locals 0

    .line 98
    sget-object p0, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusRequester$Companion;->getDefault()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object p0

    return-object p0
.end method

.method public getUp()Landroidx/compose/ui/focus/FocusRequester;
    .locals 0

    .line 61
    sget-object p0, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusRequester$Companion;->getDefault()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object p0

    return-object p0
.end method

.method public abstract setCanFocus(Z)V
.end method
