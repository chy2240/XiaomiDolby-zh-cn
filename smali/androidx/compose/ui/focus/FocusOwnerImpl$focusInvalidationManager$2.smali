.class final synthetic Landroidx/compose/ui/focus/FocusOwnerImpl$focusInvalidationManager$2;
.super Lkotlin/jvm/internal/PropertyReference0Impl;
.source "FocusOwnerImpl.kt"


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 6

    .line 0
    const-string v4, "getRootState()Landroidx/compose/ui/focus/FocusState;"

    const/4 v5, 0x0

    const-class v2, Landroidx/compose/ui/focus/FocusOwnerImpl;

    const-string v3, "rootState"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/PropertyReference0Impl;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 0

    .line 75
    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/focus/FocusOwnerImpl;

    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusOwnerImpl;->getRootState()Landroidx/compose/ui/focus/FocusState;

    move-result-object p0

    return-object p0
.end method
