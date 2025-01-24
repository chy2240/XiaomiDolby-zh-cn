.class public final Landroidx/core/view/ViewGroupKt$special$$inlined$Sequence$1;
.super Ljava/lang/Object;
.source "Sequences.kt"

# interfaces
.implements Lkotlin/sequences/Sequence;


# instance fields
.field final synthetic $this_descendants$inlined:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Landroidx/core/view/ViewGroupKt$special$$inlined$Sequence$1;->$this_descendants$inlined:Landroid/view/ViewGroup;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2

    .line 681
    new-instance v0, Landroidx/core/view/TreeIterator;

    iget-object p0, p0, Landroidx/core/view/ViewGroupKt$special$$inlined$Sequence$1;->$this_descendants$inlined:Landroid/view/ViewGroup;

    invoke-static {p0}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lkotlin/sequences/Sequence;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p0

    sget-object v1, Landroidx/core/view/ViewGroupKt$descendants$1$1;->INSTANCE:Landroidx/core/view/ViewGroupKt$descendants$1$1;

    invoke-direct {v0, p0, v1}, Landroidx/core/view/TreeIterator;-><init>(Ljava/util/Iterator;Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method
