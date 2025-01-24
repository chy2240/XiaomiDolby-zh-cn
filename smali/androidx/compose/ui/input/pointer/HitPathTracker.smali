.class public final Landroidx/compose/ui/input/pointer/HitPathTracker;
.super Ljava/lang/Object;
.source "HitPathTracker.kt"


# instance fields
.field private final hitPointerIdsAndNodes:Landroidx/collection/MutableLongObjectMap;

.field private final root:Landroidx/compose/ui/input/pointer/NodeParent;

.field private final rootCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/layout/LayoutCoordinates;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->rootCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 46
    new-instance p1, Landroidx/compose/ui/input/pointer/NodeParent;

    invoke-direct {p1}, Landroidx/compose/ui/input/pointer/NodeParent;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->root:Landroidx/compose/ui/input/pointer/NodeParent;

    .line 48
    new-instance p1, Landroidx/collection/MutableLongObjectMap;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Landroidx/collection/MutableLongObjectMap;-><init>(I)V

    iput-object p1, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->hitPointerIdsAndNodes:Landroidx/collection/MutableLongObjectMap;

    return-void
.end method

.method public static final synthetic access$removePointerInputModifierNode(Landroidx/compose/ui/input/pointer/HitPathTracker;Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Landroidx/compose/ui/input/pointer/HitPathTracker;->removePointerInputModifierNode(Landroidx/compose/ui/Modifier$Node;)V

    return-void
.end method

.method private final removeInvalidPointerIdsAndChanges(JLandroidx/collection/MutableObjectList;)V
    .locals 0

    .line 130
    iget-object p0, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->root:Landroidx/compose/ui/input/pointer/NodeParent;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/ui/input/pointer/NodeParent;->removeInvalidPointerIdsAndChanges(JLandroidx/collection/MutableObjectList;)V

    return-void
.end method

.method private final removePointerInputModifierNode(Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    .line 122
    iget-object p0, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->root:Landroidx/compose/ui/input/pointer/NodeParent;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/input/pointer/NodeParent;->removePointerInputModifierNode(Landroidx/compose/ui/Modifier$Node;)V

    return-void
.end method


# virtual methods
.method public final addHitPath-QJqDSyo(JLjava/util/List;Z)V
    .locals 17

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    .line 69
    iget-object v3, v0, Landroidx/compose/ui/input/pointer/HitPathTracker;->root:Landroidx/compose/ui/input/pointer/NodeParent;

    .line 70
    iget-object v4, v0, Landroidx/compose/ui/input/pointer/HitPathTracker;->hitPointerIdsAndNodes:Landroidx/collection/MutableLongObjectMap;

    invoke-virtual {v4}, Landroidx/collection/MutableLongObjectMap;->clear()V

    .line 73
    invoke-interface/range {p3 .. p3}, Ljava/util/Collection;->size()I

    move-result v4

    const/4 v6, 0x0

    move v7, v6

    const/4 v8, 0x1

    :goto_0
    if-ge v7, v4, :cond_8

    move-object/from16 v9, p3

    .line 74
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/ui/Modifier$Node;

    .line 77
    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 78
    new-instance v11, Landroidx/compose/ui/input/pointer/HitPathTracker$addHitPath$1;

    invoke-direct {v11, v0, v10}, Landroidx/compose/ui/input/pointer/HitPathTracker$addHitPath$1;-><init>(Landroidx/compose/ui/input/pointer/HitPathTracker;Landroidx/compose/ui/Modifier$Node;)V

    invoke-virtual {v10, v11}, Landroidx/compose/ui/Modifier$Node;->setDetachedListener$ui_release(Lkotlin/jvm/functions/Function0;)V

    const/4 v11, 0x0

    if-eqz v8, :cond_6

    .line 83
    invoke-virtual {v3}, Landroidx/compose/ui/input/pointer/NodeParent;->getChildren()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v12

    .line 342
    invoke-virtual {v12}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v13

    if-lez v13, :cond_2

    .line 345
    invoke-virtual {v12}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v12

    move v14, v6

    .line 347
    :cond_0
    aget-object v15, v12, v14

    .line 348
    move-object/from16 v16, v15

    check-cast v16, Landroidx/compose/ui/input/pointer/Node;

    .line 83
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/input/pointer/Node;->getModifierNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v14, v14, 0x1

    if-lt v14, v13, :cond_0

    :cond_2
    move-object v15, v11

    :goto_1
    check-cast v15, Landroidx/compose/ui/input/pointer/Node;

    if-eqz v15, :cond_5

    .line 86
    invoke-virtual {v15}, Landroidx/compose/ui/input/pointer/Node;->markIsIn()V

    .line 87
    invoke-virtual {v15}, Landroidx/compose/ui/input/pointer/Node;->getPointerIds()Landroidx/compose/ui/input/pointer/util/PointerIdArray;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroidx/compose/ui/input/pointer/util/PointerIdArray;->add-0FcD4WY(J)Z

    .line 90
    iget-object v3, v0, Landroidx/compose/ui/input/pointer/HitPathTracker;->hitPointerIdsAndNodes:Landroidx/collection/MutableLongObjectMap;

    .line 641
    invoke-virtual {v3, v1, v2}, Landroidx/collection/LongObjectMap;->get(J)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_3

    .line 1501
    new-instance v5, Landroidx/collection/MutableObjectList;

    const/4 v10, 0x1

    invoke-direct {v5, v6, v10, v11}, Landroidx/collection/MutableObjectList;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 641
    invoke-virtual {v3, v1, v2, v5}, Landroidx/collection/MutableLongObjectMap;->set(JLjava/lang/Object;)V

    .line 90
    :cond_3
    check-cast v5, Landroidx/collection/MutableObjectList;

    .line 94
    invoke-virtual {v5, v15}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)Z

    move-object v3, v15

    :cond_4
    const/4 v13, 0x1

    goto :goto_3

    :cond_5
    move v8, v6

    .line 102
    :cond_6
    new-instance v5, Landroidx/compose/ui/input/pointer/Node;

    invoke-direct {v5, v10}, Landroidx/compose/ui/input/pointer/Node;-><init>(Landroidx/compose/ui/Modifier$Node;)V

    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/Node;->getPointerIds()Landroidx/compose/ui/input/pointer/util/PointerIdArray;

    move-result-object v10

    invoke-virtual {v10, v1, v2}, Landroidx/compose/ui/input/pointer/util/PointerIdArray;->add-0FcD4WY(J)Z

    .line 105
    iget-object v10, v0, Landroidx/compose/ui/input/pointer/HitPathTracker;->hitPointerIdsAndNodes:Landroidx/collection/MutableLongObjectMap;

    .line 641
    invoke-virtual {v10, v1, v2}, Landroidx/collection/LongObjectMap;->get(J)Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_7

    .line 1501
    new-instance v12, Landroidx/collection/MutableObjectList;

    const/4 v13, 0x1

    invoke-direct {v12, v6, v13, v11}, Landroidx/collection/MutableObjectList;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 641
    invoke-virtual {v10, v1, v2, v12}, Landroidx/collection/MutableLongObjectMap;->set(JLjava/lang/Object;)V

    goto :goto_2

    :cond_7
    const/4 v13, 0x1

    .line 105
    :goto_2
    check-cast v12, Landroidx/collection/MutableObjectList;

    .line 107
    invoke-virtual {v12, v5}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)Z

    .line 109
    invoke-virtual {v3}, Landroidx/compose/ui/input/pointer/NodeParent;->getChildren()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    move-object v3, v5

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_8
    if-eqz p4, :cond_c

    .line 115
    iget-object v1, v0, Landroidx/compose/ui/input/pointer/HitPathTracker;->hitPointerIdsAndNodes:Landroidx/collection/MutableLongObjectMap;

    .line 344
    iget-object v2, v1, Landroidx/collection/LongObjectMap;->keys:[J

    .line 345
    iget-object v3, v1, Landroidx/collection/LongObjectMap;->values:[Ljava/lang/Object;

    .line 316
    iget-object v1, v1, Landroidx/collection/LongObjectMap;->metadata:[J

    .line 317
    array-length v4, v1

    add-int/lit8 v4, v4, -0x2

    if-ltz v4, :cond_c

    move v5, v6

    .line 320
    :goto_4
    aget-wide v7, v1, v5

    not-long v9, v7

    const/4 v11, 0x7

    shl-long/2addr v9, v11

    and-long/2addr v9, v7

    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v9, v11

    cmp-long v9, v9, v11

    if-eqz v9, :cond_b

    sub-int v9, v5, v4

    not-int v9, v9

    ushr-int/lit8 v9, v9, 0x1f

    const/16 v10, 0x8

    rsub-int/lit8 v9, v9, 0x8

    move v11, v6

    :goto_5
    if-ge v11, v9, :cond_a

    const-wide/16 v12, 0xff

    and-long/2addr v12, v7

    const-wide/16 v14, 0x80

    cmp-long v12, v12, v14

    if-gez v12, :cond_9

    shl-int/lit8 v12, v5, 0x3

    add-int/2addr v12, v11

    .line 347
    aget-wide v13, v2, v12

    aget-object v12, v3, v12

    check-cast v12, Landroidx/collection/MutableObjectList;

    .line 116
    invoke-direct {v0, v13, v14, v12}, Landroidx/compose/ui/input/pointer/HitPathTracker;->removeInvalidPointerIdsAndChanges(JLandroidx/collection/MutableObjectList;)V

    :cond_9
    shr-long/2addr v7, v10

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_a
    if-ne v9, v10, :cond_c

    :cond_b
    if-eq v5, v4, :cond_c

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_c
    return-void
.end method

.method public final clearPreviouslyHitModifierNodeCache()V
    .locals 0

    .line 166
    iget-object p0, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->root:Landroidx/compose/ui/input/pointer/NodeParent;

    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/NodeParent;->clear()V

    return-void
.end method

.method public final dispatchChanges(Landroidx/compose/ui/input/pointer/InternalPointerEvent;Z)Z
    .locals 4

    .line 144
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->root:Landroidx/compose/ui/input/pointer/NodeParent;

    .line 145
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/InternalPointerEvent;->getChanges()Landroidx/collection/LongSparseArray;

    move-result-object v1

    .line 146
    iget-object v2, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->rootCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 144
    invoke-virtual {v0, v1, v2, p1, p2}, Landroidx/compose/ui/input/pointer/NodeParent;->buildCache(Landroidx/collection/LongSparseArray;Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/input/pointer/InternalPointerEvent;Z)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 154
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->root:Landroidx/compose/ui/input/pointer/NodeParent;

    .line 155
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/InternalPointerEvent;->getChanges()Landroidx/collection/LongSparseArray;

    move-result-object v2

    .line 156
    iget-object v3, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->rootCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 154
    invoke-virtual {v0, v2, v3, p1, p2}, Landroidx/compose/ui/input/pointer/NodeParent;->dispatchMainEventPass(Landroidx/collection/LongSparseArray;Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/input/pointer/InternalPointerEvent;Z)Z

    move-result p2

    .line 160
    iget-object p0, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->root:Landroidx/compose/ui/input/pointer/NodeParent;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/input/pointer/NodeParent;->dispatchFinalEventPass(Landroidx/compose/ui/input/pointer/InternalPointerEvent;)Z

    move-result p0

    if-nez p0, :cond_1

    if-eqz p2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public final processCancel()V
    .locals 1

    .line 176
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->root:Landroidx/compose/ui/input/pointer/NodeParent;

    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/NodeParent;->dispatchCancel()V

    .line 177
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/HitPathTracker;->clearPreviouslyHitModifierNodeCache()V

    return-void
.end method
