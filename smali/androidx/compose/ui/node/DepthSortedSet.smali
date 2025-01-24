.class public final Landroidx/compose/ui/node/DepthSortedSet;
.super Ljava/lang/Object;
.source "DepthSortedSet.kt"


# instance fields
.field private final extraAssertions:Z

.field private mapOfOriginalDepth:Landroidx/collection/MutableObjectIntMap;

.field private final set:Landroidx/compose/ui/node/TreeSet;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroidx/compose/ui/node/DepthSortedSet;->extraAssertions:Z

    .line 50
    new-instance p1, Landroidx/compose/ui/node/TreeSet;

    invoke-static {}, Landroidx/compose/ui/node/DepthSortedSetKt;->access$getDepthComparator$p()Ljava/util/Comparator;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/compose/ui/node/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object p1, p0, Landroidx/compose/ui/node/DepthSortedSet;->set:Landroidx/compose/ui/node/TreeSet;

    return-void
.end method

.method private final safeMapOfOriginalDepth()Landroidx/collection/MutableObjectIntMap;
    .locals 1

    .line 110
    iget-object v0, p0, Landroidx/compose/ui/node/DepthSortedSet;->mapOfOriginalDepth:Landroidx/collection/MutableObjectIntMap;

    if-nez v0, :cond_0

    .line 111
    invoke-static {}, Landroidx/collection/ObjectIntMapKt;->mutableObjectIntMapOf()Landroidx/collection/MutableObjectIntMap;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/node/DepthSortedSet;->mapOfOriginalDepth:Landroidx/collection/MutableObjectIntMap;

    .line 113
    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/node/DepthSortedSet;->mapOfOriginalDepth:Landroidx/collection/MutableObjectIntMap;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public final add(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 3

    .line 63
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->isAttached()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DepthSortedSet.add called on an unattached node"

    .line 44
    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 64
    :cond_0
    iget-boolean v0, p0, Landroidx/compose/ui/node/DepthSortedSet;->extraAssertions:Z

    if-eqz v0, :cond_3

    .line 65
    invoke-direct {p0}, Landroidx/compose/ui/node/DepthSortedSet;->safeMapOfOriginalDepth()Landroidx/collection/MutableObjectIntMap;

    move-result-object v0

    const v1, 0x7fffffff

    .line 66
    invoke-virtual {v0, p1, v1}, Landroidx/collection/ObjectIntMap;->getOrDefault(Ljava/lang/Object;I)I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 68
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getDepth$ui_release()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroidx/collection/MutableObjectIntMap;->set(Ljava/lang/Object;I)V

    goto :goto_1

    .line 70
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getDepth$ui_release()I

    move-result v0

    if-ne v2, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    const-string v0, "invalid node depth"

    .line 44
    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 73
    :cond_3
    :goto_1
    iget-object p0, p0, Landroidx/compose/ui/node/DepthSortedSet;->set:Landroidx/compose/ui/node/TreeSet;

    invoke-virtual {p0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final contains(Landroidx/compose/ui/node/LayoutNode;)Z
    .locals 2

    .line 53
    iget-object v0, p0, Landroidx/compose/ui/node/DepthSortedSet;->set:Landroidx/compose/ui/node/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 54
    iget-boolean v1, p0, Landroidx/compose/ui/node/DepthSortedSet;->extraAssertions:Z

    if-eqz v1, :cond_1

    .line 55
    invoke-direct {p0}, Landroidx/compose/ui/node/DepthSortedSet;->safeMapOfOriginalDepth()Landroidx/collection/MutableObjectIntMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/collection/ObjectIntMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    .line 56
    const-string p0, "inconsistency in TreeSet"

    .line 44
    invoke-static {p0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_1
    return v0
.end method

.method public final isEmpty()Z
    .locals 0

    .line 105
    iget-object p0, p0, Landroidx/compose/ui/node/DepthSortedSet;->set:Landroidx/compose/ui/node/TreeSet;

    invoke-virtual {p0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public final pop()Landroidx/compose/ui/node/LayoutNode;
    .locals 1

    .line 93
    iget-object v0, p0, Landroidx/compose/ui/node/DepthSortedSet;->set:Landroidx/compose/ui/node/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/node/LayoutNode;

    .line 94
    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/DepthSortedSet;->remove(Landroidx/compose/ui/node/LayoutNode;)Z

    return-object v0
.end method

.method public final remove(Landroidx/compose/ui/node/LayoutNode;)Z
    .locals 2

    .line 77
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->isAttached()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DepthSortedSet.remove called on an unattached node"

    .line 44
    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 78
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/DepthSortedSet;->set:Landroidx/compose/ui/node/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 79
    iget-boolean v1, p0, Landroidx/compose/ui/node/DepthSortedSet;->extraAssertions:Z

    if-eqz v1, :cond_3

    .line 80
    invoke-direct {p0}, Landroidx/compose/ui/node/DepthSortedSet;->safeMapOfOriginalDepth()Landroidx/collection/MutableObjectIntMap;

    move-result-object p0

    .line 81
    invoke-virtual {p0, p1}, Landroidx/collection/ObjectIntMap;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 82
    invoke-virtual {p0, p1}, Landroidx/collection/ObjectIntMap;->get(Ljava/lang/Object;)I

    move-result v1

    .line 83
    invoke-virtual {p0, p1}, Landroidx/collection/MutableObjectIntMap;->remove(Ljava/lang/Object;)V

    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getDepth$ui_release()I

    move-result p0

    goto :goto_0

    :cond_1
    const p0, 0x7fffffff

    :goto_0
    if-ne v1, p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    if-nez p0, :cond_3

    .line 85
    const-string p0, "invalid node depth"

    .line 44
    invoke-static {p0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 117
    iget-object p0, p0, Landroidx/compose/ui/node/DepthSortedSet;->set:Landroidx/compose/ui/node/TreeSet;

    invoke-virtual {p0}, Ljava/util/TreeSet;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
