.class final Landroidx/compose/runtime/snapshots/GlobalSnapshot$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Snapshot.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $it:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/runtime/snapshots/GlobalSnapshot$1$1$1;->$it:Ljava/util/List;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1441
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/snapshots/GlobalSnapshot$1$1$1;->invoke(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 3

    .line 1441
    iget-object p0, p0, Landroidx/compose/runtime/snapshots/GlobalSnapshot$1$1$1;->$it:Ljava/util/List;

    .line 34
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 35
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 36
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 1441
    invoke-interface {v2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
