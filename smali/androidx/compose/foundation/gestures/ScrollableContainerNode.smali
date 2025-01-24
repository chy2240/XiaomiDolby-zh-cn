.class public final Landroidx/compose/foundation/gestures/ScrollableContainerNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "Scrollable.kt"

# interfaces
.implements Landroidx/compose/ui/node/TraversableNode;


# static fields
.field public static final $stable:I

.field public static final TraverseKey:Landroidx/compose/foundation/gestures/ScrollableContainerNode$TraverseKey;


# instance fields
.field private enabled:Z

.field private final traverseKey:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Landroidx/compose/foundation/gestures/ScrollableContainerNode$TraverseKey;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/foundation/gestures/ScrollableContainerNode$TraverseKey;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/foundation/gestures/ScrollableContainerNode;->TraverseKey:Landroidx/compose/foundation/gestures/ScrollableContainerNode$TraverseKey;

    const/16 v0, 0x8

    sput v0, Landroidx/compose/foundation/gestures/ScrollableContainerNode;->$stable:I

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 886
    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    .line 887
    sget-object v0, Landroidx/compose/foundation/gestures/ScrollableContainerNode;->TraverseKey:Landroidx/compose/foundation/gestures/ScrollableContainerNode$TraverseKey;

    iput-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableContainerNode;->traverseKey:Ljava/lang/Object;

    .line 889
    iput-boolean p1, p0, Landroidx/compose/foundation/gestures/ScrollableContainerNode;->enabled:Z

    return-void
.end method


# virtual methods
.method public final getEnabled()Z
    .locals 0

    .line 889
    iget-boolean p0, p0, Landroidx/compose/foundation/gestures/ScrollableContainerNode;->enabled:Z

    return p0
.end method

.method public getTraverseKey()Ljava/lang/Object;
    .locals 0

    .line 887
    iget-object p0, p0, Landroidx/compose/foundation/gestures/ScrollableContainerNode;->traverseKey:Ljava/lang/Object;

    return-object p0
.end method

.method public final update(Z)V
    .locals 0

    .line 895
    iput-boolean p1, p0, Landroidx/compose/foundation/gestures/ScrollableContainerNode;->enabled:Z

    return-void
.end method
