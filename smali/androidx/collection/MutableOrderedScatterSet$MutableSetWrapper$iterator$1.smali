.class public final Landroidx/collection/MutableOrderedScatterSet$MutableSetWrapper$iterator$1;
.super Ljava/lang/Object;
.source "OrderedScatterSet.kt"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# instance fields
.field private current:I

.field private final iterator:Ljava/util/Iterator;

.field final synthetic this$0:Landroidx/collection/MutableOrderedScatterSet;


# direct methods
.method constructor <init>(Landroidx/collection/MutableOrderedScatterSet;)V
    .locals 2

    iput-object p1, p0, Landroidx/collection/MutableOrderedScatterSet$MutableSetWrapper$iterator$1;->this$0:Landroidx/collection/MutableOrderedScatterSet;

    .line 1402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 1403
    iput v0, p0, Landroidx/collection/MutableOrderedScatterSet$MutableSetWrapper$iterator$1;->current:I

    .line 1404
    new-instance v0, Landroidx/collection/MutableOrderedScatterSet$MutableSetWrapper$iterator$1$iterator$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Landroidx/collection/MutableOrderedScatterSet$MutableSetWrapper$iterator$1$iterator$1;-><init>(Landroidx/collection/MutableOrderedScatterSet;Landroidx/collection/MutableOrderedScatterSet$MutableSetWrapper$iterator$1;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->iterator(Lkotlin/jvm/functions/Function2;)Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Landroidx/collection/MutableOrderedScatterSet$MutableSetWrapper$iterator$1;->iterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 0

    .line 1411
    iget-object p0, p0, Landroidx/collection/MutableOrderedScatterSet$MutableSetWrapper$iterator$1;->iterator:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 0

    .line 1413
    iget-object p0, p0, Landroidx/collection/MutableOrderedScatterSet$MutableSetWrapper$iterator$1;->iterator:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 3

    .line 1416
    iget v0, p0, Landroidx/collection/MutableOrderedScatterSet$MutableSetWrapper$iterator$1;->current:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1417
    iget-object v2, p0, Landroidx/collection/MutableOrderedScatterSet$MutableSetWrapper$iterator$1;->this$0:Landroidx/collection/MutableOrderedScatterSet;

    invoke-virtual {v2, v0}, Landroidx/collection/MutableOrderedScatterSet;->removeElementAt(I)V

    .line 1418
    iput v1, p0, Landroidx/collection/MutableOrderedScatterSet$MutableSetWrapper$iterator$1;->current:I

    :cond_0
    return-void
.end method

.method public final setCurrent(I)V
    .locals 0

    .line 1403
    iput p1, p0, Landroidx/collection/MutableOrderedScatterSet$MutableSetWrapper$iterator$1;->current:I

    return-void
.end method
