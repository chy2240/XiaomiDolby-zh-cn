.class public final Landroidx/compose/ui/focus/FocusPropertiesImpl;
.super Ljava/lang/Object;
.source "FocusProperties.kt"

# interfaces
.implements Landroidx/compose/ui/focus/FocusProperties;


# instance fields
.field private canFocus:Z

.field private down:Landroidx/compose/ui/focus/FocusRequester;

.field private end:Landroidx/compose/ui/focus/FocusRequester;

.field private enter:Lkotlin/jvm/functions/Function1;

.field private exit:Lkotlin/jvm/functions/Function1;

.field private left:Landroidx/compose/ui/focus/FocusRequester;

.field private next:Landroidx/compose/ui/focus/FocusRequester;

.field private previous:Landroidx/compose/ui/focus/FocusRequester;

.field private right:Landroidx/compose/ui/focus/FocusRequester;

.field private start:Landroidx/compose/ui/focus/FocusRequester;

.field private up:Landroidx/compose/ui/focus/FocusRequester;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 151
    iput-boolean v0, p0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->canFocus:Z

    .line 152
    sget-object v0, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusRequester$Companion;->getDefault()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->next:Landroidx/compose/ui/focus/FocusRequester;

    .line 153
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusRequester$Companion;->getDefault()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->previous:Landroidx/compose/ui/focus/FocusRequester;

    .line 154
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusRequester$Companion;->getDefault()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->up:Landroidx/compose/ui/focus/FocusRequester;

    .line 155
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusRequester$Companion;->getDefault()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->down:Landroidx/compose/ui/focus/FocusRequester;

    .line 156
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusRequester$Companion;->getDefault()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->left:Landroidx/compose/ui/focus/FocusRequester;

    .line 157
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusRequester$Companion;->getDefault()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->right:Landroidx/compose/ui/focus/FocusRequester;

    .line 158
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusRequester$Companion;->getDefault()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->start:Landroidx/compose/ui/focus/FocusRequester;

    .line 159
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusRequester$Companion;->getDefault()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->end:Landroidx/compose/ui/focus/FocusRequester;

    .line 160
    sget-object v0, Landroidx/compose/ui/focus/FocusPropertiesImpl$enter$1;->INSTANCE:Landroidx/compose/ui/focus/FocusPropertiesImpl$enter$1;

    iput-object v0, p0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->enter:Lkotlin/jvm/functions/Function1;

    .line 161
    sget-object v0, Landroidx/compose/ui/focus/FocusPropertiesImpl$exit$1;->INSTANCE:Landroidx/compose/ui/focus/FocusPropertiesImpl$exit$1;

    iput-object v0, p0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->exit:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public getCanFocus()Z
    .locals 0

    .line 151
    iget-boolean p0, p0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->canFocus:Z

    return p0
.end method

.method public getDown()Landroidx/compose/ui/focus/FocusRequester;
    .locals 0

    .line 155
    iget-object p0, p0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->down:Landroidx/compose/ui/focus/FocusRequester;

    return-object p0
.end method

.method public getEnd()Landroidx/compose/ui/focus/FocusRequester;
    .locals 0

    .line 159
    iget-object p0, p0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->end:Landroidx/compose/ui/focus/FocusRequester;

    return-object p0
.end method

.method public getEnter()Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 160
    iget-object p0, p0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->enter:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public getExit()Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 161
    iget-object p0, p0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->exit:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public getLeft()Landroidx/compose/ui/focus/FocusRequester;
    .locals 0

    .line 156
    iget-object p0, p0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->left:Landroidx/compose/ui/focus/FocusRequester;

    return-object p0
.end method

.method public getNext()Landroidx/compose/ui/focus/FocusRequester;
    .locals 0

    .line 152
    iget-object p0, p0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->next:Landroidx/compose/ui/focus/FocusRequester;

    return-object p0
.end method

.method public getPrevious()Landroidx/compose/ui/focus/FocusRequester;
    .locals 0

    .line 153
    iget-object p0, p0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->previous:Landroidx/compose/ui/focus/FocusRequester;

    return-object p0
.end method

.method public getRight()Landroidx/compose/ui/focus/FocusRequester;
    .locals 0

    .line 157
    iget-object p0, p0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->right:Landroidx/compose/ui/focus/FocusRequester;

    return-object p0
.end method

.method public getStart()Landroidx/compose/ui/focus/FocusRequester;
    .locals 0

    .line 158
    iget-object p0, p0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->start:Landroidx/compose/ui/focus/FocusRequester;

    return-object p0
.end method

.method public getUp()Landroidx/compose/ui/focus/FocusRequester;
    .locals 0

    .line 154
    iget-object p0, p0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->up:Landroidx/compose/ui/focus/FocusRequester;

    return-object p0
.end method

.method public setCanFocus(Z)V
    .locals 0

    .line 151
    iput-boolean p1, p0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->canFocus:Z

    return-void
.end method
