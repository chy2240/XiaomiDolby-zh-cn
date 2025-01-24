.class final Landroidx/compose/material3/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ExposedDropdownMenu.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $keyboardSignalState:Landroidx/compose/runtime/MutableState;


# direct methods
.method constructor <init>(Landroidx/compose/runtime/MutableState;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$1$1;->$keyboardSignalState:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 365
    invoke-virtual {p0}, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$1$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 1

    .line 365
    iget-object p0, p0, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$1$1;->$keyboardSignalState:Landroidx/compose/runtime/MutableState;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {p0, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method
