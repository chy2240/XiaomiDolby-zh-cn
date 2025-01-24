.class public final Landroidx/compose/ui/node/OnPositionedDispatcher;
.super Ljava/lang/Object;
.source "OnPositionedDispatcher.kt"


# static fields
.field public static final $stable:I

.field public static final Companion:Landroidx/compose/ui/node/OnPositionedDispatcher$Companion;


# instance fields
.field private cachedNodes:[Landroidx/compose/ui/node/LayoutNode;

.field private final layoutNodes:Landroidx/compose/runtime/collection/MutableVector;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Landroidx/compose/ui/node/OnPositionedDispatcher$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/node/OnPositionedDispatcher$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/node/OnPositionedDispatcher;->Companion:Landroidx/compose/ui/node/OnPositionedDispatcher$Companion;

    const/16 v0, 0x8

    sput v0, Landroidx/compose/ui/node/OnPositionedDispatcher;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1130
    new-instance v0, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v1, 0x10

    new-array v1, v1, [Landroidx/compose/ui/node/LayoutNode;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 26
    iput-object v0, p0, Landroidx/compose/ui/node/OnPositionedDispatcher;->layoutNodes:Landroidx/compose/runtime/collection/MutableVector;

    return-void
.end method

.method private final dispatchHierarchy(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 3

    .line 76
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->dispatchOnPositionedCallbacks$ui_release()V

    const/4 v0, 0x0

    .line 77
    invoke-virtual {p1, v0}, Landroidx/compose/ui/node/LayoutNode;->setNeedsOnPositionedDispatch$ui_release(Z)V

    .line 198
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->get_children$ui_release()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object p1

    .line 434
    invoke-virtual {p1}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v1

    if-lez v1, :cond_1

    .line 437
    invoke-virtual {p1}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object p1

    .line 439
    :cond_0
    aget-object v2, p1, v0

    check-cast v2, Landroidx/compose/ui/node/LayoutNode;

    .line 79
    invoke-direct {p0, v2}, Landroidx/compose/ui/node/OnPositionedDispatcher;->dispatchHierarchy(Landroidx/compose/ui/node/LayoutNode;)V

    add-int/lit8 v0, v0, 0x1

    if-lt v0, v1, :cond_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final dispatch()V
    .locals 4

    .line 48
    iget-object v0, p0, Landroidx/compose/ui/node/OnPositionedDispatcher;->layoutNodes:Landroidx/compose/runtime/collection/MutableVector;

    sget-object v1, Landroidx/compose/ui/node/OnPositionedDispatcher$Companion$DepthComparator;->INSTANCE:Landroidx/compose/ui/node/OnPositionedDispatcher$Companion$DepthComparator;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/collection/MutableVector;->sortWith(Ljava/util/Comparator;)V

    .line 50
    iget-object v0, p0, Landroidx/compose/ui/node/OnPositionedDispatcher;->layoutNodes:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v0

    .line 51
    iget-object v1, p0, Landroidx/compose/ui/node/OnPositionedDispatcher;->cachedNodes:[Landroidx/compose/ui/node/LayoutNode;

    if-eqz v1, :cond_0

    .line 52
    array-length v2, v1

    if-ge v2, v0, :cond_1

    .line 53
    :cond_0
    iget-object v1, p0, Landroidx/compose/ui/node/OnPositionedDispatcher;->layoutNodes:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [Landroidx/compose/ui/node/LayoutNode;

    :cond_1
    const/4 v2, 0x0

    .line 57
    iput-object v2, p0, Landroidx/compose/ui/node/OnPositionedDispatcher;->cachedNodes:[Landroidx/compose/ui/node/LayoutNode;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 61
    iget-object v3, p0, Landroidx/compose/ui/node/OnPositionedDispatcher;->layoutNodes:Landroidx/compose/runtime/collection/MutableVector;

    .line 489
    invoke-virtual {v3}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v3

    aget-object v3, v3, v2

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 63
    :cond_2
    iget-object v2, p0, Landroidx/compose/ui/node/OnPositionedDispatcher;->layoutNodes:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v2}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    add-int/lit8 v0, v0, -0x1

    :goto_1
    const/4 v2, -0x1

    if-ge v2, v0, :cond_4

    .line 65
    aget-object v2, v1, v0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 66
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->getNeedsOnPositionedDispatch$ui_release()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 67
    invoke-direct {p0, v2}, Landroidx/compose/ui/node/OnPositionedDispatcher;->dispatchHierarchy(Landroidx/compose/ui/node/LayoutNode;)V

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 70
    :cond_4
    iput-object v1, p0, Landroidx/compose/ui/node/OnPositionedDispatcher;->cachedNodes:[Landroidx/compose/ui/node/LayoutNode;

    return-void
.end method

.method public final isNotEmpty()Z
    .locals 0

    .line 29
    iget-object p0, p0, Landroidx/compose/ui/node/OnPositionedDispatcher;->layoutNodes:Landroidx/compose/runtime/collection/MutableVector;

    .line 545
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onNodePositioned(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 0

    .line 32
    iget-object p0, p0, Landroidx/compose/ui/node/OnPositionedDispatcher;->layoutNodes:Landroidx/compose/runtime/collection/MutableVector;

    .line 684
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    .line 33
    invoke-virtual {p1, p0}, Landroidx/compose/ui/node/LayoutNode;->setNeedsOnPositionedDispatch$ui_release(Z)V

    return-void
.end method

.method public final onRootNodePositioned(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 1

    .line 41
    iget-object v0, p0, Landroidx/compose/ui/node/OnPositionedDispatcher;->layoutNodes:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    .line 42
    iget-object p0, p0, Landroidx/compose/ui/node/OnPositionedDispatcher;->layoutNodes:Landroidx/compose/runtime/collection/MutableVector;

    .line 684
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    .line 43
    invoke-virtual {p1, p0}, Landroidx/compose/ui/node/LayoutNode;->setNeedsOnPositionedDispatch$ui_release(Z)V

    return-void
.end method

.method public final remove(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 0

    .line 37
    iget-object p0, p0, Landroidx/compose/ui/node/OnPositionedDispatcher;->layoutNodes:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/collection/MutableVector;->remove(Ljava/lang/Object;)Z

    return-void
.end method
